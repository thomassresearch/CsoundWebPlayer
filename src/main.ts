import type { CsoundObj } from '@csound/browser';
import './style.css';
import { examples } from './examples';

type Status = 'loading' | 'compiling' | 'playing' | 'stopped' | 'error';
type Session = {
  context: AudioContext;
  abort: AbortController;
  engine?: CsoundObj;
  started: boolean;
  ended: boolean;
  runtimeError: boolean;
  finishing?: Promise<void>;
};

function element<T extends HTMLElement>(id: string): T {
  const found = document.getElementById(id);
  if (!found) throw new Error(`Missing element: ${id}`);
  return found as T;
}

const csdInput = element<HTMLInputElement>('csd-input');
const assetInput = element<HTMLInputElement>('asset-input');
const playButton = element<HTMLButtonElement>('play');
const stopButton = element<HTMLButtonElement>('stop');
const clearAssets = element<HTMLButtonElement>('clear-assets');
const output = element<HTMLPreElement>('console');
const dropZone = element('drop-zone');
let selected: File | undefined;
const assets = new Map<string, File>();
let active: Session | undefined;
let consoleText = '';
let consoleTimer: ReturnType<typeof setTimeout> | undefined;
const exampleRows: { button: HTMLButtonElement; loading: boolean }[] = [];

// Prefetch bundled files so Play can create/resume AudioContext in the click
// itself, preserving browser autoplay permission even with a slow connection.
function showExamples() {
  for (const example of examples) {
    const item = document.createElement('li');
    const info = document.createElement('div');
    const title = document.createElement('strong');
    title.textContent = example.title;
    const description = document.createElement('p');
    description.className = 'muted';
    description.textContent = example.description;
    info.append(title, description);
    const button = document.createElement('button');
    button.type = 'button';
    const row = { button, loading: true };
    exampleRows.push(row);
    let file: File | undefined;
    const load = async () => {
      row.loading = true;
      button.textContent = 'Loading…';
      button.setAttribute('aria-label', `Loading ${example.title}`);
      controls();
      try {
        const response = await fetch(`${import.meta.env.BASE_URL}examples/${encodeURIComponent(example.filename)}`, { signal: AbortSignal.timeout(30_000) });
        if (!response.ok) throw new Error(`HTTP ${response.status}`);
        file = new File([await response.text()], example.filename, { type: 'text/plain' });
        description.textContent = example.description;
        button.textContent = 'Play';
        button.setAttribute('aria-label', `Play ${example.title}`);
      } catch (error) {
        description.textContent = `Could not load example: ${describe(error)}. Retry to download it again.`;
        button.textContent = 'Retry';
        button.setAttribute('aria-label', `Retry ${example.title}`);
      } finally {
        row.loading = false;
        controls();
      }
    };
    button.addEventListener('click', () => {
      if (active || row.loading) return;
      if (!file) { void load(); return; }
      selectFiles([file]);
      void play();
    });
    item.append(info, button);
    element('examples').append(item);
    void load();
  }
}

function log(message: unknown) {
  // Batch DOM updates so verbose scores do not render once per Csound message.
  consoleText = (consoleText + String(message).replace(/\u001b\[[0-9;]*m/g, '') + '\n').slice(-100_000);
  if (consoleTimer !== undefined) return;
  consoleTimer = setTimeout(() => {
    const atBottom = output.scrollHeight - output.scrollTop - output.clientHeight < 50;
    output.textContent = consoleText;
    if (atBottom) output.scrollTop = output.scrollHeight;
    consoleTimer = undefined;
  }, 100);
}

function describe(error: unknown): string {
  return error instanceof Error ? error.message : String(error);
}

function controls() {
  const busy = !!active;
  csdInput.disabled = assetInput.disabled = busy;
  for (const example of exampleRows) example.button.disabled = busy || example.loading;
  playButton.disabled = busy || !selected;
  stopButton.disabled = !active || !!active.finishing;
  clearAssets.disabled = busy || assets.size === 0;
}

function status(value: Status, detail: string) {
  const node = element('status');
  node.textContent = value;
  node.dataset.state = value;
  element('detail').textContent = detail;
  controls();
}

function audioInfo(context: AudioContext) {
  element('audio-context').textContent = `${context.sampleRate} Hz · ${context.state}`;
}

function resetDiagnostics() {
  for (const id of ['version', 'sample-rate', 'ksmps', 'channels', 'compile-result', 'audio-context']) {
    element(id).textContent = '—';
  }
}

/** Bound library RPCs, including worklet startup failures that may never reject. */
function waitFor<T>(promise: Promise<T>, label: string, ms = 30_000, signal?: AbortSignal): Promise<T> {
  return new Promise((resolve, reject) => {
    const cleanup = () => {
      clearTimeout(timer);
      signal?.removeEventListener('abort', abort);
    };
    const failure = (error: unknown) => { cleanup(); reject(error); };
    const abort = () => failure(new DOMException('Playback cancelled', 'AbortError'));
    const timer = setTimeout(() => failure(new Error(`${label} timed out. Check the console; reload if the WASM worker remains unresponsive.`)), ms);
    signal?.addEventListener('abort', abort, { once: true });
    promise.then((value) => { cleanup(); resolve(value); }, failure);
    if (signal?.aborted) abort();
  });
}

async function dispose(session: Session) {
  const engine = session.engine;
  if (engine) {
    if (session.started && !session.ended) {
      try { await waitFor(engine.stop(), 'Stop', 3_000); }
      catch (error) { log(`[cleanup] ${describe(error)}`); }
    }
    // terminateInstance releases the worker/worklet resources and virtual FS.
    // destroy() alone only destroys the underlying Csound C instance.
    try { await waitFor(engine.terminateInstance(), 'Engine termination', 3_000); }
    catch (error) { log(`[cleanup] ${describe(error)}`); }
  }
  if (session.context.state !== 'closed') {
    try { await waitFor(session.context.close(), 'AudioContext close', 3_000); }
    catch (error) { log(`[cleanup] ${describe(error)}`); }
  }
  audioInfo(session.context);
}

function finish(session: Session, finalStatus: 'stopped' | 'error', detail: string): Promise<void> {
  if (session.finishing) return session.finishing;
  session.abort.abort();
  session.finishing = (async () => {
    await dispose(session);
    if (active === session) {
      active = undefined;
      status(finalStatus, detail);
    }
  })();
  controls();
  return session.finishing;
}

async function fail(error: unknown, session = active) {
  log(`[error] ${describe(error)}`);
  if (session) await finish(session, 'error', describe(error));
  else status('error', describe(error));
}

async function play() {
  if (!selected || active) return;
  resetDiagnostics();
  let session: Session | undefined;
  try {
    if (!window.isSecureContext || !window.AudioContext || !window.AudioWorkletNode || !window.WebAssembly) {
      throw new Error('WebAssembly and AudioWorklet require a modern browser on HTTPS or localhost. Opening index.html with file:// is not supported.');
    }
    // Create and resume synchronously within the Play gesture, before WASM/file awaits.
    const context = new AudioContext({ latencyHint: 'interactive' });
    session = { context, abort: new AbortController(), started: false, ended: false, runtimeError: false };
    const run = session;
    active = run;
    const resumed = context.resume();
    status('loading', 'Initializing Csound WASM and reading local files…');
    log(`\n[player] Loading ${selected.name}; @csound/browser 7.0.0-beta36; worker + AudioWorklet, no SAB.`);
    context.onstatechange = () => { if (active === run) audioInfo(context); };
    audioInfo(context);
    await waitFor(resumed, 'AudioContext resume', 15_000, run.abort.signal);

    const { Csound } = await waitFor(import('@csound/browser'), 'Loading Csound module', 60_000, run.abort.signal);
    const initializing = Csound({ audioContext: context, useWorker: true, useSAB: false, autoConnect: true });
    // If Stop/timeout wins initialization, dispose the late result as well.
    void initializing.then(async (engine) => {
      if (run.abort.signal.aborted && engine) {
        await waitFor(engine.terminateInstance(), 'Late engine termination', 3_000);
      }
    }).catch((error) => log(`[initialization] ${describe(error)}`));
    const engine = await waitFor(initializing, 'Csound initialization', 60_000, run.abort.signal);
    if (!engine) throw new Error('Csound did not initialize. See browser and Csound consoles.');
    run.engine = engine;
    const isCurrent = () => active === run && !run.abort.signal.aborted;
    engine.on('message', (message: string) => {
      if (active !== run) return;
      log(message);
      if (/\b(?:PERF ERROR|INIT ERROR|error:|[1-9]\d* errors? in performance)\b/i.test(message)) run.runtimeError = true;
    });
    engine.on('onAudioNodeCreated', (node: AudioWorkletNode) => {
      node.addEventListener('processorerror', () => {
        if (isCurrent()) void fail(new Error('AudioWorklet processor failed. See the browser console for details.'), run);
      });
    });
    engine.on('realtimePerformanceStarted', () => {
      if (!isCurrent()) return;
      run.started = true;
      log('[player] Realtime performance started.');
    });
    engine.on('realtimePerformanceEnded', () => {
      run.ended = true;
      if (!isCurrent()) return;
      log('[player] Performance ended.');
      // Let the library complete its end-event bookkeeping before termination.
      setTimeout(() => {
        if (isCurrent()) void finish(run, run.runtimeError ? 'error' : 'stopped',
          run.runtimeError ? 'Csound reported errors. See the console.' : 'Performance ended. Ready to play again.');
      }, 0);
    });
    engine.on('renderStarted', () => {
      if (isCurrent()) void fail(new Error('Csound entered offline rendering unexpectedly; realtime output is required.'), run);
    });

    const version = await waitFor(engine.getVersion(), 'Version query', 10_000, run.abort.signal);
    element('version').textContent = `${Math.floor(version / 1000)}.${Math.floor(version % 1000 / 10)}.${version % 10} (${version})`;
    const text = await waitFor(selected.text(), 'Reading CSD', 30_000, run.abort.signal);
    for (const [name, file] of assets) {
      const data = await waitFor(file.arrayBuffer(), `Reading ${name}`, 30_000, run.abort.signal);
      await waitFor(engine.fs.writeFile(`/${name}`, new Uint8Array(data)), `Copying ${name}`, 60_000, run.abort.signal);
      log(`[filesystem] /${name} (${file.size.toLocaleString()} bytes)`);
    }

    status('compiling', 'Compiling the complete CSD…');
    const startedAt = performance.now();
    const result = await waitFor(engine.compileCSD(text, 1), 'CSD compilation', 120_000, run.abort.signal);
    element('compile-result').textContent = `${result} · ${Math.round(performance.now() - startedAt)} ms`;
    log(`[player] compileCSD returned ${result}.`);
    if (result !== 0) throw new Error(`CSD compilation failed (code ${result}). See the console for opcode, option or asset errors.`);

    // Apply after CsOptions so an exported -o output.wav becomes realtime output.
    const optionResult = await waitFor(engine.setOption('-odac'), 'Realtime output option', 10_000, run.abort.signal);
    if (optionResult !== 0) throw new Error(`Could not select realtime output (code ${optionResult}).`);
    log('[player] Output override: -odac (original CSD is unchanged).');
    const [sr, ksmps, channels, outputName] = await waitFor(Promise.all([
      engine.getSr(), engine.getKsmps(), engine.getNchnls(), engine.getOutputName(),
    ]), 'Diagnostics', 10_000, run.abort.signal);
    element('sample-rate').textContent = `${sr} Hz`;
    element('ksmps').textContent = String(ksmps);
    element('channels').textContent = String(channels);
    if (!outputName?.startsWith('dac')) throw new Error(`Realtime output was not selected: ${outputName}`);
    log(`[player] ${sr} Hz, ksmps=${ksmps}, channels=${channels}, output=${outputName}; Web Audio ${context.sampleRate} Hz.`);
    if (sr !== context.sampleRate) throw new Error(`Sample-rate mismatch (${sr} vs ${context.sampleRate} Hz). Use the browser's sample rate in your CSD/CsOptions.`);

    status('compiling', 'Starting realtime AudioWorklet performance…');
    const startResult = await waitFor(engine.start(), 'AudioWorklet startup', 30_000, run.abort.signal);
    log(`[player] start returned ${startResult}.`);
    if (startResult !== 0) throw new Error(`Csound start failed (code ${startResult}).`);
    if (isCurrent() && !run.ended) status('playing', 'Realtime performance running in this browser.');
  } catch (error) {
    if (session?.abort.signal.aborted) return;
    await fail(error, session);
  }
}

function showFiles() {
  element('filename').textContent = selected?.name ?? 'No CSD selected';
  const list = element('asset-list');
  list.replaceChildren();
  for (const file of assets.values()) {
    const item = document.createElement('li');
    item.textContent = `/${file.name} · ${file.size.toLocaleString()} bytes`;
    list.append(item);
  }
  controls();
}

function selectFiles(files: File[]) {
  if (active || files.length === 0) return;
  const csds = files.filter((file) => /\.csd$/i.test(file.name));
  if (csds.length > 1) {
    void fail(new Error('Select one CSD at a time. No files were changed.'));
    return;
  }
  if (csds[0]) {
    selected = csds[0];
    assets.clear(); // A new project must not inherit stale samples.
    resetDiagnostics();
  }
  for (const file of files) {
    if (/\.csd$/i.test(file.name)) continue;
    if (/[\\/]/.test(file.name) || file.name === '.' || file.name === '..') {
      log(`[filesystem] Skipped unsupported path: ${file.name}`);
      continue;
    }
    if (assets.has(file.name)) log(`[filesystem] Replaced previously selected asset: ${file.name}`);
    assets.set(file.name, file);
  }
  showFiles();
  status('stopped', selected ? 'Ready. Press Play to initialize and compile.' : 'Assets selected. Select a CSD to play.');
}

csdInput.addEventListener('change', () => {
  const files = Array.from(csdInput.files ?? []);
  if (files.some((file) => !/\.csd$/i.test(file.name))) void fail(new Error('Please select a .csd file.'));
  else selectFiles(files);
  csdInput.value = '';
});
assetInput.addEventListener('change', () => {
  const files = Array.from(assetInput.files ?? []);
  if (files.some((file) => /\.csd$/i.test(file.name))) void fail(new Error('Use Select CSD for the score; Add assets accepts supporting files.'));
  else selectFiles(files);
  assetInput.value = '';
});
// Prevent a dropped file outside the target from navigating away from the app.
window.addEventListener('dragover', (event) => event.preventDefault());
window.addEventListener('drop', (event) => event.preventDefault());
dropZone.addEventListener('dragover', (event) => {
  event.preventDefault();
  if (!active) dropZone.classList.add('dragging');
});
dropZone.addEventListener('dragleave', () => dropZone.classList.remove('dragging'));
dropZone.addEventListener('drop', (event) => {
  event.preventDefault();
  dropZone.classList.remove('dragging');
  const items = Array.from(event.dataTransfer?.items ?? []);
  if (items.some((item) => item.webkitGetAsEntry?.()?.isDirectory)) {
    if (!active) void fail(new Error('Folder drops are not supported. Select individual files.'));
    return;
  }
  selectFiles(Array.from(event.dataTransfer?.files ?? []));
});
clearAssets.addEventListener('click', () => { if (!active) { assets.clear(); showFiles(); } });
element('clear-console').addEventListener('click', () => { consoleText = ''; output.textContent = ''; });
playButton.addEventListener('click', () => { void play(); });
stopButton.addEventListener('click', () => {
  if (active) {
    log('[player] Stop requested.');
    void finish(active, 'stopped', 'Stopped. Ready to play again or select another CSD.');
  }
});
window.addEventListener('error', (event) => { void fail(new Error(event.message || 'Browser runtime error.')); });
window.addEventListener('unhandledrejection', (event) => { void fail(event.reason); });
window.addEventListener('pagehide', () => { if (active) void finish(active, 'stopped', 'Page closed.'); });
log('[player] Ready. Selected files are read locally and never uploaded.');


showExamples();

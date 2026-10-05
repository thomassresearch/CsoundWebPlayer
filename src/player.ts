import type { CsoundObj } from '@csound/browser';
import { assetPath, validateAssets, type Asset } from './files.ts';

export type Status = 'loading' | 'compiling' | 'playing' | 'stopped' | 'error';
type Hooks = {
  status: (status: Status, detail: string, busy: boolean) => void;
  log: (message: string) => void;
  diagnostic: (name: string, value: string | number) => void;
};
type Session = {
  context: AudioContext;
  abort: AbortController;
  engine?: CsoundObj;
  started: boolean;
  startSettled: boolean;
  ended: boolean;
  runtimeError: boolean;
  finishing: boolean;
  release?: Promise<void>;
};

const errorText = (error: unknown) => error instanceof Error ? error.message : String(error);

// API calls cross thread boundaries. A broken worker must not strand the UI.
function bounded<T>(promise: Promise<T>, label: string, signal?: AbortSignal, ms = 60_000): Promise<T> {
  return new Promise((resolve, reject) => {
    const cancel = () => settle(() => reject(new DOMException('Playback cancelled', 'AbortError')));
    const timer = setTimeout(() => settle(() => reject(new Error(`${label} timed out after ${ms / 1000}s.`))), ms);
    const settle = (finish: () => void) => {
      clearTimeout(timer);
      signal?.removeEventListener('abort', cancel);
      finish();
    };
    signal?.addEventListener('abort', cancel, { once: true });
    if (signal?.aborted) cancel();
    promise.then((value) => settle(() => resolve(value)), (error) => settle(() => reject(error)));
  });
}

export class Player {
  private session?: Session;
  constructor(private hooks: Hooks) {}

  async play(file: File, assets: Asset[]): Promise<void> {
    if (this.session) return;
    let s: Session | undefined;
    try {
      if (!window.isSecureContext || !window.AudioContext || !window.AudioWorkletNode || !window.WebAssembly) {
        throw new Error('Use a modern browser with WebAssembly and AudioWorklet over HTTPS or localhost. file:// is not supported.');
      }
      validateAssets(assets);
      // Create AND resume synchronously within the Play click (before any await).
      const context = new AudioContext({ latencyHint: 'interactive' });
      const resumed = context.resume();
      s = { context, abort: new AbortController(), started: false, startSettled: false, ended: false, runtimeError: false, finishing: false };
      const run = s;
      this.session = run;
      const step = <T>(promise: Promise<T>, label: string) => bounded(promise, label, run.abort.signal);
      this.hooks.status('loading', 'Loading Csound WASM and local files…', true);
      for (const name of ['version', 'sample-rate', 'context-rate', 'ksmps', 'channels', 'compile-result', 'start-result', 'context-state']) {
        this.hooks.diagnostic(name, '—');
      }
      this.hooks.log(`\n[player] ${file.name} · ${file.size.toLocaleString()} bytes`);
      await step(resumed, 'AudioContext resume');
      this.hooks.diagnostic('context-rate', `${context.sampleRate} Hz`);
      const contextState = () => {
        if (this.session === run) this.hooks.diagnostic('context-state', context.state);
      };
      context.addEventListener('statechange', contextState);
      contextState();
      const { Csound } = await step(import('@csound/browser'), 'Csound module loading');
      const initialization = Csound({ audioContext: context, useWorker: true, useSAB: false, autoConnect: true });
      // Initialization itself has no cancellation API. Dispose a late result as well.
      const initialized = initialization.then(async (engine) => {
        if (run.abort.signal.aborted) {
          if (engine) await bounded(engine.terminateInstance(), 'Late engine disposal', undefined, 3_000);
          return undefined;
        }
        run.engine = engine;
        return engine;
      });
      const engine = await step(initialized, 'Csound WASM initialization');
      if (!engine) throw new Error('Csound WASM initialization returned no engine.');
      engine.on('message', (message: unknown) => {
        const text = String(message);
        this.hooks.log(text);
        if (/\b(?:INIT|PERF|PERFORMANCE) ERROR\b|\b[1-9]\d* errors? in performance/i.test(text)) {
          run.runtimeError = true;
          if (run.startSettled && !run.finishing) void this.finish(run);
        }
      });
      engine.on('onAudioNodeCreated', (node: AudioNode) => {
        this.hooks.log('[player] AudioWorklet created; output connected by @csound/browser.');
        node.addEventListener('processorerror', () => {
          void this.finish(run, 'AudioWorklet processor failed. See the console and browser developer tools.');
        });
      });
      engine.on('realtimePerformanceEnded', () => {
        run.ended = true;
        // The end event may arrive before start() resolves for a very short score.
        if (run.startSettled && !run.finishing) void this.finish(run);
      });
      engine.on('renderStarted', () => {
        void this.finish(run, 'Unexpected offline render: this player requires realtime DAC output.');
      });
      const version = await step(engine.getVersion(), 'Version query');
      const major = Math.floor(version / 1000);
      this.hooks.diagnostic('version', `${major}.${Math.floor((version % 1000) / 10)}.${version % 10} (${version})`);
      if (major !== 7) throw new Error(`Expected Csound 7, got version ${version}.`);
      this.hooks.log(`[player] Worker + AudioWorklet; SharedArrayBuffer disabled; crossOriginIsolated=${crossOriginIsolated}`);
      for (const asset of assets) {
        const path = assetPath(asset.path);
        const parts = path.split('/');
        parts.pop();
        let parent = '';
        for (const part of parts) {
          parent += `/${part}`;
          if (!await step(engine.fs.pathExists(parent), 'Asset directory check')) {
            await step(engine.fs.mkdir(parent), 'Asset directory creation');
          }
        }
        const bytes = new Uint8Array(await step(asset.file.arrayBuffer(), 'Asset read'));
        await step(engine.fs.writeFile(`/${path}`, bytes), 'Asset copy');
        this.hooks.log(`[asset] /${path} (${bytes.byteLength.toLocaleString()} bytes)`);
      }
      const csd = await step(file.text(), 'CSD read');
      this.hooks.status('compiling', 'Compiling the complete CSD…', true);
      const startedAt = performance.now();
      // Csound 7 API: mode 1 = text. Preserve the entire CSD, including CsOptions.
      const result = await step(engine.compileCSD(csd, 1), 'CSD compilation');
      this.hooks.diagnostic('compile-result', result);
      this.hooks.log(`[player] compileCSD returned ${result} in ${(performance.now() - startedAt).toFixed(0)} ms.`);
      if (result !== 0) throw new Error(`CSD compilation failed (${result}). See Csound messages below.`);
      // Apply after compilation so -o file.wav in an export does not select offline rendering.
      const outputResult = await step(engine.setOption('-odac'), 'Realtime output setup');
      if (outputResult !== 0) throw new Error(`Cannot select browser DAC output (${outputResult}).`);
      this.hooks.log('[player] Applied -odac after CsOptions; score and instruments are unchanged.');
      this.hooks.status('compiling', 'Starting realtime performance…', true);
      // Mark before awaiting: Stop must also release a partially started worklet.
      run.started = true;
      const startResult = await step(engine.start(), 'Realtime startup');
      run.startSettled = true;
      this.hooks.diagnostic('start-result', startResult);
      if (startResult !== 0) throw new Error(`Csound start failed (${startResult}). See Csound messages below.`);
      const [sr, ksmps, channels] = await step(Promise.all([engine.getSr(), engine.getKsmps(), engine.getNchnls()]), 'Engine diagnostics');
      this.hooks.diagnostic('sample-rate', `${sr} Hz`);
      this.hooks.diagnostic('ksmps', ksmps);
      this.hooks.diagnostic('channels', channels);
      if (sr !== context.sampleRate) this.hooks.log(`[player] WARNING: Csound rate ${sr} differs from the requested AudioContext rate ${context.sampleRate}.`);
      if (run.ended || run.runtimeError) {
        await this.finish(run);
      } else {
        this.hooks.status('playing', `Rendering ${file.name} in realtime.`, true);
      }
    } catch (error) {
      if (s?.abort.signal.aborted) return;
      if (s) await this.finish(s, errorText(error));
      else {
        this.hooks.log(`[error] ${errorText(error)}`);
        this.hooks.status('error', errorText(error), false);
      }
    }
  }

  async stop(): Promise<void> {
    if (this.session) await this.finish(this.session, undefined, true);
  }

  fail(message: string): void {
    this.hooks.log(`[browser error] ${message}`);
    if (this.session) void this.finish(this.session, message);
    else this.hooks.status('error', message, false);
  }

  private async finish(s: Session, error?: string, userStop = false): Promise<void> {
    if (s.finishing) return s.release;
    s.finishing = true;
    s.abort.abort();
    this.hooks.status('loading', 'Releasing audio and WASM resources…', true);
    s.release = (async () => {
      const engine = s.engine;
      if (engine) {
        try {
          if (s.started && !s.ended) await bounded(engine.stop(), 'Csound stop', undefined, 3_000);
          // Don't queue destroy behind an interrupted compile/initialization RPC.
          if (s.startSettled || s.ended) await bounded(engine.destroy(), 'Csound destruction', undefined, 3_000);
        } catch (cleanupError) {
          this.hooks.log(`[cleanup] ${errorText(cleanupError)} Forcing worker termination.`);
        } finally {
          try { await bounded(engine.terminateInstance(), 'Worker termination', undefined, 3_000); }
          catch (cleanupError) { this.hooks.log(`[cleanup] ${errorText(cleanupError)}`); }
        }
      }
      if (s.context.state !== 'closed') {
        try { await bounded(s.context.close(), 'AudioContext close', undefined, 3_000); }
        catch (cleanupError) { this.hooks.log(`[cleanup] ${errorText(cleanupError)}`); }
      }
      if (this.session === s) {
        this.hooks.diagnostic('context-state', s.context.state);
        this.session = undefined;
        const failure = error || (s.runtimeError ? 'Csound reported a performance error. See the console.' : undefined);
        const detail = failure || (userStop ? 'Stopped. Ready to play again or select another CSD.' : 'Score ended. Ready to play again.');
        this.hooks.log(`[${failure ? 'error' : 'player'}] ${detail}`);
        this.hooks.status(failure ? 'error' : 'stopped', detail, false);
      }
    })();
    return s.release;
  }
}

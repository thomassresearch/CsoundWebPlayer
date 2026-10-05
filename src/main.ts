import './style.css';
import { Player } from './player.ts';
import type { Asset } from './files.ts';

const el = <T extends HTMLElement>(id: string) => document.getElementById(id) as T;
const csdInput = el<HTMLInputElement>('csd-input');
const assetInput = el<HTMLInputElement>('asset-input');
const play = el<HTMLButtonElement>('play');
const stop = el<HTMLButtonElement>('stop');
const example = el<HTMLButtonElement>('example');
const clearAssets = el<HTMLButtonElement>('clear-assets');
const output = el<HTMLPreElement>('console');
let selected: File | undefined;
let assets: Asset[] = [];
let busy = false;
let selecting = false;

// Batch console DOM writes and bound retained output so chatty scores do not grow forever.
const maxLogChars = 200_000;
let log = '';
let logTimer: ReturnType<typeof setTimeout> | undefined;
function append(message: string) {
  log = (log + message + '\n').slice(-maxLogChars);
  if (logTimer) return;
  logTimer = setTimeout(() => {
    const atBottom = output.scrollTop + output.clientHeight >= output.scrollHeight - 32;
    output.textContent = log;
    if (atBottom) output.scrollTop = output.scrollHeight;
    logTimer = undefined;
  }, 100);
}
function controls() {
  csdInput.disabled = assetInput.disabled = example.disabled = clearAssets.disabled = busy || selecting;
  play.disabled = busy || selecting || !selected;
  stop.disabled = !busy;
  document.querySelectorAll<HTMLInputElement | HTMLButtonElement>('#assets input, #assets button').forEach((input) => { input.disabled = busy || selecting; });
}
const player = new Player({
  log: append,
  diagnostic: (name, value) => { el(name).textContent = String(value); },
  status: (status, detail, active) => {
    busy = active;
    el('status').textContent = status;
    el('status').dataset.state = status;
    el('status-detail').textContent = detail;
    controls();
  },
});
function renderAssets() {
  el('asset-count').textContent = String(assets.length);
  el('assets').replaceChildren();
  assets.forEach((asset, index) => {
    const li = document.createElement('li');
    const label = document.createElement('span');
    label.textContent = `${asset.file.name} (${asset.file.size.toLocaleString()} B) → /`;
    const path = document.createElement('input');
    path.value = asset.path;
    path.setAttribute('aria-label', `Virtual path for ${asset.file.name}`);
    path.addEventListener('input', () => { asset.path = path.value; });
    const remove = document.createElement('button');
    remove.textContent = 'Remove';
    remove.addEventListener('click', () => { assets.splice(index, 1); renderAssets(); });
    li.append(label, path, remove);
    el('assets').append(li);
  });
  controls();
}
function select(files: File[], assetsOnly = false) {
  if (busy || selecting) return;
  const csds = assetsOnly ? [] : files.filter((file) => /\.csd$/i.test(file.name));
  if (csds.length > 1) { player.fail('Choose only one CSD at a time.'); return; }
  if (!assetsOnly && !csds.length && files.length === 1 && files[0] === csdInput.files?.[0]) {
    player.fail('Please select a .csd file.'); return;
  }
  if (csds[0]) {
    selected = csds[0];
    // Assets belong to a selection; avoid silently using a previous song's samples.
    assets = [];
    el('filename').textContent = selected.name;
    el('status').textContent = 'stopped';
    el('status').dataset.state = 'stopped';
    el('status-detail').textContent = 'Ready. Press Play to initialize and compile.';
  }
  for (const file of files) {
    if (file !== csds[0]) assets.push({ file, path: file.name });
  }
  renderAssets();
  if (assets.length) el<HTMLDetailsElement>('asset-details').open = true;
}
csdInput.addEventListener('change', () => { select(Array.from(csdInput.files || [])); csdInput.value = ''; });
assetInput.addEventListener('change', () => { select(Array.from(assetInput.files || []), true); assetInput.value = ''; });
clearAssets.addEventListener('click', () => { assets = []; renderAssets(); });
play.addEventListener('click', () => { if (selected) void player.play(selected, assets.map((asset) => ({ ...asset }))); });
stop.addEventListener('click', () => { void player.stop(); });
el('clear-console').addEventListener('click', () => { log = ''; output.textContent = ''; });
example.addEventListener('click', async () => {
  selecting = true;
  controls();
  try {
    const response = await fetch(`${import.meta.env.BASE_URL}examples/test-tone.csd`);
    if (!response.ok) throw new Error(`Test tone load failed: HTTP ${response.status}`);
    const text = await response.text();
    selecting = false;
    select([new File([text], 'test-tone.csd', { type: 'text/plain' })]);
  } catch (error) { player.fail(String(error)); }
  finally { selecting = false; controls(); }
});
const zone = el('drop-zone');
window.addEventListener('dragover', (event) => event.preventDefault());
window.addEventListener('drop', (event) => event.preventDefault());
zone.addEventListener('dragover', (event) => { event.preventDefault(); if (!busy) zone.classList.add('dragging'); });
zone.addEventListener('dragleave', () => zone.classList.remove('dragging'));
zone.addEventListener('drop', (event) => {
  event.preventDefault();
  zone.classList.remove('dragging');
  select(Array.from(event.dataTransfer?.files || []));
});
window.addEventListener('error', (event) => player.fail(event.message));
window.addEventListener('unhandledrejection', (event) => player.fail(String(event.reason)));
append('[player] Local files only. No upload endpoint, analytics, or external CDN.');
append('[player] Console retains the latest 200,000 characters. Full browser diagnostics are also available in developer tools.');

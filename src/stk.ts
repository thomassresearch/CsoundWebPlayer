import type { CsoundObj } from '@csound/browser';

type Wave = { name: string; offset: number; size: number };
type Bundle = { url: string; bytes: Uint8Array; waves: Wave[] };
let cached: Promise<Bundle> | undefined;

async function download(name: string): Promise<Response> {
  const response = await fetch(`${import.meta.env.BASE_URL}plugins/stk/${name}`, { signal: AbortSignal.timeout(60_000) });
  if (!response.ok) throw new Error(`STK ${name}: HTTP ${response.status}`);
  return response;
}

/** One download per page; every fresh Csound instance gets its own plugin/FS. */
export function loadStk(): Promise<Bundle> {
  cached ??= (async () => {
    const [plugin, packed, index] = await Promise.all([
      download('stkops.wasm').then((r) => r.arrayBuffer()),
      download('rawwaves.bin').then((r) => r.arrayBuffer()),
      download('rawwaves.json').then((r) => r.json()),
    ]);
    if (!WebAssembly.validate(plugin)) throw new Error('STK plugin is not a valid WebAssembly module.');
    const waves: Wave[] = index.files;
    if (!Array.isArray(waves) || !waves.length || waves.some((wave) =>
      !/^[\w.-]+\.raw$/.test(wave.name) || !Number.isSafeInteger(wave.offset) ||
      !Number.isSafeInteger(wave.size) || wave.offset < 0 || wave.size <= 0 || wave.offset + wave.size > packed.byteLength)) {
      throw new Error('Invalid STK raw wave manifest.');
    }
    return { url: URL.createObjectURL(new Blob([plugin], { type: 'application/wasm' })), bytes: new Uint8Array(packed), waves };
  })().catch((error) => { cached = undefined; throw error; });
  return cached;
}

export async function installStkWaves(engine: CsoundObj, bundle: Bundle): Promise<void> {
  await engine.fs.mkdir('/stk');
  await engine.fs.mkdir('/stk/rawwaves');
  for (const wave of bundle.waves) {
    await engine.fs.writeFile(`/stk/rawwaves/${wave.name}`, bundle.bytes.slice(wave.offset, wave.offset + wave.size));
  }
}

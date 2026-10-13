import { test, expect } from '@playwright/test';
import { readFileSync } from 'node:fs';

for (const probe of ['abi', 'runtime']) {
  test(`${probe} plugin loads through the exact pinned Csound worker`, async ({ page }) => {
    // Serve unmodified package JS and test artifacts; Csound/WASM/RPC are real.
    await page.route('**/test-csound.js', (route) => route.fulfill({
      contentType: 'text/javascript', body: readFileSync('node_modules/@csound/browser/dist/csound.js'),
    }));
    await page.route('**/test-probe.wasm', (route) => route.fulfill({
      contentType: 'application/wasm', body: readFileSync(`tests/plugins/${probe}-probe.wasm`),
    }));
    await page.goto('./');
    const result = await page.evaluate(async (name) => {
      const url = new URL('test-csound.js', location.href).href;
      const { Csound } = await import(url);
      const context = new AudioContext({ sampleRate: 48000 });
      const engine = await Csound({ audioContext: context, useWorker: true, useSAB: false,
        withPlugins: [new URL('test-probe.wasm', location.href).href] });
      try { return await engine.evalCode(`iResult player_${name}_probe 41\nreturn iResult`); }
      finally { await engine.terminateInstance(); await context.close(); }
    }, probe);
    expect(result).toBe(42);
  });
}

test('STK module only imports the pinned host ABI and WASI', () => {
  const module = new WebAssembly.Module(readFileSync('public/plugins/stk/stkops.wasm'));
  const env = ['memory', '__indirect_function_table', '__stack_pointer', '__memory_base', '__table_base', 'allocByteMem', 'freeByteMem'];
  for (const dependency of WebAssembly.Module.imports(module)) {
    expect(dependency.module === 'wasi_snapshot_preview1' ||
      (dependency.module === 'env' && env.includes(dependency.name))).toBe(true);
  }
});

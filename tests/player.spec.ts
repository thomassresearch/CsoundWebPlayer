import { expect, test, type Page } from '@playwright/test';
import { readFileSync } from 'node:fs';

const example = readFileSync('public/examples/test-tone.csd', 'utf8');
const select = async (page: Page, text: string, name = 'test.csd') => {
  await page.locator('#csd-input').setInputFiles({ name, mimeType: 'text/plain', buffer: Buffer.from(text) });
};
const state = (page: Page) => page.locator('#status');
const play = async (page: Page) => {
  await page.getByRole('button', { name: 'Play', exact: true }).click();
  await expect(state(page)).toHaveText('playing', { timeout: 30_000 });
};
const stop = async (page: Page) => {
  await page.getByRole('button', { name: 'Stop', exact: true }).click();
  await expect(state(page)).toHaveText('stopped', { timeout: 15_000 });
  await expect(page.getByRole('button', { name: 'Play', exact: true })).toBeEnabled();
};

test.beforeEach(async ({ page }) => {
  // Observe actual PCM in the Web Audio graph, without mocking Csound or autoplay.
  // These measurements establish non-zero digital output, not audibly heard audio.
  await page.addInitScript(() => {
    const NativeContext = window.AudioContext;
    const contexts: AudioContext[] = [];
    const peaks: number[] = [];
    Object.assign(window, { __audioContexts: contexts, __audioPeaks: peaks });
    window.AudioContext = class extends NativeContext {
      constructor(options?: AudioContextOptions) {
        super(options);
        contexts.push(this);
      }
    };
    const nativeConnect = AudioNode.prototype.connect;
    AudioNode.prototype.connect = function (...args: Parameters<AudioNode['connect']>) {
      if (this instanceof AudioWorkletNode) {
        const analyser = this.context.createAnalyser();
        nativeConnect.call(this, analyser, 0, 0);
        const samples = new Float32Array(analyser.fftSize);
        const timer = setInterval(() => {
          if (this.context.state === 'closed') { clearInterval(timer); return; }
          analyser.getFloatTimeDomainData(samples);
          peaks.push(samples.reduce((max, value) => Math.max(max, Math.abs(value)), 0));
        }, 50);
      }
      return Reflect.apply(nativeConnect, this, args);
    } as typeof AudioNode.prototype.connect;
  });
  await page.goto('./');
});

test('production subpath loads WASM/worklet and emits PCM; Stop, replay and natural completion clean up', async ({ page }) => {
  const errors: string[] = [];
  const failures: string[] = [];
  page.on('pageerror', (error) => errors.push(error.message));
  page.on('requestfailed', (request) => failures.push(request.url()));
  await expect.poll(() => page.evaluate(() => crossOriginIsolated)).toBe(false);
  await page.getByRole('button', { name: 'Play Test tone', exact: true }).click();
  await expect(page.locator('#filename')).toHaveText('test-tone.csd');
  await expect(state(page)).toHaveText('playing', { timeout: 30_000 });
  await expect(page.locator('#compile-result')).toContainText('0 ·');
  await expect(page.locator('#version')).toContainText('7.');
  await expect(page.locator('#ksmps')).toHaveText('32');
  await expect(page.locator('#channels')).toHaveText('2');
  await expect.poll(() => page.evaluate(() => Math.max(0, ...(window as any).__audioPeaks))).toBeGreaterThan(0.01);
  await stop(page);
  await expect.poll(() => page.evaluate(() => (window as any).__audioContexts.every((context: AudioContext) => context.state === 'closed'))).toBe(true);
  await play(page);
  await expect(state(page)).toHaveText('stopped', { timeout: 20_000 });
  await expect(page.locator('#detail')).toContainText('Performance ended');
  await expect.poll(() => page.evaluate(() => (window as any).__audioContexts.every((context: AudioContext) => context.state === 'closed'))).toBe(true);
  expect(errors).toEqual([]);
  expect(failures).toEqual([]);
});

test('compilation failure remains visible and a subsequent CSD plays', async ({ page }) => {
  await select(page, example.replace('oscili aEnv, p4', 'nonexistent_opcode aEnv, p4'));
  await page.getByRole('button', { name: 'Play', exact: true }).click();
  await expect(state(page)).toHaveText('error', { timeout: 30_000 });
  await expect(page.locator('#console')).toContainText('nonexistent_opcode');
  await expect(page.locator('#compile-result')).not.toHaveText('—');
  await select(page, example, 'recovered.csd');
  await play(page);
  await stop(page);
});

test('a file-output CSD is routed to realtime audio', async ({ page }) => {
  await select(page, example.replace('-odac -d', '-o export.wav -W -d'));
  await play(page);
  await expect.poll(() => page.evaluate(() => Math.max(0, ...(window as any).__audioPeaks))).toBeGreaterThan(0.01);
  await expect(page.locator('#console')).toContainText('output=dac');
  await stop(page);
});

test('local sample copied to virtual FS, missing asset reports errors, and files are never uploaded', async ({ page }) => {
  const requests: string[] = [];
  page.on('request', (request) => {
    if (!['GET', 'HEAD'].includes(request.method())) requests.push(`${request.method()} ${request.url()}`);
  });
  const csd = example.replace('aTone oscili aEnv, p4', 'aTone diskin2 "sample.wav", 1, 0, 1');
  await select(page, csd);
  // 1 second of mono, 16-bit PCM.
  const wav = Buffer.alloc(44 + 48000 * 2);
  wav.write('RIFF', 0); wav.writeUInt32LE(wav.length - 8, 4); wav.write('WAVEfmt ', 8);
  wav.writeUInt32LE(16, 16); wav.writeUInt16LE(1, 20); wav.writeUInt16LE(1, 22);
  wav.writeUInt32LE(48000, 24); wav.writeUInt32LE(96000, 28);
  wav.writeUInt16LE(2, 32); wav.writeUInt16LE(16, 34);
  wav.write('data', 36); wav.writeUInt32LE(wav.length - 44, 40);
  for (let i = 0; i < 48000; i++) wav.writeInt16LE(Math.round(3000 * Math.sin(2 * Math.PI * 440 * i / 48000)), 44 + i * 2);
  await page.locator('#asset-input').setInputFiles({ name: 'sample.wav', mimeType: 'audio/wav', buffer: wav });
  await play(page);
  await expect.poll(() => page.evaluate(() => Math.max(0, ...(window as any).__audioPeaks))).toBeGreaterThan(0.01);
  await stop(page);
  await select(page, csd); // New CSD clears assets; each performance gets a fresh FS.
  await expect(page.locator('#asset-list')).toBeEmpty();
  await page.getByRole('button', { name: 'Play', exact: true }).click();
  await expect(state(page)).toHaveText('error', { timeout: 30_000 });
  await expect(page.locator('#console')).toContainText('sample.wav');
  expect(requests).toEqual([]);
});

test('Stop during startup cancels cleanly and rapid clicks do not start concurrent engines', async ({ page }) => {
  await select(page, example);
  await page.evaluate(() => {
    const playButton = document.getElementById('play') as HTMLButtonElement;
    playButton.click();
    playButton.click();
    (document.getElementById('stop') as HTMLButtonElement).click();
  });
  await expect(state(page)).toHaveText('stopped', { timeout: 15_000 });
  await expect(page.getByRole('button', { name: 'Play', exact: true })).toBeEnabled();
  await play(page);
  await stop(page);
});


test('HardTrance example plays the unchanged Orchestron export with one click', async ({ page }) => {
  const errors: string[] = [];
  page.on('pageerror', (error) => errors.push(error.message));
  await page.getByRole('button', { name: 'Play HardTrance', exact: true }).click();
  await expect(page.locator('#filename')).toHaveText('HardTrance.csd');
  await expect(state(page)).toHaveText('playing', { timeout: 30_000 });
  await expect(page.locator('#compile-result')).toContainText('0 ·');
  await expect.poll(() => page.evaluate(() => Math.max(0, ...(window as any).__audioPeaks)), { timeout: 15_000 }).toBeGreaterThan(0.001);
  await expect(page.getByRole('button', { name: 'Play Test tone', exact: true })).toBeDisabled();
  await stop(page);
  await expect(page.getByRole('button', { name: 'Play Test tone', exact: true })).toBeEnabled();
  await expect(page.locator('#console')).not.toContainText('INIT ERROR');
  await expect(page.locator('#console')).not.toContainText('PERF ERROR');
  expect(errors).toEqual([]);
});

test('failed example download can be retried without blocking local playback', async ({ page }) => {
  await page.route('**/examples/HardTrance.csd', (route) => route.fulfill({ status: 503, body: 'Unavailable' }));
  await page.reload();
  const retry = page.getByRole('button', { name: 'Retry HardTrance', exact: true });
  await expect(retry).toBeEnabled();
  await expect(page.locator('#csd-input')).toBeEnabled();
  await page.unroute('**/examples/HardTrance.csd');
  await retry.click();
  await expect(page.getByRole('button', { name: 'Play HardTrance', exact: true })).toBeEnabled();
});

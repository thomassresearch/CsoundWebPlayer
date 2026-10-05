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
  // Existing diagnostic checks deliberately enable capture before playback.
  await page.locator('#console-panel > summary').click();
});

test('console defaults closed, captures only while expanded, and errors still surface when closed', async ({ page }) => {
  await page.reload();
  const panel = page.locator('#console-panel');
  const toggle = panel.locator('summary');
  const output = page.locator('#console');
  const browserMessages: string[] = [];
  page.on('console', (message) => browserMessages.push(message.text()));
  await expect(panel).not.toHaveAttribute('open');
  await expect(output).toBeHidden();
  const verbose = example.replace('instr 1\n', 'instr 1\n  kTick metro 8\n  printf "CONSOLE_TICK %f\\n", kTick, timeinsts()\n');
  await select(page, verbose);
  await play(page);
  await expect.poll(() => page.evaluate(() => Math.max(0, ...(window as any).__audioPeaks))).toBeGreaterThan(0.01);
  await expect(output).toBeEmpty();
  await toggle.click();
  await expect(output).toContainText('CONSOLE_TICK');
  await toggle.click();
  await expect(output).toBeHidden();
  const captured = await output.textContent();
  await page.waitForTimeout(600); // Multiple print cycles continue during this interval.
  await expect(output).toHaveText(captured!);
  await expect(state(page)).toHaveText('playing');
  await toggle.click();
  await expect.poll(() => output.textContent()).not.toBe(captured);
  await stop(page);
  expect(browserMessages.filter((message) => message.includes('CONSOLE_TICK'))).toEqual([]);

  await page.getByRole('button', { name: 'Clear console', exact: true }).click();
  await toggle.click();
  await select(page, example.replace('oscili aEnv, p4', 'nonexistent_opcode aEnv, p4'));
  await page.getByRole('button', { name: 'Play', exact: true }).click();
  await expect(state(page)).toHaveText('error', { timeout: 30_000 });
  await expect(page.locator('#detail')).toContainText('Expand the Csound console and retry');
  await expect(output).toBeEmpty();
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
  await expect(page.locator('#ksmps')).toHaveText('64');
  await expect(page.locator('#channels')).toHaveText('2');
  await expect.poll(() => page.evaluate(() => Math.max(0, ...(window as any).__audioPeaks))).toBeGreaterThan(0.01);
  await expect(page.locator('#output-level')).toContainText('dBFS');
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

for (const options of ['conflicting', 'missing'] as const) {
  test(`local CSD rate overrides win with ${options} CsOptions`, async ({ page }) => {
    let csd = example.replace('sr = 48000', 'sr = 96000\nkr = 96000').replace('ksmps = 32', 'ksmps = 1');
    csd = options === 'conflicting'
      ? csd.replace('-odac -d', '-odac -d -r 22050 -k 11025 --ksmps=2 ; original settings')
      : csd.replace(/<CsOptions>[\s\S]*?<\/CsOptions>\n/, '');
    await select(page, csd);
    await play(page);
    await expect(page.locator('#sample-rate')).toHaveText('48000 Hz');
    await expect(page.locator('#ksmps')).toHaveText('64');
    await expect(page.locator('#console')).toContainText('Playback overrides: sr=48000, ksmps=64. Source CSD unchanged.');
    await expect.poll(() => page.evaluate(() => Math.max(0, ...(window as any).__audioPeaks))).toBeGreaterThan(0.01);
    await stop(page);
  });
}

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


test('HardTrance source with ksmps 1 plays at 48 kHz with ksmps 64', async ({ page }) => {
  const errors: string[] = [];
  page.on('pageerror', (error) => errors.push(error.message));
  await page.getByRole('button', { name: 'Play HardTrance', exact: true }).click();
  await expect(page.locator('#filename')).toHaveText('HardTrance.csd');
  await expect(state(page)).toHaveText('playing', { timeout: 30_000 });
  await expect(page.locator('#sample-rate')).toHaveText('48000 Hz');
  await expect(page.locator('#ksmps')).toHaveText('64');
  await expect(page.locator('#audio-context')).toContainText('48000 Hz');
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

test('media playback audio is requested inside the Play gesture before context creation', async ({ page }) => {
  // Chromium has no Audio Session API: emulate only its policy interface.
  // Real Csound, WASM, AudioContext, AudioWorklet and PCM remain in use.
  await page.addInitScript(() => {
    const requests: { type: string; gesture: boolean; contexts: number }[] = [];
    Object.assign(window, { __audioSessionRequests: requests });
    Object.defineProperty(navigator, 'audioSession', { configurable: true, value: {
      get type() { return requests.at(-1)?.type ?? 'auto'; },
      set type(type: string) {
        requests.push({ type, gesture: navigator.userActivation.isActive, contexts: (window as any).__audioContexts.length });
      },
    } });
  });
  await page.reload();
  await page.getByRole('button', { name: 'Play Test tone', exact: true }).click();
  await expect(state(page)).toHaveText('playing', { timeout: 30_000 });
  expect(await page.evaluate(() => (window as any).__audioSessionRequests[0])).toEqual({ type: 'playback', gesture: true, contexts: 0 });
  await expect(page.locator('#audio-session')).toHaveText('playback');
  await expect(page.locator('#output-level')).toContainText('dBFS');
  await stop(page);
});

test('blocked audio exposes a Resume gesture and restores the running context', async ({ page }) => {
  await select(page, example.replace('\ne\n', '\nf 0 60\ne\n'));
  await play(page);
  await page.evaluate(() => (window as any).__audioContexts[0].suspend());
  await expect(page.locator('#audio-context')).toContainText('suspended');
  await expect(state(page)).not.toHaveText('playing');
  const resume = page.getByRole('button', { name: 'Resume audio', exact: true });
  await expect(resume).toBeVisible();
  await resume.click();
  await expect(state(page)).toHaveText('playing');
  await expect(page.locator('#audio-context')).toContainText('running');
  await expect(resume).toBeHidden();
  await stop(page);
  await expect(resume).toBeHidden();
});

test('an unsupported audio session request does not prevent Csound playback', async ({ page }) => {
  await page.addInitScript(() => {
    Object.defineProperty(navigator, 'audioSession', { configurable: true, value: {
      set type(_value: string) { throw new Error('Policy denied'); },
    } });
  });
  await page.reload();
  await page.locator('#console-panel > summary').click();
  await page.getByRole('button', { name: 'Play Test tone', exact: true }).click();
  await expect(state(page)).toHaveText('playing', { timeout: 30_000 });
  await expect(page.locator('#console')).toContainText('Could not request playback audio: Policy denied');
  await expect(page.locator('#output-level')).toContainText('dBFS');
  await stop(page);
});

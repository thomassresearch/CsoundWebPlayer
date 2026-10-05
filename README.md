# Csound Web Player

A small, independent realtime player for CSD files exported by Orchestron. Runs **Csound 7 WASM entirely in the browser**, using `@csound/browser` **7.0.0-beta36**, TypeScript and Vite. No backend or installed Csound runtime. Selected files are read with the File API and never uploaded.

## Local development

Use Node.js **22.13+** (Node 24 recommended) and npm:

```sh
npm install
npm run dev
```

Open the URL printed by Vite, normally `http://localhost:5173/CsoundWebPlayer/`.

```sh
npm test           # virtual filesystem path checks
npm run build      # TypeScript check and production dist/
npm run preview    # serve the production build locally
```

Do not open `index.html` with `file://`. AudioWorklet requires a secure context: HTTPS or localhost/127.0.0.1. Plain HTTP on a LAN IP is insufficient.

## Test a CSD

1. Click **Load test tone**, then **Play**. The self-contained example at `public/examples/test-tone.csd` plays three quiet tones for about four seconds.
2. Select or drop one real `.csd`. Optionally drop asset files alongside it, or choose **Add assets** afterward.
3. In **Assets**, adjust virtual paths to match the CSD, e.g. `samples/kick.wav` or `instruments/piano.sf2`. Paths are case-sensitive, relative to `/`, and may contain spaces. Nested directories are created automatically. Absolute host paths must be changed in the CSD. Select individual files; directory drops are not supported.
4. Press **Play**. Inspect compile/start results, Csound version, effective sample rate, `ksmps`, channels, AudioContext state, and the visible Csound console.
5. Press **Stop**, replay, or select a different CSD. A new Csound instance, filesystem and AudioContext are created for every run; old workers and audio resources are released. Selecting a new CSD clears the previous assets. Assets remain selected across replays of the same CSD.

The entire CSD is passed to Csound 7's `compileCSD(text, 1)`. After compilation, the player applies `-odac` to force realtime device output instead of an exported `-o file.wav` or `-n` setting. Other options, instruments and score remain intact. `start()` manages realtime performance through the package; there is no JavaScript `performKsmps()` loop or offline pre-render.

## GitHub Pages

In this repository's **Settings → Pages → Build and deployment**, select **GitHub Actions** as the source. This one-time repository setting requires owner/admin access; the workflow's normal token cannot enable Pages itself. Private repositories require a GitHub plan that supports Pages. Review site visibility before enabling it; local files selected by visitors are never published.

The [Pages workflow](.github/workflows/pages.yml) installs with `npm ci`, runs tests, builds, uploads **`dist/`**, and deploys using `actions/deploy-pages`. Pushes to `main` deploy; pull requests only validate the build. You can also run it manually from **Actions** after enabling Pages. Uploaded build artifacts are retained for one day.

Expected site URL after successful deployment:

<https://thomassresearch.github.io/CsoundWebPlayer/>

Vite's base is `/CsoundWebPlayer/`; example URLs use `import.meta.env.BASE_URL`. The Csound package embeds its compressed WASM and Worker/AudioWorklet source in its ESM distribution. Vite serves the bundled JavaScript from this site; no runtime CDN or separate `.wasm` copy is needed. Keep the browser's default support for blob workers/worklets enabled if adding a Content Security Policy later.

## Browser requirements and limitations

- Use a current Chrome, Edge, Firefox or Safari with WebAssembly, Web Audio and AudioWorklet. Playback needs the **Play** user gesture; the AudioContext is resumed immediately in that click. Only headless Chromium has been exercised here; Safari/iOS and Firefox need device testing. Backgrounding, screen locking or power saving can suspend audio.
- Uses the package's **Worker + AudioWorklet** mode with `useSAB: false`, even on an isolated host. It needs no COOP/COEP headers or SharedArrayBuffer, making local and Pages tests comparable. Message passing has overhead; this PoC does not establish a maximum viable track/voice count or guarantee glitch-free playback.
- The engine is supplied a browser AudioContext. This package version sets Csound's effective `sr` to that context's rate (observed: a 48 kHz CSD ran at 44.1 kHz). Check the diagnostics rather than assuming the CSD's declared rate is used. Output channel routing/downmixing depends on the browser and device.
- This is a Csound **7 beta**, not a native desktop installation. Opcodes/plugins not included in the WASM build, native libraries, external processes, host filesystem access and platform audio/MIDI options may be unavailable. A Csound 6 export may need syntax/opcode adjustments. Missing opcode and sample errors appear in the console.
- Asset selection supports WAV/sample/SoundFont/include files as opaque bytes. Loading a file does not guarantee that its format/opcodes are supported. WAV playback is smoke-tested; SoundFonts have not been tested here. Everything is in memory, so large banks/exports can exhaust browser memory. Duplicate paths and file/directory collisions are rejected.
- CSDs requiring Orchestron-side control-channel updates, live score scheduling or other host behavior are not self-contained. That behavior is outside this player's scope. CSD options requesting microphone/MIDI may prompt or fail according to browser permissions/support; the player provides no live-input controls.
- Stop also cancels loading/compilation. Individual engine calls time out after 60 seconds; cleanup falls back to worker termination. Console output is batched and retains the latest 200,000 characters. Browser developer tools provide additional diagnostics. Reported Csound init/performance errors stop playback; this is not a general CPU-load or underrun profiler.

## Validation

`npm run build` and the path tests passed. The production app was served at `/CsoundWebPlayer/` without cross-origin isolation and exercised in headless Chromium:

- Csound 7 initialized, compile/start returned 0, AudioWorklet loaded, and a Web Audio analyser measured nonzero output.
- Natural score completion, repeated play/stop, cancellation during loading, and loading another CSD worked; AudioContexts closed afterward.
- Invalid opcodes and missing samples were reported; subsequent valid playback recovered.
- Disk-output and `-n` CSD options were overridden for realtime playback; a WAV was loaded through a nested virtual path.
- No selected-file upload or third-party network request was observed.

**Audio was not audibly verified. No real complex Orchestron export was supplied, so its compatibility and realtime performance remain unproven.** Test your demanding export on the target browser/device, noting browser version, displayed engine settings, missing opcodes, dropouts and console messages. This static smoke test is not a deployed-site or cross-browser certification.

Upstream references: [Csound browser package](https://www.npmjs.com/package/@csound/browser), [source/API](https://github.com/csound/csound/tree/develop/platform/wasm-wasi/browser), [Csound 7 manual](https://csound.com/manual/), [GitHub Pages custom workflows](https://docs.github.com/en/pages/getting-started-with-github-pages/using-custom-workflows-with-github-pages).

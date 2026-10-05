# Csound Web Player

Minimal realtime player for CSDs exported by Orchestron. Csound 7 executes in the
browser using `@csound/browser` **7.0.0-beta36**, Vite and TypeScript. No backend,
Csound installation, account or upload is required for listeners.

## Local development

Requires Node.js **22.13+** (Node 24 recommended) and npm on the developer's machine:

```sh
npm install
npm run dev
```

Open the printed URL, normally `http://localhost:5173/CsoundWebPlayer/`.
For the production build:

```sh
npm run build
npm run preview
```

Open `http://localhost:4173/CsoundWebPlayer/`. Serve the app over HTTP on localhost
or HTTPS elsewhere; opening `index.html` via `file://` is not supported.

## Test a CSD

1. Click **Load test tone**, then **Play**. The bundled
   [`public/examples/test-tone.csd`](public/examples/test-tone.csd) plays eight
   seconds of quiet stereo tones and ends automatically.
2. Select or drop one `.csd`. Optionally drop its supporting files together with
   it, or use **Add assets** after selecting the CSD.
3. Click **Play**. Inspect the compile return code, Csound version, effective
   sample rate, `ksmps`, channel count and console. **Stop** also cancels startup.
4. Stop and replay, or choose another CSD. Each playback creates a fresh engine,
   virtual filesystem and AudioContext; completion/Stop releases them.

The complete original CSD is compiled with `compileCSD(text, 1)`. Afterwards the
player sets `-odac` to route output to Web Audio, including exports using
`-o output.wav`. It does not modify the selected file, orchestra or score.
Other CSD options are retained, so incompatible native options produce visible
errors rather than being silently removed.

Selected CSDs are read with the File API. Assets are copied to Csound's in-memory
filesystem; neither is uploaded or persisted. Asset filenames are case-sensitive
and placed at the virtual root: `sample.wav` and `/sample.wav` refer to the same
imported file. Nested paths, folder drops, automatic dependency discovery and
absolute paths from the original computer are not supported. Export flat relative
paths for this milestone. A new CSD clears selected assets; adding the same asset
filename replaces it. Assets remain selected when replaying the same CSD.

## GitHub Pages

In the repository's **Settings → Pages → Build and deployment**, select
**GitHub Actions** as the source. Push to `main` or manually run **Build, test and
deploy Pages**. GitHub Pages must be available for the repository/account plan
(this repository was private when the PoC was created).

The workflow installs with `npm ci`, type-checks and builds, runs headless Chromium
checks against `dist/`, then uploads **`dist/`** with `actions/upload-pages-artifact`
and deploys it with `actions/deploy-pages`. Pull requests build/test without
deployment. Site artifacts expire after one day and failure traces after three.

Expected project URL after a successful deployment:
<https://thomassresearch.github.io/CsoundWebPlayer/>.
`vite.config.ts` explicitly sets `base: '/CsoundWebPlayer/'`; change it when
renaming the repository or serving at a different path.

The pinned Csound package embeds its WASM and worker/worklet sources in its
JavaScript distribution. Vite builds a lazy-loaded Csound chunk; no CDN imports,
manual WASM copying, service worker or cross-origin isolation headers are needed.
Its approximately 3 MB uncompressed chunk is expected and produces a Vite size
warning. The engine uses the package's `useWorker: true, useSAB: false` mode for
consistent behavior on Pages and localhost.

## Browser requirements and limitations

- Use a current Chrome/Edge, Firefox or Safari with WebAssembly, Web Workers,
  AudioWorklet and Web Audio. Playback needs a click/tap. Chromium is covered by
  automated checks; Safari/iOS and Firefox still need manual verification.
- A supplied AudioContext makes the worker target the browser's sample rate,
  potentially overriding `sr` in the CSD. The UI reports effective values. An
  explicit incompatible sample-rate option is rejected if it creates a mismatch.
- Csound 7 and this browser package are beta software. Native-only opcodes,
  binary plugins, OS commands/devices, native audio drivers and arbitrary host
  filesystem paths may be unavailable. Additional WASM plugins are not loaded.
  A missing opcode or sample is diagnosed in the console. Microphone/MIDI-driven
  scores are outside this playback milestone; retained options may request the
  browser's corresponding permission.
- Available RAM/CPU, polyphony, `ksmps`, expensive opcodes, sample/SoundFont sizes,
  logging, mobile power management and background-tab throttling affect realtime
  performance. This PoC makes no dropout-free performance guarantee or CPU-meter
  claim. Keep the tab foregrounded when evaluating an export.
- Compile/start API failures, worklet processor failures and reported Csound
  performance errors are surfaced. The package does not expose every runtime
  result directly; errors also remain visible in the console. Pending calls have
  timeouts (compilation: 120 seconds). Reload if a WASM initialization failure
  leaves an unresponsive worker that never returns an engine handle.

## Validation

```sh
npm run build
npx playwright install chromium
npm test
```

Tests run the production preview at the Pages subpath without COOP/COEP. They
exercise real WASM/worklet loading, non-zero digital PCM output, manual Stop,
replay, natural completion, compile-error recovery, file-output override, WAV
loading, missing assets and cancellation. No Csound mock or autoplay override is
used. `PLAYWRIGHT_CHROMIUM_EXECUTABLE_PATH` can select an existing Chromium binary.

The production build and five browser tests passed in cloud Chromium 153.
**Audio was not audibly verified.** No real complex Orchestron export was supplied,
so throughput and opcode compatibility for such an export remain to be tested on
the target device. Start with the bundled tone, then test your demanding export
and listen for glitches while checking the console.

Upstream source/API: [Csound browser package](https://github.com/csound/csound/tree/develop/platform/wasm-wasi/browser).
`@csound/browser` is Apache-2.0; the embedded Csound engine is LGPL-2.1. See the
upstream package's `LICENSE` and `THIRD_PARTY.md` for dependency notices.

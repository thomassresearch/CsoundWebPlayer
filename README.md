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

1. In **CSD examples**, click **Play** beside **HardTrance** or **Evening at
   the Lake**. Both are self-contained Orchestron exports. Each song's leading
   CSD header comment appears beside its title (below it on small screens).
2. To play your own export, select/drop a `.csd` in the area below the examples.
   Optionally drop its supporting files together with it, or use **Add assets**
   after selecting the CSD.
3. Click **Play**. Inspect the compile return code, Csound version, effective
   sample rate, `ksmps` and channel count. Expand **Csound console** before
   playback if you want to capture output. **Stop** also cancels startup.
4. Stop and replay, or choose another CSD. Each playback creates a fresh engine,
   virtual filesystem and AudioContext; completion/Stop releases them.

Bundled CSDs live in `public/examples/`; register additional examples in
`src/examples.ts` to give each its own Play button. Files are prefetched so the
button starts audio within the browser user gesture. A failed download offers
Retry and does not block local file playback. Stop the current example before
starting another.

The Csound console is collapsible and closed by default. Output is formatted,
buffered and displayed only while it is expanded; messages received while closed
are discarded. Collapsing it cancels pending display updates and preserves already
captured text. The package's default browser-console message logger is disabled.
Compilation/runtime error detection and status remain active while closed.
Expand the console and replay to capture detailed errors.

### iPhone / iPad audio

Open the page in Safari and keep it foregrounded. Play requests
`navigator.audioSession.type = 'playback'` when supported, before creating the
AudioContext, so iOS treats it as media audio even in Silent Mode. A silent buffer
and `resume()` activate the output graph during the button gesture before WASM
loads. If audio becomes suspended or interrupted, **Resume audio** provides a new
user gesture; the player does not display `playing` while the context is blocked.

For no sound, check **Web Audio** is `running`, **Audio session** is `playback`,
raise the media volume and check the output route (speaker/AirPods/Bluetooth).
Older browsers without the Audio Session API may need Silent Mode turned off.
**Digital output level** samples the Csound AudioWorklet signal: a changing dBFS
value confirms synthesized PCM, not that the device speakers are audible. If the
problem persists, share the status, these diagnostics and the Csound console.

See [WebKit's Silent Mode behavior and playback audio-session setting](https://bugs.webkit.org/show_bug.cgi?id=237322).
This fix has automated policy-ordering and real context suspend/resume coverage;
physical iPhone audio still needs confirmation on the device.

Every CSD plays with **`sr = 48000` and `ksmps = 64`** (`kr = 750 Hz`), regardless
of its original header or rate options. Before `compileCSD(text, 1)`, the player
adds Csound's `--sample-rate=48000 --control-rate=750 --ksmps=64` overrides to the
end of `CsOptions` in an in-memory copy. If the section is absent, it is added.
The selected/bundled file, orchestra, score and local UDO `setksmps` instructions
are preserved. The console records the overrides and the diagnostics show the
effective values. HardTrance's stored `ksmps = 1` remains unchanged.

After compilation the player sets `-odac` to route output to Web Audio, including
exports using `-o output.wav`. Other CSD options are retained, so incompatible
native options produce visible errors rather than being silently removed.

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
- The player requests a 48 kHz AudioContext and overrides every CSD to 48 kHz /
  `ksmps = 64`. It checks the effective engine settings before starting. This
  changes control-rate timing for scores originally designed with another
  global `ksmps`; the original file is preserved.
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
The trivial self-contained test CSD is kept in `tests/fixtures/test-tone.csd`
for automated playback checks; it is not a public example.
Unit tests check preservation of orchestra/score text and local `setksmps`;
browser tests verify the actual WASM engine overrides conflicting header/rate
options and supplies the overrides when `CsOptions` is absent.
Additional tests check the playback audio-session request precedes context
creation in the Play gesture, recovery with Resume audio after a real context
suspension, and graceful fallback when the audio-session request is rejected.
The policy interface is emulated in Chromium; this does not verify iOS routing.

The production build and browser tests cover both bundled examples, including
non-zero digital output from HardTrance and Evening at the Lake, plus example
download retry. **Audio was not audibly verified.** Digital output and successful
compilation do not certify glitch-free playback on every device. Listen for
glitches while checking the console when evaluating your target browser.

The original 44.1 kHz / `ksmps = 32` test on Pages in cloud Chromium produced audio without
reported Csound/browser errors, but after 480 seconds of wall time the score had
reached only about 172.5 seconds. **This environment did not sustain realtime
throughput for HardTrance.** The player and WASM loading work; target-device
performance still needs evaluation. The bundled CSD now differs from the upload
only in its `sr` and `ksmps` assignments (48 kHz / 1).

The user subsequently confirmed realtime playback on an iPhone at `ksmps = 64`,
but reported chopped audio at `ksmps = 1`. Playback now always overrides to
48 kHz / 64 in memory, while HardTrance keeps its stored `ksmps = 1`.

A matched 60-second introductory playback check measured about 29.6 seconds of
score progress at 44.1 kHz / 32 and 29.2 seconds at 48 kHz / 64: approximately
**0.49× realtime in both runs**, with no material improvement from these changes
in this cloud environment. These measurements use Csound's timestamped console
messages, not audible playback. The browser AudioContext advanced about 59 seconds.

Upstream source/API: [Csound browser package](https://github.com/csound/csound/tree/develop/platform/wasm-wasi/browser).
`@csound/browser` is Apache-2.0; the embedded Csound engine is LGPL-2.1. See the
upstream package's `LICENSE` and `THIRD_PARTY.md` for dependency notices.

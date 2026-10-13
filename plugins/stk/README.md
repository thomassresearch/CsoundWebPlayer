# Optional STK WASM plugin

`public/plugins/stk/stkops.wasm` is a separate Csound side module, approximately
887 KiB uncompressed, plus 270 KiB of raw waves. Ordinary CSD playback downloads
neither. The browser inspects orchestra tokens before initialization, then passes
one plugin URL through `Csound({ withPlugins })` and copies the wave pack into
`/stk/rawwaves/`. Downloads are cached for the page; each playback still owns a
fresh Csound instance and virtual filesystem. No selected files are uploaded.

## Rebuild

The prebuilt files are committed so `npm install && npm run dev` needs no C++
compiler. To rebuild on Linux x86_64 (Python 3.12+, curl, Node/npm):

```sh
npm run build:stk
npm run build
npx playwright install chromium
npm test
```

The script downloads checksum-pinned dependencies into `.cache/stk/`. The separate
**Build optional STK plugin** workflow rebuilds, tests and uploads the plugin,
wave data, notices and adapter sources as an Actions artifact. After changing the
adapter, commit regenerated public/test WASM files together with source changes;
Pages serves the checked-in build. The workflow does not edit the repository.

Pinned components:

- `@csound/browser` **7.0.0-beta36**, embedded `@csound/wasm-bin` **7.0.0-beta26**;
  SDK headers come from that exact wasm-bin package (Csound 7 double-sample ABI).
- [STK 5.0.1](https://github.com/thestk/stk/tree/5.0.1), unchanged DSP and raw waves.
- [WASI SDK 34.0](https://github.com/WebAssembly/wasi-sdk/releases/tag/wasi-sdk-34),
  Clang 23 and the matching wasi-libc commit
  `2e6fb9d8ee0cdf9e431fbcabe8af3115de000a13`.
- Adapter interface derived from Michael Gogins' [native Csound STK wrapper](https://github.com/csound-plugins/csound-externals/blob/90111dec0964ae29a46a848a1a7c585eff32f4f9/stk/stkOpcodes.cpp).

## ABI findings

The independent `abi-probe.cpp` registers `player_abi_probe` and returns its input
plus one. A real worker test expects 42 for input 41. `runtime-probe.cpp` separately
checks strings, streams, allocation and C++ throw/catch. These probes are test
artifacts and are not published by Vite.

The host supports `dylink.0`, shared memory/table/stack and Csound module callbacks.
Export **all four** `csoundModule*` entry points and `__wasm_call_ctors`. The loader
handles data relocations. It cannot resolve arbitrary C++ imports, GOT imports or
additional dynamic library dependencies.

The plugin therefore statically links a PIC C/C++ runtime. The build converts the
SDK's LTO weak definitions to hidden visibility so wasm-ld does not turn them into
host imports, preserving weak coalescing. `-wasm-enable-eh` must also be supplied
to the final LTO link or C++ catches disappear. Do not omit the runtime probe.

`runtime.cpp` routes malloc/calloc/realloc/aligned allocation and free through
Csound's `allocByteMem/freeByteMem`; a second allocator must never own the shared
heap. The SDK's allocator is excluded. Process-exit destructors are unnecessary
because the complete worker is terminated; Csound calls per-instrument deinit.
The single-worker libc TLS metadata uses its zero-bound PIC fallback instead of
unavailable optional GOT stack-bound imports. WASI file operations use Csound's
existing virtual filesystem. `filesystem.cpp` obtains raw-wave sizes using
open/fstat/close because beta36's path-based WASI stat is a success-only stub.
This shim is private to the plugin. These changes affect glue/runtime, not STK DSP.

Do not call `evalCode` on the playback engine to probe registration: before CSD
compilation it fixes default header settings; afterward it can affect the score.
The actual CSD compilation validates its requested opcodes. ABI probes run in
separate test instances.

## Supported interface and limits

The 27 classic `STK...` instruments are registered with the native frequency,
gain and eight optional controller/value-pair interface (`iiJJJJJJJJJJJJJJJJ`).
See `stkops.cpp` for the list. `STKBowed` and wave-based `STKModalBar` have browser
PCM checks; not every instrument/controller combination has been listened to.

The detector ignores comments, quoted text and score content. It does not expand
`#include` files or token-building macros: put the STK call or a visible STK token
in the main orchestra when using those constructs. Unknown STK opcode names still
fail compilation with a diagnostic. This plugin does not provide native audio,
MIDI, network or filesystem access. STK playback additionally needs WASM exception
handling; current Chromium is tested, Safari/iOS and Firefox need device checks.

This is a version-specific PoC, not an ABI-stable plugin distribution. Rebuild and
rerun the ABI/runtime and playback tests when updating Csound or its WASM package.
The adapter/runtime sources are in this folder; upstream source versions and
checksums are in `build.py`. License texts and copyright notices ship beside the
artifact under `public/plugins/stk/licenses/` and `NOTICE.txt`.

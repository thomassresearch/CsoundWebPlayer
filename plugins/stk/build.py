#!/usr/bin/env python3
"""Build Csound's optional STK side module. Linux x86_64, Python 3.12+, curl."""
import argparse
import concurrent.futures
import hashlib
import json
import os
from pathlib import Path
import platform
import re
import shutil
import subprocess
import tarfile

ROOT = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--cache', type=Path, default=ROOT / '.cache/stk')
args = parser.parse_args()
CACHE = args.cache.resolve()
CACHE.mkdir(parents=True, exist_ok=True)
if platform.system() != 'Linux' or platform.machine() != 'x86_64':
    raise SystemExit('This pinned toolchain targets a Linux x86_64 build host (e.g. Ubuntu or Docker).')


def run(*args, **kwargs):
    return subprocess.run([str(arg) for arg in args], check=True, **kwargs)


def source(name, url, digest, directory):
    archive = CACHE / name
    if not archive.exists():
        run('curl', '--fail', '--location', '--retry', '3', url, '-o', archive)
    if hashlib.sha256(archive.read_bytes()).hexdigest() != digest:
        raise RuntimeError(f'SHA-256 mismatch: {archive}; remove it and retry')
    target = CACHE / directory
    if not target.exists():
        with tarfile.open(archive) as tar:
            tar.extractall(CACHE, filter='data')
    return target


SDK = source('wasi-sdk.tar.gz',
    'https://github.com/WebAssembly/wasi-sdk/releases/download/wasi-sdk-34/wasi-sdk-34.0-x86_64-linux.tar.gz',
    'b761e3a0721dbae9c09a0059e5fdb2bf917d1b4a8a7b430fb3b5aafb0984b2c4', 'wasi-sdk-34.0-x86_64-linux')
STK = source('stk.tar.gz', 'https://codeload.github.com/thestk/stk/tar.gz/refs/tags/5.0.1',
    '1dd1a5063efa43d4bc9792d1394b395672fb2222cdb0e56c7c8e3f6db22ece86', 'stk-5.0.1')
LIBC = source('wasi-libc.tar.gz',
    'https://codeload.github.com/WebAssembly/wasi-libc/tar.gz/2e6fb9d8ee0cdf9e431fbcabe8af3115de000a13',
    'f25ccd526235f7b351f9b49451b75fdd8e23250b9ad8fc9f8f2a19f517a4892f',
    'wasi-libc-2e6fb9d8ee0cdf9e431fbcabe8af3115de000a13')
CSOUND = source('csound-wasm-bin-7.0.0-beta26.tgz',
    'https://registry.npmjs.org/@csound/wasm-bin/-/wasm-bin-7.0.0-beta26.tgz',
    '3c79c037e232e6abd2dc0785ba78d24795e4544fe4cc281e7d336165259374f1', 'package')
HEADERS = CACHE / 'csound-plugin-sdk'
if not HEADERS.exists():
    with tarfile.open(CSOUND / 'lib/csound-plugin-sdk.tar.gz') as tar:
        tar.extractall(CACHE, filter='data')

WORK = CACHE / 'build'
if WORK.exists():
    shutil.rmtree(WORK)
WORK.mkdir()
AR = SDK / 'bin/llvm-ar'
CXX = SDK / 'bin/clang++'
CC = SDK / 'bin/clang'
WLIB = SDK / 'share/wasi-sysroot/lib/wasm32-wasip1'
LTO = 'llvm-lto/23.1.0-wasi-sdk'
FLAGS = ['-O2', '-flto', '-fPIC', '-fvisibility=hidden', '-fwasm-exceptions']
INCLUDES = ['-I' + str(STK / 'include'), '-I' + str(HEADERS / 'include/csound')]


def private_weak_symbols(obj):
    """wasm-ld imports public weak definitions even with -Bsymbolic.

    Bind runtime templates inside this plugin without changing coalescing or DSP.
    SDK LTO archives let us do this without recompiling all of libc++.
    """
    if obj.read_bytes()[:4] != b'BC\xc0\xde':
        return
    ir = run(CC, '-S', '-emit-llvm', '-x', 'ir', obj, '-o', '-', capture_output=True).stdout.decode()
    ir = re.sub(r'^(define (?:weak_odr|linkonce_odr|weak|linkonce) )(?!hidden|protected)',
                r'\1hidden ', ir, flags=re.M)
    ir = re.sub(r'^(@\S+ = (?:weak_odr|linkonce_odr|weak|linkonce) )(?!hidden|protected)',
                r'\1hidden ', ir, flags=re.M)
    run(CC, '-c', '-emit-llvm', '-x', 'ir', '-', '-o', obj, input=ir.encode(), capture_output=True)


jobs = min(os.cpu_count() or 2, 8)


def parallel(fn, items):
    with concurrent.futures.ThreadPoolExecutor(max_workers=jobs) as pool:
        list(pool.map(fn, items))


def library(original, excluded=()):
    folder = WORK / original.stem
    folder.mkdir()
    run(AR, 'x', original, cwd=folder)
    # wasi-libc has two distinct archive members named errno.c.obj. Preserve both.
    members = run(AR, 't', original, capture_output=True).stdout.decode().splitlines()
    for name in set(members):
        for occurrence in range(1, members.count(name)):
            duplicate = folder / f'duplicate-{occurrence}-{name}'
            duplicate.mkdir()
            run(AR, 'xN', occurrence, original, name, cwd=duplicate)
            (duplicate / name).rename(folder / f'{occurrence}-{name}')
            duplicate.rmdir()
    for name in excluded:
        (folder / name).unlink()
    objects = sorted(folder.iterdir())
    parallel(private_weak_symbols, objects)
    archive = WORK / original.name
    run(AR, 'rcs', archive, *objects)
    return archive


runtimes = [library(WLIB / 'eh' / LTO / name) for name in ['libc++.a', 'libc++abi.a', 'libunwind.a']]
libc = library(WLIB / LTO / 'libc.a', ['dlmalloc.c.obj', 'atexit.c.obj', '__init_tls.c.obj'])
# Recompile TLS metadata as PIC. This single-worker plugin cannot use the
# optional GOT stack-bound globals that Csound's loader does not provide.
tls = (LIBC / 'libc-top-half/musl/src/env/__init_tls.c').read_text()
start = tls.index('static inline struct stack_bounds get_stack_bounds()')
end = tls.index('\n#endif', tls.index('\n\treturn bounds;', start))
tls = tls[:start] + '''static inline struct stack_bounds get_stack_bounds() {
  return (struct stack_bounds){0, 0};
}
''' + tls[end:]
(WORK / 'tls.c').write_text(tls)
libc_includes = ['libc-top-half/musl/src/include', 'libc-top-half/musl/src/internal',
    'libc-top-half/musl/arch/wasm32', 'libc-top-half/musl/arch/generic',
    'libc-top-half/headers/private', 'libc-bottom-half/cloudlibc/src']
run(CC, '-O2', '-flto', '-fPIC', *['-I' + str(LIBC / p) for p in libc_includes],
    '-c', WORK / 'tls.c', '-o', WORK / 'tls.o')
run(AR, 'r', libc, WORK / 'tls.o')
runtimes += [libc, SDK / 'lib/clang/23/lib/wasm32-unknown-wasip1/libclang_rt.builtins.a']

excluded = {'InetWvIn', 'InetWvOut', 'Mutex', 'RtAudio', 'RtMidi', 'Messager',
    'RtWvIn', 'RtWvOut', 'Socket', 'TcpClient', 'TcpServer', 'Thread', 'UdpSocket'}
sources = sorted(p for p in (STK / 'src').glob('*.cpp') if p.stem not in excluded)
sources += [ROOT / 'plugins/stk/stkops.cpp', ROOT / 'plugins/stk/runtime.cpp', ROOT / 'plugins/stk/filesystem.cpp']
objects = WORK / 'objects'
objects.mkdir()


def compile(source):
    obj = objects / (source.stem + '.o')
    run(CXX, '-std=c++17', *FLAGS, '-D__LITTLE_ENDIAN__', '-DUSE_DOUBLE=1', *INCLUDES,
        '-c', source, '-o', obj)
    private_weak_symbols(obj)


parallel(compile, sources)
OUTPUT = ROOT / 'public/plugins/stk'
OUTPUT.mkdir(parents=True, exist_ok=True)
LINK = ['-shared', '-flto', '-fPIC', '-fwasm-exceptions', '-nostdlib', '-nostartfiles',
    '-Wl,-mllvm,-wasm-enable-eh,-Bsymbolic,--experimental-pic,--no-entry,--import-table,--import-memory,--import-undefined,--strip-all',
    '-Wl,--export=__wasm_call_ctors,--export=csoundModuleInit,--export=csoundModuleInfo,--export=csoundModuleCreate,--export=csoundModuleDestroy',
    '-Wl,-Bstatic,-u,__wasilibc_find_relpath_alloc,--wrap=stat']
run(CXX, *LINK, *sorted(objects.glob('*.o')), *runtimes, '-o', OUTPUT / 'stkops.wasm')

# Verify C++ strings/streams and exception lowering separately from DSP.
compile(ROOT / 'plugins/stk/runtime-probe.cpp')
run(CXX, *LINK, objects / 'runtime-probe.o', objects / 'runtime.o', *runtimes,
    '-o', ROOT / 'tests/plugins/runtime-probe.wasm')

# Keep the ABI probe small and independent from STK/C++ runtime machinery.
probe = WORK / 'abi-probe.o'
run(CXX, '-O2', '-fPIC', '-fno-exceptions', '-fno-rtti', '-mllvm', '-wasm-enable-sjlj',
    '-DUSE_DOUBLE=1', *INCLUDES, '-c', ROOT / 'plugins/stk/abi-probe.cpp', '-o', probe)
run(CXX, *LINK, probe, '-o', ROOT / 'tests/plugins/abi-probe.wasm')

packed = bytearray()
files = []
for wave in sorted((STK / 'rawwaves').glob('*.raw')):
    data = wave.read_bytes()
    files.append(dict(name=wave.name, offset=len(packed), size=len(data)))
    packed.extend(data)
(OUTPUT / 'rawwaves.bin').write_bytes(packed)
(OUTPUT / 'rawwaves.json').write_text(json.dumps({'version': '5.0.1', 'files': files}, indent=2) + '\n')
for name in ['stkops.wasm', 'rawwaves.bin', 'rawwaves.json']:
    file = OUTPUT / name
    print(f'{name}: {file.stat().st_size} bytes, SHA-256 {hashlib.sha256(file.read_bytes()).hexdigest()}')
print('Built STK side module and independent ABI probe. Run npm run build && npm test.')

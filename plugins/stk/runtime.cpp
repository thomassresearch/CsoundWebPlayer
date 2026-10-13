// SPDX-License-Identifier: LGPL-2.1-or-later
// A side module must use Csound's allocator, never a second WASM heap.
#include <cstddef>
#include <cstdint>
#include <cstring>
#include <cstdlib>
extern "C" void* allocByteMem(std::size_t);
extern "C" void freeByteMem(void*);
struct alignas(16) Allocation { void* base; std::size_t size; };
static void* allocate(std::size_t size, std::size_t alignment) {
  if (size > SIZE_MAX - sizeof(Allocation) - alignment) return nullptr;
  void* base = allocByteMem(size + sizeof(Allocation) + alignment);
  if (!base) return nullptr;
  auto address = (reinterpret_cast<std::uintptr_t>(base) + sizeof(Allocation) + alignment - 1) & ~std::uintptr_t(alignment - 1);
  auto* header = reinterpret_cast<Allocation*>(address) - 1;
  header->base = base; header->size = size;
  return reinterpret_cast<void*>(address);
}
extern "C" void free(void* ptr) { if (ptr) freeByteMem((static_cast<Allocation*>(ptr) - 1)->base); }
extern "C" void* calloc(std::size_t count, std::size_t size) {
  if (size && count > SIZE_MAX / size) return nullptr;
  void* ptr = malloc(count * size);
  if (ptr) std::memset(ptr, 0, count * size);
  return ptr;
}
extern "C" void* realloc(void* ptr, std::size_t size) {
  if (!ptr) return malloc(size);
  if (!size) { free(ptr); return nullptr; }
  void* next = malloc(size);
  if (!next) return nullptr;
  const auto oldSize = (static_cast<Allocation*>(ptr) - 1)->size;
  std::memcpy(next, ptr, oldSize < size ? oldSize : size);
  free(ptr); return next;
}
// Each playback owns and terminates its entire WASM instance. Instrument
// destructors run via Csound deinit; process-global C++ teardown is unnecessary.
extern "C" int __cxa_atexit(void (*)(void*), void*, void*) { return 0; }

extern "C" void* malloc(std::size_t size) { return allocate(size, 16); }
extern "C" void* __libc_malloc(std::size_t size) { return malloc(size); }
extern "C" void __libc_free(void* ptr) { free(ptr); }
extern "C" void* aligned_alloc(std::size_t alignment, std::size_t size) {
  if (!alignment || (alignment & (alignment - 1))) return nullptr;
  return allocate(size, alignment < 16 ? 16 : alignment);
}

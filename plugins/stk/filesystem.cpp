// SPDX-License-Identifier: LGPL-2.1-or-later
// beta36's path_filestat_get reports success without writing a stat buffer.
// STK asks stat() for raw-wave lengths. Its open-file WASI stat is implemented,
// so resolve that request through a descriptor without changing STK DSP/I/O code.
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <cerrno>
extern "C" int __wrap_stat(const char* path, struct stat* result) {
  const int descriptor = open(path, O_RDONLY);
  if (descriptor < 0) return -1;
  const int status = fstat(descriptor, result);
  const int savedErrno = errno;
  close(descriptor);
  errno = savedErrno;
  return status;
}

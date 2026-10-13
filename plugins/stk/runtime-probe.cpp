// SPDX-License-Identifier: LGPL-2.1-or-later
// Exercise the C++ runtime independently of STK's instrument algorithms.
#include <modload.h>
#include <sstream>
#include <stdexcept>
struct RuntimeProbe : csnd::Plugin<1, 1> {
  int init() {
    try {
      std::ostringstream stream;
      stream << inargs[0];
      throw std::runtime_error(stream.str());
    } catch (const std::exception& error) {
      outargs[0] = std::stod(error.what()) + 1;
    }
    return OK;
  }
};
void csnd::on_load(Csound* csound) {
  csnd::plugin<RuntimeProbe>(csound, "player_runtime_probe", "i", "i", csnd::thread::i);
}

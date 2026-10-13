// SPDX-License-Identifier: LGPL-2.1-or-later
// Minimal C++ plugin gate for @csound/browser 7.0.0-beta36.
#include <modload.h>
struct AbiProbe : csnd::Plugin<1, 1> {
  int init() { outargs[0] = inargs[0] + 1; return OK; }
};
void csnd::on_load(Csound* csound) {
  csnd::plugin<AbiProbe>(csound, "player_abi_probe", "i", "i", csnd::thread::i);
}

// SPDX-License-Identifier: LGPL-2.1-or-later
// Csound 7 adapter for the unmodified STK 5.0.1 instrument implementations.
// Copyright (c) 2005 Michael Gogins; adapter changes: CsoundWebPlayer contributors.
// Derived from the Csound STK wrapper by Michael Gogins (LGPL-2.1-or-later).
// Preserves the native ii + eight optional controller/value pairs interface.
#include <modload.h>
#undef PI
#include <cmath>
#include <exception>
#include "BandedWG.h"
#include "BeeThree.h"
#include "BlowBotl.h"
#include "BlowHole.h"
#include "Bowed.h"
#include "Brass.h"
#include "Clarinet.h"
#include "Drummer.h"
#include "Flute.h"
#include "FMVoices.h"
#include "HevyMetl.h"
#include "Mandolin.h"
#include "ModalBar.h"
#include "Moog.h"
#include "PercFlut.h"
#include "Plucked.h"
#include "Resonate.h"
#include "Rhodey.h"
#include "Saxofony.h"
#include "Shakers.h"
#include "Simple.h"
#include "Sitar.h"
#include "StifKarp.h"
#include "TubeBell.h"
#include "VoicForm.h"
#include "Whistle.h"
#include "Wurley.h"

template<class T, bool HasLowestFrequency = false>
struct StkOpcode : csnd::Plugin<1, 18> {
  T* instrument;
  cs_float previous[16];
  int init() {
    try {
      stk::Stk::setSampleRate(sr());
      if (!instrument) {
        if constexpr (HasLowestFrequency) instrument = new T(10.0);
        else instrument = new T();
      }
      instrument->noteOn(inargs[0], inargs[1]);
      for (auto& value : previous) value = -1;
      return OK;
    } catch (const std::exception& error) {
      return csound->init_error(std::string("STK: ") + error.what());
    }
  }
  int aperf() {
    if (!instrument) return csound->perf_error("STK instrument not initialized", this);
    try {
      for (unsigned i = 0; i < 16; i += 2) {
        const auto controller = inargs[i + 2];
        const auto value = inargs[i + 3];
        if (controller != previous[i] || value != previous[i + 1]) {
          if (controller >= 0 && std::isfinite(controller) && std::isfinite(value))
            instrument->controlChange(static_cast<int>(controller), value);
          previous[i] = controller; previous[i + 1] = value;
        }
      }
      csnd::AudioSig out(this, outargs(0));
      for (auto& sample : out) sample = instrument->tick();
      return OK;
    } catch (const std::exception& error) {
      return csound->perf_error(std::string("STK: ") + error.what(), this);
    }
  }
  int deinit() { delete instrument; instrument = nullptr; return OK; }
};

struct StkVersion : csnd::Plugin<1, 0> {
  int init() { outargs[0] = 50001; return OK; }
};

void csnd::on_load(Csound* csound) {
  csnd::plugin<StkVersion>(csound, "player_stk_version", "i", "", csnd::thread::i);
  stk::Stk::setRawwavePath("/stk/rawwaves/");
  csnd::plugin<StkOpcode<stk::BandedWG>>(csound, "STKBandedWG", "a", "iiJJJJJJJJJJJJJJJJ", csnd::thread::ia);
  csnd::plugin<StkOpcode<stk::BeeThree>>(csound, "STKBeeThree", "a", "iiJJJJJJJJJJJJJJJJ", csnd::thread::ia);
  csnd::plugin<StkOpcode<stk::BlowBotl>>(csound, "STKBlowBotl", "a", "iiJJJJJJJJJJJJJJJJ", csnd::thread::ia);
  csnd::plugin<StkOpcode<stk::BlowHole, true>>(csound, "STKBlowHole", "a", "iiJJJJJJJJJJJJJJJJ", csnd::thread::ia);
  csnd::plugin<StkOpcode<stk::Bowed, true>>(csound, "STKBowed", "a", "iiJJJJJJJJJJJJJJJJ", csnd::thread::ia);
  csnd::plugin<StkOpcode<stk::Brass, true>>(csound, "STKBrass", "a", "iiJJJJJJJJJJJJJJJJ", csnd::thread::ia);
  csnd::plugin<StkOpcode<stk::Clarinet, true>>(csound, "STKClarinet", "a", "iiJJJJJJJJJJJJJJJJ", csnd::thread::ia);
  csnd::plugin<StkOpcode<stk::Drummer>>(csound, "STKDrummer", "a", "iiJJJJJJJJJJJJJJJJ", csnd::thread::ia);
  csnd::plugin<StkOpcode<stk::Flute, true>>(csound, "STKFlute", "a", "iiJJJJJJJJJJJJJJJJ", csnd::thread::ia);
  csnd::plugin<StkOpcode<stk::FMVoices>>(csound, "STKFMVoices", "a", "iiJJJJJJJJJJJJJJJJ", csnd::thread::ia);
  csnd::plugin<StkOpcode<stk::HevyMetl>>(csound, "STKHevyMetl", "a", "iiJJJJJJJJJJJJJJJJ", csnd::thread::ia);
  csnd::plugin<StkOpcode<stk::Mandolin, true>>(csound, "STKMandolin", "a", "iiJJJJJJJJJJJJJJJJ", csnd::thread::ia);
  csnd::plugin<StkOpcode<stk::ModalBar>>(csound, "STKModalBar", "a", "iiJJJJJJJJJJJJJJJJ", csnd::thread::ia);
  csnd::plugin<StkOpcode<stk::Moog>>(csound, "STKMoog", "a", "iiJJJJJJJJJJJJJJJJ", csnd::thread::ia);
  csnd::plugin<StkOpcode<stk::PercFlut>>(csound, "STKPercFlut", "a", "iiJJJJJJJJJJJJJJJJ", csnd::thread::ia);
  csnd::plugin<StkOpcode<stk::Plucked, true>>(csound, "STKPlucked", "a", "iiJJJJJJJJJJJJJJJJ", csnd::thread::ia);
  csnd::plugin<StkOpcode<stk::Resonate>>(csound, "STKResonate", "a", "iiJJJJJJJJJJJJJJJJ", csnd::thread::ia);
  csnd::plugin<StkOpcode<stk::Rhodey>>(csound, "STKRhodey", "a", "iiJJJJJJJJJJJJJJJJ", csnd::thread::ia);
  csnd::plugin<StkOpcode<stk::Saxofony, true>>(csound, "STKSaxofony", "a", "iiJJJJJJJJJJJJJJJJ", csnd::thread::ia);
  csnd::plugin<StkOpcode<stk::Shakers>>(csound, "STKShakers", "a", "iiJJJJJJJJJJJJJJJJ", csnd::thread::ia);
  csnd::plugin<StkOpcode<stk::Simple>>(csound, "STKSimple", "a", "iiJJJJJJJJJJJJJJJJ", csnd::thread::ia);
  csnd::plugin<StkOpcode<stk::Sitar>>(csound, "STKSitar", "a", "iiJJJJJJJJJJJJJJJJ", csnd::thread::ia);
  csnd::plugin<StkOpcode<stk::StifKarp, true>>(csound, "STKStifKarp", "a", "iiJJJJJJJJJJJJJJJJ", csnd::thread::ia);
  csnd::plugin<StkOpcode<stk::TubeBell>>(csound, "STKTubeBell", "a", "iiJJJJJJJJJJJJJJJJ", csnd::thread::ia);
  csnd::plugin<StkOpcode<stk::VoicForm>>(csound, "STKVoicForm", "a", "iiJJJJJJJJJJJJJJJJ", csnd::thread::ia);
  csnd::plugin<StkOpcode<stk::Whistle>>(csound, "STKWhistle", "a", "iiJJJJJJJJJJJJJJJJ", csnd::thread::ia);
  csnd::plugin<StkOpcode<stk::Wurley>>(csound, "STKWurley", "a", "iiJJJJJJJJJJJJJJJJ", csnd::thread::ia);
}

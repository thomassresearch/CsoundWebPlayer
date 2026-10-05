<!--
Performance: Evening at the Lake
Description: Warm instrumental lounge / oriental chillout. 84 BPM, D minor, 4/4, 144 bars; 6:51 arrangement plus reverb tail. World Drumkit tabla tuned to D, quiet shekere and udu, rounded FM bass, moving pads, breath-shaped bamboo flute phrases, high plucked answers, syncopated Analog Drumkit kick/hi-hats and a rhythmic deep FM bass answering the flute and leading the Still water interlude. 0:00 Light on the water; 0:23 The shore awakens; 1:09 Evening conversation; 2:40 Still water; 3:26 Lantern reflections; 4:57 Afterglow; 6:06 Night settles. All lanes use finite arrangements, Repeat off; last four bars have no notes.
Created: 2026-10-04T19:02:23.604Z

This CSD was created with Orchestron.
Design instruments visually and hear ideas take shape.
Build expressive performances with sequencers, arpeggiators, live controls, and flexible audio routing.
Export portable Csound projects for rendering, sharing, and further sound design.

GitHub: https://github.com/thomassresearch/orchestron
-->
<CsoundSynthesizer>
<CsOptions>
-d -W -f -o Evening_at_the_Lake.wav
</CsOptions>
<CsInstruments>
sr = 48000
ksmps = 1
nchnls = 2
0dbfs = 1.0
opcode vcs_mixer_ramp, a, ki
 setksmps 1
 kTarget, iInitial xin
 kValue init iInitial
 kPrevious init iInitial
 kRemaining init 0
 if kTarget != kPrevious then
  kRemaining = 0.02
  kPrevious = kTarget
 endif
 if kRemaining > 0 then
  kValue = kValue + (kTarget - kValue) / max(1, kRemaining * kr)
  kRemaining = max(0, kRemaining - 1 / kr)
 else
  kValue = kTarget
 endif
 aValue interp kValue
 if timeinstk() == 1 then
  aValue = iInitial
 endif
 xout aValue
endop
; Mixer routing: patch, strip and route instruments execute in signal-flow order.
chnset 0.86099375218460061, "__vcs_mixer_strip_441349e1ec2f7fd0aa17267b_gain"
chnset 1, "__vcs_mixer_strip_441349e1ec2f7fd0aa17267b_left"
chnset 0.71999999999999997, "__vcs_mixer_strip_441349e1ec2f7fd0aa17267b_right"
chnset 1, "__vcs_mixer_strip_441349e1ec2f7fd0aa17267b_mute"
chnset 3.9810717055349722, "__vcs_mixer_strip_4a106a9d5ab0bb93b5b43a63_gain"
chnset 1, "__vcs_mixer_strip_4a106a9d5ab0bb93b5b43a63_left"
chnset 0.64999999999999991, "__vcs_mixer_strip_4a106a9d5ab0bb93b5b43a63_right"
chnset 1, "__vcs_mixer_strip_4a106a9d5ab0bb93b5b43a63_mute"
chnset 3.9810717055349722, "__vcs_mixer_strip_aa3ff1224ffaff030ba34d49_gain"
chnset 0.44999999999999996, "__vcs_mixer_strip_aa3ff1224ffaff030ba34d49_left"
chnset 1, "__vcs_mixer_strip_aa3ff1224ffaff030ba34d49_right"
chnset 1, "__vcs_mixer_strip_aa3ff1224ffaff030ba34d49_mute"
chnset 0.036307805477010138, "__vcs_mixer_strip_0f4168490e38b8447e11ba4b_gain"
chnset 0.58999999999999997, "__vcs_mixer_strip_0f4168490e38b8447e11ba4b_left"
chnset 1, "__vcs_mixer_strip_0f4168490e38b8447e11ba4b_right"
chnset 1, "__vcs_mixer_strip_0f4168490e38b8447e11ba4b_mute"
chnset 1.7179083871575882, "__vcs_mixer_strip_3cb8201e7ff1e7777446032e_gain"
chnset 1, "__vcs_mixer_strip_3cb8201e7ff1e7777446032e_left"
chnset 0.69999999999999996, "__vcs_mixer_strip_3cb8201e7ff1e7777446032e_right"
chnset 1, "__vcs_mixer_strip_3cb8201e7ff1e7777446032e_mute"
chnset 0.23173946499684786, "__vcs_mixer_strip_46eea9ab04296184a55bc06f_gain"
chnset 0.63, "__vcs_mixer_strip_46eea9ab04296184a55bc06f_left"
chnset 1, "__vcs_mixer_strip_46eea9ab04296184a55bc06f_right"
chnset 1, "__vcs_mixer_strip_46eea9ab04296184a55bc06f_mute"
chnset 0.93325430079699101, "__vcs_mixer_strip_3f49dbbfe051cb20cc038923_gain"
chnset 0.62, "__vcs_mixer_strip_3f49dbbfe051cb20cc038923_left"
chnset 1, "__vcs_mixer_strip_3f49dbbfe051cb20cc038923_right"
chnset 1, "__vcs_mixer_strip_3f49dbbfe051cb20cc038923_mute"
chnset 1.288249551693134, "__vcs_mixer_strip_7ddd6c416ed77ba1d3a6f7df_gain"
chnset 1, "__vcs_mixer_strip_7ddd6c416ed77ba1d3a6f7df_left"
chnset 1, "__vcs_mixer_strip_7ddd6c416ed77ba1d3a6f7df_right"
chnset 1, "__vcs_mixer_strip_7ddd6c416ed77ba1d3a6f7df_mute"
chnset 1.2302687708123816, "__vcs_mixer_strip_f3ada7f825e2674770019ad7_gain"
chnset 0.34999999999999998, "__vcs_mixer_strip_f3ada7f825e2674770019ad7_left"
chnset 1, "__vcs_mixer_strip_f3ada7f825e2674770019ad7_right"
chnset 1, "__vcs_mixer_strip_f3ada7f825e2674770019ad7_mute"
chnset 1, "__vcs_mixer_strip_3dfabacecb440277db6607f2_gain"
chnset 1, "__vcs_mixer_strip_3dfabacecb440277db6607f2_left"
chnset 1, "__vcs_mixer_strip_3dfabacecb440277db6607f2_right"
chnset 1, "__vcs_mixer_strip_3dfabacecb440277db6607f2_mute"
chnset 0.42657951880159267, "__vcs_mixer_strip_8a13dda037195903e48cf59e_gain"
chnset 1, "__vcs_mixer_strip_8a13dda037195903e48cf59e_left"
chnset 0.69999999999999996, "__vcs_mixer_strip_8a13dda037195903e48cf59e_right"
chnset 1, "__vcs_mixer_strip_8a13dda037195903e48cf59e_mute"
chnset 0.41209751909733022, "__vcs_mixer_strip_b5c7638620f2f38a657a5790_gain"
chnset 1, "__vcs_mixer_strip_b5c7638620f2f38a657a5790_left"
chnset 1, "__vcs_mixer_strip_b5c7638620f2f38a657a5790_right"
chnset 1, "__vcs_mixer_strip_b5c7638620f2f38a657a5790_mute"
chnset 0.045708818961487492, "__vcs_mixer_route_334b35121bad0416655bccd0_gain"
chnset 1, "__vcs_mixer_route_334b35121bad0416655bccd0_post"
chnset 1, "__vcs_mixer_route_334b35121bad0416655bccd0_pan"
chnset 0.045708818961487492, "__vcs_mixer_route_9852bcdf7243db9da79a8cb2_gain"
chnset 1, "__vcs_mixer_route_9852bcdf7243db9da79a8cb2_post"
chnset 1, "__vcs_mixer_route_9852bcdf7243db9da79a8cb2_pan"
chnset 0.051286138399136483, "__vcs_mixer_route_8fdf67403472c3555b9be5b9_gain"
chnset 1, "__vcs_mixer_route_8fdf67403472c3555b9be5b9_post"
chnset 1, "__vcs_mixer_route_8fdf67403472c3555b9be5b9_pan"
chnset 0.051286138399136483, "__vcs_mixer_route_edefa2b6871f43d450574498_gain"
chnset 1, "__vcs_mixer_route_edefa2b6871f43d450574498_post"
chnset 1, "__vcs_mixer_route_edefa2b6871f43d450574498_pan"
chnset 1.9952623149688795, "__vcs_mixer_route_28d7409044f61a9babc6f76a_gain"
chnset 1, "__vcs_mixer_route_28d7409044f61a9babc6f76a_post"
chnset 1, "__vcs_mixer_route_28d7409044f61a9babc6f76a_pan"
chnset 1.9952623149688795, "__vcs_mixer_route_8e42d9d022595393af85b98a_gain"
chnset 1, "__vcs_mixer_route_8e42d9d022595393af85b98a_post"
chnset 1, "__vcs_mixer_route_8e42d9d022595393af85b98a_pan"
chnset 1.9952623149688795, "__vcs_mixer_route_864af0857d070bba182aa405_gain"
chnset 1, "__vcs_mixer_route_864af0857d070bba182aa405_post"
chnset 1, "__vcs_mixer_route_864af0857d070bba182aa405_pan"
chnset 1.9952623149688795, "__vcs_mixer_route_3e71ab60a92d838ade92af9f_gain"
chnset 1, "__vcs_mixer_route_3e71ab60a92d838ade92af9f_post"
chnset 1, "__vcs_mixer_route_3e71ab60a92d838ade92af9f_pan"
chnset 1.0232929922807541, "__vcs_mixer_route_f42e958655aea34c5e7bf1ba_gain"
chnset 1, "__vcs_mixer_route_f42e958655aea34c5e7bf1ba_post"
chnset 1, "__vcs_mixer_route_f42e958655aea34c5e7bf1ba_pan"
chnset 1.0232929922807541, "__vcs_mixer_route_d1f48e62aac948eeba2ed211_gain"
chnset 1, "__vcs_mixer_route_d1f48e62aac948eeba2ed211_post"
chnset 1, "__vcs_mixer_route_d1f48e62aac948eeba2ed211_pan"
chnset 1, "__vcs_mixer_route_6b238c3fba5466c7714745c4_gain"
chnset 1, "__vcs_mixer_route_6b238c3fba5466c7714745c4_post"
chnset 1, "__vcs_mixer_route_6b238c3fba5466c7714745c4_pan"
chnset 1, "__vcs_mixer_route_51eda1176c661be0a8ae9a11_gain"
chnset 1, "__vcs_mixer_route_51eda1176c661be0a8ae9a11_post"
chnset 1, "__vcs_mixer_route_51eda1176c661be0a8ae9a11_pan"
chnset 1, "__vcs_mixer_route_6f45bd678a917ba89ab6e883_gain"
chnset 1, "__vcs_mixer_route_6f45bd678a917ba89ab6e883_post"
chnset 1, "__vcs_mixer_route_6f45bd678a917ba89ab6e883_pan"
chnset 1, "__vcs_mixer_route_6195504a3465540ad4787796_gain"
chnset 1, "__vcs_mixer_route_6195504a3465540ad4787796_post"
chnset 1, "__vcs_mixer_route_6195504a3465540ad4787796_pan"
chnset 1, "__vcs_mixer_route_68c2746e4371822e1b4c1884_gain"
chnset 1, "__vcs_mixer_route_68c2746e4371822e1b4c1884_post"
chnset 1, "__vcs_mixer_route_68c2746e4371822e1b4c1884_pan"
chnset 1, "__vcs_mixer_route_ed07f842c17c8b083d47c2b3_gain"
chnset 1, "__vcs_mixer_route_ed07f842c17c8b083d47c2b3_post"
chnset 1, "__vcs_mixer_route_ed07f842c17c8b083d47c2b3_pan"
chnset 1, "__vcs_mixer_route_d237f24a11a081d366091dee_gain"
chnset 1, "__vcs_mixer_route_d237f24a11a081d366091dee_post"
chnset 1, "__vcs_mixer_route_d237f24a11a081d366091dee_pan"
chnset 1, "__vcs_mixer_route_8766f536523ea341e60d63e1_gain"
chnset 1, "__vcs_mixer_route_8766f536523ea341e60d63e1_post"
chnset 1, "__vcs_mixer_route_8766f536523ea341e60d63e1_pan"
chnset 1, "__vcs_mixer_route_f9b538142d2689eb900196a3_gain"
chnset 1, "__vcs_mixer_route_f9b538142d2689eb900196a3_post"
chnset 1, "__vcs_mixer_route_f9b538142d2689eb900196a3_pan"
chnset 1, "__vcs_mixer_route_aba950b4b2baf41ea4e813b0_gain"
chnset 1, "__vcs_mixer_route_aba950b4b2baf41ea4e813b0_post"
chnset 1, "__vcs_mixer_route_aba950b4b2baf41ea4e813b0_pan"
chnset 1, "__vcs_mixer_route_3e557becd0eabf090c081432_gain"
chnset 1, "__vcs_mixer_route_3e557becd0eabf090c081432_post"
chnset 1, "__vcs_mixer_route_3e557becd0eabf090c081432_pan"
chnset 1, "__vcs_mixer_route_3dee88387e437350b1be6e95_gain"
chnset 1, "__vcs_mixer_route_3dee88387e437350b1be6e95_post"
chnset 1, "__vcs_mixer_route_3dee88387e437350b1be6e95_pan"
chnset 1, "__vcs_mixer_route_854afb009e2e9af5179d5afa_gain"
chnset 1, "__vcs_mixer_route_854afb009e2e9af5179d5afa_post"
chnset 1, "__vcs_mixer_route_854afb009e2e9af5179d5afa_pan"
chnset 1, "__vcs_mixer_route_5312ab1db1364b7114087655_gain"
chnset 1, "__vcs_mixer_route_5312ab1db1364b7114087655_post"
chnset 1, "__vcs_mixer_route_5312ab1db1364b7114087655_pan"
chnset 1, "__vcs_mixer_route_48b5ffdbe47af58ca33d1c73_gain"
chnset 1, "__vcs_mixer_route_48b5ffdbe47af58ca33d1c73_post"
chnset 1, "__vcs_mixer_route_48b5ffdbe47af58ca33d1c73_pan"
chnset 1, "__vcs_mixer_route_d4d76238fa7760fe13826b79_gain"
chnset 1, "__vcs_mixer_route_d4d76238fa7760fe13826b79_post"
chnset 1, "__vcs_mixer_route_d4d76238fa7760fe13826b79_pan"
chnset 1, "__vcs_mixer_route_846651823f147ba95d571066_gain"
chnset 1, "__vcs_mixer_route_846651823f147ba95d571066_post"
chnset 1, "__vcs_mixer_route_846651823f147ba95d571066_pan"
chnset 1, "__vcs_mixer_route_c40d3da012728a4738783bc3_gain"
chnset 1, "__vcs_mixer_route_c40d3da012728a4738783bc3_post"
chnset 1, "__vcs_mixer_route_c40d3da012728a4738783bc3_pan"
chnset 1, "__vcs_mixer_route_001b8523e96093dfdd96167b_gain"
chnset 1, "__vcs_mixer_route_001b8523e96093dfdd96167b_post"
chnset 1, "__vcs_mixer_route_001b8523e96093dfdd96167b_pan"
chnset 1, "__vcs_mixer_route_91b7fa7493a136a4571bf3c7_gain"
chnset 1, "__vcs_mixer_route_91b7fa7493a136a4571bf3c7_post"
chnset 1, "__vcs_mixer_route_91b7fa7493a136a4571bf3c7_pan"
chnset 1, "__vcs_mixer_route_644d521ff7197fa5c509cf76_gain"
chnset 1, "__vcs_mixer_route_644d521ff7197fa5c509cf76_post"
chnset 1, "__vcs_mixer_route_644d521ff7197fa5c509cf76_pan"
chnset 1, "__vcs_mixer_route_f6d37bf7cfa4b13a3ddd8f40_gain"
chnset 1, "__vcs_mixer_route_f6d37bf7cfa4b13a3ddd8f40_post"
chnset 1, "__vcs_mixer_route_f6d37bf7cfa4b13a3ddd8f40_pan"
chnset 1, "__vcs_mixer_route_7bbd41ec2904ad84226625c0_gain"
chnset 1, "__vcs_mixer_route_7bbd41ec2904ad84226625c0_post"
chnset 1, "__vcs_mixer_route_7bbd41ec2904ad84226625c0_pan"
chnset 1, "__vcs_mixer_route_5742bc708fe612c618f19d29_gain"
chnset 1, "__vcs_mixer_route_5742bc708fe612c618f19d29_post"
chnset 1, "__vcs_mixer_route_5742bc708fe612c618f19d29_pan"
chnset 1, "__vcs_mixer_route_911f25026ebc9b6c9f559498_gain"
chnset 1, "__vcs_mixer_route_911f25026ebc9b6c9f559498_post"
chnset 1, "__vcs_mixer_route_911f25026ebc9b6c9f559498_pan"
chnset 1, "__vcs_mixer_route_e7fc9d0d42e9d7c339422ff2_gain"
chnset 1, "__vcs_mixer_route_e7fc9d0d42e9d7c339422ff2_post"
chnset 1, "__vcs_mixer_route_e7fc9d0d42e9d7c339422ff2_pan"
chnset 1.2161860006463681, "__vcs_mixer_route_b82e7c2597515b9db7be31ff_gain"
chnset 1, "__vcs_mixer_route_b82e7c2597515b9db7be31ff_post"
chnset 1, "__vcs_mixer_route_b82e7c2597515b9db7be31ff_pan"
chnset 1.2161860006463681, "__vcs_mixer_route_87d81c3ce84f64aa9d8f3ee1_gain"
chnset 1, "__vcs_mixer_route_87d81c3ce84f64aa9d8f3ee1_post"
chnset 1, "__vcs_mixer_route_87d81c3ce84f64aa9d8f3ee1_pan"
chnset 0.47315125896148047, "__vcs_mixer_route_71036d044ac2938742761e85_gain"
chnset 0, "__vcs_mixer_route_71036d044ac2938742761e85_post"
chnset 1, "__vcs_mixer_route_71036d044ac2938742761e85_pan"
chnset 0.47315125896148047, "__vcs_mixer_route_5b92c8041242c3cf11d36d20_gain"
chnset 0, "__vcs_mixer_route_5b92c8041242c3cf11d36d20_post"
chnset 1, "__vcs_mixer_route_5b92c8041242c3cf11d36d20_pan"
chnset 1, "__vcs_mixer_route_ebe4d00ca1570557781dee01_gain"
chnset 1, "__vcs_mixer_route_ebe4d00ca1570557781dee01_post"
chnset 1, "__vcs_mixer_route_ebe4d00ca1570557781dee01_pan"
chnset 1, "__vcs_mixer_route_208ab40923d5bf707587f01b_gain"
chnset 1, "__vcs_mixer_route_208ab40923d5bf707587f01b_post"
chnset 1, "__vcs_mixer_route_208ab40923d5bf707587f01b_pan"
opcode vcs_legato_adsr, k, kiiiki
 kGate, iAttack, iDecay, iSustain, kRelease, iDelay xin
 kAge init 0
 kValue init 0
 kPreviousGate init 0
 kReleaseAge init 0
 kReleaseValue init 0
 if kGate > 0 then
  kTime = kAge - iDelay
  if kTime < 0 then
   kValue = 0
  elseif kTime < iAttack then
   kValue = kTime / max(iAttack, 1 / kr)
  elseif kTime < iAttack + iDecay then
   kValue = 1 + (iSustain - 1) * (kTime - iAttack) / max(iDecay, 1 / kr)
  else
   kValue = iSustain
  endif
  kAge = kAge + 1 / kr
 else
  if kPreviousGate > 0 then
   kReleaseAge = 0
   kReleaseValue = kValue
  endif
  kValue = kReleaseValue * max(0, 1 - kReleaseAge / max(kRelease, 1 / kr))
  kReleaseAge = kReleaseAge + 1 / kr
 endif
 kPreviousGate = kGate
 xout kValue
endop

; Preserve the preceding output sample across phrase reinitialization. This is
; an amplitude declick only, never a pitch ramp or a delayed note decision.
opcode vcs_legato_declick, a, ak
 setksmps 1
 aInput, kPhrase xin
 kPreviousPhrase init 0
 kLast init 0
 kHeld init 0
 kBlend init 1
 if kPhrase != kPreviousPhrase then
  kHeld = kLast
  kBlend = 0
  kPreviousPhrase = kPhrase
 endif
 aOutput = aInput * kBlend + kHeld * (1 - kBlend)
 kLast downsamp aOutput
 kBlend = min(1, kBlend + 1 / (0.002 * sr))
 xout aOutput
endop
gi_vcs_legato_3cb8201e7ff1e7777446_serial init 0
gk_vcs_legato_3cb8201e7ff1e7777446_winner init 0
gk_vcs_legato_3cb8201e7ff1e7777446_note init 69
gk_vcs_legato_3cb8201e7ff1e7777446_velocity init 0
gk_vcs_legato_3cb8201e7ff1e7777446_channel init 1
gk_vcs_legato_3cb8201e7ff1e7777446_seen init 0
gk_vcs_legato_3cb8201e7ff1e7777446_cancelled init 0
; legato note-event collector (not subject to synthesis maxalloc)
instr 1
 gi_vcs_legato_3cb8201e7ff1e7777446_serial = gi_vcs_legato_3cb8201e7ff1e7777446_serial + 1
 iSerial = gi_vcs_legato_3cb8201e7ff1e7777446_serial
 iNote = p4
 iVelocity = p5
 iChannel = p7
 iSerial = (p6 > 0 ? p6 : iSerial)
 xtratim ksmps / sr
 kReleased release
 if iSerial <= gk_vcs_legato_3cb8201e7ff1e7777446_cancelled then
  turnoff
 elseif kReleased == 0 && iSerial > gk_vcs_legato_3cb8201e7ff1e7777446_winner then
  gk_vcs_legato_3cb8201e7ff1e7777446_winner = iSerial
  gk_vcs_legato_3cb8201e7ff1e7777446_note = iNote
  gk_vcs_legato_3cb8201e7ff1e7777446_velocity = iVelocity
  gk_vcs_legato_3cb8201e7ff1e7777446_channel = iChannel
 endif
endin
gk_vcs_score_cc[] init 2048
instr 9000
  iindex = int(p4)
  gk_vcs_score_cc[iindex] = p5
endin
chnset 0.65000000000000002, "__vcs_perf_782d4d8b615cf42ede164828d9386da021527a17490b7d72f6c271df29364688"
chnset 0.29999999999999999, "__vcs_perf_bdd7c5123d1ed90e6c3a92ded7f6ae160fc4124c2a5605723e5290bb310f82cf"
chnset 450, "__vcs_perf_4dedf9c13b243946c65ab85bee1c7493d4b2633d15d0bf14a2bcc2d6847248a7"
connect "vcs_mix_33dc83ab9904e9526f7091d6", "left", "vcs_mix_d69e2b115c3aedc5f5e51463", "p_360f84035942243c6a36537a"
connect "vcs_mix_33dc83ab9904e9526f7091d6", "right", "vcs_mix_d69e2b115c3aedc5f5e51463", "p_27042f4e6eca7d0b2a7ee402"
chnset 1.0615624844096603, "__vcs_perf_0ec185921cb5c255a658441c802d486d8bfd39f5e5571d622a347114eb92e20b"
chnset 1.1000000000000001, "__vcs_perf_45676c8c74957ce6dcf03f3662030dac16c6b70b140a3ef1ed1821972bf9cb72"
chnset 1.1224620000000001, "__vcs_perf_69e11288955167830908671e0ce083a28e776f5c0a6c0fc4df9b04cd895c996a"
chnset 1, "__vcs_perf_8a5d2c52e48a722950fbda7552346656e9cb4a8e6c599e0c7a01253891607df9"
connect "vcs_mix_85a517c35205acb139539cdd", "left", "vcs_mix_68efd0b9e86ce8e312e3a8da", "p_360f84035942243c6a36537a"
connect "vcs_mix_85a517c35205acb139539cdd", "right", "vcs_mix_68efd0b9e86ce8e312e3a8da", "p_27042f4e6eca7d0b2a7ee402"
chnset 0.79832720002159474, "__vcs_perf_59d55bddfa1bfc821b415febad32a4748244172f37327401f02348a44e4351c6"
chnset 0.84999999999999998, "__vcs_perf_def6c039d52d8bcf0bb35b95aa50a61265ecf41a2388d851bcc7bd4b1e10f6d6"
chnset 1, "__vcs_perf_f09960c8447cb83458f5b365768a8d92531653099a548372142580ff3561ef06"
chnset 1, "__vcs_perf_2a4c6afcdacaee86290c2dbe94b9fdbb1bfed40b0cd4a668d7358692efa550bd"
connect "vcs_mix_4f6210d5bde508179baccbeb", "left", "vcs_mix_914d9301e781f3dcf181f4dc", "p_360f84035942243c6a36537a"
connect "vcs_mix_4f6210d5bde508179baccbeb", "right", "vcs_mix_914d9301e781f3dcf181f4dc", "p_27042f4e6eca7d0b2a7ee402"
chnset 0.059999999999999998, "__vcs_perf_19092f4117a3a762efc39f20cc72687f9b421833ed99e1782f81c403cc341613"
chnset 4, "__vcs_perf_a858a0b68b8f10e48515157057f334e7ff4d5fd5b578b878309d622207e73a4d"
chnset 1200, "__vcs_perf_04bc27c6c8abf872a67d7e16fd74515710214d06df77916866ac592c67b93300"
connect "vcs_mix_b14e1cc299c27e165a2e5389", "left", "vcs_mix_f348da23406ebc2d79b6271c", "p_360f84035942243c6a36537a"
connect "vcs_mix_b14e1cc299c27e165a2e5389", "right", "vcs_mix_f348da23406ebc2d79b6271c", "p_27042f4e6eca7d0b2a7ee402"
chnset 0.017429443585786714, "__vcs_perf_419d19b9301f6cd37fe6437c18b454a8cd850f0e4c026ca43a59076174037292"
chnset 0.79053306793794031, "__vcs_perf_da02565283a709e25008500fddae7438da45ecc68201eeb9203764dd9f6b5312"
chnset 0.489351149706792, "__vcs_perf_c8c9d807e634704718747ee13f7034c4d7288f1c19ee6dae49a2925db15db808"
chnset 6521.9583404743935, "__vcs_perf_2467ca5c11656e858fcb302382f53d92c5ec1007600e31da1906cd29bea550a7"
chnset 14.210362740908749, "__vcs_perf_c972226d87711b434f11239861d2fc5db4f2a0b3d17292ca70890d2496476c09"
; node:e6dcfbd9-11c0-47e7-8f30-890a8ce6ebdb opcode:maxalloc
maxalloc "vcs_mix_b9e4b05138bfb5ddfecff5e1", 1
connect "vcs_mix_b9e4b05138bfb5ddfecff5e1", "left", "vcs_mix_8a252033ed35df6ff80fdae8", "p_360f84035942243c6a36537a"
connect "vcs_mix_b9e4b05138bfb5ddfecff5e1", "right", "vcs_mix_8a252033ed35df6ff80fdae8", "p_27042f4e6eca7d0b2a7ee402"
chnset 0.29999999999999999, "__vcs_perf_ca473e4e52534b6dc2d5c4d2c9fddd7309c1bded1a2114b6a51cb8f639b595ca"
chnset 1.5, "__vcs_perf_daf951eff610eb7354d6e2f07cec2435411b0c8557f4f71587f1438503e1a5e6"
chnset 1.2, "__vcs_perf_4c6d62dfc3e562af77a1b9a07f1f404aece2477c63ef9001e09a5538924f3a44"
connect "vcs_mix_faa8117c6205d8c6212d364e", "left", "vcs_mix_355b6360dd6ea9c11c218c76", "p_360f84035942243c6a36537a"
connect "vcs_mix_faa8117c6205d8c6212d364e", "right", "vcs_mix_355b6360dd6ea9c11c218c76", "p_27042f4e6eca7d0b2a7ee402"
chnset 0.87453124674968419, "__vcs_perf_1eb743bf517146d093e59ee2716f27332b459c494176ff923e074b645ecfce68"
chnset 10966.384046284616, "__vcs_perf_386b6ddecd351dff0b9738eec01e6a2f415c8238a8eec7540fff8a537a253e46"
connect "vcs_mix_e5754ae0550fd56f3a1ded4c", "left", "vcs_mix_da8e3d2eea8eb8d6425ad5b1", "p_360f84035942243c6a36537a"
connect "vcs_mix_e5754ae0550fd56f3a1ded4c", "right", "vcs_mix_da8e3d2eea8eb8d6425ad5b1", "p_27042f4e6eca7d0b2a7ee402"
chnset 0.6965026986686127, "__vcs_perf_7faf0e849d46e2a327e7f058d85c7c0225325a21d8c2a819422c8efb30496c88"
chnset 0.91107070002791524, "__vcs_perf_56b45d48dead768473626afce0bf0507735f9ee4c45ecc4b82a178bbe3c68fa4"
chnset 0.45974264945834875, "__vcs_perf_932e40ba633477b042890f2b76859e52ae4fe727fac0fbaf555bff941f1082c2"
chnset 2, "__vcs_perf_3d097b13a94bf6db0c340c0f1c872c8a4549fd50d1aeeb4d11847da95e6a4d16"
connect "vcs_mix_caa9365fb2ae13c5c8ad9c85", "left", "vcs_mix_f587fd864dbe76f7dac981dc", "p_360f84035942243c6a36537a"
connect "vcs_mix_caa9365fb2ae13c5c8ad9c85", "right", "vcs_mix_f587fd864dbe76f7dac981dc", "p_27042f4e6eca7d0b2a7ee402"
chnset 0.08635113653726878, "__vcs_perf_9ac561317070a37f53c49ba8859982731a037efc22e90103cc588bf6a0c04a3f"
chnset 0.0010139478688009397, "__vcs_perf_f2ec1062ad819859d30cc9a8bd8648573b8b9f2178cc07c2f810cbf14b7a00b2"
chnset 0.40000000000000002, "__vcs_perf_308be2935838ad0aa90819b0dd065f1c1e0a3f6602af3bb79809196c47fa4f00"
chnset 3.4848554227993511, "__vcs_perf_31960884bdb2ace7f9a8fae38c82e843ff3aadeb15214830aa46d19efec79e09"
chnset 0.025238404346356453, "__vcs_perf_04e75d3404990e0f0dca04dc816040d831996bd4878a50524b0b8aa7c721f87c"
chnset 0.58129018867039117, "__vcs_perf_e13fa71b4f055727d44f53385a8cde4359f2b0bcdb679cf6a486eb4a3308a0fa"
chnset 148.44110529602295, "__vcs_perf_c865ddff97009774c981b6593f6944fa2690a99ffcc3d7a7916b27d6ef145cc2"
connect "vcs_mix_3918eda86d2c2ed296d58117", "left", "vcs_mix_96e0b5694cd28ee67ade387c", "p_360f84035942243c6a36537a"
connect "vcs_mix_3918eda86d2c2ed296d58117", "right", "vcs_mix_96e0b5694cd28ee67ade387c", "p_27042f4e6eca7d0b2a7ee402"
chnset 0.42597691614212174, "__vcs_perf_75c01f0adbae5363164157d78fd1b13d8388f3aa50bb328deaa4e0f5d8675512"
chnset 0.28366267883684487, "__vcs_perf_e626205d0dab17ddce60175ff8771cd76249f69e7649dc4971ce84813f31e6be"
chnset 0.01, "__vcs_perf_b45b6efdb6d2eba30756772bc26f215f56c0efb9ff4ff5226498944ecd79645f"
chnset 0.90000000000000002, "__vcs_perf_cf9752ff2f7492a2de5c436915d2c265371f5d7808cc9d11f6aab0bb4bf9ac31"
chnset 0.10000000000000001, "__vcs_perf_0d03e8cb287bef611320f71decfe72c2c7cccecf924900c5fa2a102d21d03ff2"
connect "vcs_mix_8482f8ec65e97e7d3c4d3726", "left", "vcs_mix_535811e68a3541943826dded", "p_360f84035942243c6a36537a"
connect "vcs_mix_8482f8ec65e97e7d3c4d3726", "right", "vcs_mix_535811e68a3541943826dded", "p_27042f4e6eca7d0b2a7ee402"
chnset 0.001, "__vcs_perf_353313329f9bdca1a0aa9a7e884e3ddbd0373093d9ad8d00466215d9c3ca2471"
chnset 2.5, "__vcs_perf_5c1c83ad9e6331efcb2fbe74a5e8a2929c7329f37f20e37e2cd35bbf5214ece0"
chnset 1.8, "__vcs_perf_48bbdf68c6c28c3afce30da6f1351760f668905471d02a0214681e3a59cede78"
chnset 2.4140000000000001, "__vcs_perf_564d7d1484f5d0b9c03c8825c297c6c16803665ed4b2e13ec84d0d3f66fb2866"
chnset 0.56617307270603334, "__vcs_perf_6a492379db5f7b68ec7c0ca732cead39799213e38b651a3f136cd5871a4d3b47"
chnset 0.25, "__vcs_perf_5e62a55c47c512ebd85ea7178f1c8c43f031cbaec372a7b8e7e9339554fe7c85"
chnset 6500, "__vcs_perf_63202823571153b6865cbb10a18fbde255f781d1fb4eb08e44f1601c4c6ec785"
connect "vcs_mix_18ba7050edb445fce6bb79bc", "left", "vcs_mix_40b8a595fab8ccc56ec50add", "p_360f84035942243c6a36537a"
connect "vcs_mix_18ba7050edb445fce6bb79bc", "right", "vcs_mix_40b8a595fab8ccc56ec50add", "p_27042f4e6eca7d0b2a7ee402"
connect "vcs_mix_63254fa67083d5eed1f09ece", "__vcs_direct_e0ee8bb50685e05fa0f47ed0_left", "vcs_mix_0644eeee2942927583ef32ed", "p_2336acbd28828ab05deafe52"
connect "vcs_mix_63254fa67083d5eed1f09ece", "__vcs_direct_e0ee8bb50685e05fa0f47ed0_right", "vcs_mix_0644eeee2942927583ef32ed", "p_2a250433534f9aea9d512171"
connect "vcs_mix_68efd0b9e86ce8e312e3a8da", "pre_p_360f84035942243c6a36537a", "vcs_mix_699d28714553035e50f8bf69", "pre"
connect "vcs_mix_68efd0b9e86ce8e312e3a8da", "post_p_360f84035942243c6a36537a", "vcs_mix_699d28714553035e50f8bf69", "post"
connect "vcs_mix_699d28714553035e50f8bf69", "out", "vcs_mix_e5754ae0550fd56f3a1ded4c", "left"
connect "vcs_mix_68efd0b9e86ce8e312e3a8da", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_1c6f687f8118d8facd17d51d", "pre"
connect "vcs_mix_68efd0b9e86ce8e312e3a8da", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_1c6f687f8118d8facd17d51d", "post"
connect "vcs_mix_1c6f687f8118d8facd17d51d", "out", "vcs_mix_e5754ae0550fd56f3a1ded4c", "right"
connect "vcs_mix_914d9301e781f3dcf181f4dc", "pre_p_360f84035942243c6a36537a", "vcs_mix_4adf153f332072628f80ae09", "pre"
connect "vcs_mix_914d9301e781f3dcf181f4dc", "post_p_360f84035942243c6a36537a", "vcs_mix_4adf153f332072628f80ae09", "post"
connect "vcs_mix_4adf153f332072628f80ae09", "out", "vcs_mix_e5754ae0550fd56f3a1ded4c", "left"
connect "vcs_mix_914d9301e781f3dcf181f4dc", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_adf30f6e60f3d749f0bb2f2a", "pre"
connect "vcs_mix_914d9301e781f3dcf181f4dc", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_adf30f6e60f3d749f0bb2f2a", "post"
connect "vcs_mix_adf30f6e60f3d749f0bb2f2a", "out", "vcs_mix_e5754ae0550fd56f3a1ded4c", "right"
connect "vcs_mix_f348da23406ebc2d79b6271c", "pre_p_360f84035942243c6a36537a", "vcs_mix_0352598b7fff5e754666bf70", "pre"
connect "vcs_mix_f348da23406ebc2d79b6271c", "post_p_360f84035942243c6a36537a", "vcs_mix_0352598b7fff5e754666bf70", "post"
connect "vcs_mix_0352598b7fff5e754666bf70", "out", "vcs_mix_e5754ae0550fd56f3a1ded4c", "left"
connect "vcs_mix_f348da23406ebc2d79b6271c", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_f23432bd2d0d3585437362ff", "pre"
connect "vcs_mix_f348da23406ebc2d79b6271c", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_f23432bd2d0d3585437362ff", "post"
connect "vcs_mix_f23432bd2d0d3585437362ff", "out", "vcs_mix_e5754ae0550fd56f3a1ded4c", "right"
connect "vcs_mix_8a252033ed35df6ff80fdae8", "pre_p_360f84035942243c6a36537a", "vcs_mix_0872a7b5755929fb6ea089e7", "pre"
connect "vcs_mix_8a252033ed35df6ff80fdae8", "post_p_360f84035942243c6a36537a", "vcs_mix_0872a7b5755929fb6ea089e7", "post"
connect "vcs_mix_0872a7b5755929fb6ea089e7", "out", "vcs_mix_e5754ae0550fd56f3a1ded4c", "left"
connect "vcs_mix_8a252033ed35df6ff80fdae8", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_561ae13d445b8c84ae1cc360", "pre"
connect "vcs_mix_8a252033ed35df6ff80fdae8", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_561ae13d445b8c84ae1cc360", "post"
connect "vcs_mix_561ae13d445b8c84ae1cc360", "out", "vcs_mix_e5754ae0550fd56f3a1ded4c", "right"
connect "vcs_mix_355b6360dd6ea9c11c218c76", "pre_p_360f84035942243c6a36537a", "vcs_mix_393a90c10640ad1bdfe09ceb", "pre"
connect "vcs_mix_355b6360dd6ea9c11c218c76", "post_p_360f84035942243c6a36537a", "vcs_mix_393a90c10640ad1bdfe09ceb", "post"
connect "vcs_mix_393a90c10640ad1bdfe09ceb", "out", "vcs_mix_e5754ae0550fd56f3a1ded4c", "left"
connect "vcs_mix_355b6360dd6ea9c11c218c76", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_49612b0801a0f58df343c303", "pre"
connect "vcs_mix_355b6360dd6ea9c11c218c76", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_49612b0801a0f58df343c303", "post"
connect "vcs_mix_49612b0801a0f58df343c303", "out", "vcs_mix_e5754ae0550fd56f3a1ded4c", "right"
connect "vcs_mix_68efd0b9e86ce8e312e3a8da", "pre_p_360f84035942243c6a36537a", "vcs_mix_86bfa165a6215f0498963efe", "pre"
connect "vcs_mix_68efd0b9e86ce8e312e3a8da", "post_p_360f84035942243c6a36537a", "vcs_mix_86bfa165a6215f0498963efe", "post"
connect "vcs_mix_86bfa165a6215f0498963efe", "out", "vcs_mix_8482f8ec65e97e7d3c4d3726", "left"
connect "vcs_mix_68efd0b9e86ce8e312e3a8da", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_9e703910b4c1025b52f6df38", "pre"
connect "vcs_mix_68efd0b9e86ce8e312e3a8da", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_9e703910b4c1025b52f6df38", "post"
connect "vcs_mix_9e703910b4c1025b52f6df38", "out", "vcs_mix_8482f8ec65e97e7d3c4d3726", "right"
connect "vcs_mix_914d9301e781f3dcf181f4dc", "pre_p_360f84035942243c6a36537a", "vcs_mix_6294152f41f3fc895b35204b", "pre"
connect "vcs_mix_914d9301e781f3dcf181f4dc", "post_p_360f84035942243c6a36537a", "vcs_mix_6294152f41f3fc895b35204b", "post"
connect "vcs_mix_6294152f41f3fc895b35204b", "out", "vcs_mix_8482f8ec65e97e7d3c4d3726", "left"
connect "vcs_mix_914d9301e781f3dcf181f4dc", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_506d253eaf55718eb31375cb", "pre"
connect "vcs_mix_914d9301e781f3dcf181f4dc", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_506d253eaf55718eb31375cb", "post"
connect "vcs_mix_506d253eaf55718eb31375cb", "out", "vcs_mix_8482f8ec65e97e7d3c4d3726", "right"
connect "vcs_mix_d69e2b115c3aedc5f5e51463", "pre_p_360f84035942243c6a36537a", "vcs_mix_301a93aa3312006348b9ea12", "pre"
connect "vcs_mix_d69e2b115c3aedc5f5e51463", "post_p_360f84035942243c6a36537a", "vcs_mix_301a93aa3312006348b9ea12", "post"
connect "vcs_mix_301a93aa3312006348b9ea12", "out", "vcs_mix_8482f8ec65e97e7d3c4d3726", "left"
connect "vcs_mix_d69e2b115c3aedc5f5e51463", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_0032e2e3319930056b07eb25", "pre"
connect "vcs_mix_d69e2b115c3aedc5f5e51463", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_0032e2e3319930056b07eb25", "post"
connect "vcs_mix_0032e2e3319930056b07eb25", "out", "vcs_mix_8482f8ec65e97e7d3c4d3726", "right"
connect "vcs_mix_f348da23406ebc2d79b6271c", "pre_p_360f84035942243c6a36537a", "vcs_mix_bccf0e5c5f489ff82f73cc5b", "pre"
connect "vcs_mix_f348da23406ebc2d79b6271c", "post_p_360f84035942243c6a36537a", "vcs_mix_bccf0e5c5f489ff82f73cc5b", "post"
connect "vcs_mix_bccf0e5c5f489ff82f73cc5b", "out", "vcs_mix_8482f8ec65e97e7d3c4d3726", "left"
connect "vcs_mix_f348da23406ebc2d79b6271c", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_8da853e02cccd528eaba5232", "pre"
connect "vcs_mix_f348da23406ebc2d79b6271c", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_8da853e02cccd528eaba5232", "post"
connect "vcs_mix_8da853e02cccd528eaba5232", "out", "vcs_mix_8482f8ec65e97e7d3c4d3726", "right"
connect "vcs_mix_8a252033ed35df6ff80fdae8", "pre_p_360f84035942243c6a36537a", "vcs_mix_25f6c7daae142a0cbe29db75", "pre"
connect "vcs_mix_8a252033ed35df6ff80fdae8", "post_p_360f84035942243c6a36537a", "vcs_mix_25f6c7daae142a0cbe29db75", "post"
connect "vcs_mix_25f6c7daae142a0cbe29db75", "out", "vcs_mix_8482f8ec65e97e7d3c4d3726", "left"
connect "vcs_mix_8a252033ed35df6ff80fdae8", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_bf53b9747780c99dc37fbb2b", "pre"
connect "vcs_mix_8a252033ed35df6ff80fdae8", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_bf53b9747780c99dc37fbb2b", "post"
connect "vcs_mix_bf53b9747780c99dc37fbb2b", "out", "vcs_mix_8482f8ec65e97e7d3c4d3726", "right"
connect "vcs_mix_355b6360dd6ea9c11c218c76", "pre_p_360f84035942243c6a36537a", "vcs_mix_705a66a5c883fa84c8c3e743", "pre"
connect "vcs_mix_355b6360dd6ea9c11c218c76", "post_p_360f84035942243c6a36537a", "vcs_mix_705a66a5c883fa84c8c3e743", "post"
connect "vcs_mix_705a66a5c883fa84c8c3e743", "out", "vcs_mix_8482f8ec65e97e7d3c4d3726", "left"
connect "vcs_mix_355b6360dd6ea9c11c218c76", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_e07fde8f049ac6fa56cfa043", "pre"
connect "vcs_mix_355b6360dd6ea9c11c218c76", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_e07fde8f049ac6fa56cfa043", "post"
connect "vcs_mix_e07fde8f049ac6fa56cfa043", "out", "vcs_mix_8482f8ec65e97e7d3c4d3726", "right"
connect "vcs_mix_da8e3d2eea8eb8d6425ad5b1", "pre_p_360f84035942243c6a36537a", "vcs_mix_698bb24a9b4c166b1a39bf1d", "pre"
connect "vcs_mix_da8e3d2eea8eb8d6425ad5b1", "post_p_360f84035942243c6a36537a", "vcs_mix_698bb24a9b4c166b1a39bf1d", "post"
connect "vcs_mix_698bb24a9b4c166b1a39bf1d", "out", "vcs_mix_8482f8ec65e97e7d3c4d3726", "left"
connect "vcs_mix_da8e3d2eea8eb8d6425ad5b1", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_87d6c91af4d597030edfa13e", "pre"
connect "vcs_mix_da8e3d2eea8eb8d6425ad5b1", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_87d6c91af4d597030edfa13e", "post"
connect "vcs_mix_87d6c91af4d597030edfa13e", "out", "vcs_mix_8482f8ec65e97e7d3c4d3726", "right"
connect "vcs_mix_f587fd864dbe76f7dac981dc", "pre_p_360f84035942243c6a36537a", "vcs_mix_b356bf50412fc2f8c4e70b37", "pre"
connect "vcs_mix_f587fd864dbe76f7dac981dc", "post_p_360f84035942243c6a36537a", "vcs_mix_b356bf50412fc2f8c4e70b37", "post"
connect "vcs_mix_b356bf50412fc2f8c4e70b37", "out", "vcs_mix_8482f8ec65e97e7d3c4d3726", "left"
connect "vcs_mix_f587fd864dbe76f7dac981dc", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_45321574ecb8e72b857ec4e4", "pre"
connect "vcs_mix_f587fd864dbe76f7dac981dc", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_45321574ecb8e72b857ec4e4", "post"
connect "vcs_mix_45321574ecb8e72b857ec4e4", "out", "vcs_mix_8482f8ec65e97e7d3c4d3726", "right"
connect "vcs_mix_96e0b5694cd28ee67ade387c", "pre_p_360f84035942243c6a36537a", "vcs_mix_8840e65ed8726a0d8b23838e", "pre"
connect "vcs_mix_96e0b5694cd28ee67ade387c", "post_p_360f84035942243c6a36537a", "vcs_mix_8840e65ed8726a0d8b23838e", "post"
connect "vcs_mix_8840e65ed8726a0d8b23838e", "out", "vcs_mix_8482f8ec65e97e7d3c4d3726", "left"
connect "vcs_mix_96e0b5694cd28ee67ade387c", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_3664308a194251e5bdeaea08", "pre"
connect "vcs_mix_96e0b5694cd28ee67ade387c", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_3664308a194251e5bdeaea08", "post"
connect "vcs_mix_3664308a194251e5bdeaea08", "out", "vcs_mix_8482f8ec65e97e7d3c4d3726", "right"
connect "vcs_mix_da8e3d2eea8eb8d6425ad5b1", "pre_p_360f84035942243c6a36537a", "vcs_mix_df5e556e9c21d685012dc5db", "pre"
connect "vcs_mix_da8e3d2eea8eb8d6425ad5b1", "post_p_360f84035942243c6a36537a", "vcs_mix_df5e556e9c21d685012dc5db", "post"
connect "vcs_mix_df5e556e9c21d685012dc5db", "out", "vcs_mix_8482f8ec65e97e7d3c4d3726", "left"
connect "vcs_mix_da8e3d2eea8eb8d6425ad5b1", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_b4b5860e66f45cd0ae5858b5", "pre"
connect "vcs_mix_da8e3d2eea8eb8d6425ad5b1", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_b4b5860e66f45cd0ae5858b5", "post"
connect "vcs_mix_b4b5860e66f45cd0ae5858b5", "out", "vcs_mix_8482f8ec65e97e7d3c4d3726", "right"
connect "vcs_mix_535811e68a3541943826dded", "pre_p_360f84035942243c6a36537a", "vcs_mix_7f62f617985e81498e730e67", "pre"
connect "vcs_mix_535811e68a3541943826dded", "post_p_360f84035942243c6a36537a", "vcs_mix_7f62f617985e81498e730e67", "post"
connect "vcs_mix_7f62f617985e81498e730e67", "out", "vcs_mix_63254fa67083d5eed1f09ece", "left"
connect "vcs_mix_535811e68a3541943826dded", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_e0458282ab57ed18292517d9", "pre"
connect "vcs_mix_535811e68a3541943826dded", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_e0458282ab57ed18292517d9", "post"
connect "vcs_mix_e0458282ab57ed18292517d9", "out", "vcs_mix_63254fa67083d5eed1f09ece", "right"
connect "vcs_mix_40b8a595fab8ccc56ec50add", "pre_p_360f84035942243c6a36537a", "vcs_mix_500991ca962627be74662ff8", "pre"
connect "vcs_mix_40b8a595fab8ccc56ec50add", "post_p_360f84035942243c6a36537a", "vcs_mix_500991ca962627be74662ff8", "post"
connect "vcs_mix_500991ca962627be74662ff8", "out", "vcs_mix_63254fa67083d5eed1f09ece", "left"
connect "vcs_mix_40b8a595fab8ccc56ec50add", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_c8a2c2acfcbc28a74a3f043b", "pre"
connect "vcs_mix_40b8a595fab8ccc56ec50add", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_c8a2c2acfcbc28a74a3f043b", "post"
connect "vcs_mix_c8a2c2acfcbc28a74a3f043b", "out", "vcs_mix_63254fa67083d5eed1f09ece", "right"
connect "vcs_mix_40b8a595fab8ccc56ec50add", "pre_p_360f84035942243c6a36537a", "vcs_mix_b03b717295d0d818ccdae332", "pre"
connect "vcs_mix_40b8a595fab8ccc56ec50add", "post_p_360f84035942243c6a36537a", "vcs_mix_b03b717295d0d818ccdae332", "post"
connect "vcs_mix_b03b717295d0d818ccdae332", "out", "vcs_mix_8482f8ec65e97e7d3c4d3726", "left"
connect "vcs_mix_40b8a595fab8ccc56ec50add", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_2441ada24812360a07cf8f31", "pre"
connect "vcs_mix_40b8a595fab8ccc56ec50add", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_2441ada24812360a07cf8f31", "post"
connect "vcs_mix_2441ada24812360a07cf8f31", "out", "vcs_mix_8482f8ec65e97e7d3c4d3726", "right"
connect "vcs_mix_40b8a595fab8ccc56ec50add", "pre_p_360f84035942243c6a36537a", "vcs_mix_2c5f950c388d634080fcec19", "pre"
connect "vcs_mix_40b8a595fab8ccc56ec50add", "post_p_360f84035942243c6a36537a", "vcs_mix_2c5f950c388d634080fcec19", "post"
connect "vcs_mix_2c5f950c388d634080fcec19", "out", "vcs_mix_e5754ae0550fd56f3a1ded4c", "left"
connect "vcs_mix_40b8a595fab8ccc56ec50add", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_deddb2703d8bf520becc6265", "pre"
connect "vcs_mix_40b8a595fab8ccc56ec50add", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_deddb2703d8bf520becc6265", "post"
connect "vcs_mix_deddb2703d8bf520becc6265", "out", "vcs_mix_e5754ae0550fd56f3a1ded4c", "right"
connect "vcs_mix_96e0b5694cd28ee67ade387c", "pre_p_360f84035942243c6a36537a", "vcs_mix_34392e53d49c41d8a6187f12", "pre"
connect "vcs_mix_96e0b5694cd28ee67ade387c", "post_p_360f84035942243c6a36537a", "vcs_mix_34392e53d49c41d8a6187f12", "post"
connect "vcs_mix_34392e53d49c41d8a6187f12", "out", "vcs_mix_e5754ae0550fd56f3a1ded4c", "left"
connect "vcs_mix_96e0b5694cd28ee67ade387c", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_cb6253c8c426dbc1e7d4bd2e", "pre"
connect "vcs_mix_96e0b5694cd28ee67ade387c", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_cb6253c8c426dbc1e7d4bd2e", "post"
connect "vcs_mix_cb6253c8c426dbc1e7d4bd2e", "out", "vcs_mix_e5754ae0550fd56f3a1ded4c", "right"
connect "vcs_mix_0644eeee2942927583ef32ed", "pre_p_2336acbd28828ab05deafe52", "vcs_mix_ec8b1641891924a3e102560a", "pre"
connect "vcs_mix_0644eeee2942927583ef32ed", "post_p_2336acbd28828ab05deafe52", "vcs_mix_ec8b1641891924a3e102560a", "post"
connect "vcs_mix_ec8b1641891924a3e102560a", "out", "vcs_mix_9cea1be1f8255375a6cf7b93", "left"
connect "vcs_mix_0644eeee2942927583ef32ed", "pre_p_2a250433534f9aea9d512171", "vcs_mix_5f16b779ade2ce91f307ff35", "pre"
connect "vcs_mix_0644eeee2942927583ef32ed", "post_p_2a250433534f9aea9d512171", "vcs_mix_5f16b779ade2ce91f307ff35", "post"
connect "vcs_mix_5f16b779ade2ce91f307ff35", "out", "vcs_mix_9cea1be1f8255375a6cf7b93", "right"
; Continuous patches and mixer stages start with alwayson; note instruments start from MIDI/score events.
alwayson "vcs_mix_b9e4b05138bfb5ddfecff5e1"
alwayson "vcs_mix_40b8a595fab8ccc56ec50add"
alwayson "vcs_mix_c8a2c2acfcbc28a74a3f043b"
alwayson "vcs_mix_500991ca962627be74662ff8"
alwayson "vcs_mix_deddb2703d8bf520becc6265"
alwayson "vcs_mix_b03b717295d0d818ccdae332"
alwayson "vcs_mix_2441ada24812360a07cf8f31"
alwayson "vcs_mix_2c5f950c388d634080fcec19"
alwayson "vcs_mix_f587fd864dbe76f7dac981dc"
alwayson "vcs_mix_45321574ecb8e72b857ec4e4"
alwayson "vcs_mix_b356bf50412fc2f8c4e70b37"
alwayson "vcs_mix_d69e2b115c3aedc5f5e51463"
alwayson "vcs_mix_301a93aa3312006348b9ea12"
alwayson "vcs_mix_0032e2e3319930056b07eb25"
alwayson "vcs_mix_96e0b5694cd28ee67ade387c"
alwayson "vcs_mix_34392e53d49c41d8a6187f12"
alwayson "vcs_mix_cb6253c8c426dbc1e7d4bd2e"
alwayson "vcs_mix_8840e65ed8726a0d8b23838e"
alwayson "vcs_mix_3664308a194251e5bdeaea08"
alwayson "vcs_mix_355b6360dd6ea9c11c218c76"
alwayson "vcs_mix_49612b0801a0f58df343c303"
alwayson "vcs_mix_705a66a5c883fa84c8c3e743"
alwayson "vcs_mix_393a90c10640ad1bdfe09ceb"
alwayson "vcs_mix_e07fde8f049ac6fa56cfa043"
alwayson "vcs_mix_914d9301e781f3dcf181f4dc"
alwayson "vcs_mix_adf30f6e60f3d749f0bb2f2a"
alwayson "vcs_mix_506d253eaf55718eb31375cb"
alwayson "vcs_mix_6294152f41f3fc895b35204b"
alwayson "vcs_mix_4adf153f332072628f80ae09"
alwayson "vcs_mix_68efd0b9e86ce8e312e3a8da"
alwayson "vcs_mix_1c6f687f8118d8facd17d51d"
alwayson "vcs_mix_86bfa165a6215f0498963efe"
alwayson "vcs_mix_699d28714553035e50f8bf69"
alwayson "vcs_mix_9e703910b4c1025b52f6df38"
alwayson "vcs_mix_8a252033ed35df6ff80fdae8"
alwayson "vcs_mix_561ae13d445b8c84ae1cc360"
alwayson "vcs_mix_bf53b9747780c99dc37fbb2b"
alwayson "vcs_mix_25f6c7daae142a0cbe29db75"
alwayson "vcs_mix_0872a7b5755929fb6ea089e7"
alwayson "vcs_mix_f348da23406ebc2d79b6271c"
alwayson "vcs_mix_0352598b7fff5e754666bf70"
alwayson "vcs_mix_bccf0e5c5f489ff82f73cc5b"
alwayson "vcs_mix_8da853e02cccd528eaba5232"
alwayson "vcs_mix_f23432bd2d0d3585437362ff"
alwayson "vcs_mix_e5754ae0550fd56f3a1ded4c"
alwayson "vcs_mix_da8e3d2eea8eb8d6425ad5b1"
alwayson "vcs_mix_b4b5860e66f45cd0ae5858b5"
alwayson "vcs_mix_df5e556e9c21d685012dc5db"
alwayson "vcs_mix_698bb24a9b4c166b1a39bf1d"
alwayson "vcs_mix_87d6c91af4d597030edfa13e"
alwayson "vcs_mix_8482f8ec65e97e7d3c4d3726"
alwayson "vcs_mix_535811e68a3541943826dded"
alwayson "vcs_mix_e0458282ab57ed18292517d9"
alwayson "vcs_mix_7f62f617985e81498e730e67"
alwayson "vcs_mix_63254fa67083d5eed1f09ece"
alwayson "vcs_mix_0644eeee2942927583ef32ed"
alwayson "vcs_mix_ec8b1641891924a3e102560a"
alwayson "vcs_mix_5f16b779ade2ce91f307ff35"
alwayson "vcs_mix_9cea1be1f8255375a6cf7b93"
; mixer stage patch:4643f76a-a275-463b-b07f-6fbf23b3ed85
; patch:fac3faea-086f-448c-9581-8692bc30cca1 name:EBM DW — Glass Bell channel:6 always_on:false
; instance:4643f76a-a275-463b-b07f-6fbf23b3ed85 csound:vcs_mix_18ba7050edb445fce6bb79bc
; description: Cold glass bell with an inharmonic two-operator FM strike, decaying brightness and dark echoes/reverb. Suggested MIDI 48–88. Velocity-sensitive; settings apply to new notes. Motion rates are Hz; echoes are fixed time. Route Stereo Output through the mixer to Master.
; trigger: MIDI channel 6 / score notes; score instrument number: 2
instr vcs_mix_18ba7050edb445fce6bb79bc
 i_vcs_internal_score_note_p4 = p4
 i_vcs_internal_score_velocity_p5 = p5
 i_ctl_attack_iout_5 chnget "__vcs_perf_353313329f9bdca1a0aa9a7e884e3ddbd0373093d9ad8d00466215d9c3ca2471"
 i_ctl_decay_iout_9 chnget "__vcs_perf_5c1c83ad9e6331efcb2fbe74a5e8a2929c7329f37f20e37e2cd35bbf5214ece0"
 i_ctl_fm_depth_iout_8 chnget "__vcs_perf_48bbdf68c6c28c3afce30da6f1351760f668905471d02a0214681e3a59cede78"
 i_ctl_ratio_iout_7 chnget "__vcs_perf_564d7d1484f5d0b9c03c8825c297c6c16803665ed4b2e13ec84d0d3f66fb2866"
 i_ctl_release_iout_6 chnget "__vcs_perf_6a492379db5f7b68ec7c0ca732cead39799213e38b651a3f136cd5871a4d3b47"
 i_ctl_space_iout_11 chnget "__vcs_perf_5e62a55c47c512ebd85ea7178f1c8c43f031cbaec372a7b8e7e9339554fe7c85"
 i_ctl_tone_iout_10 chnget "__vcs_perf_63202823571153b6865cbb10a18fbde255f781d1fb4eb08e44f1601c4c6ec785"
 ; node:env_sustain_const opcode:const_i
 i_env_sustain_const_iout_4 = 0
 ; node:fm_gain opcode:const_k
 k_fm_gain_kout_3 = 0.18
 ; node:pitch_cpsmidi opcode:cpsmidi
 i_pitch_cpsmidi_kfreq_1 = cpsmidinn(p4)
 ; node:velocity_scale_const opcode:const_i
 i_velocity_scale_const_iout_2 = 1
 ; node:fm_decay_envelope opcode:linseg
 k_fm_decay_envelope_kenv_5 linseg 1, i_ctl_decay_iout_9, 0
 ; node:effect_tail opcode:xtratim
 xtratim (i_ctl_release_iout_6 + 8.8)
 ; node:audio_ctl_space_iout opcode:k_to_a
 a_audio_ctl_space_iout_aout_12 interp i_ctl_space_iout_11
 ; node:amp_madsr opcode:madsr
 k_amp_madsr_kenv_1 madsr i_ctl_attack_iout_5, i_ctl_decay_iout_9, i_env_sustain_const_iout_4, i_ctl_release_iout_6, 0, -1
 ; node:velocity_ampmidi opcode:ampmidi
 i_velocity_ampmidi_iamp_3 = ((p5 / 128) * (i_velocity_scale_const_iout_2))
 ; node:amp_velocity_envelope opcode:k_mul
 k_amp_velocity_envelope_kout_2 = (i_velocity_ampmidi_iamp_3) * (k_amp_madsr_kenv_1)
 ; node:fm_amp opcode:k_mul
 k_fm_amp_kout_4 = (k_amp_velocity_envelope_kout_2) * (k_fm_gain_kout_3)
 ; node:fm_foscili opcode:foscili
 a_fm_foscili_asig_1 foscili k_fm_amp_kout_4, i_pitch_cpsmidi_kfreq_1, 1, i_ctl_ratio_iout_7, (i_ctl_fm_depth_iout_8 * ((.04 + (.96 * k_fm_decay_envelope_kenv_5)))), 1, 0
 ; node:voice_filter opcode:moogladder2
 a_voice_filter_aout_4 moogladder2 a_fm_foscili_asig_1, i_ctl_tone_iout_10, 0.18
 ; node:dc_filter opcode:butterhp
 a_dc_filter_aout_5 butterhp a_voice_filter_aout_4, 22, 0
 ; node:output_pan2 opcode:pan2
 a_output_pan2_aleft_2, a_output_pan2_aright_3 pan2 a_dc_filter_aout_5, 0.5, 0
 ; node:echo_left_1 opcode:delay
 a_echo_left_1_aout_6 delay a_output_pan2_aleft_2, 0.27, 0
 ; node:echo_left_2 opcode:delay
 a_echo_left_2_aout_8 delay a_output_pan2_aleft_2, 0.54, 0
 ; node:echo_left_3 opcode:delay
 a_echo_left_3_aout_10 delay a_output_pan2_aleft_2, 0.81, 0
 ; node:echo_right_1 opcode:delay
 a_echo_right_1_aout_18 delay a_output_pan2_aright_3, 0.36, 0
 ; node:echo_right_2 opcode:delay
 a_echo_right_2_aout_20 delay a_output_pan2_aright_3, 0.72, 0
 ; node:echo_right_3 opcode:delay
 a_echo_right_3_aout_22 delay a_output_pan2_aright_3, 1.08, 0
 ; node:echo_tone_left_1 opcode:butterlp
 a_echo_tone_left_1_aout_7 butterlp a_echo_left_1_aout_6, 2900, 0
 ; node:echo_tone_left_2 opcode:butterlp
 a_echo_tone_left_2_aout_9 butterlp a_echo_left_2_aout_8, 2400, 0
 ; node:echo_tone_left_3 opcode:butterlp
 a_echo_tone_left_3_aout_11 butterlp a_echo_left_3_aout_10, 1900, 0
 ; node:echo_tone_right_1 opcode:butterlp
 a_echo_tone_right_1_aout_19 butterlp a_echo_right_1_aout_18, 2900, 0
 ; node:echo_tone_right_2 opcode:butterlp
 a_echo_tone_right_2_aout_21 butterlp a_echo_right_2_aout_20, 2400, 0
 ; node:echo_tone_right_3 opcode:butterlp
 a_echo_tone_right_3_aout_23 butterlp a_echo_right_3_aout_22, 1900, 0
 ; node:echo_mix_left opcode:mix2
 a_echo_mix_left_aout_13 = ((a_output_pan2_aleft_2 + (a_audio_ctl_space_iout_aout_12 * ((((.5 * a_echo_tone_left_1_aout_7) + (.25 * a_echo_tone_left_2_aout_9)) + (.125 * a_echo_tone_left_3_aout_11)))))) + (0)
 ; node:echo_mix_right opcode:mix2
 a_echo_mix_right_aout_24 = ((a_output_pan2_aright_3 + (a_audio_ctl_space_iout_aout_12 * ((((.5 * a_echo_tone_right_1_aout_19) + (.25 * a_echo_tone_right_2_aout_21)) + (.125 * a_echo_tone_right_3_aout_23)))))) + (0)
 ; node:room_predelay_left opcode:delay
 a_room_predelay_left_aout_14 delay a_echo_mix_left_aout_13, 0.017, 0
 ; node:room_predelay_right opcode:delay
 a_room_predelay_right_aout_25 delay a_echo_mix_right_aout_24, 0.029, 0
 ; node:room_left opcode:reverb2
 a_room_left_aout_15 reverb2 a_room_predelay_left_aout_14, 2.2, 0.45, 0
 ; node:room_right opcode:reverb2
 a_room_right_aout_26 reverb2 a_room_predelay_right_aout_25, 2.0460000000000003, 0.45, 0
 ; node:room_mix_left opcode:mix2
 a_room_mix_left_aout_16 = ((a_echo_mix_left_aout_13 + (a_audio_ctl_space_iout_aout_12 * a_room_left_aout_15))) + (0)
 ; node:room_mix_right opcode:mix2
 a_room_mix_right_aout_27 = ((a_echo_mix_right_aout_24 + (a_audio_ctl_space_iout_aout_12 * a_room_right_aout_26))) + (0)
 ; node:final_level_left opcode:mix2
 a_final_level_left_aout_17 = ((a_room_mix_left_aout_16 * 0.65)) + (0)
 ; node:final_level_right opcode:mix2
 a_final_level_right_aout_28 = ((a_room_mix_right_aout_27 * 0.65)) + (0)
 ; node:output_left opcode:outleta
 outleta "left", a_final_level_left_aout_17
 ; node:output_right opcode:outleta
 outleta "right", a_final_level_right_aout_28
endin

; mixer stage patch:analog-drums
; patch:979b006c-d2a5-47c1-836c-9f3f30453ddf name:Analog Drumkit channel:12 always_on:false
; instance:analog-drums csound:vcs_mix_caa9365fb2ae13c5c8ad9c85
; description: Five velocity-sensitive analog synthesis voices selected by MIDI notnum through Switch. MIDI notenum 35: Bass drum (pitch-swept sine + click); 36: Bass drum distorted (saturated sine + click); 46: Hi-hat open (700 ms); 42: Hi-hat closed (85 ms); 38: Snare (two sine resonances + filtered noise). Hats use six inharmonic square oscillators plus noise. One-shot decays survive short MIDI note-offs. Silent default; stereo output; no samples. GM bass-drum slot 36 is used for the distorted variation.
; trigger: MIDI channel 12 / score notes; score instrument number: 3
instr vcs_mix_caa9365fb2ae13c5c8ad9c85
 i_vcs_internal_score_note_p4 = p4
 i_vcs_internal_score_velocity_p5 = p5
 ; node:note opcode:notnum
 i_note_inote_1 = p4
 ; node:velocity_scale opcode:const_i
 i_velocity_scale_iout_2 = 1
 ; node:velocity opcode:ampmidi
 i_velocity_iamp_3 = ((p5 / 128) * (i_velocity_scale_iout_2))
 ; node:kit opcode:Switch
 if (i_note_inote_1) == 35.0 then
   ; case:bass_drum Bass drum
   i_9da04da0_dadc_4020_888b_dec37077e0bc_iout_6 chnget "__vcs_perf_7faf0e849d46e2a327e7f058d85c7c0225325a21d8c2a819422c8efb30496c88"
   ; node:bass_drum_click_env opcode:expseg
   k_bass_drum_click_env_kenv_4 expseg 1, 0.012, 0.0001
   ; node:bass_drum_decay opcode:expseg
   k_bass_drum_decay_kenv_2 expseg 1, 0.129, 0.16, 0.301, 0.0001
   ; node:bass_drum_gate opcode:linseg
   k_bass_drum_gate_kenv_1 linseg 0, 0.001, 1, 0.421, 1, 0.008, 0
   ; node:bass_drum_pitch opcode:expseg
   k_bass_drum_pitch_kenv_3 expseg 165, 0.026, 57, 0.2, 46
   ; node:bass_drum_tail opcode:xtratim
   xtratim 0.455
   ; node:bass_drum_click opcode:noise
   a_bass_drum_click_aout_4 noise (k_bass_drum_click_env_kenv_4 * 0.14), 0
   ; node:bass_drum_amplitude opcode:upsamp
   a_bass_drum_amplitude_aout_7 upsamp (((k_bass_drum_decay_kenv_2 * k_bass_drum_gate_kenv_1) * i_velocity_iamp_3) * 0.52)
   ; node:bass_drum_tone opcode:oscili
   a_bass_drum_tone_asig_3 oscili 1, (k_bass_drum_pitch_kenv_3 * i_9da04da0_dadc_4020_888b_dec37077e0bc_iout_6), -1
   ; node:bass_drum_click_filter opcode:butterbp
   a_bass_drum_click_filter_aout_5 butterbp a_bass_drum_click_aout_4, 2200, 2500, 0
   ; node:bass_drum_mix opcode:mix2
   a_bass_drum_mix_aout_6 = (a_bass_drum_tone_asig_3) + (a_bass_drum_click_filter_aout_5)
   ; node:bass_drum_pan opcode:pan2
   a_bass_drum_pan_aleft_8, a_bass_drum_pan_aright_9 pan2 (a_bass_drum_mix_aout_6 * a_bass_drum_amplitude_aout_7), 0.5, 0
   a_kit_left_1 = a_bass_drum_pan_aleft_8
   a_kit_right_2 = a_bass_drum_pan_aright_9
 elseif (i_note_inote_1) == 36.0 then
   ; case:bass_drum_distorted Bass drum distorted
   i_1a9be505_b7fe_4d12_a783_60346b810c6a_iout_7 chnget "__vcs_perf_56b45d48dead768473626afce0bf0507735f9ee4c45ecc4b82a178bbe3c68fa4"
   i_460f9e29_fa38_4055_8f7b_c9f7d7ebe7aa_iout_5 chnget "__vcs_perf_932e40ba633477b042890f2b76859e52ae4fe727fac0fbaf555bff941f1082c2"
   ; node:bass_drum_distorted_click_env opcode:expseg
   k_bass_drum_distorted_click_env_kenv_8 expseg 1, 0.012, 0.0001
   ; node:bass_drum_distorted_decay opcode:expseg
   k_bass_drum_distorted_decay_kenv_6 expseg 1, 0.108, 0.16, 0.252, 0.0001
   ; node:bass_drum_distorted_gate opcode:linseg
   k_bass_drum_distorted_gate_kenv_5 linseg 0, 0.001, 1, 0.351, 1, 0.008, 0
   ; node:bass_drum_distorted_pitch opcode:expseg
   k_bass_drum_distorted_pitch_kenv_7 expseg 190, 0.026, 57, 0.2, 49
   ; node:bass_drum_distorted_tail opcode:xtratim
   xtratim 0.385
   i_ddccf62d_f9e6_49f3_a0dc_f438c7783415_iout_4 chnget "__vcs_perf_3d097b13a94bf6db0c340c0f1c872c8a4549fd50d1aeeb4d11847da95e6a4d16"
   ; node:bass_drum_distorted_click opcode:noise
   a_bass_drum_distorted_click_aout_11 noise (k_bass_drum_distorted_click_env_kenv_8 * 0.14), 0
   ; node:bass_drum_distorted_amplitude opcode:upsamp
   a_bass_drum_distorted_amplitude_aout_17 upsamp (((k_bass_drum_distorted_decay_kenv_6 * k_bass_drum_distorted_gate_kenv_5) * i_velocity_iamp_3) * 0.47)
   ; node:bass_drum_distorted_tone opcode:oscili
   a_bass_drum_distorted_tone_asig_10 oscili 1, (k_bass_drum_distorted_pitch_kenv_7 * i_1a9be505_b7fe_4d12_a783_60346b810c6a_iout_7), -1
   ; node:bass_drum_distorted_click_filter opcode:butterbp
   a_bass_drum_distorted_click_filter_aout_12 butterbp a_bass_drum_distorted_click_aout_11, 2200, 2500, 0
   ; node:bass_drum_distorted_mix opcode:mix2
   a_bass_drum_distorted_mix_aout_13 = (a_bass_drum_distorted_tone_asig_10) + (a_bass_drum_distorted_click_filter_aout_12)
   ; node:bass_drum_distorted_drive opcode:distort1
   a_bass_drum_distorted_drive_aout_14 distort1 a_bass_drum_distorted_mix_aout_13, i_ddccf62d_f9e6_49f3_a0dc_f438c7783415_iout_4, i_460f9e29_fa38_4055_8f7b_c9f7d7ebe7aa_iout_5, 0, 0, 1
   ; node:bass_drum_distorted_lowpass opcode:butterlp
   a_bass_drum_distorted_lowpass_aout_15 butterlp a_bass_drum_distorted_drive_aout_14, 3800, 0
   ; node:bass_drum_distorted_dc_filter opcode:butterhp
   a_bass_drum_distorted_dc_filter_aout_16 butterhp a_bass_drum_distorted_lowpass_aout_15, 22, 0
   ; node:bass_drum_distorted_pan opcode:pan2
   a_bass_drum_distorted_pan_aleft_18, a_bass_drum_distorted_pan_aright_19 pan2 (a_bass_drum_distorted_dc_filter_aout_16 * a_bass_drum_distorted_amplitude_aout_17), 0.5, 0
   a_kit_left_1 = a_bass_drum_distorted_pan_aleft_18
   a_kit_right_2 = a_bass_drum_distorted_pan_aright_19
 elseif (i_note_inote_1) == 46.0 then
   ; case:hihat_open Hi-hat open
   ; node:hihat_open_air opcode:noise
   a_hihat_open_air_aout_26 noise 0.24, 0
   ; node:hihat_open_decay opcode:expseg
   k_hihat_open_decay_kenv_10 expseg 1, 0.21, 0.16, 0.48999999999999994, 0.0001
   ; node:hihat_open_gate opcode:linseg
   k_hihat_open_gate_kenv_9 linseg 0, 0.001, 1, 0.691, 1, 0.008, 0
   ; node:hihat_open_metal_1 opcode:vco2
   a_hihat_open_metal_1_asig_20 vco2 0.16, 205.3, 2, 0.5, 0.137, 0.5
   ; node:hihat_open_metal_2 opcode:vco2
   a_hihat_open_metal_2_asig_21 vco2 0.16, 304.4, 2, 0.5, 0.274, 0.5
   ; node:hihat_open_metal_3 opcode:vco2
   a_hihat_open_metal_3_asig_22 vco2 0.16, 369.6, 2, 0.5, 0.41100000000000003, 0.5
   ; node:hihat_open_metal_4 opcode:vco2
   a_hihat_open_metal_4_asig_23 vco2 0.16, 522.7, 2, 0.5, 0.548, 0.5
   ; node:hihat_open_metal_5 opcode:vco2
   a_hihat_open_metal_5_asig_24 vco2 0.16, 540.5, 2, 0.5, 0.685, 0.5
   ; node:hihat_open_metal_6 opcode:vco2
   a_hihat_open_metal_6_asig_25 vco2 0.16, 800, 2, 0.5, 0.8220000000000001, 0.5
   ; node:hihat_open_tail opcode:xtratim
   xtratim 0.725
   ; node:hihat_open_amplitude opcode:upsamp
   a_hihat_open_amplitude_aout_29 upsamp (((k_hihat_open_decay_kenv_10 * k_hihat_open_gate_kenv_9) * i_velocity_iamp_3) * 0.75)
   ; node:hihat_open_highpass opcode:butterhp
   a_hihat_open_highpass_aout_27 butterhp ((((((a_hihat_open_metal_1_asig_20 + a_hihat_open_metal_2_asig_21) + a_hihat_open_metal_3_asig_22) + a_hihat_open_metal_4_asig_23) + a_hihat_open_metal_5_asig_24) + a_hihat_open_metal_6_asig_25) + a_hihat_open_air_aout_26), 6500, 0
   ; node:hihat_open_lowpass opcode:butterlp
   a_hihat_open_lowpass_aout_28 butterlp a_hihat_open_highpass_aout_27, 12500, 0
   ; node:hihat_open_pan opcode:pan2
   a_hihat_open_pan_aleft_30, a_hihat_open_pan_aright_31 pan2 (a_hihat_open_lowpass_aout_28 * a_hihat_open_amplitude_aout_29), 0.55, 0
   a_kit_left_1 = a_hihat_open_pan_aleft_30
   a_kit_right_2 = a_hihat_open_pan_aright_31
 elseif (i_note_inote_1) == 42.0 then
   ; case:hihat_closed Hi-hat closed
   ; node:hihat_closed_air opcode:noise
   a_hihat_closed_air_aout_38 noise 0.24, 0
   ; node:hihat_closed_decay opcode:expseg
   k_hihat_closed_decay_kenv_12 expseg 1, 0.025500000000000002, 0.16, 0.0595, 0.0001
   ; node:hihat_closed_gate opcode:linseg
   k_hihat_closed_gate_kenv_11 linseg 0, 0.001, 1, 0.07600000000000001, 1, 0.008, 0
   ; node:hihat_closed_metal_1 opcode:vco2
   a_hihat_closed_metal_1_asig_32 vco2 0.16, 205.3, 2, 0.5, 0.137, 0.5
   ; node:hihat_closed_metal_2 opcode:vco2
   a_hihat_closed_metal_2_asig_33 vco2 0.16, 304.4, 2, 0.5, 0.274, 0.5
   ; node:hihat_closed_metal_3 opcode:vco2
   a_hihat_closed_metal_3_asig_34 vco2 0.16, 369.6, 2, 0.5, 0.41100000000000003, 0.5
   ; node:hihat_closed_metal_4 opcode:vco2
   a_hihat_closed_metal_4_asig_35 vco2 0.16, 522.7, 2, 0.5, 0.548, 0.5
   ; node:hihat_closed_metal_5 opcode:vco2
   a_hihat_closed_metal_5_asig_36 vco2 0.16, 540.5, 2, 0.5, 0.685, 0.5
   ; node:hihat_closed_metal_6 opcode:vco2
   a_hihat_closed_metal_6_asig_37 vco2 0.16, 800, 2, 0.5, 0.8220000000000001, 0.5
   ; node:hihat_closed_tail opcode:xtratim
   xtratim 0.11000000000000001
   ; node:hihat_closed_amplitude opcode:upsamp
   a_hihat_closed_amplitude_aout_41 upsamp (((k_hihat_closed_decay_kenv_12 * k_hihat_closed_gate_kenv_11) * i_velocity_iamp_3) * 0.75)
   ; node:hihat_closed_highpass opcode:butterhp
   a_hihat_closed_highpass_aout_39 butterhp ((((((a_hihat_closed_metal_1_asig_32 + a_hihat_closed_metal_2_asig_33) + a_hihat_closed_metal_3_asig_34) + a_hihat_closed_metal_4_asig_35) + a_hihat_closed_metal_5_asig_36) + a_hihat_closed_metal_6_asig_37) + a_hihat_closed_air_aout_38), 6500, 0
   ; node:hihat_closed_lowpass opcode:butterlp
   a_hihat_closed_lowpass_aout_40 butterlp a_hihat_closed_highpass_aout_39, 12500, 0
   ; node:hihat_closed_pan opcode:pan2
   a_hihat_closed_pan_aleft_42, a_hihat_closed_pan_aright_43 pan2 (a_hihat_closed_lowpass_aout_40 * a_hihat_closed_amplitude_aout_41), 0.55, 0
   a_kit_left_1 = a_hihat_closed_pan_aleft_42
   a_kit_right_2 = a_hihat_closed_pan_aright_43
 elseif (i_note_inote_1) == 38.0 then
   ; case:snare Snare
   ; node:snare_body_decay opcode:expseg
   k_snare_body_decay_kenv_15 expseg 1, 0.1, 0.0001
   ; node:snare_decay opcode:expseg
   k_snare_decay_kenv_14 expseg 1, 0.075, 0.16, 0.175, 0.0001
   ; node:snare_gate opcode:linseg
   k_snare_gate_kenv_13 linseg 0, 0.001, 1, 0.241, 1, 0.008, 0
   ; node:snare_pitch opcode:expseg
   k_snare_pitch_kenv_16 expseg 250, 0.018, 185
   ; node:snare_tail opcode:xtratim
   xtratim 0.275
   ; node:snare_wires opcode:noise
   a_snare_wires_aout_46 noise 1, 0
   ; node:snare_overtone opcode:oscili
   a_snare_overtone_asig_45 oscili (k_snare_body_decay_kenv_15 * 0.28), 330, -1
   ; node:snare_amplitude opcode:upsamp
   a_snare_amplitude_aout_50 upsamp (((k_snare_decay_kenv_14 * k_snare_gate_kenv_13) * i_velocity_iamp_3) * 0.42)
   ; node:snare_body opcode:oscili
   a_snare_body_asig_44 oscili (k_snare_body_decay_kenv_15 * 0.7), k_snare_pitch_kenv_16, -1
   ; node:snare_highpass opcode:butterhp
   a_snare_highpass_aout_47 butterhp a_snare_wires_aout_46, 1100, 0
   ; node:snare_lowpass opcode:butterlp
   a_snare_lowpass_aout_48 butterlp a_snare_highpass_aout_47, 8500, 0
   ; node:snare_mix opcode:mix2
   a_snare_mix_aout_49 = ((a_snare_body_asig_44 + a_snare_overtone_asig_45)) + (a_snare_lowpass_aout_48)
   ; node:snare_pan opcode:pan2
   a_snare_pan_aleft_51, a_snare_pan_aright_52 pan2 (a_snare_mix_aout_49 * a_snare_amplitude_aout_50), 0.5, 0
   a_kit_left_1 = a_snare_pan_aleft_51
   a_kit_right_2 = a_snare_pan_aright_52
 else
   ; case:default Default
   a_kit_left_1 = 0
   a_kit_right_2 = 0
 endif
 a_output_left_asignal_53 = (a_kit_left_1 * 3)
 a_output_right_asignal_54 = (a_kit_right_2 * 3)
 ; node:output_left opcode:outleta
 outleta "left", a_output_left_asignal_53
 ; node:output_right opcode:outleta
 outleta "right", a_output_right_asignal_54
endin

; mixer stage patch:bass
; patch:f3922374-6038-4c76-bf75-f8bf1c2f8a30 name:Rubber Core FM Bass channel:1 always_on:false
; instance:bass csound:vcs_mix_33dc83ab9904e9526f7091d6
; description: One 1:2 FM pair plus a sine at the played fundamental. Growl fades with the envelope to a sustained rubbery body. Suggested MIDI notes 28–55. Dry, velocity-sensitive, polyphonic. Three per-instance controls read on new notes. Route Stereo Output through the performance mixer to Master.
; trigger: MIDI channel 1 / score notes; score instrument number: 4
instr vcs_mix_33dc83ab9904e9526f7091d6
 i_vcs_internal_score_note_p4 = p4
 i_vcs_internal_score_velocity_p5 = p5
 ; node:body_gain opcode:const_k
 k_body_gain_kout_5 = 0.14
 ; node:env_attack_const opcode:const_i
 i_env_attack_const_iout_4 = 0.003
 ; node:env_release_const opcode:const_i
 i_env_release_const_iout_6 = 0.05
 ; node:env_sustain_const opcode:const_i
 i_env_sustain_const_iout_5 = 0.15
 ; node:fm_gain opcode:const_k
 k_fm_gain_kout_3 = 0.24
 ; node:pitch_cpsmidi opcode:cpsmidi
 i_pitch_cpsmidi_kfreq_1 = cpsmidinn(p4)
 i_rubber_decay_iout_9 chnget "__vcs_perf_782d4d8b615cf42ede164828d9386da021527a17490b7d72f6c271df29364688"
 i_rubber_growl_iout_7 chnget "__vcs_perf_bdd7c5123d1ed90e6c3a92ded7f6ae160fc4124c2a5605723e5290bb310f82cf"
 i_rubber_tone_iout_8 chnget "__vcs_perf_4dedf9c13b243946c65ab85bee1c7493d4b2633d15d0bf14a2bcc2d6847248a7"
 ; node:velocity_scale_const opcode:const_i
 i_velocity_scale_const_iout_2 = 1
 ; node:amp_madsr opcode:madsr
 k_amp_madsr_kenv_1 madsr i_env_attack_const_iout_4, i_rubber_decay_iout_9, i_env_sustain_const_iout_5, i_env_release_const_iout_6, 0, -1
 ; node:velocity_ampmidi opcode:ampmidi
 i_velocity_ampmidi_iamp_3 = ((p5 / 128) * (i_velocity_scale_const_iout_2))
 ; node:amp_velocity_envelope opcode:k_mul
 k_amp_velocity_envelope_kout_2 = (i_velocity_ampmidi_iamp_3) * (k_amp_madsr_kenv_1)
 ; node:fm_amp opcode:k_mul
 k_fm_amp_kout_4 = (k_amp_velocity_envelope_kout_2) * (k_fm_gain_kout_3)
 ; node:body_amp opcode:k_mul
 k_body_amp_kout_6 = (k_amp_velocity_envelope_kout_2) * (k_body_gain_kout_5)
 ; node:fm_foscili opcode:foscili
 a_fm_foscili_asig_1 foscili k_fm_amp_kout_4, i_pitch_cpsmidi_kfreq_1, 1, 2, (0.5 * (((((i_rubber_growl_iout_7 * ((0.2 + (0.8 * k_amp_madsr_kenv_1))))) + ((0.5 * (((((((((0.42 * sr) / i_pitch_cpsmidi_kfreq_1) - 1)) / 2) - 1)) + abs((((((((0.42 * sr) / i_pitch_cpsmidi_kfreq_1) - 1)) / 2) - 1)))))))) - abs((((i_rubber_growl_iout_7 * ((0.2 + (0.8 * k_amp_madsr_kenv_1))))) - ((0.5 * (((((((((0.42 * sr) / i_pitch_cpsmidi_kfreq_1) - 1)) / 2) - 1)) + abs((((((((0.42 * sr) / i_pitch_cpsmidi_kfreq_1) - 1)) / 2) - 1)))))))))))), 1, 0
 ; node:body_oscili opcode:oscili
 a_body_oscili_asig_2 oscili k_body_amp_kout_6, i_pitch_cpsmidi_kfreq_1, 1
 ; node:layer_mix_1 opcode:mix2
 a_layer_mix_1_aout_3 = (a_fm_foscili_asig_1) + (a_body_oscili_asig_2)
 ; node:effect_1_moogladder2 opcode:moogladder2
 a_effect_1_moogladder2_aout_4 moogladder2 a_layer_mix_1_aout_3, (i_rubber_tone_iout_8 + ((1700 * k_amp_madsr_kenv_1) * k_amp_madsr_kenv_1)), 0.12
 ; node:output_pan2 opcode:pan2
 a_output_pan2_aleft_5, a_output_pan2_aright_6 pan2 ((a_effect_1_moogladder2_aout_4 * 0.85) * 10), 0.5, 0
 ; node:output_left opcode:outleta
 outleta "left", a_output_pan2_aleft_5
 ; node:output_right opcode:outleta
 outleta "right", a_output_pan2_aright_6
endin

; mixer stage patch:low-bass
; patch:d6a771a3-056b-4a69-9ddc-0abaed75603b name:EBM DW — Sequencer Bass channel:5 always_on:false
; instance:low-bass csound:vcs_mix_3918eda86d2c2ed296d58117
; description: Lean dry pulse/saw bass for short external sixteenth-note sequences. Velocity changes filter brightness; no built-in sequencer. Suggested MIDI 28–60. Velocity-sensitive; settings apply to new notes. Motion rates are Hz; echoes are fixed time. Route Stereo Output through the mixer to Master.
; trigger: MIDI channel 5 / score notes; score instrument number: 5
instr vcs_mix_3918eda86d2c2ed296d58117
 i_vcs_internal_score_note_p4 = p4
 i_vcs_internal_score_velocity_p5 = p5
 i_ctl_accent_iout_10 chnget "__vcs_perf_9ac561317070a37f53c49ba8859982731a037efc22e90103cc588bf6a0c04a3f"
 i_ctl_attack_iout_5 chnget "__vcs_perf_f2ec1062ad819859d30cc9a8bd8648573b8b9f2178cc07c2f810cbf14b7a00b2"
 i_ctl_decay_iout_9 chnget "__vcs_perf_308be2935838ad0aa90819b0dd065f1c1e0a3f6602af3bb79809196c47fa4f00"
 i_ctl_drive_iout_11 chnget "__vcs_perf_31960884bdb2ace7f9a8fae38c82e843ff3aadeb15214830aa46d19efec79e09"
 i_ctl_release_iout_6 chnget "__vcs_perf_04e75d3404990e0f0dca04dc816040d831996bd4878a50524b0b8aa7c721f87c"
 i_ctl_resonance_iout_8 chnget "__vcs_perf_e13fa71b4f055727d44f53385a8cde4359f2b0bcdb679cf6a486eb4a3308a0fa"
 i_ctl_tone_iout_7 chnget "__vcs_perf_c865ddff97009774c981b6593f6944fa2690a99ffcc3d7a7916b27d6ef145cc2"
 ; node:env_sustain_const opcode:const_i
 i_env_sustain_const_iout_4 = 0.08
 ; node:pitch_cpsmidi opcode:cpsmidi
 i_pitch_cpsmidi_kfreq_1 = cpsmidinn(p4)
 ; node:pulse_gain opcode:const_k
 k_pulse_gain_kout_3 = 0.15
 ; node:saw_a_gain opcode:const_k
 k_saw_a_gain_kout_5 = 0.09
 ; node:velocity_scale_const opcode:const_i
 i_velocity_scale_const_iout_2 = 1
 ; node:filter_decay_envelope opcode:linseg
 k_filter_decay_envelope_kenv_7 linseg 1, i_ctl_decay_iout_9, 0
 ; node:amp_madsr opcode:madsr
 k_amp_madsr_kenv_1 madsr i_ctl_attack_iout_5, i_ctl_decay_iout_9, i_env_sustain_const_iout_4, i_ctl_release_iout_6, 0, -1
 ; node:velocity_ampmidi opcode:ampmidi
 i_velocity_ampmidi_iamp_3 = ((p5 / 128) * (i_velocity_scale_const_iout_2))
 ; node:amp_velocity_envelope opcode:k_mul
 k_amp_velocity_envelope_kout_2 = (i_velocity_ampmidi_iamp_3) * (k_amp_madsr_kenv_1)
 ; node:pulse_amp opcode:k_mul
 k_pulse_amp_kout_4 = (k_amp_velocity_envelope_kout_2) * (k_pulse_gain_kout_3)
 ; node:saw_a_amp opcode:k_mul
 k_saw_a_amp_kout_6 = (k_amp_velocity_envelope_kout_2) * (k_saw_a_gain_kout_5)
 ; node:pulse_vco2 opcode:vco2
 a_pulse_vco2_asig_1 vco2 k_pulse_amp_kout_4, i_pitch_cpsmidi_kfreq_1, 2, 0.5, 0, 0.5
 ; node:saw_a_vco2 opcode:vco2
 a_saw_a_vco2_asig_2 vco2 k_saw_a_amp_kout_6, (i_pitch_cpsmidi_kfreq_1 * 0.9965), 0, 0.5, 0, 0.5
 ; node:source_sum opcode:mix2
 a_source_sum_aout_5 = ((a_pulse_vco2_asig_1 + a_saw_a_vco2_asig_2)) + (0)
 ; node:voice_filter opcode:moogladder2
 a_voice_filter_aout_6 moogladder2 a_source_sum_aout_5, (i_ctl_tone_iout_7 + ((2600 * k_filter_decay_envelope_kenv_7) * ((.2 + ((.8 * i_velocity_ampmidi_iamp_3) * i_ctl_accent_iout_10))))), i_ctl_resonance_iout_8
 ; node:saturation opcode:distort1
 a_saturation_aout_7 distort1 a_voice_filter_aout_6, (i_ctl_drive_iout_11 * 3), (1 / ((1 + (.55 * ((i_ctl_drive_iout_11 - 1)))))), 0, 0, 1
 ; node:dc_filter opcode:butterhp
 a_dc_filter_aout_8 butterhp a_saturation_aout_7, 22, 0
 ; node:output_pan2 opcode:pan2
 a_output_pan2_aleft_3, a_output_pan2_aright_4 pan2 (a_dc_filter_aout_8 * 0.58), 0.5, 0
 ; node:output_left opcode:outleta
 outleta "left", a_output_pan2_aleft_3
 ; node:output_right opcode:outleta
 outleta "right", a_output_pan2_aright_4
endin

; mixer stage patch:reflections
; patch:1d1ae919-b144-484b-b780-fb197bdb4aba name:Prism FM Pluck channel:4 always_on:false
; instance:reflections csound:vcs_mix_faa8117c6205d8c6212d364e
; description: A harmonic 1:3 FM pair with a bright onset that softens into a glassy pluck. Release controls the tail after key-up; decay controls held notes. Suggested MIDI notes 48–84. Dry, velocity-sensitive, polyphonic. Three per-instance controls read on new notes. Route Stereo Output through the performance mixer to Master.
; trigger: MIDI channel 4 / score notes; score instrument number: 6
instr vcs_mix_faa8117c6205d8c6212d364e
 i_vcs_internal_score_note_p4 = p4
 i_vcs_internal_score_velocity_p5 = p5
 ; node:env_attack_const opcode:const_i
 i_env_attack_const_iout_4 = 0.002
 ; node:env_sustain_const opcode:const_i
 i_env_sustain_const_iout_5 = 0
 ; node:fm_gain opcode:const_k
 k_fm_gain_kout_3 = 0.25
 ; node:pitch_cpsmidi opcode:cpsmidi
 i_pitch_cpsmidi_kfreq_1 = cpsmidinn(p4)
 i_prism_color_iout_6 chnget "__vcs_perf_ca473e4e52534b6dc2d5c4d2c9fddd7309c1bded1a2114b6a51cb8f639b595ca"
 i_prism_decay_iout_7 chnget "__vcs_perf_daf951eff610eb7354d6e2f07cec2435411b0c8557f4f71587f1438503e1a5e6"
 i_prism_release_iout_8 chnget "__vcs_perf_4c6d62dfc3e562af77a1b9a07f1f404aece2477c63ef9001e09a5538924f3a44"
 ; node:velocity_scale_const opcode:const_i
 i_velocity_scale_const_iout_2 = 1
 ; node:amp_madsr opcode:madsr
 k_amp_madsr_kenv_1 madsr i_env_attack_const_iout_4, i_prism_decay_iout_7, i_env_sustain_const_iout_5, i_prism_release_iout_8, 0, -1
 ; node:velocity_ampmidi opcode:ampmidi
 i_velocity_ampmidi_iamp_3 = ((p5 / 128) * (i_velocity_scale_const_iout_2))
 ; node:amp_velocity_envelope opcode:k_mul
 k_amp_velocity_envelope_kout_2 = (i_velocity_ampmidi_iamp_3) * (k_amp_madsr_kenv_1)
 ; node:fm_amp opcode:k_mul
 k_fm_amp_kout_4 = (k_amp_velocity_envelope_kout_2) * (k_fm_gain_kout_3)
 ; node:fm_foscili opcode:foscili
 a_fm_foscili_asig_1 foscili k_fm_amp_kout_4, i_pitch_cpsmidi_kfreq_1, 1, 3, (0.5 * (((((i_prism_color_iout_6 * ((0.12 + (0.88 * k_amp_madsr_kenv_1))))) + ((0.5 * (((((((((0.42 * sr) / i_pitch_cpsmidi_kfreq_1) - 1)) / 3) - 1)) + abs((((((((0.42 * sr) / i_pitch_cpsmidi_kfreq_1) - 1)) / 3) - 1)))))))) - abs((((i_prism_color_iout_6 * ((0.12 + (0.88 * k_amp_madsr_kenv_1))))) - ((0.5 * (((((((((0.42 * sr) / i_pitch_cpsmidi_kfreq_1) - 1)) / 3) - 1)) + abs((((((((0.42 * sr) / i_pitch_cpsmidi_kfreq_1) - 1)) / 3) - 1)))))))))))), 1, 0
 ; node:effect_1_butterhp opcode:butterhp
 a_effect_1_butterhp_aout_2 butterhp a_fm_foscili_asig_1, 100, 0
 ; node:effect_2_butterlp opcode:butterlp
 a_effect_2_butterlp_aout_3 butterlp a_effect_1_butterhp_aout_2, 10000, 0
 ; node:output_pan2 opcode:pan2
 a_output_pan2_aleft_4, a_output_pan2_aright_5 pan2 ((a_effect_2_butterlp_aout_3 * 0.85) * 10), 0.5, 0
 ; node:output_left opcode:outleta
 outleta "left", a_output_pan2_aleft_4
 ; node:output_right opcode:outleta
 outleta "right", a_output_pan2_aright_5
endin

; mixer stage patch:shore
; patch:7cf6abaf-31f2-4b4a-858c-09b078a7d729 name:World Drumkit channel:11 always_on:false
; instance:shore csound:vcs_mix_4f6210d5bde508179baccbeb
; description: Sample-free, velocity-sensitive world percussion: 55 strokes, selected by If + MIDI notnum. Custom map; other notes are silent. Short notes retain decay; held notes do not sustain. Four performance controls: Kit tuning, Decay, Brightness, Tabla tuning (independent multiplier; default dayan C4, 261.63 Hz). Synthetic tabla bol approximations; ge bend is preset, not live pressure. Mono voices feed Stereo Output; route to Master.
;   
;   Deep foundation
;   - 36: Dunun open; 37: Dunun muted
;   - 38: Surdo open; 39: Surdo damped
;   
;   Hand drums
;   - 40: Djembe bass; 41: tone; 42: slap; 43: muted
;   - 44: Conga low open; 45: high open; 46: muted; 47: slap
;   - 48: Bongo low open; 49: high open; 50: rim; 51: muted
;   - 52: Darbuka doum; 53: tek; 54: ka; 55: slap
;   
;   Resonant / expressive
;   - 56: Frame drum centre; 57: rim; 58: muted
;   - 60: Tabla dayan na; 61: tin; 62: tun; 63: te (dry)
;   - 64: Tabla bayan ge; 65: ke (muted); 66: pressure bend
;   - 67: Tabla dha (na + ge); 68: dhin (tin + ge)
;   - 70: Udu bass air pulse; 71: clay tap; 72: hole slap
;   
;   Wood / dry accents
;   - 74: Cajon bass; 75: snare slap; 76: edge
;   - 77: Claves; 78: Woodblock low; 79: Woodblock high
;   
;   Metal
;   - 80: Cowbell open; 81: damped
;   - 82: Agogo low; 83: Agogo high
;   
;   Shakers / scrapers / jingles
;   - 84: Shekere short; 85: accent; 86: long
;   - 87: Cabasa short; 88: Cabasa long
;   - 89: Guiro short; 90: Guiro long
;   - 91: Tambourine hit; 92: shake; 93: damped
; trigger: MIDI channel 11 / score notes; score instrument number: 7
instr vcs_mix_4f6210d5bde508179baccbeb
 i_vcs_internal_score_note_p4 = p4
 i_vcs_internal_score_velocity_p5 = p5
 ; node:env_attack_const opcode:const_i
 i_env_attack_const_iout_4 = 0.0007
 ; node:env_decay_const opcode:const_i
 i_env_decay_const_iout_5 = 0.002
 ; node:env_release_const opcode:const_i
 i_env_release_const_iout_7 = 4
 ; node:env_sustain_const opcode:const_i
 i_env_sustain_const_iout_6 = 1
 ; node:midi_note opcode:notnum
 i_midi_note_inote_8 = p4
 ; node:motion_bayan opcode:expseg
 k_motion_bayan_kenv_21 expseg 1.06, 0.08, 1
 ; node:motion_bend opcode:expseg
 k_motion_bend_kenv_22 expseg 0.96, 0.08, 1.31, 0.2, 0.91, 0.3, 1
 ; node:motion_deep opcode:expseg
 k_motion_deep_kenv_18 expseg 1.55, 0.014, 1.07, 0.1, 1
 ; node:motion_drop opcode:expseg
 k_motion_drop_kenv_17 expseg 1.3, 0.012, 1.04, 0.08, 1
 ; node:motion_small opcode:expseg
 k_motion_small_kenv_19 expseg 1.08, 0.016, 1
 ; node:motion_udu opcode:expseg
 k_motion_udu_kenv_20 expseg 1.22, 0.02, 1
 ; node:pitch_cpsmidi opcode:cpsmidi
 i_pitch_cpsmidi_kfreq_1 = cpsmidinn(p4)
 ; node:velocity_scale_const opcode:const_i
 i_velocity_scale_const_iout_2 = 1
 i_world_brightness_iout_11 chnget "__vcs_perf_59d55bddfa1bfc821b415febad32a4748244172f37327401f02348a44e4351c6"
 i_world_decay_iout_10 chnget "__vcs_perf_def6c039d52d8bcf0bb35b95aa50a61265ecf41a2388d851bcc7bd4b1e10f6d6"
 i_world_tabla_tuning_iout_12 chnget "__vcs_perf_f09960c8447cb83458f5b365768a8d92531653099a548372142580ff3561ef06"
 i_world_tuning_iout_9 chnget "__vcs_perf_2a4c6afcdacaee86290c2dbe94b9fdbb1bfed40b0cd4a668d7358692efa550bd"
 ; node:velocity_ampmidi opcode:ampmidi
 i_velocity_ampmidi_iamp_3 = ((p5 / 128) * (i_velocity_scale_const_iout_2))
 ; node:amp_madsr opcode:madsr
 k_amp_madsr_kenv_1 madsr i_env_attack_const_iout_4, i_env_decay_const_iout_5, i_env_sustain_const_iout_6, (4 * i_world_decay_iout_10), 0, -1
 ; node:env_tick opcode:expseg
 k_env_tick_kenv_3 expseg 1, (0.018 * i_world_decay_iout_10), 0.001, (0.006299999999999999 * i_world_decay_iout_10), 1e-06
 ; node:env_snap opcode:expseg
 k_env_snap_kenv_5 expseg 1, (0.055 * i_world_decay_iout_10), 0.001, (0.01925 * i_world_decay_iout_10), 1e-06
 ; node:env_short opcode:expseg
 k_env_short_kenv_7 expseg 1, (0.12 * i_world_decay_iout_10), 0.001, (0.041999999999999996 * i_world_decay_iout_10), 1e-06
 ; node:env_mid opcode:expseg
 k_env_mid_kenv_9 expseg 1, (0.23 * i_world_decay_iout_10), 0.001, (0.0805 * i_world_decay_iout_10), 1e-06
 ; node:env_body opcode:expseg
 k_env_body_kenv_11 expseg 1, (0.4 * i_world_decay_iout_10), 0.001, (0.13999999999999999 * i_world_decay_iout_10), 1e-06
 ; node:env_long opcode:expseg
 k_env_long_kenv_13 expseg 1, (0.65 * i_world_decay_iout_10), 0.001, (0.22749999999999998 * i_world_decay_iout_10), 1e-06
 ; node:env_ring opcode:expseg
 k_env_ring_kenv_15 expseg 1, (0.9 * i_world_decay_iout_10), 0.001, (0.315 * i_world_decay_iout_10), 1e-06
 ; node:velocity_gate opcode:k_mul
 k_velocity_gate_kout_2 = ((i_velocity_ampmidi_iamp_3 * k_amp_madsr_kenv_1)) * (1)
 ; node:amp_tick opcode:k_mul
 k_amp_tick_kout_4 = (k_env_tick_kenv_3) * (k_velocity_gate_kout_2)
 ; node:amp_snap opcode:k_mul
 k_amp_snap_kout_6 = (k_env_snap_kenv_5) * (k_velocity_gate_kout_2)
 ; node:amp_short opcode:k_mul
 k_amp_short_kout_8 = (k_env_short_kenv_7) * (k_velocity_gate_kout_2)
 ; node:amp_mid opcode:k_mul
 k_amp_mid_kout_10 = (k_env_mid_kenv_9) * (k_velocity_gate_kout_2)
 ; node:amp_body opcode:k_mul
 k_amp_body_kout_12 = (k_env_body_kenv_11) * (k_velocity_gate_kout_2)
 ; node:amp_long opcode:k_mul
 k_amp_long_kout_14 = (k_env_long_kenv_13) * (k_velocity_gate_kout_2)
 ; node:amp_ring opcode:k_mul
 k_amp_ring_kout_16 = (k_env_ring_kenv_15) * (k_velocity_gate_kout_2)
 ; node:noise_tap opcode:noise
 a_noise_tap_aout_5 noise ((k_amp_tick_kout_4 * 0.3) * ((0.7 + (0.3 * i_world_brightness_iout_11)))), 0
 ; node:noise_mallet opcode:noise
 a_noise_mallet_aout_1 noise ((k_amp_snap_kout_6 * 0.24) * ((0.7 + (0.3 * i_world_brightness_iout_11)))), 0.25
 ; node:noise_skin opcode:noise
 a_noise_skin_aout_3 noise ((k_amp_snap_kout_6 * 0.19) * ((0.7 + (0.3 * i_world_brightness_iout_11)))), 0.1
 ; node:noise_slap opcode:noise
 a_noise_slap_aout_7 noise ((k_amp_short_kout_8 * 0.27) * ((0.7 + (0.3 * i_world_brightness_iout_11)))), 0
 ; node:noise_air opcode:noise
 a_noise_air_aout_9 noise ((k_amp_short_kout_8 * 0.18) * ((0.7 + (0.3 * i_world_brightness_iout_11)))), 0.4
 ; node:noise_beads_short opcode:noise
 a_noise_beads_short_aout_13 noise ((k_amp_short_kout_8 * 0.4) * ((0.7 + (0.3 * i_world_brightness_iout_11)))), 0
 ; node:noise_scrape_short opcode:noise
 a_noise_scrape_short_aout_17 noise ((k_amp_short_kout_8 * 0.46) * ((0.7 + (0.3 * i_world_brightness_iout_11)))), 0
 ; node:noise_shekere_short opcode:noise
 a_noise_shekere_short_aout_25 noise ((k_amp_short_kout_8 * 0.28) * ((0.7 + (0.3 * i_world_brightness_iout_11)))), 0.12
 ; node:noise_wires opcode:noise
 a_noise_wires_aout_11 noise ((k_amp_mid_kout_10 * 0.25) * ((0.7 + (0.3 * i_world_brightness_iout_11)))), 0
 ; node:noise_jingle_short opcode:noise
 a_noise_jingle_short_aout_21 noise ((k_amp_mid_kout_10 * 0.26) * ((0.7 + (0.3 * i_world_brightness_iout_11)))), 0
 ; node:noise_beads_long opcode:noise
 a_noise_beads_long_aout_15 noise ((k_amp_body_kout_12 * 0.4) * ((0.7 + (0.3 * i_world_brightness_iout_11)))), 0
 ; node:noise_scrape_long opcode:noise
 a_noise_scrape_long_aout_19 noise ((k_amp_body_kout_12 * 0.42) * ((0.7 + (0.3 * i_world_brightness_iout_11)))), 0
 ; node:noise_shekere_long opcode:noise
 a_noise_shekere_long_aout_27 noise ((k_amp_body_kout_12 * 0.26) * ((0.7 + (0.3 * i_world_brightness_iout_11)))), 0.12
 ; node:noise_jingle_long opcode:noise
 a_noise_jingle_long_aout_23 noise ((k_amp_ring_kout_16 * 0.25) * ((0.7 + (0.3 * i_world_brightness_iout_11)))), 0
 ; node:texture_tap opcode:butterbp
 a_texture_tap_aout_6 butterbp a_noise_tap_aout_5, (4300 * i_world_brightness_iout_11), 3800, 0
 ; node:texture_mallet opcode:butterbp
 a_texture_mallet_aout_2 butterbp a_noise_mallet_aout_1, (950 * i_world_brightness_iout_11), 1400, 0
 ; node:texture_skin opcode:butterbp
 a_texture_skin_aout_4 butterbp a_noise_skin_aout_3, (1600 * i_world_brightness_iout_11), 2200, 0
 ; node:texture_slap opcode:butterbp
 a_texture_slap_aout_8 butterbp a_noise_slap_aout_7, (3800 * i_world_brightness_iout_11), 4600, 0
 ; node:texture_air opcode:butterbp
 a_texture_air_aout_10 butterbp a_noise_air_aout_9, (800 * i_world_brightness_iout_11), 1200, 0
 ; node:texture_beads_short opcode:butterbp
 a_texture_beads_short_aout_14 butterbp a_noise_beads_short_aout_13, (4500 * i_world_brightness_iout_11), 6000, 0
 ; node:texture_scrape_short opcode:butterbp
 a_texture_scrape_short_aout_18 butterbp a_noise_scrape_short_aout_17, (2650 * i_world_brightness_iout_11), 2400, 0
 ; node:texture_shekere_short opcode:butterbp
 a_texture_shekere_short_aout_26 butterbp a_noise_shekere_short_aout_25, (2400 * i_world_brightness_iout_11), 3500, 0
 ; node:texture_wires opcode:butterbp
 a_texture_wires_aout_12 butterbp a_noise_wires_aout_11, (3200 * i_world_brightness_iout_11), 4800, 0
 ; node:texture_jingle_short opcode:butterbp
 a_texture_jingle_short_aout_22 butterbp a_noise_jingle_short_aout_21, (6600 * i_world_brightness_iout_11), 6200, 0
 ; node:texture_beads_long opcode:butterbp
 a_texture_beads_long_aout_16 butterbp a_noise_beads_long_aout_15, (4500 * i_world_brightness_iout_11), 6000, 0
 ; node:texture_scrape_long opcode:butterbp
 a_texture_scrape_long_aout_20 butterbp a_noise_scrape_long_aout_19, (2650 * i_world_brightness_iout_11), 2400, 0
 ; node:texture_shekere_long opcode:butterbp
 a_texture_shekere_long_aout_28 butterbp a_noise_shekere_long_aout_27, (2400 * i_world_brightness_iout_11), 3500, 0
 ; node:texture_jingle_long opcode:butterbp
 a_texture_jingle_long_aout_24 butterbp a_noise_jingle_long_aout_23, (6600 * i_world_brightness_iout_11), 6200, 0
 ; node:bongo_low_if opcode:If
 if (i_midi_note_inote_8) == (48) then
   ; case:bongo_low_hit 48: Bongo low open
   ; node:bongo_low_partial_1 opcode:oscil3
   a_bongo_low_partial_1_asig_123 oscil3 (k_amp_body_kout_12 * 0.14), ((292 * i_world_tuning_iout_9) * k_motion_small_kenv_19), -1, 0
   ; node:bongo_low_partial_2 opcode:oscil3
   a_bongo_low_partial_2_asig_124 oscil3 ((k_amp_mid_kout_10 * 0.05) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (475 * i_world_tuning_iout_9), -1, 0
   ; node:bongo_low_partial_3 opcode:oscil3
   a_bongo_low_partial_3_asig_125 oscil3 ((k_amp_short_kout_8 * 0.022) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (647 * i_world_tuning_iout_9), -1, 0
   a_bongo_low_if_left_41 = ((((a_bongo_low_partial_1_asig_123 * 1) + (a_bongo_low_partial_2_asig_124 * 1)) + (a_bongo_low_partial_3_asig_125 * 1)) + (a_texture_tap_aout_6 * 0.45))
 else
   ; case:bongo_low_off Other notes: silence
   a_bongo_low_if_left_41 = 0
 endif
 ; node:bongo_high_if opcode:If
 if (i_midi_note_inote_8) == (49) then
   ; case:bongo_high_hit 49: Bongo high open
   ; node:bongo_high_partial_1 opcode:oscil3
   a_bongo_high_partial_1_asig_126 oscil3 (k_amp_mid_kout_10 * 0.13), ((394 * i_world_tuning_iout_9) * k_motion_small_kenv_19), -1, 0
   ; node:bongo_high_partial_2 opcode:oscil3
   a_bongo_high_partial_2_asig_127 oscil3 ((k_amp_short_kout_8 * 0.05) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (642 * i_world_tuning_iout_9), -1, 0
   ; node:bongo_high_partial_3 opcode:oscil3
   a_bongo_high_partial_3_asig_128 oscil3 ((k_amp_snap_kout_6 * 0.022) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (873 * i_world_tuning_iout_9), -1, 0
   a_bongo_high_if_left_42 = ((((a_bongo_high_partial_1_asig_126 * 1) + (a_bongo_high_partial_2_asig_127 * 1)) + (a_bongo_high_partial_3_asig_128 * 1)) + (a_texture_tap_aout_6 * 0.5))
 else
   ; case:bongo_high_off Other notes: silence
   a_bongo_high_if_left_42 = 0
 endif
 ; node:bongo_rim_if opcode:If
 if (i_midi_note_inote_8) == (50) then
   ; case:bongo_rim_hit 50: Bongo rim
   ; node:bongo_rim_partial_1 opcode:oscil3
   a_bongo_rim_partial_1_asig_129 oscil3 (k_amp_short_kout_8 * 0.09), (790 * i_world_tuning_iout_9), -1, 0
   ; node:bongo_rim_partial_2 opcode:oscil3
   a_bongo_rim_partial_2_asig_130 oscil3 ((k_amp_snap_kout_6 * 0.045) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (1435 * i_world_tuning_iout_9), -1, 0
   ; node:bongo_rim_partial_3 opcode:oscil3
   a_bongo_rim_partial_3_asig_131 oscil3 ((k_amp_tick_kout_4 * 0.015) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (2045 * i_world_tuning_iout_9), -1, 0
   a_bongo_rim_if_left_43 = ((((a_bongo_rim_partial_1_asig_129 * 1) + (a_bongo_rim_partial_2_asig_130 * 1)) + (a_bongo_rim_partial_3_asig_131 * 1)) + (a_texture_tap_aout_6 * 0.65))
 else
   ; case:bongo_rim_off Other notes: silence
   a_bongo_rim_if_left_43 = 0
 endif
 ; node:bongo_muted_if opcode:If
 if (i_midi_note_inote_8) == (51) then
   ; case:bongo_muted_hit 51: Bongo muted
   ; node:bongo_muted_partial_1 opcode:oscil3
   a_bongo_muted_partial_1_asig_132 oscil3 (k_amp_snap_kout_6 * 0.08), (425 * i_world_tuning_iout_9), -1, 0
   ; node:bongo_muted_partial_2 opcode:oscil3
   a_bongo_muted_partial_2_asig_133 oscil3 ((k_amp_tick_kout_4 * 0.04) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (706 * i_world_tuning_iout_9), -1, 0
   a_bongo_muted_if_left_44 = (((a_bongo_muted_partial_1_asig_132 * 1) + (a_bongo_muted_partial_2_asig_133 * 1)) + (a_texture_tap_aout_6 * 0.6))
 else
   ; case:bongo_muted_off Other notes: silence
   a_bongo_muted_if_left_44 = 0
 endif
 ; node:darbuka_tek_if opcode:If
 if (i_midi_note_inote_8) == (53) then
   ; case:darbuka_tek_hit 53: Darbuka tek
   ; node:darbuka_tek_partial_1 opcode:oscil3
   a_darbuka_tek_partial_1_asig_137 oscil3 (k_amp_mid_kout_10 * 0.1), (472 * i_world_tuning_iout_9), -1, 0
   ; node:darbuka_tek_partial_2 opcode:oscil3
   a_darbuka_tek_partial_2_asig_138 oscil3 ((k_amp_short_kout_8 * 0.044) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (782 * i_world_tuning_iout_9), -1, 0
   ; node:darbuka_tek_partial_3 opcode:oscil3
   a_darbuka_tek_partial_3_asig_139 oscil3 ((k_amp_snap_kout_6 * 0.022) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (1115 * i_world_tuning_iout_9), -1, 0
   a_darbuka_tek_if_left_46 = ((((a_darbuka_tek_partial_1_asig_137 * 1) + (a_darbuka_tek_partial_2_asig_138 * 1)) + (a_darbuka_tek_partial_3_asig_139 * 1)) + (a_texture_tap_aout_6 * 0.6))
 else
   ; case:darbuka_tek_off Other notes: silence
   a_darbuka_tek_if_left_46 = 0
 endif
 ; node:darbuka_ka_if opcode:If
 if (i_midi_note_inote_8) == (54) then
   ; case:darbuka_ka_hit 54: Darbuka ka
   ; node:darbuka_ka_partial_1 opcode:oscil3
   a_darbuka_ka_partial_1_asig_140 oscil3 (k_amp_short_kout_8 * 0.085), (438 * i_world_tuning_iout_9), -1, 0
   ; node:darbuka_ka_partial_2 opcode:oscil3
   a_darbuka_ka_partial_2_asig_141 oscil3 ((k_amp_snap_kout_6 * 0.043) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (742 * i_world_tuning_iout_9), -1, 0
   ; node:darbuka_ka_partial_3 opcode:oscil3
   a_darbuka_ka_partial_3_asig_142 oscil3 ((k_amp_tick_kout_4 * 0.02) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (1040 * i_world_tuning_iout_9), -1, 0
   a_darbuka_ka_if_left_47 = ((((a_darbuka_ka_partial_1_asig_140 * 1) + (a_darbuka_ka_partial_2_asig_141 * 1)) + (a_darbuka_ka_partial_3_asig_142 * 1)) + (a_texture_tap_aout_6 * 0.43))
 else
   ; case:darbuka_ka_off Other notes: silence
   a_darbuka_ka_if_left_47 = 0
 endif
 ; node:frame_rim_if opcode:If
 if (i_midi_note_inote_8) == (57) then
   ; case:frame_rim_hit 57: Frame drum rim
   ; node:frame_rim_partial_1 opcode:oscil3
   a_frame_rim_partial_1_asig_86 oscil3 (k_amp_mid_kout_10 * 0.06), (188 * i_world_tuning_iout_9), -1, 0
   ; node:frame_rim_partial_2 opcode:oscil3
   a_frame_rim_partial_2_asig_87 oscil3 ((k_amp_body_kout_12 * 0.065) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (306 * i_world_tuning_iout_9), -1, 0
   ; node:frame_rim_partial_3 opcode:oscil3
   a_frame_rim_partial_3_asig_88 oscil3 ((k_amp_mid_kout_10 * 0.035) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (428 * i_world_tuning_iout_9), -1, 0
   ; node:frame_rim_partial_4 opcode:oscil3
   a_frame_rim_partial_4_asig_89 oscil3 ((k_amp_short_kout_8 * 0.02) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (586 * i_world_tuning_iout_9), -1, 0
   a_frame_rim_if_left_50 = (((((a_frame_rim_partial_1_asig_86 * 1) + (a_frame_rim_partial_2_asig_87 * 1)) + (a_frame_rim_partial_3_asig_88 * 1)) + (a_frame_rim_partial_4_asig_89 * 1)) + (a_texture_tap_aout_6 * 0.54))
 else
   ; case:frame_rim_off Other notes: silence
   a_frame_rim_if_left_50 = 0
 endif
 ; node:tabla_na_if opcode:If
 if (i_midi_note_inote_8) == (60) then
   ; case:tabla_na_hit 60: Tabla dayan na
   ; node:tabla_na_partial_1 opcode:oscil3
   a_tabla_na_partial_1_asig_151 oscil3 (k_amp_short_kout_8 * 0.018), ((261.63 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_na_partial_2 opcode:oscil3
   a_tabla_na_partial_2_asig_152 oscil3 ((k_amp_long_kout_14 * 0.097) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), ((523.26 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_na_partial_3 opcode:oscil3
   a_tabla_na_partial_3_asig_153 oscil3 ((k_amp_body_kout_12 * 0.067) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), ((784.89 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_na_partial_4 opcode:oscil3
   a_tabla_na_partial_4_asig_154 oscil3 ((k_amp_mid_kout_10 * 0.028) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), ((1046.52 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_na_partial_5 opcode:oscil3
   a_tabla_na_partial_5_asig_155 oscil3 ((k_amp_short_kout_8 * 0.014) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), ((1308.15 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   a_tabla_na_if_left_52 = ((((((a_tabla_na_partial_1_asig_151 * 1) + (a_tabla_na_partial_2_asig_152 * 1)) + (a_tabla_na_partial_3_asig_153 * 1)) + (a_tabla_na_partial_4_asig_154 * 1)) + (a_tabla_na_partial_5_asig_155 * 1)) + (a_texture_tap_aout_6 * 0.3))
 else
   ; case:tabla_na_off Other notes: silence
   a_tabla_na_if_left_52 = 0
 endif
 ; node:tabla_tin_if opcode:If
 if (i_midi_note_inote_8) == (61) then
   ; case:tabla_tin_hit 61: Tabla dayan tin
   ; node:tabla_tin_partial_1 opcode:oscil3
   a_tabla_tin_partial_1_asig_156 oscil3 (k_amp_ring_kout_16 * 0.12), ((261.63 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_tin_partial_2 opcode:oscil3
   a_tabla_tin_partial_2_asig_157 oscil3 ((k_amp_long_kout_14 * 0.06) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), ((523.26 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_tin_partial_3 opcode:oscil3
   a_tabla_tin_partial_3_asig_158 oscil3 ((k_amp_body_kout_12 * 0.037) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), ((784.89 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_tin_partial_4 opcode:oscil3
   a_tabla_tin_partial_4_asig_159 oscil3 ((k_amp_mid_kout_10 * 0.019) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), ((1046.52 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   a_tabla_tin_if_left_53 = (((((a_tabla_tin_partial_1_asig_156 * 1) + (a_tabla_tin_partial_2_asig_157 * 1)) + (a_tabla_tin_partial_3_asig_158 * 1)) + (a_tabla_tin_partial_4_asig_159 * 1)) + (a_texture_tap_aout_6 * 0.16))
 else
   ; case:tabla_tin_off Other notes: silence
   a_tabla_tin_if_left_53 = 0
 endif
 ; node:tabla_tun_if opcode:If
 if (i_midi_note_inote_8) == (62) then
   ; case:tabla_tun_hit 62: Tabla dayan tun
   ; node:tabla_tun_partial_1 opcode:oscil3
   a_tabla_tun_partial_1_asig_160 oscil3 (k_amp_long_kout_14 * 0.15), ((261.63 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_tun_partial_2 opcode:oscil3
   a_tabla_tun_partial_2_asig_161 oscil3 ((k_amp_body_kout_12 * 0.032) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), ((523.26 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_tun_partial_3 opcode:oscil3
   a_tabla_tun_partial_3_asig_162 oscil3 ((k_amp_mid_kout_10 * 0.015) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), ((784.89 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   a_tabla_tun_if_left_54 = ((((a_tabla_tun_partial_1_asig_160 * 1) + (a_tabla_tun_partial_2_asig_161 * 1)) + (a_tabla_tun_partial_3_asig_162 * 1)) + (a_texture_tap_aout_6 * 0.12))
 else
   ; case:tabla_tun_off Other notes: silence
   a_tabla_tun_if_left_54 = 0
 endif
 ; node:tabla_te_if opcode:If
 if (i_midi_note_inote_8) == (63) then
   ; case:tabla_te_hit 63: Tabla dayan te (dry)
   ; node:tabla_te_partial_1 opcode:oscil3
   a_tabla_te_partial_1_asig_163 oscil3 (k_amp_snap_kout_6 * 0.07), ((315 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_te_partial_2 opcode:oscil3
   a_tabla_te_partial_2_asig_164 oscil3 ((k_amp_tick_kout_4 * 0.035) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), ((693 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_te_partial_3 opcode:oscil3
   a_tabla_te_partial_3_asig_165 oscil3 ((k_amp_tick_kout_4 * 0.019) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), ((1100 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   a_tabla_te_if_left_55 = ((((a_tabla_te_partial_1_asig_163 * 1) + (a_tabla_te_partial_2_asig_164 * 1)) + (a_tabla_te_partial_3_asig_165 * 1)) + (a_texture_tap_aout_6 * 0.72))
 else
   ; case:tabla_te_off Other notes: silence
   a_tabla_te_if_left_55 = 0
 endif
 ; node:udu_tap_if opcode:If
 if (i_midi_note_inote_8) == (71) then
   ; case:udu_tap_hit 71: Udu clay tap
   ; node:udu_tap_partial_1 opcode:oscil3
   a_udu_tap_partial_1_asig_192 oscil3 (k_amp_short_kout_8 * 0.09), (468 * i_world_tuning_iout_9), -1, 0
   ; node:udu_tap_partial_2 opcode:oscil3
   a_udu_tap_partial_2_asig_193 oscil3 ((k_amp_snap_kout_6 * 0.045) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (803 * i_world_tuning_iout_9), -1, 0
   ; node:udu_tap_partial_3 opcode:oscil3
   a_udu_tap_partial_3_asig_194 oscil3 ((k_amp_tick_kout_4 * 0.02) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (1289 * i_world_tuning_iout_9), -1, 0
   a_udu_tap_if_left_62 = ((((a_udu_tap_partial_1_asig_192 * 1) + (a_udu_tap_partial_2_asig_193 * 1)) + (a_udu_tap_partial_3_asig_194 * 1)) + (a_texture_tap_aout_6 * 0.28))
 else
   ; case:udu_tap_off Other notes: silence
   a_udu_tap_if_left_62 = 0
 endif
 ; node:claves_if opcode:If
 if (i_midi_note_inote_8) == (77) then
   ; case:claves_hit 77: Claves
   ; node:claves_partial_1 opcode:oscil3
   a_claves_partial_1_asig_205 oscil3 (k_amp_short_kout_8 * 0.13), (2380 * i_world_tuning_iout_9), -1, 0
   ; node:claves_partial_2 opcode:oscil3
   a_claves_partial_2_asig_206 oscil3 ((k_amp_snap_kout_6 * 0.035) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (3870 * i_world_tuning_iout_9), -1, 0
   a_claves_if_left_67 = (((a_claves_partial_1_asig_205 * 1) + (a_claves_partial_2_asig_206 * 1)) + (a_texture_tap_aout_6 * 0.16))
 else
   ; case:claves_off Other notes: silence
   a_claves_if_left_67 = 0
 endif
 ; node:woodblock_low_if opcode:If
 if (i_midi_note_inote_8) == (78) then
   ; case:woodblock_low_hit 78: Woodblock low
   ; node:woodblock_low_partial_1 opcode:oscil3
   a_woodblock_low_partial_1_asig_207 oscil3 (k_amp_short_kout_8 * 0.125), (650 * i_world_tuning_iout_9), -1, 0
   ; node:woodblock_low_partial_2 opcode:oscil3
   a_woodblock_low_partial_2_asig_208 oscil3 ((k_amp_snap_kout_6 * 0.045) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (1495 * i_world_tuning_iout_9), -1, 0
   ; node:woodblock_low_partial_3 opcode:oscil3
   a_woodblock_low_partial_3_asig_209 oscil3 ((k_amp_tick_kout_4 * 0.012) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (2665 * i_world_tuning_iout_9), -1, 0
   a_woodblock_low_if_left_68 = ((((a_woodblock_low_partial_1_asig_207 * 1) + (a_woodblock_low_partial_2_asig_208 * 1)) + (a_woodblock_low_partial_3_asig_209 * 1)) + (a_texture_tap_aout_6 * 0.16))
 else
   ; case:woodblock_low_off Other notes: silence
   a_woodblock_low_if_left_68 = 0
 endif
 ; node:woodblock_high_if opcode:If
 if (i_midi_note_inote_8) == (79) then
   ; case:woodblock_high_hit 79: Woodblock high
   ; node:woodblock_high_partial_1 opcode:oscil3
   a_woodblock_high_partial_1_asig_210 oscil3 (k_amp_short_kout_8 * 0.115), (980 * i_world_tuning_iout_9), -1, 0
   ; node:woodblock_high_partial_2 opcode:oscil3
   a_woodblock_high_partial_2_asig_211 oscil3 ((k_amp_snap_kout_6 * 0.043) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (2254 * i_world_tuning_iout_9), -1, 0
   ; node:woodblock_high_partial_3 opcode:oscil3
   a_woodblock_high_partial_3_asig_212 oscil3 ((k_amp_tick_kout_4 * 0.012) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (4018 * i_world_tuning_iout_9), -1, 0
   a_woodblock_high_if_left_69 = ((((a_woodblock_high_partial_1_asig_210 * 1) + (a_woodblock_high_partial_2_asig_211 * 1)) + (a_woodblock_high_partial_3_asig_212 * 1)) + (a_texture_tap_aout_6 * 0.16))
 else
   ; case:woodblock_high_off Other notes: silence
   a_woodblock_high_if_left_69 = 0
 endif
 ; node:cowbell_open_if opcode:If
 if (i_midi_note_inote_8) == (80) then
   ; case:cowbell_open_hit 80: Cowbell open
   ; node:cowbell_open_partial_1 opcode:oscil3
   a_cowbell_open_partial_1_asig_213 oscil3 (k_amp_body_kout_12 * 0.11), (550 * i_world_tuning_iout_9), -1, 0
   ; node:cowbell_open_partial_2 opcode:oscil3
   a_cowbell_open_partial_2_asig_214 oscil3 ((k_amp_mid_kout_10 * 0.08) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (845 * i_world_tuning_iout_9), -1, 0
   ; node:cowbell_open_partial_3 opcode:oscil3
   a_cowbell_open_partial_3_asig_215 oscil3 ((k_amp_short_kout_8 * 0.032) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (1435 * i_world_tuning_iout_9), -1, 0
   ; node:cowbell_open_partial_4 opcode:oscil3
   a_cowbell_open_partial_4_asig_216 oscil3 ((k_amp_snap_kout_6 * 0.013) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (2090 * i_world_tuning_iout_9), -1, 0
   a_cowbell_open_if_left_70 = (((((a_cowbell_open_partial_1_asig_213 * 1) + (a_cowbell_open_partial_2_asig_214 * 1)) + (a_cowbell_open_partial_3_asig_215 * 1)) + (a_cowbell_open_partial_4_asig_216 * 1)) + (a_texture_tap_aout_6 * 0.13))
 else
   ; case:cowbell_open_off Other notes: silence
   a_cowbell_open_if_left_70 = 0
 endif
 ; node:cowbell_muted_if opcode:If
 if (i_midi_note_inote_8) == (81) then
   ; case:cowbell_muted_hit 81: Cowbell damped
   ; node:cowbell_muted_partial_1 opcode:oscil3
   a_cowbell_muted_partial_1_asig_217 oscil3 (k_amp_short_kout_8 * 0.1), (550 * i_world_tuning_iout_9), -1, 0
   ; node:cowbell_muted_partial_2 opcode:oscil3
   a_cowbell_muted_partial_2_asig_218 oscil3 ((k_amp_snap_kout_6 * 0.068) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (845 * i_world_tuning_iout_9), -1, 0
   ; node:cowbell_muted_partial_3 opcode:oscil3
   a_cowbell_muted_partial_3_asig_219 oscil3 ((k_amp_tick_kout_4 * 0.025) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (1435 * i_world_tuning_iout_9), -1, 0
   a_cowbell_muted_if_left_71 = ((((a_cowbell_muted_partial_1_asig_217 * 1) + (a_cowbell_muted_partial_2_asig_218 * 1)) + (a_cowbell_muted_partial_3_asig_219 * 1)) + (a_texture_tap_aout_6 * 0.2))
 else
   ; case:cowbell_muted_off Other notes: silence
   a_cowbell_muted_if_left_71 = 0
 endif
 ; node:agogo_low_if opcode:If
 if (i_midi_note_inote_8) == (82) then
   ; case:agogo_low_hit 82: Agogo low
   ; node:agogo_low_partial_1 opcode:oscil3
   a_agogo_low_partial_1_asig_220 oscil3 (k_amp_ring_kout_16 * 0.12), (710 * i_world_tuning_iout_9), -1, 0
   ; node:agogo_low_partial_2 opcode:oscil3
   a_agogo_low_partial_2_asig_221 oscil3 ((k_amp_body_kout_12 * 0.052) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (1135 * i_world_tuning_iout_9), -1, 0
   ; node:agogo_low_partial_3 opcode:oscil3
   a_agogo_low_partial_3_asig_222 oscil3 ((k_amp_mid_kout_10 * 0.028) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (1909 * i_world_tuning_iout_9), -1, 0
   ; node:agogo_low_partial_4 opcode:oscil3
   a_agogo_low_partial_4_asig_223 oscil3 ((k_amp_short_kout_8 * 0.01) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (2876 * i_world_tuning_iout_9), -1, 0
   a_agogo_low_if_left_72 = (((((a_agogo_low_partial_1_asig_220 * 1) + (a_agogo_low_partial_2_asig_221 * 1)) + (a_agogo_low_partial_3_asig_222 * 1)) + (a_agogo_low_partial_4_asig_223 * 1)) + (a_texture_tap_aout_6 * 0.15))
 else
   ; case:agogo_low_off Other notes: silence
   a_agogo_low_if_left_72 = 0
 endif
 ; node:agogo_high_if opcode:If
 if (i_midi_note_inote_8) == (83) then
   ; case:agogo_high_hit 83: Agogo high
   ; node:agogo_high_partial_1 opcode:oscil3
   a_agogo_high_partial_1_asig_224 oscil3 (k_amp_body_kout_12 * 0.11), (1055 * i_world_tuning_iout_9), -1, 0
   ; node:agogo_high_partial_2 opcode:oscil3
   a_agogo_high_partial_2_asig_225 oscil3 ((k_amp_mid_kout_10 * 0.053) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (1709 * i_world_tuning_iout_9), -1, 0
   ; node:agogo_high_partial_3 opcode:oscil3
   a_agogo_high_partial_3_asig_226 oscil3 ((k_amp_short_kout_8 * 0.022) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (2828 * i_world_tuning_iout_9), -1, 0
   ; node:agogo_high_partial_4 opcode:oscil3
   a_agogo_high_partial_4_asig_227 oscil3 ((k_amp_snap_kout_6 * 0.009) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (4294 * i_world_tuning_iout_9), -1, 0
   a_agogo_high_if_left_73 = (((((a_agogo_high_partial_1_asig_224 * 1) + (a_agogo_high_partial_2_asig_225 * 1)) + (a_agogo_high_partial_3_asig_226 * 1)) + (a_agogo_high_partial_4_asig_227 * 1)) + (a_texture_tap_aout_6 * 0.15))
 else
   ; case:agogo_high_off Other notes: silence
   a_agogo_high_if_left_73 = 0
 endif
 ; node:dunun_open_if opcode:If
 if (i_midi_note_inote_8) == (36) then
   ; case:dunun_open_hit 36: Dunun open
   ; node:dunun_open_partial_1 opcode:oscil3
   a_dunun_open_partial_1_asig_90 oscil3 (k_amp_long_kout_14 * 0.19), ((72 * i_world_tuning_iout_9) * k_motion_drop_kenv_17), -1, 0
   ; node:dunun_open_partial_2 opcode:oscil3
   a_dunun_open_partial_2_asig_91 oscil3 ((k_amp_body_kout_12 * 0.062) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (114.5 * i_world_tuning_iout_9), -1, 0
   ; node:dunun_open_partial_3 opcode:oscil3
   a_dunun_open_partial_3_asig_92 oscil3 ((k_amp_mid_kout_10 * 0.026) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (165 * i_world_tuning_iout_9), -1, 0
   a_dunun_open_if_left_29 = ((((a_dunun_open_partial_1_asig_90 * 1) + (a_dunun_open_partial_2_asig_91 * 1)) + (a_dunun_open_partial_3_asig_92 * 1)) + (a_texture_mallet_aout_2 * 0.32))
 else
   ; case:dunun_open_off Other notes: silence
   a_dunun_open_if_left_29 = 0
 endif
 ; node:dunun_muted_if opcode:If
 if (i_midi_note_inote_8) == (37) then
   ; case:dunun_muted_hit 37: Dunun muted
   ; node:dunun_muted_partial_1 opcode:oscil3
   a_dunun_muted_partial_1_asig_93 oscil3 (k_amp_short_kout_8 * 0.17), ((77 * i_world_tuning_iout_9) * k_motion_drop_kenv_17), -1, 0
   ; node:dunun_muted_partial_2 opcode:oscil3
   a_dunun_muted_partial_2_asig_94 oscil3 ((k_amp_snap_kout_6 * 0.038) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (126 * i_world_tuning_iout_9), -1, 0
   a_dunun_muted_if_left_30 = (((a_dunun_muted_partial_1_asig_93 * 1) + (a_dunun_muted_partial_2_asig_94 * 1)) + (a_texture_mallet_aout_2 * 0.4))
 else
   ; case:dunun_muted_off Other notes: silence
   a_dunun_muted_if_left_30 = 0
 endif
 ; node:surdo_open_if opcode:If
 if (i_midi_note_inote_8) == (38) then
   ; case:surdo_open_hit 38: Surdo open
   ; node:surdo_open_partial_1 opcode:oscil3
   a_surdo_open_partial_1_asig_95 oscil3 (k_amp_ring_kout_16 * 0.21), ((52 * i_world_tuning_iout_9) * k_motion_deep_kenv_18), -1, 0
   ; node:surdo_open_partial_2 opcode:oscil3
   a_surdo_open_partial_2_asig_96 oscil3 ((k_amp_body_kout_12 * 0.04) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (86 * i_world_tuning_iout_9), -1, 0
   ; node:surdo_open_partial_3 opcode:oscil3
   a_surdo_open_partial_3_asig_97 oscil3 ((k_amp_mid_kout_10 * 0.014) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (137 * i_world_tuning_iout_9), -1, 0
   a_surdo_open_if_left_31 = ((((a_surdo_open_partial_1_asig_95 * 1) + (a_surdo_open_partial_2_asig_96 * 1)) + (a_surdo_open_partial_3_asig_97 * 1)) + (a_texture_mallet_aout_2 * 0.28))
 else
   ; case:surdo_open_off Other notes: silence
   a_surdo_open_if_left_31 = 0
 endif
 ; node:surdo_muted_if opcode:If
 if (i_midi_note_inote_8) == (39) then
   ; case:surdo_muted_hit 39: Surdo damped
   ; node:surdo_muted_partial_1 opcode:oscil3
   a_surdo_muted_partial_1_asig_98 oscil3 (k_amp_short_kout_8 * 0.18), ((58 * i_world_tuning_iout_9) * k_motion_deep_kenv_18), -1, 0
   ; node:surdo_muted_partial_2 opcode:oscil3
   a_surdo_muted_partial_2_asig_99 oscil3 ((k_amp_snap_kout_6 * 0.035) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (100 * i_world_tuning_iout_9), -1, 0
   a_surdo_muted_if_left_32 = (((a_surdo_muted_partial_1_asig_98 * 1) + (a_surdo_muted_partial_2_asig_99 * 1)) + (a_texture_mallet_aout_2 * 0.4))
 else
   ; case:surdo_muted_off Other notes: silence
   a_surdo_muted_if_left_32 = 0
 endif
 ; node:djembe_bass_if opcode:If
 if (i_midi_note_inote_8) == (40) then
   ; case:djembe_bass_hit 40: Djembe bass
   ; node:djembe_bass_partial_1 opcode:oscil3
   a_djembe_bass_partial_1_asig_100 oscil3 (k_amp_body_kout_12 * 0.2), ((83 * i_world_tuning_iout_9) * k_motion_drop_kenv_17), -1, 0
   ; node:djembe_bass_partial_2 opcode:oscil3
   a_djembe_bass_partial_2_asig_101 oscil3 ((k_amp_mid_kout_10 * 0.035) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (171 * i_world_tuning_iout_9), -1, 0
   ; node:djembe_bass_partial_3 opcode:oscil3
   a_djembe_bass_partial_3_asig_102 oscil3 ((k_amp_short_kout_8 * 0.015) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (254 * i_world_tuning_iout_9), -1, 0
   a_djembe_bass_if_left_33 = ((((a_djembe_bass_partial_1_asig_100 * 1) + (a_djembe_bass_partial_2_asig_101 * 1)) + (a_djembe_bass_partial_3_asig_102 * 1)) + (a_texture_skin_aout_4 * 0.24))
 else
   ; case:djembe_bass_off Other notes: silence
   a_djembe_bass_if_left_33 = 0
 endif
 ; node:djembe_tone_if opcode:If
 if (i_midi_note_inote_8) == (41) then
   ; case:djembe_tone_hit 41: Djembe tone
   ; node:djembe_tone_partial_1 opcode:oscil3
   a_djembe_tone_partial_1_asig_103 oscil3 (k_amp_body_kout_12 * 0.13), ((195 * i_world_tuning_iout_9) * k_motion_small_kenv_19), -1, 0
   ; node:djembe_tone_partial_2 opcode:oscil3
   a_djembe_tone_partial_2_asig_104 oscil3 ((k_amp_mid_kout_10 * 0.065) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (314 * i_world_tuning_iout_9), -1, 0
   ; node:djembe_tone_partial_3 opcode:oscil3
   a_djembe_tone_partial_3_asig_105 oscil3 ((k_amp_short_kout_8 * 0.031) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (432 * i_world_tuning_iout_9), -1, 0
   ; node:djembe_tone_partial_4 opcode:oscil3
   a_djembe_tone_partial_4_asig_106 oscil3 ((k_amp_snap_kout_6 * 0.012) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (610 * i_world_tuning_iout_9), -1, 0
   a_djembe_tone_if_left_34 = (((((a_djembe_tone_partial_1_asig_103 * 1) + (a_djembe_tone_partial_2_asig_104 * 1)) + (a_djembe_tone_partial_3_asig_105 * 1)) + (a_djembe_tone_partial_4_asig_106 * 1)) + (a_texture_skin_aout_4 * 0.42))
 else
   ; case:djembe_tone_off Other notes: silence
   a_djembe_tone_if_left_34 = 0
 endif
 ; node:djembe_muted_if opcode:If
 if (i_midi_note_inote_8) == (43) then
   ; case:djembe_muted_hit 43: Djembe muted
   ; node:djembe_muted_partial_1 opcode:oscil3
   a_djembe_muted_partial_1_asig_110 oscil3 (k_amp_snap_kout_6 * 0.07), (208 * i_world_tuning_iout_9), -1, 0
   ; node:djembe_muted_partial_2 opcode:oscil3
   a_djembe_muted_partial_2_asig_111 oscil3 ((k_amp_snap_kout_6 * 0.038) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (348 * i_world_tuning_iout_9), -1, 0
   a_djembe_muted_if_left_36 = (((a_djembe_muted_partial_1_asig_110 * 1) + (a_djembe_muted_partial_2_asig_111 * 1)) + (a_texture_skin_aout_4 * 0.7))
 else
   ; case:djembe_muted_off Other notes: silence
   a_djembe_muted_if_left_36 = 0
 endif
 ; node:conga_low_if opcode:If
 if (i_midi_note_inote_8) == (44) then
   ; case:conga_low_hit 44: Conga low open
   ; node:conga_low_partial_1 opcode:oscil3
   a_conga_low_partial_1_asig_112 oscil3 (k_amp_ring_kout_16 * 0.155), ((162 * i_world_tuning_iout_9) * k_motion_small_kenv_19), -1, 0
   ; node:conga_low_partial_2 opcode:oscil3
   a_conga_low_partial_2_asig_113 oscil3 ((k_amp_body_kout_12 * 0.058) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (264 * i_world_tuning_iout_9), -1, 0
   ; node:conga_low_partial_3 opcode:oscil3
   a_conga_low_partial_3_asig_114 oscil3 ((k_amp_mid_kout_10 * 0.023) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (358 * i_world_tuning_iout_9), -1, 0
   a_conga_low_if_left_37 = ((((a_conga_low_partial_1_asig_112 * 1) + (a_conga_low_partial_2_asig_113 * 1)) + (a_conga_low_partial_3_asig_114 * 1)) + (a_texture_skin_aout_4 * 0.24))
 else
   ; case:conga_low_off Other notes: silence
   a_conga_low_if_left_37 = 0
 endif
 ; node:conga_high_if opcode:If
 if (i_midi_note_inote_8) == (45) then
   ; case:conga_high_hit 45: Conga high open
   ; node:conga_high_partial_1 opcode:oscil3
   a_conga_high_partial_1_asig_115 oscil3 (k_amp_body_kout_12 * 0.145), ((218 * i_world_tuning_iout_9) * k_motion_small_kenv_19), -1, 0
   ; node:conga_high_partial_2 opcode:oscil3
   a_conga_high_partial_2_asig_116 oscil3 ((k_amp_mid_kout_10 * 0.06) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (357 * i_world_tuning_iout_9), -1, 0
   ; node:conga_high_partial_3 opcode:oscil3
   a_conga_high_partial_3_asig_117 oscil3 ((k_amp_short_kout_8 * 0.025) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (482 * i_world_tuning_iout_9), -1, 0
   a_conga_high_if_left_38 = ((((a_conga_high_partial_1_asig_115 * 1) + (a_conga_high_partial_2_asig_116 * 1)) + (a_conga_high_partial_3_asig_117 * 1)) + (a_texture_skin_aout_4 * 0.28))
 else
   ; case:conga_high_off Other notes: silence
   a_conga_high_if_left_38 = 0
 endif
 ; node:conga_muted_if opcode:If
 if (i_midi_note_inote_8) == (46) then
   ; case:conga_muted_hit 46: Conga muted
   ; node:conga_muted_partial_1 opcode:oscil3
   a_conga_muted_partial_1_asig_118 oscil3 (k_amp_snap_kout_6 * 0.075), (228 * i_world_tuning_iout_9), -1, 0
   ; node:conga_muted_partial_2 opcode:oscil3
   a_conga_muted_partial_2_asig_119 oscil3 ((k_amp_short_kout_8 * 0.045) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (383 * i_world_tuning_iout_9), -1, 0
   a_conga_muted_if_left_39 = (((a_conga_muted_partial_1_asig_118 * 1) + (a_conga_muted_partial_2_asig_119 * 1)) + (a_texture_skin_aout_4 * 0.58))
 else
   ; case:conga_muted_off Other notes: silence
   a_conga_muted_if_left_39 = 0
 endif
 ; node:darbuka_doum_if opcode:If
 if (i_midi_note_inote_8) == (52) then
   ; case:darbuka_doum_hit 52: Darbuka doum
   ; node:darbuka_doum_partial_1 opcode:oscil3
   a_darbuka_doum_partial_1_asig_134 oscil3 (k_amp_body_kout_12 * 0.19), ((110 * i_world_tuning_iout_9) * k_motion_drop_kenv_17), -1, 0
   ; node:darbuka_doum_partial_2 opcode:oscil3
   a_darbuka_doum_partial_2_asig_135 oscil3 ((k_amp_mid_kout_10 * 0.036) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (195 * i_world_tuning_iout_9), -1, 0
   ; node:darbuka_doum_partial_3 opcode:oscil3
   a_darbuka_doum_partial_3_asig_136 oscil3 ((k_amp_short_kout_8 * 0.019) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (282 * i_world_tuning_iout_9), -1, 0
   a_darbuka_doum_if_left_45 = ((((a_darbuka_doum_partial_1_asig_134 * 1) + (a_darbuka_doum_partial_2_asig_135 * 1)) + (a_darbuka_doum_partial_3_asig_136 * 1)) + (a_texture_skin_aout_4 * 0.19))
 else
   ; case:darbuka_doum_off Other notes: silence
   a_darbuka_doum_if_left_45 = 0
 endif
 ; node:frame_center_if opcode:If
 if (i_midi_note_inote_8) == (56) then
   ; case:frame_center_hit 56: Frame drum centre
   ; node:frame_center_partial_1 opcode:oscil3
   a_frame_center_partial_1_asig_145 oscil3 (k_amp_ring_kout_16 * 0.16), ((96 * i_world_tuning_iout_9) * k_motion_small_kenv_19), -1, 0
   ; node:frame_center_partial_2 opcode:oscil3
   a_frame_center_partial_2_asig_146 oscil3 ((k_amp_body_kout_12 * 0.053) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (153 * i_world_tuning_iout_9), -1, 0
   ; node:frame_center_partial_3 opcode:oscil3
   a_frame_center_partial_3_asig_147 oscil3 ((k_amp_mid_kout_10 * 0.026) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (205 * i_world_tuning_iout_9), -1, 0
   ; node:frame_center_partial_4 opcode:oscil3
   a_frame_center_partial_4_asig_148 oscil3 ((k_amp_short_kout_8 * 0.012) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (276 * i_world_tuning_iout_9), -1, 0
   a_frame_center_if_left_49 = (((((a_frame_center_partial_1_asig_145 * 1) + (a_frame_center_partial_2_asig_146 * 1)) + (a_frame_center_partial_3_asig_147 * 1)) + (a_frame_center_partial_4_asig_148 * 1)) + (a_texture_skin_aout_4 * 0.32))
 else
   ; case:frame_center_off Other notes: silence
   a_frame_center_if_left_49 = 0
 endif
 ; node:frame_muted_if opcode:If
 if (i_midi_note_inote_8) == (58) then
   ; case:frame_muted_hit 58: Frame drum muted
   ; node:frame_muted_partial_1 opcode:oscil3
   a_frame_muted_partial_1_asig_149 oscil3 (k_amp_short_kout_8 * 0.08), (115 * i_world_tuning_iout_9), -1, 0
   ; node:frame_muted_partial_2 opcode:oscil3
   a_frame_muted_partial_2_asig_150 oscil3 ((k_amp_snap_kout_6 * 0.04) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (219 * i_world_tuning_iout_9), -1, 0
   a_frame_muted_if_left_51 = (((a_frame_muted_partial_1_asig_149 * 1) + (a_frame_muted_partial_2_asig_150 * 1)) + (a_texture_skin_aout_4 * 0.6))
 else
   ; case:frame_muted_off Other notes: silence
   a_frame_muted_if_left_51 = 0
 endif
 ; node:tabla_ge_if opcode:If
 if (i_midi_note_inote_8) == (64) then
   ; case:tabla_ge_hit 64: Tabla bayan ge
   ; node:tabla_ge_partial_1 opcode:oscil3
   a_tabla_ge_partial_1_asig_166 oscil3 (k_amp_ring_kout_16 * 0.17), (((112 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12) * k_motion_bayan_kenv_21), -1, 0
   ; node:tabla_ge_partial_2 opcode:oscil3
   a_tabla_ge_partial_2_asig_167 oscil3 ((k_amp_body_kout_12 * 0.037) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (((224 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12) * k_motion_bayan_kenv_21), -1, 0
   ; node:tabla_ge_partial_3 opcode:oscil3
   a_tabla_ge_partial_3_asig_168 oscil3 ((k_amp_mid_kout_10 * 0.015) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (((338 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12) * k_motion_bayan_kenv_21), -1, 0
   a_tabla_ge_if_left_56 = ((((a_tabla_ge_partial_1_asig_166 * 1) + (a_tabla_ge_partial_2_asig_167 * 1)) + (a_tabla_ge_partial_3_asig_168 * 1)) + (a_texture_skin_aout_4 * 0.18))
 else
   ; case:tabla_ge_off Other notes: silence
   a_tabla_ge_if_left_56 = 0
 endif
 ; node:tabla_ke_if opcode:If
 if (i_midi_note_inote_8) == (65) then
   ; case:tabla_ke_hit 65: Tabla bayan ke (muted)
   ; node:tabla_ke_partial_1 opcode:oscil3
   a_tabla_ke_partial_1_asig_169 oscil3 (k_amp_snap_kout_6 * 0.06), ((116 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_ke_partial_2 opcode:oscil3
   a_tabla_ke_partial_2_asig_170 oscil3 ((k_amp_tick_kout_4 * 0.022) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), ((267 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   a_tabla_ke_if_left_57 = (((a_tabla_ke_partial_1_asig_169 * 1) + (a_tabla_ke_partial_2_asig_170 * 1)) + (a_texture_skin_aout_4 * 0.64))
 else
   ; case:tabla_ke_off Other notes: silence
   a_tabla_ke_if_left_57 = 0
 endif
 ; node:tabla_bend_if opcode:If
 if (i_midi_note_inote_8) == (66) then
   ; case:tabla_bend_hit 66: Tabla bayan pressure bend
   ; node:tabla_bend_partial_1 opcode:oscil3
   a_tabla_bend_partial_1_asig_171 oscil3 (k_amp_ring_kout_16 * 0.17), (((112 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12) * k_motion_bend_kenv_22), -1, 0
   ; node:tabla_bend_partial_2 opcode:oscil3
   a_tabla_bend_partial_2_asig_172 oscil3 ((k_amp_body_kout_12 * 0.038) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (((224 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12) * k_motion_bend_kenv_22), -1, 0
   ; node:tabla_bend_partial_3 opcode:oscil3
   a_tabla_bend_partial_3_asig_173 oscil3 ((k_amp_mid_kout_10 * 0.015) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (((338 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12) * k_motion_bend_kenv_22), -1, 0
   a_tabla_bend_if_left_58 = ((((a_tabla_bend_partial_1_asig_171 * 1) + (a_tabla_bend_partial_2_asig_172 * 1)) + (a_tabla_bend_partial_3_asig_173 * 1)) + (a_texture_skin_aout_4 * 0.17))
 else
   ; case:tabla_bend_off Other notes: silence
   a_tabla_bend_if_left_58 = 0
 endif
 ; node:tabla_dha_if opcode:If
 if (i_midi_note_inote_8) == (67) then
   ; case:tabla_dha_hit 67: Tabla dha (na + ge)
   ; node:tabla_dha_partial_1 opcode:oscil3
   a_tabla_dha_partial_1_asig_174 oscil3 (k_amp_short_kout_8 * 0.0144), ((261.63 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_dha_partial_2 opcode:oscil3
   a_tabla_dha_partial_2_asig_175 oscil3 ((k_amp_long_kout_14 * 0.0776) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), ((523.26 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_dha_partial_3 opcode:oscil3
   a_tabla_dha_partial_3_asig_176 oscil3 ((k_amp_body_kout_12 * 0.05360000000000001) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), ((784.89 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_dha_partial_4 opcode:oscil3
   a_tabla_dha_partial_4_asig_177 oscil3 ((k_amp_mid_kout_10 * 0.022400000000000003) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), ((1046.52 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_dha_partial_5 opcode:oscil3
   a_tabla_dha_partial_5_asig_178 oscil3 ((k_amp_short_kout_8 * 0.011200000000000002) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), ((1308.15 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_dha_partial_6 opcode:oscil3
   a_tabla_dha_partial_6_asig_179 oscil3 ((k_amp_ring_kout_16 * 0.136) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (((112 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12) * k_motion_bayan_kenv_21), -1, 0
   ; node:tabla_dha_partial_7 opcode:oscil3
   a_tabla_dha_partial_7_asig_180 oscil3 ((k_amp_body_kout_12 * 0.0296) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (((224 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12) * k_motion_bayan_kenv_21), -1, 0
   ; node:tabla_dha_partial_8 opcode:oscil3
   a_tabla_dha_partial_8_asig_181 oscil3 ((k_amp_mid_kout_10 * 0.012) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (((338 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12) * k_motion_bayan_kenv_21), -1, 0
   a_tabla_dha_if_left_59 = ((((((((((a_tabla_dha_partial_1_asig_174 * 1) + (a_tabla_dha_partial_2_asig_175 * 1)) + (a_tabla_dha_partial_3_asig_176 * 1)) + (a_tabla_dha_partial_4_asig_177 * 1)) + (a_tabla_dha_partial_5_asig_178 * 1)) + (a_tabla_dha_partial_6_asig_179 * 1)) + (a_tabla_dha_partial_7_asig_180 * 1)) + (a_tabla_dha_partial_8_asig_181 * 1)) + (a_texture_tap_aout_6 * 0.26)) + (a_texture_skin_aout_4 * 0.15))
 else
   ; case:tabla_dha_off Other notes: silence
   a_tabla_dha_if_left_59 = 0
 endif
 ; node:tabla_dhin_if opcode:If
 if (i_midi_note_inote_8) == (68) then
   ; case:tabla_dhin_hit 68: Tabla dhin (tin + ge)
   ; node:tabla_dhin_partial_1 opcode:oscil3
   a_tabla_dhin_partial_1_asig_182 oscil3 (k_amp_ring_kout_16 * 0.096), ((261.63 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_dhin_partial_2 opcode:oscil3
   a_tabla_dhin_partial_2_asig_183 oscil3 ((k_amp_long_kout_14 * 0.048) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), ((523.26 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_dhin_partial_3 opcode:oscil3
   a_tabla_dhin_partial_3_asig_184 oscil3 ((k_amp_body_kout_12 * 0.0296) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), ((784.89 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_dhin_partial_4 opcode:oscil3
   a_tabla_dhin_partial_4_asig_185 oscil3 ((k_amp_mid_kout_10 * 0.0152) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), ((1046.52 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_dhin_partial_5 opcode:oscil3
   a_tabla_dhin_partial_5_asig_186 oscil3 ((k_amp_ring_kout_16 * 0.136) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (((112 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12) * k_motion_bayan_kenv_21), -1, 0
   ; node:tabla_dhin_partial_6 opcode:oscil3
   a_tabla_dhin_partial_6_asig_187 oscil3 ((k_amp_body_kout_12 * 0.0296) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (((224 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12) * k_motion_bayan_kenv_21), -1, 0
   ; node:tabla_dhin_partial_7 opcode:oscil3
   a_tabla_dhin_partial_7_asig_188 oscil3 ((k_amp_mid_kout_10 * 0.012) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (((338 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12) * k_motion_bayan_kenv_21), -1, 0
   a_tabla_dhin_if_left_60 = (((((((((a_tabla_dhin_partial_1_asig_182 * 1) + (a_tabla_dhin_partial_2_asig_183 * 1)) + (a_tabla_dhin_partial_3_asig_184 * 1)) + (a_tabla_dhin_partial_4_asig_185 * 1)) + (a_tabla_dhin_partial_5_asig_186 * 1)) + (a_tabla_dhin_partial_6_asig_187 * 1)) + (a_tabla_dhin_partial_7_asig_188 * 1)) + (a_texture_tap_aout_6 * 0.14)) + (a_texture_skin_aout_4 * 0.15))
 else
   ; case:tabla_dhin_off Other notes: silence
   a_tabla_dhin_if_left_60 = 0
 endif
 ; node:djembe_slap_if opcode:If
 if (i_midi_note_inote_8) == (42) then
   ; case:djembe_slap_hit 42: Djembe slap
   ; node:djembe_slap_partial_1 opcode:oscil3
   a_djembe_slap_partial_1_asig_107 oscil3 (k_amp_short_kout_8 * 0.048), (235 * i_world_tuning_iout_9), -1, 0
   ; node:djembe_slap_partial_2 opcode:oscil3
   a_djembe_slap_partial_2_asig_108 oscil3 ((k_amp_short_kout_8 * 0.06) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (521 * i_world_tuning_iout_9), -1, 0
   ; node:djembe_slap_partial_3 opcode:oscil3
   a_djembe_slap_partial_3_asig_109 oscil3 ((k_amp_snap_kout_6 * 0.026) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (895 * i_world_tuning_iout_9), -1, 0
   a_djembe_slap_if_left_35 = ((((a_djembe_slap_partial_1_asig_107 * 1) + (a_djembe_slap_partial_2_asig_108 * 1)) + (a_djembe_slap_partial_3_asig_109 * 1)) + (a_texture_slap_aout_8 * 1.05))
 else
   ; case:djembe_slap_off Other notes: silence
   a_djembe_slap_if_left_35 = 0
 endif
 ; node:conga_slap_if opcode:If
 if (i_midi_note_inote_8) == (47) then
   ; case:conga_slap_hit 47: Conga slap
   ; node:conga_slap_partial_1 opcode:oscil3
   a_conga_slap_partial_1_asig_120 oscil3 (k_amp_short_kout_8 * 0.05), (248 * i_world_tuning_iout_9), -1, 0
   ; node:conga_slap_partial_2 opcode:oscil3
   a_conga_slap_partial_2_asig_121 oscil3 ((k_amp_snap_kout_6 * 0.035) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (504 * i_world_tuning_iout_9), -1, 0
   ; node:conga_slap_partial_3 opcode:oscil3
   a_conga_slap_partial_3_asig_122 oscil3 ((k_amp_snap_kout_6 * 0.015) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (812 * i_world_tuning_iout_9), -1, 0
   a_conga_slap_if_left_40 = ((((a_conga_slap_partial_1_asig_120 * 1) + (a_conga_slap_partial_2_asig_121 * 1)) + (a_conga_slap_partial_3_asig_122 * 1)) + (a_texture_slap_aout_8 * 0.87))
 else
   ; case:conga_slap_off Other notes: silence
   a_conga_slap_if_left_40 = 0
 endif
 ; node:darbuka_slap_if opcode:If
 if (i_midi_note_inote_8) == (55) then
   ; case:darbuka_slap_hit 55: Darbuka slap
   ; node:darbuka_slap_partial_1 opcode:oscil3
   a_darbuka_slap_partial_1_asig_143 oscil3 (k_amp_short_kout_8 * 0.055), (318 * i_world_tuning_iout_9), -1, 0
   ; node:darbuka_slap_partial_2 opcode:oscil3
   a_darbuka_slap_partial_2_asig_144 oscil3 ((k_amp_snap_kout_6 * 0.035) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (708 * i_world_tuning_iout_9), -1, 0
   a_darbuka_slap_if_left_48 = (((a_darbuka_slap_partial_1_asig_143 * 1) + (a_darbuka_slap_partial_2_asig_144 * 1)) + (a_texture_slap_aout_8 * 0.82))
 else
   ; case:darbuka_slap_off Other notes: silence
   a_darbuka_slap_if_left_48 = 0
 endif
 ; node:udu_bass_if opcode:If
 if (i_midi_note_inote_8) == (70) then
   ; case:udu_bass_hit 70: Udu bass air pulse
   ; node:udu_bass_partial_1 opcode:oscil3
   a_udu_bass_partial_1_asig_189 oscil3 (k_amp_body_kout_12 * 0.2), ((68 * i_world_tuning_iout_9) * k_motion_udu_kenv_20), -1, 0
   ; node:udu_bass_partial_2 opcode:oscil3
   a_udu_bass_partial_2_asig_190 oscil3 ((k_amp_short_kout_8 * 0.024) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (410 * i_world_tuning_iout_9), -1, 0
   ; node:udu_bass_partial_3 opcode:oscil3
   a_udu_bass_partial_3_asig_191 oscil3 ((k_amp_snap_kout_6 * 0.011) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (685 * i_world_tuning_iout_9), -1, 0
   a_udu_bass_if_left_61 = ((((a_udu_bass_partial_1_asig_189 * 1) + (a_udu_bass_partial_2_asig_190 * 1)) + (a_udu_bass_partial_3_asig_191 * 1)) + (a_texture_air_aout_10 * 0.2))
 else
   ; case:udu_bass_off Other notes: silence
   a_udu_bass_if_left_61 = 0
 endif
 ; node:udu_slap_if opcode:If
 if (i_midi_note_inote_8) == (72) then
   ; case:udu_slap_hit 72: Udu hole slap
   ; node:udu_slap_partial_1 opcode:oscil3
   a_udu_slap_partial_1_asig_195 oscil3 (k_amp_short_kout_8 * 0.11), ((95 * i_world_tuning_iout_9) * k_motion_udu_kenv_20), -1, 0
   ; node:udu_slap_partial_2 opcode:oscil3
   a_udu_slap_partial_2_asig_196 oscil3 ((k_amp_short_kout_8 * 0.041) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (548 * i_world_tuning_iout_9), -1, 0
   ; node:udu_slap_partial_3 opcode:oscil3
   a_udu_slap_partial_3_asig_197 oscil3 ((k_amp_snap_kout_6 * 0.016) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (920 * i_world_tuning_iout_9), -1, 0
   a_udu_slap_if_left_63 = (((((a_udu_slap_partial_1_asig_195 * 1) + (a_udu_slap_partial_2_asig_196 * 1)) + (a_udu_slap_partial_3_asig_197 * 1)) + (a_texture_air_aout_10 * 0.7)) + (a_texture_tap_aout_6 * 0.25))
 else
   ; case:udu_slap_off Other notes: silence
   a_udu_slap_if_left_63 = 0
 endif
 ; node:cabasa_short_if opcode:If
 if (i_midi_note_inote_8) == (87) then
   ; case:cabasa_short_hit 87: Cabasa short
   ; node:cabasa_short_ridges opcode:vco2
   a_cabasa_short_ridges_asig_243 vco2 1, 145, 2, 0.28, 0, 0.5
   ; node:cabasa_short_scrape opcode:a_mul
   a_cabasa_short_scrape_aout_244 = ((a_texture_beads_short_aout_14 * ((0.5 + (0.5 * a_cabasa_short_ridges_asig_243))))) * (1.7)
   a_cabasa_short_if_left_77 = (a_cabasa_short_scrape_aout_244 * 1)
 else
   ; case:cabasa_short_off Other notes: silence
   a_cabasa_short_if_left_77 = 0
 endif
 ; node:guiro_short_if opcode:If
 if (i_midi_note_inote_8) == (89) then
   ; case:guiro_short_hit 89: Guiro short
   ; node:guiro_short_partial_1 opcode:oscil3
   a_guiro_short_partial_1_asig_247 oscil3 (k_amp_short_kout_8 * 0.022), (2470 * i_world_tuning_iout_9), -1, 0
   ; node:guiro_short_partial_2 opcode:oscil3
   a_guiro_short_partial_2_asig_248 oscil3 ((k_amp_snap_kout_6 * 0.01) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (4010 * i_world_tuning_iout_9), -1, 0
   ; node:guiro_short_ridges opcode:vco2
   a_guiro_short_ridges_asig_249 vco2 1, 72, 2, 0.14, 0, 0.5
   ; node:guiro_short_scrape opcode:a_mul
   a_guiro_short_scrape_aout_250 = ((a_texture_scrape_short_aout_18 * ((0.5 + (0.5 * a_guiro_short_ridges_asig_249))))) * (2.3)
   a_guiro_short_if_left_79 = (((a_guiro_short_partial_1_asig_247 * 1) + (a_guiro_short_partial_2_asig_248 * 1)) + (a_guiro_short_scrape_aout_250 * 1))
 else
   ; case:guiro_short_off Other notes: silence
   a_guiro_short_if_left_79 = 0
 endif
 ; node:shekere_short_if opcode:If
 if (i_midi_note_inote_8) == (84) then
   ; case:shekere_short_hit 84: Shekere short
   ; node:shekere_short_ridges opcode:vco2
   a_shekere_short_ridges_asig_231 vco2 1, 81, 2, 0.25, 0, 0.5
   ; node:shekere_short_shaker opcode:sekere
   a_shekere_short_shaker_asig_228 sekere (i_velocity_ampmidi_iamp_3 * 0.8), 0.01, 64, 0.25, 0
   ; node:shekere_short_shape opcode:k_to_a
   a_shekere_short_shape_aout_229 interp (k_amp_short_kout_8 * ((0.65 + (0.35 * i_world_brightness_iout_11))))
   ; node:shekere_short_scrape opcode:a_mul
   a_shekere_short_scrape_aout_232 = ((a_texture_shekere_short_aout_26 * ((0.5 + (0.5 * a_shekere_short_ridges_asig_231))))) * (0.9)
   ; node:shekere_short_shaped opcode:a_mul
   a_shekere_short_shaped_aout_230 = (a_shekere_short_shaker_asig_228) * (a_shekere_short_shape_aout_229)
   a_shekere_short_if_left_74 = ((a_shekere_short_shaped_aout_230 * 1) + (a_shekere_short_scrape_aout_232 * 1))
 else
   ; case:shekere_short_off Other notes: silence
   a_shekere_short_if_left_74 = 0
 endif
 ; node:shekere_accent_if opcode:If
 if (i_midi_note_inote_8) == (85) then
   ; case:shekere_accent_hit 85: Shekere accent
   ; node:shekere_accent_ridges opcode:vco2
   a_shekere_accent_ridges_asig_236 vco2 1, 64, 2, 0.33, 0, 0.5
   ; node:shekere_accent_shaker opcode:sekere
   a_shekere_accent_shaker_asig_233 sekere (i_velocity_ampmidi_iamp_3 * 0.28), 0.01, 96, 0.55, 0
   ; node:shekere_accent_shape opcode:k_to_a
   a_shekere_accent_shape_aout_234 interp (k_amp_mid_kout_10 * ((0.65 + (0.35 * i_world_brightness_iout_11))))
   ; node:shekere_accent_scrape opcode:a_mul
   a_shekere_accent_scrape_aout_237 = ((a_texture_shekere_short_aout_26 * ((0.5 + (0.5 * a_shekere_accent_ridges_asig_236))))) * (1.15)
   ; node:shekere_accent_shaped opcode:a_mul
   a_shekere_accent_shaped_aout_235 = (a_shekere_accent_shaker_asig_233) * (a_shekere_accent_shape_aout_234)
   a_shekere_accent_if_left_75 = ((a_shekere_accent_shaped_aout_235 * 1) + (a_shekere_accent_scrape_aout_237 * 1))
 else
   ; case:shekere_accent_off Other notes: silence
   a_shekere_accent_if_left_75 = 0
 endif
 ; node:cajon_bass_if opcode:If
 if (i_midi_note_inote_8) == (74) then
   ; case:cajon_bass_hit 74: Cajon bass
   ; node:cajon_bass_partial_1 opcode:oscil3
   a_cajon_bass_partial_1_asig_198 oscil3 (k_amp_body_kout_12 * 0.17), ((78 * i_world_tuning_iout_9) * k_motion_drop_kenv_17), -1, 0
   ; node:cajon_bass_partial_2 opcode:oscil3
   a_cajon_bass_partial_2_asig_199 oscil3 ((k_amp_short_kout_8 * 0.038) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (155 * i_world_tuning_iout_9), -1, 0
   ; node:cajon_bass_partial_3 opcode:oscil3
   a_cajon_bass_partial_3_asig_200 oscil3 ((k_amp_snap_kout_6 * 0.017) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (231 * i_world_tuning_iout_9), -1, 0
   a_cajon_bass_if_left_64 = (((((a_cajon_bass_partial_1_asig_198 * 1) + (a_cajon_bass_partial_2_asig_199 * 1)) + (a_cajon_bass_partial_3_asig_200 * 1)) + (a_texture_wires_aout_12 * 0.16)) + (a_texture_mallet_aout_2 * 0.16))
 else
   ; case:cajon_bass_off Other notes: silence
   a_cajon_bass_if_left_64 = 0
 endif
 ; node:cajon_slap_if opcode:If
 if (i_midi_note_inote_8) == (75) then
   ; case:cajon_slap_hit 75: Cajon snare slap
   ; node:cajon_slap_partial_1 opcode:oscil3
   a_cajon_slap_partial_1_asig_201 oscil3 (k_amp_short_kout_8 * 0.078), (185 * i_world_tuning_iout_9), -1, 0
   ; node:cajon_slap_partial_2 opcode:oscil3
   a_cajon_slap_partial_2_asig_202 oscil3 ((k_amp_snap_kout_6 * 0.024) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (394 * i_world_tuning_iout_9), -1, 0
   a_cajon_slap_if_left_65 = ((((a_cajon_slap_partial_1_asig_201 * 1) + (a_cajon_slap_partial_2_asig_202 * 1)) + (a_texture_wires_aout_12 * 1)) + (a_texture_slap_aout_8 * 0.35))
 else
   ; case:cajon_slap_off Other notes: silence
   a_cajon_slap_if_left_65 = 0
 endif
 ; node:cajon_edge_if opcode:If
 if (i_midi_note_inote_8) == (76) then
   ; case:cajon_edge_hit 76: Cajon edge
   ; node:cajon_edge_partial_1 opcode:oscil3
   a_cajon_edge_partial_1_asig_203 oscil3 (k_amp_snap_kout_6 * 0.07), (383 * i_world_tuning_iout_9), -1, 0
   ; node:cajon_edge_partial_2 opcode:oscil3
   a_cajon_edge_partial_2_asig_204 oscil3 ((k_amp_tick_kout_4 * 0.032) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (926 * i_world_tuning_iout_9), -1, 0
   a_cajon_edge_if_left_66 = ((((a_cajon_edge_partial_1_asig_203 * 1) + (a_cajon_edge_partial_2_asig_204 * 1)) + (a_texture_wires_aout_12 * 0.3)) + (a_texture_tap_aout_6 * 0.44))
 else
   ; case:cajon_edge_off Other notes: silence
   a_cajon_edge_if_left_66 = 0
 endif
 ; node:tambourine_hit_if opcode:If
 if (i_midi_note_inote_8) == (91) then
   ; case:tambourine_hit_hit 91: Tambourine hit
   ; node:tambourine_hit_partial_1 opcode:oscil3
   a_tambourine_hit_partial_1_asig_255 oscil3 (k_amp_short_kout_8 * 0.057), (190 * i_world_tuning_iout_9), -1, 0
   ; node:tambourine_hit_partial_2 opcode:oscil3
   a_tambourine_hit_partial_2_asig_256 oscil3 ((k_amp_mid_kout_10 * 0.046) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (2300 * i_world_tuning_iout_9), -1, 0
   ; node:tambourine_hit_partial_3 opcode:oscil3
   a_tambourine_hit_partial_3_asig_257 oscil3 ((k_amp_body_kout_12 * 0.034) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (5600 * i_world_tuning_iout_9), -1, 0
   ; node:tambourine_hit_partial_4 opcode:oscil3
   a_tambourine_hit_partial_4_asig_258 oscil3 ((k_amp_mid_kout_10 * 0.018) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (8100 * i_world_tuning_iout_9), -1, 0
   a_tambourine_hit_if_left_81 = (((((a_tambourine_hit_partial_1_asig_255 * 1) + (a_tambourine_hit_partial_2_asig_256 * 1)) + (a_tambourine_hit_partial_3_asig_257 * 1)) + (a_tambourine_hit_partial_4_asig_258 * 1)) + (a_texture_jingle_short_aout_22 * 0.65))
 else
   ; case:tambourine_hit_off Other notes: silence
   a_tambourine_hit_if_left_81 = 0
 endif
 ; node:tambourine_muted_if opcode:If
 if (i_midi_note_inote_8) == (93) then
   ; case:tambourine_muted_hit 93: Tambourine damped
   ; node:tambourine_muted_partial_1 opcode:oscil3
   a_tambourine_muted_partial_1_asig_264 oscil3 (k_amp_snap_kout_6 * 0.036), (205 * i_world_tuning_iout_9), -1, 0
   ; node:tambourine_muted_partial_2 opcode:oscil3
   a_tambourine_muted_partial_2_asig_265 oscil3 ((k_amp_snap_kout_6 * 0.035) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (2300 * i_world_tuning_iout_9), -1, 0
   ; node:tambourine_muted_partial_3 opcode:oscil3
   a_tambourine_muted_partial_3_asig_266 oscil3 ((k_amp_short_kout_8 * 0.025) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (5600 * i_world_tuning_iout_9), -1, 0
   ; node:tambourine_muted_partial_4 opcode:oscil3
   a_tambourine_muted_partial_4_asig_267 oscil3 ((k_amp_snap_kout_6 * 0.012) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (8100 * i_world_tuning_iout_9), -1, 0
   a_tambourine_muted_if_left_83 = (((((a_tambourine_muted_partial_1_asig_264 * 1) + (a_tambourine_muted_partial_2_asig_265 * 1)) + (a_tambourine_muted_partial_3_asig_266 * 1)) + (a_tambourine_muted_partial_4_asig_267 * 1)) + (a_texture_jingle_short_aout_22 * 0.45))
 else
   ; case:tambourine_muted_off Other notes: silence
   a_tambourine_muted_if_left_83 = 0
 endif
 ; node:cabasa_long_if opcode:If
 if (i_midi_note_inote_8) == (88) then
   ; case:cabasa_long_hit 88: Cabasa long
   ; node:cabasa_long_ridges opcode:vco2
   a_cabasa_long_ridges_asig_245 vco2 1, 117, 2, 0.35, 0, 0.5
   ; node:cabasa_long_scrape opcode:a_mul
   a_cabasa_long_scrape_aout_246 = ((a_texture_beads_long_aout_16 * ((0.5 + (0.5 * a_cabasa_long_ridges_asig_245))))) * (1.5)
   a_cabasa_long_if_left_78 = (a_cabasa_long_scrape_aout_246 * 1)
 else
   ; case:cabasa_long_off Other notes: silence
   a_cabasa_long_if_left_78 = 0
 endif
 ; node:guiro_long_if opcode:If
 if (i_midi_note_inote_8) == (90) then
   ; case:guiro_long_hit 90: Guiro long
   ; node:guiro_long_partial_1 opcode:oscil3
   a_guiro_long_partial_1_asig_251 oscil3 (k_amp_body_kout_12 * 0.018), (2470 * i_world_tuning_iout_9), -1, 0
   ; node:guiro_long_partial_2 opcode:oscil3
   a_guiro_long_partial_2_asig_252 oscil3 ((k_amp_mid_kout_10 * 0.008) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (4010 * i_world_tuning_iout_9), -1, 0
   ; node:guiro_long_ridges opcode:vco2
   a_guiro_long_ridges_asig_253 vco2 1, 48, 2, 0.18, 0, 0.5
   ; node:guiro_long_scrape opcode:a_mul
   a_guiro_long_scrape_aout_254 = ((a_texture_scrape_long_aout_20 * ((0.5 + (0.5 * a_guiro_long_ridges_asig_253))))) * (2)
   a_guiro_long_if_left_80 = (((a_guiro_long_partial_1_asig_251 * 1) + (a_guiro_long_partial_2_asig_252 * 1)) + (a_guiro_long_scrape_aout_254 * 1))
 else
   ; case:guiro_long_off Other notes: silence
   a_guiro_long_if_left_80 = 0
 endif
 ; node:shekere_long_if opcode:If
 if (i_midi_note_inote_8) == (86) then
   ; case:shekere_long_hit 86: Shekere long
   ; node:shekere_long_ridges opcode:vco2
   a_shekere_long_ridges_asig_241 vco2 1, 48, 2, 0.4, 0, 0.5
   ; node:shekere_long_shaker opcode:sekere
   a_shekere_long_shaker_asig_238 sekere (i_velocity_ampmidi_iamp_3 * 0.25), 0.01, 128, 0.7, 0
   ; node:shekere_long_shape opcode:k_to_a
   a_shekere_long_shape_aout_239 interp (k_amp_body_kout_12 * ((0.65 + (0.35 * i_world_brightness_iout_11))))
   ; node:shekere_long_scrape opcode:a_mul
   a_shekere_long_scrape_aout_242 = ((a_texture_shekere_long_aout_28 * ((0.5 + (0.5 * a_shekere_long_ridges_asig_241))))) * (1.1)
   ; node:shekere_long_shaped opcode:a_mul
   a_shekere_long_shaped_aout_240 = (a_shekere_long_shaker_asig_238) * (a_shekere_long_shape_aout_239)
   a_shekere_long_if_left_76 = ((a_shekere_long_shaped_aout_240 * 1) + (a_shekere_long_scrape_aout_242 * 1))
 else
   ; case:shekere_long_off Other notes: silence
   a_shekere_long_if_left_76 = 0
 endif
 ; node:tambourine_shake_if opcode:If
 if (i_midi_note_inote_8) == (92) then
   ; case:tambourine_shake_hit 92: Tambourine shake
   ; node:tambourine_shake_partial_1 opcode:oscil3
   a_tambourine_shake_partial_1_asig_259 oscil3 (k_amp_body_kout_12 * 0.033), (2300 * i_world_tuning_iout_9), -1, 0
   ; node:tambourine_shake_partial_2 opcode:oscil3
   a_tambourine_shake_partial_2_asig_260 oscil3 ((k_amp_ring_kout_16 * 0.028) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (5600 * i_world_tuning_iout_9), -1, 0
   ; node:tambourine_shake_partial_3 opcode:oscil3
   a_tambourine_shake_partial_3_asig_261 oscil3 ((k_amp_body_kout_12 * 0.014) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (8100 * i_world_tuning_iout_9), -1, 0
   ; node:tambourine_shake_ridges opcode:vco2
   a_tambourine_shake_ridges_asig_262 vco2 1, 22, 2, 0.3, 0, 0.5
   ; node:tambourine_shake_scrape opcode:a_mul
   a_tambourine_shake_scrape_aout_263 = ((a_texture_jingle_long_aout_24 * ((0.5 + (0.5 * a_tambourine_shake_ridges_asig_262))))) * (1)
   a_tambourine_shake_if_left_82 = ((((a_tambourine_shake_partial_1_asig_259 * 1) + (a_tambourine_shake_partial_2_asig_260 * 1)) + (a_tambourine_shake_partial_3_asig_261 * 1)) + (a_tambourine_shake_scrape_aout_263 * 1))
 else
   ; case:tambourine_shake_off Other notes: silence
   a_tambourine_shake_if_left_82 = 0
 endif
 ; node:output_pan2 opcode:pan2
 a_output_pan2_aleft_84, a_output_pan2_aright_85 pan2 (2.5 * (((((((((((((((((((((((((((((((((((((((((((((((((((((((a_dunun_open_if_left_29 + a_dunun_muted_if_left_30) + a_surdo_open_if_left_31) + a_surdo_muted_if_left_32) + a_djembe_bass_if_left_33) + a_djembe_tone_if_left_34) + a_djembe_slap_if_left_35) + a_djembe_muted_if_left_36) + a_conga_low_if_left_37) + a_conga_high_if_left_38) + a_conga_muted_if_left_39) + a_conga_slap_if_left_40) + a_bongo_low_if_left_41) + a_bongo_high_if_left_42) + a_bongo_rim_if_left_43) + a_bongo_muted_if_left_44) + a_darbuka_doum_if_left_45) + a_darbuka_tek_if_left_46) + a_darbuka_ka_if_left_47) + a_darbuka_slap_if_left_48) + a_frame_center_if_left_49) + a_frame_rim_if_left_50) + a_frame_muted_if_left_51) + a_tabla_na_if_left_52) + a_tabla_tin_if_left_53) + a_tabla_tun_if_left_54) + a_tabla_te_if_left_55) + a_tabla_ge_if_left_56) + a_tabla_ke_if_left_57) + a_tabla_bend_if_left_58) + a_tabla_dha_if_left_59) + a_tabla_dhin_if_left_60) + a_udu_bass_if_left_61) + a_udu_tap_if_left_62) + a_udu_slap_if_left_63) + a_cajon_bass_if_left_64) + a_cajon_slap_if_left_65) + a_cajon_edge_if_left_66) + a_claves_if_left_67) + a_woodblock_low_if_left_68) + a_woodblock_high_if_left_69) + a_cowbell_open_if_left_70) + a_cowbell_muted_if_left_71) + a_agogo_low_if_left_72) + a_agogo_high_if_left_73) + a_shekere_short_if_left_74) + a_shekere_accent_if_left_75) + a_shekere_long_if_left_76) + a_cabasa_short_if_left_77) + a_cabasa_long_if_left_78) + a_guiro_short_if_left_79) + a_guiro_long_if_left_80) + a_tambourine_hit_if_left_81) + a_tambourine_shake_if_left_82) + a_tambourine_muted_if_left_83))), 0.5, 0
 ; node:output_left opcode:outleta
 outleta "left", a_output_pan2_aleft_84
 ; node:output_right opcode:outleta
 outleta "right", a_output_pan2_aright_85
endin

; mixer stage patch:tabla
; patch:7cf6abaf-31f2-4b4a-858c-09b078a7d729 name:World Drumkit channel:10 always_on:false
; instance:tabla csound:vcs_mix_85a517c35205acb139539cdd
; description: Sample-free, velocity-sensitive world percussion: 55 strokes, selected by If + MIDI notnum. Custom map; other notes are silent. Short notes retain decay; held notes do not sustain. Four performance controls: Kit tuning, Decay, Brightness, Tabla tuning (independent multiplier; default dayan C4, 261.63 Hz). Synthetic tabla bol approximations; ge bend is preset, not live pressure. Mono voices feed Stereo Output; route to Master.
;   
;   Deep foundation
;   - 36: Dunun open; 37: Dunun muted
;   - 38: Surdo open; 39: Surdo damped
;   
;   Hand drums
;   - 40: Djembe bass; 41: tone; 42: slap; 43: muted
;   - 44: Conga low open; 45: high open; 46: muted; 47: slap
;   - 48: Bongo low open; 49: high open; 50: rim; 51: muted
;   - 52: Darbuka doum; 53: tek; 54: ka; 55: slap
;   
;   Resonant / expressive
;   - 56: Frame drum centre; 57: rim; 58: muted
;   - 60: Tabla dayan na; 61: tin; 62: tun; 63: te (dry)
;   - 64: Tabla bayan ge; 65: ke (muted); 66: pressure bend
;   - 67: Tabla dha (na + ge); 68: dhin (tin + ge)
;   - 70: Udu bass air pulse; 71: clay tap; 72: hole slap
;   
;   Wood / dry accents
;   - 74: Cajon bass; 75: snare slap; 76: edge
;   - 77: Claves; 78: Woodblock low; 79: Woodblock high
;   
;   Metal
;   - 80: Cowbell open; 81: damped
;   - 82: Agogo low; 83: Agogo high
;   
;   Shakers / scrapers / jingles
;   - 84: Shekere short; 85: accent; 86: long
;   - 87: Cabasa short; 88: Cabasa long
;   - 89: Guiro short; 90: Guiro long
;   - 91: Tambourine hit; 92: shake; 93: damped
; trigger: MIDI channel 10 / score notes; score instrument number: 8
instr vcs_mix_85a517c35205acb139539cdd
 i_vcs_internal_score_note_p4 = p4
 i_vcs_internal_score_velocity_p5 = p5
 ; node:env_attack_const opcode:const_i
 i_env_attack_const_iout_4 = 0.0007
 ; node:env_decay_const opcode:const_i
 i_env_decay_const_iout_5 = 0.002
 ; node:env_release_const opcode:const_i
 i_env_release_const_iout_7 = 4
 ; node:env_sustain_const opcode:const_i
 i_env_sustain_const_iout_6 = 1
 ; node:midi_note opcode:notnum
 i_midi_note_inote_8 = p4
 ; node:motion_bayan opcode:expseg
 k_motion_bayan_kenv_21 expseg 1.06, 0.08, 1
 ; node:motion_bend opcode:expseg
 k_motion_bend_kenv_22 expseg 0.96, 0.08, 1.31, 0.2, 0.91, 0.3, 1
 ; node:motion_deep opcode:expseg
 k_motion_deep_kenv_18 expseg 1.55, 0.014, 1.07, 0.1, 1
 ; node:motion_drop opcode:expseg
 k_motion_drop_kenv_17 expseg 1.3, 0.012, 1.04, 0.08, 1
 ; node:motion_small opcode:expseg
 k_motion_small_kenv_19 expseg 1.08, 0.016, 1
 ; node:motion_udu opcode:expseg
 k_motion_udu_kenv_20 expseg 1.22, 0.02, 1
 ; node:pitch_cpsmidi opcode:cpsmidi
 i_pitch_cpsmidi_kfreq_1 = cpsmidinn(p4)
 ; node:velocity_scale_const opcode:const_i
 i_velocity_scale_const_iout_2 = 1
 i_world_brightness_iout_11 chnget "__vcs_perf_0ec185921cb5c255a658441c802d486d8bfd39f5e5571d622a347114eb92e20b"
 i_world_decay_iout_10 chnget "__vcs_perf_45676c8c74957ce6dcf03f3662030dac16c6b70b140a3ef1ed1821972bf9cb72"
 i_world_tabla_tuning_iout_12 chnget "__vcs_perf_69e11288955167830908671e0ce083a28e776f5c0a6c0fc4df9b04cd895c996a"
 i_world_tuning_iout_9 chnget "__vcs_perf_8a5d2c52e48a722950fbda7552346656e9cb4a8e6c599e0c7a01253891607df9"
 ; node:velocity_ampmidi opcode:ampmidi
 i_velocity_ampmidi_iamp_3 = ((p5 / 128) * (i_velocity_scale_const_iout_2))
 ; node:amp_madsr opcode:madsr
 k_amp_madsr_kenv_1 madsr i_env_attack_const_iout_4, i_env_decay_const_iout_5, i_env_sustain_const_iout_6, (4 * i_world_decay_iout_10), 0, -1
 ; node:env_tick opcode:expseg
 k_env_tick_kenv_3 expseg 1, (0.018 * i_world_decay_iout_10), 0.001, (0.006299999999999999 * i_world_decay_iout_10), 1e-06
 ; node:env_snap opcode:expseg
 k_env_snap_kenv_5 expseg 1, (0.055 * i_world_decay_iout_10), 0.001, (0.01925 * i_world_decay_iout_10), 1e-06
 ; node:env_short opcode:expseg
 k_env_short_kenv_7 expseg 1, (0.12 * i_world_decay_iout_10), 0.001, (0.041999999999999996 * i_world_decay_iout_10), 1e-06
 ; node:env_mid opcode:expseg
 k_env_mid_kenv_9 expseg 1, (0.23 * i_world_decay_iout_10), 0.001, (0.0805 * i_world_decay_iout_10), 1e-06
 ; node:env_body opcode:expseg
 k_env_body_kenv_11 expseg 1, (0.4 * i_world_decay_iout_10), 0.001, (0.13999999999999999 * i_world_decay_iout_10), 1e-06
 ; node:env_long opcode:expseg
 k_env_long_kenv_13 expseg 1, (0.65 * i_world_decay_iout_10), 0.001, (0.22749999999999998 * i_world_decay_iout_10), 1e-06
 ; node:env_ring opcode:expseg
 k_env_ring_kenv_15 expseg 1, (0.9 * i_world_decay_iout_10), 0.001, (0.315 * i_world_decay_iout_10), 1e-06
 ; node:velocity_gate opcode:k_mul
 k_velocity_gate_kout_2 = ((i_velocity_ampmidi_iamp_3 * k_amp_madsr_kenv_1)) * (1)
 ; node:amp_tick opcode:k_mul
 k_amp_tick_kout_4 = (k_env_tick_kenv_3) * (k_velocity_gate_kout_2)
 ; node:amp_snap opcode:k_mul
 k_amp_snap_kout_6 = (k_env_snap_kenv_5) * (k_velocity_gate_kout_2)
 ; node:amp_short opcode:k_mul
 k_amp_short_kout_8 = (k_env_short_kenv_7) * (k_velocity_gate_kout_2)
 ; node:amp_mid opcode:k_mul
 k_amp_mid_kout_10 = (k_env_mid_kenv_9) * (k_velocity_gate_kout_2)
 ; node:amp_body opcode:k_mul
 k_amp_body_kout_12 = (k_env_body_kenv_11) * (k_velocity_gate_kout_2)
 ; node:amp_long opcode:k_mul
 k_amp_long_kout_14 = (k_env_long_kenv_13) * (k_velocity_gate_kout_2)
 ; node:amp_ring opcode:k_mul
 k_amp_ring_kout_16 = (k_env_ring_kenv_15) * (k_velocity_gate_kout_2)
 ; node:noise_tap opcode:noise
 a_noise_tap_aout_5 noise ((k_amp_tick_kout_4 * 0.3) * ((0.7 + (0.3 * i_world_brightness_iout_11)))), 0
 ; node:noise_mallet opcode:noise
 a_noise_mallet_aout_1 noise ((k_amp_snap_kout_6 * 0.24) * ((0.7 + (0.3 * i_world_brightness_iout_11)))), 0.25
 ; node:noise_skin opcode:noise
 a_noise_skin_aout_3 noise ((k_amp_snap_kout_6 * 0.19) * ((0.7 + (0.3 * i_world_brightness_iout_11)))), 0.1
 ; node:noise_slap opcode:noise
 a_noise_slap_aout_7 noise ((k_amp_short_kout_8 * 0.27) * ((0.7 + (0.3 * i_world_brightness_iout_11)))), 0
 ; node:noise_air opcode:noise
 a_noise_air_aout_9 noise ((k_amp_short_kout_8 * 0.18) * ((0.7 + (0.3 * i_world_brightness_iout_11)))), 0.4
 ; node:noise_beads_short opcode:noise
 a_noise_beads_short_aout_13 noise ((k_amp_short_kout_8 * 0.4) * ((0.7 + (0.3 * i_world_brightness_iout_11)))), 0
 ; node:noise_scrape_short opcode:noise
 a_noise_scrape_short_aout_17 noise ((k_amp_short_kout_8 * 0.46) * ((0.7 + (0.3 * i_world_brightness_iout_11)))), 0
 ; node:noise_shekere_short opcode:noise
 a_noise_shekere_short_aout_25 noise ((k_amp_short_kout_8 * 0.28) * ((0.7 + (0.3 * i_world_brightness_iout_11)))), 0.12
 ; node:noise_wires opcode:noise
 a_noise_wires_aout_11 noise ((k_amp_mid_kout_10 * 0.25) * ((0.7 + (0.3 * i_world_brightness_iout_11)))), 0
 ; node:noise_jingle_short opcode:noise
 a_noise_jingle_short_aout_21 noise ((k_amp_mid_kout_10 * 0.26) * ((0.7 + (0.3 * i_world_brightness_iout_11)))), 0
 ; node:noise_beads_long opcode:noise
 a_noise_beads_long_aout_15 noise ((k_amp_body_kout_12 * 0.4) * ((0.7 + (0.3 * i_world_brightness_iout_11)))), 0
 ; node:noise_scrape_long opcode:noise
 a_noise_scrape_long_aout_19 noise ((k_amp_body_kout_12 * 0.42) * ((0.7 + (0.3 * i_world_brightness_iout_11)))), 0
 ; node:noise_shekere_long opcode:noise
 a_noise_shekere_long_aout_27 noise ((k_amp_body_kout_12 * 0.26) * ((0.7 + (0.3 * i_world_brightness_iout_11)))), 0.12
 ; node:noise_jingle_long opcode:noise
 a_noise_jingle_long_aout_23 noise ((k_amp_ring_kout_16 * 0.25) * ((0.7 + (0.3 * i_world_brightness_iout_11)))), 0
 ; node:texture_tap opcode:butterbp
 a_texture_tap_aout_6 butterbp a_noise_tap_aout_5, (4300 * i_world_brightness_iout_11), 3800, 0
 ; node:texture_mallet opcode:butterbp
 a_texture_mallet_aout_2 butterbp a_noise_mallet_aout_1, (950 * i_world_brightness_iout_11), 1400, 0
 ; node:texture_skin opcode:butterbp
 a_texture_skin_aout_4 butterbp a_noise_skin_aout_3, (1600 * i_world_brightness_iout_11), 2200, 0
 ; node:texture_slap opcode:butterbp
 a_texture_slap_aout_8 butterbp a_noise_slap_aout_7, (3800 * i_world_brightness_iout_11), 4600, 0
 ; node:texture_air opcode:butterbp
 a_texture_air_aout_10 butterbp a_noise_air_aout_9, (800 * i_world_brightness_iout_11), 1200, 0
 ; node:texture_beads_short opcode:butterbp
 a_texture_beads_short_aout_14 butterbp a_noise_beads_short_aout_13, (4500 * i_world_brightness_iout_11), 6000, 0
 ; node:texture_scrape_short opcode:butterbp
 a_texture_scrape_short_aout_18 butterbp a_noise_scrape_short_aout_17, (2650 * i_world_brightness_iout_11), 2400, 0
 ; node:texture_shekere_short opcode:butterbp
 a_texture_shekere_short_aout_26 butterbp a_noise_shekere_short_aout_25, (2400 * i_world_brightness_iout_11), 3500, 0
 ; node:texture_wires opcode:butterbp
 a_texture_wires_aout_12 butterbp a_noise_wires_aout_11, (3200 * i_world_brightness_iout_11), 4800, 0
 ; node:texture_jingle_short opcode:butterbp
 a_texture_jingle_short_aout_22 butterbp a_noise_jingle_short_aout_21, (6600 * i_world_brightness_iout_11), 6200, 0
 ; node:texture_beads_long opcode:butterbp
 a_texture_beads_long_aout_16 butterbp a_noise_beads_long_aout_15, (4500 * i_world_brightness_iout_11), 6000, 0
 ; node:texture_scrape_long opcode:butterbp
 a_texture_scrape_long_aout_20 butterbp a_noise_scrape_long_aout_19, (2650 * i_world_brightness_iout_11), 2400, 0
 ; node:texture_shekere_long opcode:butterbp
 a_texture_shekere_long_aout_28 butterbp a_noise_shekere_long_aout_27, (2400 * i_world_brightness_iout_11), 3500, 0
 ; node:texture_jingle_long opcode:butterbp
 a_texture_jingle_long_aout_24 butterbp a_noise_jingle_long_aout_23, (6600 * i_world_brightness_iout_11), 6200, 0
 ; node:bongo_low_if opcode:If
 if (i_midi_note_inote_8) == (48) then
   ; case:bongo_low_hit 48: Bongo low open
   ; node:bongo_low_partial_1 opcode:oscil3
   a_bongo_low_partial_1_asig_123 oscil3 (k_amp_body_kout_12 * 0.14), ((292 * i_world_tuning_iout_9) * k_motion_small_kenv_19), -1, 0
   ; node:bongo_low_partial_2 opcode:oscil3
   a_bongo_low_partial_2_asig_124 oscil3 ((k_amp_mid_kout_10 * 0.05) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (475 * i_world_tuning_iout_9), -1, 0
   ; node:bongo_low_partial_3 opcode:oscil3
   a_bongo_low_partial_3_asig_125 oscil3 ((k_amp_short_kout_8 * 0.022) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (647 * i_world_tuning_iout_9), -1, 0
   a_bongo_low_if_left_41 = ((((a_bongo_low_partial_1_asig_123 * 1) + (a_bongo_low_partial_2_asig_124 * 1)) + (a_bongo_low_partial_3_asig_125 * 1)) + (a_texture_tap_aout_6 * 0.45))
 else
   ; case:bongo_low_off Other notes: silence
   a_bongo_low_if_left_41 = 0
 endif
 ; node:bongo_high_if opcode:If
 if (i_midi_note_inote_8) == (49) then
   ; case:bongo_high_hit 49: Bongo high open
   ; node:bongo_high_partial_1 opcode:oscil3
   a_bongo_high_partial_1_asig_126 oscil3 (k_amp_mid_kout_10 * 0.13), ((394 * i_world_tuning_iout_9) * k_motion_small_kenv_19), -1, 0
   ; node:bongo_high_partial_2 opcode:oscil3
   a_bongo_high_partial_2_asig_127 oscil3 ((k_amp_short_kout_8 * 0.05) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (642 * i_world_tuning_iout_9), -1, 0
   ; node:bongo_high_partial_3 opcode:oscil3
   a_bongo_high_partial_3_asig_128 oscil3 ((k_amp_snap_kout_6 * 0.022) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (873 * i_world_tuning_iout_9), -1, 0
   a_bongo_high_if_left_42 = ((((a_bongo_high_partial_1_asig_126 * 1) + (a_bongo_high_partial_2_asig_127 * 1)) + (a_bongo_high_partial_3_asig_128 * 1)) + (a_texture_tap_aout_6 * 0.5))
 else
   ; case:bongo_high_off Other notes: silence
   a_bongo_high_if_left_42 = 0
 endif
 ; node:bongo_rim_if opcode:If
 if (i_midi_note_inote_8) == (50) then
   ; case:bongo_rim_hit 50: Bongo rim
   ; node:bongo_rim_partial_1 opcode:oscil3
   a_bongo_rim_partial_1_asig_129 oscil3 (k_amp_short_kout_8 * 0.09), (790 * i_world_tuning_iout_9), -1, 0
   ; node:bongo_rim_partial_2 opcode:oscil3
   a_bongo_rim_partial_2_asig_130 oscil3 ((k_amp_snap_kout_6 * 0.045) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (1435 * i_world_tuning_iout_9), -1, 0
   ; node:bongo_rim_partial_3 opcode:oscil3
   a_bongo_rim_partial_3_asig_131 oscil3 ((k_amp_tick_kout_4 * 0.015) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (2045 * i_world_tuning_iout_9), -1, 0
   a_bongo_rim_if_left_43 = ((((a_bongo_rim_partial_1_asig_129 * 1) + (a_bongo_rim_partial_2_asig_130 * 1)) + (a_bongo_rim_partial_3_asig_131 * 1)) + (a_texture_tap_aout_6 * 0.65))
 else
   ; case:bongo_rim_off Other notes: silence
   a_bongo_rim_if_left_43 = 0
 endif
 ; node:bongo_muted_if opcode:If
 if (i_midi_note_inote_8) == (51) then
   ; case:bongo_muted_hit 51: Bongo muted
   ; node:bongo_muted_partial_1 opcode:oscil3
   a_bongo_muted_partial_1_asig_132 oscil3 (k_amp_snap_kout_6 * 0.08), (425 * i_world_tuning_iout_9), -1, 0
   ; node:bongo_muted_partial_2 opcode:oscil3
   a_bongo_muted_partial_2_asig_133 oscil3 ((k_amp_tick_kout_4 * 0.04) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (706 * i_world_tuning_iout_9), -1, 0
   a_bongo_muted_if_left_44 = (((a_bongo_muted_partial_1_asig_132 * 1) + (a_bongo_muted_partial_2_asig_133 * 1)) + (a_texture_tap_aout_6 * 0.6))
 else
   ; case:bongo_muted_off Other notes: silence
   a_bongo_muted_if_left_44 = 0
 endif
 ; node:darbuka_tek_if opcode:If
 if (i_midi_note_inote_8) == (53) then
   ; case:darbuka_tek_hit 53: Darbuka tek
   ; node:darbuka_tek_partial_1 opcode:oscil3
   a_darbuka_tek_partial_1_asig_137 oscil3 (k_amp_mid_kout_10 * 0.1), (472 * i_world_tuning_iout_9), -1, 0
   ; node:darbuka_tek_partial_2 opcode:oscil3
   a_darbuka_tek_partial_2_asig_138 oscil3 ((k_amp_short_kout_8 * 0.044) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (782 * i_world_tuning_iout_9), -1, 0
   ; node:darbuka_tek_partial_3 opcode:oscil3
   a_darbuka_tek_partial_3_asig_139 oscil3 ((k_amp_snap_kout_6 * 0.022) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (1115 * i_world_tuning_iout_9), -1, 0
   a_darbuka_tek_if_left_46 = ((((a_darbuka_tek_partial_1_asig_137 * 1) + (a_darbuka_tek_partial_2_asig_138 * 1)) + (a_darbuka_tek_partial_3_asig_139 * 1)) + (a_texture_tap_aout_6 * 0.6))
 else
   ; case:darbuka_tek_off Other notes: silence
   a_darbuka_tek_if_left_46 = 0
 endif
 ; node:darbuka_ka_if opcode:If
 if (i_midi_note_inote_8) == (54) then
   ; case:darbuka_ka_hit 54: Darbuka ka
   ; node:darbuka_ka_partial_1 opcode:oscil3
   a_darbuka_ka_partial_1_asig_140 oscil3 (k_amp_short_kout_8 * 0.085), (438 * i_world_tuning_iout_9), -1, 0
   ; node:darbuka_ka_partial_2 opcode:oscil3
   a_darbuka_ka_partial_2_asig_141 oscil3 ((k_amp_snap_kout_6 * 0.043) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (742 * i_world_tuning_iout_9), -1, 0
   ; node:darbuka_ka_partial_3 opcode:oscil3
   a_darbuka_ka_partial_3_asig_142 oscil3 ((k_amp_tick_kout_4 * 0.02) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (1040 * i_world_tuning_iout_9), -1, 0
   a_darbuka_ka_if_left_47 = ((((a_darbuka_ka_partial_1_asig_140 * 1) + (a_darbuka_ka_partial_2_asig_141 * 1)) + (a_darbuka_ka_partial_3_asig_142 * 1)) + (a_texture_tap_aout_6 * 0.43))
 else
   ; case:darbuka_ka_off Other notes: silence
   a_darbuka_ka_if_left_47 = 0
 endif
 ; node:frame_rim_if opcode:If
 if (i_midi_note_inote_8) == (57) then
   ; case:frame_rim_hit 57: Frame drum rim
   ; node:frame_rim_partial_1 opcode:oscil3
   a_frame_rim_partial_1_asig_86 oscil3 (k_amp_mid_kout_10 * 0.06), (188 * i_world_tuning_iout_9), -1, 0
   ; node:frame_rim_partial_2 opcode:oscil3
   a_frame_rim_partial_2_asig_87 oscil3 ((k_amp_body_kout_12 * 0.065) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (306 * i_world_tuning_iout_9), -1, 0
   ; node:frame_rim_partial_3 opcode:oscil3
   a_frame_rim_partial_3_asig_88 oscil3 ((k_amp_mid_kout_10 * 0.035) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (428 * i_world_tuning_iout_9), -1, 0
   ; node:frame_rim_partial_4 opcode:oscil3
   a_frame_rim_partial_4_asig_89 oscil3 ((k_amp_short_kout_8 * 0.02) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (586 * i_world_tuning_iout_9), -1, 0
   a_frame_rim_if_left_50 = (((((a_frame_rim_partial_1_asig_86 * 1) + (a_frame_rim_partial_2_asig_87 * 1)) + (a_frame_rim_partial_3_asig_88 * 1)) + (a_frame_rim_partial_4_asig_89 * 1)) + (a_texture_tap_aout_6 * 0.54))
 else
   ; case:frame_rim_off Other notes: silence
   a_frame_rim_if_left_50 = 0
 endif
 ; node:tabla_na_if opcode:If
 if (i_midi_note_inote_8) == (60) then
   ; case:tabla_na_hit 60: Tabla dayan na
   ; node:tabla_na_partial_1 opcode:oscil3
   a_tabla_na_partial_1_asig_151 oscil3 (k_amp_short_kout_8 * 0.018), ((261.63 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_na_partial_2 opcode:oscil3
   a_tabla_na_partial_2_asig_152 oscil3 ((k_amp_long_kout_14 * 0.097) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), ((523.26 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_na_partial_3 opcode:oscil3
   a_tabla_na_partial_3_asig_153 oscil3 ((k_amp_body_kout_12 * 0.067) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), ((784.89 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_na_partial_4 opcode:oscil3
   a_tabla_na_partial_4_asig_154 oscil3 ((k_amp_mid_kout_10 * 0.028) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), ((1046.52 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_na_partial_5 opcode:oscil3
   a_tabla_na_partial_5_asig_155 oscil3 ((k_amp_short_kout_8 * 0.014) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), ((1308.15 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   a_tabla_na_if_left_52 = ((((((a_tabla_na_partial_1_asig_151 * 1) + (a_tabla_na_partial_2_asig_152 * 1)) + (a_tabla_na_partial_3_asig_153 * 1)) + (a_tabla_na_partial_4_asig_154 * 1)) + (a_tabla_na_partial_5_asig_155 * 1)) + (a_texture_tap_aout_6 * 0.3))
 else
   ; case:tabla_na_off Other notes: silence
   a_tabla_na_if_left_52 = 0
 endif
 ; node:tabla_tin_if opcode:If
 if (i_midi_note_inote_8) == (61) then
   ; case:tabla_tin_hit 61: Tabla dayan tin
   ; node:tabla_tin_partial_1 opcode:oscil3
   a_tabla_tin_partial_1_asig_156 oscil3 (k_amp_ring_kout_16 * 0.12), ((261.63 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_tin_partial_2 opcode:oscil3
   a_tabla_tin_partial_2_asig_157 oscil3 ((k_amp_long_kout_14 * 0.06) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), ((523.26 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_tin_partial_3 opcode:oscil3
   a_tabla_tin_partial_3_asig_158 oscil3 ((k_amp_body_kout_12 * 0.037) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), ((784.89 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_tin_partial_4 opcode:oscil3
   a_tabla_tin_partial_4_asig_159 oscil3 ((k_amp_mid_kout_10 * 0.019) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), ((1046.52 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   a_tabla_tin_if_left_53 = (((((a_tabla_tin_partial_1_asig_156 * 1) + (a_tabla_tin_partial_2_asig_157 * 1)) + (a_tabla_tin_partial_3_asig_158 * 1)) + (a_tabla_tin_partial_4_asig_159 * 1)) + (a_texture_tap_aout_6 * 0.16))
 else
   ; case:tabla_tin_off Other notes: silence
   a_tabla_tin_if_left_53 = 0
 endif
 ; node:tabla_tun_if opcode:If
 if (i_midi_note_inote_8) == (62) then
   ; case:tabla_tun_hit 62: Tabla dayan tun
   ; node:tabla_tun_partial_1 opcode:oscil3
   a_tabla_tun_partial_1_asig_160 oscil3 (k_amp_long_kout_14 * 0.15), ((261.63 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_tun_partial_2 opcode:oscil3
   a_tabla_tun_partial_2_asig_161 oscil3 ((k_amp_body_kout_12 * 0.032) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), ((523.26 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_tun_partial_3 opcode:oscil3
   a_tabla_tun_partial_3_asig_162 oscil3 ((k_amp_mid_kout_10 * 0.015) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), ((784.89 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   a_tabla_tun_if_left_54 = ((((a_tabla_tun_partial_1_asig_160 * 1) + (a_tabla_tun_partial_2_asig_161 * 1)) + (a_tabla_tun_partial_3_asig_162 * 1)) + (a_texture_tap_aout_6 * 0.12))
 else
   ; case:tabla_tun_off Other notes: silence
   a_tabla_tun_if_left_54 = 0
 endif
 ; node:tabla_te_if opcode:If
 if (i_midi_note_inote_8) == (63) then
   ; case:tabla_te_hit 63: Tabla dayan te (dry)
   ; node:tabla_te_partial_1 opcode:oscil3
   a_tabla_te_partial_1_asig_163 oscil3 (k_amp_snap_kout_6 * 0.07), ((315 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_te_partial_2 opcode:oscil3
   a_tabla_te_partial_2_asig_164 oscil3 ((k_amp_tick_kout_4 * 0.035) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), ((693 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_te_partial_3 opcode:oscil3
   a_tabla_te_partial_3_asig_165 oscil3 ((k_amp_tick_kout_4 * 0.019) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), ((1100 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   a_tabla_te_if_left_55 = ((((a_tabla_te_partial_1_asig_163 * 1) + (a_tabla_te_partial_2_asig_164 * 1)) + (a_tabla_te_partial_3_asig_165 * 1)) + (a_texture_tap_aout_6 * 0.72))
 else
   ; case:tabla_te_off Other notes: silence
   a_tabla_te_if_left_55 = 0
 endif
 ; node:udu_tap_if opcode:If
 if (i_midi_note_inote_8) == (71) then
   ; case:udu_tap_hit 71: Udu clay tap
   ; node:udu_tap_partial_1 opcode:oscil3
   a_udu_tap_partial_1_asig_192 oscil3 (k_amp_short_kout_8 * 0.09), (468 * i_world_tuning_iout_9), -1, 0
   ; node:udu_tap_partial_2 opcode:oscil3
   a_udu_tap_partial_2_asig_193 oscil3 ((k_amp_snap_kout_6 * 0.045) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (803 * i_world_tuning_iout_9), -1, 0
   ; node:udu_tap_partial_3 opcode:oscil3
   a_udu_tap_partial_3_asig_194 oscil3 ((k_amp_tick_kout_4 * 0.02) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (1289 * i_world_tuning_iout_9), -1, 0
   a_udu_tap_if_left_62 = ((((a_udu_tap_partial_1_asig_192 * 1) + (a_udu_tap_partial_2_asig_193 * 1)) + (a_udu_tap_partial_3_asig_194 * 1)) + (a_texture_tap_aout_6 * 0.28))
 else
   ; case:udu_tap_off Other notes: silence
   a_udu_tap_if_left_62 = 0
 endif
 ; node:claves_if opcode:If
 if (i_midi_note_inote_8) == (77) then
   ; case:claves_hit 77: Claves
   ; node:claves_partial_1 opcode:oscil3
   a_claves_partial_1_asig_205 oscil3 (k_amp_short_kout_8 * 0.13), (2380 * i_world_tuning_iout_9), -1, 0
   ; node:claves_partial_2 opcode:oscil3
   a_claves_partial_2_asig_206 oscil3 ((k_amp_snap_kout_6 * 0.035) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (3870 * i_world_tuning_iout_9), -1, 0
   a_claves_if_left_67 = (((a_claves_partial_1_asig_205 * 1) + (a_claves_partial_2_asig_206 * 1)) + (a_texture_tap_aout_6 * 0.16))
 else
   ; case:claves_off Other notes: silence
   a_claves_if_left_67 = 0
 endif
 ; node:woodblock_low_if opcode:If
 if (i_midi_note_inote_8) == (78) then
   ; case:woodblock_low_hit 78: Woodblock low
   ; node:woodblock_low_partial_1 opcode:oscil3
   a_woodblock_low_partial_1_asig_207 oscil3 (k_amp_short_kout_8 * 0.125), (650 * i_world_tuning_iout_9), -1, 0
   ; node:woodblock_low_partial_2 opcode:oscil3
   a_woodblock_low_partial_2_asig_208 oscil3 ((k_amp_snap_kout_6 * 0.045) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (1495 * i_world_tuning_iout_9), -1, 0
   ; node:woodblock_low_partial_3 opcode:oscil3
   a_woodblock_low_partial_3_asig_209 oscil3 ((k_amp_tick_kout_4 * 0.012) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (2665 * i_world_tuning_iout_9), -1, 0
   a_woodblock_low_if_left_68 = ((((a_woodblock_low_partial_1_asig_207 * 1) + (a_woodblock_low_partial_2_asig_208 * 1)) + (a_woodblock_low_partial_3_asig_209 * 1)) + (a_texture_tap_aout_6 * 0.16))
 else
   ; case:woodblock_low_off Other notes: silence
   a_woodblock_low_if_left_68 = 0
 endif
 ; node:woodblock_high_if opcode:If
 if (i_midi_note_inote_8) == (79) then
   ; case:woodblock_high_hit 79: Woodblock high
   ; node:woodblock_high_partial_1 opcode:oscil3
   a_woodblock_high_partial_1_asig_210 oscil3 (k_amp_short_kout_8 * 0.115), (980 * i_world_tuning_iout_9), -1, 0
   ; node:woodblock_high_partial_2 opcode:oscil3
   a_woodblock_high_partial_2_asig_211 oscil3 ((k_amp_snap_kout_6 * 0.043) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (2254 * i_world_tuning_iout_9), -1, 0
   ; node:woodblock_high_partial_3 opcode:oscil3
   a_woodblock_high_partial_3_asig_212 oscil3 ((k_amp_tick_kout_4 * 0.012) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (4018 * i_world_tuning_iout_9), -1, 0
   a_woodblock_high_if_left_69 = ((((a_woodblock_high_partial_1_asig_210 * 1) + (a_woodblock_high_partial_2_asig_211 * 1)) + (a_woodblock_high_partial_3_asig_212 * 1)) + (a_texture_tap_aout_6 * 0.16))
 else
   ; case:woodblock_high_off Other notes: silence
   a_woodblock_high_if_left_69 = 0
 endif
 ; node:cowbell_open_if opcode:If
 if (i_midi_note_inote_8) == (80) then
   ; case:cowbell_open_hit 80: Cowbell open
   ; node:cowbell_open_partial_1 opcode:oscil3
   a_cowbell_open_partial_1_asig_213 oscil3 (k_amp_body_kout_12 * 0.11), (550 * i_world_tuning_iout_9), -1, 0
   ; node:cowbell_open_partial_2 opcode:oscil3
   a_cowbell_open_partial_2_asig_214 oscil3 ((k_amp_mid_kout_10 * 0.08) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (845 * i_world_tuning_iout_9), -1, 0
   ; node:cowbell_open_partial_3 opcode:oscil3
   a_cowbell_open_partial_3_asig_215 oscil3 ((k_amp_short_kout_8 * 0.032) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (1435 * i_world_tuning_iout_9), -1, 0
   ; node:cowbell_open_partial_4 opcode:oscil3
   a_cowbell_open_partial_4_asig_216 oscil3 ((k_amp_snap_kout_6 * 0.013) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (2090 * i_world_tuning_iout_9), -1, 0
   a_cowbell_open_if_left_70 = (((((a_cowbell_open_partial_1_asig_213 * 1) + (a_cowbell_open_partial_2_asig_214 * 1)) + (a_cowbell_open_partial_3_asig_215 * 1)) + (a_cowbell_open_partial_4_asig_216 * 1)) + (a_texture_tap_aout_6 * 0.13))
 else
   ; case:cowbell_open_off Other notes: silence
   a_cowbell_open_if_left_70 = 0
 endif
 ; node:cowbell_muted_if opcode:If
 if (i_midi_note_inote_8) == (81) then
   ; case:cowbell_muted_hit 81: Cowbell damped
   ; node:cowbell_muted_partial_1 opcode:oscil3
   a_cowbell_muted_partial_1_asig_217 oscil3 (k_amp_short_kout_8 * 0.1), (550 * i_world_tuning_iout_9), -1, 0
   ; node:cowbell_muted_partial_2 opcode:oscil3
   a_cowbell_muted_partial_2_asig_218 oscil3 ((k_amp_snap_kout_6 * 0.068) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (845 * i_world_tuning_iout_9), -1, 0
   ; node:cowbell_muted_partial_3 opcode:oscil3
   a_cowbell_muted_partial_3_asig_219 oscil3 ((k_amp_tick_kout_4 * 0.025) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (1435 * i_world_tuning_iout_9), -1, 0
   a_cowbell_muted_if_left_71 = ((((a_cowbell_muted_partial_1_asig_217 * 1) + (a_cowbell_muted_partial_2_asig_218 * 1)) + (a_cowbell_muted_partial_3_asig_219 * 1)) + (a_texture_tap_aout_6 * 0.2))
 else
   ; case:cowbell_muted_off Other notes: silence
   a_cowbell_muted_if_left_71 = 0
 endif
 ; node:agogo_low_if opcode:If
 if (i_midi_note_inote_8) == (82) then
   ; case:agogo_low_hit 82: Agogo low
   ; node:agogo_low_partial_1 opcode:oscil3
   a_agogo_low_partial_1_asig_220 oscil3 (k_amp_ring_kout_16 * 0.12), (710 * i_world_tuning_iout_9), -1, 0
   ; node:agogo_low_partial_2 opcode:oscil3
   a_agogo_low_partial_2_asig_221 oscil3 ((k_amp_body_kout_12 * 0.052) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (1135 * i_world_tuning_iout_9), -1, 0
   ; node:agogo_low_partial_3 opcode:oscil3
   a_agogo_low_partial_3_asig_222 oscil3 ((k_amp_mid_kout_10 * 0.028) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (1909 * i_world_tuning_iout_9), -1, 0
   ; node:agogo_low_partial_4 opcode:oscil3
   a_agogo_low_partial_4_asig_223 oscil3 ((k_amp_short_kout_8 * 0.01) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (2876 * i_world_tuning_iout_9), -1, 0
   a_agogo_low_if_left_72 = (((((a_agogo_low_partial_1_asig_220 * 1) + (a_agogo_low_partial_2_asig_221 * 1)) + (a_agogo_low_partial_3_asig_222 * 1)) + (a_agogo_low_partial_4_asig_223 * 1)) + (a_texture_tap_aout_6 * 0.15))
 else
   ; case:agogo_low_off Other notes: silence
   a_agogo_low_if_left_72 = 0
 endif
 ; node:agogo_high_if opcode:If
 if (i_midi_note_inote_8) == (83) then
   ; case:agogo_high_hit 83: Agogo high
   ; node:agogo_high_partial_1 opcode:oscil3
   a_agogo_high_partial_1_asig_224 oscil3 (k_amp_body_kout_12 * 0.11), (1055 * i_world_tuning_iout_9), -1, 0
   ; node:agogo_high_partial_2 opcode:oscil3
   a_agogo_high_partial_2_asig_225 oscil3 ((k_amp_mid_kout_10 * 0.053) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (1709 * i_world_tuning_iout_9), -1, 0
   ; node:agogo_high_partial_3 opcode:oscil3
   a_agogo_high_partial_3_asig_226 oscil3 ((k_amp_short_kout_8 * 0.022) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (2828 * i_world_tuning_iout_9), -1, 0
   ; node:agogo_high_partial_4 opcode:oscil3
   a_agogo_high_partial_4_asig_227 oscil3 ((k_amp_snap_kout_6 * 0.009) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (4294 * i_world_tuning_iout_9), -1, 0
   a_agogo_high_if_left_73 = (((((a_agogo_high_partial_1_asig_224 * 1) + (a_agogo_high_partial_2_asig_225 * 1)) + (a_agogo_high_partial_3_asig_226 * 1)) + (a_agogo_high_partial_4_asig_227 * 1)) + (a_texture_tap_aout_6 * 0.15))
 else
   ; case:agogo_high_off Other notes: silence
   a_agogo_high_if_left_73 = 0
 endif
 ; node:dunun_open_if opcode:If
 if (i_midi_note_inote_8) == (36) then
   ; case:dunun_open_hit 36: Dunun open
   ; node:dunun_open_partial_1 opcode:oscil3
   a_dunun_open_partial_1_asig_90 oscil3 (k_amp_long_kout_14 * 0.19), ((72 * i_world_tuning_iout_9) * k_motion_drop_kenv_17), -1, 0
   ; node:dunun_open_partial_2 opcode:oscil3
   a_dunun_open_partial_2_asig_91 oscil3 ((k_amp_body_kout_12 * 0.062) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (114.5 * i_world_tuning_iout_9), -1, 0
   ; node:dunun_open_partial_3 opcode:oscil3
   a_dunun_open_partial_3_asig_92 oscil3 ((k_amp_mid_kout_10 * 0.026) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (165 * i_world_tuning_iout_9), -1, 0
   a_dunun_open_if_left_29 = ((((a_dunun_open_partial_1_asig_90 * 1) + (a_dunun_open_partial_2_asig_91 * 1)) + (a_dunun_open_partial_3_asig_92 * 1)) + (a_texture_mallet_aout_2 * 0.32))
 else
   ; case:dunun_open_off Other notes: silence
   a_dunun_open_if_left_29 = 0
 endif
 ; node:dunun_muted_if opcode:If
 if (i_midi_note_inote_8) == (37) then
   ; case:dunun_muted_hit 37: Dunun muted
   ; node:dunun_muted_partial_1 opcode:oscil3
   a_dunun_muted_partial_1_asig_93 oscil3 (k_amp_short_kout_8 * 0.17), ((77 * i_world_tuning_iout_9) * k_motion_drop_kenv_17), -1, 0
   ; node:dunun_muted_partial_2 opcode:oscil3
   a_dunun_muted_partial_2_asig_94 oscil3 ((k_amp_snap_kout_6 * 0.038) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (126 * i_world_tuning_iout_9), -1, 0
   a_dunun_muted_if_left_30 = (((a_dunun_muted_partial_1_asig_93 * 1) + (a_dunun_muted_partial_2_asig_94 * 1)) + (a_texture_mallet_aout_2 * 0.4))
 else
   ; case:dunun_muted_off Other notes: silence
   a_dunun_muted_if_left_30 = 0
 endif
 ; node:surdo_open_if opcode:If
 if (i_midi_note_inote_8) == (38) then
   ; case:surdo_open_hit 38: Surdo open
   ; node:surdo_open_partial_1 opcode:oscil3
   a_surdo_open_partial_1_asig_95 oscil3 (k_amp_ring_kout_16 * 0.21), ((52 * i_world_tuning_iout_9) * k_motion_deep_kenv_18), -1, 0
   ; node:surdo_open_partial_2 opcode:oscil3
   a_surdo_open_partial_2_asig_96 oscil3 ((k_amp_body_kout_12 * 0.04) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (86 * i_world_tuning_iout_9), -1, 0
   ; node:surdo_open_partial_3 opcode:oscil3
   a_surdo_open_partial_3_asig_97 oscil3 ((k_amp_mid_kout_10 * 0.014) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (137 * i_world_tuning_iout_9), -1, 0
   a_surdo_open_if_left_31 = ((((a_surdo_open_partial_1_asig_95 * 1) + (a_surdo_open_partial_2_asig_96 * 1)) + (a_surdo_open_partial_3_asig_97 * 1)) + (a_texture_mallet_aout_2 * 0.28))
 else
   ; case:surdo_open_off Other notes: silence
   a_surdo_open_if_left_31 = 0
 endif
 ; node:surdo_muted_if opcode:If
 if (i_midi_note_inote_8) == (39) then
   ; case:surdo_muted_hit 39: Surdo damped
   ; node:surdo_muted_partial_1 opcode:oscil3
   a_surdo_muted_partial_1_asig_98 oscil3 (k_amp_short_kout_8 * 0.18), ((58 * i_world_tuning_iout_9) * k_motion_deep_kenv_18), -1, 0
   ; node:surdo_muted_partial_2 opcode:oscil3
   a_surdo_muted_partial_2_asig_99 oscil3 ((k_amp_snap_kout_6 * 0.035) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (100 * i_world_tuning_iout_9), -1, 0
   a_surdo_muted_if_left_32 = (((a_surdo_muted_partial_1_asig_98 * 1) + (a_surdo_muted_partial_2_asig_99 * 1)) + (a_texture_mallet_aout_2 * 0.4))
 else
   ; case:surdo_muted_off Other notes: silence
   a_surdo_muted_if_left_32 = 0
 endif
 ; node:djembe_bass_if opcode:If
 if (i_midi_note_inote_8) == (40) then
   ; case:djembe_bass_hit 40: Djembe bass
   ; node:djembe_bass_partial_1 opcode:oscil3
   a_djembe_bass_partial_1_asig_100 oscil3 (k_amp_body_kout_12 * 0.2), ((83 * i_world_tuning_iout_9) * k_motion_drop_kenv_17), -1, 0
   ; node:djembe_bass_partial_2 opcode:oscil3
   a_djembe_bass_partial_2_asig_101 oscil3 ((k_amp_mid_kout_10 * 0.035) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (171 * i_world_tuning_iout_9), -1, 0
   ; node:djembe_bass_partial_3 opcode:oscil3
   a_djembe_bass_partial_3_asig_102 oscil3 ((k_amp_short_kout_8 * 0.015) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (254 * i_world_tuning_iout_9), -1, 0
   a_djembe_bass_if_left_33 = ((((a_djembe_bass_partial_1_asig_100 * 1) + (a_djembe_bass_partial_2_asig_101 * 1)) + (a_djembe_bass_partial_3_asig_102 * 1)) + (a_texture_skin_aout_4 * 0.24))
 else
   ; case:djembe_bass_off Other notes: silence
   a_djembe_bass_if_left_33 = 0
 endif
 ; node:djembe_tone_if opcode:If
 if (i_midi_note_inote_8) == (41) then
   ; case:djembe_tone_hit 41: Djembe tone
   ; node:djembe_tone_partial_1 opcode:oscil3
   a_djembe_tone_partial_1_asig_103 oscil3 (k_amp_body_kout_12 * 0.13), ((195 * i_world_tuning_iout_9) * k_motion_small_kenv_19), -1, 0
   ; node:djembe_tone_partial_2 opcode:oscil3
   a_djembe_tone_partial_2_asig_104 oscil3 ((k_amp_mid_kout_10 * 0.065) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (314 * i_world_tuning_iout_9), -1, 0
   ; node:djembe_tone_partial_3 opcode:oscil3
   a_djembe_tone_partial_3_asig_105 oscil3 ((k_amp_short_kout_8 * 0.031) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (432 * i_world_tuning_iout_9), -1, 0
   ; node:djembe_tone_partial_4 opcode:oscil3
   a_djembe_tone_partial_4_asig_106 oscil3 ((k_amp_snap_kout_6 * 0.012) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (610 * i_world_tuning_iout_9), -1, 0
   a_djembe_tone_if_left_34 = (((((a_djembe_tone_partial_1_asig_103 * 1) + (a_djembe_tone_partial_2_asig_104 * 1)) + (a_djembe_tone_partial_3_asig_105 * 1)) + (a_djembe_tone_partial_4_asig_106 * 1)) + (a_texture_skin_aout_4 * 0.42))
 else
   ; case:djembe_tone_off Other notes: silence
   a_djembe_tone_if_left_34 = 0
 endif
 ; node:djembe_muted_if opcode:If
 if (i_midi_note_inote_8) == (43) then
   ; case:djembe_muted_hit 43: Djembe muted
   ; node:djembe_muted_partial_1 opcode:oscil3
   a_djembe_muted_partial_1_asig_110 oscil3 (k_amp_snap_kout_6 * 0.07), (208 * i_world_tuning_iout_9), -1, 0
   ; node:djembe_muted_partial_2 opcode:oscil3
   a_djembe_muted_partial_2_asig_111 oscil3 ((k_amp_snap_kout_6 * 0.038) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (348 * i_world_tuning_iout_9), -1, 0
   a_djembe_muted_if_left_36 = (((a_djembe_muted_partial_1_asig_110 * 1) + (a_djembe_muted_partial_2_asig_111 * 1)) + (a_texture_skin_aout_4 * 0.7))
 else
   ; case:djembe_muted_off Other notes: silence
   a_djembe_muted_if_left_36 = 0
 endif
 ; node:conga_low_if opcode:If
 if (i_midi_note_inote_8) == (44) then
   ; case:conga_low_hit 44: Conga low open
   ; node:conga_low_partial_1 opcode:oscil3
   a_conga_low_partial_1_asig_112 oscil3 (k_amp_ring_kout_16 * 0.155), ((162 * i_world_tuning_iout_9) * k_motion_small_kenv_19), -1, 0
   ; node:conga_low_partial_2 opcode:oscil3
   a_conga_low_partial_2_asig_113 oscil3 ((k_amp_body_kout_12 * 0.058) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (264 * i_world_tuning_iout_9), -1, 0
   ; node:conga_low_partial_3 opcode:oscil3
   a_conga_low_partial_3_asig_114 oscil3 ((k_amp_mid_kout_10 * 0.023) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (358 * i_world_tuning_iout_9), -1, 0
   a_conga_low_if_left_37 = ((((a_conga_low_partial_1_asig_112 * 1) + (a_conga_low_partial_2_asig_113 * 1)) + (a_conga_low_partial_3_asig_114 * 1)) + (a_texture_skin_aout_4 * 0.24))
 else
   ; case:conga_low_off Other notes: silence
   a_conga_low_if_left_37 = 0
 endif
 ; node:conga_high_if opcode:If
 if (i_midi_note_inote_8) == (45) then
   ; case:conga_high_hit 45: Conga high open
   ; node:conga_high_partial_1 opcode:oscil3
   a_conga_high_partial_1_asig_115 oscil3 (k_amp_body_kout_12 * 0.145), ((218 * i_world_tuning_iout_9) * k_motion_small_kenv_19), -1, 0
   ; node:conga_high_partial_2 opcode:oscil3
   a_conga_high_partial_2_asig_116 oscil3 ((k_amp_mid_kout_10 * 0.06) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (357 * i_world_tuning_iout_9), -1, 0
   ; node:conga_high_partial_3 opcode:oscil3
   a_conga_high_partial_3_asig_117 oscil3 ((k_amp_short_kout_8 * 0.025) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (482 * i_world_tuning_iout_9), -1, 0
   a_conga_high_if_left_38 = ((((a_conga_high_partial_1_asig_115 * 1) + (a_conga_high_partial_2_asig_116 * 1)) + (a_conga_high_partial_3_asig_117 * 1)) + (a_texture_skin_aout_4 * 0.28))
 else
   ; case:conga_high_off Other notes: silence
   a_conga_high_if_left_38 = 0
 endif
 ; node:conga_muted_if opcode:If
 if (i_midi_note_inote_8) == (46) then
   ; case:conga_muted_hit 46: Conga muted
   ; node:conga_muted_partial_1 opcode:oscil3
   a_conga_muted_partial_1_asig_118 oscil3 (k_amp_snap_kout_6 * 0.075), (228 * i_world_tuning_iout_9), -1, 0
   ; node:conga_muted_partial_2 opcode:oscil3
   a_conga_muted_partial_2_asig_119 oscil3 ((k_amp_short_kout_8 * 0.045) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (383 * i_world_tuning_iout_9), -1, 0
   a_conga_muted_if_left_39 = (((a_conga_muted_partial_1_asig_118 * 1) + (a_conga_muted_partial_2_asig_119 * 1)) + (a_texture_skin_aout_4 * 0.58))
 else
   ; case:conga_muted_off Other notes: silence
   a_conga_muted_if_left_39 = 0
 endif
 ; node:darbuka_doum_if opcode:If
 if (i_midi_note_inote_8) == (52) then
   ; case:darbuka_doum_hit 52: Darbuka doum
   ; node:darbuka_doum_partial_1 opcode:oscil3
   a_darbuka_doum_partial_1_asig_134 oscil3 (k_amp_body_kout_12 * 0.19), ((110 * i_world_tuning_iout_9) * k_motion_drop_kenv_17), -1, 0
   ; node:darbuka_doum_partial_2 opcode:oscil3
   a_darbuka_doum_partial_2_asig_135 oscil3 ((k_amp_mid_kout_10 * 0.036) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (195 * i_world_tuning_iout_9), -1, 0
   ; node:darbuka_doum_partial_3 opcode:oscil3
   a_darbuka_doum_partial_3_asig_136 oscil3 ((k_amp_short_kout_8 * 0.019) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (282 * i_world_tuning_iout_9), -1, 0
   a_darbuka_doum_if_left_45 = ((((a_darbuka_doum_partial_1_asig_134 * 1) + (a_darbuka_doum_partial_2_asig_135 * 1)) + (a_darbuka_doum_partial_3_asig_136 * 1)) + (a_texture_skin_aout_4 * 0.19))
 else
   ; case:darbuka_doum_off Other notes: silence
   a_darbuka_doum_if_left_45 = 0
 endif
 ; node:frame_center_if opcode:If
 if (i_midi_note_inote_8) == (56) then
   ; case:frame_center_hit 56: Frame drum centre
   ; node:frame_center_partial_1 opcode:oscil3
   a_frame_center_partial_1_asig_145 oscil3 (k_amp_ring_kout_16 * 0.16), ((96 * i_world_tuning_iout_9) * k_motion_small_kenv_19), -1, 0
   ; node:frame_center_partial_2 opcode:oscil3
   a_frame_center_partial_2_asig_146 oscil3 ((k_amp_body_kout_12 * 0.053) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (153 * i_world_tuning_iout_9), -1, 0
   ; node:frame_center_partial_3 opcode:oscil3
   a_frame_center_partial_3_asig_147 oscil3 ((k_amp_mid_kout_10 * 0.026) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (205 * i_world_tuning_iout_9), -1, 0
   ; node:frame_center_partial_4 opcode:oscil3
   a_frame_center_partial_4_asig_148 oscil3 ((k_amp_short_kout_8 * 0.012) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (276 * i_world_tuning_iout_9), -1, 0
   a_frame_center_if_left_49 = (((((a_frame_center_partial_1_asig_145 * 1) + (a_frame_center_partial_2_asig_146 * 1)) + (a_frame_center_partial_3_asig_147 * 1)) + (a_frame_center_partial_4_asig_148 * 1)) + (a_texture_skin_aout_4 * 0.32))
 else
   ; case:frame_center_off Other notes: silence
   a_frame_center_if_left_49 = 0
 endif
 ; node:frame_muted_if opcode:If
 if (i_midi_note_inote_8) == (58) then
   ; case:frame_muted_hit 58: Frame drum muted
   ; node:frame_muted_partial_1 opcode:oscil3
   a_frame_muted_partial_1_asig_149 oscil3 (k_amp_short_kout_8 * 0.08), (115 * i_world_tuning_iout_9), -1, 0
   ; node:frame_muted_partial_2 opcode:oscil3
   a_frame_muted_partial_2_asig_150 oscil3 ((k_amp_snap_kout_6 * 0.04) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (219 * i_world_tuning_iout_9), -1, 0
   a_frame_muted_if_left_51 = (((a_frame_muted_partial_1_asig_149 * 1) + (a_frame_muted_partial_2_asig_150 * 1)) + (a_texture_skin_aout_4 * 0.6))
 else
   ; case:frame_muted_off Other notes: silence
   a_frame_muted_if_left_51 = 0
 endif
 ; node:tabla_ge_if opcode:If
 if (i_midi_note_inote_8) == (64) then
   ; case:tabla_ge_hit 64: Tabla bayan ge
   ; node:tabla_ge_partial_1 opcode:oscil3
   a_tabla_ge_partial_1_asig_166 oscil3 (k_amp_ring_kout_16 * 0.17), (((112 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12) * k_motion_bayan_kenv_21), -1, 0
   ; node:tabla_ge_partial_2 opcode:oscil3
   a_tabla_ge_partial_2_asig_167 oscil3 ((k_amp_body_kout_12 * 0.037) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (((224 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12) * k_motion_bayan_kenv_21), -1, 0
   ; node:tabla_ge_partial_3 opcode:oscil3
   a_tabla_ge_partial_3_asig_168 oscil3 ((k_amp_mid_kout_10 * 0.015) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (((338 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12) * k_motion_bayan_kenv_21), -1, 0
   a_tabla_ge_if_left_56 = ((((a_tabla_ge_partial_1_asig_166 * 1) + (a_tabla_ge_partial_2_asig_167 * 1)) + (a_tabla_ge_partial_3_asig_168 * 1)) + (a_texture_skin_aout_4 * 0.18))
 else
   ; case:tabla_ge_off Other notes: silence
   a_tabla_ge_if_left_56 = 0
 endif
 ; node:tabla_ke_if opcode:If
 if (i_midi_note_inote_8) == (65) then
   ; case:tabla_ke_hit 65: Tabla bayan ke (muted)
   ; node:tabla_ke_partial_1 opcode:oscil3
   a_tabla_ke_partial_1_asig_169 oscil3 (k_amp_snap_kout_6 * 0.06), ((116 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_ke_partial_2 opcode:oscil3
   a_tabla_ke_partial_2_asig_170 oscil3 ((k_amp_tick_kout_4 * 0.022) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), ((267 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   a_tabla_ke_if_left_57 = (((a_tabla_ke_partial_1_asig_169 * 1) + (a_tabla_ke_partial_2_asig_170 * 1)) + (a_texture_skin_aout_4 * 0.64))
 else
   ; case:tabla_ke_off Other notes: silence
   a_tabla_ke_if_left_57 = 0
 endif
 ; node:tabla_bend_if opcode:If
 if (i_midi_note_inote_8) == (66) then
   ; case:tabla_bend_hit 66: Tabla bayan pressure bend
   ; node:tabla_bend_partial_1 opcode:oscil3
   a_tabla_bend_partial_1_asig_171 oscil3 (k_amp_ring_kout_16 * 0.17), (((112 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12) * k_motion_bend_kenv_22), -1, 0
   ; node:tabla_bend_partial_2 opcode:oscil3
   a_tabla_bend_partial_2_asig_172 oscil3 ((k_amp_body_kout_12 * 0.038) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (((224 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12) * k_motion_bend_kenv_22), -1, 0
   ; node:tabla_bend_partial_3 opcode:oscil3
   a_tabla_bend_partial_3_asig_173 oscil3 ((k_amp_mid_kout_10 * 0.015) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (((338 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12) * k_motion_bend_kenv_22), -1, 0
   a_tabla_bend_if_left_58 = ((((a_tabla_bend_partial_1_asig_171 * 1) + (a_tabla_bend_partial_2_asig_172 * 1)) + (a_tabla_bend_partial_3_asig_173 * 1)) + (a_texture_skin_aout_4 * 0.17))
 else
   ; case:tabla_bend_off Other notes: silence
   a_tabla_bend_if_left_58 = 0
 endif
 ; node:tabla_dha_if opcode:If
 if (i_midi_note_inote_8) == (67) then
   ; case:tabla_dha_hit 67: Tabla dha (na + ge)
   ; node:tabla_dha_partial_1 opcode:oscil3
   a_tabla_dha_partial_1_asig_174 oscil3 (k_amp_short_kout_8 * 0.0144), ((261.63 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_dha_partial_2 opcode:oscil3
   a_tabla_dha_partial_2_asig_175 oscil3 ((k_amp_long_kout_14 * 0.0776) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), ((523.26 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_dha_partial_3 opcode:oscil3
   a_tabla_dha_partial_3_asig_176 oscil3 ((k_amp_body_kout_12 * 0.05360000000000001) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), ((784.89 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_dha_partial_4 opcode:oscil3
   a_tabla_dha_partial_4_asig_177 oscil3 ((k_amp_mid_kout_10 * 0.022400000000000003) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), ((1046.52 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_dha_partial_5 opcode:oscil3
   a_tabla_dha_partial_5_asig_178 oscil3 ((k_amp_short_kout_8 * 0.011200000000000002) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), ((1308.15 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_dha_partial_6 opcode:oscil3
   a_tabla_dha_partial_6_asig_179 oscil3 ((k_amp_ring_kout_16 * 0.136) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (((112 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12) * k_motion_bayan_kenv_21), -1, 0
   ; node:tabla_dha_partial_7 opcode:oscil3
   a_tabla_dha_partial_7_asig_180 oscil3 ((k_amp_body_kout_12 * 0.0296) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (((224 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12) * k_motion_bayan_kenv_21), -1, 0
   ; node:tabla_dha_partial_8 opcode:oscil3
   a_tabla_dha_partial_8_asig_181 oscil3 ((k_amp_mid_kout_10 * 0.012) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (((338 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12) * k_motion_bayan_kenv_21), -1, 0
   a_tabla_dha_if_left_59 = ((((((((((a_tabla_dha_partial_1_asig_174 * 1) + (a_tabla_dha_partial_2_asig_175 * 1)) + (a_tabla_dha_partial_3_asig_176 * 1)) + (a_tabla_dha_partial_4_asig_177 * 1)) + (a_tabla_dha_partial_5_asig_178 * 1)) + (a_tabla_dha_partial_6_asig_179 * 1)) + (a_tabla_dha_partial_7_asig_180 * 1)) + (a_tabla_dha_partial_8_asig_181 * 1)) + (a_texture_tap_aout_6 * 0.26)) + (a_texture_skin_aout_4 * 0.15))
 else
   ; case:tabla_dha_off Other notes: silence
   a_tabla_dha_if_left_59 = 0
 endif
 ; node:tabla_dhin_if opcode:If
 if (i_midi_note_inote_8) == (68) then
   ; case:tabla_dhin_hit 68: Tabla dhin (tin + ge)
   ; node:tabla_dhin_partial_1 opcode:oscil3
   a_tabla_dhin_partial_1_asig_182 oscil3 (k_amp_ring_kout_16 * 0.096), ((261.63 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_dhin_partial_2 opcode:oscil3
   a_tabla_dhin_partial_2_asig_183 oscil3 ((k_amp_long_kout_14 * 0.048) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), ((523.26 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_dhin_partial_3 opcode:oscil3
   a_tabla_dhin_partial_3_asig_184 oscil3 ((k_amp_body_kout_12 * 0.0296) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), ((784.89 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_dhin_partial_4 opcode:oscil3
   a_tabla_dhin_partial_4_asig_185 oscil3 ((k_amp_mid_kout_10 * 0.0152) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), ((1046.52 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12), -1, 0
   ; node:tabla_dhin_partial_5 opcode:oscil3
   a_tabla_dhin_partial_5_asig_186 oscil3 ((k_amp_ring_kout_16 * 0.136) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (((112 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12) * k_motion_bayan_kenv_21), -1, 0
   ; node:tabla_dhin_partial_6 opcode:oscil3
   a_tabla_dhin_partial_6_asig_187 oscil3 ((k_amp_body_kout_12 * 0.0296) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (((224 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12) * k_motion_bayan_kenv_21), -1, 0
   ; node:tabla_dhin_partial_7 opcode:oscil3
   a_tabla_dhin_partial_7_asig_188 oscil3 ((k_amp_mid_kout_10 * 0.012) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (((338 * i_world_tuning_iout_9) * i_world_tabla_tuning_iout_12) * k_motion_bayan_kenv_21), -1, 0
   a_tabla_dhin_if_left_60 = (((((((((a_tabla_dhin_partial_1_asig_182 * 1) + (a_tabla_dhin_partial_2_asig_183 * 1)) + (a_tabla_dhin_partial_3_asig_184 * 1)) + (a_tabla_dhin_partial_4_asig_185 * 1)) + (a_tabla_dhin_partial_5_asig_186 * 1)) + (a_tabla_dhin_partial_6_asig_187 * 1)) + (a_tabla_dhin_partial_7_asig_188 * 1)) + (a_texture_tap_aout_6 * 0.14)) + (a_texture_skin_aout_4 * 0.15))
 else
   ; case:tabla_dhin_off Other notes: silence
   a_tabla_dhin_if_left_60 = 0
 endif
 ; node:djembe_slap_if opcode:If
 if (i_midi_note_inote_8) == (42) then
   ; case:djembe_slap_hit 42: Djembe slap
   ; node:djembe_slap_partial_1 opcode:oscil3
   a_djembe_slap_partial_1_asig_107 oscil3 (k_amp_short_kout_8 * 0.048), (235 * i_world_tuning_iout_9), -1, 0
   ; node:djembe_slap_partial_2 opcode:oscil3
   a_djembe_slap_partial_2_asig_108 oscil3 ((k_amp_short_kout_8 * 0.06) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (521 * i_world_tuning_iout_9), -1, 0
   ; node:djembe_slap_partial_3 opcode:oscil3
   a_djembe_slap_partial_3_asig_109 oscil3 ((k_amp_snap_kout_6 * 0.026) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (895 * i_world_tuning_iout_9), -1, 0
   a_djembe_slap_if_left_35 = ((((a_djembe_slap_partial_1_asig_107 * 1) + (a_djembe_slap_partial_2_asig_108 * 1)) + (a_djembe_slap_partial_3_asig_109 * 1)) + (a_texture_slap_aout_8 * 1.05))
 else
   ; case:djembe_slap_off Other notes: silence
   a_djembe_slap_if_left_35 = 0
 endif
 ; node:conga_slap_if opcode:If
 if (i_midi_note_inote_8) == (47) then
   ; case:conga_slap_hit 47: Conga slap
   ; node:conga_slap_partial_1 opcode:oscil3
   a_conga_slap_partial_1_asig_120 oscil3 (k_amp_short_kout_8 * 0.05), (248 * i_world_tuning_iout_9), -1, 0
   ; node:conga_slap_partial_2 opcode:oscil3
   a_conga_slap_partial_2_asig_121 oscil3 ((k_amp_snap_kout_6 * 0.035) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (504 * i_world_tuning_iout_9), -1, 0
   ; node:conga_slap_partial_3 opcode:oscil3
   a_conga_slap_partial_3_asig_122 oscil3 ((k_amp_snap_kout_6 * 0.015) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (812 * i_world_tuning_iout_9), -1, 0
   a_conga_slap_if_left_40 = ((((a_conga_slap_partial_1_asig_120 * 1) + (a_conga_slap_partial_2_asig_121 * 1)) + (a_conga_slap_partial_3_asig_122 * 1)) + (a_texture_slap_aout_8 * 0.87))
 else
   ; case:conga_slap_off Other notes: silence
   a_conga_slap_if_left_40 = 0
 endif
 ; node:darbuka_slap_if opcode:If
 if (i_midi_note_inote_8) == (55) then
   ; case:darbuka_slap_hit 55: Darbuka slap
   ; node:darbuka_slap_partial_1 opcode:oscil3
   a_darbuka_slap_partial_1_asig_143 oscil3 (k_amp_short_kout_8 * 0.055), (318 * i_world_tuning_iout_9), -1, 0
   ; node:darbuka_slap_partial_2 opcode:oscil3
   a_darbuka_slap_partial_2_asig_144 oscil3 ((k_amp_snap_kout_6 * 0.035) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (708 * i_world_tuning_iout_9), -1, 0
   a_darbuka_slap_if_left_48 = (((a_darbuka_slap_partial_1_asig_143 * 1) + (a_darbuka_slap_partial_2_asig_144 * 1)) + (a_texture_slap_aout_8 * 0.82))
 else
   ; case:darbuka_slap_off Other notes: silence
   a_darbuka_slap_if_left_48 = 0
 endif
 ; node:udu_bass_if opcode:If
 if (i_midi_note_inote_8) == (70) then
   ; case:udu_bass_hit 70: Udu bass air pulse
   ; node:udu_bass_partial_1 opcode:oscil3
   a_udu_bass_partial_1_asig_189 oscil3 (k_amp_body_kout_12 * 0.2), ((68 * i_world_tuning_iout_9) * k_motion_udu_kenv_20), -1, 0
   ; node:udu_bass_partial_2 opcode:oscil3
   a_udu_bass_partial_2_asig_190 oscil3 ((k_amp_short_kout_8 * 0.024) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (410 * i_world_tuning_iout_9), -1, 0
   ; node:udu_bass_partial_3 opcode:oscil3
   a_udu_bass_partial_3_asig_191 oscil3 ((k_amp_snap_kout_6 * 0.011) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (685 * i_world_tuning_iout_9), -1, 0
   a_udu_bass_if_left_61 = ((((a_udu_bass_partial_1_asig_189 * 1) + (a_udu_bass_partial_2_asig_190 * 1)) + (a_udu_bass_partial_3_asig_191 * 1)) + (a_texture_air_aout_10 * 0.2))
 else
   ; case:udu_bass_off Other notes: silence
   a_udu_bass_if_left_61 = 0
 endif
 ; node:udu_slap_if opcode:If
 if (i_midi_note_inote_8) == (72) then
   ; case:udu_slap_hit 72: Udu hole slap
   ; node:udu_slap_partial_1 opcode:oscil3
   a_udu_slap_partial_1_asig_195 oscil3 (k_amp_short_kout_8 * 0.11), ((95 * i_world_tuning_iout_9) * k_motion_udu_kenv_20), -1, 0
   ; node:udu_slap_partial_2 opcode:oscil3
   a_udu_slap_partial_2_asig_196 oscil3 ((k_amp_short_kout_8 * 0.041) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (548 * i_world_tuning_iout_9), -1, 0
   ; node:udu_slap_partial_3 opcode:oscil3
   a_udu_slap_partial_3_asig_197 oscil3 ((k_amp_snap_kout_6 * 0.016) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (920 * i_world_tuning_iout_9), -1, 0
   a_udu_slap_if_left_63 = (((((a_udu_slap_partial_1_asig_195 * 1) + (a_udu_slap_partial_2_asig_196 * 1)) + (a_udu_slap_partial_3_asig_197 * 1)) + (a_texture_air_aout_10 * 0.7)) + (a_texture_tap_aout_6 * 0.25))
 else
   ; case:udu_slap_off Other notes: silence
   a_udu_slap_if_left_63 = 0
 endif
 ; node:cabasa_short_if opcode:If
 if (i_midi_note_inote_8) == (87) then
   ; case:cabasa_short_hit 87: Cabasa short
   ; node:cabasa_short_ridges opcode:vco2
   a_cabasa_short_ridges_asig_243 vco2 1, 145, 2, 0.28, 0, 0.5
   ; node:cabasa_short_scrape opcode:a_mul
   a_cabasa_short_scrape_aout_244 = ((a_texture_beads_short_aout_14 * ((0.5 + (0.5 * a_cabasa_short_ridges_asig_243))))) * (1.7)
   a_cabasa_short_if_left_77 = (a_cabasa_short_scrape_aout_244 * 1)
 else
   ; case:cabasa_short_off Other notes: silence
   a_cabasa_short_if_left_77 = 0
 endif
 ; node:guiro_short_if opcode:If
 if (i_midi_note_inote_8) == (89) then
   ; case:guiro_short_hit 89: Guiro short
   ; node:guiro_short_partial_1 opcode:oscil3
   a_guiro_short_partial_1_asig_247 oscil3 (k_amp_short_kout_8 * 0.022), (2470 * i_world_tuning_iout_9), -1, 0
   ; node:guiro_short_partial_2 opcode:oscil3
   a_guiro_short_partial_2_asig_248 oscil3 ((k_amp_snap_kout_6 * 0.01) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (4010 * i_world_tuning_iout_9), -1, 0
   ; node:guiro_short_ridges opcode:vco2
   a_guiro_short_ridges_asig_249 vco2 1, 72, 2, 0.14, 0, 0.5
   ; node:guiro_short_scrape opcode:a_mul
   a_guiro_short_scrape_aout_250 = ((a_texture_scrape_short_aout_18 * ((0.5 + (0.5 * a_guiro_short_ridges_asig_249))))) * (2.3)
   a_guiro_short_if_left_79 = (((a_guiro_short_partial_1_asig_247 * 1) + (a_guiro_short_partial_2_asig_248 * 1)) + (a_guiro_short_scrape_aout_250 * 1))
 else
   ; case:guiro_short_off Other notes: silence
   a_guiro_short_if_left_79 = 0
 endif
 ; node:shekere_short_if opcode:If
 if (i_midi_note_inote_8) == (84) then
   ; case:shekere_short_hit 84: Shekere short
   ; node:shekere_short_ridges opcode:vco2
   a_shekere_short_ridges_asig_231 vco2 1, 81, 2, 0.25, 0, 0.5
   ; node:shekere_short_shaker opcode:sekere
   a_shekere_short_shaker_asig_228 sekere (i_velocity_ampmidi_iamp_3 * 0.8), 0.01, 64, 0.25, 0
   ; node:shekere_short_shape opcode:k_to_a
   a_shekere_short_shape_aout_229 interp (k_amp_short_kout_8 * ((0.65 + (0.35 * i_world_brightness_iout_11))))
   ; node:shekere_short_scrape opcode:a_mul
   a_shekere_short_scrape_aout_232 = ((a_texture_shekere_short_aout_26 * ((0.5 + (0.5 * a_shekere_short_ridges_asig_231))))) * (0.9)
   ; node:shekere_short_shaped opcode:a_mul
   a_shekere_short_shaped_aout_230 = (a_shekere_short_shaker_asig_228) * (a_shekere_short_shape_aout_229)
   a_shekere_short_if_left_74 = ((a_shekere_short_shaped_aout_230 * 1) + (a_shekere_short_scrape_aout_232 * 1))
 else
   ; case:shekere_short_off Other notes: silence
   a_shekere_short_if_left_74 = 0
 endif
 ; node:shekere_accent_if opcode:If
 if (i_midi_note_inote_8) == (85) then
   ; case:shekere_accent_hit 85: Shekere accent
   ; node:shekere_accent_ridges opcode:vco2
   a_shekere_accent_ridges_asig_236 vco2 1, 64, 2, 0.33, 0, 0.5
   ; node:shekere_accent_shaker opcode:sekere
   a_shekere_accent_shaker_asig_233 sekere (i_velocity_ampmidi_iamp_3 * 0.28), 0.01, 96, 0.55, 0
   ; node:shekere_accent_shape opcode:k_to_a
   a_shekere_accent_shape_aout_234 interp (k_amp_mid_kout_10 * ((0.65 + (0.35 * i_world_brightness_iout_11))))
   ; node:shekere_accent_scrape opcode:a_mul
   a_shekere_accent_scrape_aout_237 = ((a_texture_shekere_short_aout_26 * ((0.5 + (0.5 * a_shekere_accent_ridges_asig_236))))) * (1.15)
   ; node:shekere_accent_shaped opcode:a_mul
   a_shekere_accent_shaped_aout_235 = (a_shekere_accent_shaker_asig_233) * (a_shekere_accent_shape_aout_234)
   a_shekere_accent_if_left_75 = ((a_shekere_accent_shaped_aout_235 * 1) + (a_shekere_accent_scrape_aout_237 * 1))
 else
   ; case:shekere_accent_off Other notes: silence
   a_shekere_accent_if_left_75 = 0
 endif
 ; node:cajon_bass_if opcode:If
 if (i_midi_note_inote_8) == (74) then
   ; case:cajon_bass_hit 74: Cajon bass
   ; node:cajon_bass_partial_1 opcode:oscil3
   a_cajon_bass_partial_1_asig_198 oscil3 (k_amp_body_kout_12 * 0.17), ((78 * i_world_tuning_iout_9) * k_motion_drop_kenv_17), -1, 0
   ; node:cajon_bass_partial_2 opcode:oscil3
   a_cajon_bass_partial_2_asig_199 oscil3 ((k_amp_short_kout_8 * 0.038) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (155 * i_world_tuning_iout_9), -1, 0
   ; node:cajon_bass_partial_3 opcode:oscil3
   a_cajon_bass_partial_3_asig_200 oscil3 ((k_amp_snap_kout_6 * 0.017) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (231 * i_world_tuning_iout_9), -1, 0
   a_cajon_bass_if_left_64 = (((((a_cajon_bass_partial_1_asig_198 * 1) + (a_cajon_bass_partial_2_asig_199 * 1)) + (a_cajon_bass_partial_3_asig_200 * 1)) + (a_texture_wires_aout_12 * 0.16)) + (a_texture_mallet_aout_2 * 0.16))
 else
   ; case:cajon_bass_off Other notes: silence
   a_cajon_bass_if_left_64 = 0
 endif
 ; node:cajon_slap_if opcode:If
 if (i_midi_note_inote_8) == (75) then
   ; case:cajon_slap_hit 75: Cajon snare slap
   ; node:cajon_slap_partial_1 opcode:oscil3
   a_cajon_slap_partial_1_asig_201 oscil3 (k_amp_short_kout_8 * 0.078), (185 * i_world_tuning_iout_9), -1, 0
   ; node:cajon_slap_partial_2 opcode:oscil3
   a_cajon_slap_partial_2_asig_202 oscil3 ((k_amp_snap_kout_6 * 0.024) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (394 * i_world_tuning_iout_9), -1, 0
   a_cajon_slap_if_left_65 = ((((a_cajon_slap_partial_1_asig_201 * 1) + (a_cajon_slap_partial_2_asig_202 * 1)) + (a_texture_wires_aout_12 * 1)) + (a_texture_slap_aout_8 * 0.35))
 else
   ; case:cajon_slap_off Other notes: silence
   a_cajon_slap_if_left_65 = 0
 endif
 ; node:cajon_edge_if opcode:If
 if (i_midi_note_inote_8) == (76) then
   ; case:cajon_edge_hit 76: Cajon edge
   ; node:cajon_edge_partial_1 opcode:oscil3
   a_cajon_edge_partial_1_asig_203 oscil3 (k_amp_snap_kout_6 * 0.07), (383 * i_world_tuning_iout_9), -1, 0
   ; node:cajon_edge_partial_2 opcode:oscil3
   a_cajon_edge_partial_2_asig_204 oscil3 ((k_amp_tick_kout_4 * 0.032) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (926 * i_world_tuning_iout_9), -1, 0
   a_cajon_edge_if_left_66 = ((((a_cajon_edge_partial_1_asig_203 * 1) + (a_cajon_edge_partial_2_asig_204 * 1)) + (a_texture_wires_aout_12 * 0.3)) + (a_texture_tap_aout_6 * 0.44))
 else
   ; case:cajon_edge_off Other notes: silence
   a_cajon_edge_if_left_66 = 0
 endif
 ; node:tambourine_hit_if opcode:If
 if (i_midi_note_inote_8) == (91) then
   ; case:tambourine_hit_hit 91: Tambourine hit
   ; node:tambourine_hit_partial_1 opcode:oscil3
   a_tambourine_hit_partial_1_asig_255 oscil3 (k_amp_short_kout_8 * 0.057), (190 * i_world_tuning_iout_9), -1, 0
   ; node:tambourine_hit_partial_2 opcode:oscil3
   a_tambourine_hit_partial_2_asig_256 oscil3 ((k_amp_mid_kout_10 * 0.046) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (2300 * i_world_tuning_iout_9), -1, 0
   ; node:tambourine_hit_partial_3 opcode:oscil3
   a_tambourine_hit_partial_3_asig_257 oscil3 ((k_amp_body_kout_12 * 0.034) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (5600 * i_world_tuning_iout_9), -1, 0
   ; node:tambourine_hit_partial_4 opcode:oscil3
   a_tambourine_hit_partial_4_asig_258 oscil3 ((k_amp_mid_kout_10 * 0.018) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (8100 * i_world_tuning_iout_9), -1, 0
   a_tambourine_hit_if_left_81 = (((((a_tambourine_hit_partial_1_asig_255 * 1) + (a_tambourine_hit_partial_2_asig_256 * 1)) + (a_tambourine_hit_partial_3_asig_257 * 1)) + (a_tambourine_hit_partial_4_asig_258 * 1)) + (a_texture_jingle_short_aout_22 * 0.65))
 else
   ; case:tambourine_hit_off Other notes: silence
   a_tambourine_hit_if_left_81 = 0
 endif
 ; node:tambourine_muted_if opcode:If
 if (i_midi_note_inote_8) == (93) then
   ; case:tambourine_muted_hit 93: Tambourine damped
   ; node:tambourine_muted_partial_1 opcode:oscil3
   a_tambourine_muted_partial_1_asig_264 oscil3 (k_amp_snap_kout_6 * 0.036), (205 * i_world_tuning_iout_9), -1, 0
   ; node:tambourine_muted_partial_2 opcode:oscil3
   a_tambourine_muted_partial_2_asig_265 oscil3 ((k_amp_snap_kout_6 * 0.035) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (2300 * i_world_tuning_iout_9), -1, 0
   ; node:tambourine_muted_partial_3 opcode:oscil3
   a_tambourine_muted_partial_3_asig_266 oscil3 ((k_amp_short_kout_8 * 0.025) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (5600 * i_world_tuning_iout_9), -1, 0
   ; node:tambourine_muted_partial_4 opcode:oscil3
   a_tambourine_muted_partial_4_asig_267 oscil3 ((k_amp_snap_kout_6 * 0.012) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (8100 * i_world_tuning_iout_9), -1, 0
   a_tambourine_muted_if_left_83 = (((((a_tambourine_muted_partial_1_asig_264 * 1) + (a_tambourine_muted_partial_2_asig_265 * 1)) + (a_tambourine_muted_partial_3_asig_266 * 1)) + (a_tambourine_muted_partial_4_asig_267 * 1)) + (a_texture_jingle_short_aout_22 * 0.45))
 else
   ; case:tambourine_muted_off Other notes: silence
   a_tambourine_muted_if_left_83 = 0
 endif
 ; node:cabasa_long_if opcode:If
 if (i_midi_note_inote_8) == (88) then
   ; case:cabasa_long_hit 88: Cabasa long
   ; node:cabasa_long_ridges opcode:vco2
   a_cabasa_long_ridges_asig_245 vco2 1, 117, 2, 0.35, 0, 0.5
   ; node:cabasa_long_scrape opcode:a_mul
   a_cabasa_long_scrape_aout_246 = ((a_texture_beads_long_aout_16 * ((0.5 + (0.5 * a_cabasa_long_ridges_asig_245))))) * (1.5)
   a_cabasa_long_if_left_78 = (a_cabasa_long_scrape_aout_246 * 1)
 else
   ; case:cabasa_long_off Other notes: silence
   a_cabasa_long_if_left_78 = 0
 endif
 ; node:guiro_long_if opcode:If
 if (i_midi_note_inote_8) == (90) then
   ; case:guiro_long_hit 90: Guiro long
   ; node:guiro_long_partial_1 opcode:oscil3
   a_guiro_long_partial_1_asig_251 oscil3 (k_amp_body_kout_12 * 0.018), (2470 * i_world_tuning_iout_9), -1, 0
   ; node:guiro_long_partial_2 opcode:oscil3
   a_guiro_long_partial_2_asig_252 oscil3 ((k_amp_mid_kout_10 * 0.008) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (4010 * i_world_tuning_iout_9), -1, 0
   ; node:guiro_long_ridges opcode:vco2
   a_guiro_long_ridges_asig_253 vco2 1, 48, 2, 0.18, 0, 0.5
   ; node:guiro_long_scrape opcode:a_mul
   a_guiro_long_scrape_aout_254 = ((a_texture_scrape_long_aout_20 * ((0.5 + (0.5 * a_guiro_long_ridges_asig_253))))) * (2)
   a_guiro_long_if_left_80 = (((a_guiro_long_partial_1_asig_251 * 1) + (a_guiro_long_partial_2_asig_252 * 1)) + (a_guiro_long_scrape_aout_254 * 1))
 else
   ; case:guiro_long_off Other notes: silence
   a_guiro_long_if_left_80 = 0
 endif
 ; node:shekere_long_if opcode:If
 if (i_midi_note_inote_8) == (86) then
   ; case:shekere_long_hit 86: Shekere long
   ; node:shekere_long_ridges opcode:vco2
   a_shekere_long_ridges_asig_241 vco2 1, 48, 2, 0.4, 0, 0.5
   ; node:shekere_long_shaker opcode:sekere
   a_shekere_long_shaker_asig_238 sekere (i_velocity_ampmidi_iamp_3 * 0.25), 0.01, 128, 0.7, 0
   ; node:shekere_long_shape opcode:k_to_a
   a_shekere_long_shape_aout_239 interp (k_amp_body_kout_12 * ((0.65 + (0.35 * i_world_brightness_iout_11))))
   ; node:shekere_long_scrape opcode:a_mul
   a_shekere_long_scrape_aout_242 = ((a_texture_shekere_long_aout_28 * ((0.5 + (0.5 * a_shekere_long_ridges_asig_241))))) * (1.1)
   ; node:shekere_long_shaped opcode:a_mul
   a_shekere_long_shaped_aout_240 = (a_shekere_long_shaker_asig_238) * (a_shekere_long_shape_aout_239)
   a_shekere_long_if_left_76 = ((a_shekere_long_shaped_aout_240 * 1) + (a_shekere_long_scrape_aout_242 * 1))
 else
   ; case:shekere_long_off Other notes: silence
   a_shekere_long_if_left_76 = 0
 endif
 ; node:tambourine_shake_if opcode:If
 if (i_midi_note_inote_8) == (92) then
   ; case:tambourine_shake_hit 92: Tambourine shake
   ; node:tambourine_shake_partial_1 opcode:oscil3
   a_tambourine_shake_partial_1_asig_259 oscil3 (k_amp_body_kout_12 * 0.033), (2300 * i_world_tuning_iout_9), -1, 0
   ; node:tambourine_shake_partial_2 opcode:oscil3
   a_tambourine_shake_partial_2_asig_260 oscil3 ((k_amp_ring_kout_16 * 0.028) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (5600 * i_world_tuning_iout_9), -1, 0
   ; node:tambourine_shake_partial_3 opcode:oscil3
   a_tambourine_shake_partial_3_asig_261 oscil3 ((k_amp_body_kout_12 * 0.014) * ((0.65 + (0.35 * i_world_brightness_iout_11)))), (8100 * i_world_tuning_iout_9), -1, 0
   ; node:tambourine_shake_ridges opcode:vco2
   a_tambourine_shake_ridges_asig_262 vco2 1, 22, 2, 0.3, 0, 0.5
   ; node:tambourine_shake_scrape opcode:a_mul
   a_tambourine_shake_scrape_aout_263 = ((a_texture_jingle_long_aout_24 * ((0.5 + (0.5 * a_tambourine_shake_ridges_asig_262))))) * (1)
   a_tambourine_shake_if_left_82 = ((((a_tambourine_shake_partial_1_asig_259 * 1) + (a_tambourine_shake_partial_2_asig_260 * 1)) + (a_tambourine_shake_partial_3_asig_261 * 1)) + (a_tambourine_shake_scrape_aout_263 * 1))
 else
   ; case:tambourine_shake_off Other notes: silence
   a_tambourine_shake_if_left_82 = 0
 endif
 ; node:output_pan2 opcode:pan2
 a_output_pan2_aleft_84, a_output_pan2_aright_85 pan2 (2.5 * (((((((((((((((((((((((((((((((((((((((((((((((((((((((a_dunun_open_if_left_29 + a_dunun_muted_if_left_30) + a_surdo_open_if_left_31) + a_surdo_muted_if_left_32) + a_djembe_bass_if_left_33) + a_djembe_tone_if_left_34) + a_djembe_slap_if_left_35) + a_djembe_muted_if_left_36) + a_conga_low_if_left_37) + a_conga_high_if_left_38) + a_conga_muted_if_left_39) + a_conga_slap_if_left_40) + a_bongo_low_if_left_41) + a_bongo_high_if_left_42) + a_bongo_rim_if_left_43) + a_bongo_muted_if_left_44) + a_darbuka_doum_if_left_45) + a_darbuka_tek_if_left_46) + a_darbuka_ka_if_left_47) + a_darbuka_slap_if_left_48) + a_frame_center_if_left_49) + a_frame_rim_if_left_50) + a_frame_muted_if_left_51) + a_tabla_na_if_left_52) + a_tabla_tin_if_left_53) + a_tabla_tun_if_left_54) + a_tabla_te_if_left_55) + a_tabla_ge_if_left_56) + a_tabla_ke_if_left_57) + a_tabla_bend_if_left_58) + a_tabla_dha_if_left_59) + a_tabla_dhin_if_left_60) + a_udu_bass_if_left_61) + a_udu_tap_if_left_62) + a_udu_slap_if_left_63) + a_cajon_bass_if_left_64) + a_cajon_slap_if_left_65) + a_cajon_edge_if_left_66) + a_claves_if_left_67) + a_woodblock_low_if_left_68) + a_woodblock_high_if_left_69) + a_cowbell_open_if_left_70) + a_cowbell_muted_if_left_71) + a_agogo_low_if_left_72) + a_agogo_high_if_left_73) + a_shekere_short_if_left_74) + a_shekere_accent_if_left_75) + a_shekere_long_if_left_76) + a_cabasa_short_if_left_77) + a_cabasa_long_if_left_78) + a_guiro_short_if_left_79) + a_guiro_long_if_left_80) + a_tambourine_hit_if_left_81) + a_tambourine_shake_if_left_82) + a_tambourine_muted_if_left_83))), 0.5, 0
 ; node:output_left opcode:outleta
 outleta "left", a_output_pan2_aleft_84
 ; node:output_right opcode:outleta
 outleta "right", a_output_pan2_aright_85
endin

; mixer stage patch:theme
; patch:e7dae45d-3aca-4f67-bc7d-fef3ac29e4b7 name:Lake Bamboo Flute channel:3 always_on:false
; instance:theme csound:vcs_mix_b9e4b05138bfb5ddfecff5e1
; description: Breath-first bamboo flute with velocity-driven blowing pressure. Air starts immediately, then the bore tone builds. Soft/medium notes settle on the played pitch; firm attacks briefly overblow and fall back; hard blows favor the octave while held. Ground and octave families overlap and exchange strength irregularly near the register boundary, then stabilize away from it. Unequal resonance memory preserves the lower tone through transitions. A recording-informed modal-envelope approximation, not a full air-jet simulation. Best E3–E5, playable to D6. Five compatible controls and dry Stereo Output. Gapless monophonic legato: connected notes preserve the breath, bore and vibrato; pitch changes immediately and velocity follows with a 10 ms half-time. Gaps articulate a new phrase.
; trigger: MIDI channel 3 / score notes; score instrument number: 9
instr vcs_mix_b9e4b05138bfb5ddfecff5e1
 ; Commit the boundary after all collectors, before synthesis.
 k_vcs_legato_previous_gate init 0
 k_vcs_legato_phrase init 0
 k_vcs_legato_release init 0
 k_vcs_legato_current_release = 0
 k_vcs_legato_gate = (gk_vcs_legato_3cb8201e7ff1e7777446_winner > 0 ? 1 : 0)
 k_vcs_legato_start = (k_vcs_legato_gate > k_vcs_legato_previous_gate ? 1 : 0)
 k_vcs_legato_previous_gate = k_vcs_legato_gate
 gk_vcs_legato_3cb8201e7ff1e7777446_winner = 0
 if k_vcs_legato_start == 1 then
  k_vcs_legato_phrase = k_vcs_legato_phrase + 1
  reinit VCS_LEGATO_PHRASE
 endif
 VCS_LEGATO_PHRASE:
 i_vcs_legato_note = i(gk_vcs_legato_3cb8201e7ff1e7777446_note)
 i_vcs_legato_velocity = i(gk_vcs_legato_3cb8201e7ff1e7777446_velocity)
 ; node:20e4df9d-7061-49a7-8b6b-f6c9f5c50c2d opcode:const_i
 i_20e4df9d_7061_49a7_8b6b_f6c9f5c50c2d_iout_12 = 1
 ; node:attack_instability opcode:linseg
 k_attack_instability_kenv_10 linseg 1, 0.16, 1, 0.65, 0, 3600, 0
 ; node:colour_wander opcode:randomi
 k_colour_wander_kout_23 randomi -0.22, 0.22, 2.1, 3, 0
 ; node:competition_rate opcode:jitter
 k_competition_rate_kout_7 jitter 2.4, 2.3, 5.7
 ; node:competition_scatter opcode:randomi
 k_competition_scatter_kout_9 randomi -1, 1, 17.3, 3, 0
 ; node:env_attack_const opcode:const_i
 i_env_attack_const_iout_3 = 0.075
 ; node:env_decay_const opcode:const_i
 i_env_decay_const_iout_4 = 0.32
 ; node:env_release_const opcode:const_i
 i_env_release_const_iout_6 = 0.22
 ; node:env_sustain_const opcode:const_i
 i_env_sustain_const_iout_5 = 0.88
 i_flute_attack_iout_7 chnget "__vcs_perf_419d19b9301f6cd37fe6437c18b454a8cd850f0e4c026ca43a59076174037292"
 i_flute_breath_iout_9 chnget "__vcs_perf_da02565283a709e25008500fddae7438da45ecc68201eeb9203764dd9f6b5312"
 i_flute_release_iout_8 chnget "__vcs_perf_c8c9d807e634704718747ee13f7034c4d7288f1c19ee6dae49a2925db15db808"
 i_flute_tone_iout_10 chnget "__vcs_perf_2467ca5c11656e858fcb302382f53d92c5ec1007600e31da1906cd29bea550a7"
 i_flute_vibrato_iout_11 chnget "__vcs_perf_c972226d87711b434f11239861d2fc5db4f2a0b3d17292ca70890d2496476c09"
 ; node:harmonic_bloom opcode:linseg
 k_harmonic_bloom_kenv_24 linseg 0.75, 0.18, 1.03, 0.6, 0.92, 3600, 0.92
 ; node:jet_flutter opcode:randomi
 k_jet_flutter_kout_20 randomi -0.00065, 0.00065, 17, 3, 0
 ; node:midi_legato_live opcode:midi_legato
 k_midi_legato_live_kfreq_25 = cpsmidinn(gk_vcs_legato_3cb8201e7ff1e7777446_note)
 k_midi_legato_live_kvelocity_26 portk gk_vcs_legato_3cb8201e7ff1e7777446_velocity / 128, 0.01, i_vcs_legato_velocity / 128
 ; node:pitch_drift opcode:randomi
 k_pitch_drift_kout_19 randomi -0.0026, 0.0026, 1.8, 3, 0
 ; node:pressure opcode:randomi
 k_pressure_kout_22 randomi -0.09, 0.09, 3.2, 3, 0
 ; node:velocity_scale_const opcode:const_i
 i_velocity_scale_const_iout_1 = 1
 ; node:vibrato_delay opcode:linseg
 k_vibrato_delay_kenv_15 linseg 0, 0.32, 0, 0.85, 1, 3600, 1
 ; node:vibrato_depth opcode:randomi
 k_vibrato_depth_kout_17 randomi 0.65, 1.2, 1.7, 3, 0
 ; node:vibrato_rate opcode:jitter
 k_vibrato_rate_kout_16 jitter 0.55, 0.45, 1.3
 ; node:competition_pulse opcode:lfo
 k_competition_pulse_kout_8 lfo 1, (6.7 + k_competition_rate_kout_7), 0
 ; node:blowing_pressure opcode:linseg
 k_blowing_pressure_kenv_4 linseg 0, (.014 + (.32 * i_flute_attack_iout_7)), 1, 0.12, 1, 0.4, 1
 ; node:pitch_scoop opcode:linseg
 k_pitch_scoop_kenv_21 linseg -1, (.025 + (1.4 * i_flute_attack_iout_7)), 0.08, 0.12, 0, 3600, 0
 ; node:pressure_overshoot opcode:linseg
 k_pressure_overshoot_kenv_27 linseg 0, (.014 + (.32 * i_flute_attack_iout_7)), 1, 0.12, 1, 0.4, 0
 k_breath_env_kenv_3 vcs_legato_adsr k_vcs_legato_gate, 0.004, 0.06, 1, (((.018 + (.16 * i_flute_release_iout_8))) < 0 ? k_vcs_legato_release : ((.018 + (.16 * i_flute_release_iout_8)))), 0
 k_vcs_legato_current_release = max(k_vcs_legato_current_release, (.018 + (.16 * i_flute_release_iout_8)))
 ; node:velocity_ampmidi opcode:ampmidi
 i_velocity_ampmidi_iamp_2 = ((i_vcs_legato_velocity / 128) * (i_velocity_scale_const_iout_1))
 ; node:vibrato opcode:lfo
 k_vibrato_kout_18 lfo (((i_flute_vibrato_iout_11 * 0.00057762265) * k_vibrato_delay_kenv_15) * k_vibrato_depth_kout_17), (4.8 + k_vibrato_rate_kout_16), 0
 ; node:live_blowing_pressure opcode:k_mul
 k_live_blowing_pressure_kout_28 = (((((.30 + (.68 * k_midi_legato_live_kvelocity_26))) * k_blowing_pressure_kenv_4) + (((.22 * k_midi_legato_live_kvelocity_26) * k_midi_legato_live_kvelocity_26) * k_pressure_overshoot_kenv_27))) * (1)
 k_amp_madsr_kenv_1 vcs_legato_adsr k_vcs_legato_gate, i_flute_attack_iout_7, i_env_decay_const_iout_4, i_env_sustain_const_iout_5, ((-1) < 0 ? k_vcs_legato_release : (-1)), ((.022 + (.30 * i_flute_attack_iout_7)) + (.020 * ((1 - i_velocity_ampmidi_iamp_2))))
 k_vcs_legato_current_release = max(k_vcs_legato_current_release, i_flute_release_iout_8)
 ; node:register_threshold opcode:k_mul
 k_register_threshold_kout_5 = (((((k_live_blowing_pressure_kout_28 * k_breath_env_kenv_3) - .815)) / .13)) * (1)
 ; node:amp_velocity_envelope opcode:k_mul
 k_amp_velocity_envelope_kout_2 = (k_midi_legato_live_kvelocity_26) * (k_amp_madsr_kenv_1)
 ; node:breath_noise opcode:noise
 a_breath_noise_aout_11 noise (((((k_midi_legato_live_kvelocity_26 * k_breath_env_kenv_3) * i_flute_breath_iout_9) * ((.10 + ((.50 * ((1 - k_amp_madsr_kenv_1))) * ((1 - k_amp_madsr_kenv_1)))))) * ((.7 + ((.8 * k_midi_legato_live_kvelocity_26) * k_midi_legato_live_kvelocity_26)))) * ((1 + k_pressure_kout_22))), 0.12
 ; node:bore_capture opcode:k_to_a
 a_bore_capture_aout_14 interp k_amp_madsr_kenv_1
 ; node:register_balance opcode:k_mul
 k_register_balance_kout_6 = ((.5 * (((abs(k_register_threshold_kout_5) - abs((k_register_threshold_kout_5 - 1))) + 1)))) * (1)
 ; node:breath_band opcode:butterbp
 a_breath_band_aout_12 butterbp a_breath_noise_aout_11, 2600, 3600, 0
 ; node:competing_modes opcode:k_mul
 k_competing_modes_kout_11 = ((k_register_balance_kout_6 + ((((((.78 * 4) * k_register_balance_kout_6) * ((1 - k_register_balance_kout_6))) + (((.48 * k_attack_instability_kenv_10) * k_midi_legato_live_kvelocity_26) * k_midi_legato_live_kvelocity_26))) * (((.78 * k_competition_pulse_kout_8) + (.22 * k_competition_scatter_kout_9)))))) * (1)
 ; node:octave_mode opcode:portk
 k_octave_mode_kout_12 portk (.5 * (((abs(k_competing_modes_kout_11) - abs((k_competing_modes_kout_11 - 1))) + 1))), 0.006, 0
 ; node:ground_resonance opcode:portk
 k_ground_resonance_kout_13 portk (.055 + (.945 * ((1 - k_octave_mode_kout_12)))), 0.022, 1
 ; node:upper_resonance opcode:portk
 k_upper_resonance_kout_14 portk k_octave_mode_kout_12, 0.009, 0
 ; node:bore_air opcode:butterbp
 a_bore_air_aout_13 butterbp (a_breath_noise_aout_11 * a_bore_capture_aout_14), ((k_midi_legato_live_kfreq_25 * 2.8) * ((1 + k_octave_mode_kout_12))), (k_midi_legato_live_kfreq_25 * 1.5), 0
 ; node:bore_1 opcode:oscil3
 a_bore_1_asig_1 oscil3 ((k_amp_velocity_envelope_kout_2 * ((1 + k_pressure_kout_22))) * ((0.4 * k_ground_resonance_kout_13))), ((k_midi_legato_live_kfreq_25 * 1) * (((((1 + k_vibrato_kout_18) + k_pitch_drift_kout_19) + k_jet_flutter_kout_20) + (.012 * k_pitch_scoop_kenv_21)))), -1, 0
 ; node:bore_3 opcode:oscil3
 a_bore_3_asig_3 oscil3 ((k_amp_velocity_envelope_kout_2 * ((1 + k_pressure_kout_22))) * ((((((0.19 * k_ground_resonance_kout_13) * ((.30 + (.70 * k_midi_legato_live_kvelocity_26)))) * k_harmonic_bloom_kenv_24) * ((1 + k_colour_wander_kout_23))) / ((1 + ((((k_midi_legato_live_kfreq_25 * 1) / 950)) * (((k_midi_legato_live_kfreq_25 * 1) / 950)))))))), ((k_midi_legato_live_kfreq_25 * 3) * (((((1 + k_vibrato_kout_18) + k_pitch_drift_kout_19) + k_jet_flutter_kout_20) + (.012 * k_pitch_scoop_kenv_21)))), -1, 0
 ; node:bore_5 opcode:oscil3
 a_bore_5_asig_5 oscil3 ((k_amp_velocity_envelope_kout_2 * ((1 + k_pressure_kout_22))) * ((((((0.018 * k_ground_resonance_kout_13) * ((.30 + (.70 * k_midi_legato_live_kvelocity_26)))) * k_harmonic_bloom_kenv_24) * ((1 + k_colour_wander_kout_23))) / ((1 + ((((k_midi_legato_live_kfreq_25 * 1) / 950)) * (((k_midi_legato_live_kfreq_25 * 1) / 950)))))))), ((k_midi_legato_live_kfreq_25 * 5) * (((((1 + k_vibrato_kout_18) + k_pitch_drift_kout_19) + k_jet_flutter_kout_20) + (.012 * k_pitch_scoop_kenv_21)))), -1, 0
 ; node:bore_7 opcode:oscil3
 a_bore_7_asig_7 oscil3 ((k_amp_velocity_envelope_kout_2 * ((1 + k_pressure_kout_22))) * ((((((0.007 * k_ground_resonance_kout_13) * ((.30 + (.70 * k_midi_legato_live_kvelocity_26)))) * k_harmonic_bloom_kenv_24) * ((1 + k_colour_wander_kout_23))) / ((1 + ((((k_midi_legato_live_kfreq_25 * 1) / 950)) * (((k_midi_legato_live_kfreq_25 * 1) / 950)))))))), ((k_midi_legato_live_kfreq_25 * 7) * (((((1 + k_vibrato_kout_18) + k_pitch_drift_kout_19) + k_jet_flutter_kout_20) + (.012 * k_pitch_scoop_kenv_21)))), -1, 0
 ; node:bore_2 opcode:oscil3
 a_bore_2_asig_2 oscil3 ((k_amp_velocity_envelope_kout_2 * ((1 + k_pressure_kout_22))) * (((((((0.3 * k_ground_resonance_kout_13) * ((.30 + (.70 * k_midi_legato_live_kvelocity_26)))) * k_harmonic_bloom_kenv_24) * ((1 + k_colour_wander_kout_23))) / ((1 + ((((k_midi_legato_live_kfreq_25 * 1) / 1800)) * (((k_midi_legato_live_kfreq_25 * 1) / 1800)))))) + (0.48 * k_upper_resonance_kout_14)))), ((k_midi_legato_live_kfreq_25 * 2) * (((((1 + k_vibrato_kout_18) + k_pitch_drift_kout_19) + k_jet_flutter_kout_20) + (.012 * k_pitch_scoop_kenv_21)))), -1, 0
 ; node:bore_4 opcode:oscil3
 a_bore_4_asig_4 oscil3 ((k_amp_velocity_envelope_kout_2 * ((1 + k_pressure_kout_22))) * (((((((0.023 * k_ground_resonance_kout_13) * ((.30 + (.70 * k_midi_legato_live_kvelocity_26)))) * k_harmonic_bloom_kenv_24) * ((1 + k_colour_wander_kout_23))) / ((1 + ((((k_midi_legato_live_kfreq_25 * 1) / 950)) * (((k_midi_legato_live_kfreq_25 * 1) / 950)))))) + (((((0.19 * k_upper_resonance_kout_14) * ((.30 + (.70 * k_midi_legato_live_kvelocity_26)))) * k_harmonic_bloom_kenv_24) * ((1 + k_colour_wander_kout_23))) / ((1 + ((((k_midi_legato_live_kfreq_25 * 2) / 1800)) * (((k_midi_legato_live_kfreq_25 * 2) / 1800))))))))), ((k_midi_legato_live_kfreq_25 * 4) * (((((1 + k_vibrato_kout_18) + k_pitch_drift_kout_19) + k_jet_flutter_kout_20) + (.012 * k_pitch_scoop_kenv_21)))), -1, 0
 ; node:bore_6 opcode:oscil3
 a_bore_6_asig_6 oscil3 ((k_amp_velocity_envelope_kout_2 * ((1 + k_pressure_kout_22))) * (((((((0.013 * k_ground_resonance_kout_13) * ((.30 + (.70 * k_midi_legato_live_kvelocity_26)))) * k_harmonic_bloom_kenv_24) * ((1 + k_colour_wander_kout_23))) / ((1 + ((((k_midi_legato_live_kfreq_25 * 1) / 950)) * (((k_midi_legato_live_kfreq_25 * 1) / 950)))))) + (((((0.16 * k_upper_resonance_kout_14) * ((.30 + (.70 * k_midi_legato_live_kvelocity_26)))) * k_harmonic_bloom_kenv_24) * ((1 + k_colour_wander_kout_23))) / ((1 + ((((k_midi_legato_live_kfreq_25 * 2) / 950)) * (((k_midi_legato_live_kfreq_25 * 2) / 950))))))))), ((k_midi_legato_live_kfreq_25 * 6) * (((((1 + k_vibrato_kout_18) + k_pitch_drift_kout_19) + k_jet_flutter_kout_20) + (.012 * k_pitch_scoop_kenv_21)))), -1, 0
 ; node:bore_8 opcode:oscil3
 a_bore_8_asig_8 oscil3 ((k_amp_velocity_envelope_kout_2 * ((1 + k_pressure_kout_22))) * ((((((0.02 * k_upper_resonance_kout_14) * ((.30 + (.70 * k_midi_legato_live_kvelocity_26)))) * k_harmonic_bloom_kenv_24) * ((1 + k_colour_wander_kout_23))) / ((1 + ((((k_midi_legato_live_kfreq_25 * 2) / 950)) * (((k_midi_legato_live_kfreq_25 * 2) / 950)))))))), ((k_midi_legato_live_kfreq_25 * 8) * (((((1 + k_vibrato_kout_18) + k_pitch_drift_kout_19) + k_jet_flutter_kout_20) + (.012 * k_pitch_scoop_kenv_21)))), -1, 0
 ; node:bore_10 opcode:oscil3
 a_bore_10_asig_9 oscil3 ((k_amp_velocity_envelope_kout_2 * ((1 + k_pressure_kout_22))) * ((((((0.014 * k_upper_resonance_kout_14) * ((.30 + (.70 * k_midi_legato_live_kvelocity_26)))) * k_harmonic_bloom_kenv_24) * ((1 + k_colour_wander_kout_23))) / ((1 + ((((k_midi_legato_live_kfreq_25 * 2) / 950)) * (((k_midi_legato_live_kfreq_25 * 2) / 950)))))))), ((k_midi_legato_live_kfreq_25 * 10) * (((((1 + k_vibrato_kout_18) + k_pitch_drift_kout_19) + k_jet_flutter_kout_20) + (.012 * k_pitch_scoop_kenv_21)))), -1, 0
 ; node:bore_12 opcode:oscil3
 a_bore_12_asig_10 oscil3 ((k_amp_velocity_envelope_kout_2 * ((1 + k_pressure_kout_22))) * ((((((0.01 * k_upper_resonance_kout_14) * ((.30 + (.70 * k_midi_legato_live_kvelocity_26)))) * k_harmonic_bloom_kenv_24) * ((1 + k_colour_wander_kout_23))) / ((1 + ((((k_midi_legato_live_kfreq_25 * 2) / 950)) * (((k_midi_legato_live_kfreq_25 * 2) / 950)))))))), ((k_midi_legato_live_kfreq_25 * 12) * (((((1 + k_vibrato_kout_18) + k_pitch_drift_kout_19) + k_jet_flutter_kout_20) + (.012 * k_pitch_scoop_kenv_21)))), -1, 0
 ; node:warmth opcode:butterlp
 a_warmth_aout_15 butterlp (((((((((((a_bore_1_asig_1 + a_bore_2_asig_2) + a_bore_3_asig_3) + a_bore_4_asig_4) + a_bore_5_asig_5) + a_bore_6_asig_6) + a_bore_7_asig_7) + a_bore_8_asig_8) + a_bore_10_asig_9) + a_bore_12_asig_10) + a_breath_band_aout_12) + (.8 * a_bore_air_aout_13)), i_flute_tone_iout_10, 0
 ; node:output_pan2 opcode:pan2
 a_output_pan2_aleft_16, a_output_pan2_aright_17 pan2 (a_warmth_aout_15 * 0.42), 0.5, 0
 k_vcs_legato_release = k_vcs_legato_current_release
 rireturn
 a_output_left_asignal_18 vcs_legato_declick a_output_pan2_aleft_16, k_vcs_legato_phrase
 a_output_right_asignal_19 vcs_legato_declick a_output_pan2_aright_17, k_vcs_legato_phrase
 ; node:output_left opcode:outleta
 outleta "left", a_output_left_asignal_18
 ; node:output_right opcode:outleta
 outleta "right", a_output_right_asignal_19
endin

; mixer stage patch:water
; patch:006e4f9e-8822-4dc6-bec3-9d806c689672 name:Undertow Motion Pad channel:2 always_on:false
; instance:water csound:vcs_mix_b14e1cc299c27e165a2e5389
; description: Dark triangle and PWM pulse pad. Sine LFO moves pulse width from 0.32 to 0.68 and filter cutoff from 70% to 130% of Tone. Motion is Hz, not tempo sync. Suggested MIDI notes 43–79. Dry, velocity-sensitive, polyphonic. Three per-instance controls read on new notes. Route Stereo Output through the performance mixer to Master.
; trigger: MIDI channel 2 / score notes; score instrument number: 10
instr vcs_mix_b14e1cc299c27e165a2e5389
 i_vcs_internal_score_note_p4 = p4
 i_vcs_internal_score_velocity_p5 = p5
 ; node:env_attack_const opcode:const_i
 i_env_attack_const_iout_4 = 0.6
 ; node:env_decay_const opcode:const_i
 i_env_decay_const_iout_5 = 1.5
 ; node:env_sustain_const opcode:const_i
 i_env_sustain_const_iout_6 = 0.7
 ; node:pitch_cpsmidi opcode:cpsmidi
 i_pitch_cpsmidi_kfreq_1 = cpsmidinn(p4)
 ; node:pulse_gain opcode:const_k
 k_pulse_gain_kout_5 = 0.09
 ; node:triangle_gain opcode:const_k
 k_triangle_gain_kout_3 = 0.14
 i_undertow_motion_iout_8 chnget "__vcs_perf_19092f4117a3a762efc39f20cc72687f9b421833ed99e1782f81c403cc341613"
 i_undertow_release_iout_9 chnget "__vcs_perf_a858a0b68b8f10e48515157057f334e7ff4d5fd5b578b878309d622207e73a4d"
 i_undertow_tone_iout_7 chnget "__vcs_perf_04bc27c6c8abf872a67d7e16fd74515710214d06df77916866ac592c67b93300"
 ; node:velocity_scale_const opcode:const_i
 i_velocity_scale_const_iout_2 = 1
 ; node:undertow_lfo opcode:lfo
 k_undertow_lfo_kout_7 lfo 1, i_undertow_motion_iout_8, 0
 ; node:amp_madsr opcode:madsr
 k_amp_madsr_kenv_1 madsr i_env_attack_const_iout_4, i_env_decay_const_iout_5, i_env_sustain_const_iout_6, i_undertow_release_iout_9, 0, -1
 ; node:velocity_ampmidi opcode:ampmidi
 i_velocity_ampmidi_iamp_3 = ((p5 / 128) * (i_velocity_scale_const_iout_2))
 ; node:amp_velocity_envelope opcode:k_mul
 k_amp_velocity_envelope_kout_2 = (i_velocity_ampmidi_iamp_3) * (k_amp_madsr_kenv_1)
 ; node:triangle_amp opcode:k_mul
 k_triangle_amp_kout_4 = (k_amp_velocity_envelope_kout_2) * (k_triangle_gain_kout_3)
 ; node:pulse_amp opcode:k_mul
 k_pulse_amp_kout_6 = (k_amp_velocity_envelope_kout_2) * (k_pulse_gain_kout_5)
 ; node:triangle_vco2 opcode:vco2
 a_triangle_vco2_asig_1 vco2 k_triangle_amp_kout_4, i_pitch_cpsmidi_kfreq_1, 12, 0.5, 0, 0.5
 ; node:pulse_vco2 opcode:vco2
 a_pulse_vco2_asig_2 vco2 k_pulse_amp_kout_6, i_pitch_cpsmidi_kfreq_1, 2, (0.5 + (0.18 * k_undertow_lfo_kout_7)), 0.25, 0.5
 ; node:layer_mix_1 opcode:mix2
 a_layer_mix_1_aout_3 = (a_triangle_vco2_asig_1) + (a_pulse_vco2_asig_2)
 ; node:effect_1_butterhp opcode:butterhp
 a_effect_1_butterhp_aout_4 butterhp a_layer_mix_1_aout_3, 70, 0
 ; node:effect_2_moogladder2 opcode:moogladder2
 a_effect_2_moogladder2_aout_5 moogladder2 a_effect_1_butterhp_aout_4, (i_undertow_tone_iout_7 * ((1 + (0.3 * k_undertow_lfo_kout_7)))), 0.18
 ; node:output_pan2 opcode:pan2
 a_output_pan2_aleft_6, a_output_pan2_aright_7 pan2 ((a_effect_2_moogladder2_aout_5 * 0.85) * 25), 0.5, 0
 ; node:output_left opcode:outleta
 outleta "left", a_output_pan2_aleft_6
 ; node:output_right opcode:outleta
 outleta "right", a_output_pan2_aright_7
endin

; mixer stage strip:4643f76a-a275-463b-b07f-6fbf23b3ed85
; mixer strip: EBM DW — Glass Bell [4643f76a-a275-463b-b07f-6fbf23b3ed85]
; initial gain: -7.4 dB; balance/pan: -0.3; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_40b8a595fab8ccc56ec50add
 k_meter metro 15
 k_gain chnget "__vcs_mixer_strip_8a13dda037195903e48cf59e_gain"
 a_gain vcs_mixer_ramp k_gain, 0.42657951880159267
 k_left chnget "__vcs_mixer_strip_8a13dda037195903e48cf59e_left"
 a_left vcs_mixer_ramp k_left, 1
 k_right chnget "__vcs_mixer_strip_8a13dda037195903e48cf59e_right"
 a_right vcs_mixer_ramp k_right, 0.69999999999999996
 k_mute chnget "__vcs_mixer_strip_8a13dda037195903e48cf59e_mute"
 a_mute vcs_mixer_ramp k_mute, 1
 a_p_360f84035942243c6a36537a inleta "p_360f84035942243c6a36537a"
 a_p_360f84035942243c6a36537a_post = a_p_360f84035942243c6a36537a * a_gain * a_left
 a_p_27042f4e6eca7d0b2a7ee402 inleta "p_27042f4e6eca7d0b2a7ee402"
 a_p_27042f4e6eca7d0b2a7ee402_post = a_p_27042f4e6eca7d0b2a7ee402 * a_gain * a_right
 a_meter_left = a_p_360f84035942243c6a36537a_post * a_mute
 a_meter_right = a_p_27042f4e6eca7d0b2a7ee402_post * a_mute
 k_peakL max_k a_meter_left, k_meter, 1
 k_rmsL rms a_meter_left
 chnset k_peakL / 1.0, "__vcs_mixer_meter_8a13dda037195903e48cf59e_peakL"
 chnset k_rmsL / 1.0, "__vcs_mixer_meter_8a13dda037195903e48cf59e_rmsL"
 k_peakR max_k a_meter_right, k_meter, 1
 k_rmsR rms a_meter_right
 chnset k_peakR / 1.0, "__vcs_mixer_meter_8a13dda037195903e48cf59e_peakR"
 chnset k_rmsR / 1.0, "__vcs_mixer_meter_8a13dda037195903e48cf59e_rmsR"
 outleta "pre_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a
 outleta "post_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a_post
 outleta "pre_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402
 outleta "post_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402_post
endin

; mixer stage route:82eff115-71e9-4212-b1dc-7199ad515312
; audio route:82eff115-71e9-4212-b1dc-7199ad515312 kind:main
; from: EBM DW — Glass Bell [4643f76a-a275-463b-b07f-6fbf23b3ed85] port:right stage:strip -> Master [$master] port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_c8a2c2acfcbc28a74a3f043b
 k_post chnget "__vcs_mixer_route_5742bc708fe612c618f19d29_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_5742bc708fe612c618f19d29_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_5742bc708fe612c618f19d29_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:8dce1ebf-81e3-4752-9eae-fa1ff23ad378
; audio route:8dce1ebf-81e3-4752-9eae-fa1ff23ad378 kind:main
; from: EBM DW — Glass Bell [4643f76a-a275-463b-b07f-6fbf23b3ed85] port:left stage:strip -> Master [$master] port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_500991ca962627be74662ff8
 k_post chnget "__vcs_mixer_route_7bbd41ec2904ad84226625c0_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_7bbd41ec2904ad84226625c0_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_7bbd41ec2904ad84226625c0_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:9a344430-b20e-4749-bfe1-6f30e9cc28bf
; audio route:9a344430-b20e-4749-bfe1-6f30e9cc28bf kind:send
; from: EBM DW — Glass Bell [4643f76a-a275-463b-b07f-6fbf23b3ed85] port:right stage:strip -> Reverb Effect [space] port:right stage:input
; tap: post-fader; initial route gain: 1.7 dB; source mute and mixer solo gate this route.
instr vcs_mix_deddb2703d8bf520becc6265
 k_post chnget "__vcs_mixer_route_87d81c3ce84f64aa9d8f3ee1_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_87d81c3ce84f64aa9d8f3ee1_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_87d81c3ce84f64aa9d8f3ee1_gain"
 a_send vcs_mixer_ramp k_send, 1.2161860006463681
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:cdaacb93-6708-49c3-b0a5-684e2c83ee34
; audio route:cdaacb93-6708-49c3-b0a5-684e2c83ee34 kind:main
; from: EBM DW — Glass Bell [4643f76a-a275-463b-b07f-6fbf23b3ed85] port:left stage:strip -> Compressor Effect [0442aeda-2002-410e-a689-9d4bf3438b0c] port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_b03b717295d0d818ccdae332
 k_post chnget "__vcs_mixer_route_911f25026ebc9b6c9f559498_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_911f25026ebc9b6c9f559498_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_911f25026ebc9b6c9f559498_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:df9df1bb-4acf-437f-929f-4ba2456b7ad9
; audio route:df9df1bb-4acf-437f-929f-4ba2456b7ad9 kind:main
; from: EBM DW — Glass Bell [4643f76a-a275-463b-b07f-6fbf23b3ed85] port:right stage:strip -> Compressor Effect [0442aeda-2002-410e-a689-9d4bf3438b0c] port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_2441ada24812360a07cf8f31
 k_post chnget "__vcs_mixer_route_e7fc9d0d42e9d7c339422ff2_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_e7fc9d0d42e9d7c339422ff2_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_e7fc9d0d42e9d7c339422ff2_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:fa701633-31d0-4bc5-a2fe-7bf8db31fe76
; audio route:fa701633-31d0-4bc5-a2fe-7bf8db31fe76 kind:send
; from: EBM DW — Glass Bell [4643f76a-a275-463b-b07f-6fbf23b3ed85] port:left stage:strip -> Reverb Effect [space] port:left stage:input
; tap: post-fader; initial route gain: 1.7 dB; source mute and mixer solo gate this route.
instr vcs_mix_2c5f950c388d634080fcec19
 k_post chnget "__vcs_mixer_route_b82e7c2597515b9db7be31ff_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_b82e7c2597515b9db7be31ff_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_b82e7c2597515b9db7be31ff_gain"
 a_send vcs_mixer_ramp k_send, 1.2161860006463681
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage strip:analog-drums
; mixer strip: Analog Drumkit [analog-drums]
; initial gain: 2.2 dB; balance/pan: 0; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_f587fd864dbe76f7dac981dc
 k_meter metro 15
 k_gain chnget "__vcs_mixer_strip_7ddd6c416ed77ba1d3a6f7df_gain"
 a_gain vcs_mixer_ramp k_gain, 1.288249551693134
 k_left chnget "__vcs_mixer_strip_7ddd6c416ed77ba1d3a6f7df_left"
 a_left vcs_mixer_ramp k_left, 1
 k_right chnget "__vcs_mixer_strip_7ddd6c416ed77ba1d3a6f7df_right"
 a_right vcs_mixer_ramp k_right, 1
 k_mute chnget "__vcs_mixer_strip_7ddd6c416ed77ba1d3a6f7df_mute"
 a_mute vcs_mixer_ramp k_mute, 1
 a_p_360f84035942243c6a36537a inleta "p_360f84035942243c6a36537a"
 a_p_360f84035942243c6a36537a_post = a_p_360f84035942243c6a36537a * a_gain * a_left
 a_p_27042f4e6eca7d0b2a7ee402 inleta "p_27042f4e6eca7d0b2a7ee402"
 a_p_27042f4e6eca7d0b2a7ee402_post = a_p_27042f4e6eca7d0b2a7ee402 * a_gain * a_right
 a_meter_left = a_p_360f84035942243c6a36537a_post * a_mute
 a_meter_right = a_p_27042f4e6eca7d0b2a7ee402_post * a_mute
 k_peakL max_k a_meter_left, k_meter, 1
 k_rmsL rms a_meter_left
 chnset k_peakL / 1.0, "__vcs_mixer_meter_7ddd6c416ed77ba1d3a6f7df_peakL"
 chnset k_rmsL / 1.0, "__vcs_mixer_meter_7ddd6c416ed77ba1d3a6f7df_rmsL"
 k_peakR max_k a_meter_right, k_meter, 1
 k_rmsR rms a_meter_right
 chnset k_peakR / 1.0, "__vcs_mixer_meter_7ddd6c416ed77ba1d3a6f7df_peakR"
 chnset k_rmsR / 1.0, "__vcs_mixer_meter_7ddd6c416ed77ba1d3a6f7df_rmsR"
 outleta "pre_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a
 outleta "post_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a_post
 outleta "pre_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402
 outleta "post_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402_post
endin

; mixer stage route:2b15ebe4-82d5-44ca-a14a-99418f2086e3
; audio route:2b15ebe4-82d5-44ca-a14a-99418f2086e3 kind:main
; from: Analog Drumkit [analog-drums] port:right stage:strip -> Compressor Effect [0442aeda-2002-410e-a689-9d4bf3438b0c] port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_45321574ecb8e72b857ec4e4
 k_post chnget "__vcs_mixer_route_d4d76238fa7760fe13826b79_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_d4d76238fa7760fe13826b79_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_d4d76238fa7760fe13826b79_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:dde1be41-9012-4895-ae7d-6e96f1024999
; audio route:dde1be41-9012-4895-ae7d-6e96f1024999 kind:main
; from: Analog Drumkit [analog-drums] port:left stage:strip -> Compressor Effect [0442aeda-2002-410e-a689-9d4bf3438b0c] port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_b356bf50412fc2f8c4e70b37
 k_post chnget "__vcs_mixer_route_48b5ffdbe47af58ca33d1c73_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_48b5ffdbe47af58ca33d1c73_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_48b5ffdbe47af58ca33d1c73_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage strip:bass
; mixer strip: Rubber Core FM Bass [bass]
; initial gain: -1.3 dB; balance/pan: -0.28; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_d69e2b115c3aedc5f5e51463
 k_meter metro 15
 k_gain chnget "__vcs_mixer_strip_441349e1ec2f7fd0aa17267b_gain"
 a_gain vcs_mixer_ramp k_gain, 0.86099375218460061
 k_left chnget "__vcs_mixer_strip_441349e1ec2f7fd0aa17267b_left"
 a_left vcs_mixer_ramp k_left, 1
 k_right chnget "__vcs_mixer_strip_441349e1ec2f7fd0aa17267b_right"
 a_right vcs_mixer_ramp k_right, 0.71999999999999997
 k_mute chnget "__vcs_mixer_strip_441349e1ec2f7fd0aa17267b_mute"
 a_mute vcs_mixer_ramp k_mute, 1
 a_p_360f84035942243c6a36537a inleta "p_360f84035942243c6a36537a"
 a_p_360f84035942243c6a36537a_post = a_p_360f84035942243c6a36537a * a_gain * a_left
 a_p_27042f4e6eca7d0b2a7ee402 inleta "p_27042f4e6eca7d0b2a7ee402"
 a_p_27042f4e6eca7d0b2a7ee402_post = a_p_27042f4e6eca7d0b2a7ee402 * a_gain * a_right
 a_meter_left = a_p_360f84035942243c6a36537a_post * a_mute
 a_meter_right = a_p_27042f4e6eca7d0b2a7ee402_post * a_mute
 k_peakL max_k a_meter_left, k_meter, 1
 k_rmsL rms a_meter_left
 chnset k_peakL / 1.0, "__vcs_mixer_meter_441349e1ec2f7fd0aa17267b_peakL"
 chnset k_rmsL / 1.0, "__vcs_mixer_meter_441349e1ec2f7fd0aa17267b_rmsL"
 k_peakR max_k a_meter_right, k_meter, 1
 k_rmsR rms a_meter_right
 chnset k_peakR / 1.0, "__vcs_mixer_meter_441349e1ec2f7fd0aa17267b_peakR"
 chnset k_rmsR / 1.0, "__vcs_mixer_meter_441349e1ec2f7fd0aa17267b_rmsR"
 outleta "pre_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a
 outleta "post_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a_post
 outleta "pre_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402
 outleta "post_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402_post
endin

; mixer stage route:5285cbb6-3a55-4ab1-a207-7f94edcd327d
; audio route:5285cbb6-3a55-4ab1-a207-7f94edcd327d kind:main
; from: Rubber Core FM Bass [bass] port:left stage:strip -> Compressor Effect [0442aeda-2002-410e-a689-9d4bf3438b0c] port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_301a93aa3312006348b9ea12
 k_post chnget "__vcs_mixer_route_68c2746e4371822e1b4c1884_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_68c2746e4371822e1b4c1884_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_68c2746e4371822e1b4c1884_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:ddaf3db3-b0bc-4369-8e34-579f7de2eeb2
; audio route:ddaf3db3-b0bc-4369-8e34-579f7de2eeb2 kind:main
; from: Rubber Core FM Bass [bass] port:right stage:strip -> Compressor Effect [0442aeda-2002-410e-a689-9d4bf3438b0c] port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_0032e2e3319930056b07eb25
 k_post chnget "__vcs_mixer_route_ed07f842c17c8b083d47c2b3_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_ed07f842c17c8b083d47c2b3_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_ed07f842c17c8b083d47c2b3_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage strip:low-bass
; mixer strip: EBM DW — Sequencer Bass [low-bass]
; initial gain: 1.8 dB; balance/pan: 0.65; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_96e0b5694cd28ee67ade387c
 k_meter metro 15
 k_gain chnget "__vcs_mixer_strip_f3ada7f825e2674770019ad7_gain"
 a_gain vcs_mixer_ramp k_gain, 1.2302687708123816
 k_left chnget "__vcs_mixer_strip_f3ada7f825e2674770019ad7_left"
 a_left vcs_mixer_ramp k_left, 0.34999999999999998
 k_right chnget "__vcs_mixer_strip_f3ada7f825e2674770019ad7_right"
 a_right vcs_mixer_ramp k_right, 1
 k_mute chnget "__vcs_mixer_strip_f3ada7f825e2674770019ad7_mute"
 a_mute vcs_mixer_ramp k_mute, 1
 a_p_360f84035942243c6a36537a inleta "p_360f84035942243c6a36537a"
 a_p_360f84035942243c6a36537a_post = a_p_360f84035942243c6a36537a * a_gain * a_left
 a_p_27042f4e6eca7d0b2a7ee402 inleta "p_27042f4e6eca7d0b2a7ee402"
 a_p_27042f4e6eca7d0b2a7ee402_post = a_p_27042f4e6eca7d0b2a7ee402 * a_gain * a_right
 a_meter_left = a_p_360f84035942243c6a36537a_post * a_mute
 a_meter_right = a_p_27042f4e6eca7d0b2a7ee402_post * a_mute
 k_peakL max_k a_meter_left, k_meter, 1
 k_rmsL rms a_meter_left
 chnset k_peakL / 1.0, "__vcs_mixer_meter_f3ada7f825e2674770019ad7_peakL"
 chnset k_rmsL / 1.0, "__vcs_mixer_meter_f3ada7f825e2674770019ad7_rmsL"
 k_peakR max_k a_meter_right, k_meter, 1
 k_rmsR rms a_meter_right
 chnset k_peakR / 1.0, "__vcs_mixer_meter_f3ada7f825e2674770019ad7_peakR"
 chnset k_rmsR / 1.0, "__vcs_mixer_meter_f3ada7f825e2674770019ad7_rmsR"
 outleta "pre_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a
 outleta "post_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a_post
 outleta "pre_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402
 outleta "post_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402_post
endin

; mixer stage route:5c572694-e332-4b2d-96a7-f642523a0f71
; audio route:5c572694-e332-4b2d-96a7-f642523a0f71 kind:send
; from: EBM DW — Sequencer Bass [low-bass] port:left stage:strip -> Reverb Effect [space] port:left stage:input
; tap: pre-fader; initial route gain: -6.5 dB; source mute and mixer solo gate this route.
instr vcs_mix_34392e53d49c41d8a6187f12
 k_post chnget "__vcs_mixer_route_71036d044ac2938742761e85_post"
 a_post vcs_mixer_ramp k_post, 0
 k_pan chnget "__vcs_mixer_route_71036d044ac2938742761e85_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_71036d044ac2938742761e85_gain"
 a_send vcs_mixer_ramp k_send, 0.47315125896148047
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:5e495b88-d4e6-4001-9886-3668348aca1c
; audio route:5e495b88-d4e6-4001-9886-3668348aca1c kind:send
; from: EBM DW — Sequencer Bass [low-bass] port:right stage:strip -> Reverb Effect [space] port:right stage:input
; tap: pre-fader; initial route gain: -6.5 dB; source mute and mixer solo gate this route.
instr vcs_mix_cb6253c8c426dbc1e7d4bd2e
 k_post chnget "__vcs_mixer_route_5b92c8041242c3cf11d36d20_post"
 a_post vcs_mixer_ramp k_post, 0
 k_pan chnget "__vcs_mixer_route_5b92c8041242c3cf11d36d20_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_5b92c8041242c3cf11d36d20_gain"
 a_send vcs_mixer_ramp k_send, 0.47315125896148047
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:921e0c9c-0f4a-4f26-8c66-bb0b19f13be4
; audio route:921e0c9c-0f4a-4f26-8c66-bb0b19f13be4 kind:main
; from: EBM DW — Sequencer Bass [low-bass] port:left stage:strip -> Compressor Effect [0442aeda-2002-410e-a689-9d4bf3438b0c] port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_8840e65ed8726a0d8b23838e
 k_post chnget "__vcs_mixer_route_846651823f147ba95d571066_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_846651823f147ba95d571066_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_846651823f147ba95d571066_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:d3a9920f-00b8-4d31-a45b-bded6330a1a0
; audio route:d3a9920f-00b8-4d31-a45b-bded6330a1a0 kind:main
; from: EBM DW — Sequencer Bass [low-bass] port:right stage:strip -> Compressor Effect [0442aeda-2002-410e-a689-9d4bf3438b0c] port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_3664308a194251e5bdeaea08
 k_post chnget "__vcs_mixer_route_c40d3da012728a4738783bc3_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_c40d3da012728a4738783bc3_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_c40d3da012728a4738783bc3_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage strip:reflections
; mixer strip: Prism FM Pluck [reflections]
; initial gain: -12.7 dB; balance/pan: 0.37; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_355b6360dd6ea9c11c218c76
 k_meter metro 15
 k_gain chnget "__vcs_mixer_strip_46eea9ab04296184a55bc06f_gain"
 a_gain vcs_mixer_ramp k_gain, 0.23173946499684786
 k_left chnget "__vcs_mixer_strip_46eea9ab04296184a55bc06f_left"
 a_left vcs_mixer_ramp k_left, 0.63
 k_right chnget "__vcs_mixer_strip_46eea9ab04296184a55bc06f_right"
 a_right vcs_mixer_ramp k_right, 1
 k_mute chnget "__vcs_mixer_strip_46eea9ab04296184a55bc06f_mute"
 a_mute vcs_mixer_ramp k_mute, 1
 a_p_360f84035942243c6a36537a inleta "p_360f84035942243c6a36537a"
 a_p_360f84035942243c6a36537a_post = a_p_360f84035942243c6a36537a * a_gain * a_left
 a_p_27042f4e6eca7d0b2a7ee402 inleta "p_27042f4e6eca7d0b2a7ee402"
 a_p_27042f4e6eca7d0b2a7ee402_post = a_p_27042f4e6eca7d0b2a7ee402 * a_gain * a_right
 a_meter_left = a_p_360f84035942243c6a36537a_post * a_mute
 a_meter_right = a_p_27042f4e6eca7d0b2a7ee402_post * a_mute
 k_peakL max_k a_meter_left, k_meter, 1
 k_rmsL rms a_meter_left
 chnset k_peakL / 1.0, "__vcs_mixer_meter_46eea9ab04296184a55bc06f_peakL"
 chnset k_rmsL / 1.0, "__vcs_mixer_meter_46eea9ab04296184a55bc06f_rmsL"
 k_peakR max_k a_meter_right, k_meter, 1
 k_rmsR rms a_meter_right
 chnset k_peakR / 1.0, "__vcs_mixer_meter_46eea9ab04296184a55bc06f_peakR"
 chnset k_rmsR / 1.0, "__vcs_mixer_meter_46eea9ab04296184a55bc06f_rmsR"
 outleta "pre_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a
 outleta "post_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a_post
 outleta "pre_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402
 outleta "post_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402_post
endin

; mixer stage route:3edc9f07-68c8-476d-8807-1a83ae2dcddf
; audio route:3edc9f07-68c8-476d-8807-1a83ae2dcddf kind:send
; from: Prism FM Pluck [reflections] port:right stage:strip -> Reverb Effect [space] port:right stage:input
; tap: post-fader; initial route gain: 0.2 dB; source mute and mixer solo gate this route.
instr vcs_mix_49612b0801a0f58df343c303
 k_post chnget "__vcs_mixer_route_d1f48e62aac948eeba2ed211_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_d1f48e62aac948eeba2ed211_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_d1f48e62aac948eeba2ed211_gain"
 a_send vcs_mixer_ramp k_send, 1.0232929922807541
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:4a922199-a385-4f71-a29d-3c3cb1bf2686
; audio route:4a922199-a385-4f71-a29d-3c3cb1bf2686 kind:main
; from: Prism FM Pluck [reflections] port:left stage:strip -> Compressor Effect [0442aeda-2002-410e-a689-9d4bf3438b0c] port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_705a66a5c883fa84c8c3e743
 k_post chnget "__vcs_mixer_route_3e557becd0eabf090c081432_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_3e557becd0eabf090c081432_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_3e557becd0eabf090c081432_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:760e7ada-8940-445e-8b24-2964675f926b
; audio route:760e7ada-8940-445e-8b24-2964675f926b kind:send
; from: Prism FM Pluck [reflections] port:left stage:strip -> Reverb Effect [space] port:left stage:input
; tap: post-fader; initial route gain: 0.2 dB; source mute and mixer solo gate this route.
instr vcs_mix_393a90c10640ad1bdfe09ceb
 k_post chnget "__vcs_mixer_route_f42e958655aea34c5e7bf1ba_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_f42e958655aea34c5e7bf1ba_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_f42e958655aea34c5e7bf1ba_gain"
 a_send vcs_mixer_ramp k_send, 1.0232929922807541
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:ade1de9e-58ef-43f1-b8da-c58e17e5d917
; audio route:ade1de9e-58ef-43f1-b8da-c58e17e5d917 kind:main
; from: Prism FM Pluck [reflections] port:right stage:strip -> Compressor Effect [0442aeda-2002-410e-a689-9d4bf3438b0c] port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_e07fde8f049ac6fa56cfa043
 k_post chnget "__vcs_mixer_route_3dee88387e437350b1be6e95_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_3dee88387e437350b1be6e95_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_3dee88387e437350b1be6e95_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage strip:shore
; mixer strip: World Drumkit [shore]
; initial gain: 12 dB; balance/pan: 0.55; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_914d9301e781f3dcf181f4dc
 k_meter metro 15
 k_gain chnget "__vcs_mixer_strip_aa3ff1224ffaff030ba34d49_gain"
 a_gain vcs_mixer_ramp k_gain, 3.9810717055349722
 k_left chnget "__vcs_mixer_strip_aa3ff1224ffaff030ba34d49_left"
 a_left vcs_mixer_ramp k_left, 0.44999999999999996
 k_right chnget "__vcs_mixer_strip_aa3ff1224ffaff030ba34d49_right"
 a_right vcs_mixer_ramp k_right, 1
 k_mute chnget "__vcs_mixer_strip_aa3ff1224ffaff030ba34d49_mute"
 a_mute vcs_mixer_ramp k_mute, 1
 a_p_360f84035942243c6a36537a inleta "p_360f84035942243c6a36537a"
 a_p_360f84035942243c6a36537a_post = a_p_360f84035942243c6a36537a * a_gain * a_left
 a_p_27042f4e6eca7d0b2a7ee402 inleta "p_27042f4e6eca7d0b2a7ee402"
 a_p_27042f4e6eca7d0b2a7ee402_post = a_p_27042f4e6eca7d0b2a7ee402 * a_gain * a_right
 a_meter_left = a_p_360f84035942243c6a36537a_post * a_mute
 a_meter_right = a_p_27042f4e6eca7d0b2a7ee402_post * a_mute
 k_peakL max_k a_meter_left, k_meter, 1
 k_rmsL rms a_meter_left
 chnset k_peakL / 1.0, "__vcs_mixer_meter_aa3ff1224ffaff030ba34d49_peakL"
 chnset k_rmsL / 1.0, "__vcs_mixer_meter_aa3ff1224ffaff030ba34d49_rmsL"
 k_peakR max_k a_meter_right, k_meter, 1
 k_rmsR rms a_meter_right
 chnset k_peakR / 1.0, "__vcs_mixer_meter_aa3ff1224ffaff030ba34d49_peakR"
 chnset k_rmsR / 1.0, "__vcs_mixer_meter_aa3ff1224ffaff030ba34d49_rmsR"
 outleta "pre_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a
 outleta "post_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a_post
 outleta "pre_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402
 outleta "post_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402_post
endin

; mixer stage route:0e02b691-e6b5-4ae8-a462-eee63b8a7825
; audio route:0e02b691-e6b5-4ae8-a462-eee63b8a7825 kind:send
; from: World Drumkit [shore] port:right stage:strip -> Reverb Effect [space] port:right stage:input
; tap: post-fader; initial route gain: -25.8 dB; source mute and mixer solo gate this route.
instr vcs_mix_adf30f6e60f3d749f0bb2f2a
 k_post chnget "__vcs_mixer_route_edefa2b6871f43d450574498_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_edefa2b6871f43d450574498_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_edefa2b6871f43d450574498_gain"
 a_send vcs_mixer_ramp k_send, 0.051286138399136483
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:bf2d78b2-0c2e-4983-a340-6bd87973d3c2
; audio route:bf2d78b2-0c2e-4983-a340-6bd87973d3c2 kind:main
; from: World Drumkit [shore] port:right stage:strip -> Compressor Effect [0442aeda-2002-410e-a689-9d4bf3438b0c] port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_506d253eaf55718eb31375cb
 k_post chnget "__vcs_mixer_route_6195504a3465540ad4787796_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_6195504a3465540ad4787796_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_6195504a3465540ad4787796_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:bf818c14-4bd3-4f4d-98a3-828a140ccff1
; audio route:bf818c14-4bd3-4f4d-98a3-828a140ccff1 kind:main
; from: World Drumkit [shore] port:left stage:strip -> Compressor Effect [0442aeda-2002-410e-a689-9d4bf3438b0c] port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_6294152f41f3fc895b35204b
 k_post chnget "__vcs_mixer_route_6f45bd678a917ba89ab6e883_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_6f45bd678a917ba89ab6e883_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_6f45bd678a917ba89ab6e883_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:d5c41fb3-2c2f-45c7-8c60-b5f6800e6904
; audio route:d5c41fb3-2c2f-45c7-8c60-b5f6800e6904 kind:send
; from: World Drumkit [shore] port:left stage:strip -> Reverb Effect [space] port:left stage:input
; tap: post-fader; initial route gain: -25.8 dB; source mute and mixer solo gate this route.
instr vcs_mix_4adf153f332072628f80ae09
 k_post chnget "__vcs_mixer_route_8fdf67403472c3555b9be5b9_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_8fdf67403472c3555b9be5b9_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_8fdf67403472c3555b9be5b9_gain"
 a_send vcs_mixer_ramp k_send, 0.051286138399136483
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage strip:tabla
; mixer strip: World Drumkit [tabla]
; initial gain: 12 dB; balance/pan: -0.35; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_68efd0b9e86ce8e312e3a8da
 k_meter metro 15
 k_gain chnget "__vcs_mixer_strip_4a106a9d5ab0bb93b5b43a63_gain"
 a_gain vcs_mixer_ramp k_gain, 3.9810717055349722
 k_left chnget "__vcs_mixer_strip_4a106a9d5ab0bb93b5b43a63_left"
 a_left vcs_mixer_ramp k_left, 1
 k_right chnget "__vcs_mixer_strip_4a106a9d5ab0bb93b5b43a63_right"
 a_right vcs_mixer_ramp k_right, 0.64999999999999991
 k_mute chnget "__vcs_mixer_strip_4a106a9d5ab0bb93b5b43a63_mute"
 a_mute vcs_mixer_ramp k_mute, 1
 a_p_360f84035942243c6a36537a inleta "p_360f84035942243c6a36537a"
 a_p_360f84035942243c6a36537a_post = a_p_360f84035942243c6a36537a * a_gain * a_left
 a_p_27042f4e6eca7d0b2a7ee402 inleta "p_27042f4e6eca7d0b2a7ee402"
 a_p_27042f4e6eca7d0b2a7ee402_post = a_p_27042f4e6eca7d0b2a7ee402 * a_gain * a_right
 a_meter_left = a_p_360f84035942243c6a36537a_post * a_mute
 a_meter_right = a_p_27042f4e6eca7d0b2a7ee402_post * a_mute
 k_peakL max_k a_meter_left, k_meter, 1
 k_rmsL rms a_meter_left
 chnset k_peakL / 1.0, "__vcs_mixer_meter_4a106a9d5ab0bb93b5b43a63_peakL"
 chnset k_rmsL / 1.0, "__vcs_mixer_meter_4a106a9d5ab0bb93b5b43a63_rmsL"
 k_peakR max_k a_meter_right, k_meter, 1
 k_rmsR rms a_meter_right
 chnset k_peakR / 1.0, "__vcs_mixer_meter_4a106a9d5ab0bb93b5b43a63_peakR"
 chnset k_rmsR / 1.0, "__vcs_mixer_meter_4a106a9d5ab0bb93b5b43a63_rmsR"
 outleta "pre_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a
 outleta "post_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a_post
 outleta "pre_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402
 outleta "post_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402_post
endin

; mixer stage route:002a0b48-9297-4ff0-8188-01c33a51225e
; audio route:002a0b48-9297-4ff0-8188-01c33a51225e kind:send
; from: World Drumkit [tabla] port:right stage:strip -> Reverb Effect [space] port:right stage:input
; tap: post-fader; initial route gain: -26.8 dB; source mute and mixer solo gate this route.
instr vcs_mix_1c6f687f8118d8facd17d51d
 k_post chnget "__vcs_mixer_route_9852bcdf7243db9da79a8cb2_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_9852bcdf7243db9da79a8cb2_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_9852bcdf7243db9da79a8cb2_gain"
 a_send vcs_mixer_ramp k_send, 0.045708818961487492
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:128e1b07-a57f-4e3d-9738-73b35160e7c8
; audio route:128e1b07-a57f-4e3d-9738-73b35160e7c8 kind:main
; from: World Drumkit [tabla] port:left stage:strip -> Compressor Effect [0442aeda-2002-410e-a689-9d4bf3438b0c] port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_86bfa165a6215f0498963efe
 k_post chnget "__vcs_mixer_route_6b238c3fba5466c7714745c4_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_6b238c3fba5466c7714745c4_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_6b238c3fba5466c7714745c4_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:1d568f1f-2a93-46c8-bb3f-ac921604ba99
; audio route:1d568f1f-2a93-46c8-bb3f-ac921604ba99 kind:send
; from: World Drumkit [tabla] port:left stage:strip -> Reverb Effect [space] port:left stage:input
; tap: post-fader; initial route gain: -26.8 dB; source mute and mixer solo gate this route.
instr vcs_mix_699d28714553035e50f8bf69
 k_post chnget "__vcs_mixer_route_334b35121bad0416655bccd0_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_334b35121bad0416655bccd0_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_334b35121bad0416655bccd0_gain"
 a_send vcs_mixer_ramp k_send, 0.045708818961487492
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:c81c0139-aef2-4112-92d3-ab7432a8aa53
; audio route:c81c0139-aef2-4112-92d3-ab7432a8aa53 kind:main
; from: World Drumkit [tabla] port:right stage:strip -> Compressor Effect [0442aeda-2002-410e-a689-9d4bf3438b0c] port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_9e703910b4c1025b52f6df38
 k_post chnget "__vcs_mixer_route_51eda1176c661be0a8ae9a11_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_51eda1176c661be0a8ae9a11_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_51eda1176c661be0a8ae9a11_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage strip:theme
; mixer strip: Lake Bamboo Flute [theme]
; initial gain: 4.7 dB; balance/pan: -0.3; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_8a252033ed35df6ff80fdae8
 k_meter metro 15
 k_gain chnget "__vcs_mixer_strip_3cb8201e7ff1e7777446032e_gain"
 a_gain vcs_mixer_ramp k_gain, 1.7179083871575882
 k_left chnget "__vcs_mixer_strip_3cb8201e7ff1e7777446032e_left"
 a_left vcs_mixer_ramp k_left, 1
 k_right chnget "__vcs_mixer_strip_3cb8201e7ff1e7777446032e_right"
 a_right vcs_mixer_ramp k_right, 0.69999999999999996
 k_mute chnget "__vcs_mixer_strip_3cb8201e7ff1e7777446032e_mute"
 a_mute vcs_mixer_ramp k_mute, 1
 a_p_360f84035942243c6a36537a inleta "p_360f84035942243c6a36537a"
 a_p_360f84035942243c6a36537a_post = a_p_360f84035942243c6a36537a * a_gain * a_left
 a_p_27042f4e6eca7d0b2a7ee402 inleta "p_27042f4e6eca7d0b2a7ee402"
 a_p_27042f4e6eca7d0b2a7ee402_post = a_p_27042f4e6eca7d0b2a7ee402 * a_gain * a_right
 a_meter_left = a_p_360f84035942243c6a36537a_post * a_mute
 a_meter_right = a_p_27042f4e6eca7d0b2a7ee402_post * a_mute
 k_peakL max_k a_meter_left, k_meter, 1
 k_rmsL rms a_meter_left
 chnset k_peakL / 1.0, "__vcs_mixer_meter_3cb8201e7ff1e7777446032e_peakL"
 chnset k_rmsL / 1.0, "__vcs_mixer_meter_3cb8201e7ff1e7777446032e_rmsL"
 k_peakR max_k a_meter_right, k_meter, 1
 k_rmsR rms a_meter_right
 chnset k_peakR / 1.0, "__vcs_mixer_meter_3cb8201e7ff1e7777446032e_peakR"
 chnset k_rmsR / 1.0, "__vcs_mixer_meter_3cb8201e7ff1e7777446032e_rmsR"
 outleta "pre_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a
 outleta "post_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a_post
 outleta "pre_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402
 outleta "post_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402_post
endin

; mixer stage route:53d0950d-b722-4d41-a4d9-a0b67662e320
; audio route:53d0950d-b722-4d41-a4d9-a0b67662e320 kind:send
; from: Lake Bamboo Flute [theme] port:right stage:strip -> Reverb Effect [space] port:right stage:input
; tap: post-fader; initial route gain: 6 dB; source mute and mixer solo gate this route.
instr vcs_mix_561ae13d445b8c84ae1cc360
 k_post chnget "__vcs_mixer_route_3e71ab60a92d838ade92af9f_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_3e71ab60a92d838ade92af9f_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_3e71ab60a92d838ade92af9f_gain"
 a_send vcs_mixer_ramp k_send, 1.9952623149688795
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:70fcf154-7926-4b97-95e9-e532882fddf1
; audio route:70fcf154-7926-4b97-95e9-e532882fddf1 kind:main
; from: Lake Bamboo Flute [theme] port:right stage:strip -> Compressor Effect [0442aeda-2002-410e-a689-9d4bf3438b0c] port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_bf53b9747780c99dc37fbb2b
 k_post chnget "__vcs_mixer_route_aba950b4b2baf41ea4e813b0_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_aba950b4b2baf41ea4e813b0_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_aba950b4b2baf41ea4e813b0_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:ca0f5ac5-8c25-4221-ac93-b627b64a977e
; audio route:ca0f5ac5-8c25-4221-ac93-b627b64a977e kind:main
; from: Lake Bamboo Flute [theme] port:left stage:strip -> Compressor Effect [0442aeda-2002-410e-a689-9d4bf3438b0c] port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_25f6c7daae142a0cbe29db75
 k_post chnget "__vcs_mixer_route_f9b538142d2689eb900196a3_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_f9b538142d2689eb900196a3_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_f9b538142d2689eb900196a3_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:d1b39318-e8e9-492f-afcd-65731ee52c9d
; audio route:d1b39318-e8e9-492f-afcd-65731ee52c9d kind:send
; from: Lake Bamboo Flute [theme] port:left stage:strip -> Reverb Effect [space] port:left stage:input
; tap: post-fader; initial route gain: 6 dB; source mute and mixer solo gate this route.
instr vcs_mix_0872a7b5755929fb6ea089e7
 k_post chnget "__vcs_mixer_route_864af0857d070bba182aa405_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_864af0857d070bba182aa405_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_864af0857d070bba182aa405_gain"
 a_send vcs_mixer_ramp k_send, 1.9952623149688795
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage strip:water
; mixer strip: Undertow Motion Pad [water]
; initial gain: -28.8 dB; balance/pan: 0.41; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_f348da23406ebc2d79b6271c
 k_meter metro 15
 k_gain chnget "__vcs_mixer_strip_0f4168490e38b8447e11ba4b_gain"
 a_gain vcs_mixer_ramp k_gain, 0.036307805477010138
 k_left chnget "__vcs_mixer_strip_0f4168490e38b8447e11ba4b_left"
 a_left vcs_mixer_ramp k_left, 0.58999999999999997
 k_right chnget "__vcs_mixer_strip_0f4168490e38b8447e11ba4b_right"
 a_right vcs_mixer_ramp k_right, 1
 k_mute chnget "__vcs_mixer_strip_0f4168490e38b8447e11ba4b_mute"
 a_mute vcs_mixer_ramp k_mute, 1
 a_p_360f84035942243c6a36537a inleta "p_360f84035942243c6a36537a"
 a_p_360f84035942243c6a36537a_post = a_p_360f84035942243c6a36537a * a_gain * a_left
 a_p_27042f4e6eca7d0b2a7ee402 inleta "p_27042f4e6eca7d0b2a7ee402"
 a_p_27042f4e6eca7d0b2a7ee402_post = a_p_27042f4e6eca7d0b2a7ee402 * a_gain * a_right
 a_meter_left = a_p_360f84035942243c6a36537a_post * a_mute
 a_meter_right = a_p_27042f4e6eca7d0b2a7ee402_post * a_mute
 k_peakL max_k a_meter_left, k_meter, 1
 k_rmsL rms a_meter_left
 chnset k_peakL / 1.0, "__vcs_mixer_meter_0f4168490e38b8447e11ba4b_peakL"
 chnset k_rmsL / 1.0, "__vcs_mixer_meter_0f4168490e38b8447e11ba4b_rmsL"
 k_peakR max_k a_meter_right, k_meter, 1
 k_rmsR rms a_meter_right
 chnset k_peakR / 1.0, "__vcs_mixer_meter_0f4168490e38b8447e11ba4b_peakR"
 chnset k_rmsR / 1.0, "__vcs_mixer_meter_0f4168490e38b8447e11ba4b_rmsR"
 outleta "pre_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a
 outleta "post_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a_post
 outleta "pre_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402
 outleta "post_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402_post
endin

; mixer stage route:421da338-4cb2-4e08-ab57-6abfff4e5f54
; audio route:421da338-4cb2-4e08-ab57-6abfff4e5f54 kind:send
; from: Undertow Motion Pad [water] port:left stage:strip -> Reverb Effect [space] port:left stage:input
; tap: post-fader; initial route gain: 6 dB; source mute and mixer solo gate this route.
instr vcs_mix_0352598b7fff5e754666bf70
 k_post chnget "__vcs_mixer_route_28d7409044f61a9babc6f76a_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_28d7409044f61a9babc6f76a_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_28d7409044f61a9babc6f76a_gain"
 a_send vcs_mixer_ramp k_send, 1.9952623149688795
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:85d12f0b-b0ba-49ec-929a-2306186a5409
; audio route:85d12f0b-b0ba-49ec-929a-2306186a5409 kind:main
; from: Undertow Motion Pad [water] port:left stage:strip -> Compressor Effect [0442aeda-2002-410e-a689-9d4bf3438b0c] port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_bccf0e5c5f489ff82f73cc5b
 k_post chnget "__vcs_mixer_route_d237f24a11a081d366091dee_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_d237f24a11a081d366091dee_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_d237f24a11a081d366091dee_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:c0e9e632-e359-4288-b8ef-1b5c3fa86f6b
; audio route:c0e9e632-e359-4288-b8ef-1b5c3fa86f6b kind:main
; from: Undertow Motion Pad [water] port:right stage:strip -> Compressor Effect [0442aeda-2002-410e-a689-9d4bf3438b0c] port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_8da853e02cccd528eaba5232
 k_post chnget "__vcs_mixer_route_8766f536523ea341e60d63e1_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_8766f536523ea341e60d63e1_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_8766f536523ea341e60d63e1_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:f8298770-9e09-4f62-9c0c-46bf3cbcce3d
; audio route:f8298770-9e09-4f62-9c0c-46bf3cbcce3d kind:send
; from: Undertow Motion Pad [water] port:right stage:strip -> Reverb Effect [space] port:right stage:input
; tap: post-fader; initial route gain: 6 dB; source mute and mixer solo gate this route.
instr vcs_mix_f23432bd2d0d3585437362ff
 k_post chnget "__vcs_mixer_route_8e42d9d022595393af85b98a_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_8e42d9d022595393af85b98a_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_8e42d9d022595393af85b98a_gain"
 a_send vcs_mixer_ramp k_send, 1.9952623149688795
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage patch:space
; patch:edec9fff-768b-4de1-b892-53eb4249b2bf name:Reverb Effect channel:0 always_on:true
; instance:space csound:vcs_mix_e5754ae0550fd56f3a1ded4c
; description: Stereo reverb effect, uses inleta channel names "left" and "right".
; trigger: continuous (alwayson); score instrument number: 54
instr vcs_mix_e5754ae0550fd56f3a1ded4c
 i_708a8f43_1c17_4713_a35d_b0b12cee6abe_iout_1 chnget "__vcs_perf_1eb743bf517146d093e59ee2716f27332b459c494176ff923e074b645ecfce68"
 ; node:848adfb2-56f2-41d2-92da-582a363d3926 opcode:inleta
 a_848adfb2_56f2_41d2_92da_582a363d3926_asignal_3 inleta "left"
 i_a08d04b8_b407_498d_8186_8ec08a404e5c_iout_2 chnget "__vcs_perf_386b6ddecd351dff0b9738eec01e6a2f415c8238a8eec7540fff8a537a253e46"
 ; node:bd65fc9a-7053-4c0c-b7fc-63dc926b8d92 opcode:inleta
 a_bd65fc9a_7053_4c0c_b7fc_63dc926b8d92_asignal_4 inleta "right"
 ; node:a5e612c4-b021-465a-a2c6-f6edb0b620bd opcode:reverbsc
 a_a5e612c4_b021_465a_a2c6_f6edb0b620bd_aout_l_1, a_a5e612c4_b021_465a_a2c6_f6edb0b620bd_aout_r_2 reverbsc a_848adfb2_56f2_41d2_92da_582a363d3926_asignal_3, a_bd65fc9a_7053_4c0c_b7fc_63dc926b8d92_asignal_4, i_708a8f43_1c17_4713_a35d_b0b12cee6abe_iout_1, i_a08d04b8_b407_498d_8186_8ec08a404e5c_iout_2, sr, 1, 0
 ; node:17300219-eb5e-42d1-9b33-5bddb8b0689e opcode:outleta
 outleta "left", a_a5e612c4_b021_465a_a2c6_f6edb0b620bd_aout_l_1
 ; node:1bfdd7bf-0969-4ac0-83df-2b69f8ff6b9a opcode:outleta
 outleta "right", a_a5e612c4_b021_465a_a2c6_f6edb0b620bd_aout_r_2
endin

; mixer stage strip:space
; mixer strip: Reverb Effect [space]
; initial gain: -0.6 dB; balance/pan: 0.38; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_da8e3d2eea8eb8d6425ad5b1
 k_meter metro 15
 k_gain chnget "__vcs_mixer_strip_3f49dbbfe051cb20cc038923_gain"
 a_gain vcs_mixer_ramp k_gain, 0.93325430079699101
 k_left chnget "__vcs_mixer_strip_3f49dbbfe051cb20cc038923_left"
 a_left vcs_mixer_ramp k_left, 0.62
 k_right chnget "__vcs_mixer_strip_3f49dbbfe051cb20cc038923_right"
 a_right vcs_mixer_ramp k_right, 1
 k_mute chnget "__vcs_mixer_strip_3f49dbbfe051cb20cc038923_mute"
 a_mute vcs_mixer_ramp k_mute, 1
 a_p_360f84035942243c6a36537a inleta "p_360f84035942243c6a36537a"
 a_p_360f84035942243c6a36537a_post = a_p_360f84035942243c6a36537a * a_gain * a_left
 a_p_27042f4e6eca7d0b2a7ee402 inleta "p_27042f4e6eca7d0b2a7ee402"
 a_p_27042f4e6eca7d0b2a7ee402_post = a_p_27042f4e6eca7d0b2a7ee402 * a_gain * a_right
 a_meter_left = a_p_360f84035942243c6a36537a_post * a_mute
 a_meter_right = a_p_27042f4e6eca7d0b2a7ee402_post * a_mute
 k_peakL max_k a_meter_left, k_meter, 1
 k_rmsL rms a_meter_left
 chnset k_peakL / 1.0, "__vcs_mixer_meter_3f49dbbfe051cb20cc038923_peakL"
 chnset k_rmsL / 1.0, "__vcs_mixer_meter_3f49dbbfe051cb20cc038923_rmsL"
 k_peakR max_k a_meter_right, k_meter, 1
 k_rmsR rms a_meter_right
 chnset k_peakR / 1.0, "__vcs_mixer_meter_3f49dbbfe051cb20cc038923_peakR"
 chnset k_rmsR / 1.0, "__vcs_mixer_meter_3f49dbbfe051cb20cc038923_rmsR"
 outleta "pre_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a
 outleta "post_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a_post
 outleta "pre_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402
 outleta "post_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402_post
endin

; mixer stage route:7acec4c2-a1c9-4a3f-8491-2c06581aa530
; audio route:7acec4c2-a1c9-4a3f-8491-2c06581aa530 kind:main
; from: Reverb Effect [space] port:right stage:strip -> Compressor Effect [0442aeda-2002-410e-a689-9d4bf3438b0c] port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_b4b5860e66f45cd0ae5858b5
 k_post chnget "__vcs_mixer_route_91b7fa7493a136a4571bf3c7_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_91b7fa7493a136a4571bf3c7_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_91b7fa7493a136a4571bf3c7_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:8fa9ac42-469c-465b-95d3-e82c3551ef09
; audio route:8fa9ac42-469c-465b-95d3-e82c3551ef09 kind:main
; from: Reverb Effect [space] port:left stage:strip -> Compressor Effect [0442aeda-2002-410e-a689-9d4bf3438b0c] port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_df5e556e9c21d685012dc5db
 k_post chnget "__vcs_mixer_route_001b8523e96093dfdd96167b_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_001b8523e96093dfdd96167b_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_001b8523e96093dfdd96167b_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:c2ccb350-d1d4-43a8-a384-3a4fbd413930
; audio route:c2ccb350-d1d4-43a8-a384-3a4fbd413930 kind:main
; from: Reverb Effect [space] port:left stage:strip -> Compressor Effect [0442aeda-2002-410e-a689-9d4bf3438b0c] port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_698bb24a9b4c166b1a39bf1d
 k_post chnget "__vcs_mixer_route_854afb009e2e9af5179d5afa_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_854afb009e2e9af5179d5afa_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_854afb009e2e9af5179d5afa_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:e4a837e4-24d5-42ce-a446-85b1c0efb77b
; audio route:e4a837e4-24d5-42ce-a446-85b1c0efb77b kind:main
; from: Reverb Effect [space] port:right stage:strip -> Compressor Effect [0442aeda-2002-410e-a689-9d4bf3438b0c] port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_87d6c91af4d597030edfa13e
 k_post chnget "__vcs_mixer_route_5312ab1db1364b7114087655_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_5312ab1db1364b7114087655_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_5312ab1db1364b7114087655_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage patch:0442aeda-2002-410e-a689-9d4bf3438b0c
; patch:e3c1fa8d-f3c6-441d-b443-707ce7ef924e name:Compressor Effect channel:0 always_on:true
; instance:0442aeda-2002-410e-a689-9d4bf3438b0c csound:vcs_mix_8482f8ec65e97e7d3c4d3726
; description: Dynamic ompression of audio signal
; trigger: continuous (alwayson); score instrument number: 60
instr vcs_mix_8482f8ec65e97e7d3c4d3726
 i_0f32b615_df59_4c8b_9a61_70252193be29_iout_5 chnget "__vcs_perf_75c01f0adbae5363164157d78fd1b13d8388f3aa50bb328deaa4e0f5d8675512"
 i_19053c50_a059_412c_9e4a_280db42edca9_iout_1 chnget "__vcs_perf_e626205d0dab17ddce60175ff8771cd76249f69e7649dc4971ce84813f31e6be"
 i_364ce489_892d_463e_a519_4e51effe56f7_iout_4 chnget "__vcs_perf_b45b6efdb6d2eba30756772bc26f215f56c0efb9ff4ff5226498944ecd79645f"
 ; node:6e51293d-34b8-4876-ab2a-1c97fce32d75 opcode:inleta
 a_6e51293d_34b8_4876_ab2a_1c97fce32d75_asignal_4 inleta "right"
 i_9eabdf3c_9d00_4f37_bf9b_c819ceb1c2a3_iout_2 chnget "__vcs_perf_cf9752ff2f7492a2de5c436915d2c265371f5d7808cc9d11f6aab0bb4bf9ac31"
 i_a84d4364_5f74_4351_9e29_8e4c6d8a730f_iout_3 chnget "__vcs_perf_0d03e8cb287bef611320f71decfe72c2c7cccecf924900c5fa2a102d21d03ff2"
 ; node:b6119c91-33ca-4d57-99f6-ccd1a34c13fb opcode:inleta
 a_b6119c91_33ca_4d57_99f6_ccd1a34c13fb_asignal_3 inleta "left"
 ; node:2f4e1891-c4bc-4e1f-bf58-30a7f41be013 opcode:dam
 a_2f4e1891_c4bc_4e1f_bf58_30a7f41be013_aout_2 dam a_6e51293d_34b8_4876_ab2a_1c97fce32d75_asignal_4, 0.5, i_19053c50_a059_412c_9e4a_280db42edca9_iout_1, i_9eabdf3c_9d00_4f37_bf9b_c819ceb1c2a3_iout_2, i_a84d4364_5f74_4351_9e29_8e4c6d8a730f_iout_3, i_364ce489_892d_463e_a519_4e51effe56f7_iout_4
 ; node:aedd1b94-405b-441a-8d8e-ebc2f2898488 opcode:dam
 a_aedd1b94_405b_441a_8d8e_ebc2f2898488_aout_1 dam a_b6119c91_33ca_4d57_99f6_ccd1a34c13fb_asignal_3, i_0f32b615_df59_4c8b_9a61_70252193be29_iout_5, i_19053c50_a059_412c_9e4a_280db42edca9_iout_1, i_9eabdf3c_9d00_4f37_bf9b_c819ceb1c2a3_iout_2, i_a84d4364_5f74_4351_9e29_8e4c6d8a730f_iout_3, i_364ce489_892d_463e_a519_4e51effe56f7_iout_4
 ; node:4deac1a0-cd9d-4588-b89b-7378e1829ee4 opcode:outleta
 outleta "right", a_2f4e1891_c4bc_4e1f_bf58_30a7f41be013_aout_2
 ; node:51da89f7-3991-413d-845d-124ee69506d8 opcode:outleta
 outleta "left", a_aedd1b94_405b_441a_8d8e_ebc2f2898488_aout_1
endin

; mixer stage strip:0442aeda-2002-410e-a689-9d4bf3438b0c
; mixer strip: Compressor Effect [0442aeda-2002-410e-a689-9d4bf3438b0c]
; initial gain: 0 dB; balance/pan: 0; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_535811e68a3541943826dded
 k_meter metro 15
 k_gain chnget "__vcs_mixer_strip_3dfabacecb440277db6607f2_gain"
 a_gain vcs_mixer_ramp k_gain, 1
 k_left chnget "__vcs_mixer_strip_3dfabacecb440277db6607f2_left"
 a_left vcs_mixer_ramp k_left, 1
 k_right chnget "__vcs_mixer_strip_3dfabacecb440277db6607f2_right"
 a_right vcs_mixer_ramp k_right, 1
 k_mute chnget "__vcs_mixer_strip_3dfabacecb440277db6607f2_mute"
 a_mute vcs_mixer_ramp k_mute, 1
 a_p_360f84035942243c6a36537a inleta "p_360f84035942243c6a36537a"
 a_p_360f84035942243c6a36537a_post = a_p_360f84035942243c6a36537a * a_gain * a_left
 a_p_27042f4e6eca7d0b2a7ee402 inleta "p_27042f4e6eca7d0b2a7ee402"
 a_p_27042f4e6eca7d0b2a7ee402_post = a_p_27042f4e6eca7d0b2a7ee402 * a_gain * a_right
 a_meter_left = a_p_360f84035942243c6a36537a_post * a_mute
 a_meter_right = a_p_27042f4e6eca7d0b2a7ee402_post * a_mute
 k_peakL max_k a_meter_left, k_meter, 1
 k_rmsL rms a_meter_left
 chnset k_peakL / 1.0, "__vcs_mixer_meter_3dfabacecb440277db6607f2_peakL"
 chnset k_rmsL / 1.0, "__vcs_mixer_meter_3dfabacecb440277db6607f2_rmsL"
 k_peakR max_k a_meter_right, k_meter, 1
 k_rmsR rms a_meter_right
 chnset k_peakR / 1.0, "__vcs_mixer_meter_3dfabacecb440277db6607f2_peakR"
 chnset k_rmsR / 1.0, "__vcs_mixer_meter_3dfabacecb440277db6607f2_rmsR"
 outleta "pre_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a
 outleta "post_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a_post
 outleta "pre_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402
 outleta "post_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402_post
endin

; mixer stage route:23a2ff03-d9be-4f64-8fbd-24e6e81ece53
; audio route:23a2ff03-d9be-4f64-8fbd-24e6e81ece53 kind:main
; from: Compressor Effect [0442aeda-2002-410e-a689-9d4bf3438b0c] port:right stage:strip -> Master [$master] port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_e0458282ab57ed18292517d9
 k_post chnget "__vcs_mixer_route_f6d37bf7cfa4b13a3ddd8f40_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_f6d37bf7cfa4b13a3ddd8f40_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_f6d37bf7cfa4b13a3ddd8f40_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:a805689b-61fe-4d1a-b686-b7e75ae8e6f7
; audio route:a805689b-61fe-4d1a-b686-b7e75ae8e6f7 kind:main
; from: Compressor Effect [0442aeda-2002-410e-a689-9d4bf3438b0c] port:left stage:strip -> Master [$master] port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_7f62f617985e81498e730e67
 k_post chnget "__vcs_mixer_route_644d521ff7197fa5c509cf76_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_644d521ff7197fa5c509cf76_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_644d521ff7197fa5c509cf76_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage patch:$master
; patch:$master name:Master channel:0 always_on:true
; instance:$master csound:vcs_mix_63254fa67083d5eed1f09ece
; trigger: continuous (alwayson); score instrument number: 64
; role: Master processor; only audio explicitly routed here passes through Master.
instr vcs_mix_63254fa67083d5eed1f09ece
 a_left inleta "left"
 a_right inleta "right"
 outleta "__vcs_direct_e0ee8bb50685e05fa0f47ed0_left", a_left
 outleta "__vcs_direct_e0ee8bb50685e05fa0f47ed0_right", a_right
endin

; mixer stage strip:$master
; mixer strip: Master [$master]
; initial gain: -7.7 dB; balance/pan: 0; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_0644eeee2942927583ef32ed
 k_meter metro 15
 k_gain chnget "__vcs_mixer_strip_b5c7638620f2f38a657a5790_gain"
 a_gain vcs_mixer_ramp k_gain, 0.41209751909733022
 k_left chnget "__vcs_mixer_strip_b5c7638620f2f38a657a5790_left"
 a_left vcs_mixer_ramp k_left, 1
 k_right chnget "__vcs_mixer_strip_b5c7638620f2f38a657a5790_right"
 a_right vcs_mixer_ramp k_right, 1
 k_mute chnget "__vcs_mixer_strip_b5c7638620f2f38a657a5790_mute"
 a_mute vcs_mixer_ramp k_mute, 1
 a_p_2336acbd28828ab05deafe52 inleta "p_2336acbd28828ab05deafe52"
 a_p_2336acbd28828ab05deafe52_post = a_p_2336acbd28828ab05deafe52 * a_gain * a_left
 a_p_2a250433534f9aea9d512171 inleta "p_2a250433534f9aea9d512171"
 a_p_2a250433534f9aea9d512171_post = a_p_2a250433534f9aea9d512171 * a_gain * a_right
 a_meter_left = a_p_2336acbd28828ab05deafe52_post * a_mute
 a_meter_right = a_p_2a250433534f9aea9d512171_post * a_mute
 k_peakL max_k a_meter_left, k_meter, 1
 k_rmsL rms a_meter_left
 chnset k_peakL / 1.0, "__vcs_mixer_meter_b5c7638620f2f38a657a5790_peakL"
 chnset k_rmsL / 1.0, "__vcs_mixer_meter_b5c7638620f2f38a657a5790_rmsL"
 k_peakR max_k a_meter_right, k_meter, 1
 k_rmsR rms a_meter_right
 chnset k_peakR / 1.0, "__vcs_mixer_meter_b5c7638620f2f38a657a5790_peakR"
 chnset k_rmsR / 1.0, "__vcs_mixer_meter_b5c7638620f2f38a657a5790_rmsR"
 outleta "pre_p_2336acbd28828ab05deafe52", a_p_2336acbd28828ab05deafe52
 outleta "post_p_2336acbd28828ab05deafe52", a_p_2336acbd28828ab05deafe52_post
 outleta "pre_p_2a250433534f9aea9d512171", a_p_2a250433534f9aea9d512171
 outleta "post_p_2a250433534f9aea9d512171", a_p_2a250433534f9aea9d512171_post
endin

; mixer stage route:direct_663d9de6aaa09d717ad1da85
; audio route:direct_663d9de6aaa09d717ad1da85 kind:main
; from: Master [$master] port:$direct.left stage:strip -> Audio Output port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_ec8b1641891924a3e102560a
 k_post chnget "__vcs_mixer_route_ebe4d00ca1570557781dee01_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_ebe4d00ca1570557781dee01_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_ebe4d00ca1570557781dee01_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:direct_86c9f89b472612e7d2cddb1f
; audio route:direct_86c9f89b472612e7d2cddb1f kind:main
; from: Master [$master] port:$direct.right stage:strip -> Audio Output port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_5f16b779ade2ce91f307ff35
 k_post chnget "__vcs_mixer_route_208ab40923d5bf707587f01b_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_208ab40923d5bf707587f01b_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_208ab40923d5bf707587f01b_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage $output
; Final Audio Output: sums all routed paths, including direct paths that bypass Master.
instr vcs_mix_9cea1be1f8255375a6cf7b93
 a_left inleta "left"
 a_right inleta "right"
 outs a_left, a_right
 k_meter metro 15
 k_peakL max_k a_left, k_meter, 1
 k_rmsL rms a_left
 chnset k_peakL / 1.0, "__vcs_mixer_meter_9cea1be1f8255375a6cf7b93_peakL"
 chnset k_rmsL / 1.0, "__vcs_mixer_meter_9cea1be1f8255375a6cf7b93_rmsL"
 k_peakR max_k a_right, k_meter, 1
 k_rmsR rms a_right
 chnset k_peakR / 1.0, "__vcs_mixer_meter_9cea1be1f8255375a6cf7b93_peakR"
 chnset k_rmsR / 1.0, "__vcs_mixer_meter_9cea1be1f8255375a6cf7b93_rmsR"
endin

</CsInstruments>
<CsScore>
f 1 0 16384 10 1
i 10 0 4.821429 50 32
i 10 0 4.821429 52 32
i 10 0 4.821429 57 32
i 1 6.25 1.607143 62 47 7 3
i 1 7.857143 0.178571 64 36 9 3
i 1 8.035714 0.178571 65 43 11 3
i 1 8.214286 0.357143 64 37 13 3
i 1 8.571429 0.714286 62 44 15 3
i 1 9.821429 1.071429 57 37 17 3
i 10 11.428571 4.821429 50 34
i 10 11.428571 4.821429 53 34
i 10 11.428571 4.821429 57 34
i 10 11.428571 4.821429 60 34
i 8 12.862493 0.178571 62 35
i 8 15.362493 0.178571 64 32
i 8 18.576779 0.178571 62 35
i 8 21.076779 0.178571 64 32
i 10 22.857143 4.821429 50 34
i 10 22.857143 4.821429 53 34
i 10 22.857143 4.821429 57 34
i 10 22.857143 4.821429 60 34
i 3 22.857143 0.178571 35 115
i 3 23.035714 0.178571 42 27
i 3 23.214286 0.178571 42 57
i 1 23.392857 1.607143 62 47 44 3
i 3 23.392857 0.178571 35 112
i 3 23.392857 0.178571 42 33
i 3 23.571429 0.178571 38 45
i 3 23.928571 0.178571 46 45
i 8 24.291064 0.178571 62 35
i 3 24.464286 0.178571 42 47
i 3 24.642857 0.178571 35 82
i 3 24.821429 0.178571 42 56
i 1 25 0.178571 64 36 62 3
i 3 25 0.178571 38 52
i 3 25 0.178571 42 46
i 1 25.178571 0.178571 65 43 67 3
i 1 25.357143 0.357143 64 37 71 3
i 3 25.357143 0.178571 46 28
i 1 25.714286 0.714286 62 44 75 3
i 3 25.714286 0.178571 35 115
i 3 25.892857 0.059524 42 58
i 3 25.952381 0.059524 42 42
i 3 26.011905 0.059524 42 26
i 3 26.25 0.178571 35 112
i 3 26.428571 0.178571 38 29
i 3 26.785714 0.178571 46 45
i 8 26.791064 0.178571 64 32
i 1 26.964286 1.071429 57 37 91 3
i 3 27.142857 0.178571 42 24
i 3 27.321429 0.059524 42 22
i 3 27.380952 0.059524 42 26
i 3 27.440476 0.059524 42 30
i 3 27.5 0.178571 35 82
i 3 27.5 0.178571 42 70
i 3 27.678571 0.178571 42 42
i 3 27.857143 0.178571 38 37
i 3 27.857143 0.178571 42 43
i 3 28.214286 0.178571 46 28
i 10 28.571429 4.821429 50 34
i 10 28.571429 4.821429 53 34
i 10 28.571429 4.821429 57 34
i 10 28.571429 4.821429 60 34
i 3 28.571429 0.178571 35 115
i 8 28.571429 0.178571 67 56
i 3 28.75 0.178571 42 27
i 3 28.928571 0.178571 42 57
i 3 29.107143 0.178571 35 112
i 3 29.107143 0.178571 42 33
i 3 29.285714 0.178571 38 45
i 3 29.642857 0.178571 46 45
i 8 30.014279 0.178571 60 43
i 3 30.178571 0.178571 42 47
i 3 30.357143 0.178571 35 82
i 3 30.535714 0.178571 42 56
i 3 30.714286 0.178571 38 52
i 3 30.714286 0.178571 42 46
i 3 31.071429 0.178571 46 28
i 8 31.085707 0.089286 63 26
i 8 31.174993 0.089286 63 20
i 8 31.264279 0.178571 65 23
i 3 31.428571 0.178571 35 115
i 3 31.607143 0.059524 42 58
i 3 31.666667 0.059524 42 42
i 3 31.72619 0.059524 42 26
i 8 31.791064 0.178571 64 44
i 3 31.964286 0.178571 35 112
i 3 32.142857 0.178571 38 29
i 3 32.5 0.178571 46 45
i 3 32.857143 0.178571 42 24
i 8 32.871421 0.178571 60 40
i 3 33.035714 0.059524 42 22
i 3 33.095238 0.059524 42 26
i 3 33.154762 0.059524 42 30
i 3 33.214286 0.178571 35 82
i 3 33.214286 0.178571 42 70
i 3 33.392857 0.178571 42 42
i 3 33.571429 0.178571 38 37
i 3 33.571429 0.178571 42 43
i 8 33.585707 0.089286 63 27
i 8 33.674993 0.089286 63 20
i 3 33.928571 0.178571 46 28
i 8 33.94285 0.178571 65 23
i 1 34.285714 0.714286 62 65 212 3
i 10 34.285714 4.821429 50 48
i 10 34.285714 4.821429 53 48
i 10 34.285714 4.821429 57 48
i 10 34.285714 4.821429 60 48
i 3 34.285714 0.178571 35 115
i 4 34.285714 2.5 38 50
i 8 34.285714 0.178571 67 56
i 3 34.464286 0.178571 42 27
i 3 34.642857 0.178571 42 57
i 3 34.821429 0.178571 35 112
i 3 34.821429 0.178571 42 33
i 1 35 0.178571 64 49 224 3
i 3 35 0.178571 38 45
i 1 35.178571 0.178571 65 57 229 3
i 1 35.357143 0.357143 67 53 232 3
i 3 35.357143 0.178571 46 45
i 1 35.714286 1.25 69 66 236 3
i 8 35.728564 0.178571 60 43
i 3 35.892857 0.178571 42 47
i 3 36.071429 0.178571 35 82
i 3 36.25 0.178571 42 56
i 3 36.428571 0.178571 38 52
i 3 36.428571 0.178571 42 46
i 3 36.785714 0.178571 46 28
i 8 36.799993 0.089286 63 26
i 8 36.889279 0.089286 63 20
i 8 36.978564 0.178571 65 23
i 3 37.142857 0.178571 35 115
i 3 37.321429 0.059524 42 58
i 3 37.380952 0.059524 42 42
i 3 37.440476 0.059524 42 26
i 1 37.5 0.357143 67 50 266 3
i 8 37.50535 0.178571 64 44
i 3 37.678571 0.178571 35 112
i 1 37.857143 0.178571 65 51 272 3
i 3 37.857143 0.178571 38 29
i 1 38.035714 0.178571 64 44 276 3
i 1 38.214286 1.25 62 55 279 3
i 3 38.214286 0.178571 46 45
i 3 38.571429 0.178571 42 24
i 8 38.585707 0.178571 60 40
i 3 38.75 0.059524 42 22
i 3 38.809524 0.059524 42 26
i 3 38.869048 0.059524 42 30
i 3 38.928571 0.178571 35 82
i 3 38.928571 0.178571 42 70
i 3 39.107143 0.178571 42 42
i 3 39.285714 0.178571 38 37
i 3 39.285714 0.178571 42 43
i 8 39.299993 0.089286 63 27
i 8 39.389279 0.089286 63 20
i 3 39.642857 0.178571 46 28
i 8 39.657136 0.178571 65 23
i 10 40 4.821429 50 48
i 10 40 4.821429 53 48
i 10 40 4.821429 57 48
i 10 40 4.821429 60 48
i 3 40 0.178571 35 115
i 4 40 2.5 38 50
i 8 40 0.178571 68 78
i 3 40.178571 0.178571 42 27
i 3 40.357143 0.178571 42 57
i 3 40.535714 0.178571 35 112
i 3 40.535714 0.178571 42 33
i 8 40.549993 0.178571 63 26
i 3 40.714286 0.178571 38 45
i 8 40.728564 0.178571 60 59
i 8 40.907136 0.178571 65 25
i 3 41.071429 0.178571 46 45
i 7 41.085707 0.178571 84 21
i 8 41.085707 0.089286 63 35
i 8 41.174993 0.089286 63 25
i 8 41.264279 0.178571 63 29
i 8 41.44285 0.178571 61 63
i 3 41.607143 0.178571 42 47
i 3 41.785714 0.178571 35 82
i 8 41.791064 0.178571 64 58
i 3 41.964286 0.178571 42 56
i 8 41.978564 0.178571 65 28
i 3 42.142857 0.178571 38 52
i 3 42.142857 0.178571 42 46
i 8 42.157136 0.178571 60 57
i 8 42.335707 0.059524 65 30
i 8 42.395231 0.059524 65 24
i 8 42.454755 0.059524 65 19
i 3 42.5 0.178571 46 28
i 8 42.50535 0.178571 62 38
i 7 42.514279 0.178571 84 21
i 8 42.69285 0.089286 63 36
i 8 42.782136 0.089286 63 25
i 3 42.857143 0.178571 35 115
i 8 42.862493 0.178571 67 73
i 3 43.035714 0.059524 42 58
i 3 43.095238 0.059524 42 42
i 3 43.154762 0.059524 42 26
i 3 43.392857 0.178571 35 112
i 8 43.407136 0.178571 63 27
i 3 43.571429 0.178571 38 29
i 8 43.585707 0.178571 60 60
i 8 43.764279 0.178571 65 26
i 3 43.928571 0.178571 46 45
i 7 43.94285 0.178571 84 21
i 8 43.94285 0.089286 63 32
i 8 44.032136 0.089286 63 23
i 3 44.285714 0.178571 42 24
i 8 44.299993 0.178571 61 59
i 3 44.464286 0.059524 42 22
i 3 44.52381 0.059524 42 26
i 3 44.583333 0.059524 42 30
i 3 44.642857 0.178571 35 82
i 3 44.642857 0.178571 42 70
i 8 44.648207 0.178571 64 55
i 3 44.821429 0.178571 42 42
i 8 44.835707 0.178571 63 29
i 3 45 0.178571 38 37
i 3 45 0.178571 42 43
i 8 45.014279 0.178571 60 54
i 8 45.19285 0.178571 65 27
i 3 45.357143 0.178571 46 28
i 7 45.371421 0.178571 84 21
i 8 45.371421 0.178571 65 32
i 8 45.549993 0.089286 63 33
i 8 45.639279 0.089286 63 22
i 1 45.714286 1.071429 65 62 459 3
i 10 45.714286 4.821429 46 47
i 10 45.714286 4.821429 50 47
i 10 45.714286 4.821429 53 47
i 10 45.714286 4.821429 57 47
i 3 45.714286 0.178571 35 115
i 4 45.714286 1.071429 46 62
i 7 45.714286 0.178571 70 37
i 8 45.714286 0.178571 68 78
i 3 45.892857 0.178571 42 27
i 3 46.071429 0.178571 42 57
i 3 46.25 0.178571 35 112
i 3 46.25 0.178571 42 33
i 7 46.25 0.178571 70 62
i 8 46.264279 0.178571 63 26
i 3 46.428571 0.178571 38 45
i 7 46.428571 0.178571 84 58
i 8 46.44285 0.178571 60 59
i 8 46.621421 0.178571 65 25
i 1 46.785714 0.178571 64 45 488 3
i 3 46.785714 0.178571 46 45
i 7 46.799993 0.178571 84 29
i 8 46.799993 0.089286 63 35
i 8 46.889279 0.089286 63 25
i 1 46.964286 0.178571 62 53 496 3
i 8 46.978564 0.178571 63 29
i 1 47.142857 0.892857 60 49 502 3
i 8 47.157136 0.178571 61 63
i 3 47.321429 0.178571 42 47
i 3 47.5 0.178571 35 82
i 7 47.5 0.178571 70 57
i 8 47.50535 0.178571 64 58
i 3 47.678571 0.178571 42 56
i 7 47.678571 0.178571 84 57
i 8 47.69285 0.178571 65 28
i 3 47.857143 0.178571 38 52
i 3 47.857143 0.178571 42 46
i 8 47.871421 0.178571 60 57
i 5 48.035714 0.178571 34 55
i 8 48.049993 0.059524 65 30
i 8 48.109517 0.059524 65 24
i 8 48.169041 0.059524 65 19
i 3 48.214286 0.178571 46 28
i 4 48.214286 0.357143 41 44
i 5 48.214286 0.178571 36 49
i 8 48.219636 0.178571 62 38
i 7 48.228564 0.178571 84 29
i 5 48.392857 0.714286 38 63
i 8 48.407136 0.089286 63 36
i 8 48.496421 0.089286 63 25
i 1 48.571429 0.357143 62 51 549 3
i 3 48.571429 0.178571 35 115
i 7 48.571429 0.178571 70 69
i 8 48.576779 0.178571 67 73
i 3 48.75 0.059524 42 58
i 3 48.809524 0.059524 42 42
i 3 48.869048 0.059524 42 26
i 1 48.928571 0.178571 65 55 564 3
i 4 48.928571 0.892857 46 57
i 7 48.94285 0.178571 84 38
i 1 49.107143 0.178571 67 48 568 3
i 3 49.107143 0.178571 35 112
i 7 49.107143 0.178571 70 63
i 8 49.121421 0.178571 63 27
i 1 49.285714 0.714286 65 59 575 3
i 3 49.285714 0.178571 38 29
i 7 49.285714 0.178571 84 38
i 8 49.299993 0.178571 60 60
i 8 49.478564 0.178571 65 26
i 3 49.642857 0.178571 46 45
i 7 49.657136 0.178571 84 29
i 8 49.657136 0.089286 63 32
i 8 49.746421 0.089286 63 23
i 1 50 0.892857 62 47 597 3
i 3 50 0.178571 42 24
i 8 50.014279 0.178571 61 59
i 3 50.178571 0.059524 42 22
i 3 50.238095 0.059524 42 26
i 3 50.297619 0.059524 42 30
i 3 50.357143 0.178571 35 82
i 3 50.357143 0.178571 42 70
i 7 50.357143 0.178571 70 26
i 8 50.362493 0.178571 64 55
i 3 50.535714 0.178571 42 42
i 7 50.535714 0.178571 84 55
i 8 50.549993 0.178571 63 29
i 3 50.714286 0.178571 38 37
i 3 50.714286 0.178571 42 43
i 8 50.728564 0.178571 60 54
i 5 50.892857 0.178571 29 49
i 7 50.892857 0.089286 84 37
i 8 50.907136 0.178571 65 27
i 7 50.982143 0.089286 84 37
i 3 51.071429 0.178571 46 28
i 5 51.071429 0.357143 34 58
i 8 51.085707 0.178571 65 32
i 7 51.091057 0.178571 84 29
i 8 51.264279 0.089286 63 33
i 8 51.353564 0.089286 63 22
i 10 51.428571 4.821429 46 47
i 10 51.428571 4.821429 50 47
i 10 51.428571 4.821429 53 47
i 10 51.428571 4.821429 57 47
i 3 51.428571 0.178571 35 115
i 4 51.428571 1.071429 46 62
i 5 51.428571 0.178571 34 67
i 7 51.428571 0.178571 70 37
i 8 51.428571 0.178571 68 78
i 3 51.607143 0.178571 42 27
i 5 51.607143 0.178571 29 53
i 3 51.785714 0.178571 42 57
i 5 51.785714 0.178571 34 57
i 3 51.964286 0.178571 35 112
i 3 51.964286 0.178571 42 33
i 5 51.964286 0.178571 36 62
i 7 51.964286 0.178571 70 62
i 8 51.978564 0.178571 63 26
i 3 52.142857 0.178571 38 45
i 5 52.142857 0.178571 38 68
i 7 52.142857 0.178571 84 58
i 8 52.157136 0.178571 60 59
i 5 52.321429 0.178571 41 57
i 8 52.335707 0.178571 65 25
i 3 52.5 0.178571 46 45
i 5 52.5 0.178571 38 62
i 7 52.514279 0.178571 84 29
i 8 52.514279 0.089286 63 35
i 8 52.603564 0.089286 63 25
i 5 52.678571 1.25 34 73
i 8 52.69285 0.178571 63 29
i 8 52.871421 0.178571 61 63
i 3 53.035714 0.178571 42 47
i 3 53.214286 0.178571 35 82
i 7 53.214286 0.178571 70 57
i 8 53.219636 0.178571 64 58
i 3 53.392857 0.178571 42 56
i 7 53.392857 0.178571 84 57
i 8 53.407136 0.178571 65 28
i 3 53.571429 0.178571 38 52
i 3 53.571429 0.178571 42 46
i 8 53.585707 0.178571 60 57
i 8 53.764279 0.059524 65 30
i 8 53.823802 0.059524 65 24
i 8 53.883326 0.059524 65 19
i 3 53.928571 0.178571 46 28
i 4 53.928571 0.357143 41 44
i 5 53.928571 0.178571 36 54
i 8 53.933921 0.178571 62 38
i 7 53.94285 0.178571 84 29
i 8 54.121421 0.089286 63 36
i 8 54.210707 0.089286 63 25
i 3 54.285714 0.178571 35 115
i 7 54.285714 0.178571 70 69
i 8 54.291064 0.178571 67 73
i 3 54.464286 0.059524 42 58
i 5 54.464286 1.071429 29 67
i 3 54.52381 0.059524 42 42
i 3 54.583333 0.059524 42 26
i 4 54.642857 0.892857 46 57
i 7 54.657136 0.178571 84 38
i 3 54.821429 0.178571 35 112
i 7 54.821429 0.178571 70 63
i 8 54.835707 0.178571 63 27
i 3 55 0.178571 38 29
i 7 55 0.178571 84 38
i 8 55.014279 0.178571 60 60
i 8 55.19285 0.178571 65 26
i 3 55.357143 0.178571 46 45
i 7 55.371421 0.178571 84 29
i 8 55.371421 0.089286 63 32
i 8 55.460707 0.089286 63 23
i 3 55.714286 0.178571 42 24
i 8 55.728564 0.178571 61 59
i 3 55.892857 0.059524 42 22
i 3 55.952381 0.059524 42 26
i 3 56.011905 0.059524 42 30
i 3 56.071429 0.178571 35 82
i 3 56.071429 0.178571 42 70
i 5 56.071429 0.178571 33 52
i 7 56.071429 0.178571 70 26
i 8 56.076779 0.178571 64 55
i 3 56.25 0.178571 42 42
i 7 56.25 0.178571 84 55
i 8 56.264279 0.178571 63 29
i 3 56.428571 0.178571 38 37
i 3 56.428571 0.178571 42 43
i 5 56.428571 0.714286 34 65
i 8 56.44285 0.178571 60 54
i 7 56.607143 0.089286 84 37
i 8 56.621421 0.178571 65 27
i 7 56.696429 0.089286 84 37
i 3 56.785714 0.178571 46 28
i 8 56.799993 0.178571 65 32
i 7 56.805343 0.178571 84 29
i 8 56.978564 0.089286 63 33
i 8 57.06785 0.075007 63 22
i 1 57.142857 0.714286 67 60 850 3
i 10 57.142857 4.821429 43 47
i 10 57.142857 4.821429 46 47
i 10 57.142857 4.821429 50 47
i 10 57.142857 4.821429 53 47
i 3 57.142857 0.178571 35 115
i 4 57.142857 1.071429 43 64
i 7 57.142857 0.178571 70 34
i 8 57.142857 0.178571 68 78
i 3 57.321429 0.178571 42 27
i 3 57.5 0.178571 42 57
i 7 57.514279 0.178571 84 36
i 3 57.678571 0.178571 35 112
i 3 57.678571 0.178571 42 33
i 8 57.69285 0.178571 63 26
i 1 57.857143 0.178571 69 49 869 3
i 3 57.857143 0.178571 38 45
i 8 57.871421 0.178571 60 59
i 1 58.035714 0.178571 70 57 876 3
i 8 58.049993 0.178571 65 25
i 1 58.214286 0.357143 69 50 882 3
i 3 58.214286 0.178571 46 45
i 7 58.228564 0.178571 84 27
i 8 58.228564 0.178571 63 35
i 8 58.407136 0.089286 63 29
i 8 58.496421 0.089286 63 21
i 1 58.571429 1.071429 67 61 894 3
i 8 58.585707 0.178571 61 63
i 3 58.75 0.178571 42 47
i 3 58.928571 0.178571 35 82
i 8 58.933921 0.178571 64 58
i 7 58.94285 0.178571 84 36
i 3 59.107143 0.178571 42 56
i 8 59.121421 0.178571 65 28
i 3 59.285714 0.178571 38 52
i 3 59.285714 0.178571 42 46
i 8 59.299993 0.178571 60 57
i 8 59.478564 0.178571 65 30
i 3 59.642857 0.178571 46 28
i 4 59.642857 0.357143 38 46
i 5 59.642857 0.178571 31 57
i 8 59.648207 0.178571 62 41
i 5 59.821429 0.178571 33 50
i 7 59.835707 0.178571 71 25
i 8 59.835707 0.059524 63 36
i 8 59.895231 0.059524 63 30
i 8 59.954755 0.059524 63 24
i 3 60 0.178571 35 115
i 5 60 0.714286 34 64
i 8 60.00535 0.178571 67 73
i 1 60.178571 0.178571 65 43 940 3
i 3 60.178571 0.059524 42 58
i 8 60.19285 0.178571 65 30
i 3 60.238095 0.059524 42 42
i 3 60.297619 0.059524 42 26
i 1 60.357143 0.178571 67 52 951 3
i 4 60.357143 0.892857 43 59
i 7 60.371421 0.178571 84 36
i 1 60.535714 0.178571 69 48 956 3
i 3 60.535714 0.178571 35 112
i 8 60.549993 0.178571 63 27
i 1 60.714286 1.607143 62 55 961 3
i 3 60.714286 0.178571 38 29
i 8 60.728564 0.178571 60 60
i 8 60.907136 0.178571 65 26
i 3 61.071429 0.178571 46 45
i 7 61.085707 0.178571 84 27
i 8 61.085707 0.089286 63 32
i 8 61.174993 0.089286 63 23
i 8 61.264279 0.044643 63 36
i 8 61.308921 0.044643 63 32
i 8 61.353564 0.044643 63 27
i 8 61.398207 0.044643 63 23
i 3 61.428571 0.178571 42 24
i 8 61.44285 0.178571 61 59
i 3 61.607143 0.059524 42 22
i 8 61.612493 0.178571 66 40
i 3 61.666667 0.059524 42 26
i 3 61.72619 0.059524 42 30
i 3 61.785714 0.178571 35 82
i 3 61.785714 0.178571 42 70
i 8 61.791064 0.178571 64 55
i 7 61.799993 0.178571 84 36
i 3 61.964286 0.178571 42 42
i 5 61.964286 0.178571 38 51
i 8 61.978564 0.178571 63 29
i 3 62.142857 0.178571 38 37
i 3 62.142857 0.178571 42 43
i 5 62.142857 0.178571 34 54
i 8 62.157136 0.178571 60 54
i 5 62.321429 0.535714 31 61
i 8 62.335707 0.178571 65 27
i 3 62.5 0.178571 46 28
i 7 62.514279 0.178571 84 27
i 8 62.514279 0.059524 65 32
i 8 62.573802 0.059524 65 26
i 8 62.633326 0.059524 65 20
i 8 62.69285 0.178571 63 33
i 1 62.857143 0.714286 64 60 1045 3
i 10 62.857143 1.785714 45 40
i 10 62.857143 1.785714 50 40
i 10 62.857143 1.785714 52 40
i 3 62.857143 0.178571 35 115
i 4 62.857143 1.071429 45 62
i 7 62.857143 0.178571 70 35
i 8 62.857143 0.178571 68 78
i 3 63.035714 0.178571 42 27
i 3 63.214286 0.178571 42 57
i 7 63.228564 0.178571 84 38
i 3 63.392857 0.178571 35 112
i 3 63.392857 0.178571 42 33
i 8 63.407136 0.178571 63 26
i 1 63.571429 0.357143 62 45 1064 3
i 3 63.571429 0.178571 38 45
i 8 63.585707 0.178571 60 59
i 8 63.764279 0.178571 65 25
i 1 63.928571 0.357143 64 54 1075 3
i 3 63.928571 0.178571 46 45
i 7 63.94285 0.178571 84 29
i 8 63.94285 0.089286 63 35
i 8 64.032136 0.089286 63 24
i 8 64.121421 0.178571 63 29
i 1 64.285714 0.892857 69 61 1087 3
i 8 64.299993 0.178571 61 63
i 3 64.464286 0.178571 42 47
i 3 64.642857 0.178571 35 82
i 8 64.648207 0.178571 64 58
i 7 64.657136 0.178571 84 38
i 3 64.821429 0.178571 42 56
i 8 64.835707 0.178571 65 28
i 3 65 0.178571 38 52
i 3 65 0.178571 42 46
i 8 65.014279 0.178571 60 57
i 5 65.178571 0.178571 33 56
i 8 65.19285 0.178571 65 30
i 3 65.357143 0.178571 46 28
i 4 65.357143 0.357143 40 44
i 5 65.357143 0.178571 35 50
i 8 65.362493 0.178571 62 38
i 7 65.371421 0.178571 84 29
i 5 65.535714 0.714286 37 63
i 8 65.549993 0.089286 63 36
i 8 65.639279 0.089286 63 24
i 10 65.714286 1.25 45 34
i 10 65.714286 1.25 49 34
i 10 65.714286 1.25 52 34
i 3 65.714286 0.178571 35 115
i 8 65.719636 0.178571 67 73
i 1 65.892857 0.178571 67 43 1137 3
i 3 65.892857 0.059524 42 58
i 3 65.952381 0.059524 42 42
i 3 66.011905 0.059524 42 26
i 1 66.071429 0.357143 64 52 1147 3
i 4 66.071429 0.892857 45 57
i 7 66.085707 0.178571 84 38
i 3 66.25 0.178571 35 112
i 1 66.428571 0.357143 62 44 1154 3
i 3 66.428571 0.178571 38 29
i 8 66.44285 0.178571 60 60
i 8 66.621421 0.059524 63 38
i 8 66.680945 0.059524 63 32
i 8 66.740469 0.059524 63 25
i 1 66.785714 1.25 61 51 1166 3
i 3 66.785714 0.178571 46 45
i 7 66.799993 0.178571 84 29
i 8 66.799993 0.178571 63 32
i 8 66.799993 0.089286 65 29
i 8 66.889279 0.089286 65 21
i 8 66.978564 0.178571 60 40
i 3 67.142857 0.178571 42 24
i 8 67.157136 0.178571 61 59
i 3 67.321429 0.059524 42 22
i 8 67.335707 0.059524 63 36
i 3 67.380952 0.059524 42 26
i 8 67.395231 0.059524 63 30
i 3 67.440476 0.059524 42 30
i 8 67.454755 0.059524 63 24
i 3 67.5 0.178571 35 82
i 3 67.5 0.178571 42 70
i 8 67.50535 0.178571 64 55
i 7 67.514279 0.178571 84 38
i 8 67.514279 0.089286 65 28
i 8 67.603564 0.089286 65 20
i 3 67.678571 0.178571 42 42
i 7 67.69285 0.178571 71 23
i 8 67.69285 0.178571 60 38
i 3 67.857143 0.178571 38 37
i 3 67.857143 0.178571 42 43
i 8 67.871421 0.178571 60 54
i 5 68.035714 0.178571 40 52
i 8 68.049993 0.059524 63 34
i 8 68.109517 0.059524 63 28
i 8 68.169041 0.059524 63 22
i 3 68.214286 0.178571 46 22
i 5 68.214286 0.357143 33 60
i 7 68.228564 0.178571 71 19
i 7 68.228564 0.178571 84 29
i 8 68.228564 0.089286 65 26
i 8 68.31785 0.089286 65 18
i 3 68.392857 0.178571 42 24
i 8 68.407136 0.178571 60 36
i 1 68.571429 0.714286 62 65 1252 3
i 10 68.571429 4.821429 50 48
i 10 68.571429 4.821429 53 48
i 10 68.571429 4.821429 57 48
i 10 68.571429 4.821429 60 48
i 4 68.571429 1.071429 38 68
i 7 68.571429 0.178571 70 37
i 8 68.571429 0.178571 68 78
i 7 69.107143 0.178571 70 62
i 8 69.121421 0.178571 63 26
i 1 69.285714 0.178571 64 49 1262 3
i 7 69.285714 0.178571 84 58
i 8 69.299993 0.178571 60 59
i 1 69.464286 0.178571 65 57 1268 3
i 8 69.478564 0.178571 65 25
i 1 69.642857 0.357143 67 53 1274 3
i 7 69.657136 0.178571 84 29
i 8 69.657136 0.089286 63 35
i 8 69.746421 0.089286 63 25
i 8 69.835707 0.178571 63 29
i 1 70 1.25 69 66 1284 3
i 8 70.014279 0.178571 61 63
i 7 70.357143 0.178571 70 57
i 8 70.362493 0.178571 64 58
i 7 70.535714 0.178571 84 57
i 8 70.549993 0.178571 65 28
i 8 70.728564 0.178571 60 57
i 8 70.907136 0.059524 65 30
i 8 70.96666 0.059524 65 24
i 8 71.026183 0.059524 65 19
i 4 71.071429 0.357143 45 50
i 8 71.076779 0.178571 62 38
i 7 71.085707 0.178571 84 29
i 5 71.25 0.178571 26 57
i 8 71.264279 0.089286 63 36
i 8 71.353564 0.089286 63 25
i 5 71.428571 0.178571 33 51
i 7 71.428571 0.178571 70 69
i 8 71.433921 0.178571 67 73
i 5 71.607143 0.178571 36 56
i 1 71.785714 0.357143 67 50 1325 3
i 4 71.785714 0.892857 38 63
i 5 71.785714 0.714286 38 65
i 7 71.799993 0.178571 84 38
i 7 71.964286 0.178571 70 63
i 8 71.978564 0.178571 63 27
i 1 72.142857 0.178571 65 51 1333 3
i 7 72.142857 0.178571 84 38
i 8 72.157136 0.178571 60 60
i 1 72.321429 0.178571 64 44 1339 3
i 8 72.335707 0.178571 65 26
i 1 72.5 1.25 62 55 1344 3
i 7 72.514279 0.178571 84 29
i 8 72.514279 0.089286 63 32
i 8 72.603564 0.089286 63 23
i 8 72.871421 0.178571 61 59
i 7 73.214286 0.178571 70 26
i 8 73.219636 0.178571 64 55
i 7 73.392857 0.178571 84 55
i 8 73.407136 0.178571 63 29
i 8 73.585707 0.178571 60 54
i 5 73.75 0.178571 33 51
i 7 73.75 0.089286 84 37
i 8 73.764279 0.178571 65 27
i 7 73.839286 0.089286 84 37
i 5 73.928571 0.357143 26 60
i 8 73.94285 0.178571 65 32
i 7 73.9482 0.178571 84 29
i 8 74.121421 0.089286 63 33
i 8 74.210707 0.089286 63 22
i 10 74.285714 4.821429 50 48
i 10 74.285714 4.821429 53 48
i 10 74.285714 4.821429 57 48
i 10 74.285714 4.821429 60 48
i 4 74.285714 1.071429 38 68
i 5 74.285714 0.178571 26 70
i 7 74.285714 0.178571 70 34
i 8 74.285714 0.178571 68 78
i 5 74.464286 0.178571 38 55
i 2 74.642857 0.178571 98 127
i 5 74.642857 0.178571 36 60
i 7 74.657136 0.178571 84 36
i 5 74.821429 0.178571 38 65
i 8 74.835707 0.178571 63 26
i 5 75 0.178571 41 72
i 8 75.014279 0.178571 60 59
i 5 75.178571 0.178571 40 58
i 8 75.19285 0.178571 65 25
i 5 75.357143 0.178571 38 64
i 7 75.371421 0.178571 84 27
i 8 75.371421 0.089286 63 35
i 8 75.460707 0.089286 63 25
i 5 75.535714 1.25 33 76
i 8 75.549993 0.178571 63 29
i 8 75.728564 0.178571 61 63
i 8 76.076779 0.178571 64 58
i 7 76.085707 0.178571 84 36
i 8 76.264279 0.178571 65 28
i 8 76.44285 0.178571 60 57
i 8 76.621421 0.059524 65 30
i 8 76.680945 0.059524 65 24
i 8 76.740469 0.059524 65 19
i 4 76.785714 0.357143 45 50
i 5 76.785714 0.178571 36 56
i 8 76.791064 0.178571 62 38
i 7 76.978564 0.178571 71 25
i 8 76.978564 0.089286 63 36
i 8 77.06785 0.089286 63 25
i 8 77.148207 0.178571 67 73
i 5 77.321429 1.071429 38 71
i 4 77.5 0.892857 38 63
i 7 77.514279 0.178571 84 36
i 8 77.69285 0.178571 63 27
i 8 77.871421 0.178571 60 60
i 8 78.049993 0.178571 65 26
i 7 78.228564 0.178571 84 27
i 8 78.228564 0.089286 63 32
i 8 78.31785 0.089286 63 23
i 8 78.585707 0.178571 61 59
i 5 78.928571 0.178571 33 54
i 8 78.933921 0.178571 64 55
i 7 78.94285 0.178571 84 36
i 8 79.121421 0.178571 63 29
i 5 79.285714 0.714286 26 69
i 8 79.299993 0.178571 60 54
i 8 79.478564 0.178571 65 27
i 7 79.657136 0.178571 84 27
i 8 79.657136 0.178571 65 32
i 8 79.835707 0.089286 63 33
i 8 79.924993 0.075007 63 22
i 1 80 0.357143 62 63 1512 3
i 10 80 4.821429 50 48
i 10 80 4.821429 53 48
i 10 80 4.821429 57 48
i 10 80 4.821429 60 48
i 3 80 0.178571 35 115
i 4 80 1.071429 38 68
i 7 80 0.178571 70 37
i 8 80 0.178571 68 78
i 3 80.178571 0.178571 42 27
i 1 80.357143 0.178571 64 48 1523 3
i 3 80.357143 0.178571 42 57
i 1 80.535714 0.178571 65 56 1527 3
i 3 80.535714 0.178571 35 112
i 3 80.535714 0.178571 42 33
i 7 80.535714 0.178571 70 62
i 8 80.549993 0.178571 63 26
i 1 80.714286 1.071429 69 67 1534 3
i 3 80.714286 0.178571 38 45
i 7 80.714286 0.178571 84 58
i 8 80.728564 0.178571 60 59
i 8 80.907136 0.178571 65 25
i 3 81.071429 0.178571 46 45
i 7 81.085707 0.178571 84 29
i 8 81.085707 0.178571 63 35
i 8 81.264279 0.089286 63 29
i 8 81.353564 0.089286 63 21
i 8 81.44285 0.178571 61 63
i 3 81.607143 0.178571 42 47
i 1 81.785714 0.357143 67 53 1562 3
i 3 81.785714 0.178571 35 82
i 7 81.785714 0.178571 70 57
i 8 81.791064 0.178571 64 58
i 3 81.964286 0.178571 42 56
i 7 81.964286 0.178571 84 57
i 8 81.978564 0.178571 65 28
i 1 82.142857 0.535714 65 49 1574 3
i 3 82.142857 0.178571 38 52
i 3 82.142857 0.178571 42 46
i 8 82.157136 0.178571 60 57
i 8 82.335707 0.178571 65 30
i 3 82.5 0.178571 46 28
i 4 82.5 0.357143 45 50
i 8 82.50535 0.178571 62 41
i 7 82.514279 0.178571 84 29
i 5 82.678571 0.178571 26 57
i 8 82.69285 0.059524 63 36
i 8 82.752374 0.059524 63 30
i 8 82.811898 0.059524 63 24
i 3 82.857143 0.178571 35 115
i 5 82.857143 0.178571 33 51
i 7 82.857143 0.178571 70 69
i 8 82.862493 0.178571 67 73
i 3 83.035714 0.059524 42 58
i 5 83.035714 0.178571 36 56
i 8 83.049993 0.178571 65 30
i 3 83.095238 0.059524 42 42
i 3 83.154762 0.059524 42 26
i 1 83.214286 0.357143 69 62 1619 3
i 4 83.214286 0.892857 38 63
i 5 83.214286 0.714286 38 65
i 7 83.228564 0.178571 84 38
i 3 83.392857 0.178571 35 112
i 7 83.392857 0.178571 70 63
i 8 83.407136 0.178571 63 27
i 1 83.571429 0.178571 67 48 1630 3
i 3 83.571429 0.178571 38 29
i 7 83.571429 0.178571 84 38
i 8 83.585707 0.178571 60 60
i 1 83.75 0.178571 65 55 1638 3
i 8 83.764279 0.178571 65 26
i 1 83.928571 0.357143 64 45 1644 3
i 3 83.928571 0.178571 46 45
i 7 83.94285 0.178571 84 29
i 8 83.94285 0.089286 63 32
i 8 84.032136 0.089286 63 23
i 8 84.121421 0.044643 63 36
i 8 84.166064 0.044643 63 32
i 8 84.210707 0.044643 63 27
i 8 84.25535 0.044643 63 23
i 1 84.285714 0.892857 62 57 1664 3
i 3 84.285714 0.178571 42 24
i 8 84.299993 0.178571 61 59
i 3 84.464286 0.059524 42 22
i 8 84.469636 0.178571 66 40
i 3 84.52381 0.059524 42 26
i 3 84.583333 0.059524 42 30
i 3 84.642857 0.178571 35 82
i 3 84.642857 0.178571 42 70
i 7 84.642857 0.178571 70 26
i 8 84.648207 0.178571 64 55
i 3 84.821429 0.178571 42 42
i 7 84.821429 0.178571 84 55
i 8 84.835707 0.178571 63 29
i 3 85 0.178571 38 37
i 3 85 0.178571 42 43
i 8 85.014279 0.178571 60 54
i 5 85.178571 0.178571 33 51
i 7 85.178571 0.089286 84 37
i 8 85.19285 0.178571 65 27
i 7 85.267857 0.089286 84 37
i 3 85.357143 0.178571 46 28
i 5 85.357143 0.357143 26 60
i 8 85.371421 0.059524 65 32
i 7 85.376772 0.178571 84 29
i 8 85.430945 0.059524 65 26
i 8 85.490469 0.059524 65 20
i 8 85.549993 0.178571 63 33
i 10 85.714286 4.821429 50 48
i 10 85.714286 4.821429 53 48
i 10 85.714286 4.821429 57 48
i 10 85.714286 4.821429 60 48
i 3 85.714286 0.178571 35 115
i 4 85.714286 1.071429 38 68
i 7 85.714286 0.178571 70 35
i 8 85.714286 0.178571 68 78
i 3 85.892857 0.178571 42 27
i 3 86.071429 0.178571 42 57
i 7 86.085707 0.178571 84 38
i 1 86.25 1.607143 62 47 1740 3
i 3 86.25 0.178571 35 112
i 3 86.25 0.178571 42 33
i 8 86.264279 0.178571 63 26
i 3 86.428571 0.178571 38 45
i 8 86.44285 0.178571 60 59
i 8 86.621421 0.178571 65 25
i 3 86.785714 0.178571 46 45
i 7 86.799993 0.178571 84 29
i 8 86.799993 0.089286 63 35
i 8 86.889279 0.089286 63 24
i 8 86.978564 0.178571 63 29
i 8 87.157136 0.178571 61 63
i 3 87.321429 0.178571 42 47
i 3 87.5 0.178571 35 82
i 8 87.50535 0.178571 64 58
i 7 87.514279 0.178571 84 38
i 3 87.678571 0.178571 42 56
i 8 87.69285 0.178571 65 28
i 1 87.857143 0.178571 64 36 1779 3
i 3 87.857143 0.178571 38 52
i 3 87.857143 0.178571 42 46
i 8 87.871421 0.178571 60 57
i 1 88.035714 0.178571 65 43 1786 3
i 8 88.049993 0.178571 65 30
i 1 88.214286 0.357143 64 37 1793 3
i 3 88.214286 0.178571 46 28
i 4 88.214286 0.357143 45 50
i 8 88.219636 0.178571 62 38
i 7 88.228564 0.178571 84 29
i 5 88.392857 0.178571 26 57
i 8 88.407136 0.089286 63 36
i 8 88.496421 0.089286 63 24
i 1 88.571429 0.714286 62 44 1807 3
i 3 88.571429 0.178571 35 115
i 5 88.571429 0.178571 33 51
i 8 88.576779 0.178571 67 73
i 3 88.75 0.059524 42 58
i 5 88.75 0.178571 36 56
i 3 88.809524 0.059524 42 42
i 3 88.869048 0.059524 42 26
i 4 88.928571 0.892857 38 63
i 5 88.928571 0.714286 38 65
i 7 88.94285 0.178571 84 38
i 3 89.107143 0.178571 35 112
i 3 89.285714 0.178571 38 29
i 8 89.299993 0.178571 60 60
i 8 89.478564 0.059524 63 38
i 8 89.538088 0.059524 63 32
i 8 89.597612 0.059524 63 25
i 3 89.642857 0.178571 46 45
i 7 89.657136 0.178571 84 29
i 8 89.657136 0.178571 63 32
i 8 89.657136 0.089286 65 29
i 8 89.746421 0.089286 65 21
i 1 89.821429 1.071429 57 37 1849 3
i 8 89.835707 0.178571 60 40
i 3 90 0.178571 42 24
i 8 90.014279 0.178571 61 59
i 3 90.178571 0.059524 42 22
i 8 90.19285 0.059524 63 36
i 3 90.238095 0.059524 42 26
i 8 90.252374 0.059524 63 30
i 3 90.297619 0.059524 42 30
i 8 90.311898 0.059524 63 24
i 3 90.357143 0.178571 35 82
i 3 90.357143 0.178571 42 70
i 8 90.362493 0.178571 64 55
i 7 90.371421 0.178571 84 38
i 8 90.371421 0.089286 65 28
i 8 90.460707 0.089286 65 20
i 3 90.535714 0.178571 42 42
i 7 90.549993 0.178571 71 23
i 8 90.549993 0.178571 60 38
i 3 90.714286 0.178571 38 37
i 3 90.714286 0.178571 42 43
i 8 90.728564 0.178571 60 54
i 5 90.892857 0.178571 33 51
i 8 90.907136 0.059524 63 34
i 8 90.96666 0.059524 63 28
i 8 91.026183 0.059524 63 22
i 3 91.071429 0.178571 46 28
i 5 91.071429 0.357143 26 60
i 7 91.085707 0.178571 71 19
i 7 91.085707 0.178571 84 29
i 8 91.085707 0.089286 65 26
i 8 91.174993 0.089286 65 18
i 8 91.264279 0.178571 60 36
i 1 91.428571 1.071429 65 62 1926 3
i 10 91.428571 4.821429 46 47
i 10 91.428571 4.821429 50 47
i 10 91.428571 4.821429 53 47
i 10 91.428571 4.821429 57 47
i 3 91.428571 0.178571 35 115
i 4 91.428571 1.071429 46 62
i 7 91.428571 0.178571 70 37
i 8 91.428571 0.178571 68 78
i 3 91.607143 0.178571 42 27
i 3 91.785714 0.178571 42 57
i 3 91.964286 0.178571 35 112
i 3 91.964286 0.178571 42 33
i 7 91.964286 0.178571 70 62
i 8 91.978564 0.178571 63 26
i 3 92.142857 0.178571 38 45
i 7 92.142857 0.178571 84 58
i 8 92.157136 0.178571 60 59
i 8 92.335707 0.178571 65 25
i 1 92.5 0.178571 64 45 1956 3
i 3 92.5 0.178571 46 45
i 7 92.514279 0.178571 84 29
i 8 92.514279 0.089286 63 35
i 8 92.603564 0.089286 63 25
i 1 92.678571 0.178571 62 53 1964 3
i 8 92.69285 0.178571 63 29
i 1 92.857143 0.892857 60 49 1970 3
i 8 92.871421 0.178571 61 63
i 3 93.035714 0.178571 42 47
i 3 93.214286 0.178571 35 82
i 7 93.214286 0.178571 70 57
i 8 93.219636 0.178571 64 58
i 3 93.392857 0.178571 42 56
i 7 93.392857 0.178571 84 57
i 8 93.407136 0.178571 65 28
i 3 93.571429 0.178571 38 52
i 3 93.571429 0.178571 42 46
i 8 93.585707 0.178571 60 57
i 5 93.75 0.178571 34 55
i 8 93.764279 0.059524 65 30
i 8 93.823802 0.059524 65 24
i 8 93.883326 0.059524 65 19
i 3 93.928571 0.178571 46 28
i 4 93.928571 0.357143 41 44
i 5 93.928571 0.178571 36 49
i 8 93.933921 0.178571 62 38
i 7 93.94285 0.178571 84 29
i 5 94.107143 0.714286 38 63
i 8 94.121421 0.089286 63 36
i 8 94.210707 0.089286 63 25
i 1 94.285714 0.357143 62 51 2017 3
i 3 94.285714 0.178571 35 115
i 7 94.285714 0.178571 70 69
i 8 94.291064 0.178571 67 73
i 3 94.464286 0.059524 42 58
i 3 94.52381 0.059524 42 42
i 3 94.583333 0.059524 42 26
i 1 94.642857 0.178571 65 55 2032 3
i 4 94.642857 0.892857 46 57
i 7 94.657136 0.178571 84 38
i 1 94.821429 0.178571 67 48 2036 3
i 3 94.821429 0.178571 35 112
i 7 94.821429 0.178571 70 63
i 8 94.835707 0.178571 63 27
i 1 95 0.714286 65 59 2043 3
i 3 95 0.178571 38 29
i 7 95 0.178571 84 38
i 8 95.014279 0.178571 60 60
i 8 95.19285 0.178571 65 26
i 3 95.357143 0.178571 46 45
i 7 95.371421 0.178571 84 29
i 8 95.371421 0.089286 63 32
i 8 95.460707 0.089286 63 23
i 1 95.714286 0.892857 62 47 2065 3
i 3 95.714286 0.178571 42 24
i 8 95.728564 0.178571 61 59
i 3 95.892857 0.059524 42 22
i 3 95.952381 0.059524 42 26
i 3 96.011905 0.059524 42 30
i 3 96.071429 0.178571 35 82
i 3 96.071429 0.178571 42 70
i 7 96.071429 0.178571 70 26
i 8 96.076779 0.178571 64 55
i 3 96.25 0.178571 42 42
i 7 96.25 0.178571 84 55
i 8 96.264279 0.178571 63 29
i 3 96.428571 0.178571 38 37
i 3 96.428571 0.178571 42 43
i 8 96.44285 0.178571 60 54
i 5 96.607143 0.178571 29 49
i 7 96.607143 0.089286 84 37
i 8 96.621421 0.178571 65 27
i 7 96.696429 0.089286 84 37
i 3 96.785714 0.178571 46 28
i 5 96.785714 0.357143 34 58
i 8 96.799993 0.178571 65 32
i 7 96.805343 0.178571 84 29
i 8 96.978564 0.089286 63 33
i 8 97.06785 0.075007 63 22
i 10 97.142857 4.821429 46 47
i 10 97.142857 4.821429 50 47
i 10 97.142857 4.821429 53 47
i 10 97.142857 4.821429 57 47
i 3 97.142857 0.178571 35 115
i 4 97.142857 1.071429 46 62
i 5 97.142857 0.178571 34 67
i 7 97.142857 0.178571 70 34
i 8 97.142857 0.178571 68 78
i 3 97.321429 0.178571 42 27
i 5 97.321429 0.178571 29 53
i 3 97.5 0.178571 42 57
i 5 97.5 0.178571 34 57
i 7 97.514279 0.178571 84 36
i 3 97.678571 0.178571 35 112
i 3 97.678571 0.178571 42 33
i 5 97.678571 0.178571 36 62
i 8 97.69285 0.178571 63 26
i 3 97.857143 0.178571 38 45
i 5 97.857143 0.178571 38 68
i 8 97.871421 0.178571 60 59
i 5 98.035714 0.178571 41 57
i 8 98.049993 0.178571 65 25
i 2 98.214286 0.178571 103 127
i 3 98.214286 0.178571 46 45
i 5 98.214286 0.178571 38 62
i 7 98.228564 0.178571 84 27
i 8 98.228564 0.178571 63 35
i 5 98.392857 1.25 34 73
i 8 98.407136 0.089286 63 29
i 8 98.496421 0.089286 63 21
i 8 98.585707 0.178571 61 63
i 3 98.75 0.178571 42 47
i 2 98.928571 0.178571 98 127
i 3 98.928571 0.178571 35 82
i 8 98.933921 0.178571 64 58
i 7 98.94285 0.178571 84 36
i 3 99.107143 0.178571 42 56
i 8 99.121421 0.178571 65 28
i 3 99.285714 0.178571 38 52
i 3 99.285714 0.178571 42 46
i 8 99.299993 0.178571 60 57
i 8 99.478564 0.178571 65 30
i 3 99.642857 0.178571 46 28
i 4 99.642857 0.357143 41 44
i 5 99.642857 0.178571 36 54
i 8 99.648207 0.178571 62 41
i 7 99.835707 0.178571 71 25
i 8 99.835707 0.059524 63 36
i 8 99.895231 0.059524 63 30
i 8 99.954755 0.059524 63 24
i 3 100 0.178571 35 115
i 8 100.00535 0.178571 67 73
i 3 100.178571 0.059524 42 58
i 5 100.178571 1.071429 29 67
i 8 100.19285 0.178571 65 30
i 3 100.238095 0.059524 42 42
i 3 100.297619 0.059524 42 26
i 4 100.357143 0.892857 46 57
i 7 100.371421 0.178571 84 36
i 3 100.535714 0.178571 35 112
i 8 100.549993 0.178571 63 27
i 3 100.714286 0.178571 38 29
i 8 100.728564 0.178571 60 60
i 8 100.907136 0.178571 65 26
i 3 101.071429 0.178571 46 45
i 7 101.085707 0.178571 84 27
i 8 101.085707 0.089286 63 32
i 8 101.174993 0.089286 63 23
i 8 101.264279 0.044643 63 36
i 8 101.308921 0.044643 63 32
i 8 101.353564 0.044643 63 27
i 8 101.398207 0.044643 63 23
i 3 101.428571 0.178571 42 24
i 8 101.44285 0.178571 61 59
i 3 101.607143 0.059524 42 22
i 8 101.612493 0.178571 66 40
i 3 101.666667 0.059524 42 26
i 3 101.72619 0.059524 42 30
i 3 101.785714 0.178571 35 82
i 3 101.785714 0.178571 42 70
i 5 101.785714 0.178571 33 52
i 8 101.791064 0.178571 64 55
i 7 101.799993 0.178571 84 36
i 3 101.964286 0.178571 42 42
i 8 101.978564 0.178571 63 29
i 3 102.142857 0.178571 38 37
i 3 102.142857 0.178571 42 43
i 5 102.142857 0.714286 34 65
i 8 102.157136 0.178571 60 54
i 8 102.335707 0.178571 65 27
i 3 102.5 0.178571 46 28
i 7 102.514279 0.178571 84 27
i 8 102.514279 0.059524 65 32
i 8 102.573802 0.059524 65 26
i 8 102.633326 0.059524 65 20
i 8 102.69285 0.178571 63 33
i 1 102.857143 0.714286 67 60 2318 3
i 10 102.857143 4.821429 43 47
i 10 102.857143 4.821429 46 47
i 10 102.857143 4.821429 50 47
i 10 102.857143 4.821429 53 47
i 3 102.857143 0.178571 35 115
i 4 102.857143 1.071429 43 64
i 7 102.857143 0.178571 70 37
i 8 102.857143 0.178571 68 78
i 3 103.035714 0.178571 42 27
i 3 103.214286 0.178571 42 57
i 3 103.392857 0.178571 35 112
i 3 103.392857 0.178571 42 33
i 7 103.392857 0.178571 70 62
i 8 103.407136 0.178571 63 26
i 1 103.571429 0.178571 69 49 2336 3
i 3 103.571429 0.178571 38 45
i 7 103.571429 0.178571 84 58
i 8 103.585707 0.178571 60 59
i 1 103.75 0.178571 70 57 2345 3
i 8 103.764279 0.178571 65 25
i 1 103.928571 0.357143 69 50 2352 3
i 3 103.928571 0.178571 46 45
i 7 103.94285 0.178571 84 29
i 8 103.94285 0.089286 63 35
i 8 104.032136 0.089286 63 25
i 8 104.121421 0.178571 63 29
i 1 104.285714 1.071429 67 61 2364 3
i 8 104.299993 0.178571 61 63
i 3 104.464286 0.178571 42 47
i 3 104.642857 0.178571 35 82
i 7 104.642857 0.178571 70 57
i 8 104.648207 0.178571 64 58
i 3 104.821429 0.178571 42 56
i 7 104.821429 0.178571 84 57
i 8 104.835707 0.178571 65 28
i 3 105 0.178571 38 52
i 3 105 0.178571 42 46
i 8 105.014279 0.178571 60 57
i 8 105.19285 0.059524 65 30
i 8 105.252374 0.059524 65 24
i 8 105.311898 0.059524 65 19
i 3 105.357143 0.178571 46 28
i 4 105.357143 0.357143 38 46
i 5 105.357143 0.178571 31 57
i 8 105.362493 0.178571 62 38
i 7 105.371421 0.178571 84 29
i 5 105.535714 0.178571 33 50
i 8 105.549993 0.089286 63 36
i 8 105.639279 0.089286 63 25
i 3 105.714286 0.178571 35 115
i 5 105.714286 0.714286 34 64
i 7 105.714286 0.178571 70 69
i 8 105.719636 0.178571 67 73
i 1 105.892857 0.178571 65 43 2415 3
i 3 105.892857 0.059524 42 58
i 3 105.952381 0.059524 42 42
i 3 106.011905 0.059524 42 26
i 1 106.071429 0.178571 67 52 2426 3
i 4 106.071429 0.892857 43 59
i 7 106.085707 0.178571 84 38
i 1 106.25 0.178571 69 48 2430 3
i 3 106.25 0.178571 35 112
i 7 106.25 0.178571 70 63
i 8 106.264279 0.178571 63 27
i 1 106.428571 1.607143 62 55 2436 3
i 3 106.428571 0.178571 38 29
i 7 106.428571 0.178571 84 38
i 8 106.44285 0.178571 60 60
i 8 106.621421 0.178571 65 26
i 3 106.785714 0.178571 46 45
i 7 106.799993 0.178571 84 29
i 8 106.799993 0.089286 63 32
i 8 106.889279 0.089286 63 23
i 3 107.142857 0.178571 42 24
i 8 107.157136 0.178571 61 59
i 3 107.321429 0.059524 42 22
i 3 107.380952 0.059524 42 26
i 3 107.440476 0.059524 42 30
i 3 107.5 0.178571 35 82
i 3 107.5 0.178571 42 70
i 7 107.5 0.178571 70 26
i 8 107.50535 0.178571 64 55
i 3 107.678571 0.178571 42 42
i 5 107.678571 0.178571 38 51
i 7 107.678571 0.178571 84 55
i 8 107.69285 0.178571 63 29
i 3 107.857143 0.178571 38 37
i 3 107.857143 0.178571 42 43
i 5 107.857143 0.178571 34 54
i 8 107.871421 0.178571 60 54
i 5 108.035714 0.535714 31 61
i 7 108.035714 0.089286 84 37
i 8 108.049993 0.178571 65 27
i 7 108.125 0.089286 84 37
i 3 108.214286 0.178571 46 28
i 8 108.228564 0.178571 65 32
i 7 108.233914 0.178571 84 29
i 8 108.407136 0.089286 63 33
i 8 108.496421 0.075007 63 22
i 1 108.571429 0.714286 64 60 2517 3
i 10 108.571429 1.785714 45 40
i 10 108.571429 1.785714 50 40
i 10 108.571429 1.785714 52 40
i 3 108.571429 0.178571 35 115
i 4 108.571429 1.071429 45 62
i 7 108.571429 0.178571 70 35
i 8 108.571429 0.178571 68 78
i 3 108.75 0.178571 42 27
i 3 108.928571 0.178571 42 57
i 7 108.94285 0.178571 84 38
i 3 109.107143 0.178571 35 112
i 3 109.107143 0.178571 42 33
i 8 109.121421 0.178571 63 26
i 1 109.285714 0.357143 62 45 2536 3
i 3 109.285714 0.178571 38 45
i 8 109.299993 0.178571 60 59
i 8 109.478564 0.178571 65 25
i 1 109.642857 0.357143 64 54 2547 3
i 3 109.642857 0.178571 46 45
i 7 109.657136 0.178571 84 29
i 8 109.657136 0.089286 63 35
i 8 109.746421 0.089286 63 24
i 8 109.835707 0.178571 63 29
i 1 110 0.892857 69 61 2559 3
i 8 110.014279 0.178571 61 63
i 3 110.178571 0.178571 42 47
i 3 110.357143 0.178571 35 82
i 8 110.362493 0.178571 64 58
i 7 110.371421 0.178571 84 38
i 3 110.535714 0.178571 42 56
i 8 110.549993 0.178571 65 28
i 3 110.714286 0.178571 38 52
i 3 110.714286 0.178571 42 46
i 8 110.728564 0.178571 60 57
i 5 110.892857 0.178571 33 56
i 8 110.907136 0.178571 65 30
i 3 111.071429 0.178571 46 28
i 4 111.071429 0.357143 40 44
i 5 111.071429 0.178571 35 50
i 8 111.076779 0.178571 62 38
i 7 111.085707 0.178571 84 29
i 5 111.25 0.714286 37 63
i 8 111.264279 0.089286 63 36
i 8 111.353564 0.089286 63 24
i 10 111.428571 1.25 45 34
i 10 111.428571 1.25 49 34
i 10 111.428571 1.25 52 34
i 3 111.428571 0.178571 35 115
i 8 111.433921 0.178571 67 73
i 1 111.607143 0.178571 67 43 2609 3
i 3 111.607143 0.059524 42 58
i 3 111.666667 0.059524 42 42
i 3 111.72619 0.059524 42 26
i 1 111.785714 0.357143 64 52 2619 3
i 4 111.785714 0.892857 45 57
i 7 111.799993 0.178571 84 38
i 3 111.964286 0.178571 35 112
i 1 112.142857 0.357143 62 44 2626 3
i 3 112.142857 0.178571 38 29
i 8 112.157136 0.178571 60 60
i 8 112.335707 0.059524 63 38
i 8 112.395231 0.059524 63 32
i 8 112.454755 0.059524 63 25
i 1 112.5 1.25 61 51 2638 3
i 3 112.5 0.178571 46 45
i 7 112.514279 0.178571 84 29
i 8 112.514279 0.178571 63 32
i 8 112.514279 0.089286 65 29
i 8 112.603564 0.089286 65 21
i 8 112.69285 0.178571 60 40
i 3 112.857143 0.178571 42 24
i 8 112.871421 0.178571 61 59
i 3 113.035714 0.059524 42 22
i 8 113.049993 0.059524 63 36
i 3 113.095238 0.059524 42 26
i 8 113.109517 0.059524 63 30
i 3 113.154762 0.059524 42 30
i 8 113.169041 0.059524 63 24
i 3 113.214286 0.178571 35 82
i 3 113.214286 0.178571 42 70
i 8 113.219636 0.178571 64 55
i 7 113.228564 0.178571 84 38
i 8 113.228564 0.089286 65 28
i 8 113.31785 0.089286 65 20
i 3 113.392857 0.178571 42 42
i 7 113.407136 0.178571 71 23
i 8 113.407136 0.178571 60 38
i 3 113.571429 0.178571 38 37
i 3 113.571429 0.178571 42 43
i 8 113.585707 0.178571 60 54
i 5 113.75 0.178571 40 52
i 8 113.764279 0.059524 63 34
i 8 113.823802 0.059524 63 28
i 8 113.883326 0.059524 63 22
i 3 113.928571 0.178571 46 28
i 5 113.928571 0.357143 33 60
i 7 113.94285 0.178571 71 19
i 7 113.94285 0.178571 84 29
i 8 113.94285 0.089286 65 26
i 8 114.032136 0.089286 65 18
i 8 114.121421 0.178571 60 36
i 1 114.285714 0.714286 62 65 2722 3
i 10 114.285714 4.821429 50 48
i 10 114.285714 4.821429 53 48
i 10 114.285714 4.821429 57 48
i 10 114.285714 4.821429 60 48
i 3 114.285714 0.178571 35 115
i 4 114.285714 1.071429 38 68
i 7 114.285714 0.178571 70 37
i 8 114.285714 0.178571 68 78
i 3 114.464286 0.178571 42 27
i 3 114.642857 0.178571 42 57
i 3 114.821429 0.178571 35 112
i 3 114.821429 0.178571 42 33
i 7 114.821429 0.178571 70 62
i 8 114.835707 0.178571 63 26
i 1 115 0.178571 64 49 2740 3
i 3 115 0.178571 38 45
i 7 115 0.178571 84 58
i 8 115.014279 0.178571 60 59
i 1 115.178571 0.178571 65 57 2749 3
i 8 115.19285 0.178571 65 25
i 1 115.357143 0.357143 67 53 2756 3
i 3 115.357143 0.178571 46 45
i 7 115.371421 0.178571 84 29
i 8 115.371421 0.089286 63 35
i 8 115.460707 0.089286 63 25
i 8 115.549993 0.178571 63 29
i 1 115.714286 1.25 69 66 2768 3
i 8 115.728564 0.178571 61 63
i 3 115.892857 0.178571 42 47
i 3 116.071429 0.178571 35 82
i 7 116.071429 0.178571 70 57
i 8 116.076779 0.178571 64 58
i 3 116.25 0.178571 42 56
i 7 116.25 0.178571 84 57
i 8 116.264279 0.178571 65 28
i 3 116.428571 0.178571 38 52
i 3 116.428571 0.178571 42 46
i 8 116.44285 0.178571 60 57
i 8 116.621421 0.059524 65 30
i 8 116.680945 0.059524 65 24
i 8 116.740469 0.059524 65 19
i 3 116.785714 0.178571 46 28
i 4 116.785714 0.357143 45 50
i 8 116.791064 0.178571 62 38
i 7 116.799993 0.178571 84 29
i 5 116.964286 0.178571 26 57
i 8 116.978564 0.089286 63 36
i 8 117.06785 0.089286 63 25
i 3 117.142857 0.178571 35 115
i 5 117.142857 0.178571 33 51
i 7 117.142857 0.178571 70 69
i 8 117.148207 0.178571 67 73
i 3 117.321429 0.059524 42 58
i 5 117.321429 0.178571 36 56
i 3 117.380952 0.059524 42 42
i 3 117.440476 0.059524 42 26
i 1 117.5 0.357143 67 50 2828 3
i 4 117.5 0.892857 38 63
i 5 117.5 0.714286 38 65
i 7 117.514279 0.178571 84 38
i 3 117.678571 0.178571 35 112
i 7 117.678571 0.178571 70 63
i 8 117.69285 0.178571 63 27
i 1 117.857143 0.178571 65 51 2838 3
i 3 117.857143 0.178571 38 29
i 7 117.857143 0.178571 84 38
i 8 117.871421 0.178571 60 60
i 1 118.035714 0.178571 64 44 2846 3
i 8 118.049993 0.178571 65 26
i 1 118.214286 1.25 62 55 2852 3
i 3 118.214286 0.178571 46 45
i 7 118.228564 0.178571 84 29
i 8 118.228564 0.089286 63 32
i 8 118.31785 0.089286 63 23
i 3 118.571429 0.178571 42 24
i 8 118.585707 0.178571 61 59
i 3 118.75 0.059524 42 22
i 3 118.809524 0.059524 42 26
i 3 118.869048 0.059524 42 30
i 3 118.928571 0.178571 35 82
i 3 118.928571 0.178571 42 70
i 7 118.928571 0.178571 70 26
i 8 118.933921 0.178571 64 55
i 3 119.107143 0.178571 42 42
i 7 119.107143 0.178571 84 55
i 8 119.121421 0.178571 63 29
i 3 119.285714 0.178571 38 37
i 3 119.285714 0.178571 42 43
i 8 119.299993 0.178571 60 54
i 5 119.464286 0.178571 33 51
i 7 119.464286 0.089286 84 37
i 8 119.478564 0.178571 65 27
i 7 119.553571 0.089286 84 37
i 3 119.642857 0.178571 46 28
i 5 119.642857 0.357143 26 60
i 8 119.657136 0.178571 65 32
i 7 119.662486 0.178571 84 29
i 8 119.835707 0.089286 63 33
i 8 119.924993 0.089286 63 22
i 10 120 4.821429 50 48
i 10 120 4.821429 53 48
i 10 120 4.821429 57 48
i 10 120 4.821429 60 48
i 3 120 0.178571 35 115
i 4 120 1.071429 38 68
i 7 120 0.178571 70 34
i 8 120 0.178571 68 78
i 3 120.178571 0.178571 42 27
i 2 120.357143 0.178571 98 127
i 3 120.357143 0.178571 42 57
i 7 120.371421 0.178571 84 36
i 1 120.535714 1.607143 62 47 2935 3
i 3 120.535714 0.178571 35 112
i 3 120.535714 0.178571 42 33
i 8 120.549993 0.178571 63 26
i 3 120.714286 0.178571 38 45
i 8 120.728564 0.178571 60 59
i 8 120.907136 0.178571 65 25
i 3 121.071429 0.178571 46 45
i 7 121.085707 0.178571 84 27
i 8 121.085707 0.089286 63 35
i 8 121.174993 0.089286 63 25
i 8 121.264279 0.178571 63 29
i 8 121.44285 0.178571 61 63
i 3 121.607143 0.178571 42 47
i 3 121.785714 0.178571 35 82
i 8 121.791064 0.178571 64 58
i 7 121.799993 0.178571 84 36
i 3 121.964286 0.178571 42 56
i 8 121.978564 0.178571 65 28
i 1 122.142857 0.178571 64 36 2975 3
i 3 122.142857 0.178571 38 52
i 3 122.142857 0.178571 42 38
i 8 122.157136 0.178571 60 57
i 1 122.321429 0.178571 65 43 2982 3
i 8 122.335707 0.059524 65 30
i 8 122.395231 0.059524 65 24
i 8 122.454755 0.059524 65 19
i 1 122.5 0.357143 64 37 2993 3
i 3 122.5 0.178571 42 31
i 4 122.5 0.357143 45 50
i 8 122.50535 0.178571 62 38
i 6 122.5107 0.892857 74 43
i 5 122.678571 0.178571 26 57
i 7 122.69285 0.178571 71 25
i 8 122.69285 0.089286 63 36
i 8 122.782136 0.089286 63 25
i 1 122.857143 0.714286 62 44 3007 3
i 3 122.857143 0.178571 35 115
i 5 122.857143 0.178571 33 51
i 8 122.862493 0.178571 67 73
i 3 123.035714 0.059524 42 58
i 5 123.035714 0.178571 36 56
i 3 123.095238 0.059524 42 42
i 3 123.154762 0.059524 42 26
i 4 123.214286 0.892857 38 63
i 5 123.214286 0.714286 38 65
i 7 123.228564 0.178571 84 36
i 3 123.392857 0.178571 35 112
i 8 123.407136 0.178571 63 27
i 3 123.571429 0.178571 38 29
i 8 123.585707 0.178571 60 60
i 8 123.764279 0.178571 65 26
i 3 123.928571 0.178571 46 45
i 7 123.94285 0.178571 84 27
i 8 123.94285 0.089286 63 32
i 8 124.032136 0.089286 63 23
i 1 124.107143 1.071429 57 37 3048 3
i 3 124.285714 0.178571 42 24
i 8 124.299993 0.178571 61 59
i 3 124.464286 0.059524 42 22
i 3 124.52381 0.059524 42 26
i 3 124.583333 0.059524 42 30
i 3 124.642857 0.178571 35 82
i 3 124.642857 0.178571 42 70
i 8 124.648207 0.178571 64 55
i 7 124.657136 0.178571 84 36
i 3 124.821429 0.178571 42 42
i 8 124.835707 0.178571 63 29
i 3 125 0.178571 38 37
i 3 125 0.178571 42 43
i 6 125.0107 0.535714 76 33
i 8 125.014279 0.178571 60 54
i 5 125.178571 0.178571 33 51
i 8 125.19285 0.178571 65 27
i 3 125.357143 0.178571 46 28
i 5 125.357143 0.357143 26 60
i 7 125.371421 0.178571 84 27
i 8 125.371421 0.178571 65 32
i 8 125.549993 0.089286 63 33
i 8 125.639279 0.075007 63 22
i 1 125.714286 0.357143 62 63 3106 3
i 10 125.714286 4.821429 50 48
i 10 125.714286 4.821429 53 48
i 10 125.714286 4.821429 57 48
i 10 125.714286 4.821429 60 48
i 3 125.714286 0.178571 35 115
i 4 125.714286 1.071429 38 68
i 7 125.714286 0.178571 70 37
i 8 125.714286 0.178571 68 78
i 3 125.892857 0.178571 42 27
i 1 126.071429 0.178571 64 48 3117 3
i 3 126.071429 0.178571 42 57
i 1 126.25 0.178571 65 56 3121 3
i 3 126.25 0.178571 35 112
i 3 126.25 0.178571 42 33
i 7 126.25 0.178571 70 62
i 8 126.264279 0.178571 63 26
i 1 126.428571 1.071429 69 67 3128 3
i 3 126.428571 0.178571 38 45
i 7 126.428571 0.178571 84 58
i 8 126.44285 0.178571 60 59
i 8 126.621421 0.178571 65 25
i 3 126.785714 0.178571 46 45
i 7 126.799993 0.178571 84 29
i 8 126.799993 0.178571 63 35
i 8 126.978564 0.089286 63 29
i 8 127.06785 0.089286 63 21
i 8 127.157136 0.178571 61 63
i 3 127.321429 0.178571 42 47
i 1 127.5 0.357143 67 53 3156 3
i 3 127.5 0.178571 35 82
i 7 127.5 0.178571 70 57
i 8 127.50535 0.178571 64 58
i 3 127.678571 0.178571 42 56
i 7 127.678571 0.178571 84 57
i 8 127.69285 0.178571 65 28
i 1 127.857143 0.535714 65 49 3168 3
i 3 127.857143 0.178571 38 52
i 3 127.857143 0.178571 42 46
i 8 127.871421 0.178571 60 57
i 8 128.049993 0.178571 65 30
i 3 128.214286 0.178571 46 28
i 4 128.214286 0.357143 45 50
i 8 128.219636 0.178571 62 41
i 7 128.228564 0.178571 84 29
i 5 128.392857 0.178571 26 57
i 8 128.407136 0.059524 63 36
i 8 128.46666 0.059524 63 30
i 8 128.526183 0.059524 63 24
i 3 128.571429 0.178571 35 115
i 5 128.571429 0.178571 33 51
i 7 128.571429 0.178571 70 69
i 8 128.576779 0.178571 67 73
i 3 128.75 0.059524 42 58
i 5 128.75 0.178571 36 56
i 8 128.764279 0.178571 65 30
i 3 128.809524 0.059524 42 42
i 3 128.869048 0.059524 42 26
i 1 128.928571 0.357143 69 62 3213 3
i 4 128.928571 0.892857 38 63
i 5 128.928571 0.714286 38 65
i 7 128.94285 0.178571 84 38
i 3 129.107143 0.178571 35 112
i 7 129.107143 0.178571 70 63
i 8 129.121421 0.178571 63 27
i 1 129.285714 0.178571 67 48 3224 3
i 3 129.285714 0.178571 38 29
i 7 129.285714 0.178571 84 38
i 8 129.299993 0.178571 60 60
i 1 129.464286 0.178571 65 55 3232 3
i 8 129.478564 0.178571 65 26
i 1 129.642857 0.357143 64 45 3238 3
i 3 129.642857 0.178571 46 45
i 7 129.657136 0.178571 84 29
i 8 129.657136 0.089286 63 32
i 8 129.746421 0.089286 63 23
i 8 129.835707 0.044643 63 36
i 8 129.88035 0.044643 63 32
i 8 129.924993 0.044643 63 27
i 8 129.969636 0.044643 63 23
i 1 130 0.892857 62 57 3258 3
i 3 130 0.178571 42 24
i 8 130.014279 0.178571 61 59
i 3 130.178571 0.059524 42 22
i 8 130.183921 0.178571 66 40
i 3 130.238095 0.059524 42 26
i 3 130.297619 0.059524 42 30
i 3 130.357143 0.178571 35 82
i 3 130.357143 0.178571 42 70
i 7 130.357143 0.178571 70 26
i 8 130.362493 0.178571 64 55
i 3 130.535714 0.178571 42 42
i 7 130.535714 0.178571 84 55
i 8 130.549993 0.178571 63 29
i 3 130.714286 0.178571 38 37
i 3 130.714286 0.178571 42 43
i 8 130.728564 0.178571 60 54
i 5 130.892857 0.178571 33 51
i 7 130.892857 0.089286 84 37
i 8 130.907136 0.178571 65 27
i 7 130.982143 0.089286 84 37
i 3 131.071429 0.178571 46 28
i 5 131.071429 0.357143 26 60
i 8 131.085707 0.059524 65 32
i 7 131.091057 0.178571 84 29
i 8 131.145231 0.059524 65 26
i 8 131.204755 0.059524 65 20
i 8 131.264279 0.178571 63 33
i 10 131.428571 4.821429 50 48
i 10 131.428571 4.821429 53 48
i 10 131.428571 4.821429 57 48
i 10 131.428571 4.821429 60 48
i 3 131.428571 0.178571 35 115
i 4 131.428571 1.071429 38 68
i 5 131.428571 0.178571 26 69
i 7 131.428571 0.178571 70 35
i 8 131.428571 0.178571 68 78
i 3 131.607143 0.178571 42 27
i 5 131.607143 0.178571 33 54
i 3 131.785714 0.178571 42 57
i 5 131.785714 0.178571 36 59
i 7 131.799993 0.178571 84 38
i 3 131.964286 0.178571 35 112
i 3 131.964286 0.178571 42 33
i 5 131.964286 0.178571 38 64
i 8 131.978564 0.178571 63 26
i 3 132.142857 0.178571 38 45
i 5 132.142857 0.178571 40 61
i 8 132.157136 0.178571 60 59
i 5 132.321429 0.178571 41 71
i 8 132.335707 0.178571 65 25
i 3 132.5 0.178571 46 45
i 5 132.5 0.178571 40 58
i 7 132.514279 0.178571 84 29
i 8 132.514279 0.089286 63 35
i 8 132.603564 0.089286 63 24
i 5 132.678571 1.25 38 75
i 8 132.69285 0.178571 63 29
i 8 132.871421 0.178571 61 63
i 3 133.035714 0.178571 42 47
i 3 133.214286 0.178571 35 82
i 8 133.219636 0.178571 64 58
i 7 133.228564 0.178571 84 38
i 3 133.392857 0.178571 42 56
i 8 133.407136 0.178571 65 28
i 3 133.571429 0.178571 38 52
i 3 133.571429 0.178571 42 46
i 8 133.585707 0.178571 60 57
i 8 133.764279 0.178571 65 30
i 3 133.928571 0.178571 46 28
i 4 133.928571 0.357143 45 50
i 5 133.928571 0.178571 36 55
i 8 133.933921 0.178571 62 38
i 7 133.94285 0.178571 84 29
i 8 134.121421 0.089286 63 36
i 8 134.210707 0.089286 63 24
i 3 134.285714 0.178571 35 115
i 8 134.291064 0.178571 67 73
i 3 134.464286 0.059524 42 58
i 5 134.464286 1.071429 33 69
i 3 134.52381 0.059524 42 42
i 3 134.583333 0.059524 42 26
i 4 134.642857 0.892857 38 63
i 7 134.657136 0.178571 84 38
i 3 134.821429 0.178571 35 112
i 3 135 0.178571 38 29
i 8 135.014279 0.178571 60 60
i 8 135.19285 0.059524 63 38
i 8 135.252374 0.059524 63 32
i 8 135.311898 0.059524 63 25
i 3 135.357143 0.178571 46 45
i 7 135.371421 0.178571 84 29
i 8 135.371421 0.178571 63 32
i 8 135.371421 0.089286 65 29
i 8 135.460707 0.089286 65 21
i 8 135.549993 0.178571 60 40
i 3 135.714286 0.178571 42 24
i 8 135.728564 0.178571 61 59
i 3 135.892857 0.059524 42 22
i 8 135.907136 0.059524 63 36
i 3 135.952381 0.059524 42 26
i 8 135.96666 0.059524 63 30
i 3 136.011905 0.059524 42 30
i 8 136.026183 0.059524 63 24
i 3 136.071429 0.178571 35 82
i 3 136.071429 0.178571 42 70
i 5 136.071429 0.178571 36 54
i 8 136.076779 0.178571 64 55
i 7 136.085707 0.178571 84 38
i 8 136.085707 0.089286 65 28
i 8 136.174993 0.089286 65 20
i 3 136.25 0.178571 42 42
i 7 136.264279 0.178571 71 23
i 8 136.264279 0.178571 60 38
i 3 136.428571 0.178571 38 37
i 3 136.428571 0.178571 42 43
i 5 136.428571 0.714286 26 68
i 8 136.44285 0.178571 60 54
i 8 136.621421 0.059524 63 34
i 8 136.680945 0.059524 63 28
i 8 136.740469 0.059524 63 22
i 3 136.785714 0.178571 46 28
i 7 136.799993 0.178571 71 19
i 7 136.799993 0.178571 84 29
i 8 136.799993 0.089286 65 26
i 8 136.889279 0.089286 65 18
i 8 136.978564 0.178571 60 36
i 1 137.142857 1.071429 65 62 3520 3
i 10 137.142857 4.821429 46 47
i 10 137.142857 4.821429 50 47
i 10 137.142857 4.821429 53 47
i 10 137.142857 4.821429 57 47
i 3 137.142857 0.178571 35 115
i 4 137.142857 1.071429 46 62
i 7 137.142857 0.178571 70 37
i 8 137.142857 0.178571 68 78
i 3 137.321429 0.178571 42 27
i 3 137.5 0.178571 42 57
i 3 137.678571 0.178571 35 112
i 3 137.678571 0.178571 42 33
i 7 137.678571 0.178571 70 62
i 8 137.69285 0.178571 63 26
i 3 137.857143 0.178571 38 45
i 7 137.857143 0.178571 84 58
i 8 137.871421 0.178571 60 59
i 8 138.049993 0.178571 65 25
i 1 138.214286 0.178571 64 45 3550 3
i 3 138.214286 0.178571 46 45
i 7 138.228564 0.178571 84 29
i 8 138.228564 0.089286 63 35
i 8 138.31785 0.089286 63 25
i 1 138.392857 0.178571 62 53 3558 3
i 8 138.407136 0.178571 63 29
i 1 138.571429 0.892857 60 49 3564 3
i 8 138.585707 0.178571 61 63
i 3 138.75 0.178571 42 47
i 3 138.928571 0.178571 35 82
i 7 138.928571 0.178571 70 57
i 8 138.933921 0.178571 64 58
i 3 139.107143 0.178571 42 56
i 7 139.107143 0.178571 84 57
i 8 139.121421 0.178571 65 28
i 3 139.285714 0.178571 38 52
i 3 139.285714 0.178571 42 46
i 8 139.299993 0.178571 60 57
i 5 139.464286 0.178571 34 55
i 8 139.478564 0.059524 65 30
i 8 139.538088 0.059524 65 24
i 8 139.597612 0.059524 65 19
i 3 139.642857 0.178571 46 28
i 4 139.642857 0.357143 41 44
i 5 139.642857 0.178571 36 49
i 8 139.648207 0.178571 62 38
i 7 139.657136 0.178571 84 29
i 5 139.821429 0.714286 38 63
i 8 139.835707 0.089286 63 36
i 8 139.924993 0.089286 63 25
i 1 140 0.357143 62 51 3611 3
i 3 140 0.178571 35 115
i 7 140 0.178571 70 69
i 8 140.00535 0.178571 67 73
i 3 140.178571 0.059524 42 58
i 3 140.238095 0.059524 42 42
i 3 140.297619 0.059524 42 26
i 1 140.357143 0.178571 65 55 3626 3
i 4 140.357143 0.892857 46 57
i 7 140.371421 0.178571 84 38
i 1 140.535714 0.178571 67 48 3630 3
i 3 140.535714 0.178571 35 112
i 7 140.535714 0.178571 70 63
i 8 140.549993 0.178571 63 27
i 1 140.714286 0.714286 65 59 3637 3
i 3 140.714286 0.178571 38 29
i 7 140.714286 0.178571 84 38
i 8 140.728564 0.178571 60 60
i 8 140.907136 0.178571 65 26
i 3 141.071429 0.178571 46 45
i 7 141.085707 0.178571 84 29
i 8 141.085707 0.089286 63 32
i 8 141.174993 0.089286 63 23
i 1 141.428571 0.892857 62 47 3659 3
i 3 141.428571 0.178571 42 24
i 8 141.44285 0.178571 61 59
i 3 141.607143 0.059524 42 22
i 3 141.666667 0.059524 42 26
i 3 141.72619 0.059524 42 30
i 3 141.785714 0.178571 35 82
i 3 141.785714 0.178571 42 70
i 7 141.785714 0.178571 70 26
i 8 141.791064 0.178571 64 55
i 3 141.964286 0.178571 42 42
i 7 141.964286 0.178571 84 55
i 8 141.978564 0.178571 63 29
i 3 142.142857 0.178571 38 37
i 3 142.142857 0.178571 42 43
i 8 142.157136 0.178571 60 54
i 5 142.321429 0.178571 29 49
i 7 142.321429 0.089286 84 37
i 8 142.335707 0.178571 65 27
i 7 142.410714 0.089286 84 37
i 3 142.5 0.178571 46 28
i 5 142.5 0.357143 34 58
i 8 142.514279 0.178571 65 32
i 7 142.519629 0.178571 84 29
i 8 142.69285 0.089286 63 33
i 8 142.782136 0.075007 63 22
i 1 142.857143 1.071429 65 62 3718 3
i 10 142.857143 4.821429 46 47
i 10 142.857143 4.821429 50 47
i 10 142.857143 4.821429 53 47
i 10 142.857143 4.821429 57 47
i 3 142.857143 0.178571 35 115
i 4 142.857143 1.071429 46 62
i 7 142.857143 0.178571 70 34
i 8 142.857143 0.178571 68 78
i 3 143.035714 0.178571 42 27
i 3 143.214286 0.178571 42 57
i 7 143.228564 0.178571 84 36
i 3 143.392857 0.178571 35 112
i 3 143.392857 0.178571 42 33
i 8 143.407136 0.178571 63 26
i 3 143.571429 0.178571 38 45
i 8 143.585707 0.178571 60 59
i 8 143.764279 0.178571 65 25
i 1 143.928571 0.178571 64 45 3746 3
i 2 143.928571 0.178571 103 127
i 3 143.928571 0.178571 46 45
i 7 143.94285 0.178571 84 27
i 8 143.94285 0.178571 63 35
i 1 144.107143 0.178571 62 53 3753 3
i 8 144.121421 0.089286 63 29
i 8 144.210707 0.089286 63 21
i 1 144.285714 0.892857 60 49 3762 3
i 8 144.299993 0.178571 61 63
i 3 144.464286 0.178571 42 47
i 2 144.642857 0.178571 98 127
i 3 144.642857 0.178571 35 82
i 8 144.648207 0.178571 64 58
i 7 144.657136 0.178571 84 36
i 3 144.821429 0.178571 42 56
i 8 144.835707 0.178571 65 28
i 3 145 0.178571 38 52
i 3 145 0.178571 42 46
i 6 145.0107 0.892857 69 39
i 8 145.014279 0.178571 60 57
i 5 145.178571 0.178571 34 55
i 8 145.19285 0.178571 65 30
i 3 145.357143 0.178571 46 28
i 4 145.357143 0.357143 41 44
i 5 145.357143 0.178571 36 49
i 8 145.362493 0.178571 62 41
i 5 145.535714 0.714286 38 63
i 7 145.549993 0.178571 71 25
i 8 145.549993 0.059524 63 36
i 8 145.609517 0.059524 63 30
i 8 145.669041 0.059524 63 24
i 1 145.714286 0.357143 62 51 3807 3
i 3 145.714286 0.178571 35 115
i 8 145.719636 0.178571 67 73
i 3 145.892857 0.059524 42 58
i 8 145.907136 0.178571 65 30
i 3 145.952381 0.059524 42 42
i 3 146.011905 0.059524 42 26
i 1 146.071429 0.178571 65 55 3823 3
i 4 146.071429 0.892857 46 57
i 7 146.085707 0.178571 84 36
i 1 146.25 0.178571 67 48 3828 3
i 3 146.25 0.178571 35 112
i 8 146.264279 0.178571 63 27
i 1 146.428571 0.714286 65 59 3834 3
i 3 146.428571 0.178571 38 29
i 8 146.44285 0.178571 60 60
i 8 146.621421 0.178571 65 26
i 3 146.785714 0.178571 46 45
i 7 146.799993 0.178571 84 27
i 8 146.799993 0.089286 63 32
i 8 146.889279 0.089286 63 23
i 8 146.978564 0.044643 63 36
i 8 147.023207 0.044643 63 32
i 8 147.06785 0.044643 63 27
i 8 147.112493 0.044643 63 23
i 1 147.142857 0.892857 62 47 3860 3
i 3 147.142857 0.178571 42 24
i 8 147.157136 0.178571 61 59
i 3 147.321429 0.059524 42 22
i 8 147.326779 0.178571 66 40
i 3 147.380952 0.059524 42 26
i 3 147.440476 0.059524 42 30
i 3 147.5 0.178571 35 82
i 3 147.5 0.178571 42 70
i 8 147.50535 0.178571 64 55
i 6 147.5107 0.714286 77 36
i 7 147.514279 0.178571 84 36
i 3 147.678571 0.178571 42 42
i 8 147.69285 0.178571 63 29
i 3 147.857143 0.178571 38 37
i 3 147.857143 0.178571 42 43
i 8 147.871421 0.178571 60 54
i 5 148.035714 0.178571 29 49
i 8 148.049993 0.178571 65 27
i 3 148.214286 0.178571 46 28
i 5 148.214286 0.357143 34 58
i 7 148.228564 0.178571 84 27
i 8 148.228564 0.059524 65 32
i 8 148.288088 0.059524 65 26
i 8 148.347612 0.059524 65 20
i 8 148.407136 0.178571 63 33
i 1 148.571429 0.714286 67 60 3920 3
i 10 148.571429 4.821429 43 47
i 10 148.571429 4.821429 46 47
i 10 148.571429 4.821429 50 47
i 10 148.571429 4.821429 53 47
i 4 148.571429 1.071429 43 64
i 7 148.571429 0.178571 70 37
i 8 148.571429 0.178571 68 78
i 7 149.107143 0.178571 70 62
i 8 149.121421 0.178571 63 26
i 1 149.285714 0.178571 69 49 3930 3
i 7 149.285714 0.178571 84 58
i 8 149.299993 0.178571 60 59
i 1 149.464286 0.178571 70 57 3936 3
i 8 149.478564 0.178571 65 25
i 1 149.642857 0.357143 69 50 3942 3
i 7 149.657136 0.178571 84 29
i 8 149.657136 0.089286 63 35
i 8 149.746421 0.089286 63 25
i 8 149.835707 0.178571 63 29
i 1 150 1.071429 67 61 3952 3
i 8 150.014279 0.178571 61 63
i 7 150.357143 0.178571 70 57
i 8 150.362493 0.178571 64 58
i 7 150.535714 0.178571 84 57
i 8 150.549993 0.178571 65 28
i 8 150.728564 0.178571 60 57
i 8 150.907136 0.059524 65 30
i 8 150.96666 0.059524 65 24
i 8 151.026183 0.059524 65 19
i 4 151.071429 0.357143 38 46
i 5 151.071429 0.178571 31 57
i 8 151.076779 0.178571 62 38
i 7 151.085707 0.178571 84 29
i 5 151.25 0.178571 33 50
i 8 151.264279 0.089286 63 36
i 8 151.353564 0.089286 63 25
i 5 151.428571 0.714286 34 64
i 7 151.428571 0.178571 70 69
i 8 151.433921 0.178571 67 73
i 1 151.607143 0.178571 65 43 3990 3
i 1 151.785714 0.178571 67 52 3995 3
i 4 151.785714 0.892857 43 59
i 7 151.799993 0.178571 84 38
i 1 151.964286 0.178571 69 48 3998 3
i 7 151.964286 0.178571 70 63
i 8 151.978564 0.178571 63 27
i 1 152.142857 1.607143 62 55 4003 3
i 7 152.142857 0.178571 84 38
i 8 152.157136 0.178571 60 60
i 8 152.335707 0.178571 65 26
i 7 152.514279 0.178571 84 29
i 8 152.514279 0.089286 63 32
i 8 152.603564 0.089286 63 23
i 8 152.871421 0.178571 61 59
i 7 153.214286 0.178571 70 26
i 8 153.219636 0.178571 64 55
i 5 153.392857 0.178571 38 51
i 7 153.392857 0.178571 84 55
i 8 153.407136 0.178571 63 29
i 5 153.571429 0.178571 34 54
i 8 153.585707 0.178571 60 54
i 5 153.75 0.535714 31 61
i 7 153.75 0.089286 84 37
i 8 153.764279 0.178571 65 27
i 7 153.839286 0.089286 84 37
i 8 153.94285 0.178571 65 32
i 7 153.9482 0.178571 84 29
i 8 154.121421 0.089286 63 33
i 8 154.210707 0.075007 63 22
i 1 154.285714 0.714286 64 60 4059 3
i 10 154.285714 1.785714 45 40
i 10 154.285714 1.785714 50 40
i 10 154.285714 1.785714 52 40
i 4 154.285714 1.071429 45 62
i 7 154.285714 0.178571 70 35
i 8 154.285714 0.178571 68 78
i 7 154.657136 0.178571 84 38
i 8 154.835707 0.178571 63 26
i 1 155 0.357143 62 45 4070 3
i 8 155.014279 0.178571 60 59
i 8 155.19285 0.178571 65 25
i 1 155.357143 0.357143 64 54 4077 3
i 7 155.371421 0.178571 84 29
i 8 155.371421 0.089286 63 35
i 8 155.460707 0.089286 63 24
i 8 155.549993 0.178571 63 29
i 1 155.714286 0.892857 69 61 4087 3
i 8 155.728564 0.178571 61 63
i 8 156.076779 0.178571 64 58
i 7 156.085707 0.178571 84 38
i 8 156.264279 0.178571 65 28
i 8 156.44285 0.178571 60 57
i 5 156.607143 0.178571 33 56
i 6 156.617843 0.892857 76 39
i 8 156.621421 0.178571 65 30
i 4 156.785714 0.357143 40 44
i 5 156.785714 0.178571 35 50
i 8 156.791064 0.178571 62 38
i 7 156.799993 0.178571 84 29
i 5 156.964286 0.714286 37 63
i 8 156.978564 0.089286 63 36
i 8 157.06785 0.089286 63 24
i 10 157.142857 1.25 45 34
i 10 157.142857 1.25 49 34
i 10 157.142857 1.25 52 34
i 8 157.148207 0.178571 67 73
i 1 157.321429 0.178571 67 43 4125 3
i 1 157.5 0.357143 64 52 4129 3
i 4 157.5 0.892857 45 57
i 7 157.514279 0.178571 84 38
i 1 157.857143 0.357143 62 44 4135 3
i 8 157.871421 0.178571 60 60
i 8 158.049993 0.059524 63 38
i 8 158.109517 0.059524 63 32
i 8 158.169041 0.059524 63 25
i 1 158.214286 1.25 61 51 4144 3
i 7 158.228564 0.178571 84 29
i 8 158.228564 0.178571 63 32
i 8 158.228564 0.089286 65 29
i 8 158.31785 0.089286 65 21
i 8 158.407136 0.178571 60 40
i 8 158.585707 0.178571 61 59
i 8 158.764279 0.059524 63 36
i 8 158.823802 0.059524 63 30
i 8 158.883326 0.059524 63 24
i 8 158.933921 0.178571 64 55
i 7 158.94285 0.178571 84 38
i 8 158.94285 0.089286 65 28
i 8 159.032136 0.089286 65 20
i 7 159.121421 0.178571 71 23
i 8 159.121421 0.178571 60 38
i 6 159.296414 0.357143 73 31
i 8 159.299993 0.178571 60 54
i 5 159.464286 0.178571 40 52
i 8 159.478564 0.059524 63 34
i 8 159.538088 0.059524 63 28
i 8 159.597612 0.059524 63 22
i 5 159.642857 0.357143 33 60
i 7 159.657136 0.178571 71 19
i 7 159.657136 0.178571 84 29
i 8 159.657136 0.089286 65 26
i 8 159.746421 0.089286 65 18
i 8 159.835707 0.178571 60 36
i 10 160 4.821429 50 32
i 10 160 4.821429 52 32
i 10 160 4.821429 57 32
i 3 160 0.178571 35 115
i 8 160 0.178571 68 41
i 3 160.178571 0.178571 42 27
i 3 160.357143 0.178571 42 57
i 1 160.535714 1.607143 62 47 4215 3
i 3 160.535714 0.178571 35 112
i 3 160.535714 0.178571 42 33
i 3 160.714286 0.178571 38 45
i 3 161.071429 0.178571 46 45
i 7 161.433921 0.178571 70 27
i 6 161.439272 1.25 76 33
i 3 161.607143 0.178571 42 47
i 3 161.785714 0.178571 35 82
i 3 161.964286 0.178571 42 56
i 1 162.142857 0.178571 64 36 4234 3
i 3 162.142857 0.178571 38 52
i 3 162.142857 0.178571 42 46
i 1 162.321429 0.178571 65 43 4239 3
i 1 162.5 0.357143 64 37 4243 3
i 3 162.5 0.178571 46 28
i 8 162.50535 0.178571 62 30
i 5 162.678571 0.178571 26 57
i 1 162.857143 0.714286 62 44 4251 3
i 3 162.857143 0.178571 35 115
i 5 162.857143 0.178571 33 51
i 3 163.035714 0.059524 42 58
i 5 163.035714 0.178571 36 56
i 3 163.095238 0.059524 42 42
i 3 163.154762 0.059524 42 26
i 5 163.214286 0.714286 38 65
i 3 163.392857 0.178571 35 112
i 3 163.571429 0.178571 38 29
i 3 163.928571 0.178571 46 45
i 1 164.107143 1.071429 57 37 4273 3
i 3 164.285714 0.178571 42 24
i 8 164.291064 0.178571 66 29
i 3 164.464286 0.059524 42 22
i 6 164.474986 0.892857 74 31
i 3 164.52381 0.059524 42 26
i 3 164.583333 0.059524 42 30
i 3 164.642857 0.178571 35 82
i 3 164.642857 0.178571 42 70
i 7 164.657136 0.178571 71 18
i 3 164.821429 0.178571 42 42
i 3 165 0.178571 38 37
i 3 165 0.178571 42 43
i 5 165.178571 0.178571 33 51
i 3 165.357143 0.178571 46 28
i 5 165.357143 0.357143 26 60
i 3 165.714286 0.178571 35 115
i 5 165.714286 0.178571 26 70
i 3 165.892857 0.178571 42 27
i 5 165.892857 0.178571 38 55
i 3 166.071429 0.178571 42 57
i 5 166.071429 0.178571 36 60
i 3 166.25 0.178571 35 112
i 3 166.25 0.178571 42 33
i 5 166.25 0.178571 38 65
i 3 166.428571 0.178571 38 45
i 5 166.428571 0.178571 41 72
i 5 166.607143 0.178571 40 58
i 3 166.785714 0.178571 46 45
i 5 166.785714 0.178571 38 64
i 5 166.964286 1.25 33 76
i 3 167.321429 0.178571 42 47
i 3 167.5 0.178571 35 82
i 3 167.678571 0.178571 42 56
i 3 167.857143 0.178571 38 52
i 3 167.857143 0.178571 42 46
i 3 168.214286 0.178571 46 28
i 5 168.214286 0.178571 36 56
i 3 168.571429 0.178571 35 115
i 3 168.75 0.059524 42 58
i 5 168.75 1.071429 38 71
i 3 168.809524 0.059524 42 42
i 3 168.869048 0.059524 42 26
i 3 169.107143 0.178571 35 112
i 3 169.285714 0.178571 38 29
i 3 169.642857 0.178571 46 45
i 3 170 0.178571 42 24
i 3 170.178571 0.059524 42 22
i 3 170.238095 0.059524 42 26
i 3 170.297619 0.059524 42 30
i 3 170.357143 0.178571 35 82
i 3 170.357143 0.178571 42 70
i 5 170.357143 0.178571 33 54
i 3 170.535714 0.178571 42 42
i 3 170.714286 0.178571 38 37
i 3 170.714286 0.178571 42 43
i 5 170.714286 0.714286 26 69
i 3 171.071429 0.178571 46 28
i 10 171.428571 4.821429 50 34
i 10 171.428571 4.821429 53 34
i 10 171.428571 4.821429 57 34
i 10 171.428571 4.821429 60 34
i 3 171.428571 0.178571 35 115
i 1 171.607143 1.428571 65 48 4398 3
i 3 171.607143 0.178571 42 27
i 3 171.785714 0.178571 42 57
i 3 171.964286 0.178571 35 112
i 3 171.964286 0.178571 42 33
i 3 172.142857 0.178571 38 45
i 3 172.5 0.178571 46 45
i 8 172.862493 0.178571 62 35
i 1 173.035714 0.178571 64 35 4414 3
i 3 173.035714 0.178571 42 47
i 1 173.214286 0.357143 62 43 4418 3
i 3 173.214286 0.178571 35 82
i 3 173.392857 0.178571 42 56
i 1 173.571429 0.714286 64 38 4424 3
i 3 173.571429 0.178571 38 52
i 3 173.571429 0.178571 42 46
i 3 173.928571 0.178571 46 28
i 5 174.107143 0.178571 26 57
i 3 174.285714 0.178571 35 115
i 5 174.285714 0.178571 33 51
i 3 174.464286 0.059524 42 58
i 5 174.464286 0.178571 36 56
i 3 174.52381 0.059524 42 42
i 3 174.583333 0.059524 42 26
i 5 174.642857 0.714286 38 65
i 3 174.821429 0.178571 35 112
i 1 175 0.178571 65 40 4449 3
i 3 175 0.178571 38 29
i 1 175.178571 0.178571 64 34 4453 3
i 1 175.357143 1.25 62 41 4456 3
i 3 175.357143 0.178571 46 45
i 8 175.362493 0.178571 64 32
i 3 175.714286 0.178571 42 24
i 3 175.892857 0.059524 42 22
i 3 175.952381 0.059524 42 26
i 3 176.011905 0.059524 42 30
i 3 176.071429 0.178571 35 82
i 3 176.071429 0.178571 42 70
i 3 176.25 0.178571 42 42
i 3 176.428571 0.178571 38 37
i 3 176.428571 0.178571 42 43
i 5 176.607143 0.178571 33 51
i 3 176.785714 0.178571 46 28
i 5 176.785714 0.357143 26 60
i 3 177.142857 0.178571 35 115
i 5 177.142857 0.178571 26 69
i 3 177.321429 0.178571 42 27
i 5 177.321429 0.178571 33 54
i 3 177.5 0.178571 42 57
i 5 177.5 0.178571 36 59
i 3 177.678571 0.178571 35 112
i 3 177.678571 0.178571 42 33
i 5 177.678571 0.178571 38 64
i 3 177.857143 0.178571 38 45
i 5 177.857143 0.178571 40 61
i 5 178.035714 0.178571 41 71
i 3 178.214286 0.178571 46 45
i 5 178.214286 0.178571 40 58
i 5 178.392857 1.25 38 75
i 3 178.75 0.178571 42 47
i 3 178.928571 0.178571 35 82
i 3 179.107143 0.178571 42 56
i 3 179.285714 0.178571 38 52
i 3 179.285714 0.178571 42 46
i 3 179.642857 0.178571 46 28
i 5 179.642857 0.178571 36 55
i 3 180 0.178571 35 115
i 3 180.178571 0.059524 42 58
i 5 180.178571 1.071429 33 69
i 3 180.238095 0.059524 42 42
i 3 180.297619 0.059524 42 26
i 6 180.367843 1.428571 69 28
i 3 180.535714 0.178571 35 112
i 3 180.714286 0.178571 38 29
i 3 181.071429 0.178571 46 45
i 3 181.428571 0.178571 42 24
i 3 181.607143 0.059524 42 22
i 3 181.666667 0.059524 42 26
i 3 181.72619 0.059524 42 30
i 3 181.785714 0.178571 35 82
i 3 181.785714 0.178571 42 70
i 5 181.785714 0.178571 36 54
i 3 181.964286 0.178571 42 42
i 3 182.142857 0.178571 38 37
i 3 182.142857 0.178571 42 43
i 5 182.142857 0.714286 26 68
i 3 182.5 0.178571 46 22
i 3 182.678571 0.178571 42 24
i 10 182.857143 4.821429 46 33
i 10 182.857143 4.821429 50 33
i 10 182.857143 4.821429 53 33
i 10 182.857143 4.821429 57 33
i 3 182.857143 0.178571 35 115
i 5 182.857143 0.178571 34 67
i 8 182.857143 0.178571 68 41
i 3 183.035714 0.178571 42 27
i 5 183.035714 0.178571 29 53
i 3 183.214286 0.178571 42 57
i 5 183.214286 0.178571 34 57
i 3 183.392857 0.178571 35 112
i 3 183.392857 0.178571 42 33
i 5 183.392857 0.178571 36 62
i 3 183.571429 0.178571 38 45
i 5 183.571429 0.178571 38 68
i 5 183.75 0.178571 41 57
i 3 183.928571 0.178571 46 45
i 5 183.928571 0.178571 38 62
i 5 184.107143 1.25 34 73
i 7 184.291064 0.178571 70 27
i 3 184.464286 0.178571 42 47
i 3 184.642857 0.178571 35 82
i 3 184.821429 0.178571 42 56
i 3 185 0.178571 38 52
i 3 185 0.178571 42 46
i 3 185.357143 0.178571 46 28
i 5 185.357143 0.178571 36 54
i 8 185.362493 0.178571 62 30
i 3 185.714286 0.178571 35 115
i 3 185.892857 0.059524 42 58
i 5 185.892857 1.071429 29 67
i 3 185.952381 0.059524 42 42
i 3 186.011905 0.059524 42 26
i 3 186.25 0.178571 35 112
i 3 186.428571 0.178571 38 29
i 3 186.785714 0.178571 46 45
i 3 187.142857 0.178571 42 24
i 8 187.148207 0.178571 66 29
i 3 187.321429 0.059524 42 22
i 3 187.380952 0.059524 42 26
i 3 187.440476 0.059524 42 30
i 3 187.5 0.178571 35 82
i 3 187.5 0.178571 42 70
i 5 187.5 0.178571 33 52
i 7 187.514279 0.178571 71 18
i 3 187.678571 0.178571 42 42
i 3 187.857143 0.178571 38 37
i 3 187.857143 0.178571 42 43
i 5 187.857143 0.714286 34 65
i 3 188.214286 0.178571 46 28
i 3 188.571429 0.178571 35 115
i 5 188.571429 0.178571 34 67
i 3 188.75 0.178571 42 27
i 5 188.75 0.178571 29 53
i 3 188.928571 0.178571 42 57
i 5 188.928571 0.178571 34 57
i 3 189.107143 0.178571 35 112
i 3 189.107143 0.178571 42 33
i 5 189.107143 0.178571 36 62
i 3 189.285714 0.178571 38 45
i 5 189.285714 0.178571 38 68
i 5 189.464286 0.178571 41 57
i 3 189.642857 0.178571 46 45
i 5 189.642857 0.178571 38 62
i 5 189.821429 1.25 34 73
i 3 190.178571 0.178571 42 47
i 3 190.357143 0.178571 35 82
i 3 190.535714 0.178571 42 56
i 3 190.714286 0.178571 38 52
i 3 190.714286 0.178571 42 46
i 3 191.071429 0.178571 46 28
i 5 191.071429 0.178571 36 54
i 3 191.428571 0.178571 35 115
i 3 191.607143 0.059524 42 58
i 5 191.607143 1.071429 29 67
i 3 191.666667 0.059524 42 42
i 3 191.72619 0.059524 42 26
i 3 191.964286 0.178571 35 112
i 3 192.142857 0.178571 38 29
i 3 192.5 0.178571 46 45
i 3 192.857143 0.178571 42 24
i 3 193.035714 0.059524 42 22
i 3 193.095238 0.059524 42 26
i 3 193.154762 0.059524 42 30
i 3 193.214286 0.178571 35 82
i 3 193.214286 0.178571 42 70
i 5 193.214286 0.178571 33 52
i 3 193.392857 0.178571 42 42
i 3 193.571429 0.178571 38 37
i 3 193.571429 0.178571 42 43
i 5 193.571429 0.714286 34 65
i 3 193.928571 0.178571 46 28
i 10 194.285714 4.821429 50 32
i 10 194.285714 4.821429 52 32
i 10 194.285714 4.821429 57 32
i 3 194.285714 0.178571 35 115
i 4 194.285714 2.5 38 50
i 3 194.464286 0.178571 42 27
i 3 194.642857 0.178571 42 57
i 1 194.821429 1.607143 62 47 4774 3
i 3 194.821429 0.178571 35 112
i 3 194.821429 0.178571 42 33
i 3 195 0.178571 38 45
i 3 195.357143 0.178571 46 45
i 8 195.719636 0.178571 62 35
i 3 195.892857 0.178571 42 47
i 3 196.071429 0.178571 35 82
i 3 196.25 0.178571 42 56
i 1 196.428571 0.178571 64 36 4792 3
i 3 196.428571 0.178571 38 52
i 3 196.428571 0.178571 42 46
i 6 196.439272 1.607143 76 25
i 1 196.607143 0.178571 65 43 4798 3
i 1 196.785714 0.357143 64 37 4803 3
i 3 196.785714 0.178571 46 28
i 5 196.964286 0.178571 26 57
i 1 197.142857 0.714286 62 44 4808 3
i 3 197.142857 0.178571 35 115
i 5 197.142857 0.178571 33 51
i 3 197.321429 0.059524 42 58
i 5 197.321429 0.178571 36 56
i 3 197.380952 0.059524 42 42
i 3 197.440476 0.059524 42 26
i 5 197.5 0.714286 38 65
i 3 197.678571 0.178571 35 112
i 3 197.857143 0.178571 38 29
i 3 198.214286 0.178571 46 45
i 8 198.219636 0.178571 64 32
i 1 198.392857 1.071429 57 37 4832 3
i 3 198.571429 0.178571 42 24
i 3 198.75 0.059524 42 22
i 3 198.809524 0.059524 42 26
i 3 198.869048 0.059524 42 30
i 3 198.928571 0.178571 35 82
i 3 198.928571 0.178571 42 70
i 3 199.107143 0.178571 42 42
i 3 199.285714 0.178571 38 37
i 3 199.285714 0.178571 42 43
i 5 199.464286 0.178571 33 51
i 3 199.642857 0.178571 46 28
i 5 199.642857 0.357143 26 60
i 3 200 0.178571 35 115
i 5 200 0.178571 26 69
i 8 200 0.178571 67 56
i 3 200.178571 0.178571 42 27
i 5 200.178571 0.178571 33 54
i 3 200.357143 0.178571 42 57
i 5 200.357143 0.178571 36 59
i 3 200.535714 0.178571 35 112
i 3 200.535714 0.178571 42 33
i 5 200.535714 0.178571 38 64
i 3 200.714286 0.178571 38 45
i 5 200.714286 0.178571 40 61
i 5 200.892857 0.178571 41 71
i 3 201.071429 0.178571 46 45
i 5 201.071429 0.178571 40 58
i 7 201.085707 0.178571 84 21
i 5 201.25 1.25 38 75
i 8 201.44285 0.178571 60 43
i 3 201.607143 0.178571 42 47
i 3 201.785714 0.178571 35 82
i 3 201.964286 0.178571 42 56
i 3 202.142857 0.178571 38 52
i 3 202.142857 0.178571 42 46
i 3 202.5 0.178571 46 28
i 5 202.5 0.178571 36 55
i 7 202.514279 0.178571 84 21
i 8 202.514279 0.089286 63 26
i 8 202.603564 0.089286 63 20
i 8 202.69285 0.178571 65 23
i 3 202.857143 0.178571 35 115
i 3 203.035714 0.059524 42 58
i 5 203.035714 1.071429 33 69
i 3 203.095238 0.059524 42 42
i 3 203.154762 0.059524 42 26
i 8 203.219636 0.178571 64 44
i 3 203.392857 0.178571 35 112
i 3 203.571429 0.178571 38 29
i 3 203.928571 0.178571 46 45
i 7 203.94285 0.178571 84 21
i 3 204.285714 0.178571 42 24
i 8 204.299993 0.178571 60 40
i 3 204.464286 0.059524 42 22
i 3 204.52381 0.059524 42 26
i 3 204.583333 0.059524 42 30
i 3 204.642857 0.178571 35 82
i 3 204.642857 0.178571 42 70
i 5 204.642857 0.178571 36 54
i 3 204.821429 0.178571 42 42
i 3 205 0.178571 38 37
i 3 205 0.178571 42 43
i 5 205 0.714286 26 68
i 8 205.014279 0.089286 63 27
i 8 205.103564 0.089286 63 20
i 3 205.357143 0.178571 46 28
i 7 205.371421 0.178571 84 21
i 8 205.371421 0.178571 65 23
i 1 205.714286 0.714286 62 65 4979 3
i 10 205.714286 4.821429 50 48
i 10 205.714286 4.821429 53 48
i 10 205.714286 4.821429 57 48
i 10 205.714286 4.821429 60 48
i 4 205.714286 1.071429 38 68
i 7 205.714286 0.178571 70 37
i 8 205.714286 0.178571 68 78
i 7 206.25 0.178571 70 62
i 8 206.264279 0.178571 63 26
i 1 206.428571 0.178571 64 49 4988 3
i 7 206.428571 0.178571 84 58
i 8 206.44285 0.178571 60 59
i 1 206.607143 0.178571 65 57 4994 3
i 8 206.621421 0.178571 65 25
i 1 206.785714 0.357143 67 53 5000 3
i 7 206.799993 0.178571 84 29
i 8 206.799993 0.089286 63 35
i 8 206.889279 0.089286 63 25
i 8 206.978564 0.178571 63 29
i 1 207.142857 1.25 69 66 5010 3
i 8 207.157136 0.178571 61 63
i 7 207.5 0.178571 70 57
i 8 207.50535 0.178571 64 58
i 7 207.678571 0.178571 84 57
i 8 207.69285 0.178571 65 28
i 8 207.871421 0.178571 60 57
i 8 208.049993 0.059524 65 30
i 8 208.109517 0.059524 65 24
i 8 208.169041 0.059524 65 19
i 4 208.214286 0.357143 45 50
i 8 208.219636 0.178571 62 38
i 7 208.228564 0.178571 84 29
i 5 208.392857 0.178571 26 57
i 8 208.407136 0.089286 63 36
i 8 208.496421 0.089286 63 25
i 5 208.571429 0.178571 33 51
i 7 208.571429 0.178571 70 69
i 8 208.576779 0.178571 67 73
i 5 208.75 0.178571 36 56
i 1 208.928571 0.357143 67 50 5051 3
i 4 208.928571 0.892857 38 63
i 5 208.928571 0.714286 38 65
i 7 208.94285 0.178571 84 38
i 7 209.107143 0.178571 70 63
i 8 209.121421 0.178571 63 27
i 1 209.285714 0.178571 65 51 5059 3
i 7 209.285714 0.178571 84 38
i 8 209.299993 0.178571 60 60
i 1 209.464286 0.178571 64 44 5065 3
i 8 209.478564 0.178571 65 26
i 1 209.642857 1.25 62 55 5070 3
i 7 209.657136 0.178571 84 29
i 8 209.657136 0.089286 63 32
i 8 209.746421 0.089286 63 23
i 8 210.014279 0.178571 61 59
i 7 210.357143 0.178571 70 26
i 8 210.362493 0.178571 64 55
i 7 210.535714 0.178571 84 55
i 8 210.549993 0.178571 63 29
i 8 210.728564 0.178571 60 54
i 5 210.892857 0.178571 33 51
i 7 210.892857 0.089286 84 37
i 8 210.907136 0.178571 65 27
i 7 210.982143 0.089286 84 37
i 5 211.071429 0.357143 26 60
i 8 211.085707 0.178571 65 32
i 7 211.091057 0.178571 84 29
i 8 211.264279 0.089286 63 33
i 8 211.353564 0.075007 63 22
i 1 211.428571 0.357143 62 63 5118 3
i 10 211.428571 4.821429 50 48
i 10 211.428571 4.821429 53 48
i 10 211.428571 4.821429 57 48
i 10 211.428571 4.821429 60 48
i 4 211.428571 1.071429 38 68
i 7 211.428571 0.178571 70 34
i 8 211.428571 0.178571 68 78
i 1 211.785714 0.178571 64 48 5126 3
i 2 211.785714 0.178571 98 127
i 7 211.799993 0.178571 84 36
i 1 211.964286 0.178571 65 56 5130 3
i 8 211.978564 0.178571 63 26
i 1 212.142857 1.071429 69 67 5135 3
i 8 212.157136 0.178571 60 59
i 8 212.335707 0.178571 65 25
i 7 212.514279 0.178571 84 27
i 8 212.514279 0.178571 63 35
i 8 212.69285 0.089286 63 29
i 8 212.782136 0.089286 63 21
i 8 212.871421 0.178571 61 63
i 1 213.214286 0.357143 67 53 5153 3
i 8 213.219636 0.178571 64 58
i 7 213.228564 0.178571 84 36
i 8 213.407136 0.178571 65 28
i 1 213.571429 0.535714 65 49 5160 3
i 8 213.585707 0.178571 60 57
i 8 213.764279 0.178571 65 30
i 4 213.928571 0.357143 45 50
i 8 213.933921 0.178571 62 41
i 6 213.939272 0.892857 74 43
i 5 214.107143 0.178571 26 57
i 7 214.121421 0.178571 71 25
i 8 214.121421 0.059524 63 36
i 8 214.180945 0.059524 63 30
i 8 214.240469 0.059524 63 24
i 5 214.285714 0.178571 33 51
i 8 214.291064 0.178571 67 73
i 5 214.464286 0.178571 36 56
i 8 214.478564 0.178571 65 30
i 1 214.642857 0.357143 69 62 5189 3
i 4 214.642857 0.892857 38 63
i 5 214.642857 0.714286 38 65
i 7 214.657136 0.178571 84 36
i 8 214.835707 0.178571 63 27
i 1 215 0.178571 67 48 5198 3
i 8 215.014279 0.178571 60 60
i 1 215.178571 0.178571 65 55 5202 3
i 8 215.19285 0.178571 65 26
i 1 215.357143 0.357143 64 45 5206 3
i 7 215.371421 0.178571 84 27
i 8 215.371421 0.089286 63 32
i 8 215.460707 0.089286 63 23
i 8 215.549993 0.044643 63 36
i 8 215.594636 0.044643 63 32
i 8 215.639279 0.044643 63 27
i 8 215.683921 0.044643 63 23
i 1 215.714286 0.892857 62 57 5224 3
i 8 215.728564 0.178571 61 59
i 8 215.898207 0.178571 66 40
i 8 216.076779 0.178571 64 55
i 7 216.085707 0.178571 84 36
i 8 216.264279 0.178571 63 29
i 6 216.439272 0.535714 76 33
i 8 216.44285 0.178571 60 54
i 5 216.607143 0.178571 33 51
i 8 216.621421 0.178571 65 27
i 5 216.785714 0.357143 26 60
i 7 216.799993 0.178571 84 27
i 8 216.799993 0.059524 65 32
i 8 216.859517 0.059524 65 26
i 8 216.919041 0.059524 65 20
i 8 216.978564 0.178571 63 33
i 10 217.142857 4.821429 50 48
i 10 217.142857 4.821429 53 48
i 10 217.142857 4.821429 57 48
i 10 217.142857 4.821429 60 48
i 3 217.142857 0.178571 35 115
i 4 217.142857 1.071429 38 68
i 5 217.142857 0.178571 26 69
i 7 217.142857 0.178571 70 37
i 8 217.142857 0.178571 68 78
i 3 217.321429 0.178571 42 27
i 5 217.321429 0.178571 33 54
i 3 217.5 0.178571 42 57
i 5 217.5 0.178571 36 59
i 3 217.678571 0.178571 35 112
i 3 217.678571 0.178571 42 33
i 5 217.678571 0.178571 38 64
i 7 217.678571 0.178571 70 62
i 8 217.69285 0.178571 63 26
i 3 217.857143 0.178571 38 45
i 5 217.857143 0.178571 40 61
i 7 217.857143 0.178571 84 58
i 8 217.871421 0.178571 60 59
i 5 218.035714 0.178571 41 71
i 8 218.049993 0.178571 65 25
i 3 218.214286 0.178571 46 45
i 5 218.214286 0.178571 40 58
i 7 218.228564 0.178571 84 29
i 8 218.228564 0.089286 63 35
i 8 218.31785 0.089286 63 25
i 5 218.392857 1.25 38 75
i 8 218.407136 0.178571 63 29
i 8 218.585707 0.178571 61 63
i 3 218.75 0.178571 42 47
i 3 218.928571 0.178571 35 82
i 7 218.928571 0.178571 70 57
i 8 218.933921 0.178571 64 58
i 3 219.107143 0.178571 42 56
i 7 219.107143 0.178571 84 57
i 8 219.121421 0.178571 65 28
i 3 219.285714 0.178571 38 52
i 3 219.285714 0.178571 42 46
i 8 219.299993 0.178571 60 57
i 8 219.478564 0.059524 65 30
i 8 219.538088 0.059524 65 24
i 8 219.597612 0.059524 65 19
i 3 219.642857 0.178571 46 28
i 4 219.642857 0.357143 45 50
i 5 219.642857 0.178571 36 55
i 8 219.648207 0.178571 62 38
i 7 219.657136 0.178571 84 29
i 8 219.835707 0.089286 63 36
i 8 219.924993 0.089286 63 25
i 3 220 0.178571 35 115
i 7 220 0.178571 70 69
i 8 220.00535 0.178571 67 73
i 3 220.178571 0.059524 42 58
i 5 220.178571 1.071429 33 69
i 3 220.238095 0.059524 42 42
i 3 220.297619 0.059524 42 26
i 4 220.357143 0.892857 38 63
i 7 220.371421 0.178571 84 38
i 3 220.535714 0.178571 35 112
i 7 220.535714 0.178571 70 63
i 8 220.549993 0.178571 63 27
i 3 220.714286 0.178571 38 29
i 7 220.714286 0.178571 84 38
i 8 220.728564 0.178571 60 60
i 8 220.907136 0.178571 65 26
i 3 221.071429 0.178571 46 45
i 7 221.085707 0.178571 84 29
i 8 221.085707 0.089286 63 32
i 8 221.174993 0.089286 63 23
i 3 221.428571 0.178571 42 24
i 8 221.44285 0.178571 61 59
i 3 221.607143 0.059524 42 22
i 3 221.666667 0.059524 42 26
i 3 221.72619 0.059524 42 30
i 3 221.785714 0.178571 35 82
i 3 221.785714 0.178571 42 70
i 5 221.785714 0.178571 36 54
i 7 221.785714 0.178571 70 26
i 8 221.791064 0.178571 64 55
i 3 221.964286 0.178571 42 42
i 7 221.964286 0.178571 84 55
i 8 221.978564 0.178571 63 29
i 3 222.142857 0.178571 38 37
i 3 222.142857 0.178571 42 43
i 5 222.142857 0.714286 26 68
i 8 222.157136 0.178571 60 54
i 7 222.321429 0.089286 84 37
i 8 222.335707 0.178571 65 27
i 7 222.410714 0.089286 84 37
i 3 222.5 0.178571 46 28
i 8 222.514279 0.178571 65 32
i 7 222.519629 0.178571 84 29
i 8 222.69285 0.089286 63 33
i 8 222.782136 0.075007 63 22
i 10 222.857143 4.821429 50 48
i 10 222.857143 4.821429 53 48
i 10 222.857143 4.821429 57 48
i 10 222.857143 4.821429 60 48
i 3 222.857143 0.178571 35 115
i 4 222.857143 1.071429 38 68
i 7 222.857143 0.178571 70 35
i 8 222.857143 0.178571 68 78
i 3 223.035714 0.178571 42 27
i 3 223.214286 0.178571 42 57
i 7 223.228564 0.178571 84 38
i 1 223.392857 1.607143 62 47 5470 3
i 3 223.392857 0.178571 35 112
i 3 223.392857 0.178571 42 33
i 8 223.407136 0.178571 63 26
i 3 223.571429 0.178571 38 45
i 8 223.585707 0.178571 60 59
i 8 223.764279 0.178571 65 25
i 3 223.928571 0.178571 46 45
i 7 223.94285 0.178571 84 29
i 8 223.94285 0.089286 63 35
i 8 224.032136 0.089286 63 24
i 8 224.121421 0.178571 63 29
i 6 224.296414 1.25 76 33
i 8 224.299993 0.178571 61 63
i 3 224.464286 0.178571 42 47
i 3 224.642857 0.178571 35 82
i 8 224.648207 0.178571 64 58
i 7 224.657136 0.178571 84 38
i 3 224.821429 0.178571 42 56
i 8 224.835707 0.178571 65 28
i 1 225 0.178571 64 36 5510 3
i 3 225 0.178571 38 52
i 3 225 0.178571 42 46
i 8 225.014279 0.178571 60 57
i 1 225.178571 0.178571 65 43 5517 3
i 8 225.19285 0.178571 65 30
i 1 225.357143 0.357143 64 37 5524 3
i 3 225.357143 0.178571 46 28
i 4 225.357143 0.357143 45 50
i 8 225.362493 0.178571 62 38
i 7 225.371421 0.178571 84 29
i 5 225.535714 0.178571 26 57
i 8 225.549993 0.089286 63 36
i 8 225.639279 0.089286 63 24
i 1 225.714286 0.714286 62 44 5539 3
i 3 225.714286 0.178571 35 115
i 5 225.714286 0.178571 33 51
i 8 225.719636 0.178571 67 73
i 3 225.892857 0.059524 42 58
i 5 225.892857 0.178571 36 56
i 3 225.952381 0.059524 42 42
i 3 226.011905 0.059524 42 26
i 4 226.071429 0.892857 38 63
i 5 226.071429 0.714286 38 65
i 7 226.085707 0.178571 84 38
i 3 226.25 0.178571 35 112
i 3 226.428571 0.178571 38 29
i 8 226.44285 0.178571 60 60
i 8 226.621421 0.059524 63 38
i 8 226.680945 0.059524 63 32
i 8 226.740469 0.059524 63 25
i 3 226.785714 0.178571 46 45
i 7 226.799993 0.178571 84 29
i 8 226.799993 0.178571 63 32
i 8 226.799993 0.089286 65 29
i 8 226.889279 0.089286 65 21
i 1 226.964286 1.071429 57 37 5581 3
i 8 226.978564 0.178571 60 40
i 3 227.142857 0.178571 42 24
i 8 227.157136 0.178571 61 59
i 3 227.321429 0.059524 42 22
i 6 227.332129 0.892857 74 31
i 8 227.335707 0.059524 63 36
i 3 227.380952 0.059524 42 26
i 8 227.395231 0.059524 63 30
i 3 227.440476 0.059524 42 30
i 8 227.454755 0.059524 63 24
i 3 227.5 0.178571 35 82
i 3 227.5 0.178571 42 70
i 8 227.50535 0.178571 64 55
i 7 227.514279 0.178571 84 38
i 8 227.514279 0.089286 65 28
i 8 227.603564 0.089286 65 20
i 3 227.678571 0.178571 42 42
i 7 227.69285 0.178571 71 23
i 8 227.69285 0.178571 60 38
i 3 227.857143 0.178571 38 37
i 3 227.857143 0.178571 42 43
i 8 227.871421 0.178571 60 54
i 5 228.035714 0.178571 33 51
i 8 228.049993 0.059524 63 34
i 8 228.109517 0.059524 63 28
i 8 228.169041 0.059524 63 22
i 3 228.214286 0.178571 46 28
i 5 228.214286 0.357143 26 60
i 7 228.228564 0.178571 71 19
i 7 228.228564 0.178571 84 29
i 8 228.228564 0.089286 65 26
i 8 228.31785 0.089286 65 18
i 8 228.407136 0.178571 60 36
i 1 228.571429 1.071429 65 62 5660 3
i 10 228.571429 4.821429 46 47
i 10 228.571429 4.821429 50 47
i 10 228.571429 4.821429 53 47
i 10 228.571429 4.821429 57 47
i 3 228.571429 0.178571 35 115
i 4 228.571429 1.071429 46 62
i 7 228.571429 0.178571 70 34
i 8 228.571429 0.178571 68 78
i 3 228.75 0.178571 42 27
i 3 228.928571 0.178571 42 57
i 7 228.94285 0.178571 84 36
i 3 229.107143 0.178571 35 112
i 3 229.107143 0.178571 42 33
i 8 229.121421 0.178571 63 26
i 3 229.285714 0.178571 38 45
i 8 229.299993 0.178571 60 59
i 8 229.478564 0.178571 65 25
i 1 229.642857 0.178571 64 45 5688 3
i 3 229.642857 0.178571 46 45
i 7 229.657136 0.178571 84 27
i 8 229.657136 0.178571 63 35
i 1 229.821429 0.178571 62 53 5694 3
i 8 229.835707 0.089286 63 29
i 8 229.924993 0.089286 63 21
i 1 230 0.892857 60 49 5702 3
i 8 230.014279 0.178571 61 63
i 3 230.178571 0.178571 42 47
i 3 230.357143 0.178571 35 82
i 8 230.362493 0.178571 64 58
i 7 230.371421 0.178571 84 36
i 3 230.535714 0.178571 42 56
i 8 230.549993 0.178571 65 28
i 3 230.714286 0.178571 38 52
i 3 230.714286 0.178571 42 46
i 8 230.728564 0.178571 60 57
i 5 230.892857 0.178571 34 55
i 8 230.907136 0.178571 65 30
i 3 231.071429 0.178571 46 28
i 4 231.071429 0.357143 41 44
i 5 231.071429 0.178571 36 49
i 8 231.076779 0.178571 62 41
i 5 231.25 0.714286 38 63
i 7 231.264279 0.178571 71 25
i 8 231.264279 0.059524 63 36
i 8 231.323802 0.059524 63 30
i 8 231.383326 0.059524 63 24
i 1 231.428571 0.357143 62 51 5744 3
i 3 231.428571 0.178571 35 115
i 8 231.433921 0.178571 67 73
i 3 231.607143 0.059524 42 58
i 8 231.621421 0.178571 65 30
i 3 231.666667 0.059524 42 42
i 3 231.72619 0.059524 42 26
i 1 231.785714 0.178571 65 55 5759 3
i 4 231.785714 0.892857 46 57
i 7 231.799993 0.178571 84 36
i 1 231.964286 0.178571 67 48 5764 3
i 3 231.964286 0.178571 35 112
i 8 231.978564 0.178571 63 27
i 1 232.142857 0.714286 65 59 5770 3
i 3 232.142857 0.178571 38 29
i 8 232.157136 0.178571 60 60
i 8 232.335707 0.178571 65 26
i 3 232.5 0.178571 46 45
i 7 232.514279 0.178571 84 27
i 8 232.514279 0.089286 63 32
i 8 232.603564 0.089286 63 23
i 8 232.69285 0.044643 63 36
i 8 232.737493 0.044643 63 32
i 8 232.782136 0.044643 63 27
i 8 232.826779 0.044643 63 23
i 1 232.857143 0.892857 62 47 5796 3
i 3 232.857143 0.178571 42 24
i 8 232.871421 0.178571 61 59
i 3 233.035714 0.059524 42 22
i 8 233.041064 0.178571 66 40
i 3 233.095238 0.059524 42 26
i 3 233.154762 0.059524 42 30
i 3 233.214286 0.178571 35 82
i 3 233.214286 0.178571 42 70
i 8 233.219636 0.178571 64 55
i 7 233.228564 0.178571 84 36
i 3 233.392857 0.178571 42 42
i 8 233.407136 0.178571 63 29
i 3 233.571429 0.178571 38 37
i 3 233.571429 0.178571 42 43
i 8 233.585707 0.178571 60 54
i 5 233.75 0.178571 29 49
i 8 233.764279 0.178571 65 27
i 3 233.928571 0.178571 46 28
i 5 233.928571 0.357143 34 58
i 7 233.94285 0.178571 84 27
i 8 233.94285 0.059524 65 32
i 8 234.002374 0.059524 65 26
i 8 234.061898 0.059524 65 20
i 8 234.121421 0.178571 63 33
i 10 234.285714 4.821429 46 47
i 10 234.285714 4.821429 50 47
i 10 234.285714 4.821429 53 47
i 10 234.285714 4.821429 57 47
i 3 234.285714 0.178571 35 115
i 4 234.285714 1.071429 46 62
i 5 234.285714 0.178571 34 67
i 7 234.285714 0.178571 70 37
i 8 234.285714 0.178571 68 78
i 3 234.464286 0.178571 42 27
i 5 234.464286 0.178571 29 53
i 2 234.642857 0.178571 98 127
i 3 234.642857 0.178571 42 57
i 5 234.642857 0.178571 34 57
i 3 234.821429 0.178571 35 112
i 3 234.821429 0.178571 42 33
i 5 234.821429 0.178571 36 62
i 7 234.821429 0.178571 70 62
i 8 234.835707 0.178571 63 26
i 3 235 0.178571 38 45
i 5 235 0.178571 38 68
i 7 235 0.178571 84 58
i 8 235.014279 0.178571 60 59
i 5 235.178571 0.178571 41 57
i 8 235.19285 0.178571 65 25
i 3 235.357143 0.178571 46 45
i 5 235.357143 0.178571 38 62
i 7 235.371421 0.178571 84 29
i 8 235.371421 0.089286 63 35
i 8 235.460707 0.089286 63 25
i 5 235.535714 1.25 34 73
i 8 235.549993 0.178571 63 29
i 8 235.728564 0.178571 61 63
i 3 235.892857 0.178571 42 47
i 3 236.071429 0.178571 35 82
i 7 236.071429 0.178571 70 57
i 8 236.076779 0.178571 64 58
i 3 236.25 0.178571 42 56
i 7 236.25 0.178571 84 57
i 8 236.264279 0.178571 65 28
i 3 236.428571 0.178571 38 52
i 3 236.428571 0.178571 42 38
i 6 236.439272 0.892857 69 39
i 8 236.44285 0.178571 60 57
i 8 236.621421 0.059524 65 30
i 8 236.680945 0.059524 65 24
i 8 236.740469 0.059524 65 19
i 3 236.785714 0.178571 42 31
i 4 236.785714 0.357143 41 44
i 5 236.785714 0.178571 36 54
i 8 236.791064 0.178571 62 38
i 7 236.799993 0.178571 84 29
i 8 236.978564 0.089286 63 36
i 8 237.06785 0.089286 63 25
i 3 237.142857 0.178571 35 115
i 7 237.142857 0.178571 70 69
i 8 237.148207 0.178571 67 73
i 3 237.321429 0.059524 42 58
i 5 237.321429 1.071429 29 67
i 3 237.380952 0.059524 42 42
i 3 237.440476 0.059524 42 26
i 4 237.5 0.892857 46 57
i 7 237.514279 0.178571 84 38
i 3 237.678571 0.178571 35 112
i 7 237.678571 0.178571 70 63
i 8 237.69285 0.178571 63 27
i 3 237.857143 0.178571 38 29
i 7 237.857143 0.178571 84 38
i 8 237.871421 0.178571 60 60
i 8 238.049993 0.178571 65 26
i 3 238.214286 0.178571 46 45
i 7 238.228564 0.178571 84 29
i 8 238.228564 0.089286 63 32
i 8 238.31785 0.089286 63 23
i 3 238.571429 0.178571 42 24
i 8 238.585707 0.178571 61 59
i 3 238.75 0.059524 42 22
i 3 238.809524 0.059524 42 26
i 3 238.869048 0.059524 42 30
i 3 238.928571 0.178571 35 82
i 3 238.928571 0.178571 42 70
i 5 238.928571 0.178571 33 52
i 7 238.928571 0.178571 70 26
i 8 238.933921 0.178571 64 55
i 6 238.939272 0.714286 77 36
i 3 239.107143 0.178571 42 42
i 7 239.107143 0.178571 84 55
i 8 239.121421 0.178571 63 29
i 3 239.285714 0.178571 38 37
i 3 239.285714 0.178571 42 43
i 5 239.285714 0.714286 34 65
i 8 239.299993 0.178571 60 54
i 7 239.464286 0.089286 84 37
i 8 239.478564 0.178571 65 27
i 7 239.553571 0.089286 84 37
i 3 239.642857 0.178571 46 28
i 8 239.657136 0.178571 65 32
i 7 239.662486 0.178571 84 29
i 8 239.835707 0.089286 63 33
i 8 239.924993 0.075007 63 22
i 1 240 0.714286 67 60 6054 3
i 10 240 4.821429 43 47
i 10 240 4.821429 46 47
i 10 240 4.821429 50 47
i 10 240 4.821429 53 47
i 3 240 0.178571 35 115
i 4 240 1.071429 43 64
i 7 240 0.178571 70 34
i 8 240 0.178571 68 78
i 3 240.178571 0.178571 42 27
i 3 240.357143 0.178571 42 57
i 7 240.371421 0.178571 84 36
i 3 240.535714 0.178571 35 112
i 3 240.535714 0.178571 42 33
i 8 240.549993 0.178571 63 26
i 1 240.714286 0.178571 69 49 6073 3
i 3 240.714286 0.178571 38 45
i 8 240.728564 0.178571 60 59
i 1 240.892857 0.178571 70 57 6080 3
i 8 240.907136 0.178571 65 25
i 1 241.071429 0.357143 69 50 6086 3
i 3 241.071429 0.178571 46 45
i 7 241.085707 0.178571 84 27
i 8 241.085707 0.178571 63 35
i 8 241.264279 0.089286 63 29
i 8 241.353564 0.089286 63 21
i 1 241.428571 1.071429 67 61 6098 3
i 8 241.44285 0.178571 61 63
i 3 241.607143 0.178571 42 47
i 3 241.785714 0.178571 35 82
i 8 241.791064 0.178571 64 58
i 7 241.799993 0.178571 84 36
i 3 241.964286 0.178571 42 56
i 8 241.978564 0.178571 65 28
i 3 242.142857 0.178571 38 52
i 3 242.142857 0.178571 42 46
i 6 242.153557 1.071429 74 40
i 8 242.157136 0.178571 60 57
i 8 242.335707 0.178571 65 30
i 3 242.5 0.178571 46 28
i 4 242.5 0.357143 38 46
i 5 242.5 0.178571 31 57
i 8 242.50535 0.178571 62 41
i 5 242.678571 0.178571 33 50
i 7 242.69285 0.178571 71 25
i 8 242.69285 0.059524 63 36
i 8 242.752374 0.059524 63 30
i 8 242.811898 0.059524 63 24
i 3 242.857143 0.178571 35 115
i 5 242.857143 0.714286 34 64
i 8 242.862493 0.178571 67 73
i 1 243.035714 0.178571 65 43 6145 3
i 3 243.035714 0.059524 42 58
i 8 243.049993 0.178571 65 30
i 3 243.095238 0.059524 42 42
i 3 243.154762 0.059524 42 26
i 1 243.214286 0.178571 67 52 6156 3
i 4 243.214286 0.892857 43 59
i 7 243.228564 0.178571 84 36
i 1 243.392857 0.178571 69 48 6162 3
i 3 243.392857 0.178571 35 112
i 8 243.407136 0.178571 63 27
i 1 243.571429 1.607143 62 55 6167 3
i 3 243.571429 0.178571 38 29
i 8 243.585707 0.178571 60 60
i 8 243.764279 0.178571 65 26
i 3 243.928571 0.178571 46 45
i 7 243.94285 0.178571 84 27
i 8 243.94285 0.089286 63 32
i 8 244.032136 0.089286 63 23
i 8 244.121421 0.044643 63 36
i 8 244.166064 0.044643 63 32
i 8 244.210707 0.044643 63 27
i 8 244.25535 0.044643 63 23
i 3 244.285714 0.178571 42 24
i 8 244.299993 0.178571 61 59
i 3 244.464286 0.059524 42 22
i 8 244.469636 0.178571 66 40
i 3 244.52381 0.059524 42 26
i 3 244.583333 0.059524 42 30
i 3 244.642857 0.178571 35 82
i 3 244.642857 0.178571 42 70
i 8 244.648207 0.178571 64 55
i 7 244.657136 0.178571 84 36
i 3 244.821429 0.178571 42 42
i 5 244.821429 0.178571 38 51
i 6 244.832129 0.535714 69 34
i 8 244.835707 0.178571 63 29
i 3 245 0.178571 38 37
i 3 245 0.178571 42 43
i 5 245 0.178571 34 54
i 8 245.014279 0.178571 60 54
i 5 245.178571 0.535714 31 61
i 8 245.19285 0.178571 65 27
i 3 245.357143 0.178571 46 28
i 7 245.371421 0.178571 84 27
i 8 245.371421 0.059524 65 32
i 8 245.430945 0.059524 65 26
i 8 245.490469 0.059524 65 20
i 8 245.549993 0.178571 63 33
i 1 245.714286 0.714286 64 60 6253 3
i 10 245.714286 1.785714 45 40
i 10 245.714286 1.785714 50 40
i 10 245.714286 1.785714 52 40
i 3 245.714286 0.178571 35 115
i 4 245.714286 1.071429 45 62
i 7 245.714286 0.178571 70 35
i 8 245.714286 0.178571 68 78
i 3 245.892857 0.178571 42 27
i 3 246.071429 0.178571 42 57
i 7 246.085707 0.178571 84 38
i 3 246.25 0.178571 35 112
i 3 246.25 0.178571 42 33
i 8 246.264279 0.178571 63 26
i 1 246.428571 0.357143 62 45 6272 3
i 3 246.428571 0.178571 38 45
i 8 246.44285 0.178571 60 59
i 8 246.621421 0.178571 65 25
i 1 246.785714 0.357143 64 54 6283 3
i 3 246.785714 0.178571 46 45
i 7 246.799993 0.178571 84 29
i 8 246.799993 0.089286 63 35
i 8 246.889279 0.089286 63 24
i 8 246.978564 0.178571 63 29
i 1 247.142857 0.892857 69 61 6295 3
i 8 247.157136 0.178571 61 63
i 3 247.321429 0.178571 42 47
i 3 247.5 0.178571 35 82
i 8 247.50535 0.178571 64 58
i 7 247.514279 0.178571 84 38
i 3 247.678571 0.178571 42 56
i 8 247.69285 0.178571 65 28
i 3 247.857143 0.178571 38 52
i 3 247.857143 0.178571 42 46
i 8 247.871421 0.178571 60 57
i 5 248.035714 0.178571 33 56
i 6 248.046414 0.892857 76 39
i 8 248.049993 0.178571 65 30
i 3 248.214286 0.178571 46 28
i 4 248.214286 0.357143 40 44
i 5 248.214286 0.178571 35 50
i 8 248.219636 0.178571 62 38
i 7 248.228564 0.178571 84 29
i 5 248.392857 0.714286 37 63
i 8 248.407136 0.089286 63 36
i 8 248.496421 0.089286 63 24
i 10 248.571429 1.25 45 34
i 10 248.571429 1.25 49 34
i 10 248.571429 1.25 52 34
i 3 248.571429 0.178571 35 115
i 8 248.576779 0.178571 67 73
i 1 248.75 0.178571 67 43 6346 3
i 3 248.75 0.059524 42 58
i 3 248.809524 0.059524 42 42
i 3 248.869048 0.059524 42 26
i 1 248.928571 0.357143 64 52 6356 3
i 4 248.928571 0.892857 45 57
i 7 248.94285 0.178571 84 38
i 3 249.107143 0.178571 35 112
i 1 249.285714 0.357143 62 44 6364 3
i 3 249.285714 0.178571 38 29
i 8 249.299993 0.178571 60 60
i 8 249.478564 0.059524 63 38
i 8 249.538088 0.059524 63 32
i 8 249.597612 0.059524 63 25
i 1 249.642857 1.25 61 51 6376 3
i 3 249.642857 0.178571 46 45
i 7 249.657136 0.178571 84 29
i 8 249.657136 0.178571 63 32
i 8 249.657136 0.089286 65 29
i 8 249.746421 0.089286 65 21
i 8 249.835707 0.178571 60 40
i 3 250 0.178571 42 24
i 8 250.014279 0.178571 61 59
i 3 250.178571 0.059524 42 22
i 8 250.19285 0.059524 63 36
i 3 250.238095 0.059524 42 26
i 8 250.252374 0.059524 63 30
i 3 250.297619 0.059524 42 30
i 8 250.311898 0.059524 63 24
i 3 250.357143 0.178571 35 82
i 3 250.357143 0.178571 42 70
i 8 250.362493 0.178571 64 55
i 7 250.371421 0.178571 84 38
i 8 250.371421 0.089286 65 28
i 8 250.460707 0.089286 65 20
i 3 250.535714 0.178571 42 42
i 7 250.549993 0.178571 71 23
i 8 250.549993 0.178571 60 38
i 3 250.714286 0.178571 38 37
i 3 250.714286 0.178571 42 43
i 6 250.724986 0.357143 73 31
i 8 250.728564 0.178571 60 54
i 5 250.892857 0.178571 40 52
i 8 250.907136 0.059524 63 34
i 8 250.96666 0.059524 63 28
i 8 251.026183 0.059524 63 22
i 3 251.071429 0.178571 46 28
i 5 251.071429 0.357143 33 60
i 7 251.085707 0.178571 71 19
i 7 251.085707 0.178571 84 29
i 8 251.085707 0.089286 65 26
i 8 251.174993 0.089286 65 18
i 8 251.264279 0.178571 60 36
i 1 251.428571 0.357143 62 63 6462 3
i 10 251.428571 4.821429 50 48
i 10 251.428571 4.821429 53 48
i 10 251.428571 4.821429 57 48
i 10 251.428571 4.821429 60 48
i 3 251.428571 0.178571 35 115
i 4 251.428571 1.071429 38 68
i 7 251.428571 0.178571 70 37
i 8 251.428571 0.178571 68 78
i 3 251.607143 0.178571 42 27
i 1 251.785714 0.178571 64 48 6473 3
i 3 251.785714 0.178571 42 57
i 1 251.964286 0.178571 65 56 6477 3
i 3 251.964286 0.178571 35 112
i 3 251.964286 0.178571 42 33
i 7 251.964286 0.178571 70 62
i 8 251.978564 0.178571 63 26
i 1 252.142857 1.071429 69 67 6484 3
i 3 252.142857 0.178571 38 45
i 7 252.142857 0.178571 84 58
i 8 252.157136 0.178571 60 59
i 8 252.335707 0.178571 65 25
i 3 252.5 0.178571 46 45
i 7 252.514279 0.178571 84 29
i 8 252.514279 0.089286 63 35
i 8 252.603564 0.089286 63 25
i 8 252.69285 0.178571 63 29
i 8 252.871421 0.178571 61 63
i 3 253.035714 0.178571 42 47
i 1 253.214286 0.357143 67 53 6512 3
i 3 253.214286 0.178571 35 82
i 7 253.214286 0.178571 70 57
i 8 253.219636 0.178571 64 58
i 3 253.392857 0.178571 42 56
i 7 253.392857 0.178571 84 57
i 8 253.407136 0.178571 65 28
i 1 253.571429 0.535714 65 49 6524 3
i 3 253.571429 0.178571 38 52
i 3 253.571429 0.178571 42 46
i 8 253.585707 0.178571 60 57
i 8 253.764279 0.059524 65 30
i 8 253.823802 0.059524 65 24
i 8 253.883326 0.059524 65 19
i 3 253.928571 0.178571 46 28
i 4 253.928571 0.357143 45 50
i 8 253.933921 0.178571 62 38
i 7 253.94285 0.178571 84 29
i 5 254.107143 0.178571 26 57
i 8 254.121421 0.089286 63 36
i 8 254.210707 0.089286 63 25
i 3 254.285714 0.178571 35 115
i 5 254.285714 0.178571 33 51
i 7 254.285714 0.178571 70 69
i 8 254.291064 0.178571 67 73
i 3 254.464286 0.059524 42 58
i 5 254.464286 0.178571 36 56
i 3 254.52381 0.059524 42 42
i 3 254.583333 0.059524 42 26
i 1 254.642857 0.357143 69 62 6570 3
i 4 254.642857 0.892857 38 63
i 5 254.642857 0.714286 38 65
i 7 254.657136 0.178571 84 38
i 3 254.821429 0.178571 35 112
i 7 254.821429 0.178571 70 63
i 8 254.835707 0.178571 63 27
i 1 255 0.178571 67 48 6580 3
i 3 255 0.178571 38 29
i 7 255 0.178571 84 38
i 8 255.014279 0.178571 60 60
i 1 255.178571 0.178571 65 55 6588 3
i 8 255.19285 0.178571 65 26
i 1 255.357143 0.357143 64 45 6594 3
i 3 255.357143 0.178571 46 45
i 7 255.371421 0.178571 84 29
i 8 255.371421 0.089286 63 32
i 8 255.460707 0.089286 63 23
i 1 255.714286 0.892857 62 57 6607 3
i 3 255.714286 0.178571 42 24
i 8 255.728564 0.178571 61 59
i 3 255.892857 0.059524 42 22
i 3 255.952381 0.059524 42 26
i 3 256.011905 0.059524 42 30
i 3 256.071429 0.178571 35 82
i 3 256.071429 0.178571 42 70
i 7 256.071429 0.178571 70 26
i 8 256.076779 0.178571 64 55
i 3 256.25 0.178571 42 42
i 7 256.25 0.178571 84 55
i 8 256.264279 0.178571 63 29
i 3 256.428571 0.178571 38 37
i 3 256.428571 0.178571 42 43
i 8 256.44285 0.178571 60 54
i 5 256.607143 0.178571 33 51
i 7 256.607143 0.089286 84 37
i 8 256.621421 0.178571 65 27
i 7 256.696429 0.089286 84 37
i 3 256.785714 0.178571 46 28
i 5 256.785714 0.357143 26 60
i 8 256.799993 0.178571 65 32
i 7 256.805343 0.178571 84 29
i 8 256.978564 0.089286 63 33
i 8 257.06785 0.075007 63 22
i 10 257.142857 4.821429 50 48
i 10 257.142857 4.821429 53 48
i 10 257.142857 4.821429 57 48
i 10 257.142857 4.821429 60 48
i 3 257.142857 0.178571 35 115
i 4 257.142857 1.071429 38 68
i 5 257.142857 0.178571 26 70
i 7 257.142857 0.178571 70 34
i 8 257.142857 0.178571 68 78
i 3 257.321429 0.178571 42 27
i 5 257.321429 0.178571 38 55
i 2 257.5 0.178571 98 127
i 3 257.5 0.178571 42 57
i 5 257.5 0.178571 36 60
i 7 257.514279 0.178571 84 36
i 3 257.678571 0.178571 35 112
i 3 257.678571 0.178571 42 33
i 5 257.678571 0.178571 38 65
i 8 257.69285 0.178571 63 26
i 3 257.857143 0.178571 38 45
i 5 257.857143 0.178571 41 72
i 8 257.871421 0.178571 60 59
i 5 258.035714 0.178571 40 58
i 8 258.049993 0.178571 65 25
i 3 258.214286 0.178571 46 45
i 5 258.214286 0.178571 38 64
i 7 258.228564 0.178571 84 27
i 8 258.228564 0.178571 63 35
i 5 258.392857 1.25 33 76
i 8 258.407136 0.089286 63 29
i 8 258.496421 0.089286 63 21
i 8 258.585707 0.178571 61 63
i 3 258.75 0.178571 42 47
i 3 258.928571 0.178571 35 82
i 8 258.933921 0.178571 64 58
i 7 258.94285 0.178571 84 36
i 3 259.107143 0.178571 42 56
i 8 259.121421 0.178571 65 28
i 3 259.285714 0.178571 38 52
i 3 259.285714 0.178571 42 46
i 8 259.299993 0.178571 60 57
i 8 259.478564 0.178571 65 30
i 3 259.642857 0.178571 46 28
i 4 259.642857 0.357143 45 50
i 5 259.642857 0.178571 36 56
i 8 259.648207 0.178571 62 41
i 6 259.653557 0.892857 74 43
i 7 259.835707 0.178571 71 25
i 8 259.835707 0.059524 63 36
i 8 259.895231 0.059524 63 30
i 8 259.954755 0.059524 63 24
i 3 260 0.178571 35 115
i 8 260.00535 0.178571 67 73
i 3 260.178571 0.059524 42 58
i 5 260.178571 1.071429 38 71
i 8 260.19285 0.178571 65 30
i 3 260.238095 0.059524 42 42
i 3 260.297619 0.059524 42 26
i 4 260.357143 0.892857 38 63
i 7 260.371421 0.178571 84 36
i 3 260.535714 0.178571 35 112
i 8 260.549993 0.178571 63 27
i 3 260.714286 0.178571 38 29
i 8 260.728564 0.178571 60 60
i 8 260.907136 0.178571 65 26
i 3 261.071429 0.178571 46 45
i 7 261.085707 0.178571 84 27
i 8 261.085707 0.089286 63 32
i 8 261.174993 0.089286 63 23
i 8 261.264279 0.044643 63 36
i 8 261.308921 0.044643 63 32
i 8 261.353564 0.044643 63 27
i 8 261.398207 0.044643 63 23
i 3 261.428571 0.178571 42 24
i 8 261.44285 0.178571 61 59
i 3 261.607143 0.059524 42 22
i 8 261.612493 0.178571 66 40
i 3 261.666667 0.059524 42 26
i 3 261.72619 0.059524 42 30
i 3 261.785714 0.178571 35 82
i 3 261.785714 0.178571 42 70
i 5 261.785714 0.178571 33 54
i 8 261.791064 0.178571 64 55
i 7 261.799993 0.178571 84 36
i 3 261.964286 0.178571 42 42
i 8 261.978564 0.178571 63 29
i 3 262.142857 0.178571 38 37
i 3 262.142857 0.178571 42 43
i 5 262.142857 0.714286 26 69
i 6 262.153557 0.535714 76 33
i 8 262.157136 0.178571 60 54
i 8 262.335707 0.178571 65 27
i 3 262.5 0.178571 46 28
i 7 262.514279 0.178571 84 27
i 8 262.514279 0.059524 65 32
i 8 262.573802 0.059524 65 26
i 8 262.633326 0.059524 65 20
i 8 262.69285 0.178571 63 33
i 1 262.857143 0.714286 62 65 6862 3
i 10 262.857143 4.821429 50 48
i 10 262.857143 4.821429 53 48
i 10 262.857143 4.821429 57 48
i 10 262.857143 4.821429 60 48
i 3 262.857143 0.178571 35 115
i 4 262.857143 1.071429 38 68
i 7 262.857143 0.178571 70 37
i 8 262.857143 0.178571 68 78
i 3 263.035714 0.178571 42 27
i 3 263.214286 0.178571 42 57
i 3 263.392857 0.178571 35 112
i 3 263.392857 0.178571 42 33
i 7 263.392857 0.178571 70 62
i 8 263.407136 0.178571 63 26
i 1 263.571429 0.178571 64 49 6880 3
i 3 263.571429 0.178571 38 45
i 7 263.571429 0.178571 84 58
i 8 263.585707 0.178571 60 59
i 1 263.75 0.178571 65 57 6889 3
i 8 263.764279 0.178571 65 25
i 1 263.928571 0.357143 67 53 6896 3
i 3 263.928571 0.178571 46 45
i 7 263.94285 0.178571 84 29
i 8 263.94285 0.089286 63 35
i 8 264.032136 0.089286 63 25
i 8 264.121421 0.178571 63 29
i 1 264.285714 1.25 69 66 6908 3
i 6 264.296414 1.25 76 33
i 8 264.299993 0.178571 61 63
i 3 264.464286 0.178571 42 47
i 3 264.642857 0.178571 35 82
i 7 264.642857 0.178571 70 57
i 8 264.648207 0.178571 64 58
i 3 264.821429 0.178571 42 56
i 7 264.821429 0.178571 84 57
i 8 264.835707 0.178571 65 28
i 3 265 0.178571 38 52
i 3 265 0.178571 42 46
i 8 265.014279 0.178571 60 57
i 8 265.19285 0.059524 65 30
i 8 265.252374 0.059524 65 24
i 8 265.311898 0.059524 65 19
i 3 265.357143 0.178571 46 28
i 4 265.357143 0.357143 45 50
i 8 265.362493 0.178571 62 38
i 7 265.371421 0.178571 84 29
i 5 265.535714 0.178571 26 57
i 8 265.549993 0.089286 63 36
i 8 265.639279 0.089286 63 25
i 3 265.714286 0.178571 35 115
i 5 265.714286 0.178571 33 51
i 7 265.714286 0.178571 70 69
i 8 265.719636 0.178571 67 73
i 3 265.892857 0.059524 42 58
i 5 265.892857 0.178571 36 56
i 3 265.952381 0.059524 42 42
i 3 266.011905 0.059524 42 26
i 1 266.071429 0.357143 67 50 6970 3
i 4 266.071429 0.892857 38 63
i 5 266.071429 0.714286 38 65
i 7 266.085707 0.178571 84 38
i 3 266.25 0.178571 35 112
i 7 266.25 0.178571 70 63
i 8 266.264279 0.178571 63 27
i 1 266.428571 0.178571 65 51 6980 3
i 3 266.428571 0.178571 38 29
i 7 266.428571 0.178571 84 38
i 8 266.44285 0.178571 60 60
i 1 266.607143 0.178571 64 44 6988 3
i 8 266.621421 0.178571 65 26
i 1 266.785714 1.25 62 55 6994 3
i 3 266.785714 0.178571 46 45
i 7 266.799993 0.178571 84 29
i 8 266.799993 0.089286 63 32
i 8 266.889279 0.089286 63 23
i 3 267.142857 0.178571 42 24
i 8 267.157136 0.178571 61 59
i 3 267.321429 0.059524 42 22
i 6 267.332129 0.892857 74 31
i 3 267.380952 0.059524 42 26
i 3 267.440476 0.059524 42 30
i 3 267.5 0.178571 35 82
i 3 267.5 0.178571 42 70
i 7 267.5 0.178571 70 26
i 8 267.50535 0.178571 64 55
i 3 267.678571 0.178571 42 42
i 7 267.678571 0.178571 84 55
i 8 267.69285 0.178571 63 29
i 3 267.857143 0.178571 38 37
i 3 267.857143 0.178571 42 43
i 8 267.871421 0.178571 60 54
i 5 268.035714 0.178571 33 51
i 7 268.035714 0.089286 84 37
i 8 268.049993 0.178571 65 27
i 7 268.125 0.089286 84 37
i 3 268.214286 0.178571 46 28
i 5 268.214286 0.357143 26 60
i 8 268.228564 0.178571 65 32
i 7 268.233914 0.178571 84 29
i 8 268.407136 0.089286 63 33
i 8 268.496421 0.075007 63 22
i 10 268.571429 4.821429 50 48
i 10 268.571429 4.821429 53 48
i 10 268.571429 4.821429 57 48
i 10 268.571429 4.821429 60 48
i 3 268.571429 0.178571 35 115
i 4 268.571429 1.071429 38 68
i 7 268.571429 0.178571 70 35
i 8 268.571429 0.178571 68 78
i 1 268.75 1.428571 65 48 7071 3
i 3 268.75 0.178571 42 27
i 3 268.928571 0.178571 42 57
i 7 268.94285 0.178571 84 38
i 3 269.107143 0.178571 35 112
i 3 269.107143 0.178571 42 33
i 8 269.121421 0.178571 63 26
i 3 269.285714 0.178571 38 45
i 8 269.299993 0.178571 60 59
i 8 269.478564 0.178571 65 25
i 3 269.642857 0.178571 46 45
i 7 269.657136 0.178571 84 29
i 8 269.657136 0.089286 63 35
i 8 269.746421 0.089286 63 24
i 8 269.835707 0.178571 63 29
i 8 270.014279 0.178571 61 63
i 1 270.178571 0.178571 64 35 7106 3
i 3 270.178571 0.178571 42 47
i 1 270.357143 0.357143 62 43 7110 3
i 3 270.357143 0.178571 35 82
i 8 270.362493 0.178571 64 58
i 7 270.371421 0.178571 84 38
i 3 270.535714 0.178571 42 56
i 8 270.549993 0.178571 65 28
i 1 270.714286 0.714286 64 38 7121 3
i 3 270.714286 0.178571 38 52
i 3 270.714286 0.178571 42 46
i 8 270.728564 0.178571 60 57
i 8 270.907136 0.178571 65 30
i 3 271.071429 0.178571 46 28
i 4 271.071429 0.357143 45 50
i 8 271.076779 0.178571 62 38
i 7 271.085707 0.178571 84 29
i 5 271.25 0.178571 26 57
i 8 271.264279 0.089286 63 36
i 8 271.353564 0.089286 63 24
i 3 271.428571 0.178571 35 115
i 5 271.428571 0.178571 33 51
i 8 271.433921 0.178571 67 73
i 3 271.607143 0.059524 42 58
i 5 271.607143 0.178571 36 56
i 3 271.666667 0.059524 42 42
i 3 271.72619 0.059524 42 26
i 4 271.785714 0.892857 38 63
i 5 271.785714 0.714286 38 65
i 7 271.799993 0.178571 84 38
i 3 271.964286 0.178571 35 112
i 1 272.142857 0.178571 65 40 7166 3
i 3 272.142857 0.178571 38 29
i 8 272.157136 0.178571 60 60
i 1 272.321429 0.178571 64 34 7171 3
i 8 272.335707 0.059524 63 38
i 8 272.395231 0.059524 63 32
i 8 272.454755 0.059524 63 25
i 1 272.5 1.25 62 41 7180 3
i 3 272.5 0.178571 46 45
i 7 272.514279 0.178571 84 29
i 8 272.514279 0.178571 63 32
i 8 272.514279 0.089286 65 29
i 8 272.603564 0.089286 65 21
i 8 272.69285 0.178571 60 40
i 3 272.857143 0.178571 42 24
i 8 272.871421 0.178571 61 59
i 3 273.035714 0.059524 42 22
i 8 273.049993 0.059524 63 36
i 3 273.095238 0.059524 42 26
i 8 273.109517 0.059524 63 30
i 3 273.154762 0.059524 42 30
i 8 273.169041 0.059524 63 24
i 3 273.214286 0.178571 35 82
i 3 273.214286 0.178571 42 70
i 8 273.219636 0.178571 64 55
i 7 273.228564 0.178571 84 38
i 8 273.228564 0.089286 65 28
i 8 273.31785 0.089286 65 20
i 3 273.392857 0.178571 42 42
i 7 273.407136 0.178571 71 23
i 8 273.407136 0.178571 60 38
i 3 273.571429 0.178571 38 37
i 3 273.571429 0.178571 42 43
i 8 273.585707 0.178571 60 54
i 5 273.75 0.178571 33 51
i 8 273.764279 0.059524 63 34
i 8 273.823802 0.059524 63 28
i 8 273.883326 0.059524 63 22
i 3 273.928571 0.178571 46 28
i 5 273.928571 0.357143 26 60
i 7 273.94285 0.178571 71 19
i 7 273.94285 0.178571 84 29
i 8 273.94285 0.089286 65 26
i 8 274.032136 0.089286 65 18
i 8 274.121421 0.178571 60 36
i 1 274.285714 1.071429 65 62 7266 3
i 10 274.285714 4.821429 46 47
i 10 274.285714 4.821429 50 47
i 10 274.285714 4.821429 53 47
i 10 274.285714 4.821429 57 47
i 3 274.285714 0.178571 35 115
i 4 274.285714 1.071429 46 62
i 7 274.285714 0.178571 70 34
i 8 274.285714 0.178571 68 78
i 3 274.464286 0.178571 42 27
i 3 274.642857 0.178571 42 57
i 7 274.657136 0.178571 84 36
i 3 274.821429 0.178571 35 112
i 3 274.821429 0.178571 42 33
i 8 274.835707 0.178571 63 26
i 3 275 0.178571 38 45
i 8 275.014279 0.178571 60 59
i 8 275.19285 0.178571 65 25
i 1 275.357143 0.178571 64 45 7294 3
i 3 275.357143 0.178571 46 45
i 7 275.371421 0.178571 84 27
i 8 275.371421 0.178571 63 35
i 1 275.535714 0.178571 62 53 7300 3
i 8 275.549993 0.089286 63 29
i 8 275.639279 0.089286 63 21
i 1 275.714286 0.892857 60 49 7308 3
i 8 275.728564 0.178571 61 63
i 3 275.892857 0.178571 42 47
i 3 276.071429 0.178571 35 82
i 8 276.076779 0.178571 64 58
i 7 276.085707 0.178571 84 36
i 3 276.25 0.178571 42 56
i 8 276.264279 0.178571 65 28
i 3 276.428571 0.178571 38 52
i 3 276.428571 0.178571 42 46
i 8 276.44285 0.178571 60 57
i 5 276.607143 0.178571 34 55
i 8 276.621421 0.178571 65 30
i 3 276.785714 0.178571 46 28
i 4 276.785714 0.357143 41 44
i 5 276.785714 0.178571 36 49
i 8 276.791064 0.178571 62 41
i 5 276.964286 0.714286 38 63
i 7 276.978564 0.178571 71 25
i 8 276.978564 0.059524 63 36
i 8 277.038088 0.059524 63 30
i 8 277.097612 0.059524 63 24
i 1 277.142857 0.357143 62 51 7350 3
i 3 277.142857 0.178571 35 115
i 8 277.148207 0.178571 67 73
i 3 277.321429 0.059524 42 58
i 8 277.335707 0.178571 65 30
i 3 277.380952 0.059524 42 42
i 3 277.440476 0.059524 42 26
i 1 277.5 0.178571 65 55 7365 3
i 4 277.5 0.892857 46 57
i 7 277.514279 0.178571 84 36
i 1 277.678571 0.178571 67 48 7370 3
i 3 277.678571 0.178571 35 112
i 8 277.69285 0.178571 63 27
i 1 277.857143 0.714286 65 59 7376 3
i 3 277.857143 0.178571 38 29
i 8 277.871421 0.178571 60 60
i 8 278.049993 0.178571 65 26
i 3 278.214286 0.178571 46 45
i 7 278.228564 0.178571 84 27
i 8 278.228564 0.089286 63 32
i 8 278.31785 0.089286 63 23
i 8 278.407136 0.044643 63 36
i 8 278.451779 0.044643 63 32
i 8 278.496421 0.044643 63 27
i 8 278.541064 0.044643 63 23
i 1 278.571429 0.892857 62 47 7402 3
i 3 278.571429 0.178571 42 24
i 8 278.585707 0.178571 61 59
i 3 278.75 0.059524 42 22
i 8 278.75535 0.178571 66 40
i 3 278.809524 0.059524 42 26
i 3 278.869048 0.059524 42 30
i 3 278.928571 0.178571 35 82
i 3 278.928571 0.178571 42 70
i 8 278.933921 0.178571 64 55
i 7 278.94285 0.178571 84 36
i 3 279.107143 0.178571 42 42
i 8 279.121421 0.178571 63 29
i 3 279.285714 0.178571 38 37
i 3 279.285714 0.178571 42 43
i 8 279.299993 0.178571 60 54
i 5 279.464286 0.178571 29 49
i 8 279.478564 0.178571 65 27
i 3 279.642857 0.178571 46 28
i 5 279.642857 0.357143 34 58
i 7 279.657136 0.178571 84 27
i 8 279.657136 0.059524 65 32
i 8 279.71666 0.059524 65 26
i 8 279.776183 0.059524 65 20
i 8 279.835707 0.178571 63 33
i 1 280 1.071429 65 62 7460 3
i 10 280 4.821429 46 47
i 10 280 4.821429 50 47
i 10 280 4.821429 53 47
i 10 280 4.821429 57 47
i 3 280 0.178571 35 115
i 4 280 1.071429 46 62
i 7 280 0.178571 70 37
i 8 280 0.178571 68 78
i 3 280.178571 0.178571 42 27
i 2 280.357143 0.178571 98 127
i 3 280.357143 0.178571 42 57
i 3 280.535714 0.178571 35 112
i 3 280.535714 0.178571 42 33
i 7 280.535714 0.178571 70 62
i 8 280.549993 0.178571 63 26
i 3 280.714286 0.178571 38 45
i 7 280.714286 0.178571 84 58
i 8 280.728564 0.178571 60 59
i 8 280.907136 0.178571 65 25
i 1 281.071429 0.178571 64 45 7492 3
i 3 281.071429 0.178571 46 45
i 7 281.085707 0.178571 84 29
i 8 281.085707 0.089286 63 35
i 8 281.174993 0.089286 63 25
i 1 281.25 0.178571 62 53 7500 3
i 8 281.264279 0.178571 63 29
i 1 281.428571 0.892857 60 49 7506 3
i 8 281.44285 0.178571 61 63
i 3 281.607143 0.178571 42 47
i 3 281.785714 0.178571 35 82
i 7 281.785714 0.178571 70 57
i 8 281.791064 0.178571 64 58
i 3 281.964286 0.178571 42 56
i 7 281.964286 0.178571 84 57
i 8 281.978564 0.178571 65 28
i 3 282.142857 0.178571 38 52
i 3 282.142857 0.178571 42 46
i 6 282.153557 0.892857 69 39
i 8 282.157136 0.178571 60 57
i 5 282.321429 0.178571 34 55
i 8 282.335707 0.059524 65 30
i 8 282.395231 0.059524 65 24
i 8 282.454755 0.059524 65 19
i 3 282.5 0.178571 46 28
i 4 282.5 0.357143 41 44
i 5 282.5 0.178571 36 49
i 8 282.50535 0.178571 62 38
i 7 282.514279 0.178571 84 29
i 5 282.678571 0.714286 38 63
i 8 282.69285 0.089286 63 36
i 8 282.782136 0.089286 63 25
i 1 282.857143 0.357143 62 51 7554 3
i 3 282.857143 0.178571 35 115
i 7 282.857143 0.178571 70 69
i 8 282.862493 0.178571 67 73
i 3 283.035714 0.059524 42 58
i 3 283.095238 0.059524 42 42
i 3 283.154762 0.059524 42 26
i 1 283.214286 0.178571 65 55 7570 3
i 4 283.214286 0.892857 46 57
i 7 283.228564 0.178571 84 38
i 1 283.392857 0.178571 67 48 7574 3
i 3 283.392857 0.178571 35 112
i 7 283.392857 0.178571 70 63
i 8 283.407136 0.178571 63 27
i 1 283.571429 0.714286 65 59 7581 3
i 3 283.571429 0.178571 38 29
i 7 283.571429 0.178571 84 38
i 8 283.585707 0.178571 60 60
i 8 283.764279 0.178571 65 26
i 3 283.928571 0.178571 46 45
i 7 283.94285 0.178571 84 29
i 8 283.94285 0.089286 63 32
i 8 284.032136 0.089286 63 23
i 1 284.285714 0.892857 62 47 7603 3
i 3 284.285714 0.178571 42 24
i 8 284.299993 0.178571 61 59
i 3 284.464286 0.059524 42 22
i 3 284.52381 0.059524 42 26
i 3 284.583333 0.059524 42 30
i 3 284.642857 0.178571 35 82
i 3 284.642857 0.178571 42 70
i 7 284.642857 0.178571 70 26
i 8 284.648207 0.178571 64 55
i 6 284.653557 0.714286 77 36
i 3 284.821429 0.178571 42 42
i 7 284.821429 0.178571 84 55
i 8 284.835707 0.178571 63 29
i 3 285 0.178571 38 37
i 3 285 0.178571 42 43
i 8 285.014279 0.178571 60 54
i 5 285.178571 0.178571 29 49
i 7 285.178571 0.089286 84 37
i 8 285.19285 0.178571 65 27
i 7 285.267857 0.089286 84 37
i 3 285.357143 0.178571 46 22
i 5 285.357143 0.357143 34 58
i 8 285.371421 0.178571 65 32
i 7 285.376772 0.178571 84 29
i 3 285.535714 0.178571 42 24
i 8 285.549993 0.089286 63 33
i 8 285.639279 0.075007 63 22
i 1 285.714286 0.714286 67 60 7665 3
i 10 285.714286 4.821429 43 47
i 10 285.714286 4.821429 46 47
i 10 285.714286 4.821429 50 47
i 10 285.714286 4.821429 53 47
i 3 285.714286 0.178571 35 115
i 4 285.714286 1.071429 43 64
i 7 285.714286 0.178571 70 34
i 8 285.714286 0.178571 68 78
i 3 285.892857 0.178571 42 27
i 3 286.071429 0.178571 42 57
i 7 286.085707 0.178571 84 36
i 3 286.25 0.178571 35 112
i 3 286.25 0.178571 42 33
i 8 286.264279 0.178571 63 26
i 1 286.428571 0.178571 69 49 7685 3
i 3 286.428571 0.178571 38 45
i 8 286.44285 0.178571 60 59
i 1 286.607143 0.178571 70 57 7692 3
i 8 286.621421 0.178571 65 25
i 1 286.785714 0.357143 69 50 7698 3
i 3 286.785714 0.178571 46 45
i 7 286.799993 0.178571 84 27
i 8 286.799993 0.178571 63 35
i 8 286.978564 0.089286 63 29
i 8 287.06785 0.089286 63 21
i 1 287.142857 1.071429 67 61 7710 3
i 8 287.157136 0.178571 61 63
i 3 287.321429 0.178571 42 47
i 3 287.5 0.178571 35 82
i 8 287.50535 0.178571 64 58
i 7 287.514279 0.178571 84 36
i 3 287.678571 0.178571 42 56
i 8 287.69285 0.178571 65 28
i 3 287.857143 0.178571 38 52
i 3 287.857143 0.178571 42 46
i 6 287.867843 1.071429 74 40
i 8 287.871421 0.178571 60 57
i 8 288.049993 0.178571 65 30
i 3 288.214286 0.178571 46 28
i 4 288.214286 0.357143 38 46
i 5 288.214286 0.178571 31 57
i 8 288.219636 0.178571 62 41
i 5 288.392857 0.178571 33 50
i 7 288.407136 0.178571 71 25
i 8 288.407136 0.059524 63 36
i 8 288.46666 0.059524 63 30
i 8 288.526183 0.059524 63 24
i 3 288.571429 0.178571 35 115
i 5 288.571429 0.714286 34 64
i 8 288.576779 0.178571 67 73
i 1 288.75 0.178571 65 43 7757 3
i 3 288.75 0.059524 42 58
i 8 288.764279 0.178571 65 30
i 3 288.809524 0.059524 42 42
i 3 288.869048 0.059524 42 26
i 1 288.928571 0.178571 67 52 7768 3
i 4 288.928571 0.892857 43 59
i 7 288.94285 0.178571 84 36
i 1 289.107143 0.178571 69 48 7774 3
i 3 289.107143 0.178571 35 112
i 8 289.121421 0.178571 63 27
i 1 289.285714 1.607143 62 55 7779 3
i 3 289.285714 0.178571 38 29
i 8 289.299993 0.178571 60 60
i 8 289.478564 0.178571 65 26
i 3 289.642857 0.178571 46 45
i 7 289.657136 0.178571 84 27
i 8 289.657136 0.089286 63 32
i 8 289.746421 0.089286 63 23
i 8 289.835707 0.044643 63 36
i 8 289.88035 0.044643 63 32
i 8 289.924993 0.044643 63 27
i 8 289.969636 0.044643 63 23
i 3 290 0.178571 42 24
i 8 290.014279 0.178571 61 59
i 3 290.178571 0.059524 42 22
i 8 290.183921 0.178571 66 40
i 3 290.238095 0.059524 42 26
i 3 290.297619 0.059524 42 30
i 3 290.357143 0.178571 35 82
i 3 290.357143 0.178571 42 70
i 8 290.362493 0.178571 64 55
i 7 290.371421 0.178571 84 36
i 3 290.535714 0.178571 42 42
i 5 290.535714 0.178571 38 51
i 6 290.546414 0.535714 69 34
i 8 290.549993 0.178571 63 29
i 3 290.714286 0.178571 38 37
i 3 290.714286 0.178571 42 43
i 5 290.714286 0.178571 34 54
i 8 290.728564 0.178571 60 54
i 5 290.892857 0.535714 31 61
i 8 290.907136 0.178571 65 27
i 3 291.071429 0.178571 46 28
i 7 291.085707 0.178571 84 27
i 8 291.085707 0.059524 65 32
i 8 291.145231 0.059524 65 26
i 8 291.204755 0.059524 65 20
i 8 291.264279 0.178571 63 33
i 1 291.428571 0.714286 64 60 7865 3
i 10 291.428571 1.785714 45 40
i 10 291.428571 1.785714 50 40
i 10 291.428571 1.785714 52 40
i 3 291.428571 0.178571 35 115
i 4 291.428571 1.071429 45 62
i 7 291.428571 0.178571 70 35
i 8 291.428571 0.178571 68 78
i 3 291.607143 0.178571 42 27
i 3 291.785714 0.178571 42 57
i 7 291.799993 0.178571 84 38
i 3 291.964286 0.178571 35 112
i 3 291.964286 0.178571 42 33
i 8 291.978564 0.178571 63 26
i 1 292.142857 0.357143 62 45 7884 3
i 3 292.142857 0.178571 38 45
i 8 292.157136 0.178571 60 59
i 8 292.335707 0.178571 65 25
i 1 292.5 0.357143 64 54 7895 3
i 3 292.5 0.178571 46 45
i 7 292.514279 0.178571 84 29
i 8 292.514279 0.089286 63 35
i 8 292.603564 0.089286 63 24
i 8 292.69285 0.178571 63 29
i 1 292.857143 0.892857 69 61 7907 3
i 8 292.871421 0.178571 61 63
i 3 293.035714 0.178571 42 47
i 3 293.214286 0.178571 35 82
i 8 293.219636 0.178571 64 58
i 7 293.228564 0.178571 84 38
i 3 293.392857 0.178571 42 56
i 8 293.407136 0.178571 65 28
i 3 293.571429 0.178571 38 52
i 3 293.571429 0.178571 42 46
i 8 293.585707 0.178571 60 57
i 5 293.75 0.178571 33 56
i 6 293.7607 0.892857 76 39
i 8 293.764279 0.178571 65 30
i 3 293.928571 0.178571 46 28
i 4 293.928571 0.357143 40 44
i 5 293.928571 0.178571 35 50
i 8 293.933921 0.178571 62 38
i 7 293.94285 0.178571 84 29
i 5 294.107143 0.714286 37 63
i 8 294.121421 0.089286 63 36
i 8 294.210707 0.089286 63 24
i 10 294.285714 1.25 45 34
i 10 294.285714 1.25 49 34
i 10 294.285714 1.25 52 34
i 3 294.285714 0.178571 35 115
i 8 294.291064 0.178571 67 73
i 1 294.464286 0.178571 67 43 7958 3
i 3 294.464286 0.059524 42 58
i 3 294.52381 0.059524 42 42
i 3 294.583333 0.059524 42 26
i 1 294.642857 0.357143 64 52 7968 3
i 4 294.642857 0.892857 45 57
i 7 294.657136 0.178571 84 38
i 3 294.821429 0.178571 35 112
i 1 295 0.357143 62 44 7976 3
i 3 295 0.178571 38 29
i 8 295.014279 0.178571 60 60
i 8 295.19285 0.059524 63 38
i 8 295.252374 0.059524 63 32
i 8 295.311898 0.059524 63 25
i 1 295.357143 1.25 61 51 7988 3
i 3 295.357143 0.178571 46 45
i 7 295.371421 0.178571 84 29
i 8 295.371421 0.178571 63 32
i 8 295.371421 0.089286 65 29
i 8 295.460707 0.089286 65 21
i 8 295.549993 0.178571 60 40
i 3 295.714286 0.178571 42 24
i 8 295.728564 0.178571 61 59
i 3 295.892857 0.059524 42 22
i 8 295.907136 0.059524 63 36
i 3 295.952381 0.059524 42 26
i 8 295.96666 0.059524 63 30
i 3 296.011905 0.059524 42 30
i 8 296.026183 0.059524 63 24
i 3 296.071429 0.178571 35 82
i 3 296.071429 0.178571 42 70
i 8 296.076779 0.178571 64 55
i 7 296.085707 0.178571 84 38
i 8 296.085707 0.089286 65 28
i 8 296.174993 0.089286 65 20
i 3 296.25 0.178571 42 42
i 7 296.264279 0.178571 71 23
i 8 296.264279 0.178571 60 38
i 3 296.428571 0.178571 38 37
i 3 296.428571 0.178571 42 43
i 6 296.439272 0.357143 73 31
i 8 296.44285 0.178571 60 54
i 5 296.607143 0.178571 40 52
i 8 296.621421 0.059524 63 34
i 8 296.680945 0.059524 63 28
i 8 296.740469 0.059524 63 22
i 3 296.785714 0.178571 46 28
i 5 296.785714 0.357143 33 60
i 7 296.799993 0.178571 71 19
i 7 296.799993 0.178571 84 29
i 8 296.799993 0.089286 65 26
i 8 296.889279 0.089286 65 18
i 8 296.978564 0.178571 60 36
i 1 297.142857 0.714286 62 65 8074 3
i 10 297.142857 4.821429 50 48
i 10 297.142857 4.821429 53 48
i 10 297.142857 4.821429 57 48
i 10 297.142857 4.821429 60 48
i 3 297.142857 0.178571 35 115
i 4 297.142857 1.071429 38 68
i 7 297.142857 0.178571 70 37
i 8 297.142857 0.178571 68 78
i 3 297.321429 0.178571 42 27
i 3 297.5 0.178571 42 57
i 3 297.678571 0.178571 35 112
i 3 297.678571 0.178571 42 33
i 7 297.678571 0.178571 70 62
i 8 297.69285 0.178571 63 26
i 1 297.857143 0.178571 64 49 8092 3
i 3 297.857143 0.178571 38 45
i 7 297.857143 0.178571 84 58
i 8 297.871421 0.178571 60 59
i 1 298.035714 0.178571 65 57 8101 3
i 8 298.049993 0.178571 65 25
i 1 298.214286 0.357143 67 53 8108 3
i 3 298.214286 0.178571 46 45
i 7 298.228564 0.178571 84 29
i 8 298.228564 0.089286 63 35
i 8 298.31785 0.089286 63 25
i 8 298.407136 0.178571 63 29
i 1 298.571429 1.25 69 66 8120 3
i 8 298.585707 0.178571 61 63
i 3 298.75 0.178571 42 47
i 3 298.928571 0.178571 35 82
i 7 298.928571 0.178571 70 57
i 8 298.933921 0.178571 64 58
i 3 299.107143 0.178571 42 56
i 7 299.107143 0.178571 84 57
i 8 299.121421 0.178571 65 28
i 3 299.285714 0.178571 38 52
i 3 299.285714 0.178571 42 46
i 8 299.299993 0.178571 60 57
i 8 299.478564 0.059524 65 30
i 8 299.538088 0.059524 65 24
i 8 299.597612 0.059524 65 19
i 3 299.642857 0.178571 46 28
i 4 299.642857 0.357143 45 50
i 8 299.648207 0.178571 62 38
i 7 299.657136 0.178571 84 29
i 5 299.821429 0.178571 26 57
i 8 299.835707 0.089286 63 36
i 8 299.924993 0.089286 63 25
i 3 300 0.178571 35 115
i 5 300 0.178571 33 51
i 7 300 0.178571 70 69
i 8 300.00535 0.178571 67 73
i 3 300.178571 0.059524 42 58
i 5 300.178571 0.178571 36 56
i 3 300.238095 0.059524 42 42
i 3 300.297619 0.059524 42 26
i 1 300.357143 0.357143 67 50 8180 3
i 4 300.357143 0.892857 38 63
i 5 300.357143 0.714286 38 65
i 7 300.371421 0.178571 84 38
i 3 300.535714 0.178571 35 112
i 7 300.535714 0.178571 70 63
i 8 300.549993 0.178571 63 27
i 1 300.714286 0.178571 65 51 8190 3
i 3 300.714286 0.178571 38 29
i 7 300.714286 0.178571 84 38
i 8 300.728564 0.178571 60 60
i 1 300.892857 0.178571 64 44 8198 3
i 8 300.907136 0.178571 65 26
i 1 301.071429 1.25 62 55 8204 3
i 3 301.071429 0.178571 46 45
i 7 301.085707 0.178571 84 29
i 8 301.085707 0.089286 63 32
i 8 301.174993 0.089286 63 23
i 3 301.428571 0.178571 42 24
i 8 301.44285 0.178571 61 59
i 3 301.607143 0.059524 42 22
i 3 301.666667 0.059524 42 26
i 3 301.72619 0.059524 42 30
i 3 301.785714 0.178571 35 82
i 3 301.785714 0.178571 42 70
i 7 301.785714 0.178571 70 26
i 8 301.791064 0.178571 64 55
i 3 301.964286 0.178571 42 42
i 7 301.964286 0.178571 84 55
i 8 301.978564 0.178571 63 29
i 3 302.142857 0.178571 38 37
i 3 302.142857 0.178571 42 43
i 8 302.157136 0.178571 60 54
i 5 302.321429 0.178571 33 51
i 7 302.321429 0.089286 84 37
i 8 302.335707 0.178571 65 27
i 7 302.410714 0.089286 84 37
i 3 302.5 0.178571 46 28
i 5 302.5 0.357143 26 60
i 8 302.514279 0.178571 65 32
i 7 302.519629 0.178571 84 29
i 8 302.69285 0.089286 63 33
i 8 302.782136 0.089286 63 22
i 10 302.857143 4.821429 50 48
i 10 302.857143 4.821429 53 48
i 10 302.857143 4.821429 57 48
i 10 302.857143 4.821429 60 48
i 3 302.857143 0.178571 35 115
i 4 302.857143 1.071429 38 68
i 5 302.857143 0.178571 26 70
i 7 302.857143 0.178571 70 37
i 8 302.857143 0.178571 68 78
i 3 303.035714 0.178571 42 27
i 5 303.035714 0.178571 38 55
i 2 303.214286 0.178571 98 127
i 3 303.214286 0.178571 42 57
i 5 303.214286 0.178571 36 60
i 3 303.392857 0.178571 35 112
i 3 303.392857 0.178571 42 33
i 5 303.392857 0.178571 38 65
i 7 303.392857 0.178571 70 62
i 8 303.407136 0.178571 63 26
i 3 303.571429 0.178571 38 45
i 5 303.571429 0.178571 41 72
i 7 303.571429 0.178571 84 58
i 8 303.585707 0.178571 60 59
i 5 303.75 0.178571 40 58
i 8 303.764279 0.178571 65 25
i 3 303.928571 0.178571 46 45
i 5 303.928571 0.178571 38 64
i 7 303.94285 0.178571 84 29
i 8 303.94285 0.089286 63 35
i 8 304.032136 0.089286 63 25
i 5 304.107143 1.25 33 76
i 8 304.121421 0.178571 63 29
i 8 304.299993 0.178571 61 63
i 3 304.464286 0.178571 42 47
i 3 304.642857 0.178571 35 82
i 7 304.642857 0.178571 70 57
i 8 304.648207 0.178571 64 58
i 3 304.821429 0.178571 42 56
i 7 304.821429 0.178571 84 57
i 8 304.835707 0.178571 65 28
i 3 305 0.178571 38 52
i 3 305 0.178571 42 46
i 8 305.014279 0.178571 60 57
i 8 305.19285 0.059524 65 30
i 8 305.252374 0.059524 65 24
i 8 305.311898 0.059524 65 19
i 3 305.357143 0.178571 46 28
i 4 305.357143 0.357143 45 50
i 5 305.357143 0.178571 36 56
i 8 305.362493 0.178571 62 38
i 6 305.367843 0.892857 74 43
i 7 305.371421 0.178571 84 29
i 8 305.549993 0.089286 63 36
i 8 305.639279 0.089286 63 25
i 3 305.714286 0.178571 35 115
i 7 305.714286 0.178571 70 69
i 8 305.719636 0.178571 67 73
i 3 305.892857 0.059524 42 58
i 5 305.892857 1.071429 38 71
i 3 305.952381 0.059524 42 42
i 3 306.011905 0.059524 42 26
i 4 306.071429 0.892857 38 63
i 7 306.085707 0.178571 84 38
i 3 306.25 0.178571 35 112
i 7 306.25 0.178571 70 63
i 8 306.264279 0.178571 63 27
i 3 306.428571 0.178571 38 29
i 7 306.428571 0.178571 84 38
i 8 306.44285 0.178571 60 60
i 8 306.621421 0.178571 65 26
i 3 306.785714 0.178571 46 45
i 7 306.799993 0.178571 84 29
i 8 306.799993 0.089286 63 32
i 8 306.889279 0.089286 63 23
i 3 307.142857 0.178571 42 24
i 8 307.157136 0.178571 61 59
i 3 307.321429 0.059524 42 22
i 3 307.380952 0.059524 42 26
i 3 307.440476 0.059524 42 30
i 3 307.5 0.178571 35 82
i 3 307.5 0.178571 42 70
i 5 307.5 0.178571 33 54
i 7 307.5 0.178571 70 26
i 8 307.50535 0.178571 64 55
i 3 307.678571 0.178571 42 42
i 7 307.678571 0.178571 84 55
i 8 307.69285 0.178571 63 29
i 3 307.857143 0.178571 38 37
i 3 307.857143 0.178571 42 43
i 5 307.857143 0.714286 26 69
i 6 307.867843 0.535714 76 33
i 8 307.871421 0.178571 60 54
i 7 308.035714 0.089286 84 37
i 8 308.049993 0.178571 65 27
i 7 308.125 0.089286 84 37
i 3 308.214286 0.178571 46 28
i 8 308.228564 0.178571 65 32
i 7 308.233914 0.178571 84 29
i 8 308.407136 0.089286 63 33
i 8 308.496421 0.075007 63 22
i 10 308.571429 4.821429 50 48
i 10 308.571429 4.821429 53 48
i 10 308.571429 4.821429 57 48
i 10 308.571429 4.821429 60 48
i 3 308.571429 0.178571 35 115
i 4 308.571429 1.071429 38 68
i 7 308.571429 0.178571 70 34
i 8 308.571429 0.178571 68 78
i 1 308.75 1.428571 65 48 8479 3
i 3 308.75 0.178571 42 27
i 3 308.928571 0.178571 42 57
i 7 308.94285 0.178571 84 36
i 3 309.107143 0.178571 35 112
i 3 309.107143 0.178571 42 33
i 8 309.121421 0.178571 63 26
i 3 309.285714 0.178571 38 45
i 8 309.299993 0.178571 60 59
i 8 309.478564 0.178571 65 25
i 3 309.642857 0.178571 46 45
i 7 309.657136 0.178571 84 27
i 8 309.657136 0.178571 63 35
i 8 309.835707 0.089286 63 29
i 8 309.924993 0.089286 63 21
i 8 310.014279 0.178571 61 63
i 1 310.178571 0.178571 64 35 8514 3
i 3 310.178571 0.178571 42 47
i 1 310.357143 0.357143 62 43 8518 3
i 3 310.357143 0.178571 35 82
i 8 310.362493 0.178571 64 58
i 7 310.371421 0.178571 84 36
i 3 310.535714 0.178571 42 56
i 8 310.549993 0.178571 65 28
i 1 310.714286 0.714286 64 38 8529 3
i 3 310.714286 0.178571 38 52
i 3 310.714286 0.178571 42 46
i 8 310.728564 0.178571 60 57
i 8 310.907136 0.178571 65 30
i 3 311.071429 0.178571 46 28
i 4 311.071429 0.357143 45 50
i 8 311.076779 0.178571 62 41
i 5 311.25 0.178571 26 57
i 7 311.264279 0.178571 71 25
i 8 311.264279 0.059524 63 36
i 8 311.323802 0.059524 63 30
i 8 311.383326 0.059524 63 24
i 3 311.428571 0.178571 35 115
i 5 311.428571 0.178571 33 51
i 8 311.433921 0.178571 67 73
i 3 311.607143 0.059524 42 58
i 5 311.607143 0.178571 36 56
i 8 311.621421 0.178571 65 30
i 3 311.666667 0.059524 42 42
i 3 311.72619 0.059524 42 26
i 4 311.785714 0.892857 38 63
i 5 311.785714 0.714286 38 65
i 7 311.799993 0.178571 84 36
i 3 311.964286 0.178571 35 112
i 8 311.978564 0.178571 63 27
i 1 312.142857 0.178571 65 40 8579 3
i 3 312.142857 0.178571 38 29
i 8 312.157136 0.178571 60 60
i 1 312.321429 0.178571 64 34 8585 3
i 8 312.335707 0.178571 65 26
i 1 312.5 1.25 62 41 8590 3
i 3 312.5 0.178571 46 45
i 7 312.514279 0.178571 84 27
i 8 312.514279 0.089286 63 32
i 8 312.603564 0.089286 63 23
i 8 312.69285 0.044643 63 36
i 8 312.737493 0.044643 63 32
i 8 312.782136 0.044643 63 27
i 8 312.826779 0.044643 63 23
i 3 312.857143 0.178571 42 24
i 8 312.871421 0.178571 61 59
i 3 313.035714 0.059524 42 22
i 8 313.041064 0.178571 66 40
i 3 313.095238 0.059524 42 26
i 3 313.154762 0.059524 42 30
i 3 313.214286 0.178571 35 82
i 3 313.214286 0.178571 42 70
i 8 313.219636 0.178571 64 55
i 7 313.228564 0.178571 84 36
i 3 313.392857 0.178571 42 42
i 8 313.407136 0.178571 63 29
i 3 313.571429 0.178571 38 37
i 3 313.571429 0.178571 42 43
i 8 313.585707 0.178571 60 54
i 5 313.75 0.178571 33 51
i 8 313.764279 0.178571 65 27
i 3 313.928571 0.178571 46 28
i 5 313.928571 0.357143 26 60
i 7 313.94285 0.178571 84 27
i 8 313.94285 0.059524 65 32
i 8 314.002374 0.059524 65 26
i 8 314.061898 0.059524 65 20
i 8 314.121421 0.178571 63 33
i 10 314.285714 4.821429 50 48
i 10 314.285714 4.821429 53 48
i 10 314.285714 4.821429 57 48
i 10 314.285714 4.821429 60 48
i 3 314.285714 0.178571 35 115
i 4 314.285714 1.071429 38 68
i 5 314.285714 0.178571 26 69
i 7 314.285714 0.178571 70 35
i 8 314.285714 0.178571 68 78
i 3 314.464286 0.178571 42 27
i 5 314.464286 0.178571 33 54
i 3 314.642857 0.178571 42 57
i 5 314.642857 0.178571 36 59
i 7 314.657136 0.178571 84 38
i 3 314.821429 0.178571 35 112
i 3 314.821429 0.178571 42 33
i 5 314.821429 0.178571 38 64
i 8 314.835707 0.178571 63 26
i 3 315 0.178571 38 45
i 5 315 0.178571 40 61
i 8 315.014279 0.178571 60 59
i 5 315.178571 0.178571 41 71
i 8 315.19285 0.178571 65 25
i 3 315.357143 0.178571 46 45
i 5 315.357143 0.178571 40 58
i 7 315.371421 0.178571 84 29
i 8 315.371421 0.089286 63 35
i 8 315.460707 0.089286 63 24
i 5 315.535714 1.25 38 75
i 8 315.549993 0.178571 63 29
i 8 315.728564 0.178571 61 63
i 3 315.892857 0.178571 42 47
i 3 316.071429 0.178571 35 82
i 8 316.076779 0.178571 64 58
i 7 316.085707 0.178571 84 38
i 3 316.25 0.178571 42 56
i 8 316.264279 0.178571 65 28
i 3 316.428571 0.178571 38 52
i 3 316.428571 0.178571 42 46
i 8 316.44285 0.178571 60 57
i 8 316.621421 0.178571 65 30
i 3 316.785714 0.178571 46 28
i 4 316.785714 0.357143 45 50
i 5 316.785714 0.178571 36 55
i 8 316.791064 0.178571 62 38
i 7 316.799993 0.178571 84 29
i 8 316.978564 0.089286 63 36
i 8 317.06785 0.089286 63 24
i 3 317.142857 0.178571 35 115
i 8 317.148207 0.178571 67 73
i 3 317.321429 0.059524 42 58
i 5 317.321429 1.071429 33 69
i 3 317.380952 0.059524 42 42
i 3 317.440476 0.059524 42 26
i 4 317.5 0.892857 38 63
i 6 317.5107 1.428571 69 28
i 7 317.514279 0.178571 84 38
i 3 317.678571 0.178571 35 112
i 3 317.857143 0.178571 38 29
i 8 317.871421 0.178571 60 60
i 8 318.049993 0.059524 63 38
i 8 318.109517 0.059524 63 32
i 8 318.169041 0.059524 63 25
i 3 318.214286 0.178571 46 45
i 7 318.228564 0.178571 84 29
i 8 318.228564 0.178571 63 32
i 8 318.228564 0.089286 65 29
i 8 318.31785 0.089286 65 21
i 8 318.407136 0.178571 60 40
i 3 318.571429 0.178571 42 24
i 8 318.585707 0.178571 61 59
i 3 318.75 0.059524 42 22
i 8 318.764279 0.059524 63 36
i 3 318.809524 0.059524 42 26
i 8 318.823802 0.059524 63 30
i 3 318.869048 0.059524 42 30
i 8 318.883326 0.059524 63 24
i 3 318.928571 0.178571 35 82
i 3 318.928571 0.178571 42 70
i 5 318.928571 0.178571 36 54
i 8 318.933921 0.178571 64 55
i 7 318.94285 0.178571 84 38
i 8 318.94285 0.089286 65 28
i 8 319.032136 0.089286 65 20
i 3 319.107143 0.178571 42 42
i 7 319.121421 0.178571 71 23
i 8 319.121421 0.178571 60 38
i 3 319.285714 0.178571 38 37
i 3 319.285714 0.178571 42 43
i 5 319.285714 0.714286 26 68
i 8 319.299993 0.178571 60 54
i 8 319.478564 0.059524 63 34
i 8 319.538088 0.059524 63 28
i 8 319.597612 0.059524 63 22
i 3 319.642857 0.178571 46 28
i 7 319.657136 0.178571 71 19
i 7 319.657136 0.178571 84 29
i 8 319.657136 0.089286 65 26
i 8 319.746421 0.089286 65 18
i 8 319.835707 0.178571 60 36
i 1 320 1.071429 65 62 8866 3
i 10 320 4.821429 46 47
i 10 320 4.821429 50 47
i 10 320 4.821429 53 47
i 10 320 4.821429 57 47
i 3 320 0.178571 35 115
i 4 320 1.071429 46 62
i 7 320 0.178571 70 26
i 8 320 0.178571 67 56
i 3 320.178571 0.178571 42 27
i 3 320.357143 0.178571 42 57
i 3 320.535714 0.178571 35 112
i 3 320.535714 0.178571 42 33
i 3 320.714286 0.178571 38 45
i 1 321.071429 0.178571 64 45 8887 3
i 3 321.071429 0.178571 46 45
i 7 321.085707 0.178571 84 20
i 1 321.25 0.178571 62 53 8891 3
i 1 321.428571 0.892857 60 49 8895 3
i 8 321.44285 0.178571 60 43
i 3 321.607143 0.178571 42 47
i 3 321.785714 0.178571 35 82
i 3 321.964286 0.178571 42 56
i 3 322.142857 0.178571 38 52
i 3 322.142857 0.178571 42 46
i 5 322.321429 0.178571 34 55
i 3 322.5 0.178571 46 28
i 4 322.5 0.357143 41 44
i 5 322.5 0.178571 36 49
i 7 322.514279 0.178571 84 20
i 8 322.514279 0.089286 63 26
i 8 322.603564 0.089286 63 20
i 5 322.678571 0.714286 38 63
i 8 322.69285 0.178571 65 23
i 1 322.857143 0.357143 62 51 8925 3
i 3 322.857143 0.178571 35 115
i 3 323.035714 0.059524 42 58
i 3 323.095238 0.059524 42 42
i 3 323.154762 0.059524 42 26
i 1 323.214286 0.178571 65 55 8936 3
i 4 323.214286 0.892857 46 57
i 8 323.219636 0.178571 64 44
i 1 323.392857 0.178571 67 48 8940 3
i 3 323.392857 0.178571 35 112
i 1 323.571429 0.714286 65 59 8945 3
i 3 323.571429 0.178571 38 29
i 3 323.928571 0.178571 46 45
i 7 323.94285 0.178571 84 20
i 1 324.285714 0.892857 62 47 8955 3
i 3 324.285714 0.178571 42 24
i 8 324.299993 0.178571 60 40
i 3 324.464286 0.059524 42 22
i 3 324.52381 0.059524 42 26
i 3 324.583333 0.059524 42 30
i 3 324.642857 0.178571 35 82
i 3 324.642857 0.178571 42 70
i 3 324.821429 0.178571 42 42
i 3 325 0.178571 38 37
i 3 325 0.178571 42 43
i 8 325.014279 0.089286 63 27
i 8 325.103564 0.089286 63 20
i 5 325.178571 0.178571 29 49
i 3 325.357143 0.178571 46 28
i 5 325.357143 0.357143 34 58
i 7 325.371421 0.178571 84 20
i 8 325.371421 0.178571 65 23
i 10 325.714286 4.821429 46 47
i 10 325.714286 4.821429 50 47
i 10 325.714286 4.821429 53 47
i 10 325.714286 4.821429 57 47
i 3 325.714286 0.178571 35 115
i 4 325.714286 1.071429 46 62
i 5 325.714286 0.178571 34 67
i 7 325.714286 0.178571 70 26
i 8 325.714286 0.178571 67 56
i 3 325.892857 0.178571 42 27
i 5 325.892857 0.178571 29 53
i 3 326.071429 0.178571 42 57
i 5 326.071429 0.178571 34 57
i 3 326.25 0.178571 35 112
i 3 326.25 0.178571 42 33
i 5 326.25 0.178571 36 62
i 3 326.428571 0.178571 38 45
i 5 326.428571 0.178571 38 68
i 5 326.607143 0.178571 41 57
i 2 326.785714 0.178571 103 127
i 3 326.785714 0.178571 46 45
i 5 326.785714 0.178571 38 62
i 7 326.799993 0.178571 84 20
i 5 326.964286 1.25 34 73
i 8 327.157136 0.178571 60 43
i 3 327.321429 0.178571 42 47
i 2 327.5 0.178571 98 127
i 3 327.5 0.178571 35 82
i 3 327.678571 0.178571 42 56
i 3 327.857143 0.178571 38 52
i 3 327.857143 0.178571 42 38
i 6 327.867843 0.892857 69 39
i 3 328.214286 0.178571 42 31
i 4 328.214286 0.357143 41 44
i 5 328.214286 0.178571 36 54
i 7 328.228564 0.178571 84 20
i 8 328.228564 0.089286 63 26
i 8 328.31785 0.089286 63 20
i 8 328.407136 0.178571 65 23
i 3 328.571429 0.178571 35 115
i 3 328.75 0.059524 42 58
i 5 328.75 1.071429 29 67
i 3 328.809524 0.059524 42 42
i 3 328.869048 0.059524 42 26
i 4 328.928571 0.892857 46 57
i 8 328.933921 0.178571 64 44
i 3 329.107143 0.178571 35 112
i 3 329.285714 0.178571 38 29
i 3 329.642857 0.178571 46 45
i 7 329.657136 0.178571 84 20
i 3 330 0.178571 42 24
i 8 330.014279 0.178571 60 40
i 3 330.178571 0.059524 42 22
i 3 330.238095 0.059524 42 26
i 3 330.297619 0.059524 42 30
i 3 330.357143 0.178571 35 82
i 3 330.357143 0.178571 42 70
i 5 330.357143 0.178571 33 52
i 6 330.367843 0.714286 77 36
i 3 330.535714 0.178571 42 42
i 3 330.714286 0.178571 38 37
i 3 330.714286 0.178571 42 43
i 5 330.714286 0.714286 34 65
i 8 330.728564 0.089286 63 27
i 8 330.81785 0.089286 63 20
i 3 331.071429 0.178571 46 28
i 7 331.085707 0.178571 84 20
i 8 331.085707 0.178571 65 23
i 1 331.428571 0.714286 67 60 9135 3
i 10 331.428571 4.821429 43 47
i 10 331.428571 4.821429 46 47
i 10 331.428571 4.821429 50 47
i 10 331.428571 4.821429 53 47
i 4 331.428571 1.071429 43 64
i 8 331.428571 0.178571 67 38
i 1 332.142857 0.178571 69 49 9140 3
i 1 332.321429 0.178571 70 57 9142 3
i 1 332.5 0.357143 69 50 9145 3
i 1 332.857143 1.071429 67 61 9147 3
i 8 332.871421 0.178571 60 29
i 7 333.228564 0.178571 84 24
i 4 333.928571 0.357143 38 46
i 5 333.928571 0.178571 31 57
i 8 333.94285 0.178571 63 18
i 5 334.107143 0.178571 33 50
i 8 334.121421 0.178571 65 16
i 5 334.285714 0.714286 34 64
i 1 334.464286 0.178571 65 43 9164 3
i 1 334.642857 0.178571 67 52 9167 3
i 4 334.642857 0.892857 43 59
i 8 334.648207 0.178571 64 30
i 1 334.821429 0.178571 69 48 9170 3
i 1 335 1.607143 62 55 9173 3
i 8 335.728564 0.178571 60 27
i 7 336.085707 0.178571 84 24
i 5 336.25 0.178571 38 51
i 5 336.428571 0.178571 34 54
i 8 336.44285 0.089286 63 18
i 8 336.532136 0.089286 63 14
i 5 336.607143 0.535714 31 61
i 8 336.799993 0.178571 65 16
i 1 337.142857 0.714286 64 60 9200 3
i 10 337.142857 1.785714 45 40
i 10 337.142857 1.785714 50 40
i 10 337.142857 1.785714 52 40
i 4 337.142857 1.071429 45 62
i 8 337.142857 0.178571 67 38
i 1 337.857143 0.357143 62 45 9205 3
i 1 338.214286 0.357143 64 54 9208 3
i 1 338.571429 0.892857 69 61 9210 3
i 8 338.585707 0.178571 60 29
i 5 339.464286 0.178571 33 56
i 4 339.642857 0.357143 40 44
i 5 339.642857 0.178571 35 50
i 8 339.657136 0.178571 63 18
i 5 339.821429 0.714286 37 63
i 8 339.835707 0.178571 65 16
i 10 340 1.25 45 34
i 10 340 1.25 49 34
i 10 340 1.25 52 34
i 1 340.178571 0.178571 67 43 9231 3
i 1 340.357143 0.357143 64 52 9234 3
i 4 340.357143 0.892857 45 57
i 8 340.362493 0.178571 64 30
i 1 340.714286 0.357143 62 44 9239 3
i 1 341.071429 1.25 61 51 9241 3
i 8 341.44285 0.178571 60 27
i 8 342.157136 0.089286 63 18
i 8 342.246421 0.089286 63 14
i 5 342.321429 0.178571 40 52
i 5 342.5 0.357143 33 60
i 8 342.514279 0.178571 65 16
i 10 342.857143 4.821429 50 34
i 10 342.857143 4.821429 53 34
i 10 342.857143 4.821429 57 34
i 10 342.857143 4.821429 60 34
i 3 342.857143 0.178571 35 115
i 4 342.857143 2.5 38 50
i 8 342.857143 0.178571 67 38
i 1 343.035714 1.428571 65 48 9266 3
i 3 343.035714 0.178571 42 27
i 3 343.214286 0.178571 42 57
i 3 343.392857 0.178571 35 112
i 3 343.392857 0.178571 42 33
i 3 343.571429 0.178571 38 45
i 3 343.928571 0.178571 46 45
i 6 344.296414 1.25 76 33
i 8 344.299993 0.178571 60 29
i 1 344.464286 0.178571 64 35 9284 3
i 3 344.464286 0.178571 42 47
i 1 344.642857 0.357143 62 43 9288 3
i 3 344.642857 0.178571 35 82
i 7 344.657136 0.178571 84 24
i 3 344.821429 0.178571 42 56
i 1 345 0.714286 64 38 9296 3
i 3 345 0.178571 38 52
i 3 345 0.178571 42 46
i 3 345.357143 0.178571 46 28
i 8 345.371421 0.178571 63 18
i 5 345.535714 0.357143 38 49
i 8 345.549993 0.178571 65 16
i 3 345.714286 0.178571 35 115
i 3 345.892857 0.059524 42 58
i 5 345.892857 0.535714 33 44
i 3 345.952381 0.059524 42 42
i 3 346.011905 0.059524 42 26
i 8 346.076779 0.178571 64 30
i 3 346.25 0.178571 35 112
i 1 346.428571 0.178571 65 40 9325 3
i 3 346.428571 0.178571 38 29
i 1 346.607143 0.178571 64 34 9330 3
i 1 346.785714 1.25 62 41 9333 3
i 3 346.785714 0.178571 46 45
i 3 347.142857 0.178571 42 24
i 8 347.157136 0.178571 60 27
i 3 347.321429 0.059524 42 22
i 6 347.332129 0.892857 74 31
i 3 347.380952 0.059524 42 26
i 3 347.440476 0.059524 42 30
i 3 347.5 0.178571 35 82
i 3 347.5 0.178571 42 70
i 5 347.5 0.178571 36 40
i 7 347.514279 0.178571 84 24
i 3 347.678571 0.178571 42 42
i 3 347.857143 0.178571 38 37
i 3 347.857143 0.178571 42 43
i 5 347.857143 0.714286 26 51
i 8 347.871421 0.089286 63 18
i 8 347.960707 0.089286 63 14
i 3 348.214286 0.178571 46 28
i 8 348.228564 0.178571 65 16
i 10 348.571429 4.821429 46 33
i 10 348.571429 4.821429 50 33
i 10 348.571429 4.821429 53 33
i 10 348.571429 4.821429 57 33
i 3 348.571429 0.178571 35 115
i 4 348.571429 2.5 46 45
i 5 348.571429 0.178571 34 67
i 3 348.75 0.178571 42 27
i 5 348.75 0.178571 29 53
i 2 348.928571 0.178571 98 127
i 3 348.928571 0.178571 42 57
i 5 348.928571 0.178571 34 57
i 3 349.107143 0.178571 35 112
i 3 349.107143 0.178571 42 33
i 5 349.107143 0.178571 36 62
i 3 349.285714 0.178571 38 45
i 5 349.285714 0.178571 38 68
i 5 349.464286 0.178571 41 57
i 3 349.642857 0.178571 46 45
i 5 349.642857 0.178571 38 62
i 5 349.821429 1.25 34 73
i 8 350.00535 0.178571 62 35
i 3 350.178571 0.178571 42 47
i 3 350.357143 0.178571 35 82
i 3 350.535714 0.178571 42 56
i 3 350.714286 0.178571 38 52
i 3 350.714286 0.178571 42 46
i 3 351.071429 0.178571 46 28
i 5 351.071429 0.178571 36 54
i 3 351.428571 0.178571 35 115
i 3 351.607143 0.059524 42 58
i 5 351.607143 1.071429 29 67
i 3 351.666667 0.059524 42 42
i 3 351.72619 0.059524 42 26
i 3 351.964286 0.178571 35 112
i 3 352.142857 0.178571 38 29
i 3 352.5 0.178571 46 45
i 8 352.50535 0.178571 64 32
i 3 352.857143 0.178571 42 24
i 3 353.035714 0.059524 42 22
i 3 353.095238 0.059524 42 26
i 3 353.154762 0.059524 42 30
i 3 353.214286 0.178571 35 82
i 3 353.214286 0.178571 42 70
i 5 353.214286 0.178571 33 52
i 3 353.392857 0.178571 42 42
i 3 353.571429 0.178571 38 37
i 3 353.571429 0.178571 42 43
i 5 353.571429 0.714286 34 65
i 3 353.928571 0.178571 46 28
i 10 354.285714 4.821429 50 34
i 10 354.285714 4.821429 53 34
i 10 354.285714 4.821429 57 34
i 10 354.285714 4.821429 60 34
i 3 354.285714 0.178571 35 115
i 4 354.285714 2.5 38 39
i 3 354.464286 0.178571 42 27
i 3 354.642857 0.178571 42 57
i 1 354.821429 1.607143 62 47 9487 3
i 3 354.821429 0.178571 35 112
i 3 354.821429 0.178571 42 33
i 3 355 0.178571 38 45
i 8 355.014279 0.178571 60 28
i 3 355.357143 0.178571 46 45
i 3 355.892857 0.178571 42 47
i 3 356.071429 0.178571 35 82
i 3 356.25 0.178571 42 56
i 1 356.428571 0.178571 64 36 9505 3
i 3 356.428571 0.178571 38 52
i 3 356.428571 0.178571 42 46
i 6 356.439272 1.607143 76 25
i 1 356.607143 0.178571 65 43 9511 3
i 1 356.785714 0.357143 64 37 9516 3
i 3 356.785714 0.178571 46 28
i 5 356.964286 0.357143 38 49
i 1 357.142857 0.714286 62 44 9521 3
i 3 357.142857 0.178571 35 115
i 8 357.148207 0.178571 64 24
i 3 357.321429 0.059524 42 58
i 5 357.321429 0.535714 33 44
i 3 357.380952 0.059524 42 42
i 3 357.440476 0.059524 42 26
i 3 357.678571 0.178571 35 112
i 3 357.857143 0.178571 38 29
i 3 358.214286 0.178571 46 45
i 1 358.392857 1.071429 57 37 9542 3
i 3 358.571429 0.178571 42 24
i 3 358.75 0.059524 42 22
i 3 358.809524 0.059524 42 26
i 3 358.869048 0.059524 42 30
i 3 358.928571 0.178571 35 82
i 3 358.928571 0.178571 42 70
i 5 358.928571 0.178571 36 40
i 3 359.107143 0.178571 42 42
i 3 359.285714 0.178571 38 37
i 3 359.285714 0.178571 42 43
i 5 359.285714 0.714286 26 51
i 3 359.642857 0.178571 46 28
i 10 360 4.821429 50 32
i 10 360 4.821429 52 32
i 10 360 4.821429 57 32
i 3 360 0.178571 35 115
i 3 360.178571 0.178571 42 27
i 3 360.357143 0.178571 42 57
i 3 360.535714 0.178571 35 112
i 3 360.535714 0.178571 42 33
i 3 360.714286 0.178571 38 45
i 3 361.071429 0.178571 46 45
i 3 361.607143 0.178571 42 47
i 3 361.785714 0.178571 35 82
i 3 361.964286 0.178571 42 56
i 3 362.142857 0.178571 38 52
i 3 362.142857 0.178571 42 46
i 3 362.5 0.178571 46 28
i 3 362.857143 0.178571 35 115
i 3 363.035714 0.059524 42 58
i 3 363.095238 0.059524 42 42
i 3 363.154762 0.059524 42 26
i 3 363.392857 0.178571 35 112
i 3 363.571429 0.178571 38 29
i 3 363.928571 0.178571 46 45
i 3 364.285714 0.178571 42 24
i 3 364.464286 0.059524 42 22
i 3 364.52381 0.059524 42 26
i 3 364.583333 0.059524 42 30
i 3 364.642857 0.178571 35 82
i 3 364.642857 0.178571 42 70
i 3 364.821429 0.178571 42 42
i 3 365 0.178571 38 37
i 3 365 0.178571 42 43
i 3 365.357143 0.178571 46 28
i 10 365.714286 4.821429 50 34
i 10 365.714286 4.821429 53 34
i 10 365.714286 4.821429 57 34
i 10 365.714286 4.821429 60 34
i 4 365.714286 2.5 38 39
i 7 365.714286 0.178571 70 21
i 1 365.892857 1.428571 65 48 9645 3
i 8 367.148207 0.178571 62 35
i 1 367.321429 0.178571 64 35 9649 3
i 1 367.5 0.357143 62 43 9652 3
i 1 367.857143 0.714286 64 38 9654 3
i 5 368.392857 0.357143 38 49
i 5 368.75 0.535714 33 44
i 1 369.285714 0.178571 65 40 9660 3
i 1 369.464286 0.178571 64 34 9663 3
i 1 369.642857 1.25 62 41 9665 3
i 8 369.648207 0.178571 64 32
i 5 370.357143 0.178571 36 40
i 5 370.714286 0.714286 26 51
i 2 372.5 0.178571 103 127
i 2 373.214286 0.178571 98 127
i 6 374.653557 1.428571 69 28
i 10 377.142857 4.821429 50 32
i 10 377.142857 4.821429 52 32
i 10 377.142857 4.821429 57 32
i 4 377.142857 2.5 38 30
i 1 377.678571 1.607143 62 47 9687 3
i 8 377.871421 0.178571 60 28
i 1 379.285714 0.178571 64 36 9691 3
i 1 379.464286 0.178571 65 43 9693 3
i 1 379.642857 0.357143 64 37 9696 3
i 5 379.821429 0.357143 38 49
i 1 380 0.714286 62 44 9699 3
i 8 380.00535 0.178571 64 24
i 5 380.178571 0.535714 33 44
i 1 381.25 1.071429 57 37 9706 3
i 5 381.785714 0.178571 36 40
i 5 382.142857 0.714286 26 51
i 6 385.0107 1.607143 76 25
i 10 388.571429 4.821429 50 22
i 10 388.571429 4.821429 53 22
i 10 388.571429 4.821429 57 22
i 10 388.571429 4.821429 60 22
i 1 395 0.357143 64 32 9725 3
i 1 395.357143 0.178571 65 36 9727 3
i 1 395.535714 0.178571 64 28 9729 3
i 1 395.714286 3.035714 62 34 9731 3
i 6 397.153557 1.428571 74 22
f 0 413.428571
</CsScore>
</CsoundSynthesizer>
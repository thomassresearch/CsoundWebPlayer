<!--
Performance: Mad Cello & Violent Violin — Version 2
Description: Seven-minute D-minor duet with a slightly distorted cello and violin, and a second, more distorted violin through its own Tube Overdrive at 24 dB Drive. Original opening through bar 56; three-minute thematic escalation, 32nd-note climax and distorted return; original calm ending shifted to 6:06.667. Latest source mixer/effects retained, with final Master headroom adjustment if required.
Created: 2026-10-14T03:31:26.262Z

This CSD was created with Orchestron.
Design instruments visually and hear ideas take shape.
Build expressive performances with sequencers, arpeggiators, live controls, and flexible audio routing.
Export portable Csound projects for rendering, sharing, and further sound design.

GitHub: https://github.com/thomassresearch/orchestron
-->
<CsoundSynthesizer>
<CsOptions>
;-d -W -f -o Sad_Mad_Cello_Version_2.wav
-m 16 -b 16384 -o dsp
</CsOptions>
<CsInstruments>
sr = 48000
ksmps = 32
nchnls = 2
0dbfs = 1.0
; Mixer routing: patch, strip and route instruments execute in signal-flow order.
; Offline mixer: saved coefficients; no interactive mixer controls or meters.
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
gi_vcs_legato_9bbf02efd82322aadc5d_serial init 0
gk_vcs_legato_9bbf02efd82322aadc5d_winner init 0
gk_vcs_legato_9bbf02efd82322aadc5d_note init 69
gk_vcs_legato_9bbf02efd82322aadc5d_velocity init 0
gk_vcs_legato_9bbf02efd82322aadc5d_channel init 1
gk_vcs_legato_9bbf02efd82322aadc5d_seen init 0
gk_vcs_legato_9bbf02efd82322aadc5d_cancelled init 0
; legato note-event collector (not subject to synthesis maxalloc)
instr 1
 gi_vcs_legato_9bbf02efd82322aadc5d_serial = gi_vcs_legato_9bbf02efd82322aadc5d_serial + 1
 iSerial = gi_vcs_legato_9bbf02efd82322aadc5d_serial
 iNote = p4
 iVelocity = p5
 iChannel = p7
 iSerial = (p6 > 0 ? p6 : iSerial)
 xtratim ksmps / sr
 kReleased release
 if iSerial <= gk_vcs_legato_9bbf02efd82322aadc5d_cancelled then
  turnoff
 elseif kReleased == 0 && iSerial > gk_vcs_legato_9bbf02efd82322aadc5d_winner then
  gk_vcs_legato_9bbf02efd82322aadc5d_winner = iSerial
  gk_vcs_legato_9bbf02efd82322aadc5d_note = iNote
  gk_vcs_legato_9bbf02efd82322aadc5d_velocity = iVelocity
  gk_vcs_legato_9bbf02efd82322aadc5d_channel = iChannel
 endif
endin
gi_vcs_legato_00e3e584e242f926ff6b_serial init 0
gk_vcs_legato_00e3e584e242f926ff6b_winner init 0
gk_vcs_legato_00e3e584e242f926ff6b_note init 69
gk_vcs_legato_00e3e584e242f926ff6b_velocity init 0
gk_vcs_legato_00e3e584e242f926ff6b_channel init 1
gk_vcs_legato_00e3e584e242f926ff6b_seen init 0
gk_vcs_legato_00e3e584e242f926ff6b_cancelled init 0
; legato note-event collector (not subject to synthesis maxalloc)
instr 2
 gi_vcs_legato_00e3e584e242f926ff6b_serial = gi_vcs_legato_00e3e584e242f926ff6b_serial + 1
 iSerial = gi_vcs_legato_00e3e584e242f926ff6b_serial
 iNote = p4
 iVelocity = p5
 iChannel = p7
 iSerial = (p6 > 0 ? p6 : iSerial)
 xtratim ksmps / sr
 kReleased release
 if iSerial <= gk_vcs_legato_00e3e584e242f926ff6b_cancelled then
  turnoff
 elseif kReleased == 0 && iSerial > gk_vcs_legato_00e3e584e242f926ff6b_winner then
  gk_vcs_legato_00e3e584e242f926ff6b_winner = iSerial
  gk_vcs_legato_00e3e584e242f926ff6b_note = iNote
  gk_vcs_legato_00e3e584e242f926ff6b_velocity = iVelocity
  gk_vcs_legato_00e3e584e242f926ff6b_channel = iChannel
 endif
endin
gi_vcs_legato_f5fab31057c4a1a07dde_serial init 0
gk_vcs_legato_f5fab31057c4a1a07dde_winner init 0
gk_vcs_legato_f5fab31057c4a1a07dde_note init 69
gk_vcs_legato_f5fab31057c4a1a07dde_velocity init 0
gk_vcs_legato_f5fab31057c4a1a07dde_channel init 1
gk_vcs_legato_f5fab31057c4a1a07dde_seen init 0
gk_vcs_legato_f5fab31057c4a1a07dde_cancelled init 0
; legato note-event collector (not subject to synthesis maxalloc)
instr 3
 gi_vcs_legato_f5fab31057c4a1a07dde_serial = gi_vcs_legato_f5fab31057c4a1a07dde_serial + 1
 iSerial = gi_vcs_legato_f5fab31057c4a1a07dde_serial
 iNote = p4
 iVelocity = p5
 iChannel = p7
 iSerial = (p6 > 0 ? p6 : iSerial)
 xtratim ksmps / sr
 kReleased release
 if iSerial <= gk_vcs_legato_f5fab31057c4a1a07dde_cancelled then
  turnoff
 elseif kReleased == 0 && iSerial > gk_vcs_legato_f5fab31057c4a1a07dde_winner then
  gk_vcs_legato_f5fab31057c4a1a07dde_winner = iSerial
  gk_vcs_legato_f5fab31057c4a1a07dde_note = iNote
  gk_vcs_legato_f5fab31057c4a1a07dde_velocity = iVelocity
  gk_vcs_legato_f5fab31057c4a1a07dde_channel = iChannel
 endif
endin
gk_vcs_score_cc[] init 2048
instr 9000
  iindex = int(p4)
  gk_vcs_score_cc[iindex] = p5
endin
chnset 0.083519303645007287, "__vcs_perf_e69f9ed1513ef7b9acc4616e3c0e3006e278cecf6132812ba1ec7b9db7bbd654"
chnset 0.41008501778123907, "__vcs_perf_fdf0cce68ffdc1f9756bcbc1faf2f8ca5789fcdf2a5918749a163ca7ea1d93c3"
chnset 0.0016196692893281578, "__vcs_perf_11a8985e20e91123c1bcb694bafd6f91b0393b1fb071e08694bcd3374786e8a6"
connect "vcs_mix_748e855da3c56041933609eb", "left", "vcs_mix_ffb3434f4ca77f81c225da20", "p_360f84035942243c6a36537a"
connect "vcs_mix_748e855da3c56041933609eb", "right", "vcs_mix_ffb3434f4ca77f81c225da20", "p_27042f4e6eca7d0b2a7ee402"
chnset 0.11341774234315381, "__vcs_perf_448c234655e469f20d09048051536c7e050856de590da460d8444ee8be56ad5c"
chnset 0.41141452137846501, "__vcs_perf_4724a13946995eba30021491d968f36e88114c41d705ef3426089289be1e0b86"
chnset 0.75, "__vcs_perf_121ad4ad91f6b7b7312835eb8bd42758ca8092ca7945161072fdb38c33eb011e"
chnset 0.0089999999999999993, "__vcs_perf_641f49647f9ba7f6ace247031de78cfbe0eab50b305f7ccdb63e2086d9f753a9"
connect "vcs_mix_6192de5da5ad90108de5c9ef", "left", "vcs_mix_0e164d5d03b1cf22a3b37f40", "p_360f84035942243c6a36537a"
connect "vcs_mix_6192de5da5ad90108de5c9ef", "right", "vcs_mix_0e164d5d03b1cf22a3b37f40", "p_27042f4e6eca7d0b2a7ee402"
chnset 0.8799414014851209, "__vcs_perf_f9266fd76e756c6a05ed46b97f9f8b537ed62114298ab40fb6a5abbdd83b9626"
chnset 3231.0311115618661, "__vcs_perf_3c36cd5bce5bb1006444b99e9bb745945ddf03d9031d1821d743a64d686e2c6b"
connect "vcs_mix_fbb8a5d6b07e818b12093ef4", "left", "vcs_mix_ba99917a15c479fd5286a077", "p_360f84035942243c6a36537a"
connect "vcs_mix_fbb8a5d6b07e818b12093ef4", "right", "vcs_mix_ba99917a15c479fd5286a077", "p_27042f4e6eca7d0b2a7ee402"
chnset 12.709191849455237, "__vcs_perf_4ff61364d251b0d824001e651f27707854df11840f9171c354e3515911a29697"
chnset 1.1784923980012536, "__vcs_perf_d9cc200cecf31415bf8c0352cf7f963342e7dda9b023380ac013cac8b583eb6e"
chnset 8842.7342538111061, "__vcs_perf_ce18956c494704ce53c2f5c64011b32e98a9cc9f1d6e1d30d7404b9020caae83"
connect "vcs_mix_1c1a3a2ca316aee9c74f0d03", "left", "vcs_mix_ff2de93e1732c6035468789d", "p_360f84035942243c6a36537a"
connect "vcs_mix_1c1a3a2ca316aee9c74f0d03", "right", "vcs_mix_ff2de93e1732c6035468789d", "p_27042f4e6eca7d0b2a7ee402"
connect "vcs_mix_3a89daedb9e641b7db5239e9", "left", "vcs_mix_0c8e75599081be1983d5df8b", "p_360f84035942243c6a36537a"
connect "vcs_mix_3a89daedb9e641b7db5239e9", "right", "vcs_mix_0c8e75599081be1983d5df8b", "p_27042f4e6eca7d0b2a7ee402"
chnset 0.37528509788757508, "__vcs_perf_79238889f260aee6e7fee44bdc02d0616157e5f7423f59f89238a53023617a0b"
chnset 0.10388902227277871, "__vcs_perf_4f3112a522fc898a12738a061138c6dec1a2dcc85b92329a00b61d175b3bc972"
chnset 0.01, "__vcs_perf_86ddde0c5a41c1032c38cb02d0ef9778bc4a8df9bc25543394c15d92bb4e0756"
chnset 0.7792594054709715, "__vcs_perf_d2e6d30cbca7ca3e45d2a3fe05df3e3fadd5251d9511057e786c29fa3505d6e3"
chnset 0.10000000000000001, "__vcs_perf_c7a2f054fd783cf1e8103636ec17b0d09f33c0b1b9caedf5bf924f1920181172"
connect "vcs_mix_bd677deeb3a0ab97ae5143a9", "left", "vcs_mix_6f94664d648353da23514687", "p_360f84035942243c6a36537a"
connect "vcs_mix_bd677deeb3a0ab97ae5143a9", "right", "vcs_mix_6f94664d648353da23514687", "p_27042f4e6eca7d0b2a7ee402"
chnset 0.10000000000000001, "__vcs_perf_a9e6644c11227ca68373c9abb6d31c26b54a6ddc400afc121870e8c4e7f87b12"
chnset 0.40000000000000002, "__vcs_perf_69192bfed8a9ba2d4a8072cebf81ba025fda49fb269069fc1ff39fa0c9f97d83"
chnset 1, "__vcs_perf_f7b68dbe403286f84b134038c0d337a0cd782d6f7cebbcb9af1dd332e625d728"
chnset 0.0032784240542678162, "__vcs_perf_510f010bbfbd8759f3bf511f47a5e9ded5e63cb7686901f80efcc2e17034d055"
chnset 24, "__vcs_perf_188af0eff372da57588edb948422d75385f5aed1f9be9db97092c35998d1157e"
chnset -1.5477282143607738, "__vcs_perf_2d8d04790676dd1ec6cc50e96c155fad42a6aa17df90e6f556fef7e851dae9e5"
chnset 12000, "__vcs_perf_c99757b9635190472a7732b041d9347158ae6ea3bdf530c78a2b7e7dbc3ac373"
connect "vcs_mix_e0634619c0e14e989f81a934", "left", "vcs_mix_6ba4ca57942e2e36cc9c22e5", "p_360f84035942243c6a36537a"
connect "vcs_mix_e0634619c0e14e989f81a934", "right", "vcs_mix_6ba4ca57942e2e36cc9c22e5", "p_27042f4e6eca7d0b2a7ee402"
connect "vcs_mix_ffb3434f4ca77f81c225da20", "pre_p_360f84035942243c6a36537a", "vcs_mix_92a0f30cf25dfef51702244b", "pre"
connect "vcs_mix_ffb3434f4ca77f81c225da20", "post_p_360f84035942243c6a36537a", "vcs_mix_92a0f30cf25dfef51702244b", "post"
connect "vcs_mix_92a0f30cf25dfef51702244b", "out", "vcs_mix_63254fa67083d5eed1f09ece", "left"
connect "vcs_mix_ffb3434f4ca77f81c225da20", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_041bb7c1d8eb75d988cb9997", "pre"
connect "vcs_mix_ffb3434f4ca77f81c225da20", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_041bb7c1d8eb75d988cb9997", "post"
connect "vcs_mix_041bb7c1d8eb75d988cb9997", "out", "vcs_mix_63254fa67083d5eed1f09ece", "right"
connect "vcs_mix_0e164d5d03b1cf22a3b37f40", "pre_p_360f84035942243c6a36537a", "vcs_mix_93c47a8b6996f79a7a2b16f9", "pre"
connect "vcs_mix_0e164d5d03b1cf22a3b37f40", "post_p_360f84035942243c6a36537a", "vcs_mix_93c47a8b6996f79a7a2b16f9", "post"
connect "vcs_mix_93c47a8b6996f79a7a2b16f9", "out", "vcs_mix_63254fa67083d5eed1f09ece", "left"
connect "vcs_mix_0e164d5d03b1cf22a3b37f40", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_7c6bc80fa1ab6a1fe6728479", "pre"
connect "vcs_mix_0e164d5d03b1cf22a3b37f40", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_7c6bc80fa1ab6a1fe6728479", "post"
connect "vcs_mix_7c6bc80fa1ab6a1fe6728479", "out", "vcs_mix_63254fa67083d5eed1f09ece", "right"
connect "vcs_mix_ba99917a15c479fd5286a077", "pre_p_360f84035942243c6a36537a", "vcs_mix_d69bdb5bae83b83d55b96e74", "pre"
connect "vcs_mix_ba99917a15c479fd5286a077", "post_p_360f84035942243c6a36537a", "vcs_mix_d69bdb5bae83b83d55b96e74", "post"
connect "vcs_mix_d69bdb5bae83b83d55b96e74", "out", "vcs_mix_63254fa67083d5eed1f09ece", "left"
connect "vcs_mix_ba99917a15c479fd5286a077", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_56fb8d9ce6e0ae9da98beb0a", "pre"
connect "vcs_mix_ba99917a15c479fd5286a077", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_56fb8d9ce6e0ae9da98beb0a", "post"
connect "vcs_mix_56fb8d9ce6e0ae9da98beb0a", "out", "vcs_mix_63254fa67083d5eed1f09ece", "right"
connect "vcs_mix_ffb3434f4ca77f81c225da20", "pre_p_360f84035942243c6a36537a", "vcs_mix_e18261476da11cf18e2aaa34", "pre"
connect "vcs_mix_ffb3434f4ca77f81c225da20", "post_p_360f84035942243c6a36537a", "vcs_mix_e18261476da11cf18e2aaa34", "post"
connect "vcs_mix_e18261476da11cf18e2aaa34", "out", "vcs_mix_fbb8a5d6b07e818b12093ef4", "left"
connect "vcs_mix_ffb3434f4ca77f81c225da20", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_8fc9f865af06750141c6f818", "pre"
connect "vcs_mix_ffb3434f4ca77f81c225da20", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_8fc9f865af06750141c6f818", "post"
connect "vcs_mix_8fc9f865af06750141c6f818", "out", "vcs_mix_fbb8a5d6b07e818b12093ef4", "right"
connect "vcs_mix_0e164d5d03b1cf22a3b37f40", "pre_p_360f84035942243c6a36537a", "vcs_mix_833b3ad25cd3180c59463867", "pre"
connect "vcs_mix_0e164d5d03b1cf22a3b37f40", "post_p_360f84035942243c6a36537a", "vcs_mix_833b3ad25cd3180c59463867", "post"
connect "vcs_mix_833b3ad25cd3180c59463867", "out", "vcs_mix_fbb8a5d6b07e818b12093ef4", "left"
connect "vcs_mix_0e164d5d03b1cf22a3b37f40", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_443958e8e3b07cdb4591aa78", "pre"
connect "vcs_mix_0e164d5d03b1cf22a3b37f40", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_443958e8e3b07cdb4591aa78", "post"
connect "vcs_mix_443958e8e3b07cdb4591aa78", "out", "vcs_mix_fbb8a5d6b07e818b12093ef4", "right"
connect "vcs_mix_ba99917a15c479fd5286a077", "pre_p_360f84035942243c6a36537a", "vcs_mix_19d7a84a12a5d3700cb658af", "pre"
connect "vcs_mix_ba99917a15c479fd5286a077", "post_p_360f84035942243c6a36537a", "vcs_mix_19d7a84a12a5d3700cb658af", "post"
connect "vcs_mix_19d7a84a12a5d3700cb658af", "out", "vcs_mix_63254fa67083d5eed1f09ece", "left"
connect "vcs_mix_ba99917a15c479fd5286a077", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_5c340235c2eb903d2f337ef8", "pre"
connect "vcs_mix_ba99917a15c479fd5286a077", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_5c340235c2eb903d2f337ef8", "post"
connect "vcs_mix_5c340235c2eb903d2f337ef8", "out", "vcs_mix_63254fa67083d5eed1f09ece", "right"
connect "vcs_mix_63254fa67083d5eed1f09ece", "__vcs_direct_e0ee8bb50685e05fa0f47ed0_left", "vcs_mix_5e505dbb86b6acf9d7400868", "pre"
connect "vcs_mix_5e505dbb86b6acf9d7400868", "out", "vcs_mix_1c1a3a2ca316aee9c74f0d03", "left"
connect "vcs_mix_63254fa67083d5eed1f09ece", "__vcs_direct_e0ee8bb50685e05fa0f47ed0_right", "vcs_mix_2aa025a8151efe941dc4e3c1", "pre"
connect "vcs_mix_2aa025a8151efe941dc4e3c1", "out", "vcs_mix_1c1a3a2ca316aee9c74f0d03", "right"
connect "vcs_mix_ff2de93e1732c6035468789d", "pre_p_360f84035942243c6a36537a", "vcs_mix_61c152829e8602cc80b49d60", "pre"
connect "vcs_mix_ff2de93e1732c6035468789d", "post_p_360f84035942243c6a36537a", "vcs_mix_61c152829e8602cc80b49d60", "post"
connect "vcs_mix_61c152829e8602cc80b49d60", "out", "vcs_mix_3a89daedb9e641b7db5239e9", "left"
connect "vcs_mix_ff2de93e1732c6035468789d", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_6143623b47a1e9ceba8bf5dd", "pre"
connect "vcs_mix_ff2de93e1732c6035468789d", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_6143623b47a1e9ceba8bf5dd", "post"
connect "vcs_mix_6143623b47a1e9ceba8bf5dd", "out", "vcs_mix_3a89daedb9e641b7db5239e9", "right"
connect "vcs_mix_0c8e75599081be1983d5df8b", "pre_p_360f84035942243c6a36537a", "vcs_mix_3345645f03eb0dd2db343372", "pre"
connect "vcs_mix_0c8e75599081be1983d5df8b", "post_p_360f84035942243c6a36537a", "vcs_mix_3345645f03eb0dd2db343372", "post"
connect "vcs_mix_3345645f03eb0dd2db343372", "out", "vcs_mix_bd677deeb3a0ab97ae5143a9", "left"
connect "vcs_mix_0c8e75599081be1983d5df8b", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_ed18c5d0375df2f78b193960", "pre"
connect "vcs_mix_0c8e75599081be1983d5df8b", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_ed18c5d0375df2f78b193960", "post"
connect "vcs_mix_ed18c5d0375df2f78b193960", "out", "vcs_mix_bd677deeb3a0ab97ae5143a9", "right"
connect "vcs_mix_6f94664d648353da23514687", "pre_p_360f84035942243c6a36537a", "vcs_mix_227e55cfdf79ddb39df4e595", "pre"
connect "vcs_mix_6f94664d648353da23514687", "post_p_360f84035942243c6a36537a", "vcs_mix_227e55cfdf79ddb39df4e595", "post"
connect "vcs_mix_227e55cfdf79ddb39df4e595", "out", "vcs_mix_0644eeee2942927583ef32ed", "p_2336acbd28828ab05deafe52"
connect "vcs_mix_6f94664d648353da23514687", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_1cc52511c5e54aa38ad42b65", "pre"
connect "vcs_mix_6f94664d648353da23514687", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_1cc52511c5e54aa38ad42b65", "post"
connect "vcs_mix_1cc52511c5e54aa38ad42b65", "out", "vcs_mix_0644eeee2942927583ef32ed", "p_2a250433534f9aea9d512171"
connect "vcs_mix_3bb873e80f810966fc1b0096", "pre_p_360f84035942243c6a36537a", "vcs_mix_25c99852584537b9f0f52852", "pre"
connect "vcs_mix_3bb873e80f810966fc1b0096", "post_p_360f84035942243c6a36537a", "vcs_mix_25c99852584537b9f0f52852", "post"
connect "vcs_mix_25c99852584537b9f0f52852", "out", "vcs_mix_63254fa67083d5eed1f09ece", "left"
connect "vcs_mix_3bb873e80f810966fc1b0096", "pre_p_360f84035942243c6a36537a", "vcs_mix_51cd333b02ba4c96c978aed2", "pre"
connect "vcs_mix_3bb873e80f810966fc1b0096", "post_p_360f84035942243c6a36537a", "vcs_mix_51cd333b02ba4c96c978aed2", "post"
connect "vcs_mix_51cd333b02ba4c96c978aed2", "out", "vcs_mix_fbb8a5d6b07e818b12093ef4", "left"
connect "vcs_mix_3bb873e80f810966fc1b0096", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_1e048d854ec929f9bf7f4a9d", "pre"
connect "vcs_mix_3bb873e80f810966fc1b0096", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_1e048d854ec929f9bf7f4a9d", "post"
connect "vcs_mix_1e048d854ec929f9bf7f4a9d", "out", "vcs_mix_63254fa67083d5eed1f09ece", "right"
connect "vcs_mix_3bb873e80f810966fc1b0096", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_9bde7ff9779b5fac821c2b58", "pre"
connect "vcs_mix_3bb873e80f810966fc1b0096", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_9bde7ff9779b5fac821c2b58", "post"
connect "vcs_mix_9bde7ff9779b5fac821c2b58", "out", "vcs_mix_fbb8a5d6b07e818b12093ef4", "right"
connect "vcs_mix_cf670d424e8caecf25992a66", "left", "vcs_mix_3c28d406881f6a80d2f6b6f2", "pre"
connect "vcs_mix_3c28d406881f6a80d2f6b6f2", "out", "vcs_mix_e0634619c0e14e989f81a934", "left"
connect "vcs_mix_cf670d424e8caecf25992a66", "right", "vcs_mix_f1d7efd702fbc592d925d7ca", "pre"
connect "vcs_mix_f1d7efd702fbc592d925d7ca", "out", "vcs_mix_e0634619c0e14e989f81a934", "right"
connect "vcs_mix_6ba4ca57942e2e36cc9c22e5", "pre_p_360f84035942243c6a36537a", "vcs_mix_a40814b3c4248bf5963f477e", "pre"
connect "vcs_mix_6ba4ca57942e2e36cc9c22e5", "post_p_360f84035942243c6a36537a", "vcs_mix_a40814b3c4248bf5963f477e", "post"
connect "vcs_mix_a40814b3c4248bf5963f477e", "out", "vcs_mix_3bb873e80f810966fc1b0096", "p_360f84035942243c6a36537a"
connect "vcs_mix_6ba4ca57942e2e36cc9c22e5", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_f6c0dcc000bc9b4bacf5a58f", "pre"
connect "vcs_mix_6ba4ca57942e2e36cc9c22e5", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_f6c0dcc000bc9b4bacf5a58f", "post"
connect "vcs_mix_f6c0dcc000bc9b4bacf5a58f", "out", "vcs_mix_3bb873e80f810966fc1b0096", "p_27042f4e6eca7d0b2a7ee402"
connect "vcs_mix_0644eeee2942927583ef32ed", "pre_p_2336acbd28828ab05deafe52", "vcs_mix_ec8b1641891924a3e102560a", "pre"
connect "vcs_mix_0644eeee2942927583ef32ed", "post_p_2336acbd28828ab05deafe52", "vcs_mix_ec8b1641891924a3e102560a", "post"
connect "vcs_mix_ec8b1641891924a3e102560a", "out", "vcs_mix_9cea1be1f8255375a6cf7b93", "left"
connect "vcs_mix_0644eeee2942927583ef32ed", "pre_p_2a250433534f9aea9d512171", "vcs_mix_5f16b779ade2ce91f307ff35", "pre"
connect "vcs_mix_0644eeee2942927583ef32ed", "post_p_2a250433534f9aea9d512171", "vcs_mix_5f16b779ade2ce91f307ff35", "post"
connect "vcs_mix_5f16b779ade2ce91f307ff35", "out", "vcs_mix_9cea1be1f8255375a6cf7b93", "right"
; Continuous patches and mixer stages start with alwayson; note instruments start from MIDI/score events.
alwayson "vcs_mix_748e855da3c56041933609eb"
alwayson "vcs_mix_6192de5da5ad90108de5c9ef"
alwayson "vcs_mix_cf670d424e8caecf25992a66"
alwayson "vcs_mix_3c28d406881f6a80d2f6b6f2"
alwayson "vcs_mix_f1d7efd702fbc592d925d7ca"
alwayson "vcs_mix_e0634619c0e14e989f81a934"
alwayson "vcs_mix_6ba4ca57942e2e36cc9c22e5"
alwayson "vcs_mix_f6c0dcc000bc9b4bacf5a58f"
alwayson "vcs_mix_a40814b3c4248bf5963f477e"
alwayson "vcs_mix_ffb3434f4ca77f81c225da20"
alwayson "vcs_mix_8fc9f865af06750141c6f818"
alwayson "vcs_mix_041bb7c1d8eb75d988cb9997"
alwayson "vcs_mix_e18261476da11cf18e2aaa34"
alwayson "vcs_mix_92a0f30cf25dfef51702244b"
alwayson "vcs_mix_0e164d5d03b1cf22a3b37f40"
alwayson "vcs_mix_93c47a8b6996f79a7a2b16f9"
alwayson "vcs_mix_833b3ad25cd3180c59463867"
alwayson "vcs_mix_7c6bc80fa1ab6a1fe6728479"
alwayson "vcs_mix_443958e8e3b07cdb4591aa78"
alwayson "vcs_mix_3bb873e80f810966fc1b0096"
alwayson "vcs_mix_1e048d854ec929f9bf7f4a9d"
alwayson "vcs_mix_25c99852584537b9f0f52852"
alwayson "vcs_mix_9bde7ff9779b5fac821c2b58"
alwayson "vcs_mix_51cd333b02ba4c96c978aed2"
alwayson "vcs_mix_fbb8a5d6b07e818b12093ef4"
alwayson "vcs_mix_ba99917a15c479fd5286a077"
alwayson "vcs_mix_5c340235c2eb903d2f337ef8"
alwayson "vcs_mix_19d7a84a12a5d3700cb658af"
alwayson "vcs_mix_d69bdb5bae83b83d55b96e74"
alwayson "vcs_mix_56fb8d9ce6e0ae9da98beb0a"
alwayson "vcs_mix_63254fa67083d5eed1f09ece"
alwayson "vcs_mix_2aa025a8151efe941dc4e3c1"
alwayson "vcs_mix_5e505dbb86b6acf9d7400868"
alwayson "vcs_mix_1c1a3a2ca316aee9c74f0d03"
alwayson "vcs_mix_ff2de93e1732c6035468789d"
alwayson "vcs_mix_61c152829e8602cc80b49d60"
alwayson "vcs_mix_6143623b47a1e9ceba8bf5dd"
alwayson "vcs_mix_3a89daedb9e641b7db5239e9"
alwayson "vcs_mix_0c8e75599081be1983d5df8b"
alwayson "vcs_mix_ed18c5d0375df2f78b193960"
alwayson "vcs_mix_3345645f03eb0dd2db343372"
alwayson "vcs_mix_bd677deeb3a0ab97ae5143a9"
alwayson "vcs_mix_6f94664d648353da23514687"
alwayson "vcs_mix_227e55cfdf79ddb39df4e595"
alwayson "vcs_mix_1cc52511c5e54aa38ad42b65"
alwayson "vcs_mix_0644eeee2942927583ef32ed"
alwayson "vcs_mix_ec8b1641891924a3e102560a"
alwayson "vcs_mix_5f16b779ade2ce91f307ff35"
alwayson "vcs_mix_9cea1be1f8255375a6cf7b93"
; mixer stage patch:cello
; patch:65148574-b805-4e82-a8a0-77b184db3e35 name:Cello — Bowed Physical Model channel:1 always_on:false
; instance:cello csound:vcs_mix_748e855da3c56041933609eb
; description: Sample-free solo cello. STK bowed-string waveguide, separate body resonances, velocity-sensitive bowing, delayed irregular vibrato and monophonic phrase legato. Algorithmic synthesis only; no instrument recordings or convolution.
; trigger: MIDI channel 1 / score notes; score instrument number: 4
instr vcs_mix_748e855da3c56041933609eb
 ; Commit the boundary after all collectors, before synthesis.
 k_vcs_legato_previous_gate init 0
 k_vcs_legato_phrase init 0
 k_vcs_legato_release init 0
 k_vcs_legato_current_release = 0
 k_vcs_legato_gate = (gk_vcs_legato_9bbf02efd82322aadc5d_winner > 0 ? 1 : 0)
 k_vcs_legato_start = (k_vcs_legato_gate > k_vcs_legato_previous_gate ? 1 : 0)
 k_vcs_legato_previous_gate = k_vcs_legato_gate
 gk_vcs_legato_9bbf02efd82322aadc5d_winner = 0
 if k_vcs_legato_start == 1 then
  k_vcs_legato_phrase = k_vcs_legato_phrase + 1
  reinit VCS_LEGATO_PHRASE
 endif
 VCS_LEGATO_PHRASE:
 i_vcs_legato_note = i(gk_vcs_legato_9bbf02efd82322aadc5d_note)
 i_vcs_legato_velocity = i(gk_vcs_legato_9bbf02efd82322aadc5d_velocity)
 ; node:bow_attack opcode:linseg
 k_bow_attack_kenv_9 linseg 0.9, 0.08, 1.025, 0.22, 1
 ; node:bow_motion opcode:randomi
 k_bow_motion_kout_8 randomi -0.012, 0.012, 1.7, 0, 0
 i_bow_position_iout_9 chnget "__vcs_perf_e69f9ed1513ef7b9acc4616e3c0e3006e278cecf6132812ba1ec7b9db7bbd654"
 i_bow_pressure_iout_10 chnget "__vcs_perf_fdf0cce68ffdc1f9756bcbc1faf2f8ca5789fcdf2a5918749a163ca7ea1d93c3"
 ; node:env_attack_const opcode:const_i
 i_env_attack_const_iout_4 = 0.075
 ; node:env_decay_const opcode:const_i
 i_env_decay_const_iout_5 = 0.16
 ; node:env_release_const opcode:const_i
 i_env_release_const_iout_7 = 0.2
 ; node:env_sustain_const opcode:const_i
 i_env_sustain_const_iout_6 = 0.94
 ; node:phrase opcode:midi_legato
 k_phrase_kfreq_3 = cpsmidinn(gk_vcs_legato_9bbf02efd82322aadc5d_note)
 k_phrase_kvelocity_4 portk gk_vcs_legato_9bbf02efd82322aadc5d_velocity / 128, 0.01, i_vcs_legato_velocity / 128
 ; node:pitch_cpsmidi opcode:cpsmidi
 i_pitch_cpsmidi_kfreq_1 = cpsmidinn(i_vcs_legato_note)
 ; node:velocity_scale_const opcode:const_i
 i_velocity_scale_const_iout_2 = 1
 i_vibrato_depth_iout_8 chnget "__vcs_perf_11a8985e20e91123c1bcb694bafd6f91b0393b1fb071e08694bcd3374786e8a6"
 ; node:vibrato_onset opcode:linseg
 k_vibrato_onset_kenv_6 linseg 0, 0.32, 0, 0.55, 1
 k_amp_madsr_kenv_1 vcs_legato_adsr k_vcs_legato_gate, i_env_attack_const_iout_4, i_env_decay_const_iout_5, i_env_sustain_const_iout_6, ((-1) < 0 ? k_vcs_legato_release : (-1)), 0
 k_vcs_legato_current_release = max(k_vcs_legato_current_release, i_env_release_const_iout_7)
 ; node:pitch_smooth opcode:portk
 k_pitch_smooth_kout_5 portk k_phrase_kfreq_3, 0.006, i_pitch_cpsmidi_kfreq_1
 ; node:velocity_ampmidi opcode:ampmidi
 i_velocity_ampmidi_iamp_3 = ((i_vcs_legato_velocity / 128) * (i_velocity_scale_const_iout_2))
 ; node:vibrato_motion opcode:vibrato
 k_vibrato_motion_kout_7 vibrato (i_vibrato_depth_iout_8 * k_vibrato_onset_kenv_6), 4.9, 0.12, 0.055, 0.8, 2.2, 0.6, 1.6, 1
 ; node:amp_velocity_envelope opcode:k_mul
 k_amp_velocity_envelope_kout_2 = (k_phrase_kvelocity_4) * (k_amp_madsr_kenv_1)
 ; node:bow_hair opcode:noise
 a_bow_hair_aout_4 noise ((((.0008 + (.003 * ((1 - k_vibrato_onset_kenv_6))))) * ((.3 + (.7 * k_phrase_kvelocity_4)))) * k_amp_madsr_kenv_1), 0.25
 ; node:output_envelope opcode:k_to_a
 a_output_envelope_aout_13 interp ((k_amp_madsr_kenv_1 * ((.18 + (.82 * k_phrase_kvelocity_4)))) * 1.5)
 ; node:bow opcode:STKBowed
 a_bow_asignal_3 STKBowed (i_pitch_cpsmidi_kfreq_1 / ((1 + ((.35 * i_pitch_cpsmidi_kfreq_1) / sr)))), (.45 + (.25 * i_velocity_ampmidi_iamp_3)), 2, (((128 * i_bow_pressure_iout_10) + (8 * ((k_phrase_kvelocity_4 - .6)))) + (15 * k_bow_motion_kout_8)), 4, (128 * i_bow_position_iout_9), 1, 0, 101, ((k_pitch_smooth_kout_5 * ((1 + k_vibrato_motion_kout_7))) / ((1 + (((.35 * k_pitch_smooth_kout_5) * ((1 + k_vibrato_motion_kout_7))) / sr)))), 128, ((((100 * ((.55 + (.3 * k_phrase_kvelocity_4)))) * k_amp_madsr_kenv_1) * k_bow_attack_kenv_9) * ((1 + k_bow_motion_kout_8)))
 ; node:hair_highpass opcode:butterhp
 a_hair_highpass_aout_5 butterhp a_bow_hair_aout_4, 850, 0
 ; node:bridge opcode:pareq
 a_bridge_ares_6 pareq (a_bow_asignal_3 + a_hair_highpass_aout_5), 190, 1.65, 0.85, 0, 0
 ; node:body_colour opcode:pareq
 a_body_colour_ares_7 pareq a_bridge_ares_6, 2100, 0.78, 0.75, 2, 0
 ; node:body_mode_0 opcode:mode
 a_body_mode_0_aout_8 mode a_body_colour_ares_7, 102, 3.4, 0
 ; node:body_mode_1 opcode:mode
 a_body_mode_1_aout_9 mode a_body_colour_ares_7, 219, 4, 0
 ; node:body_mode_2 opcode:mode
 a_body_mode_2_aout_10 mode a_body_colour_ares_7, 315, 3, 0
 ; node:radiation_highpass opcode:butterhp
 a_radiation_highpass_aout_11 butterhp (((a_body_colour_ares_7 + (0.0411764705882353 * a_body_mode_0_aout_8)) + (0.04 * a_body_mode_1_aout_9)) + (0.03333333333333333 * a_body_mode_2_aout_10)), 42, 0
 ; node:radiation_lowpass opcode:butterlp
 a_radiation_lowpass_aout_12 butterlp a_radiation_highpass_aout_11, (4200 + (2200 * k_phrase_kvelocity_4)), 0
 ; node:output_pan2 opcode:pan2
 a_output_pan2_aleft_1, a_output_pan2_aright_2 pan2 (a_radiation_lowpass_aout_12 * a_output_envelope_aout_13), 0.5, 0
 k_vcs_legato_release = k_vcs_legato_current_release
 rireturn
 a_output_left_asignal_14 vcs_legato_declick a_output_pan2_aleft_1, k_vcs_legato_phrase
 a_output_right_asignal_15 vcs_legato_declick a_output_pan2_aright_2, k_vcs_legato_phrase
 ; node:output_left opcode:outleta
 outleta "left", a_output_left_asignal_14
 ; node:output_right opcode:outleta
 outleta "right", a_output_right_asignal_15
endin

; mixer stage patch:violin
; patch:05ffab35-53aa-4846-b797-b16fcb02a41c name:Violin — Bowed Physical Model channel:2 always_on:false
; instance:violin csound:vcs_mix_6192de5da5ad90108de5c9ef
; description: Sample-free solo violin. STK bowed-string waveguide, separate body resonances, velocity-sensitive bowing, delayed irregular vibrato and monophonic phrase legato. Algorithmic synthesis only; no instrument recordings or convolution. Soft bow character (0–1, default 0.75) adds a smooth airy response below MIDI velocity 72, reaching full response at 32: pitch-following fundamental reduction, modest second/fourth harmonic emphasis and envelope-gated bow noise. Zero restores the original quiet response; model pressure and sample-free synthesis are unchanged.
; trigger: MIDI channel 2 / score notes; score instrument number: 5
instr vcs_mix_6192de5da5ad90108de5c9ef
 ; Commit the boundary after all collectors, before synthesis.
 k_vcs_legato_previous_gate init 0
 k_vcs_legato_phrase init 0
 k_vcs_legato_release init 0
 k_vcs_legato_current_release = 0
 k_vcs_legato_gate = (gk_vcs_legato_00e3e584e242f926ff6b_winner > 0 ? 1 : 0)
 k_vcs_legato_start = (k_vcs_legato_gate > k_vcs_legato_previous_gate ? 1 : 0)
 k_vcs_legato_previous_gate = k_vcs_legato_gate
 gk_vcs_legato_00e3e584e242f926ff6b_winner = 0
 if k_vcs_legato_start == 1 then
  k_vcs_legato_phrase = k_vcs_legato_phrase + 1
  reinit VCS_LEGATO_PHRASE
 endif
 VCS_LEGATO_PHRASE:
 i_vcs_legato_note = i(gk_vcs_legato_00e3e584e242f926ff6b_note)
 i_vcs_legato_velocity = i(gk_vcs_legato_00e3e584e242f926ff6b_velocity)
 ; node:bow_attack opcode:linseg
 k_bow_attack_kenv_9 linseg 0.9, 0.08, 1.025, 0.22, 1
 ; node:bow_motion opcode:randomi
 k_bow_motion_kout_8 randomi -0.012, 0.012, 2.1, 0, 0
 i_bow_position_iout_9 chnget "__vcs_perf_448c234655e469f20d09048051536c7e050856de590da460d8444ee8be56ad5c"
 i_bow_pressure_iout_10 chnget "__vcs_perf_4724a13946995eba30021491d968f36e88114c41d705ef3426089289be1e0b86"
 ; node:env_attack_const opcode:const_i
 i_env_attack_const_iout_4 = 0.045
 ; node:env_decay_const opcode:const_i
 i_env_decay_const_iout_5 = 0.16
 ; node:env_release_const opcode:const_i
 i_env_release_const_iout_7 = 0.15
 ; node:env_sustain_const opcode:const_i
 i_env_sustain_const_iout_6 = 0.94
 ; node:phrase opcode:midi_legato
 k_phrase_kfreq_3 = cpsmidinn(gk_vcs_legato_00e3e584e242f926ff6b_note)
 k_phrase_kvelocity_4 portk gk_vcs_legato_00e3e584e242f926ff6b_velocity / 128, 0.01, i_vcs_legato_velocity / 128
 ; node:pitch_cpsmidi opcode:cpsmidi
 i_pitch_cpsmidi_kfreq_1 = cpsmidinn(i_vcs_legato_note)
 i_soft_bow_character_iout_11 chnget "__vcs_perf_121ad4ad91f6b7b7312835eb8bd42758ca8092ca7945161072fdb38c33eb011e"
 ; node:velocity_scale_const opcode:const_i
 i_velocity_scale_const_iout_2 = 1
 i_vibrato_depth_iout_8 chnget "__vcs_perf_641f49647f9ba7f6ace247031de78cfbe0eab50b305f7ccdb63e2086d9f753a9"
 ; node:vibrato_onset opcode:linseg
 k_vibrato_onset_kenv_6 linseg 0, 0.25, 0, 0.4, 1
 k_amp_madsr_kenv_1 vcs_legato_adsr k_vcs_legato_gate, i_env_attack_const_iout_4, i_env_decay_const_iout_5, i_env_sustain_const_iout_6, ((-1) < 0 ? k_vcs_legato_release : (-1)), 0
 k_vcs_legato_current_release = max(k_vcs_legato_current_release, i_env_release_const_iout_7)
 ; node:pitch_smooth opcode:portk
 k_pitch_smooth_kout_5 portk k_phrase_kfreq_3, 0.004, i_pitch_cpsmidi_kfreq_1
 ; node:velocity_ampmidi opcode:ampmidi
 i_velocity_ampmidi_iamp_3 = ((i_vcs_legato_velocity / 128) * (i_velocity_scale_const_iout_2))
 ; node:vibrato_motion opcode:vibrato
 k_vibrato_motion_kout_7 vibrato (i_vibrato_depth_iout_8 * k_vibrato_onset_kenv_6), 5.6, 0.12, 0.055, 0.8, 2.2, 0.6, 1.6, 1
 ; node:amp_velocity_envelope opcode:k_mul
 k_amp_velocity_envelope_kout_2 = (k_phrase_kvelocity_4) * (k_amp_madsr_kenv_1)
 ; node:output_envelope opcode:k_to_a
 a_output_envelope_aout_13 interp ((k_amp_madsr_kenv_1 * ((.18 + (.82 * k_phrase_kvelocity_4)))) * 1.5)
 ; node:soft_bow_smooth opcode:portk
 k_soft_bow_smooth_kout_10 portk (((i_soft_bow_character_iout_11 * ((((((abs((72 - (128 * k_phrase_kvelocity_4))) - abs((32 - (128 * k_phrase_kvelocity_4)))) + 40)) / 80)))) * ((((((abs((72 - (128 * k_phrase_kvelocity_4))) - abs((32 - (128 * k_phrase_kvelocity_4)))) + 40)) / 80)))) * ((3 - (2 * ((((((abs((72 - (128 * k_phrase_kvelocity_4))) - abs((32 - (128 * k_phrase_kvelocity_4)))) + 40)) / 80))))))), 0.04, (((i_soft_bow_character_iout_11 * ((((((abs((72 - (128 * i_velocity_ampmidi_iamp_3))) - abs((32 - (128 * i_velocity_ampmidi_iamp_3)))) + 40)) / 80)))) * ((((((abs((72 - (128 * i_velocity_ampmidi_iamp_3))) - abs((32 - (128 * i_velocity_ampmidi_iamp_3)))) + 40)) / 80)))) * ((3 - (2 * ((((((abs((72 - (128 * i_velocity_ampmidi_iamp_3))) - abs((32 - (128 * i_velocity_ampmidi_iamp_3)))) + 40)) / 80)))))))
 ; node:bow opcode:STKBowed
 a_bow_asignal_3 STKBowed (i_pitch_cpsmidi_kfreq_1 / ((1 + ((.35 * i_pitch_cpsmidi_kfreq_1) / sr)))), (.45 + (.25 * i_velocity_ampmidi_iamp_3)), 2, (((128 * i_bow_pressure_iout_10) + (8 * ((k_phrase_kvelocity_4 - .6)))) + (15 * k_bow_motion_kout_8)), 4, (128 * i_bow_position_iout_9), 1, 0, 101, ((k_pitch_smooth_kout_5 * ((1 + k_vibrato_motion_kout_7))) / ((1 + (((.35 * k_pitch_smooth_kout_5) * ((1 + k_vibrato_motion_kout_7))) / sr)))), 128, ((((100 * ((.55 + (.3 * k_phrase_kvelocity_4)))) * k_amp_madsr_kenv_1) * k_bow_attack_kenv_9) * ((1 + k_bow_motion_kout_8)))
 ; node:soft_bow_audio opcode:k_to_a
 a_soft_bow_audio_aout_14 interp k_soft_bow_smooth_kout_10
 ; node:bow_hair opcode:noise
 a_bow_hair_aout_4 noise (((((.0008 + (.003 * ((1 - k_vibrato_onset_kenv_6))))) * ((.3 + (.7 * k_phrase_kvelocity_4)))) * k_amp_madsr_kenv_1) * ((1 + ((12 * k_soft_bow_smooth_kout_10) * ((1 + (5 * k_bow_motion_kout_8))))))), 0.25
 ; node:hair_highpass opcode:butterhp
 a_hair_highpass_aout_5 butterhp a_bow_hair_aout_4, 1200, 0
 ; node:bridge opcode:pareq
 a_bridge_ares_6 pareq (a_bow_asignal_3 + a_hair_highpass_aout_5), 2550, 1.23, 0.85, 0, 0
 ; node:body_colour opcode:pareq
 a_body_colour_ares_7 pareq a_bridge_ares_6, 520, 1.08, 1.1, 0, 0
 ; node:body_mode_0 opcode:mode
 a_body_mode_0_aout_8 mode a_body_colour_ares_7, 275, 3.5, 0
 ; node:body_mode_1 opcode:mode
 a_body_mode_1_aout_9 mode a_body_colour_ares_7, 450, 4, 0
 ; node:body_mode_2 opcode:mode
 a_body_mode_2_aout_10 mode a_body_colour_ares_7, 550, 4.5, 0
 ; node:radiation_highpass opcode:butterhp
 a_radiation_highpass_aout_11 butterhp (((a_body_colour_ares_7 + (0.025714285714285714 * a_body_mode_0_aout_8)) + (0.02 * a_body_mode_1_aout_9)) + (0.016666666666666666 * a_body_mode_2_aout_10)), 145, 0
 ; node:radiation_lowpass opcode:butterlp
 a_radiation_lowpass_aout_12 butterlp a_radiation_highpass_aout_11, (5800 + (3000 * k_phrase_kvelocity_4)), 0
 ; node:airy_highpass opcode:butterhp
 a_airy_highpass_aout_15 butterhp a_radiation_lowpass_aout_12, (((((.42 * sr) + (1.5 * k_pitch_smooth_kout_5)) - abs(((.42 * sr) - (1.5 * k_pitch_smooth_kout_5))))) / 2), 0
 ; node:airy_second opcode:pareq
 a_airy_second_ares_16 pareq a_airy_highpass_aout_15, (((((.42 * sr) + (2 * k_pitch_smooth_kout_5)) - abs(((.42 * sr) - (2 * k_pitch_smooth_kout_5))))) / 2), 1.5, 2, 0, 0
 ; node:airy_fourth opcode:pareq
 a_airy_fourth_ares_17 pareq a_airy_second_ares_16, (((((.42 * sr) + (4 * k_pitch_smooth_kout_5)) - abs(((.42 * sr) - (4 * k_pitch_smooth_kout_5))))) / 2), 1.25, 2.5, 0, 0
 ; node:output_pan2 opcode:pan2
 a_output_pan2_aleft_1, a_output_pan2_aright_2 pan2 ((((((1 - a_soft_bow_audio_aout_14)) * a_radiation_lowpass_aout_12) + (a_soft_bow_audio_aout_14 * a_airy_fourth_ares_17))) * a_output_envelope_aout_13), 0.5, 0
 k_vcs_legato_release = k_vcs_legato_current_release
 rireturn
 a_output_left_asignal_18 vcs_legato_declick a_output_pan2_aleft_1, k_vcs_legato_phrase
 a_output_right_asignal_19 vcs_legato_declick a_output_pan2_aright_2, k_vcs_legato_phrase
 ; node:output_left opcode:outleta
 outleta "left", a_output_left_asignal_18
 ; node:output_right opcode:outleta
 outleta "right", a_output_right_asignal_19
endin

; mixer stage patch:violin-distorted
; patch:05ffab35-53aa-4846-b797-b16fcb02a41c name:Violin — Bowed Physical Model channel:3 always_on:false
; instance:violin-distorted csound:vcs_mix_cf670d424e8caecf25992a66
; description: Sample-free solo violin. STK bowed-string waveguide, separate body resonances, velocity-sensitive bowing, delayed irregular vibrato and monophonic phrase legato. Algorithmic synthesis only; no instrument recordings or convolution. Soft bow character (0–1, default 0.75) adds a smooth airy response below MIDI velocity 72, reaching full response at 32: pitch-following fundamental reduction, modest second/fourth harmonic emphasis and envelope-gated bow noise. Zero restores the original quiet response; model pressure and sample-free synthesis are unchanged.
; trigger: MIDI channel 3 / score notes; score instrument number: 6
instr vcs_mix_cf670d424e8caecf25992a66
 ; Commit the boundary after all collectors, before synthesis.
 k_vcs_legato_previous_gate init 0
 k_vcs_legato_phrase init 0
 k_vcs_legato_release init 0
 k_vcs_legato_current_release = 0
 k_vcs_legato_gate = (gk_vcs_legato_f5fab31057c4a1a07dde_winner > 0 ? 1 : 0)
 k_vcs_legato_start = (k_vcs_legato_gate > k_vcs_legato_previous_gate ? 1 : 0)
 k_vcs_legato_previous_gate = k_vcs_legato_gate
 gk_vcs_legato_f5fab31057c4a1a07dde_winner = 0
 if k_vcs_legato_start == 1 then
  k_vcs_legato_phrase = k_vcs_legato_phrase + 1
  reinit VCS_LEGATO_PHRASE
 endif
 VCS_LEGATO_PHRASE:
 i_vcs_legato_note = i(gk_vcs_legato_f5fab31057c4a1a07dde_note)
 i_vcs_legato_velocity = i(gk_vcs_legato_f5fab31057c4a1a07dde_velocity)
 ; node:bow_attack opcode:linseg
 k_bow_attack_kenv_9 linseg 0.9, 0.08, 1.025, 0.22, 1
 ; node:bow_motion opcode:randomi
 k_bow_motion_kout_8 randomi -0.012, 0.012, 2.1, 0, 0
 i_bow_position_iout_9 chnget "__vcs_perf_a9e6644c11227ca68373c9abb6d31c26b54a6ddc400afc121870e8c4e7f87b12"
 i_bow_pressure_iout_10 chnget "__vcs_perf_69192bfed8a9ba2d4a8072cebf81ba025fda49fb269069fc1ff39fa0c9f97d83"
 ; node:env_attack_const opcode:const_i
 i_env_attack_const_iout_4 = 0.045
 ; node:env_decay_const opcode:const_i
 i_env_decay_const_iout_5 = 0.16
 ; node:env_release_const opcode:const_i
 i_env_release_const_iout_7 = 0.15
 ; node:env_sustain_const opcode:const_i
 i_env_sustain_const_iout_6 = 0.94
 ; node:phrase opcode:midi_legato
 k_phrase_kfreq_3 = cpsmidinn(gk_vcs_legato_f5fab31057c4a1a07dde_note)
 k_phrase_kvelocity_4 portk gk_vcs_legato_f5fab31057c4a1a07dde_velocity / 128, 0.01, i_vcs_legato_velocity / 128
 ; node:pitch_cpsmidi opcode:cpsmidi
 i_pitch_cpsmidi_kfreq_1 = cpsmidinn(i_vcs_legato_note)
 i_soft_bow_character_iout_11 chnget "__vcs_perf_f7b68dbe403286f84b134038c0d337a0cd782d6f7cebbcb9af1dd332e625d728"
 ; node:velocity_scale_const opcode:const_i
 i_velocity_scale_const_iout_2 = 1
 i_vibrato_depth_iout_8 chnget "__vcs_perf_510f010bbfbd8759f3bf511f47a5e9ded5e63cb7686901f80efcc2e17034d055"
 ; node:vibrato_onset opcode:linseg
 k_vibrato_onset_kenv_6 linseg 0, 0.25, 0, 0.4, 1
 k_amp_madsr_kenv_1 vcs_legato_adsr k_vcs_legato_gate, i_env_attack_const_iout_4, i_env_decay_const_iout_5, i_env_sustain_const_iout_6, ((-1) < 0 ? k_vcs_legato_release : (-1)), 0
 k_vcs_legato_current_release = max(k_vcs_legato_current_release, i_env_release_const_iout_7)
 ; node:pitch_smooth opcode:portk
 k_pitch_smooth_kout_5 portk k_phrase_kfreq_3, 0.004, i_pitch_cpsmidi_kfreq_1
 ; node:velocity_ampmidi opcode:ampmidi
 i_velocity_ampmidi_iamp_3 = ((i_vcs_legato_velocity / 128) * (i_velocity_scale_const_iout_2))
 ; node:vibrato_motion opcode:vibrato
 k_vibrato_motion_kout_7 vibrato (i_vibrato_depth_iout_8 * k_vibrato_onset_kenv_6), 5.6, 0.12, 0.055, 0.8, 2.2, 0.6, 1.6, 1
 ; node:amp_velocity_envelope opcode:k_mul
 k_amp_velocity_envelope_kout_2 = (k_phrase_kvelocity_4) * (k_amp_madsr_kenv_1)
 ; node:output_envelope opcode:k_to_a
 a_output_envelope_aout_13 interp ((k_amp_madsr_kenv_1 * ((.18 + (.82 * k_phrase_kvelocity_4)))) * 1.5)
 ; node:soft_bow_smooth opcode:portk
 k_soft_bow_smooth_kout_10 portk (((i_soft_bow_character_iout_11 * ((((((abs((72 - (128 * k_phrase_kvelocity_4))) - abs((32 - (128 * k_phrase_kvelocity_4)))) + 40)) / 80)))) * ((((((abs((72 - (128 * k_phrase_kvelocity_4))) - abs((32 - (128 * k_phrase_kvelocity_4)))) + 40)) / 80)))) * ((3 - (2 * ((((((abs((72 - (128 * k_phrase_kvelocity_4))) - abs((32 - (128 * k_phrase_kvelocity_4)))) + 40)) / 80))))))), 0.04, (((i_soft_bow_character_iout_11 * ((((((abs((72 - (128 * i_velocity_ampmidi_iamp_3))) - abs((32 - (128 * i_velocity_ampmidi_iamp_3)))) + 40)) / 80)))) * ((((((abs((72 - (128 * i_velocity_ampmidi_iamp_3))) - abs((32 - (128 * i_velocity_ampmidi_iamp_3)))) + 40)) / 80)))) * ((3 - (2 * ((((((abs((72 - (128 * i_velocity_ampmidi_iamp_3))) - abs((32 - (128 * i_velocity_ampmidi_iamp_3)))) + 40)) / 80)))))))
 ; node:bow opcode:STKBowed
 a_bow_asignal_3 STKBowed (i_pitch_cpsmidi_kfreq_1 / ((1 + ((.35 * i_pitch_cpsmidi_kfreq_1) / sr)))), (.45 + (.25 * i_velocity_ampmidi_iamp_3)), 2, (((128 * i_bow_pressure_iout_10) + (8 * ((k_phrase_kvelocity_4 - .6)))) + (15 * k_bow_motion_kout_8)), 4, (128 * i_bow_position_iout_9), 1, 0, 101, ((k_pitch_smooth_kout_5 * ((1 + k_vibrato_motion_kout_7))) / ((1 + (((.35 * k_pitch_smooth_kout_5) * ((1 + k_vibrato_motion_kout_7))) / sr)))), 128, ((((100 * ((.55 + (.3 * k_phrase_kvelocity_4)))) * k_amp_madsr_kenv_1) * k_bow_attack_kenv_9) * ((1 + k_bow_motion_kout_8)))
 ; node:soft_bow_audio opcode:k_to_a
 a_soft_bow_audio_aout_14 interp k_soft_bow_smooth_kout_10
 ; node:bow_hair opcode:noise
 a_bow_hair_aout_4 noise (((((.0008 + (.003 * ((1 - k_vibrato_onset_kenv_6))))) * ((.3 + (.7 * k_phrase_kvelocity_4)))) * k_amp_madsr_kenv_1) * ((1 + ((12 * k_soft_bow_smooth_kout_10) * ((1 + (5 * k_bow_motion_kout_8))))))), 0.25
 ; node:hair_highpass opcode:butterhp
 a_hair_highpass_aout_5 butterhp a_bow_hair_aout_4, 1200, 0
 ; node:bridge opcode:pareq
 a_bridge_ares_6 pareq (a_bow_asignal_3 + a_hair_highpass_aout_5), 2550, 1.23, 0.85, 0, 0
 ; node:body_colour opcode:pareq
 a_body_colour_ares_7 pareq a_bridge_ares_6, 520, 1.08, 1.1, 0, 0
 ; node:body_mode_0 opcode:mode
 a_body_mode_0_aout_8 mode a_body_colour_ares_7, 275, 3.5, 0
 ; node:body_mode_1 opcode:mode
 a_body_mode_1_aout_9 mode a_body_colour_ares_7, 450, 4, 0
 ; node:body_mode_2 opcode:mode
 a_body_mode_2_aout_10 mode a_body_colour_ares_7, 550, 4.5, 0
 ; node:radiation_highpass opcode:butterhp
 a_radiation_highpass_aout_11 butterhp (((a_body_colour_ares_7 + (0.025714285714285714 * a_body_mode_0_aout_8)) + (0.02 * a_body_mode_1_aout_9)) + (0.016666666666666666 * a_body_mode_2_aout_10)), 145, 0
 ; node:radiation_lowpass opcode:butterlp
 a_radiation_lowpass_aout_12 butterlp a_radiation_highpass_aout_11, (5800 + (3000 * k_phrase_kvelocity_4)), 0
 ; node:airy_highpass opcode:butterhp
 a_airy_highpass_aout_15 butterhp a_radiation_lowpass_aout_12, (((((.42 * sr) + (1.5 * k_pitch_smooth_kout_5)) - abs(((.42 * sr) - (1.5 * k_pitch_smooth_kout_5))))) / 2), 0
 ; node:airy_second opcode:pareq
 a_airy_second_ares_16 pareq a_airy_highpass_aout_15, (((((.42 * sr) + (2 * k_pitch_smooth_kout_5)) - abs(((.42 * sr) - (2 * k_pitch_smooth_kout_5))))) / 2), 1.5, 2, 0, 0
 ; node:airy_fourth opcode:pareq
 a_airy_fourth_ares_17 pareq a_airy_second_ares_16, (((((.42 * sr) + (4 * k_pitch_smooth_kout_5)) - abs(((.42 * sr) - (4 * k_pitch_smooth_kout_5))))) / 2), 1.25, 2.5, 0, 0
 ; node:output_pan2 opcode:pan2
 a_output_pan2_aleft_1, a_output_pan2_aright_2 pan2 ((((((1 - a_soft_bow_audio_aout_14)) * a_radiation_lowpass_aout_12) + (a_soft_bow_audio_aout_14 * a_airy_fourth_ares_17))) * a_output_envelope_aout_13), 0.5, 0
 k_vcs_legato_release = k_vcs_legato_current_release
 rireturn
 a_output_left_asignal_18 vcs_legato_declick a_output_pan2_aleft_1, k_vcs_legato_phrase
 a_output_right_asignal_19 vcs_legato_declick a_output_pan2_aright_2, k_vcs_legato_phrase
 ; node:output_left opcode:outleta
 outleta "left", a_output_left_asignal_18
 ; node:output_right opcode:outleta
 outleta "right", a_output_right_asignal_19
endin

; mixer stage route:0e976d22-a6d6-487e-a6da-260664aa6552
; audio route:0e976d22-a6d6-487e-a6da-260664aa6552 kind:insert
; from: Violin — Bowed Physical Model [violin-distorted] port:left stage:raw -> Tube Overdrive [72d2a148-6795-4c58-bb7f-d7e1a1ace566] port:left stage:input
; tap: raw (before strip); initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_3c28d406881f6a80d2f6b6f2
 a_signal inleta "pre"
 a_send = 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:29675079-392f-4d19-8ce1-a84e39bc94b6
; audio route:29675079-392f-4d19-8ce1-a84e39bc94b6 kind:insert
; from: Violin — Bowed Physical Model [violin-distorted] port:right stage:raw -> Tube Overdrive [72d2a148-6795-4c58-bb7f-d7e1a1ace566] port:right stage:input
; tap: raw (before strip); initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_f1d7efd702fbc592d925d7ca
 a_signal inleta "pre"
 a_send = 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage patch:72d2a148-6795-4c58-bb7f-d7e1a1ace566
; patch:add3fae2-888e-467c-838a-4ebcba082e6c name:Tube Overdrive channel:0 always_on:true
; instance:72d2a148-6795-4c58-bb7f-d7e1a1ace566 csound:vcs_mix_e0634619c0e14e989f81a934
; description: Warm stereo tube-style saturation: biased tanh, input filtering, DC removal and tone control. Drive (0–24 dB), Tone (2–12 kHz), Output (−18 to +6 dB). Restart the rack after changing performance controls. Fully wet; use as an insert. 0 dB Drive is not bypass. No oversampling or cabinet simulation.
; trigger: continuous (alwayson); score instrument number: 9
; insert for: Violin — Bowed Physical Model [violin-distorted]
instr vcs_mix_e0634619c0e14e989f81a934
 i_tube_drive_db_iout_1 chnget "__vcs_perf_188af0eff372da57588edb948422d75385f5aed1f9be9db97092c35998d1157e"
 ; node:tube_in_left opcode:inleta
 a_tube_in_left_asignal_12 inleta "left"
 ; node:tube_in_right opcode:inleta
 a_tube_in_right_asignal_13 inleta "right"
 i_tube_output_db_iout_3 chnget "__vcs_perf_2d8d04790676dd1ec6cc50e96c155fad42a6aa17df90e6f556fef7e851dae9e5"
 i_tube_tone_hz_iout_2 chnget "__vcs_perf_c99757b9635190472a7732b041d9347158ae6ea3bdf530c78a2b7e7dbc3ac373"
 ; node:tube_hp_left opcode:atone
 a_tube_hp_left_aout_2 atone a_tube_in_left_asignal_12, 20, 0
 ; node:tube_hp_right opcode:atone
 a_tube_hp_right_aout_7 atone a_tube_in_right_asignal_13, 20, 0
 ; node:tube_gain opcode:upsamp
 a_tube_gain_aout_1 upsamp ampdb((i_tube_output_db_iout_3 - (i_tube_drive_db_iout_1 / 2)))
 ; node:tube_pre_left opcode:butterlp
 a_tube_pre_left_aout_3 butterlp a_tube_hp_left_aout_2, 12000, 0
 ; node:tube_pre_right opcode:butterlp
 a_tube_pre_right_aout_8 butterlp a_tube_hp_right_aout_7, 12000, 0
 ; node:tube_shape_left opcode:tanh
 a_tube_shape_left_aout_4 = tanh(((a_tube_pre_left_aout_3 * ampdb(i_tube_drive_db_iout_1)) + 0.15))
 ; node:tube_shape_right opcode:tanh
 a_tube_shape_right_aout_9 = tanh(((a_tube_pre_right_aout_8 * ampdb(i_tube_drive_db_iout_1)) + 0.15))
 ; node:tube_dc_left opcode:atone
 a_tube_dc_left_aout_5 atone (a_tube_shape_left_aout_4 - 0.148885033623318), 10, 0
 ; node:tube_dc_right opcode:atone
 a_tube_dc_right_aout_10 atone (a_tube_shape_right_aout_9 - 0.148885033623318), 10, 0
 ; node:tube_tone_left opcode:butterlp
 a_tube_tone_left_aout_6 butterlp a_tube_dc_left_aout_5, i_tube_tone_hz_iout_2, 0
 ; node:tube_tone_right opcode:butterlp
 a_tube_tone_right_aout_11 butterlp a_tube_dc_right_aout_10, i_tube_tone_hz_iout_2, 0
 a_tube_out_left_asignal_14 = (a_tube_tone_left_aout_6 * a_tube_gain_aout_1)
 a_tube_out_right_asignal_15 = (a_tube_tone_right_aout_11 * a_tube_gain_aout_1)
 ; node:tube_out_left opcode:outleta
 outleta "left", a_tube_out_left_asignal_14
 ; node:tube_out_right opcode:outleta
 outleta "right", a_tube_out_right_asignal_15
endin

; mixer stage strip:72d2a148-6795-4c58-bb7f-d7e1a1ace566
; mixer strip: Tube Overdrive [72d2a148-6795-4c58-bb7f-d7e1a1ace566]
; initial gain: 0 dB; balance/pan: 0; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_6ba4ca57942e2e36cc9c22e5
 a_gain = 1
 a_left = 1
 a_right = 1
 a_p_360f84035942243c6a36537a inleta "p_360f84035942243c6a36537a"
 a_p_360f84035942243c6a36537a_post = a_p_360f84035942243c6a36537a * a_gain * a_left
 a_p_27042f4e6eca7d0b2a7ee402 inleta "p_27042f4e6eca7d0b2a7ee402"
 a_p_27042f4e6eca7d0b2a7ee402_post = a_p_27042f4e6eca7d0b2a7ee402 * a_gain * a_right
 outleta "pre_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a
 outleta "post_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a_post
 outleta "pre_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402
 outleta "post_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402_post
endin

; mixer stage route:3d81f376-1d8c-4022-86e7-7df102d02e07
; audio route:3d81f376-1d8c-4022-86e7-7df102d02e07 kind:insert
; from: Tube Overdrive [72d2a148-6795-4c58-bb7f-d7e1a1ace566] port:right stage:strip -> Violin — Bowed Physical Model [violin-distorted] port:right stage:strip
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_f6c0dcc000bc9b4bacf5a58f
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:70beda78-1a46-4397-a134-834b078d60d0
; audio route:70beda78-1a46-4397-a134-834b078d60d0 kind:insert
; from: Tube Overdrive [72d2a148-6795-4c58-bb7f-d7e1a1ace566] port:left stage:strip -> Violin — Bowed Physical Model [violin-distorted] port:left stage:strip
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_a40814b3c4248bf5963f477e
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage strip:cello
; mixer strip: Cello — Bowed Physical Model [cello]
; initial gain: 3.4 dB; balance/pan: 0.68; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_ffb3434f4ca77f81c225da20
 a_gain = 1.4791083881682074
 a_left = 0.31999999999999995
 a_right = 1
 a_p_360f84035942243c6a36537a inleta "p_360f84035942243c6a36537a"
 a_p_360f84035942243c6a36537a_post = a_p_360f84035942243c6a36537a * a_gain * a_left
 a_p_27042f4e6eca7d0b2a7ee402 inleta "p_27042f4e6eca7d0b2a7ee402"
 a_p_27042f4e6eca7d0b2a7ee402_post = a_p_27042f4e6eca7d0b2a7ee402 * a_gain * a_right
 outleta "pre_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a
 outleta "post_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a_post
 outleta "pre_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402
 outleta "post_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402_post
endin

; mixer stage route:a5119a09-c109-44ff-ac16-cb50b82550af
; audio route:a5119a09-c109-44ff-ac16-cb50b82550af kind:send
; from: Cello — Bowed Physical Model [cello] port:right stage:strip -> Reverb Effect [27d15955-f3d1-42c0-9bc9-98a8cca94550] port:right stage:input
; tap: post-fader; initial route gain: -5.5 dB; source mute and mixer solo gate this route.
instr vcs_mix_8fc9f865af06750141c6f818
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 0.53088444423098835
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:dfaeb5fe-a78a-4d6b-bb8e-5b24047b8199
; audio route:dfaeb5fe-a78a-4d6b-bb8e-5b24047b8199 kind:main
; from: Cello — Bowed Physical Model [cello] port:right stage:strip -> Master [$master] port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_041bb7c1d8eb75d988cb9997
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:e20be1a1-2cfc-4d05-a2c0-d5c6cca1a4ba
; audio route:e20be1a1-2cfc-4d05-a2c0-d5c6cca1a4ba kind:send
; from: Cello — Bowed Physical Model [cello] port:left stage:strip -> Reverb Effect [27d15955-f3d1-42c0-9bc9-98a8cca94550] port:left stage:input
; tap: post-fader; initial route gain: -5.5 dB; source mute and mixer solo gate this route.
instr vcs_mix_e18261476da11cf18e2aaa34
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 0.53088444423098835
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:fbb451ff-f158-4b6f-a7e3-44cb558a8e7d
; audio route:fbb451ff-f158-4b6f-a7e3-44cb558a8e7d kind:main
; from: Cello — Bowed Physical Model [cello] port:left stage:strip -> Master [$master] port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_92a0f30cf25dfef51702244b
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage strip:violin
; mixer strip: Violin — Bowed Physical Model [violin]
; initial gain: -2.3 dB; balance/pan: -0.54; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_0e164d5d03b1cf22a3b37f40
 a_gain = 0.76736148936181892
 a_left = 1
 a_right = 0.45999999999999996
 a_p_360f84035942243c6a36537a inleta "p_360f84035942243c6a36537a"
 a_p_360f84035942243c6a36537a_post = a_p_360f84035942243c6a36537a * a_gain * a_left
 a_p_27042f4e6eca7d0b2a7ee402 inleta "p_27042f4e6eca7d0b2a7ee402"
 a_p_27042f4e6eca7d0b2a7ee402_post = a_p_27042f4e6eca7d0b2a7ee402 * a_gain * a_right
 outleta "pre_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a
 outleta "post_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a_post
 outleta "pre_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402
 outleta "post_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402_post
endin

; mixer stage route:760b1bce-1c48-4ba5-b034-5ee9858808f6
; audio route:760b1bce-1c48-4ba5-b034-5ee9858808f6 kind:main
; from: Violin — Bowed Physical Model [violin] port:left stage:strip -> Master [$master] port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_93c47a8b6996f79a7a2b16f9
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:9a74b88d-3435-47f0-ace9-f3803ba97e8a
; audio route:9a74b88d-3435-47f0-ace9-f3803ba97e8a kind:send
; from: Violin — Bowed Physical Model [violin] port:left stage:strip -> Reverb Effect [27d15955-f3d1-42c0-9bc9-98a8cca94550] port:left stage:input
; tap: post-fader; initial route gain: -3.6 dB; source mute and mixer solo gate this route.
instr vcs_mix_833b3ad25cd3180c59463867
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 0.660693448007596
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:cea4c638-ba26-4c75-8ca1-a5270b01a34c
; audio route:cea4c638-ba26-4c75-8ca1-a5270b01a34c kind:main
; from: Violin — Bowed Physical Model [violin] port:right stage:strip -> Master [$master] port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_7c6bc80fa1ab6a1fe6728479
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:f865ce61-69dc-4453-8789-78f122470505
; audio route:f865ce61-69dc-4453-8789-78f122470505 kind:send
; from: Violin — Bowed Physical Model [violin] port:right stage:strip -> Reverb Effect [27d15955-f3d1-42c0-9bc9-98a8cca94550] port:right stage:input
; tap: post-fader; initial route gain: -3.6 dB; source mute and mixer solo gate this route.
instr vcs_mix_443958e8e3b07cdb4591aa78
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 0.660693448007596
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage strip:violin-distorted
; mixer strip: Violin — Bowed Physical Model [violin-distorted]
; initial gain: 8.2 dB; balance/pan: -0.23; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_3bb873e80f810966fc1b0096
 a_gain = 2.5703957827688635
 a_left = 1
 a_right = 0.77000000000000002
 a_p_360f84035942243c6a36537a inleta "p_360f84035942243c6a36537a"
 a_p_360f84035942243c6a36537a_post = a_p_360f84035942243c6a36537a * a_gain * a_left
 a_p_27042f4e6eca7d0b2a7ee402 inleta "p_27042f4e6eca7d0b2a7ee402"
 a_p_27042f4e6eca7d0b2a7ee402_post = a_p_27042f4e6eca7d0b2a7ee402 * a_gain * a_right
 outleta "pre_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a
 outleta "post_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a_post
 outleta "pre_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402
 outleta "post_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402_post
endin

; mixer stage route:11cb86e9-ff03-4374-beb8-b7fb07b514e4
; audio route:11cb86e9-ff03-4374-beb8-b7fb07b514e4 kind:main
; from: Violin — Bowed Physical Model [violin-distorted] port:right stage:strip -> Master [$master] port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_1e048d854ec929f9bf7f4a9d
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:4dd025ba-d9bc-44d3-a9ad-ceb7e125ce71
; audio route:4dd025ba-d9bc-44d3-a9ad-ceb7e125ce71 kind:main
; from: Violin — Bowed Physical Model [violin-distorted] port:left stage:strip -> Master [$master] port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_25c99852584537b9f0f52852
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:a4811bcf-5840-4bf0-871a-7aa5afcf21db
; audio route:a4811bcf-5840-4bf0-871a-7aa5afcf21db kind:send
; from: Violin — Bowed Physical Model [violin-distorted] port:right stage:strip -> Reverb Effect [27d15955-f3d1-42c0-9bc9-98a8cca94550] port:right stage:input
; tap: post-fader; initial route gain: -35.9 dB; source mute and mixer solo gate this route.
instr vcs_mix_9bde7ff9779b5fac821c2b58
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 0.016032453906900418
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:e299b62a-5396-4077-a175-3b8bf462706e
; audio route:e299b62a-5396-4077-a175-3b8bf462706e kind:send
; from: Violin — Bowed Physical Model [violin-distorted] port:left stage:strip -> Reverb Effect [27d15955-f3d1-42c0-9bc9-98a8cca94550] port:left stage:input
; tap: post-fader; initial route gain: -35.9 dB; source mute and mixer solo gate this route.
instr vcs_mix_51cd333b02ba4c96c978aed2
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 0.016032453906900418
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage patch:27d15955-f3d1-42c0-9bc9-98a8cca94550
; patch:edec9fff-768b-4de1-b892-53eb4249b2bf name:Reverb Effect channel:0 always_on:true
; instance:27d15955-f3d1-42c0-9bc9-98a8cca94550 csound:vcs_mix_fbb8a5d6b07e818b12093ef4
; description: Stereo reverb effect, uses inleta channel names "left" and "right".
; trigger: continuous (alwayson); score instrument number: 28
instr vcs_mix_fbb8a5d6b07e818b12093ef4
 i_708a8f43_1c17_4713_a35d_b0b12cee6abe_iout_1 chnget "__vcs_perf_f9266fd76e756c6a05ed46b97f9f8b537ed62114298ab40fb6a5abbdd83b9626"
 ; node:848adfb2-56f2-41d2-92da-582a363d3926 opcode:inleta
 a_848adfb2_56f2_41d2_92da_582a363d3926_asignal_3 inleta "left"
 i_a08d04b8_b407_498d_8186_8ec08a404e5c_iout_2 chnget "__vcs_perf_3c36cd5bce5bb1006444b99e9bb745945ddf03d9031d1821d743a64d686e2c6b"
 ; node:bd65fc9a-7053-4c0c-b7fc-63dc926b8d92 opcode:inleta
 a_bd65fc9a_7053_4c0c_b7fc_63dc926b8d92_asignal_4 inleta "right"
 ; node:a5e612c4-b021-465a-a2c6-f6edb0b620bd opcode:reverbsc
 a_a5e612c4_b021_465a_a2c6_f6edb0b620bd_aout_l_1, a_a5e612c4_b021_465a_a2c6_f6edb0b620bd_aout_r_2 reverbsc a_848adfb2_56f2_41d2_92da_582a363d3926_asignal_3, a_bd65fc9a_7053_4c0c_b7fc_63dc926b8d92_asignal_4, i_708a8f43_1c17_4713_a35d_b0b12cee6abe_iout_1, i_a08d04b8_b407_498d_8186_8ec08a404e5c_iout_2, sr, 1, 0
 ; node:17300219-eb5e-42d1-9b33-5bddb8b0689e opcode:outleta
 outleta "left", a_a5e612c4_b021_465a_a2c6_f6edb0b620bd_aout_l_1
 ; node:1bfdd7bf-0969-4ac0-83df-2b69f8ff6b9a opcode:outleta
 outleta "right", a_a5e612c4_b021_465a_a2c6_f6edb0b620bd_aout_r_2
endin

; mixer stage strip:27d15955-f3d1-42c0-9bc9-98a8cca94550
; mixer strip: Reverb Effect [27d15955-f3d1-42c0-9bc9-98a8cca94550]
; initial gain: -2.6 dB; balance/pan: 0.21; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_ba99917a15c479fd5286a077
 a_gain = 0.74131024130091749
 a_left = 0.79000000000000004
 a_right = 1
 a_p_360f84035942243c6a36537a inleta "p_360f84035942243c6a36537a"
 a_p_360f84035942243c6a36537a_post = a_p_360f84035942243c6a36537a * a_gain * a_left
 a_p_27042f4e6eca7d0b2a7ee402 inleta "p_27042f4e6eca7d0b2a7ee402"
 a_p_27042f4e6eca7d0b2a7ee402_post = a_p_27042f4e6eca7d0b2a7ee402 * a_gain * a_right
 outleta "pre_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a
 outleta "post_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a_post
 outleta "pre_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402
 outleta "post_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402_post
endin

; mixer stage route:7dc2f05b-f4b3-4796-9cee-b2181407dd52
; audio route:7dc2f05b-f4b3-4796-9cee-b2181407dd52 kind:main
; from: Reverb Effect [27d15955-f3d1-42c0-9bc9-98a8cca94550] port:right stage:strip -> Master [$master] port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_5c340235c2eb903d2f337ef8
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:82486b17-6a90-43be-8099-b155f2047463
; audio route:82486b17-6a90-43be-8099-b155f2047463 kind:main
; from: Reverb Effect [27d15955-f3d1-42c0-9bc9-98a8cca94550] port:left stage:strip -> Master [$master] port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_19d7a84a12a5d3700cb658af
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:9c6baa48-1a6d-4b26-9cd0-60c47ce5128e
; audio route:9c6baa48-1a6d-4b26-9cd0-60c47ce5128e kind:main
; from: Reverb Effect [27d15955-f3d1-42c0-9bc9-98a8cca94550] port:left stage:strip -> Master [$master] port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_d69bdb5bae83b83d55b96e74
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:a5eafd2e-1847-4058-afb4-8e7691a0cf8a
; audio route:a5eafd2e-1847-4058-afb4-8e7691a0cf8a kind:main
; from: Reverb Effect [27d15955-f3d1-42c0-9bc9-98a8cca94550] port:right stage:strip -> Master [$master] port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_56fb8d9ce6e0ae9da98beb0a
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage patch:$master
; patch:$master name:Master channel:0 always_on:true
; instance:$master csound:vcs_mix_63254fa67083d5eed1f09ece
; trigger: continuous (alwayson); score instrument number: 34
; role: Master processor; only audio explicitly routed here passes through Master.
instr vcs_mix_63254fa67083d5eed1f09ece
 a_left inleta "left"
 a_right inleta "right"
 outleta "__vcs_direct_e0ee8bb50685e05fa0f47ed0_left", a_left
 outleta "__vcs_direct_e0ee8bb50685e05fa0f47ed0_right", a_right
endin

; mixer stage route:a030c733-2cc2-4077-8bd1-acb0505b2e2a
; audio route:a030c733-2cc2-4077-8bd1-acb0505b2e2a kind:insert
; from: Master [$master] port:$direct.right stage:raw -> Tube Overdrive [257be2a4-c225-4106-9bcf-0b317fd284d7] port:right stage:input
; tap: raw (before strip); initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_2aa025a8151efe941dc4e3c1
 a_signal inleta "pre"
 a_send = 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:db8bdd11-b1fd-40f0-a686-8b96004352df
; audio route:db8bdd11-b1fd-40f0-a686-8b96004352df kind:insert
; from: Master [$master] port:$direct.left stage:raw -> Tube Overdrive [257be2a4-c225-4106-9bcf-0b317fd284d7] port:left stage:input
; tap: raw (before strip); initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_5e505dbb86b6acf9d7400868
 a_signal inleta "pre"
 a_send = 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage patch:257be2a4-c225-4106-9bcf-0b317fd284d7
; patch:add3fae2-888e-467c-838a-4ebcba082e6c name:Tube Overdrive channel:0 always_on:true
; instance:257be2a4-c225-4106-9bcf-0b317fd284d7 csound:vcs_mix_1c1a3a2ca316aee9c74f0d03
; description: Warm stereo tube-style saturation: biased tanh, input filtering, DC removal and tone control. Drive (0–24 dB), Tone (2–12 kHz), Output (−18 to +6 dB). Restart the rack after changing performance controls. Fully wet; use as an insert. 0 dB Drive is not bypass. No oversampling or cabinet simulation.
; trigger: continuous (alwayson); score instrument number: 37
; insert for: Master [$master]
instr vcs_mix_1c1a3a2ca316aee9c74f0d03
 i_tube_drive_db_iout_1 chnget "__vcs_perf_4ff61364d251b0d824001e651f27707854df11840f9171c354e3515911a29697"
 ; node:tube_in_left opcode:inleta
 a_tube_in_left_asignal_12 inleta "left"
 ; node:tube_in_right opcode:inleta
 a_tube_in_right_asignal_13 inleta "right"
 i_tube_output_db_iout_3 chnget "__vcs_perf_d9cc200cecf31415bf8c0352cf7f963342e7dda9b023380ac013cac8b583eb6e"
 i_tube_tone_hz_iout_2 chnget "__vcs_perf_ce18956c494704ce53c2f5c64011b32e98a9cc9f1d6e1d30d7404b9020caae83"
 ; node:tube_hp_left opcode:atone
 a_tube_hp_left_aout_2 atone a_tube_in_left_asignal_12, 20, 0
 ; node:tube_hp_right opcode:atone
 a_tube_hp_right_aout_7 atone a_tube_in_right_asignal_13, 20, 0
 ; node:tube_gain opcode:upsamp
 a_tube_gain_aout_1 upsamp ampdb((i_tube_output_db_iout_3 - (i_tube_drive_db_iout_1 / 2)))
 ; node:tube_pre_left opcode:butterlp
 a_tube_pre_left_aout_3 butterlp a_tube_hp_left_aout_2, 12000, 0
 ; node:tube_pre_right opcode:butterlp
 a_tube_pre_right_aout_8 butterlp a_tube_hp_right_aout_7, 12000, 0
 ; node:tube_shape_left opcode:tanh
 a_tube_shape_left_aout_4 = tanh(((a_tube_pre_left_aout_3 * ampdb(i_tube_drive_db_iout_1)) + 0.15))
 ; node:tube_shape_right opcode:tanh
 a_tube_shape_right_aout_9 = tanh(((a_tube_pre_right_aout_8 * ampdb(i_tube_drive_db_iout_1)) + 0.15))
 ; node:tube_dc_left opcode:atone
 a_tube_dc_left_aout_5 atone (a_tube_shape_left_aout_4 - 0.148885033623318), 10, 0
 ; node:tube_dc_right opcode:atone
 a_tube_dc_right_aout_10 atone (a_tube_shape_right_aout_9 - 0.148885033623318), 10, 0
 ; node:tube_tone_left opcode:butterlp
 a_tube_tone_left_aout_6 butterlp a_tube_dc_left_aout_5, i_tube_tone_hz_iout_2, 0
 ; node:tube_tone_right opcode:butterlp
 a_tube_tone_right_aout_11 butterlp a_tube_dc_right_aout_10, i_tube_tone_hz_iout_2, 0
 a_tube_out_left_asignal_14 = (a_tube_tone_left_aout_6 * a_tube_gain_aout_1)
 a_tube_out_right_asignal_15 = (a_tube_tone_right_aout_11 * a_tube_gain_aout_1)
 ; node:tube_out_left opcode:outleta
 outleta "left", a_tube_out_left_asignal_14
 ; node:tube_out_right opcode:outleta
 outleta "right", a_tube_out_right_asignal_15
endin

; mixer stage strip:257be2a4-c225-4106-9bcf-0b317fd284d7
; mixer strip: Tube Overdrive [257be2a4-c225-4106-9bcf-0b317fd284d7]
; initial gain: 0 dB; balance/pan: 0; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_ff2de93e1732c6035468789d
 a_gain = 1
 a_left = 1
 a_right = 1
 a_p_360f84035942243c6a36537a inleta "p_360f84035942243c6a36537a"
 a_p_360f84035942243c6a36537a_post = a_p_360f84035942243c6a36537a * a_gain * a_left
 a_p_27042f4e6eca7d0b2a7ee402 inleta "p_27042f4e6eca7d0b2a7ee402"
 a_p_27042f4e6eca7d0b2a7ee402_post = a_p_27042f4e6eca7d0b2a7ee402 * a_gain * a_right
 outleta "pre_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a
 outleta "post_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a_post
 outleta "pre_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402
 outleta "post_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402_post
endin

; mixer stage route:44b0eede-e106-483c-b34f-b81fcb3007a4
; audio route:44b0eede-e106-483c-b34f-b81fcb3007a4 kind:insert
; from: Tube Overdrive [257be2a4-c225-4106-9bcf-0b317fd284d7] port:left stage:strip -> Delay Effect [ecf967a2-fa56-4b15-b58f-556e653647f7] port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_61c152829e8602cc80b49d60
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:58932439-32c0-461e-a580-6b5723876ecc
; audio route:58932439-32c0-461e-a580-6b5723876ecc kind:insert
; from: Tube Overdrive [257be2a4-c225-4106-9bcf-0b317fd284d7] port:right stage:strip -> Delay Effect [ecf967a2-fa56-4b15-b58f-556e653647f7] port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_6143623b47a1e9ceba8bf5dd
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage patch:ecf967a2-fa56-4b15-b58f-556e653647f7
; patch:0ba19ccc-b8cb-4f75-9d25-d2b1fe9b8657 name:Delay Effect channel:0 always_on:true
; instance:ecf967a2-fa56-4b15-b58f-556e653647f7 csound:vcs_mix_3a89daedb9e641b7db5239e9
; description: Delay with multiple taps, distributed between left and right stereo channels
; trigger: continuous (alwayson); score instrument number: 41
; insert for: Master [$master]
instr vcs_mix_3a89daedb9e641b7db5239e9
 ; node:044821fd-9ac7-4cca-8675-bbc380a89cb2 opcode:const_i
 i_044821fd_9ac7_4cca_8675_bbc380a89cb2_iout_4 = 1.3453
 ; node:1cf14125-c23e-40e6-a646-2c18ff378741 opcode:const_i
 i_1cf14125_c23e_40e6_a646_2c18ff378741_iout_3 = 1.01
 ; node:52263122-9da1-4140-92cf-d099df62c058 opcode:const_i
 i_52263122_9da1_4140_92cf_d099df62c058_iout_5 = 1.87
 ; node:61db8f36-d44b-4aa4-a891-9ae3989e46e9 opcode:const_i
 i_61db8f36_d44b_4aa4_a891_9ae3989e46e9_iout_6 = 2.247
 ; node:7b4d3f96-fb05-429f-a9f3-129c55161231 opcode:const_i
 i_7b4d3f96_fb05_429f_a9f3_129c55161231_iout_1 = 0.5
 ; node:9506c37a-5cad-4d26-a6bf-f12b5a5d5a32 opcode:delayr
 a_9506c37a_5cad_4d26_a6bf_f12b5a5d5a32_aout_7 delayr 0.25, 0
 ; node:ab52aa81-7e93-4b07-882f-998254d349b3 opcode:const_i
 i_ab52aa81_7e93_4b07_882f_998254d349b3_iout_2 = 0.75
 ; node:input-left opcode:inleta
 a_input_left_asignal_8 inleta "left"
 ; node:input-right opcode:inleta
 a_input_right_asignal_9 inleta "right"
 ; node:8f170e85-b4d3-428a-9d2c-5d0b2fe2c3e7 opcode:deltap
 a_8f170e85_b4d3_428a_9d2c_5d0b2fe2c3e7_aout_4 deltap i_044821fd_9ac7_4cca_8675_bbc380a89cb2_iout_4
 ; node:cea24477-e104-4b04-b37c-e595d7d211fa opcode:deltap3
 a_cea24477_e104_4b04_b37c_e595d7d211fa_aout_3 deltap3 i_1cf14125_c23e_40e6_a646_2c18ff378741_iout_3
 ; node:86f88b0b-c3b2-494d-86ae-d4cfe4bf807d opcode:deltap3
 a_86f88b0b_c3b2_494d_86ae_d4cfe4bf807d_aout_5 deltap3 i_52263122_9da1_4140_92cf_d099df62c058_iout_5
 ; node:aec008c5-c41e-410f-92db-81f5405ac1bd opcode:deltap3
 a_aec008c5_c41e_410f_92db_81f5405ac1bd_aout_6 deltap3 i_61db8f36_d44b_4aa4_a891_9ae3989e46e9_iout_6
 ; node:d7ec8354-5f42-4ce5-a419-4fa5bbd3b7cf opcode:deltap3
 a_d7ec8354_5f42_4ce5_a419_4fa5bbd3b7cf_aout_1 deltap3 i_7b4d3f96_fb05_429f_a9f3_129c55161231_iout_1
 ; node:84209daf-bd91-4b30-b81f-8e35b14efac7 opcode:deltap3
 a_84209daf_bd91_4b30_b81f_8e35b14efac7_aout_2 deltap3 i_ab52aa81_7e93_4b07_882f_998254d349b3_iout_2
 ; node:b829d41b-3835-43da-9367-0eb9441962a2 opcode:delayw
 delayw ((a_input_left_asignal_8 + a_input_right_asignal_9) + (0.1 * ((((((a_d7ec8354_5f42_4ce5_a419_4fa5bbd3b7cf_aout_1 + a_84209daf_bd91_4b30_b81f_8e35b14efac7_aout_2) + a_cea24477_e104_4b04_b37c_e595d7d211fa_aout_3) + a_8f170e85_b4d3_428a_9d2c_5d0b2fe2c3e7_aout_4) + a_86f88b0b_c3b2_494d_86ae_d4cfe4bf807d_aout_5) + a_aec008c5_c41e_410f_92db_81f5405ac1bd_aout_6))))
 a_output_left_asignal_10 = (a_d7ec8354_5f42_4ce5_a419_4fa5bbd3b7cf_aout_1) + (a_cea24477_e104_4b04_b37c_e595d7d211fa_aout_3) + (a_aec008c5_c41e_410f_92db_81f5405ac1bd_aout_6)
 a_output_right_asignal_11 = (a_84209daf_bd91_4b30_b81f_8e35b14efac7_aout_2) + (a_8f170e85_b4d3_428a_9d2c_5d0b2fe2c3e7_aout_4) + (a_86f88b0b_c3b2_494d_86ae_d4cfe4bf807d_aout_5)
 ; node:output-left opcode:outleta
 outleta "left", a_output_left_asignal_10
 ; node:output-right opcode:outleta
 outleta "right", a_output_right_asignal_11
endin

; mixer stage strip:ecf967a2-fa56-4b15-b58f-556e653647f7
; mixer strip: Delay Effect [ecf967a2-fa56-4b15-b58f-556e653647f7]
; initial gain: 0 dB; balance/pan: 0; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_0c8e75599081be1983d5df8b
 a_gain = 1
 a_left = 1
 a_right = 1
 a_p_360f84035942243c6a36537a inleta "p_360f84035942243c6a36537a"
 a_p_360f84035942243c6a36537a_post = a_p_360f84035942243c6a36537a * a_gain * a_left
 a_p_27042f4e6eca7d0b2a7ee402 inleta "p_27042f4e6eca7d0b2a7ee402"
 a_p_27042f4e6eca7d0b2a7ee402_post = a_p_27042f4e6eca7d0b2a7ee402 * a_gain * a_right
 outleta "pre_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a
 outleta "post_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a_post
 outleta "pre_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402
 outleta "post_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402_post
endin

; mixer stage route:12f51b2c-b3b0-471d-9cd6-f83677c1e864
; audio route:12f51b2c-b3b0-471d-9cd6-f83677c1e864 kind:insert
; from: Delay Effect [ecf967a2-fa56-4b15-b58f-556e653647f7] port:right stage:strip -> Compressor Effect [774f0a8c-5d95-4aad-8f3a-bdec095eacc4] port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_ed18c5d0375df2f78b193960
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:a1e389ee-53e9-49ae-853e-1c49c7b80125
; audio route:a1e389ee-53e9-49ae-853e-1c49c7b80125 kind:insert
; from: Delay Effect [ecf967a2-fa56-4b15-b58f-556e653647f7] port:left stage:strip -> Compressor Effect [774f0a8c-5d95-4aad-8f3a-bdec095eacc4] port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_3345645f03eb0dd2db343372
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage patch:774f0a8c-5d95-4aad-8f3a-bdec095eacc4
; patch:e3c1fa8d-f3c6-441d-b443-707ce7ef924e name:Compressor Effect channel:0 always_on:true
; instance:774f0a8c-5d95-4aad-8f3a-bdec095eacc4 csound:vcs_mix_bd677deeb3a0ab97ae5143a9
; description: Dynamic ompression of audio signal
; trigger: continuous (alwayson); score instrument number: 45
; insert for: Master [$master]
instr vcs_mix_bd677deeb3a0ab97ae5143a9
 i_0f32b615_df59_4c8b_9a61_70252193be29_iout_5 chnget "__vcs_perf_79238889f260aee6e7fee44bdc02d0616157e5f7423f59f89238a53023617a0b"
 i_19053c50_a059_412c_9e4a_280db42edca9_iout_1 chnget "__vcs_perf_4f3112a522fc898a12738a061138c6dec1a2dcc85b92329a00b61d175b3bc972"
 i_364ce489_892d_463e_a519_4e51effe56f7_iout_4 chnget "__vcs_perf_86ddde0c5a41c1032c38cb02d0ef9778bc4a8df9bc25543394c15d92bb4e0756"
 ; node:6e51293d-34b8-4876-ab2a-1c97fce32d75 opcode:inleta
 a_6e51293d_34b8_4876_ab2a_1c97fce32d75_asignal_4 inleta "right"
 i_9eabdf3c_9d00_4f37_bf9b_c819ceb1c2a3_iout_2 chnget "__vcs_perf_d2e6d30cbca7ca3e45d2a3fe05df3e3fadd5251d9511057e786c29fa3505d6e3"
 i_a84d4364_5f74_4351_9e29_8e4c6d8a730f_iout_3 chnget "__vcs_perf_c7a2f054fd783cf1e8103636ec17b0d09f33c0b1b9caedf5bf924f1920181172"
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

; mixer stage strip:774f0a8c-5d95-4aad-8f3a-bdec095eacc4
; mixer strip: Compressor Effect [774f0a8c-5d95-4aad-8f3a-bdec095eacc4]
; initial gain: 0 dB; balance/pan: 0; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_6f94664d648353da23514687
 a_gain = 1
 a_left = 1
 a_right = 1
 a_p_360f84035942243c6a36537a inleta "p_360f84035942243c6a36537a"
 a_p_360f84035942243c6a36537a_post = a_p_360f84035942243c6a36537a * a_gain * a_left
 a_p_27042f4e6eca7d0b2a7ee402 inleta "p_27042f4e6eca7d0b2a7ee402"
 a_p_27042f4e6eca7d0b2a7ee402_post = a_p_27042f4e6eca7d0b2a7ee402 * a_gain * a_right
 outleta "pre_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a
 outleta "post_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a_post
 outleta "pre_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402
 outleta "post_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402_post
endin

; mixer stage route:c40243fa-3ede-4707-8230-853d99d2af6a
; audio route:c40243fa-3ede-4707-8230-853d99d2af6a kind:insert
; from: Compressor Effect [774f0a8c-5d95-4aad-8f3a-bdec095eacc4] port:left stage:strip -> Master [$master] port:$direct.left stage:strip
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_227e55cfdf79ddb39df4e595
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:d4bd6c94-91a6-497a-b158-33a520a9b0b9
; audio route:d4bd6c94-91a6-497a-b158-33a520a9b0b9 kind:insert
; from: Compressor Effect [774f0a8c-5d95-4aad-8f3a-bdec095eacc4] port:right stage:strip -> Master [$master] port:$direct.right stage:strip
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_1cc52511c5e54aa38ad42b65
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage strip:$master
; mixer strip: Master [$master]
; initial gain: -9.4 dB; balance/pan: 0; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_0644eeee2942927583ef32ed
 a_gain = 0.33884415613920255
 a_left = 1
 a_right = 1
 a_p_2336acbd28828ab05deafe52 inleta "p_2336acbd28828ab05deafe52"
 a_p_2336acbd28828ab05deafe52_post = a_p_2336acbd28828ab05deafe52 * a_gain * a_left
 a_p_2a250433534f9aea9d512171 inleta "p_2a250433534f9aea9d512171"
 a_p_2a250433534f9aea9d512171_post = a_p_2a250433534f9aea9d512171 * a_gain * a_right
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
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:direct_86c9f89b472612e7d2cddb1f
; audio route:direct_86c9f89b472612e7d2cddb1f kind:main
; from: Master [$master] port:$direct.right stage:strip -> Audio Output port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_5f16b779ade2ce91f307ff35
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage $output
; Final Audio Output: sums all routed paths, including direct paths that bypass Master.
instr vcs_mix_9cea1be1f8255375a6cf7b93
 a_left inleta "left"
 a_right inleta "right"
 outs a_left, a_right
endin

</CsInstruments>
<CsScore>
f 1 0 16384 10 1

; Measure 1 | 00:00
i 1 0 3.333333 50 60 1 1

; Measure 2 | 00:03
i 1 3.333333 1.666667 57 60 3 1
i 1 5 1.041667 55 60 5 1

; Measure 3 | 00:06
i 1 6.666667 3.333333 52 60 7 1
i 2 6.666667 3.333333 69 40 8 2

; Measure 4 | 00:10
i 1 10 1.666667 53 60 10 1
i 2 10 1.666667 65 40 12 2
i 1 11.666667 1.041667 52 60 14 1
i 2 11.666667 1.041667 64 40 16 2

; Measure 5 | 00:13
i 1 13.333333 2.5 41 65 19 1
i 2 13.541667 1.354167 62 85 20 2
i 2 15.208333 0.625 69 80 22 2
i 1 15.833333 2.5 50 60 24 1
i 2 16.041667 0.416667 67 82 26 2

; Measure 6 | 00:16
i 2 16.875 1.458333 64 80 28 2
i 1 18.333333 1.041667 45 62 30 1
i 2 18.541667 0.520833 65 85 32 2
i 2 19.375 0.625 64 80 35 2

; Measure 7 | 00:20
i 1 20 1.354167 50 60 36 1
i 2 20.208333 0.833333 69 82 38 2
i 2 21.041667 0.833333 74 80 40 2
i 1 21.666667 1.25 53 65 42 1
i 2 21.875 0.833333 72 85 44 2
i 2 22.708333 0.833333 67 80 46 2

; Measure 8 | 00:23
i 1 23.333333 1.354167 45 60 48 1
i 2 23.541667 0.833333 64 82 50 2
i 2 24.375 0.833333 65 80 52 2
i 1 25 1.041667 41 62 54 1
i 2 25.208333 1.041667 62 85 56 2

; Measure 9 | 00:26
i 1 26.666667 1.666667 41 65 59 1
i 2 26.875 0.625 62 85 60 2
i 2 27.708333 0.520833 62 79 62 2
i 1 28.333333 1.666667 50 59 65 1
i 2 28.541667 0.625 67 85 66 2
i 2 29.375 0.416667 69 79 68 2

; Measure 10 | 00:30
i 1 30 1.666667 45 65 71 1
i 2 30.208333 0.625 65 85 72 2
i 2 31.041667 0.520833 65 79 74 2
i 1 31.666667 1.041667 45 59 77 1
i 2 31.875 0.625 64 85 78 2
i 2 32.708333 0.416667 65 79 81 2

; Measure 11 | 00:33
i 1 33.333333 2.916667 50 65 83 1
i 2 33.75 0.833333 67 85 84 2
i 2 34.583333 0.833333 70 79 86 2
i 2 35.416667 0.833333 72 85 88 2
i 2 36.25 0.833333 69 79 91 2

; Measure 12 | 00:36
i 1 36.666667 2.708333 45 59 92 1
i 2 37.083333 0.833333 65 85 94 2
i 2 37.916667 0.833333 64 79 96 2
i 2 38.75 0.833333 62 85 98 2
i 2 39.583333 0.208333 62 79 101 2

; Measure 13 | 00:40
i 1 40 1.666667 50 85 103 1
i 2 40.208333 1.354167 65 65 104 2
i 1 41.666667 0.833333 57 80 107 1
i 2 41.875 0.625 74 60 108 2
i 1 42.5 0.833333 55 82 110 1
i 2 42.708333 0.416667 74 62 112 2

; Measure 14 | 00:43
i 1 43.333333 1.666667 52 80 115 1
i 2 43.541667 1.458333 69 60 116 2
i 1 45 0.833333 53 85 118 1
i 2 45.208333 0.520833 69 65 120 2
i 1 45.833333 0.520833 52 80 123 1
i 2 46.041667 0.625 69 60 124 2

; Measure 15 | 00:46
i 1 46.666667 0.208333 57 82 126 1
i 2 46.875 0.833333 74 62 129 2
i 1 47.5 0.520833 62 80 130 1
i 2 47.708333 0.833333 77 60 132 2
i 1 48.333333 0.416667 60 85 134 1
i 2 48.541667 0.833333 77 65 136 2
i 1 49.166667 0.520833 55 80 138 1
i 2 49.375 0.833333 74 60 140 2

; Measure 16 | 00:50
i 1 50 0.208333 52 82 142 1
i 2 50.208333 0.833333 69 62 145 2
i 1 50.833333 0.520833 53 80 146 1
i 2 51.041667 0.833333 69 60 148 2
i 1 51.666667 1.041667 50 85 150 1
i 2 51.875 1.041667 65 65 152 2

; Measure 17 | 00:53
i 1 53.333333 1.666667 50 85 155 1
i 2 53.541667 1.354167 65 65 156 2
i 1 55 0.833333 55 80 159 1
i 2 55.208333 0.625 74 60 160 2
i 1 55.833333 0.833333 57 82 162 1
i 2 56.041667 0.416667 74 62 164 2

; Measure 18 | 00:56
i 1 56.666667 1.666667 53 80 167 1
i 2 56.875 1.458333 69 60 168 2
i 1 58.333333 0.833333 52 85 170 1
i 2 58.541667 0.520833 69 65 172 2
i 1 59.166667 0.520833 53 80 175 1
i 2 59.375 0.625 69 60 176 2

; Measure 19 | 01:00
i 1 60 0.208333 55 82 178 1
i 2 60.208333 0.833333 74 62 181 2
i 1 60.833333 0.520833 58 80 182 1
i 2 61.041667 0.833333 77 60 184 2
i 1 61.666667 0.416667 60 85 186 1
i 2 61.875 0.833333 77 65 188 2
i 1 62.5 0.520833 57 80 190 1
i 2 62.708333 0.833333 74 60 192 2

; Measure 20 | 01:03
i 1 63.333333 0.208333 53 82 194 1
i 2 63.541667 0.833333 69 62 197 2
i 1 64.166667 0.520833 52 80 198 1
i 2 64.375 0.833333 69 60 200 2
i 1 65 1.041667 50 85 202 1
i 2 65.208333 1.041667 65 65 204 2

; Measure 21 | 01:06
i 1 66.666667 3.333333 48 59 207 1
i 2 67.083333 1.458333 65 75 208 2
i 2 68.75 1.354167 70 71 210 2

; Measure 22 | 01:10
i 1 70 2.708333 53 57 212 1
i 2 70.416667 1.458333 69 79 214 2
i 2 72.083333 1.041667 67 74 216 2

; Measure 23 | 01:13
i 1 73.333333 2.916667 57 66 219 1
i 2 73.75 0.833333 70 82 220 2
i 2 74.583333 0.833333 74 75 222 2
i 2 75.416667 0.833333 76 80 224 2
i 2 76.25 0.833333 72 73 227 2

; Measure 24 | 01:16
i 1 76.666667 2.708333 53 57 228 1
i 2 77.083333 0.833333 69 79 230 2
i 2 77.916667 0.833333 67 72 232 2
i 2 78.75 0.833333 65 74 234 2
i 2 79.583333 0.208333 65 68 237 2

; Measure 25 | 01:20
i 1 80 1.666667 48 63 239 1
i 2 80.208333 0.625 65 79 240 2
i 2 81.041667 0.520833 65 73 242 2
i 1 81.666667 1.666667 57 59 245 1
i 2 81.875 0.625 72 81 246 2
i 2 82.708333 0.416667 70 76 248 2

; Measure 26 | 01:23
i 1 83.333333 1.666667 53 67 251 1
i 2 83.541667 0.625 67 83 252 2
i 2 84.375 0.520833 67 77 254 2
i 1 85 1.041667 53 62 257 1
i 2 85.208333 0.625 69 84 258 2
i 2 86.041667 0.416667 67 79 261 2

; Measure 27 | 01:26
i 1 86.666667 2.916667 57 70 263 1
i 2 87.083333 1.666667 72 86 264 2
i 2 88.75 1.666667 76 78 266 2

; Measure 28 | 01:30
i 1 90 2.708333 53 61 268 1
i 2 90.416667 1.666667 67 83 270 2
i 2 92.083333 1.041667 65 72 272 2

; Measure 29 | 01:33
i 1 93.333333 3.333333 50 61 275 1
i 2 93.75 0.625 67 77 276 2
i 2 94.583333 0.520833 67 71 278 2
i 2 95.416667 0.625 74 79 280 2
i 2 96.25 0.416667 72 74 282 2

; Measure 30 | 01:36
i 1 96.666667 2.708333 55 59 284 1
i 2 97.083333 0.625 69 81 286 2
i 2 97.916667 0.520833 69 75 288 2
i 2 98.75 0.625 70 82 290 2
i 2 99.583333 0.208333 69 77 293 2

; Measure 31 | 01:40
i 1 100 1.25 58 68 295 1
i 2 100.208333 0.833333 74 84 296 2
i 2 101.041667 0.833333 79 77 298 2
i 1 101.666667 1.041667 62 60 300 1
i 2 101.875 0.833333 77 82 302 2
i 2 102.708333 0.833333 72 75 305 2

; Measure 32 | 01:43
i 1 103.333333 1.25 55 65 306 1
i 2 103.541667 0.833333 69 81 308 2
i 2 104.375 0.833333 70 74 310 2
i 1 105 1.041667 50 54 312 1
i 2 105.208333 0.833333 67 76 314 2
i 2 106.041667 0.416667 67 70 317 2

; Measure 33 | 01:46
i 1 106.666667 1.25 50 81 319 1
i 2 106.875 0.208333 65 64 320 2
i 2 107.291667 0.208333 65 56 322 2
i 2 107.708333 0.208333 74 58 324 2
i 2 108.125 0.208333 74 67 327 2
i 1 108.333333 1.041667 52 79 328 1
i 2 108.541667 0.208333 69 60 330 2
i 2 108.958333 0.208333 69 60 332 2
i 2 109.375 0.208333 69 69 335 2
i 2 109.791667 0.208333 69 62 337 2

; Measure 34 | 01:50
i 1 110 1.25 57 88 338 1
i 2 110.208333 0.208333 74 71 340 2
i 2 110.625 0.208333 77 62 342 2
i 2 111.041667 0.208333 77 61 344 2
i 2 111.458333 0.208333 74 68 347 2
i 1 111.666667 1.041667 52 79 348 1
i 2 111.875 0.208333 69 60 350 2
i 2 112.291667 0.208333 69 59 352 2
i 2 112.708333 0.208333 65 63 355 2
i 2 113.125 0.208333 65 55 357 2

; Measure 35 | 01:53
i 1 113.333333 1.25 41 69 358 1
i 2 113.541667 0.625 62 85 360 2
i 2 114.375 0.520833 67 81 362 2
i 1 115 1.041667 45 67 365 1
i 2 115.208333 0.625 65 89 366 2
i 2 116.041667 0.416667 64 84 369 2

; Measure 36 | 01:56
i 1 116.666667 1.25 50 76 371 1
i 2 116.875 0.625 67 92 372 2
i 2 117.708333 0.520833 72 84 374 2
i 1 118.333333 1.041667 45 67 377 1
i 2 118.541667 0.625 65 89 378 2
i 2 119.375 0.416667 62 78 381 2

; Measure 37 | 02:00
i 1 120 1.666667 53 85 383 1
i 2 120.208333 1.354167 72 67 384 2
i 1 121.666667 0.833333 58 82 387 1
i 2 121.875 0.625 81 64 388 2
i 1 122.5 0.833333 60 85 390 1
i 2 122.708333 0.416667 81 67 392 2

; Measure 38 | 02:03
i 1 123.333333 1.666667 57 84 395 1
i 2 123.541667 1.458333 77 66 396 2
i 1 125 0.833333 55 90 398 1
i 2 125.208333 0.520833 77 72 400 2
i 1 125.833333 0.520833 57 86 403 1
i 2 126.041667 0.625 77 68 404 2

; Measure 39 | 02:06
i 1 126.666667 0.208333 58 89 406 1
i 2 126.875 0.833333 81 71 409 2
i 1 127.5 0.520833 62 86 410 1
i 2 127.708333 0.833333 84 68 412 2
i 1 128.333333 0.416667 64 90 414 1
i 2 128.541667 0.833333 84 72 416 2
i 1 129.166667 0.520833 60 84 418 1
i 2 129.375 0.833333 81 66 420 2

; Measure 40 | 02:10
i 1 130 0.208333 57 86 422 1
i 2 130.208333 0.833333 77 68 425 2
i 1 130.833333 0.520833 55 83 426 1
i 2 131.041667 0.833333 77 65 428 2
i 1 131.666667 1.041667 53 84 430 1
i 2 131.875 1.041667 72 66 432 2

; Measure 41 | 02:13
i 1 133.333333 1.666667 50 80 435 1
i 1 135 0.833333 57 82 437 1
i 1 135.833333 0.833333 55 83 439 1

; Measure 42 | 02:16
i 1 136.666667 1.666667 52 84 441 1
i 2 136.666667 1.354167 62 84 442 2
i 1 138.333333 0.833333 53 85 445 1
i 2 138.333333 0.625 69 86 446 2
i 1 139.166667 0.520833 52 86 449 1
i 2 139.166667 0.416667 67 87 450 2

; Measure 43 | 02:20
i 2 140 1.666667 64 88 453 2
i 2 141.666667 0.833333 65 89 455 2
i 2 142.5 0.833333 64 90 457 2

; Measure 44 | 02:23
i 1 143.333333 2.708333 45 74 458 1
i 2 143.333333 1.666667 76 78 460 2
i 2 145 1.041667 73 78 462 2

; Measure 45 | 02:26
i 1 146.666667 1.25 41 75 465 1
i 2 146.875 0.208333 74 92 466 2
i 2 147.291667 0.208333 74 84 468 2
i 2 147.708333 0.208333 74 84 470 2
i 2 148.125 0.208333 74 92 473 2
i 1 148.333333 1.041667 50 71 474 1
i 2 148.541667 0.208333 81 86 476 2
i 2 148.958333 0.208333 81 86 478 2
i 2 149.375 0.208333 79 95 481 2
i 2 149.791667 0.208333 79 87 483 2

; Measure 46 | 02:30
i 1 150 1.25 45 79 484 1
i 2 150.208333 0.208333 76 96 486 2
i 2 150.625 0.208333 76 88 488 2
i 2 151.041667 0.208333 76 88 490 2
i 2 151.458333 0.208333 76 96 493 2
i 1 151.666667 1.041667 45 74 494 1
i 2 151.875 0.208333 77 89 496 2
i 2 152.291667 0.208333 77 89 498 2
i 2 152.708333 0.208333 76 98 501 2
i 2 153.125 0.208333 76 90 503 2

; Measure 47 | 02:33
i 1 153.333333 1.25 50 82 504 1
i 2 153.541667 0.208333 81 99 506 2
i 2 153.958333 0.208333 81 91 508 2
i 2 154.375 0.208333 86 90 510 2
i 2 154.791667 0.208333 86 98 513 2
i 1 155 1.041667 53 74 514 1
i 2 155.208333 0.208333 84 89 516 2
i 2 155.625 0.208333 84 89 518 2
i 2 156.041667 0.208333 79 96 521 2
i 2 156.458333 0.208333 79 88 523 2

; Measure 48 | 02:36
i 1 156.666667 1.25 45 79 524 1
i 2 156.875 0.208333 76 96 526 2
i 2 157.291667 0.208333 76 88 528 2
i 2 157.708333 0.208333 77 87 530 2
i 2 158.125 0.208333 77 95 533 2
i 1 158.333333 1.041667 41 68 534 1
i 2 158.541667 0.208333 74 83 536 2
i 2 158.958333 0.208333 74 83 538 2
i 2 159.375 0.208333 74 91 541 2
i 2 159.791667 0.208333 74 83 543 2

; Measure 49 | 02:40
i 1 160 2.5 41 67 544 1
i 2 160.208333 1.354167 62 83 546 2
i 2 161.875 0.625 69 80 548 2
i 1 162.5 2.5 50 65 550 1
i 2 162.708333 0.416667 67 83 552 2

; Measure 50 | 02:43
i 2 163.541667 1.458333 64 82 554 2
i 1 165 1.041667 45 69 556 1
i 2 165.208333 0.520833 65 88 558 2
i 2 166.041667 0.625 64 84 561 2

; Measure 51 | 02:46
i 1 166.666667 1.354167 50 69 562 1
i 2 166.875 0.833333 69 87 564 2
i 2 167.708333 0.833333 74 84 566 2
i 1 168.333333 1.25 53 72 568 1
i 2 168.541667 0.833333 72 88 570 2
i 2 169.375 0.833333 67 82 572 2

; Measure 52 | 02:50
i 1 170 1.354167 45 66 574 1
i 2 170.208333 0.833333 64 84 576 2
i 2 171.041667 0.833333 65 81 578 2
i 1 171.666667 1.041667 41 63 580 1
i 2 171.875 1.041667 62 82 582 2

; Measure 53 | 02:53
i 1 173.333333 3.333333 41 63 585 1
i 2 173.75 1.458333 62 79 586 2
i 2 175.416667 1.354167 67 75 588 2

; Measure 54 | 02:56
i 1 176.666667 2.708333 45 61 590 1
i 2 177.083333 1.458333 65 83 592 2
i 2 178.75 1.041667 64 78 594 2

; Measure 55 | 03:00
i 1 180 2.916667 50 70 597 1
i 2 180.416667 0.833333 67 86 598 2
i 2 181.25 0.833333 70 79 600 2
i 2 182.083333 0.833333 72 84 602 2
i 2 182.916667 0.833333 69 77 605 2

; Measure 56 | 03:03
i 1 183.333333 2.708333 45 61 606 1
i 2 183.75 0.833333 65 83 608 2
i 2 184.583333 0.833333 64 76 610 2
i 2 185.416667 0.833333 62 78 612 2
i 2 186.25 0.208333 62 72 615 2

; Measure 57 | 03:06
i 1 186.666667 1.5625 50 73 617 1
i 3 186.770833 0.3125 62 88 618 3
i 3 187.083333 0.3125 64 79 620 3
i 3 187.5 0.3125 69 86 622 3
i 3 187.916667 0.3125 70 77 624 3
i 1 188.333333 1.458333 57 66 627 1
i 3 188.333333 0.3125 67 88 628 3
i 3 188.75 0.3125 65 79 630 3
i 3 189.166667 0.3125 64 86 632 3
i 3 189.583333 0.3125 62 77 634 3

; Measure 58 | 03:10
i 1 190 1.666667 50 74 637 1
i 3 190 0.416667 65 89 638 3
i 3 190.416667 0.3125 67 80 640 3
i 3 190.833333 0.416667 64 87 642 3
i 3 191.25 0.3125 65 78 644 3
i 1 191.666667 1.458333 57 67 647 1
i 3 191.666667 0.416667 69 89 648 3
i 3 192.083333 0.3125 67 80 650 3
i 3 192.5 0.416667 74 87 652 3
i 3 192.916667 0.3125 72 78 654 3

; Measure 59 | 03:13
i 1 193.333333 1.666667 46 75 657 1
i 3 193.333333 0.3125 72 90 658 3
i 3 193.75 0.3125 74 81 660 3
i 3 194.166667 0.3125 67 88 662 3
i 3 194.583333 0.3125 69 79 664 3
i 1 195 1.458333 53 68 667 1
i 3 195 0.3125 64 90 668 3
i 3 195.416667 0.3125 62 81 670 3
i 3 195.833333 0.3125 65 88 672 3
i 3 196.25 0.3125 64 79 674 3

; Measure 60 | 03:16
i 1 196.666667 1.5625 46 76 677 1
i 3 196.666667 0.416667 62 91 678 3
i 3 197.083333 0.3125 64 82 680 3
i 3 197.5 0.416667 62 89 682 3
i 3 197.916667 0.3125 64 80 684 3
i 1 198.333333 1.458333 53 69 687 1
i 3 198.333333 0.416667 69 91 688 3
i 3 198.75 0.3125 67 82 690 3
i 3 199.166667 0.416667 67 89 692 3

; Measure 61 | 03:20
i 1 200 1.5625 43 77 695 1
i 3 200 0.3125 62 92 696 3
i 3 200.416667 0.3125 64 83 698 3
i 3 200.833333 0.104167 67 90 700 3
i 3 201.041667 0.208333 69 81 702 3
i 3 201.25 0.104167 70 81 704 3
i 3 201.458333 0.104167 67 90 706 3
i 1 201.666667 1.458333 50 70 709 1
i 3 201.666667 0.3125 65 92 710 3
i 3 202.083333 0.3125 64 83 712 3
i 3 202.5 0.104167 64 90 714 3
i 3 202.708333 0.208333 62 81 716 3
i 3 202.916667 0.104167 62 81 718 3
i 3 203.125 0.104167 64 90 721 3

; Measure 62 | 03:23
i 1 203.333333 1.666667 43 78 723 1
i 3 203.333333 0.416667 67 93 724 3
i 3 203.75 0.3125 69 84 726 3
i 3 204.166667 0.208333 70 91 728 3
i 3 204.375 0.208333 72 82 730 3
i 3 204.583333 0.208333 74 82 732 3
i 3 204.791667 0.104167 70 91 734 3
i 1 205 1.458333 50 71 737 1
i 3 205 0.416667 72 93 738 3
i 3 205.416667 0.3125 70 84 740 3
i 3 205.833333 0.208333 69 91 742 3
i 3 206.041667 0.208333 67 82 744 3
i 3 206.25 0.208333 65 82 746 3
i 3 206.458333 0.104167 69 91 749 3

; Measure 63 | 03:26
i 1 206.666667 0.833333 45 79 751 1
i 3 206.666667 0.3125 65 94 752 3
i 3 207.083333 0.3125 67 85 754 3
i 1 207.5 0.729167 52 72 757 1
i 3 207.5 0.104167 64 92 758 3
i 3 207.708333 0.208333 65 83 760 3
i 3 207.916667 0.104167 67 83 762 3
i 3 208.125 0.104167 64 92 764 3
i 1 208.333333 0.833333 48 72 767 1
i 3 208.333333 0.3125 62 94 768 3
i 3 208.75 0.3125 62 85 770 3
i 1 209.166667 0.625 45 72 773 1
i 3 209.166667 0.104167 62 92 774 3
i 3 209.375 0.208333 62 83 776 3
i 3 209.583333 0.104167 62 83 778 3
i 3 209.791667 0.104167 62 92 781 3

; Measure 64 | 03:30
i 1 210 0.729167 45 80 783 1
i 3 210 0.416667 62 95 784 3
i 3 210.416667 0.3125 64 86 786 3
i 1 210.833333 0.729167 52 73 789 1
i 3 210.833333 0.208333 67 93 790 3
i 3 211.041667 0.208333 69 84 792 3
i 3 211.25 0.208333 70 84 794 3
i 3 211.458333 0.104167 67 93 796 3
i 1 211.666667 0.729167 48 73 799 1
i 3 211.666667 0.416667 65 95 800 3
i 3 212.083333 0.3125 64 86 802 3
i 1 212.5 0.625 45 73 805 1
i 3 212.5 0.208333 64 93 806 3
i 3 212.708333 0.208333 62 84 808 3
i 3 212.916667 0.208333 62 84 810 3

; Measure 65 | 03:33
i 1 213.333333 0.729167 50 81 813 1
i 3 213.333333 0.104167 65 96 814 3
i 3 213.541667 0.208333 67 87 816 3
i 3 213.75 0.104167 69 87 818 3
i 3 213.958333 0.104167 65 96 820 3
i 1 214.166667 0.729167 57 74 823 1
i 3 214.166667 0.104167 72 94 824 3
i 3 214.375 0.208333 74 85 826 3
i 3 214.583333 0.104167 76 85 828 3
i 3 214.791667 0.104167 72 94 830 3
i 1 215 0.729167 53 74 833 1
i 3 215 0.104167 70 96 834 3
i 3 215.208333 0.208333 69 87 836 3
i 3 215.416667 0.104167 67 87 838 3
i 3 215.625 0.104167 70 96 840 3
i 1 215.833333 0.625 50 74 843 1
i 3 215.833333 0.104167 67 94 844 3
i 3 216.041667 0.208333 65 85 846 3
i 3 216.25 0.104167 64 85 848 3
i 3 216.458333 0.104167 67 94 851 3

; Measure 66 | 03:36
i 1 216.666667 0.833333 50 82 853 1
i 3 216.666667 0.208333 69 97 854 3
i 3 216.875 0.208333 70 88 856 3
i 3 217.083333 0.208333 72 88 858 3
i 3 217.291667 0.104167 69 97 860 3
i 1 217.5 0.729167 57 75 863 1
i 3 217.5 0.208333 67 95 864 3
i 3 217.708333 0.208333 69 86 866 3
i 3 217.916667 0.208333 70 86 868 3
i 3 218.125 0.104167 67 95 870 3
i 1 218.333333 0.833333 53 75 873 1
i 3 218.333333 0.208333 72 97 874 3
i 3 218.541667 0.208333 70 88 876 3
i 3 218.75 0.208333 69 88 878 3
i 3 218.958333 0.104167 72 97 880 3
i 1 219.166667 0.625 50 75 883 1
i 3 219.166667 0.208333 77 95 884 3
i 3 219.375 0.208333 76 86 886 3
i 3 219.583333 0.208333 74 86 888 3
i 3 219.791667 0.104167 77 95 891 3

; Measure 67 | 03:40
i 1 220 0.833333 46 83 893 1
i 3 220 0.104167 76 98 894 3
i 3 220.208333 0.208333 77 89 896 3
i 3 220.416667 0.104167 79 89 898 3
i 3 220.625 0.104167 76 98 900 3
i 1 220.833333 0.729167 53 76 903 1
i 3 220.833333 0.104167 70 96 904 3
i 3 221.041667 0.208333 72 87 906 3
i 3 221.25 0.104167 74 87 908 3
i 3 221.458333 0.104167 70 96 910 3
i 1 221.666667 0.833333 50 76 913 1
i 3 221.666667 0.104167 67 98 914 3
i 3 221.875 0.208333 65 89 916 3
i 3 222.083333 0.104167 64 89 918 3
i 3 222.291667 0.104167 67 98 920 3
i 1 222.5 0.625 46 76 923 1
i 3 222.5 0.104167 69 96 924 3
i 3 222.708333 0.208333 67 87 926 3
i 3 222.916667 0.104167 65 87 928 3
i 3 223.125 0.104167 69 96 931 3

; Measure 68 | 03:43
i 1 223.333333 0.729167 46 84 933 1
i 3 223.333333 0.208333 65 99 934 3
i 3 223.541667 0.208333 67 90 936 3
i 3 223.75 0.208333 69 90 938 3
i 3 223.958333 0.104167 65 99 940 3
i 1 224.166667 0.729167 53 77 943 1
i 3 224.166667 0.208333 65 97 944 3
i 3 224.375 0.208333 67 88 946 3
i 3 224.583333 0.208333 69 88 948 3
i 3 224.791667 0.104167 65 97 950 3
i 1 225 0.729167 50 77 953 1
i 3 225 0.208333 72 99 954 3
i 3 225.208333 0.208333 70 90 956 3
i 3 225.416667 0.208333 69 90 958 3
i 3 225.625 0.104167 72 99 960 3
i 1 225.833333 0.625 46 77 963 1
i 3 225.833333 0.208333 70 97 964 3
i 3 226.041667 0.208333 69 88 966 3
i 3 226.25 0.208333 67 88 968 3

; Measure 69 | 03:46
i 1 226.666667 0.729167 43 84 971 1
i 3 226.666667 0.104167 65 94 972 3
i 3 226.875 0.208333 67 85 974 3
i 3 227.083333 0.104167 69 85 976 3
i 3 227.291667 0.104167 65 94 978 3
i 1 227.5 0.729167 50 77 981 1
i 3 227.5 0.104167 70 92 982 3
i 3 227.708333 0.208333 72 83 984 3
i 3 227.916667 0.104167 74 83 986 3
i 3 228.125 0.104167 70 92 988 3
i 1 228.333333 0.729167 46 77 991 1
i 3 228.333333 0.104167 69 94 992 3
i 3 228.541667 0.208333 67 85 994 3
i 3 228.75 0.104167 65 85 996 3
i 3 228.958333 0.104167 69 94 998 3
i 1 229.166667 0.625 43 77 1001 1
i 3 229.166667 0.104167 67 92 1002 3
i 3 229.270833 0.104167 65 83 1004 3
i 3 229.375 0.104167 64 83 1006 3
i 3 229.479167 0.104167 67 92 1008 3
i 3 229.583333 0.104167 69 83 1010 3
i 3 229.6875 0.104167 70 83 1012 3
i 3 229.791667 0.104167 65 92 1015 3

; Measure 70 | 03:50
i 1 230 0.833333 43 84 1017 1
i 3 230 0.208333 70 96 1018 3
i 3 230.208333 0.208333 72 87 1020 3
i 3 230.416667 0.208333 74 87 1022 3
i 3 230.625 0.104167 70 96 1024 3
i 1 230.833333 0.729167 50 77 1027 1
i 3 230.833333 0.208333 74 94 1028 3
i 3 231.041667 0.208333 76 85 1030 3
i 3 231.25 0.208333 77 85 1032 3
i 3 231.458333 0.104167 74 94 1034 3
i 1 231.666667 0.833333 46 77 1037 1
i 3 231.666667 0.208333 76 96 1038 3
i 3 231.875 0.208333 74 87 1040 3
i 3 232.083333 0.208333 72 87 1042 3
i 3 232.291667 0.104167 76 96 1044 3
i 1 232.5 0.625 43 77 1047 1
i 3 232.5 0.104167 72 94 1048 3
i 3 232.604167 0.104167 70 85 1050 3
i 3 232.708333 0.104167 69 85 1052 3
i 3 232.8125 0.104167 72 94 1054 3
i 3 232.916667 0.104167 74 85 1056 3
i 3 233.020833 0.104167 76 85 1058 3
i 3 233.125 0.104167 70 94 1061 3

; Measure 71 | 03:53
i 1 233.333333 0.3125 45 85 1063 1
i 3 233.333333 0.104167 69 98 1064 3
i 3 233.541667 0.208333 70 89 1066 3
i 1 233.75 0.3125 52 78 1068 1
i 3 233.75 0.104167 72 89 1070 3
i 3 233.958333 0.104167 69 98 1072 3
i 1 234.166667 0.3125 48 78 1075 1
i 3 234.166667 0.104167 67 96 1076 3
i 3 234.375 0.208333 69 87 1078 3
i 1 234.583333 0.3125 45 78 1080 1
i 3 234.583333 0.104167 70 87 1082 3
i 3 234.791667 0.104167 67 96 1084 3
i 1 235 0.3125 52 85 1087 1
i 3 235 0.104167 65 98 1088 3
i 3 235.208333 0.208333 64 89 1090 3
i 1 235.416667 0.3125 45 78 1092 1
i 3 235.416667 0.104167 62 89 1094 3
i 3 235.625 0.104167 65 98 1096 3
i 1 235.833333 0.3125 48 78 1099 1
i 3 235.833333 0.104167 65 96 1100 3
i 3 235.9375 0.104167 64 87 1102 3
i 3 236.041667 0.104167 62 87 1104 3
i 3 236.145833 0.104167 65 96 1107 3
i 1 236.25 0.208333 52 78 1108 1
i 3 236.25 0.104167 67 87 1110 3
i 3 236.354167 0.104167 69 87 1112 3
i 3 236.458333 0.104167 64 96 1115 3

; Measure 72 | 03:56
i 1 236.666667 0.3125 45 85 1117 1
i 3 236.666667 0.208333 65 100 1118 3
i 3 236.875 0.208333 67 91 1120 3
i 1 237.083333 0.3125 52 78 1122 1
i 3 237.083333 0.208333 69 91 1124 3
i 3 237.291667 0.104167 65 100 1126 3
i 1 237.5 0.3125 48 78 1129 1
i 3 237.5 0.208333 70 98 1130 3
i 3 237.708333 0.208333 72 89 1132 3
i 1 237.916667 0.3125 45 78 1134 1
i 3 237.916667 0.208333 74 89 1136 3
i 3 238.125 0.104167 70 98 1138 3
i 1 238.333333 0.3125 52 85 1141 1
i 3 238.333333 0.208333 69 100 1142 3
i 3 238.541667 0.208333 67 91 1144 3
i 1 238.75 0.3125 45 78 1146 1
i 3 238.75 0.208333 65 91 1148 3
i 3 238.958333 0.104167 69 100 1150 3
i 1 239.166667 0.3125 48 78 1153 1
i 3 239.166667 0.104167 67 98 1154 3
i 3 239.270833 0.104167 65 89 1156 3
i 3 239.375 0.104167 64 89 1158 3
i 3 239.479167 0.104167 67 98 1161 3
i 1 239.583333 0.208333 52 78 1162 1
i 3 239.583333 0.104167 69 89 1164 3
i 3 239.6875 0.104167 70 89 1166 3
i 3 239.791667 0.104167 65 98 1169 3

; Measure 73 | 04:00
i 1 240 0.729167 50 86 1171 1
i 3 240 0.104167 67 102 1172 3
i 3 240.208333 0.208333 69 93 1174 3
i 3 240.416667 0.104167 70 93 1176 3
i 3 240.625 0.104167 67 102 1178 3
i 1 240.833333 0.729167 57 79 1181 1
i 3 240.833333 0.104167 74 100 1182 3
i 3 240.9375 0.104167 76 91 1184 3
i 3 241.041667 0.104167 77 91 1186 3
i 3 241.145833 0.104167 74 100 1188 3
i 3 241.25 0.104167 72 91 1190 3
i 3 241.354167 0.104167 70 91 1192 3
i 3 241.458333 0.104167 76 100 1194 3
i 1 241.666667 0.729167 53 79 1197 1
i 3 241.666667 0.104167 72 102 1198 3
i 3 241.875 0.208333 70 93 1200 3
i 3 242.083333 0.104167 69 93 1202 3
i 3 242.291667 0.104167 72 102 1204 3
i 1 242.5 0.625 50 79 1207 1
i 3 242.5 0.104167 69 100 1208 3
i 3 242.604167 0.104167 67 91 1210 3
i 3 242.708333 0.104167 65 91 1212 3
i 3 242.8125 0.104167 69 100 1214 3
i 3 242.916667 0.104167 70 91 1216 3
i 3 243.020833 0.104167 72 91 1218 3
i 3 243.125 0.104167 67 100 1221 3

; Measure 74 | 04:03
i 1 243.333333 0.833333 50 86 1223 1
i 3 243.333333 0.208333 70 104 1224 3
i 3 243.541667 0.208333 72 95 1226 3
i 3 243.75 0.208333 74 95 1228 3
i 3 243.958333 0.104167 70 104 1230 3
i 1 244.166667 0.729167 57 79 1233 1
i 3 244.166667 0.104167 69 102 1234 3
i 3 244.270833 0.104167 70 93 1236 3
i 3 244.375 0.104167 72 93 1238 3
i 3 244.479167 0.104167 69 102 1240 3
i 3 244.583333 0.104167 67 93 1242 3
i 3 244.6875 0.104167 65 93 1244 3
i 3 244.791667 0.104167 70 102 1246 3
i 1 245 0.833333 53 79 1249 1
i 3 245 0.208333 74 104 1250 3
i 3 245.208333 0.208333 72 95 1252 3
i 3 245.416667 0.208333 70 95 1254 3
i 3 245.625 0.104167 74 104 1256 3
i 1 245.833333 0.625 50 79 1259 1
i 3 245.833333 0.104167 79 102 1260 3
i 3 245.9375 0.104167 77 93 1262 3
i 3 246.041667 0.104167 76 93 1264 3
i 3 246.145833 0.104167 79 102 1266 3
i 3 246.25 0.104167 81 93 1268 3
i 3 246.354167 0.104167 82 93 1270 3
i 3 246.458333 0.104167 77 102 1273 3

; Measure 75 | 04:06
i 1 246.666667 0.3125 46 87 1275 1
i 3 246.666667 0.104167 77 106 1276 3
i 3 246.875 0.208333 79 97 1278 3
i 1 247.083333 0.3125 53 80 1280 1
i 3 247.083333 0.104167 81 97 1282 3
i 3 247.291667 0.104167 77 106 1284 3
i 1 247.5 0.3125 50 80 1287 1
i 3 247.5 0.104167 72 104 1288 3
i 3 247.604167 0.104167 74 95 1290 3
i 3 247.708333 0.104167 76 95 1292 3
i 3 247.8125 0.104167 72 104 1295 3
i 1 247.916667 0.3125 46 80 1296 1
i 3 247.916667 0.104167 70 95 1298 3
i 3 248.020833 0.104167 69 95 1300 3
i 3 248.125 0.104167 74 104 1302 3
i 1 248.333333 0.3125 53 87 1305 1
i 3 248.333333 0.104167 69 106 1306 3
i 3 248.541667 0.208333 67 97 1308 3
i 1 248.75 0.3125 46 80 1310 1
i 3 248.75 0.104167 65 97 1312 3
i 3 248.958333 0.104167 69 106 1314 3
i 1 249.166667 0.3125 50 80 1317 1
i 3 249.166667 0.104167 70 104 1318 3
i 3 249.270833 0.104167 69 95 1320 3
i 3 249.375 0.104167 67 95 1322 3
i 3 249.479167 0.104167 70 104 1325 3
i 1 249.583333 0.208333 53 80 1326 1
i 3 249.583333 0.104167 72 95 1328 3
i 3 249.6875 0.104167 74 95 1330 3
i 3 249.791667 0.104167 69 104 1333 3

; Measure 76 | 04:10
i 1 250 0.3125 46 87 1335 1
i 3 250 0.208333 67 108 1336 3
i 3 250.208333 0.208333 69 99 1338 3
i 1 250.416667 0.3125 53 80 1340 1
i 3 250.416667 0.208333 70 99 1342 3
i 3 250.625 0.104167 67 108 1344 3
i 1 250.833333 0.3125 50 80 1347 1
i 3 250.833333 0.104167 67 106 1348 3
i 3 250.9375 0.104167 69 97 1350 3
i 3 251.041667 0.104167 70 97 1352 3
i 3 251.145833 0.104167 67 106 1355 3
i 1 251.25 0.3125 46 80 1356 1
i 3 251.25 0.104167 65 97 1358 3
i 3 251.354167 0.104167 64 97 1360 3
i 3 251.458333 0.104167 69 106 1362 3
i 1 251.666667 0.3125 53 87 1365 1
i 3 251.666667 0.208333 74 108 1366 3
i 3 251.875 0.208333 72 99 1368 3
i 1 252.083333 0.3125 46 80 1370 1
i 3 252.083333 0.208333 70 99 1372 3
i 3 252.291667 0.104167 74 108 1374 3
i 1 252.5 0.3125 50 80 1377 1
i 3 252.5 0.104167 72 106 1378 3
i 3 252.604167 0.104167 70 97 1380 3
i 3 252.708333 0.104167 69 97 1382 3
i 3 252.8125 0.104167 72 106 1385 3
i 1 252.916667 0.208333 53 80 1386 1
i 3 252.916667 0.104167 74 97 1388 3
i 3 253.020833 0.104167 76 97 1390 3
i 3 253.125 0.104167 70 106 1393 3

; Measure 77 | 04:13
i 1 253.333333 0.729167 43 88 1395 1
i 3 253.333333 0.104167 69 110 1396 3
i 3 253.4375 0.104167 70 101 1398 3
i 3 253.541667 0.104167 72 101 1400 3
i 3 253.645833 0.104167 69 110 1402 3
i 3 253.75 0.104167 67 101 1404 3
i 3 253.854167 0.104167 65 101 1406 3
i 3 253.958333 0.104167 70 110 1408 3
i 1 254.166667 0.729167 50 81 1411 1
i 3 254.166667 0.104167 74 108 1412 3
i 3 254.375 0.208333 76 99 1414 3
i 3 254.583333 0.104167 77 99 1416 3
i 3 254.791667 0.104167 74 108 1418 3
i 1 255 0.729167 46 81 1421 1
i 3 255 0.104167 72 110 1422 3
i 3 255.104167 0.104167 70 101 1424 3
i 3 255.208333 0.104167 69 101 1426 3
i 3 255.3125 0.104167 72 110 1428 3
i 3 255.416667 0.104167 74 101 1430 3
i 3 255.520833 0.104167 76 101 1432 3
i 3 255.625 0.104167 70 110 1434 3
i 1 255.833333 0.625 43 81 1437 1
i 3 255.833333 0.104167 70 108 1438 3
i 3 255.9375 0.104167 69 99 1440 3
i 3 256.041667 0.104167 67 99 1442 3
i 3 256.145833 0.104167 70 108 1444 3
i 3 256.25 0.104167 72 99 1446 3
i 3 256.354167 0.104167 74 99 1448 3
i 3 256.458333 0.104167 69 108 1451 3

; Measure 78 | 04:16
i 1 256.666667 0.833333 43 88 1453 1
i 3 256.666667 0.104167 74 112 1454 3
i 3 256.770833 0.104167 76 103 1456 3
i 3 256.875 0.104167 77 103 1458 3
i 3 256.979167 0.104167 74 112 1460 3
i 3 257.083333 0.104167 72 103 1462 3
i 3 257.1875 0.104167 70 103 1464 3
i 3 257.291667 0.104167 76 112 1466 3
i 1 257.5 0.729167 50 81 1469 1
i 3 257.5 0.208333 77 110 1470 3
i 3 257.708333 0.208333 79 101 1472 3
i 3 257.916667 0.208333 81 101 1474 3
i 3 258.125 0.104167 77 110 1476 3
i 1 258.333333 0.833333 46 81 1479 1
i 3 258.333333 0.104167 79 112 1480 3
i 3 258.4375 0.104167 77 103 1482 3
i 3 258.541667 0.104167 76 103 1484 3
i 3 258.645833 0.104167 79 112 1486 3
i 3 258.75 0.104167 81 103 1488 3
i 3 258.854167 0.104167 82 103 1490 3
i 3 258.958333 0.104167 77 112 1492 3
i 1 259.166667 0.625 43 81 1495 1
i 3 259.166667 0.104167 76 110 1496 3
i 3 259.270833 0.104167 74 101 1498 3
i 3 259.375 0.104167 72 101 1500 3
i 3 259.479167 0.104167 76 110 1502 3
i 3 259.583333 0.104167 77 101 1504 3
i 3 259.6875 0.104167 79 101 1506 3
i 3 259.791667 0.104167 74 110 1509 3

; Measure 79 | 04:20
i 1 260 0.3125 45 89 1511 1
i 3 260 0.104167 72 114 1512 3
i 3 260.104167 0.104167 74 105 1514 3
i 3 260.208333 0.104167 76 105 1516 3
i 3 260.3125 0.104167 72 114 1519 3
i 1 260.416667 0.3125 52 82 1520 1
i 3 260.416667 0.104167 70 105 1522 3
i 3 260.520833 0.104167 69 105 1524 3
i 3 260.625 0.104167 74 114 1526 3
i 1 260.833333 0.3125 48 82 1529 1
i 3 260.833333 0.104167 70 112 1530 3
i 3 261.041667 0.208333 72 103 1532 3
i 1 261.25 0.3125 45 82 1534 1
i 3 261.25 0.104167 74 103 1536 3
i 3 261.458333 0.104167 70 112 1538 3
i 1 261.666667 0.3125 52 89 1541 1
i 3 261.666667 0.104167 69 114 1542 3
i 3 261.770833 0.104167 67 105 1544 3
i 3 261.875 0.104167 65 105 1546 3
i 3 261.979167 0.104167 69 114 1549 3
i 1 262.083333 0.3125 45 82 1550 1
i 3 262.083333 0.104167 70 105 1552 3
i 3 262.1875 0.104167 72 105 1554 3
i 3 262.291667 0.104167 67 114 1556 3
i 1 262.5 0.3125 48 82 1559 1
i 3 262.5 0.104167 69 112 1560 3
i 3 262.604167 0.104167 67 103 1562 3
i 3 262.708333 0.104167 65 103 1564 3
i 3 262.8125 0.104167 69 112 1567 3
i 1 262.916667 0.208333 52 82 1568 1
i 3 262.916667 0.104167 70 103 1570 3
i 3 263.020833 0.104167 72 103 1572 3
i 3 263.125 0.104167 67 112 1575 3

; Measure 80 | 04:23
i 1 263.333333 0.3125 45 89 1577 1
i 3 263.333333 0.104167 69 116 1578 3
i 3 263.4375 0.104167 70 107 1580 3
i 3 263.541667 0.104167 72 107 1582 3
i 3 263.645833 0.104167 69 116 1585 3
i 1 263.75 0.3125 52 82 1586 1
i 3 263.75 0.104167 67 107 1588 3
i 3 263.854167 0.104167 65 107 1590 3
i 3 263.958333 0.104167 70 116 1592 3
i 1 264.166667 0.3125 48 82 1595 1
i 3 264.166667 0.208333 74 114 1596 3
i 3 264.375 0.208333 76 105 1598 3
i 1 264.583333 0.3125 45 82 1600 1
i 3 264.583333 0.208333 77 105 1602 3
i 3 264.791667 0.104167 74 114 1604 3
i 1 265 0.3125 52 89 1607 1
i 3 265 0.104167 72 116 1608 3
i 3 265.104167 0.104167 70 107 1610 3
i 3 265.208333 0.104167 69 107 1612 3
i 3 265.3125 0.104167 72 116 1615 3
i 1 265.416667 0.3125 45 82 1616 1
i 3 265.416667 0.104167 74 107 1618 3
i 3 265.520833 0.104167 76 107 1620 3
i 3 265.625 0.104167 70 116 1622 3
i 1 265.833333 0.3125 48 82 1625 1
i 3 265.833333 0.104167 70 114 1626 3
i 3 265.9375 0.104167 69 105 1628 3
i 3 266.041667 0.104167 67 105 1630 3
i 3 266.145833 0.104167 70 114 1633 3
i 1 266.25 0.208333 52 82 1634 1
i 3 266.25 0.104167 72 105 1636 3
i 3 266.354167 0.104167 74 105 1638 3
i 3 266.458333 0.104167 69 114 1641 3

; Measure 81 | 04:26
i 1 266.666667 0.729167 50 92 1643 1
i 3 266.666667 0.104167 69 108 1644 3
i 3 266.770833 0.104167 70 99 1646 3
i 3 266.875 0.104167 72 99 1648 3
i 3 266.979167 0.104167 69 108 1650 3
i 3 267.083333 0.104167 67 99 1652 3
i 3 267.1875 0.104167 65 99 1654 3
i 3 267.291667 0.104167 70 108 1656 3
i 1 267.5 0.729167 57 85 1659 1
i 3 267.5 0.104167 76 106 1660 3
i 3 267.604167 0.104167 77 97 1662 3
i 3 267.708333 0.104167 79 97 1664 3
i 3 267.8125 0.104167 76 106 1666 3
i 3 267.916667 0.104167 74 97 1668 3
i 3 268.020833 0.104167 72 97 1670 3
i 3 268.125 0.104167 77 106 1672 3
i 1 268.333333 0.729167 53 85 1675 1
i 3 268.333333 0.104167 74 108 1676 3
i 3 268.541667 0.208333 72 99 1678 3
i 3 268.75 0.104167 70 99 1680 3
i 3 268.958333 0.104167 74 108 1682 3
i 1 269.166667 0.625 50 85 1685 1
i 3 269.166667 0.104167 70 106 1686 3
i 3 269.270833 0.104167 69 97 1688 3
i 3 269.375 0.104167 67 97 1690 3
i 3 269.479167 0.104167 70 106 1692 3
i 3 269.583333 0.104167 72 97 1694 3
i 3 269.6875 0.104167 74 97 1696 3
i 3 269.791667 0.104167 69 106 1699 3

; Measure 82 | 04:30
i 1 270 0.3125 50 93 1701 1
i 3 270 0.104167 72 109 1702 3
i 3 270.104167 0.104167 74 100 1704 3
i 3 270.208333 0.104167 76 100 1706 3
i 3 270.3125 0.104167 72 109 1709 3
i 1 270.416667 0.3125 57 86 1710 1
i 3 270.416667 0.104167 70 100 1712 3
i 3 270.520833 0.104167 69 100 1714 3
i 3 270.625 0.104167 74 109 1716 3
i 1 270.833333 0.3125 53 86 1719 1
i 3 270.833333 0.104167 70 107 1720 3
i 3 270.9375 0.104167 72 98 1722 3
i 3 271.041667 0.104167 74 98 1724 3
i 3 271.145833 0.104167 70 107 1727 3
i 1 271.25 0.3125 50 86 1728 1
i 3 271.25 0.104167 69 98 1730 3
i 3 271.354167 0.104167 67 98 1732 3
i 3 271.458333 0.104167 72 107 1734 3
i 1 271.666667 0.3125 57 93 1737 1
i 3 271.666667 0.208333 76 109 1738 3
i 3 271.875 0.208333 74 100 1740 3
i 1 272.083333 0.3125 50 86 1742 1
i 3 272.083333 0.208333 72 100 1744 3
i 3 272.291667 0.104167 76 109 1746 3
i 1 272.5 0.3125 64 86 1749 1
i 3 272.5 0.104167 81 107 1750 3
i 3 272.604167 0.104167 79 98 1752 3
i 3 272.708333 0.104167 77 98 1754 3
i 3 272.8125 0.104167 81 107 1757 3
i 1 272.916667 0.208333 57 86 1758 1
i 3 272.916667 0.104167 82 98 1760 3
i 3 273.020833 0.104167 84 98 1762 3
i 3 273.125 0.104167 79 107 1765 3

; Measure 83 | 04:33
i 1 273.333333 0.833333 46 94 1767 1
i 3 273.333333 0.104167 79 110 1768 3
i 3 273.4375 0.104167 81 101 1770 3
i 3 273.541667 0.104167 82 101 1772 3
i 3 273.645833 0.104167 79 110 1774 3
i 3 273.75 0.104167 77 101 1776 3
i 3 273.854167 0.104167 76 101 1778 3
i 3 273.958333 0.104167 81 110 1780 3
i 1 274.166667 0.729167 53 87 1783 1
i 3 274.166667 0.104167 74 108 1784 3
i 3 274.270833 0.104167 76 99 1786 3
i 3 274.375 0.104167 77 99 1788 3
i 3 274.479167 0.104167 74 108 1790 3
i 3 274.583333 0.104167 72 99 1792 3
i 3 274.6875 0.104167 70 99 1794 3
i 3 274.791667 0.104167 76 108 1796 3
i 1 275 0.833333 50 87 1799 1
i 3 275 0.104167 70 110 1800 3
i 3 275.208333 0.208333 69 101 1802 3
i 3 275.416667 0.104167 67 101 1804 3
i 3 275.625 0.104167 70 110 1806 3
i 1 275.833333 0.625 46 87 1809 1
i 3 275.833333 0.104167 72 108 1810 3
i 3 275.9375 0.104167 70 99 1812 3
i 3 276.041667 0.104167 69 99 1814 3
i 3 276.145833 0.104167 72 108 1816 3
i 3 276.25 0.104167 74 99 1818 3
i 3 276.354167 0.104167 76 99 1820 3
i 3 276.458333 0.104167 70 108 1823 3

; Measure 84 | 04:36
i 1 276.666667 0.3125 46 95 1825 1
i 3 276.666667 0.104167 69 111 1826 3
i 3 276.770833 0.104167 70 102 1828 3
i 3 276.875 0.104167 72 102 1830 3
i 3 276.979167 0.104167 69 111 1833 3
i 1 277.083333 0.3125 53 88 1834 1
i 3 277.083333 0.104167 67 102 1836 3
i 3 277.1875 0.104167 65 102 1838 3
i 3 277.291667 0.104167 70 111 1840 3
i 1 277.5 0.3125 50 88 1843 1
i 3 277.5 0.104167 69 109 1844 3
i 3 277.604167 0.104167 70 100 1846 3
i 3 277.708333 0.104167 72 100 1848 3
i 3 277.8125 0.104167 69 109 1851 3
i 1 277.916667 0.3125 46 88 1852 1
i 3 277.916667 0.104167 67 100 1854 3
i 3 278.020833 0.104167 65 100 1856 3
i 3 278.125 0.104167 70 109 1858 3
i 1 278.333333 0.3125 53 95 1861 1
i 3 278.333333 0.208333 76 111 1862 3
i 3 278.541667 0.208333 74 102 1864 3
i 1 278.75 0.3125 46 88 1866 1
i 3 278.75 0.208333 72 102 1868 3
i 3 278.958333 0.104167 76 111 1870 3
i 1 279.166667 0.3125 62 88 1873 1
i 3 279.166667 0.104167 74 109 1874 3
i 3 279.270833 0.104167 72 100 1876 3
i 3 279.375 0.104167 70 100 1878 3
i 3 279.479167 0.104167 74 109 1881 3
i 1 279.583333 0.208333 53 88 1882 1
i 3 279.583333 0.104167 76 100 1884 3
i 3 279.6875 0.104167 77 100 1886 3
i 3 279.791667 0.104167 72 109 1889 3

; Measure 85 | 04:40
i 1 280 0.729167 43 96 1891 1
i 3 280 0.104167 74 112 1892 3
i 3 280.104167 0.104167 76 103 1894 3
i 3 280.208333 0.104167 77 103 1896 3
i 3 280.3125 0.104167 74 112 1898 3
i 3 280.416667 0.104167 72 103 1900 3
i 3 280.520833 0.104167 70 103 1902 3
i 3 280.625 0.104167 76 112 1904 3
i 1 280.833333 0.729167 50 89 1907 1
i 3 280.833333 0.104167 79 110 1908 3
i 3 280.9375 0.104167 81 101 1910 3
i 3 281.041667 0.104167 82 101 1912 3
i 3 281.145833 0.104167 79 110 1914 3
i 3 281.25 0.104167 77 101 1916 3
i 3 281.354167 0.104167 76 101 1918 3
i 3 281.458333 0.104167 81 110 1920 3
i 1 281.666667 0.729167 46 89 1923 1
i 3 281.666667 0.104167 77 112 1924 3
i 3 281.770833 0.104167 76 103 1926 3
i 3 281.875 0.104167 74 103 1928 3
i 3 281.979167 0.104167 77 112 1930 3
i 3 282.083333 0.104167 79 103 1932 3
i 3 282.1875 0.104167 81 103 1934 3
i 3 282.291667 0.104167 76 112 1936 3
i 1 282.5 0.625 43 89 1939 1
i 3 282.5 0.104167 76 110 1940 3
i 3 282.604167 0.104167 74 101 1942 3
i 3 282.708333 0.104167 72 101 1944 3
i 3 282.8125 0.104167 76 110 1946 3
i 3 282.916667 0.104167 77 101 1948 3
i 3 283.020833 0.104167 79 101 1950 3
i 3 283.125 0.104167 74 110 1953 3

; Measure 86 | 04:43
i 1 283.333333 0.3125 43 97 1955 1
i 3 283.333333 0.104167 79 113 1956 3
i 3 283.4375 0.104167 81 104 1958 3
i 3 283.541667 0.104167 82 104 1960 3
i 3 283.645833 0.104167 79 113 1963 3
i 1 283.75 0.3125 50 90 1964 1
i 3 283.75 0.104167 77 104 1966 3
i 3 283.854167 0.104167 76 104 1968 3
i 3 283.958333 0.104167 81 113 1970 3
i 1 284.166667 0.3125 46 90 1973 1
i 3 284.166667 0.104167 82 111 1974 3
i 3 284.270833 0.104167 84 102 1976 3
i 3 284.375 0.104167 86 102 1978 3
i 3 284.479167 0.104167 82 111 1981 3
i 1 284.583333 0.3125 43 90 1982 1
i 3 284.583333 0.104167 81 102 1984 3
i 3 284.6875 0.104167 79 102 1986 3
i 3 284.791667 0.104167 84 111 1988 3
i 1 285 0.3125 50 97 1991 1
i 3 285 0.104167 84 113 1992 3
i 3 285.104167 0.104167 82 104 1994 3
i 3 285.208333 0.104167 81 104 1996 3
i 3 285.3125 0.104167 84 113 1999 3
i 1 285.416667 0.3125 43 90 2000 1
i 3 285.416667 0.104167 86 104 2002 3
i 3 285.520833 0.104167 86 104 2004 3
i 3 285.625 0.104167 82 113 2006 3
i 1 285.833333 0.3125 58 90 2009 1
i 3 285.833333 0.104167 81 111 2010 3
i 3 285.9375 0.104167 79 102 2012 3
i 3 286.041667 0.104167 77 102 2014 3
i 3 286.145833 0.104167 81 111 2017 3
i 1 286.25 0.208333 50 90 2018 1
i 3 286.25 0.104167 82 102 2020 3
i 3 286.354167 0.104167 84 102 2022 3
i 3 286.458333 0.104167 79 111 2025 3

; Measure 87 | 04:46
i 1 286.666667 0.833333 45 98 2027 1
i 3 286.666667 0.104167 77 114 2028 3
i 3 286.770833 0.104167 79 105 2030 3
i 3 286.875 0.104167 81 105 2032 3
i 3 286.979167 0.104167 77 114 2034 3
i 3 287.083333 0.104167 76 105 2036 3
i 3 287.1875 0.104167 74 105 2038 3
i 3 287.291667 0.104167 79 114 2040 3
i 1 287.5 0.729167 52 91 2043 1
i 3 287.5 0.104167 76 112 2044 3
i 3 287.604167 0.104167 77 103 2046 3
i 3 287.708333 0.104167 79 103 2048 3
i 3 287.8125 0.104167 76 112 2050 3
i 3 287.916667 0.104167 74 103 2052 3
i 3 288.020833 0.104167 72 103 2054 3
i 3 288.125 0.104167 77 112 2056 3
i 1 288.333333 0.833333 48 91 2059 1
i 3 288.333333 0.104167 74 114 2060 3
i 3 288.4375 0.104167 72 105 2062 3
i 3 288.541667 0.104167 70 105 2064 3
i 3 288.645833 0.104167 74 114 2066 3
i 3 288.75 0.104167 76 105 2068 3
i 3 288.854167 0.104167 77 105 2070 3
i 3 288.958333 0.104167 72 114 2072 3
i 1 289.166667 0.625 45 91 2075 1
i 3 289.166667 0.104167 74 112 2076 3
i 3 289.270833 0.104167 72 103 2078 3
i 3 289.375 0.104167 70 103 2080 3
i 3 289.479167 0.104167 74 112 2082 3
i 3 289.583333 0.104167 76 103 2084 3
i 3 289.6875 0.104167 77 103 2086 3
i 3 289.791667 0.104167 72 112 2089 3

; Measure 88 | 04:50
i 1 290 0.3125 45 99 2091 1
i 3 290 0.104167 74 115 2092 3
i 3 290.104167 0.104167 76 106 2094 3
i 3 290.208333 0.104167 77 106 2096 3
i 3 290.3125 0.104167 74 115 2099 3
i 1 290.416667 0.3125 52 92 2100 1
i 3 290.416667 0.104167 72 106 2102 3
i 3 290.520833 0.104167 70 106 2104 3
i 3 290.625 0.104167 76 115 2106 3
i 1 290.833333 0.3125 48 92 2109 1
i 3 290.833333 0.104167 79 113 2110 3
i 3 290.9375 0.104167 81 104 2112 3
i 3 291.041667 0.104167 82 104 2114 3
i 3 291.145833 0.104167 79 113 2117 3
i 1 291.25 0.3125 45 92 2118 1
i 3 291.25 0.104167 77 104 2120 3
i 3 291.354167 0.104167 76 104 2122 3
i 3 291.458333 0.104167 81 113 2124 3
i 1 291.666667 0.3125 52 99 2127 1
i 3 291.666667 0.104167 77 115 2128 3
i 3 291.770833 0.104167 76 106 2130 3
i 3 291.875 0.104167 74 106 2132 3
i 3 291.979167 0.104167 77 115 2135 3
i 1 292.083333 0.3125 45 92 2136 1
i 3 292.083333 0.104167 79 106 2138 3
i 3 292.1875 0.104167 81 106 2140 3
i 3 292.291667 0.104167 76 115 2142 3
i 1 292.5 0.3125 60 92 2145 1
i 3 292.5 0.104167 76 113 2146 3
i 3 292.604167 0.104167 74 104 2148 3
i 3 292.708333 0.104167 72 104 2150 3
i 3 292.8125 0.104167 76 113 2153 3
i 1 292.916667 0.208333 52 92 2154 1
i 3 292.916667 0.104167 77 104 2156 3
i 3 293.020833 0.104167 79 104 2158 3
i 3 293.125 0.104167 74 113 2161 3

; Measure 89 | 04:53
i 1 293.333333 0.3125 50 100 2163 1
i 3 293.333333 0.104167 74 120 2164 3
i 3 293.4375 0.104167 76 111 2166 3
i 3 293.541667 0.104167 77 111 2168 3
i 3 293.645833 0.104167 62 120 2171 3
i 1 293.75 0.3125 57 93 2172 1
i 3 293.75 0.104167 72 111 2174 3
i 3 293.854167 0.104167 70 111 2176 3
i 3 293.958333 0.104167 64 120 2178 3
i 3 294.0625 0.104167 74 111 2181 3
i 1 294.166667 0.3125 53 93 2182 1
i 3 294.166667 0.104167 81 118 2184 3
i 3 294.270833 0.104167 82 109 2186 3
i 3 294.375 0.104167 84 109 2188 3
i 3 294.479167 0.104167 69 118 2191 3
i 1 294.583333 0.3125 50 93 2192 1
i 3 294.583333 0.104167 79 109 2194 3
i 3 294.6875 0.104167 77 109 2196 3
i 3 294.791667 0.104167 70 118 2198 3
i 1 295 0.3125 57 100 2201 1
i 3 295 0.104167 79 120 2202 3
i 3 295.104167 0.104167 77 111 2204 3
i 3 295.208333 0.104167 76 111 2206 3
i 3 295.3125 0.104167 67 120 2209 3
i 1 295.416667 0.3125 50 93 2210 1
i 3 295.416667 0.104167 81 111 2212 3
i 3 295.520833 0.104167 82 111 2214 3
i 3 295.625 0.104167 65 120 2216 3
i 3 295.729167 0.104167 79 111 2219 3
i 1 295.833333 0.3125 53 93 2220 1
i 3 295.833333 0.104167 64 118 2222 3
i 3 295.9375 0.104167 62 109 2224 3
i 3 296.041667 0.104167 62 109 2226 3
i 3 296.145833 0.104167 76 118 2229 3
i 1 296.25 0.208333 57 93 2230 1
i 3 296.25 0.104167 65 109 2232 3
i 3 296.354167 0.104167 67 109 2234 3
i 3 296.458333 0.104167 74 118 2237 3

; Measure 90 | 04:56
i 1 296.666667 0.3125 50 101 2239 1
i 3 296.666667 0.104167 77 120 2240 3
i 3 296.770833 0.104167 79 112 2242 3
i 3 296.875 0.104167 81 112 2244 3
i 3 296.979167 0.104167 65 120 2247 3
i 1 297.083333 0.3125 57 94 2248 1
i 3 297.083333 0.104167 76 112 2250 3
i 3 297.1875 0.104167 74 112 2252 3
i 3 297.291667 0.104167 67 120 2254 3
i 3 297.395833 0.104167 77 112 2257 3
i 1 297.5 0.3125 53 94 2258 1
i 3 297.5 0.104167 64 119 2260 3
i 3 297.604167 0.104167 65 110 2262 3
i 3 297.708333 0.104167 67 110 2264 3
i 3 297.8125 0.104167 76 119 2267 3
i 1 297.916667 0.3125 50 94 2268 1
i 3 297.916667 0.104167 62 110 2270 3
i 3 298.020833 0.104167 62 110 2272 3
i 3 298.125 0.104167 77 119 2274 3
i 1 298.333333 0.3125 57 101 2277 1
i 3 298.333333 0.104167 81 120 2278 3
i 3 298.4375 0.104167 79 112 2280 3
i 3 298.541667 0.104167 77 112 2282 3
i 3 298.645833 0.104167 69 120 2285 3
i 1 298.75 0.3125 50 94 2286 1
i 3 298.75 0.104167 82 112 2288 3
i 3 298.854167 0.104167 84 112 2290 3
i 3 298.958333 0.104167 67 120 2292 3
i 3 299.0625 0.104167 81 112 2295 3
i 1 299.166667 0.3125 64 94 2296 1
i 3 299.166667 0.104167 86 119 2298 3
i 3 299.270833 0.104167 84 110 2300 3
i 3 299.375 0.104167 82 110 2302 3
i 3 299.479167 0.104167 74 119 2305 3
i 1 299.583333 0.208333 57 94 2306 1
i 3 299.583333 0.104167 86 110 2308 3
i 3 299.6875 0.104167 86 110 2310 3
i 3 299.791667 0.104167 72 119 2313 3

; Measure 91 | 05:00
i 1 300 0.3125 46 102 2315 1
i 3 300 0.104167 84 120 2316 3
i 3 300.104167 0.104167 86 113 2318 3
i 3 300.208333 0.104167 86 113 2320 3
i 3 300.3125 0.104167 72 120 2323 3
i 1 300.416667 0.3125 53 95 2324 1
i 3 300.416667 0.104167 82 113 2326 3
i 3 300.520833 0.104167 81 113 2328 3
i 3 300.625 0.104167 74 120 2330 3
i 3 300.729167 0.104167 84 113 2333 3
i 1 300.833333 0.3125 50 95 2334 1
i 3 300.833333 0.104167 67 120 2336 3
i 3 300.9375 0.104167 69 111 2338 3
i 3 301.041667 0.104167 70 111 2340 3
i 3 301.145833 0.104167 79 120 2343 3
i 1 301.25 0.3125 46 95 2344 1
i 3 301.25 0.104167 65 111 2346 3
i 3 301.354167 0.104167 64 111 2348 3
i 3 301.458333 0.104167 81 120 2350 3
i 1 301.666667 0.3125 53 102 2353 1
i 3 301.666667 0.104167 76 120 2354 3
i 3 301.770833 0.104167 74 113 2356 3
i 3 301.875 0.104167 72 113 2358 3
i 3 301.979167 0.104167 64 120 2361 3
i 1 302.083333 0.3125 46 95 2362 1
i 3 302.083333 0.104167 77 113 2364 3
i 3 302.1875 0.104167 79 113 2366 3
i 3 302.291667 0.104167 62 120 2368 3
i 3 302.395833 0.104167 76 113 2371 3
i 1 302.5 0.3125 50 95 2372 1
i 3 302.5 0.104167 77 120 2374 3
i 3 302.604167 0.104167 76 111 2376 3
i 3 302.708333 0.104167 74 111 2378 3
i 3 302.8125 0.104167 65 120 2381 3
i 1 302.916667 0.208333 53 95 2382 1
i 3 302.916667 0.104167 79 111 2384 3
i 3 303.020833 0.104167 81 111 2386 3
i 3 303.125 0.104167 64 120 2389 3

; Measure 92 | 05:03
i 1 303.333333 0.3125 46 103 2391 1
i 3 303.333333 0.104167 74 120 2392 3
i 3 303.4375 0.104167 76 114 2394 3
i 3 303.541667 0.104167 77 114 2396 3
i 3 303.645833 0.104167 62 120 2399 3
i 1 303.75 0.3125 53 96 2400 1
i 3 303.75 0.104167 72 114 2402 3
i 3 303.854167 0.104167 70 114 2404 3
i 3 303.958333 0.104167 64 120 2406 3
i 3 304.0625 0.104167 74 114 2409 3
i 1 304.166667 0.3125 50 96 2410 1
i 3 304.166667 0.104167 74 120 2412 3
i 3 304.270833 0.104167 76 112 2414 3
i 3 304.375 0.104167 77 112 2416 3
i 3 304.479167 0.104167 62 120 2419 3
i 1 304.583333 0.3125 46 96 2420 1
i 3 304.583333 0.104167 72 112 2422 3
i 3 304.6875 0.104167 70 112 2424 3
i 3 304.791667 0.104167 64 120 2426 3
i 1 305 0.3125 53 103 2429 1
i 3 305 0.104167 81 120 2430 3
i 3 305.104167 0.104167 79 114 2432 3
i 3 305.208333 0.104167 77 114 2434 3
i 3 305.3125 0.104167 69 120 2437 3
i 1 305.416667 0.3125 46 96 2438 1
i 3 305.416667 0.104167 82 114 2440 3
i 3 305.520833 0.104167 84 114 2442 3
i 3 305.625 0.104167 67 120 2444 3
i 3 305.729167 0.104167 81 114 2447 3
i 1 305.833333 0.3125 62 96 2448 1
i 3 305.833333 0.104167 67 120 2450 3
i 3 305.9375 0.104167 65 112 2452 3
i 3 306.041667 0.104167 64 112 2454 3
i 3 306.145833 0.104167 79 120 2457 3
i 1 306.25 0.208333 53 96 2458 1
i 3 306.25 0.104167 69 112 2460 3
i 3 306.354167 0.104167 70 112 2462 3
i 3 306.458333 0.104167 77 120 2465 3

; Measure 93 | 05:06
i 1 306.666667 0.3125 43 94 2467 1
i 3 306.666667 0.104167 70 114 2468 3
i 3 306.770833 0.104167 72 105 2470 3
i 3 306.875 0.104167 74 105 2472 3
i 3 306.979167 0.104167 82 114 2475 3
i 1 307.083333 0.3125 50 87 2476 1
i 3 307.083333 0.104167 69 105 2478 3
i 3 307.1875 0.104167 67 105 2480 3
i 3 307.291667 0.104167 84 114 2482 3
i 3 307.395833 0.104167 70 105 2485 3
i 1 307.5 0.3125 46 87 2486 1
i 3 307.5 0.104167 76 112 2488 3
i 3 307.708333 0.208333 77 103 2490 3
i 1 307.916667 0.3125 43 87 2492 1
i 3 307.916667 0.104167 79 103 2494 3
i 3 308.125 0.104167 64 112 2496 3
i 1 308.333333 0.3125 50 94 2499 1
i 3 308.333333 0.104167 74 114 2500 3
i 3 308.4375 0.104167 72 105 2502 3
i 3 308.541667 0.104167 70 105 2504 3
i 3 308.645833 0.104167 62 114 2507 3
i 1 308.75 0.3125 43 87 2508 1
i 3 308.75 0.104167 76 105 2510 3
i 3 308.854167 0.104167 77 105 2512 3
i 3 308.958333 0.104167 84 114 2514 3
i 3 309.0625 0.104167 74 105 2517 3
i 1 309.166667 0.3125 46 87 2518 1
i 3 309.166667 0.104167 72 112 2520 3
i 3 309.375 0.208333 70 103 2522 3
i 1 309.583333 0.208333 50 87 2524 1
i 3 309.583333 0.104167 69 103 2526 3
i 3 309.791667 0.104167 84 112 2529 3

; Measure 94 | 05:10
i 1 310 0.3125 43 89 2531 1
i 3 310 0.208333 74 109 2532 3
i 3 310.208333 0.208333 76 100 2534 3
i 1 310.416667 0.3125 50 82 2536 1
i 3 310.416667 0.208333 77 100 2538 3
i 3 310.625 0.104167 62 109 2540 3
i 1 310.833333 0.3125 46 82 2543 1
i 3 310.833333 0.208333 77 107 2544 3
i 3 311.041667 0.208333 79 98 2546 3
i 1 311.25 0.3125 43 82 2548 1
i 3 311.25 0.208333 81 98 2550 3
i 3 311.458333 0.104167 65 107 2552 3
i 1 311.666667 0.3125 50 89 2555 1
i 3 311.666667 0.208333 79 109 2556 3
i 3 311.875 0.208333 77 100 2558 3
i 1 312.083333 0.3125 43 82 2560 1
i 3 312.083333 0.208333 76 100 2562 3
i 3 312.291667 0.104167 67 109 2564 3
i 1 312.5 0.3125 46 82 2567 1
i 3 312.5 0.208333 76 107 2568 3
i 3 312.708333 0.208333 74 98 2570 3
i 1 312.916667 0.208333 50 82 2572 1
i 3 312.916667 0.208333 72 98 2574 3
i 3 313.125 0.104167 64 107 2577 3

; Measure 95 | 05:13
i 1 313.333333 0.833333 45 84 2579 1
i 3 313.333333 0.104167 70 104 2580 3
i 3 313.541667 0.208333 72 95 2582 3
i 3 313.75 0.104167 74 95 2584 3
i 3 313.958333 0.104167 82 104 2586 3
i 1 314.166667 0.729167 52 77 2589 1
i 3 314.166667 0.3125 69 102 2590 3
i 3 314.583333 0.3125 70 93 2592 3
i 1 315 0.833333 48 77 2595 1
i 3 315 0.104167 67 104 2596 3
i 3 315.208333 0.208333 65 95 2598 3
i 3 315.416667 0.104167 64 95 2600 3
i 3 315.625 0.104167 79 104 2602 3
i 1 315.833333 0.625 45 77 2605 1
i 3 315.833333 0.3125 67 102 2606 3
i 3 316.25 0.3125 65 93 2608 3

; Measure 96 | 05:16
i 1 316.666667 0.729167 45 79 2611 1
i 3 316.666667 0.416667 65 99 2612 3
i 3 317.083333 0.3125 67 90 2614 3
i 1 317.5 0.729167 52 72 2617 1
i 3 317.5 0.416667 70 97 2618 3
i 3 317.916667 0.3125 72 88 2620 3
i 1 318.333333 0.729167 48 72 2623 1
i 3 318.333333 0.416667 69 99 2624 3
i 3 318.75 0.3125 67 90 2626 3
i 1 319.166667 0.625 45 72 2629 1
i 3 319.166667 0.416667 67 97 2630 3

; Measure 97 | 05:20
i 1 320 1.5625 50 74 2633 1
i 3 320 0.3125 64 94 2634 3
i 3 320.416667 0.3125 65 85 2636 3
i 3 320.833333 0.3125 70 92 2638 3
i 3 321.25 0.3125 72 83 2640 3
i 1 321.666667 1.458333 57 67 2643 1
i 3 321.666667 0.3125 69 94 2644 3
i 3 322.083333 0.3125 67 85 2646 3
i 3 322.5 0.3125 65 92 2648 3
i 3 322.916667 0.3125 64 83 2650 3

; Measure 98 | 05:23
i 1 323.333333 1.666667 50 69 2653 1
i 3 323.333333 0.416667 65 89 2654 3
i 3 323.75 0.3125 67 80 2656 3
i 3 324.166667 0.416667 64 87 2658 3
i 3 324.583333 0.3125 65 78 2660 3
i 1 325 1.458333 57 62 2663 1
i 3 325 0.416667 69 89 2664 3
i 3 325.416667 0.3125 67 80 2666 3
i 3 325.833333 0.416667 74 87 2668 3
i 3 326.25 0.3125 72 78 2670 3

; Measure 99 | 05:26
i 1 326.666667 2.5 41 67 2673 1
i 3 326.875 1.354167 62 83 2674 3
i 3 328.541667 0.625 69 80 2676 3
i 1 329.166667 2.5 50 65 2678 1
i 3 329.375 0.416667 67 83 2680 3

; Measure 100 | 05:30
i 3 330.208333 1.458333 64 82 2682 3
i 1 331.666667 1.041667 45 69 2684 1
i 3 331.875 0.520833 65 88 2686 3
i 3 332.708333 0.625 64 84 2689 3

; Measure 101 | 05:33
i 1 333.333333 1.354167 50 69 2690 1
i 3 333.541667 0.833333 69 87 2692 3
i 3 334.375 0.833333 74 84 2694 3
i 1 335 1.25 53 72 2696 1
i 3 335.208333 0.833333 72 88 2698 3
i 3 336.041667 0.833333 67 82 2700 3

; Measure 102 | 05:36
i 1 336.666667 1.354167 45 66 2702 1
i 3 336.875 0.833333 64 84 2704 3
i 3 337.708333 0.833333 65 81 2706 3
i 1 338.333333 1.041667 41 63 2708 1
i 3 338.541667 1.041667 62 82 2710 3

; Measure 103 | 05:40
i 1 340 3.333333 41 60 2713 1
i 3 340.416667 1.458333 62 76 2714 3
i 3 342.083333 1.354167 67 72 2716 3

; Measure 104 | 05:43
i 1 343.333333 2.708333 45 58 2718 1
i 3 343.75 1.458333 65 80 2720 3
i 3 345.416667 1.041667 64 75 2722 3

; Measure 105 | 05:46
i 1 346.666667 2.916667 50 67 2725 1
i 3 347.083333 0.833333 67 83 2726 3
i 3 347.916667 0.833333 70 76 2728 3
i 3 348.75 0.833333 72 81 2730 3
i 3 349.583333 0.833333 69 74 2733 3

; Measure 106 | 05:50
i 1 350 2.708333 45 58 2734 1
i 3 350.416667 0.833333 65 80 2736 3
i 3 351.25 0.833333 64 73 2738 3
i 3 352.083333 0.833333 62 75 2740 3
i 3 352.916667 0.208333 62 69 2743 3

; Measure 107 | 05:53
i 1 353.333333 3.333333 41 54 2745 1
i 3 353.75 1.458333 62 70 2746 3
i 3 355.416667 1.354167 67 66 2748 3

; Measure 108 | 05:56
i 1 356.666667 2.708333 45 52 2750 1
i 3 357.083333 1.458333 65 74 2752 3
i 3 358.75 1.041667 64 69 2754 3

; Measure 109 | 06:00
i 1 360 2.916667 50 61 2757 1
i 3 360.416667 0.833333 67 77 2758 3
i 3 361.25 0.833333 70 70 2760 3
i 3 362.083333 0.833333 72 75 2762 3
i 3 362.916667 0.833333 69 68 2765 3

; Measure 110 | 06:03
i 1 363.333333 2.708333 45 52 2766 1
i 3 363.75 0.833333 65 74 2768 3
i 3 364.583333 0.833333 64 67 2770 3
i 3 365.416667 0.833333 62 69 2772 3
i 3 366.25 0.208333 62 63 2775 3

; Measure 111 | 06:06
i 1 366.666667 1.666667 50 73 2777 1
i 2 366.875 1.354167 65 55 2778 2
i 1 368.333333 0.833333 57 70 2781 1
i 2 368.541667 0.625 74 52 2782 2
i 1 369.166667 0.833333 55 73 2784 1
i 2 369.375 0.416667 74 55 2786 2

; Measure 112 | 06:10
i 1 370 1.666667 52 72 2789 1
i 2 370.208333 1.458333 69 54 2790 2
i 1 371.666667 0.833333 53 78 2792 1
i 2 371.875 0.520833 69 60 2794 2
i 1 372.5 0.833333 52 74 2797 1
i 2 372.708333 0.625 69 56 2798 2

; Measure 113 | 06:13
i 1 373.333333 0.833333 57 77 2800 1
i 2 373.541667 0.416667 74 59 2802 2
i 1 374.166667 0.833333 62 74 2805 1
i 2 374.375 0.625 77 56 2806 2
i 1 375 0.833333 60 78 2808 1
i 2 375.208333 0.520833 77 60 2810 2
i 1 375.833333 0.833333 55 72 2813 1
i 2 376.041667 0.625 74 54 2814 2

; Measure 114 | 06:16
i 1 376.666667 0.833333 52 74 2816 1
i 2 376.875 0.416667 69 56 2818 2
i 1 377.5 0.833333 53 71 2821 1
i 2 377.708333 0.625 69 53 2822 2
i 1 378.333333 1.041667 50 72 2824 1
i 2 378.541667 1.041667 65 54 2826 2

; Measure 115 | 06:20
i 1 380 2.916667 41 53 2829 1
i 2 380.416667 1.666667 62 40 2830 2
i 2 382.083333 1.666667 67 35 2832 2

; Measure 116 | 06:23
i 1 383.333333 2.708333 45 51 2834 1
i 2 383.75 1.666667 65 45 2836 2
i 2 385.416667 1.666667 64 39 2838 2

; Measure 117 | 06:26
i 1 386.666667 1.25 50 60 2840 1
i 2 387.083333 1.666667 67 48 2842 2
i 1 388.333333 1.041667 53 52 2844 1
i 2 388.75 1.666667 72 39 2846 2

; Measure 118 | 06:30
i 1 390 1.25 45 57 2848 1
i 2 390.416667 1.666667 65 45 2850 2
i 1 391.666667 1.041667 41 46 2852 1
i 2 392.083333 1.041667 62 32 2854 2

; Measure 119 | 06:33
i 1 393.333333 3.333333 50 55 2857 1
i 2 393.333333 1.666667 69 40 2858 2
i 2 395 1.666667 67 40 2860 2

; Measure 120 | 06:36
i 1 396.666667 2.916667 45 55 2862 1
i 2 396.666667 2.916667 65 40 2864 2

; Measure 121 | 06:40
i 1 400 3.333333 53 55 2867 1
i 2 400 1.666667 64 40 2868 2
i 2 401.666667 1.666667 65 40 2870 2

; Measure 122 | 06:43
i 1 403.333333 1.666667 52 55 2872 1
i 2 403.333333 2.708333 62 40 2874 2
i 1 405 1.041667 50 55 2876 1

; Measure 123 | 06:46
i 1 406.666667 3.333333 46 48 2879 1
i 2 406.666667 1.666667 65 40 2880 2
i 2 408.333333 1.666667 64 40 2882 2

; Measure 124 | 06:50
i 1 410 2.916667 45 48 2884 1
i 2 410 1.666667 62 40 2886 2
i 2 411.666667 1.25 61 40 2888 2

; Measure 125 | 06:53
i 1 413.333333 3.75 50 48 2891 1
i 2 413.333333 3.75 62 40 2892 2

f 0 422
</CsScore>
</CsoundSynthesizer>
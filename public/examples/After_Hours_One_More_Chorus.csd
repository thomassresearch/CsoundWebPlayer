<!--
Performance: After Hours, One More Chorus
Description: Two-minute Bb jazz blues at 120 BPM: expressive tenor lead, rootless acoustic piano comping, walking pizzicato double bass, and quiet brushed drums. Five 12-bar choruses. The original 389-note saxophone line and its velocity expression are preserved. Sax stays centered and forward, retaining the saved post-fader stereo reverb send and EQ. Piano and brushes share quieter sends; bass remains dry. Finite arrangement with a soft ending. Rhythm-section samples: GeneralUser GS 2.0.3 by S. Christian Collins; license included in export.
Created: 2026-10-18T15:52:43.095Z

This CSD was created with Orchestron.
Design instruments visually and hear ideas take shape.
Build expressive performances with sequencers, arpeggiators, live controls, and flexible audio routing.
Export portable Csound projects for rendering, sharing, and further sound design.

GitHub: https://github.com/thomassresearch/orchestron
-->
<CsoundSynthesizer>
<CsOptions>
-d -W -f -o After_Hours_One_More_Chorus.wav
;-m 16 -b 16384 -o dsp
</CsOptions>
<CsInstruments>
sr = 48000
ksmps = 16
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
gi_vcs_legato_e98738577e236bf968ea_serial init 0
gk_vcs_legato_e98738577e236bf968ea_winner init 0
gk_vcs_legato_e98738577e236bf968ea_note init 69
gk_vcs_legato_e98738577e236bf968ea_velocity init 0
gk_vcs_legato_e98738577e236bf968ea_channel init 1
gk_vcs_legato_e98738577e236bf968ea_seen init 0
gk_vcs_legato_e98738577e236bf968ea_cancelled init 0
; legato note-event collector (not subject to synthesis maxalloc)
instr 1
 gi_vcs_legato_e98738577e236bf968ea_serial = gi_vcs_legato_e98738577e236bf968ea_serial + 1
 iSerial = gi_vcs_legato_e98738577e236bf968ea_serial
 iNote = p4
 iVelocity = p5
 iChannel = p7
 iSerial = (p6 > 0 ? p6 : iSerial)
 xtratim ksmps / sr
 kReleased release
 if iSerial <= gk_vcs_legato_e98738577e236bf968ea_cancelled then
  turnoff
 elseif kReleased == 0 && iSerial > gk_vcs_legato_e98738577e236bf968ea_winner then
  gk_vcs_legato_e98738577e236bf968ea_winner = iSerial
  gk_vcs_legato_e98738577e236bf968ea_note = iNote
  gk_vcs_legato_e98738577e236bf968ea_velocity = iVelocity
  gk_vcs_legato_e98738577e236bf968ea_channel = iChannel
 endif
endin
gk_vcs_score_cc[] init 2048
instr 9000
  iindex = int(p4)
  gk_vcs_score_cc[iindex] = p5
endin
chnset 1, "__vcs_perf_2d0091edf6436d425227fa063010af0e3c34be2d36248abec28115fba246565a"
chnset 0.88573070534039289, "__vcs_perf_2a8eb42d0c41a51e5926a374cc5606c661c40c18d47eca4107f63b3000fd7736"
chnset 0.16596965922508389, "__vcs_perf_5c79376f39007b525f80151d8b651e2fa4996563d0172933e236a05697bb6cad"
chnset 0.66606154118198901, "__vcs_perf_ff50f2369acb2e71120b9c55d107e9e51f33f7cc6110385174f99a845d3a2e1c"
; node:sax_voices opcode:maxalloc
maxalloc "vcs_mix_87d50dfc10f374835d5b81d6", 1
chnset 0.81974609018885525, "__vcs_perf_1b3defab28448bada0dfa1ddb5aadb826c4dc248b58a85ad8e88eeb914bede0a"
chnset 6200, "__vcs_perf_99eb03c540c347d5688ca2d47d54bf4cb2c34e70d6aed68e4684cc36c655a709"
connect "vcs_mix_0531470a940264cd091dfdbc", "left", "vcs_mix_90fdf64166538497cea3bc64", "p_360f84035942243c6a36537a"
connect "vcs_mix_0531470a940264cd091dfdbc", "right", "vcs_mix_90fdf64166538497cea3bc64", "p_27042f4e6eca7d0b2a7ee402"
chnset 0, "__vcs_perf_8e6dcad07cdfe0175dceffa96d7174f8d1891bb7f8ec53038cad92abf629e6fd"
chnset 8.5367641970515251, "__vcs_perf_3fc58689f0d656b8d05b5208dfdd39f0cbb0ca82658cc37eca5110318a9513de"
chnset 10.824447884224355, "__vcs_perf_dabd35ddf7cbdb99549bdc47d8108ef192cde4863c317466a11dcf270bf73a21"
chnset 0, "__vcs_perf_8c5c6e818400a98307c988eb5b99d770be775a9d52af0d58a3eef998d5736513"
chnset 12.286763973534107, "__vcs_perf_84152d13397d95d44f0457af5f0e93f57a1a628d7ddfb506efce51300912b4cf"
chnset 0, "__vcs_perf_53168ab94d3fe77fd42e4e23609e1f8adf97c51c199a4128d3ea45ce7602bfd3"
chnset 0, "__vcs_perf_9a1ca76dc49a320c110a380d634b5bb08638a4e700081dcd08c5943b363abb9b"
connect "vcs_mix_59d2c289d0e545c42865d468", "left", "vcs_mix_af4d34457da067823f5a1202", "p_360f84035942243c6a36537a"
connect "vcs_mix_59d2c289d0e545c42865d468", "right", "vcs_mix_af4d34457da067823f5a1202", "p_27042f4e6eca7d0b2a7ee402"
connect "vcs_mix_8ffa713773dafe7799b5a117", "left", "vcs_mix_f86785032bb9afa6eadf1946", "p_360f84035942243c6a36537a"
connect "vcs_mix_8ffa713773dafe7799b5a117", "right", "vcs_mix_f86785032bb9afa6eadf1946", "p_27042f4e6eca7d0b2a7ee402"
connect "vcs_mix_33dc83ab9904e9526f7091d6", "left", "vcs_mix_d69e2b115c3aedc5f5e51463", "p_360f84035942243c6a36537a"
connect "vcs_mix_33dc83ab9904e9526f7091d6", "right", "vcs_mix_d69e2b115c3aedc5f5e51463", "p_27042f4e6eca7d0b2a7ee402"
connect "vcs_mix_f31970b501146d2c8f623d96", "left", "vcs_mix_b9c6f02e83fc10d0b3d7dda6", "p_360f84035942243c6a36537a"
connect "vcs_mix_f31970b501146d2c8f623d96", "right", "vcs_mix_b9c6f02e83fc10d0b3d7dda6", "p_27042f4e6eca7d0b2a7ee402"
chnset 12, "__vcs_perf_e599f5308b5173d7658ca3d2c1163c18a5606ddd6f0f952a231bb40a929c2d13"
chnset 0, "__vcs_perf_d22d6a780f3986522109caf8b564d71bab2263171e0d9f896c9517d2a1f082af"
chnset -6, "__vcs_perf_8bd8293df88bd044d149a07fd2ff64a6de2309329ec993a8bb2d0a9207e59827"
chnset 2, "__vcs_perf_96cf0cc896f1659597f454891ae0fb93b5dbc9527897827ceca9586fdef8c4ba"
connect "vcs_mix_aca7e15d559c5c807de5fdb1", "left", "vcs_mix_0ad8ddf0e098f053050576e7", "p_360f84035942243c6a36537a"
connect "vcs_mix_aca7e15d559c5c807de5fdb1", "right", "vcs_mix_0ad8ddf0e098f053050576e7", "p_27042f4e6eca7d0b2a7ee402"
connect "vcs_mix_54d89ea777c6e6525fad908a", "pre_p_360f84035942243c6a36537a", "vcs_mix_c9d8988717a1c08816d6c145", "pre"
connect "vcs_mix_54d89ea777c6e6525fad908a", "post_p_360f84035942243c6a36537a", "vcs_mix_c9d8988717a1c08816d6c145", "post"
connect "vcs_mix_c9d8988717a1c08816d6c145", "out", "vcs_mix_63254fa67083d5eed1f09ece", "left"
connect "vcs_mix_54d89ea777c6e6525fad908a", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_f3b2f5129918d28c11f70b2f", "pre"
connect "vcs_mix_54d89ea777c6e6525fad908a", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_f3b2f5129918d28c11f70b2f", "post"
connect "vcs_mix_f3b2f5129918d28c11f70b2f", "out", "vcs_mix_63254fa67083d5eed1f09ece", "right"
connect "vcs_mix_54d89ea777c6e6525fad908a", "pre_p_360f84035942243c6a36537a", "vcs_mix_4a27e1fd0c63a78281a0b56b", "pre"
connect "vcs_mix_54d89ea777c6e6525fad908a", "post_p_360f84035942243c6a36537a", "vcs_mix_4a27e1fd0c63a78281a0b56b", "post"
connect "vcs_mix_4a27e1fd0c63a78281a0b56b", "out", "vcs_mix_0531470a940264cd091dfdbc", "left"
connect "vcs_mix_54d89ea777c6e6525fad908a", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_ac8c5d4d5e38accc9fbae1eb", "pre"
connect "vcs_mix_54d89ea777c6e6525fad908a", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_ac8c5d4d5e38accc9fbae1eb", "post"
connect "vcs_mix_ac8c5d4d5e38accc9fbae1eb", "out", "vcs_mix_0531470a940264cd091dfdbc", "right"
connect "vcs_mix_90fdf64166538497cea3bc64", "pre_p_360f84035942243c6a36537a", "vcs_mix_09655d8e71d18d7d13dea7f7", "pre"
connect "vcs_mix_90fdf64166538497cea3bc64", "post_p_360f84035942243c6a36537a", "vcs_mix_09655d8e71d18d7d13dea7f7", "post"
connect "vcs_mix_09655d8e71d18d7d13dea7f7", "out", "vcs_mix_63254fa67083d5eed1f09ece", "left"
connect "vcs_mix_90fdf64166538497cea3bc64", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_15a5730c6889037e194ef182", "pre"
connect "vcs_mix_90fdf64166538497cea3bc64", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_15a5730c6889037e194ef182", "post"
connect "vcs_mix_15a5730c6889037e194ef182", "out", "vcs_mix_63254fa67083d5eed1f09ece", "right"
connect "vcs_mix_87d50dfc10f374835d5b81d6", "left", "vcs_mix_ec0205a8c1fe27b80ccd56ed", "pre"
connect "vcs_mix_ec0205a8c1fe27b80ccd56ed", "out", "vcs_mix_59d2c289d0e545c42865d468", "left"
connect "vcs_mix_87d50dfc10f374835d5b81d6", "right", "vcs_mix_03fb41ebf75031d33554fb6e", "pre"
connect "vcs_mix_03fb41ebf75031d33554fb6e", "out", "vcs_mix_59d2c289d0e545c42865d468", "right"
connect "vcs_mix_af4d34457da067823f5a1202", "pre_p_360f84035942243c6a36537a", "vcs_mix_c14f059675c23f376bc592e1", "pre"
connect "vcs_mix_af4d34457da067823f5a1202", "post_p_360f84035942243c6a36537a", "vcs_mix_c14f059675c23f376bc592e1", "post"
connect "vcs_mix_c14f059675c23f376bc592e1", "out", "vcs_mix_54d89ea777c6e6525fad908a", "p_360f84035942243c6a36537a"
connect "vcs_mix_af4d34457da067823f5a1202", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_c47937b09d6f6d9b5b596512", "pre"
connect "vcs_mix_af4d34457da067823f5a1202", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_c47937b09d6f6d9b5b596512", "post"
connect "vcs_mix_c47937b09d6f6d9b5b596512", "out", "vcs_mix_54d89ea777c6e6525fad908a", "p_27042f4e6eca7d0b2a7ee402"
connect "vcs_mix_f86785032bb9afa6eadf1946", "pre_p_360f84035942243c6a36537a", "vcs_mix_1860d50e858bb30bb13ca387", "pre"
connect "vcs_mix_f86785032bb9afa6eadf1946", "post_p_360f84035942243c6a36537a", "vcs_mix_1860d50e858bb30bb13ca387", "post"
connect "vcs_mix_1860d50e858bb30bb13ca387", "out", "vcs_mix_63254fa67083d5eed1f09ece", "left"
connect "vcs_mix_f86785032bb9afa6eadf1946", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_e49eb082f0b3f76b22bcb2d7", "pre"
connect "vcs_mix_f86785032bb9afa6eadf1946", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_e49eb082f0b3f76b22bcb2d7", "post"
connect "vcs_mix_e49eb082f0b3f76b22bcb2d7", "out", "vcs_mix_63254fa67083d5eed1f09ece", "right"
connect "vcs_mix_d69e2b115c3aedc5f5e51463", "pre_p_360f84035942243c6a36537a", "vcs_mix_e04907308242852d77e990d7", "pre"
connect "vcs_mix_d69e2b115c3aedc5f5e51463", "post_p_360f84035942243c6a36537a", "vcs_mix_e04907308242852d77e990d7", "post"
connect "vcs_mix_e04907308242852d77e990d7", "out", "vcs_mix_63254fa67083d5eed1f09ece", "left"
connect "vcs_mix_d69e2b115c3aedc5f5e51463", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_f92edf1aa4ea82d16f67ef70", "pre"
connect "vcs_mix_d69e2b115c3aedc5f5e51463", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_f92edf1aa4ea82d16f67ef70", "post"
connect "vcs_mix_f92edf1aa4ea82d16f67ef70", "out", "vcs_mix_63254fa67083d5eed1f09ece", "right"
connect "vcs_mix_b9c6f02e83fc10d0b3d7dda6", "pre_p_360f84035942243c6a36537a", "vcs_mix_eaefb3da9a303f11dc43573e", "pre"
connect "vcs_mix_b9c6f02e83fc10d0b3d7dda6", "post_p_360f84035942243c6a36537a", "vcs_mix_eaefb3da9a303f11dc43573e", "post"
connect "vcs_mix_eaefb3da9a303f11dc43573e", "out", "vcs_mix_63254fa67083d5eed1f09ece", "left"
connect "vcs_mix_b9c6f02e83fc10d0b3d7dda6", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_df9647b028d130cb09f95ca2", "pre"
connect "vcs_mix_b9c6f02e83fc10d0b3d7dda6", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_df9647b028d130cb09f95ca2", "post"
connect "vcs_mix_df9647b028d130cb09f95ca2", "out", "vcs_mix_63254fa67083d5eed1f09ece", "right"
connect "vcs_mix_f86785032bb9afa6eadf1946", "pre_p_360f84035942243c6a36537a", "vcs_mix_294eb44ea173648de93323a6", "pre"
connect "vcs_mix_f86785032bb9afa6eadf1946", "post_p_360f84035942243c6a36537a", "vcs_mix_294eb44ea173648de93323a6", "post"
connect "vcs_mix_294eb44ea173648de93323a6", "out", "vcs_mix_0531470a940264cd091dfdbc", "left"
connect "vcs_mix_f86785032bb9afa6eadf1946", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_35d357764dc91280b35ff769", "pre"
connect "vcs_mix_f86785032bb9afa6eadf1946", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_35d357764dc91280b35ff769", "post"
connect "vcs_mix_35d357764dc91280b35ff769", "out", "vcs_mix_0531470a940264cd091dfdbc", "right"
connect "vcs_mix_b9c6f02e83fc10d0b3d7dda6", "pre_p_360f84035942243c6a36537a", "vcs_mix_452c3d1c40181736c325af2c", "pre"
connect "vcs_mix_b9c6f02e83fc10d0b3d7dda6", "post_p_360f84035942243c6a36537a", "vcs_mix_452c3d1c40181736c325af2c", "post"
connect "vcs_mix_452c3d1c40181736c325af2c", "out", "vcs_mix_0531470a940264cd091dfdbc", "left"
connect "vcs_mix_b9c6f02e83fc10d0b3d7dda6", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_10da82df6e52165d2fe84077", "pre"
connect "vcs_mix_b9c6f02e83fc10d0b3d7dda6", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_10da82df6e52165d2fe84077", "post"
connect "vcs_mix_10da82df6e52165d2fe84077", "out", "vcs_mix_0531470a940264cd091dfdbc", "right"
connect "vcs_mix_63254fa67083d5eed1f09ece", "__vcs_direct_e0ee8bb50685e05fa0f47ed0_left", "vcs_mix_ac785392a4e13079ba8acdf1", "pre"
connect "vcs_mix_ac785392a4e13079ba8acdf1", "out", "vcs_mix_aca7e15d559c5c807de5fdb1", "left"
connect "vcs_mix_63254fa67083d5eed1f09ece", "__vcs_direct_e0ee8bb50685e05fa0f47ed0_right", "vcs_mix_9fe22acbd383df649495f672", "pre"
connect "vcs_mix_9fe22acbd383df649495f672", "out", "vcs_mix_aca7e15d559c5c807de5fdb1", "right"
connect "vcs_mix_0ad8ddf0e098f053050576e7", "pre_p_360f84035942243c6a36537a", "vcs_mix_4f2b1bf72e2d6d1d91a50c59", "pre"
connect "vcs_mix_0ad8ddf0e098f053050576e7", "post_p_360f84035942243c6a36537a", "vcs_mix_4f2b1bf72e2d6d1d91a50c59", "post"
connect "vcs_mix_4f2b1bf72e2d6d1d91a50c59", "out", "vcs_mix_0644eeee2942927583ef32ed", "p_2336acbd28828ab05deafe52"
connect "vcs_mix_0ad8ddf0e098f053050576e7", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_a59c277488bce5008c57059d", "pre"
connect "vcs_mix_0ad8ddf0e098f053050576e7", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_a59c277488bce5008c57059d", "post"
connect "vcs_mix_a59c277488bce5008c57059d", "out", "vcs_mix_0644eeee2942927583ef32ed", "p_2a250433534f9aea9d512171"
connect "vcs_mix_0644eeee2942927583ef32ed", "pre_p_2336acbd28828ab05deafe52", "vcs_mix_ec8b1641891924a3e102560a", "pre"
connect "vcs_mix_0644eeee2942927583ef32ed", "post_p_2336acbd28828ab05deafe52", "vcs_mix_ec8b1641891924a3e102560a", "post"
connect "vcs_mix_ec8b1641891924a3e102560a", "out", "vcs_mix_9cea1be1f8255375a6cf7b93", "left"
connect "vcs_mix_0644eeee2942927583ef32ed", "pre_p_2a250433534f9aea9d512171", "vcs_mix_5f16b779ade2ce91f307ff35", "pre"
connect "vcs_mix_0644eeee2942927583ef32ed", "post_p_2a250433534f9aea9d512171", "vcs_mix_5f16b779ade2ce91f307ff35", "post"
connect "vcs_mix_5f16b779ade2ce91f307ff35", "out", "vcs_mix_9cea1be1f8255375a6cf7b93", "right"
; node:samples opcode:sfload
gi_1d78e018e405ef26b7f75813_samples_ifilhandle sfload "9523d0c6-6d27-48c3-83e6-5e1902bf6834.sf2"
; node:samples opcode:sfload (alias)
gi_441349e1ec2f7fd0aa17267b_samples_ifilhandle init gi_1d78e018e405ef26b7f75813_samples_ifilhandle
; node:samples opcode:sfload (alias)
gi_b4d2062daaed8dcfe507ec4e_samples_ifilhandle init gi_1d78e018e405ef26b7f75813_samples_ifilhandle
; Continuous patches and mixer stages start with alwayson; note instruments start from MIDI/score events.
alwayson "vcs_mix_87d50dfc10f374835d5b81d6"
alwayson "vcs_mix_ec0205a8c1fe27b80ccd56ed"
alwayson "vcs_mix_03fb41ebf75031d33554fb6e"
alwayson "vcs_mix_59d2c289d0e545c42865d468"
alwayson "vcs_mix_d69e2b115c3aedc5f5e51463"
alwayson "vcs_mix_f92edf1aa4ea82d16f67ef70"
alwayson "vcs_mix_e04907308242852d77e990d7"
alwayson "vcs_mix_b9c6f02e83fc10d0b3d7dda6"
alwayson "vcs_mix_452c3d1c40181736c325af2c"
alwayson "vcs_mix_eaefb3da9a303f11dc43573e"
alwayson "vcs_mix_10da82df6e52165d2fe84077"
alwayson "vcs_mix_df9647b028d130cb09f95ca2"
alwayson "vcs_mix_af4d34457da067823f5a1202"
alwayson "vcs_mix_c14f059675c23f376bc592e1"
alwayson "vcs_mix_c47937b09d6f6d9b5b596512"
alwayson "vcs_mix_f86785032bb9afa6eadf1946"
alwayson "vcs_mix_e49eb082f0b3f76b22bcb2d7"
alwayson "vcs_mix_294eb44ea173648de93323a6"
alwayson "vcs_mix_1860d50e858bb30bb13ca387"
alwayson "vcs_mix_35d357764dc91280b35ff769"
alwayson "vcs_mix_54d89ea777c6e6525fad908a"
alwayson "vcs_mix_c9d8988717a1c08816d6c145"
alwayson "vcs_mix_f3b2f5129918d28c11f70b2f"
alwayson "vcs_mix_ac8c5d4d5e38accc9fbae1eb"
alwayson "vcs_mix_4a27e1fd0c63a78281a0b56b"
alwayson "vcs_mix_0531470a940264cd091dfdbc"
alwayson "vcs_mix_90fdf64166538497cea3bc64"
alwayson "vcs_mix_15a5730c6889037e194ef182"
alwayson "vcs_mix_09655d8e71d18d7d13dea7f7"
alwayson "vcs_mix_63254fa67083d5eed1f09ece"
alwayson "vcs_mix_9fe22acbd383df649495f672"
alwayson "vcs_mix_ac785392a4e13079ba8acdf1"
alwayson "vcs_mix_aca7e15d559c5c807de5fdb1"
alwayson "vcs_mix_0ad8ddf0e098f053050576e7"
alwayson "vcs_mix_4f2b1bf72e2d6d1d91a50c59"
alwayson "vcs_mix_a59c277488bce5008c57059d"
alwayson "vcs_mix_0644eeee2942927583ef32ed"
alwayson "vcs_mix_ec8b1641891924a3e102560a"
alwayson "vcs_mix_5f16b779ade2ce91f307ff35"
alwayson "vcs_mix_9cea1be1f8255375a6cf7b93"
; mixer stage patch:bass
; patch:247bf608-58f9-4034-8532-9fc012466425 name:Jazz Trio — Pizzicato Double Bass channel:3 always_on:false
; instance:bass csound:vcs_mix_33dc83ab9904e9526f7091d6
; description: Sampled pizzicato double bass with pluck transients, velocity dynamics, a short release, and 2.6 kHz body filtering. Suggested MIDI E1–C3. No automatic octave shift. Sample data: GeneralUser GS 2.0.3 by S. Christian Collins (included license). Dry Stereo Output to Master.
; trigger: MIDI channel 3 / score notes; score instrument number: 2
instr vcs_mix_33dc83ab9904e9526f7091d6
 i_vcs_internal_score_note_p4 = p4
 i_vcs_internal_score_velocity_p5 = p5
 ; node:env_attack_const opcode:const_i
 i_env_attack_const_iout_4 = 0.003
 ; node:env_decay_const opcode:const_i
 i_env_decay_const_iout_5 = 0.48
 ; node:env_release_const opcode:const_i
 i_env_release_const_iout_7 = 0.1
 ; node:env_sustain_const opcode:const_i
 i_env_sustain_const_iout_6 = 0.38
 ; node:key opcode:notnum
 i_key_inote_8 = p4
 ; node:pitch_cpsmidi opcode:cpsmidi
 i_pitch_cpsmidi_kfreq_1 = cpsmidinn(p4)
 ; node:velocity_scale_const opcode:const_i
 i_velocity_scale_const_iout_2 = 1
 ; node:amp_madsr opcode:madsr
 k_amp_madsr_kenv_1 madsr i_env_attack_const_iout_4, i_env_decay_const_iout_5, i_env_sustain_const_iout_6, i_env_release_const_iout_7, 0, -1
 ; node:speed opcode:k_mul
 k_speed_kout_3 = ((i_pitch_cpsmidi_kfreq_1 / i_pitch_cpsmidi_kfreq_1)) * (1)
 ; node:velocity_ampmidi opcode:ampmidi
 i_velocity_ampmidi_iamp_3 = ((p5 / 128) * (i_velocity_scale_const_iout_2))
 ; node:amp_velocity_envelope opcode:k_mul
 k_amp_velocity_envelope_kout_2 = (i_velocity_ampmidi_iamp_3) * (k_amp_madsr_kenv_1)
 ; node:sample_voice opcode:sfinstr3
 a_sample_voice_aleft_3, a_sample_voice_aright_4 sfinstr3 (i_velocity_ampmidi_iamp_3 * 128), i_key_inote_8, ((0.00008000 * k_amp_velocity_envelope_kout_2) * ((.35 + (.65 * i_velocity_ampmidi_iamp_3)))), k_speed_kout_3, 24, gi_441349e1ec2f7fd0aa17267b_samples_ifilhandle, 0, 0
 ; node:warmth opcode:butterlp
 a_warmth_aout_5 butterlp (.5 * ((a_sample_voice_aleft_3 + a_sample_voice_aright_4))), 2600, 0
 ; node:output_pan2 opcode:pan2
 a_output_pan2_aleft_1, a_output_pan2_aright_2 pan2 a_warmth_aout_5, 0.5, 0
 ; node:output_left opcode:outleta
 outleta "left", a_output_pan2_aleft_1
 ; node:output_right opcode:outleta
 outleta "right", a_output_pan2_aright_2
endin

; mixer stage patch:brushes
; patch:4af5cb31-c745-47af-a517-18b8d0223bc0 name:Jazz Trio — Brushed Drums channel:10 always_on:false
; instance:brushes csound:vcs_mix_f31970b501146d2c8f623d96
; description: Soft jazz brush kit: MIDI 36 feathered bass drum, 38 brushed tap, 40 brush sweep, 44 pedal hi-hat. Sweeps combine a brush recording with shaped filtered noise. Unmapped notes are silent. Polyphonic; independent brush strokes may overlap. Sample data: GeneralUser GS 2.0.3 by S. Christian Collins (included license). Dry Stereo Output to Master.
; trigger: MIDI channel 10 / score notes; score instrument number: 3
instr vcs_mix_f31970b501146d2c8f623d96
 i_vcs_internal_score_note_p4 = p4
 i_vcs_internal_score_velocity_p5 = p5
 ; node:env_attack_const opcode:const_i
 i_env_attack_const_iout_4 = 0.002
 ; node:env_decay_const opcode:const_i
 i_env_decay_const_iout_5 = 0.1
 ; node:env_release_const opcode:const_i
 i_env_release_const_iout_7 = 0.12
 ; node:env_sustain_const opcode:const_i
 i_env_sustain_const_iout_6 = 1
 ; node:key opcode:notnum
 i_key_inote_8 = p4
 ; node:pitch_cpsmidi opcode:cpsmidi
 i_pitch_cpsmidi_kfreq_1 = cpsmidinn(p4)
 ; node:velocity_scale_const opcode:const_i
 i_velocity_scale_const_iout_2 = 1
 ; node:amp_madsr opcode:madsr
 k_amp_madsr_kenv_1 madsr i_env_attack_const_iout_4, i_env_decay_const_iout_5, i_env_sustain_const_iout_6, i_env_release_const_iout_7, 0, -1
 ; node:speed opcode:k_mul
 k_speed_kout_3 = ((i_pitch_cpsmidi_kfreq_1 / i_pitch_cpsmidi_kfreq_1)) * (1)
 ; node:velocity_ampmidi opcode:ampmidi
 i_velocity_ampmidi_iamp_3 = ((p5 / 128) * (i_velocity_scale_const_iout_2))
 ; node:amp_velocity_envelope opcode:k_mul
 k_amp_velocity_envelope_kout_2 = (i_velocity_ampmidi_iamp_3) * (k_amp_madsr_kenv_1)
 ; node:key_36_if opcode:If
 if (i_key_inote_8) == (36) then
   ; case:key_36_hit 36: Feather kick
   ; node:key_36_sample opcode:sfinstr3
   a_key_36_sample_aleft_4, a_key_36_sample_aright_5 sfinstr3 (i_velocity_ampmidi_iamp_3 * 128), i_key_inote_8, ((0.00006000 * k_amp_velocity_envelope_kout_2) * ((.35 + (.65 * i_velocity_ampmidi_iamp_3)))), k_speed_kout_3, 148, gi_b4d2062daaed8dcfe507ec4e_samples_ifilhandle, 0, 0
   a_key_36_if_left_3 = (.5 * ((a_key_36_sample_aleft_4 + a_key_36_sample_aright_5)))
 else
   ; case:key_36_off Other notes: silence
   a_key_36_if_left_3 = 0
 endif
 ; node:key_38_if opcode:If
 if (i_key_inote_8) == (38) then
   ; case:key_38_hit 38: Brush tap
   ; node:key_38_sample opcode:sfinstr3
   a_key_38_sample_aleft_7, a_key_38_sample_aright_8 sfinstr3 (i_velocity_ampmidi_iamp_3 * 128), i_key_inote_8, ((0.00030000 * k_amp_velocity_envelope_kout_2) * ((.35 + (.65 * i_velocity_ampmidi_iamp_3)))), k_speed_kout_3, 49, gi_b4d2062daaed8dcfe507ec4e_samples_ifilhandle, 0, 0
   a_key_38_if_left_6 = (.5 * ((a_key_38_sample_aleft_7 + a_key_38_sample_aright_8)))
 else
   ; case:key_38_off Other notes: silence
   a_key_38_if_left_6 = 0
 endif
 ; node:key_40_if opcode:If
 if (i_key_inote_8) == (40) then
   ; case:key_40_hit 40: Brush sweep
   ; node:brush_noise opcode:noise
   a_brush_noise_aout_12 noise (.20 * k_amp_velocity_envelope_kout_2), 0.2
   ; node:brush_shape opcode:linseg
   k_brush_shape_kenv_4 linseg 0, 0.06, 1, 0.34, 0.35
   ; node:key_40_sample opcode:sfinstr3
   a_key_40_sample_aleft_10, a_key_40_sample_aright_11 sfinstr3 (i_velocity_ampmidi_iamp_3 * 128), i_key_inote_8, ((0.00012000 * k_amp_velocity_envelope_kout_2) * ((.35 + (.65 * i_velocity_ampmidi_iamp_3)))), k_speed_kout_3, 49, gi_b4d2062daaed8dcfe507ec4e_samples_ifilhandle, 0, 0
   ; node:brush_gain opcode:k_to_a
   a_brush_gain_aout_13 interp k_brush_shape_kenv_4
   ; node:brush_band opcode:butterbp
   a_brush_band_aout_14 butterbp (a_brush_noise_aout_12 * a_brush_gain_aout_13), 2200, 3100, 0
   a_key_40_if_left_9 = ((.5 * ((a_key_40_sample_aleft_10 + a_key_40_sample_aright_11))) + a_brush_band_aout_14)
 else
   ; case:key_40_off Other notes: silence
   a_key_40_if_left_9 = 0
 endif
 ; node:key_44_if opcode:If
 if (i_key_inote_8) == (44) then
   ; case:key_44_hit 44: Pedal hi-hat
   ; node:key_44_sample opcode:sfinstr3
   a_key_44_sample_aleft_16, a_key_44_sample_aright_17 sfinstr3 (i_velocity_ampmidi_iamp_3 * 128), i_key_inote_8, ((0.00007000 * k_amp_velocity_envelope_kout_2) * ((.35 + (.65 * i_velocity_ampmidi_iamp_3)))), k_speed_kout_3, 135, gi_b4d2062daaed8dcfe507ec4e_samples_ifilhandle, 0, 0
   a_key_44_if_left_15 = (.5 * ((a_key_44_sample_aleft_16 + a_key_44_sample_aright_17)))
 else
   ; case:key_44_off Other notes: silence
   a_key_44_if_left_15 = 0
 endif
 ; node:output_pan2 opcode:pan2
 a_output_pan2_aleft_1, a_output_pan2_aright_2 pan2 (((a_key_36_if_left_3 + a_key_38_if_left_6) + a_key_40_if_left_9) + a_key_44_if_left_15), 0.5, 0
 ; node:output_left opcode:outleta
 outleta "left", a_output_pan2_aleft_1
 ; node:output_right opcode:outleta
 outleta "right", a_output_pan2_aright_2
endin

; mixer stage patch:piano
; patch:48219b96-f897-4558-bd81-e40282082f28 name:Jazz Trio — Mellow Grand channel:2 always_on:false
; instance:piano csound:vcs_mix_8ffa713773dafe7799b5a117
; description: Sampled acoustic grand with velocity dynamics, natural sample attacks, a damped amplitude envelope and a warm 5.8 kHz low-pass. Polyphonic. Use in the middle register for jazz comping. Sample data: GeneralUser GS 2.0.3 by S. Christian Collins (included license). Dry Stereo Output to Master.
; trigger: MIDI channel 2 / score notes; score instrument number: 4
instr vcs_mix_8ffa713773dafe7799b5a117
 i_vcs_internal_score_note_p4 = p4
 i_vcs_internal_score_velocity_p5 = p5
 ; node:env_attack_const opcode:const_i
 i_env_attack_const_iout_4 = 0.002
 ; node:env_decay_const opcode:const_i
 i_env_decay_const_iout_5 = 1.2
 ; node:env_release_const opcode:const_i
 i_env_release_const_iout_7 = 0.2
 ; node:env_sustain_const opcode:const_i
 i_env_sustain_const_iout_6 = 0.22
 ; node:key opcode:notnum
 i_key_inote_8 = p4
 ; node:pitch_cpsmidi opcode:cpsmidi
 i_pitch_cpsmidi_kfreq_1 = cpsmidinn(p4)
 ; node:velocity_scale_const opcode:const_i
 i_velocity_scale_const_iout_2 = 1
 ; node:amp_madsr opcode:madsr
 k_amp_madsr_kenv_1 madsr i_env_attack_const_iout_4, i_env_decay_const_iout_5, i_env_sustain_const_iout_6, i_env_release_const_iout_7, 0, -1
 ; node:speed opcode:k_mul
 k_speed_kout_3 = ((i_pitch_cpsmidi_kfreq_1 / i_pitch_cpsmidi_kfreq_1)) * (1)
 ; node:velocity_ampmidi opcode:ampmidi
 i_velocity_ampmidi_iamp_3 = ((p5 / 128) * (i_velocity_scale_const_iout_2))
 ; node:amp_velocity_envelope opcode:k_mul
 k_amp_velocity_envelope_kout_2 = (i_velocity_ampmidi_iamp_3) * (k_amp_madsr_kenv_1)
 ; node:sample_voice opcode:sfinstr3
 a_sample_voice_aleft_3, a_sample_voice_aright_4 sfinstr3 (i_velocity_ampmidi_iamp_3 * 128), i_key_inote_8, ((0.00018000 * k_amp_velocity_envelope_kout_2) * ((.35 + (.65 * i_velocity_ampmidi_iamp_3)))), k_speed_kout_3, 258, gi_1d78e018e405ef26b7f75813_samples_ifilhandle, 0, 0
 ; node:warmth opcode:butterlp
 a_warmth_aout_5 butterlp (.5 * ((a_sample_voice_aleft_3 + a_sample_voice_aright_4))), 5800, 0
 ; node:output_pan2 opcode:pan2
 a_output_pan2_aleft_1, a_output_pan2_aright_2 pan2 a_warmth_aout_5, 0.5, 0
 ; node:output_left opcode:outleta
 outleta "left", a_output_pan2_aleft_1
 ; node:output_right opcode:outleta
 outleta "right", a_output_pan2_aright_2
endin

; mixer stage patch:tenor
; patch:28cbdd9a-9427-4d9b-a6c7-4cf674d6c65f name:Tenor Saxophone — Expressive Legato channel:1 always_on:false
; instance:tenor csound:vcs_mix_87d50dfc10f374835d5b81d6
; description: Sample-free STK reed-model tenor saxophone, concert pitch Ab2–E5 (MIDI 44–76). One legato voice: touching notes share a breath; newest held note wins and releasing it returns to the previous note and velocity. Gaps tongue again. Velocity 1–95 plays normally, 96–114 adds growl, and 115–127 introduces sustained overblown octave squeal. Tone, Growl, Squeal and Vibrato are per-instance controls read at phrase start; zero Growl/Squeal disables that effect. Dry centered Stereo Output: route to Master. Requires Csound STK and its rawwave data. Period-synchronous readout preserves the reed across legato notes; wide leaps can color the timbre.
; trigger: MIDI channel 1 / score notes; score instrument number: 5
instr vcs_mix_87d50dfc10f374835d5b81d6
 ; Commit the boundary after all collectors, before synthesis.
 k_vcs_legato_previous_gate init 0
 k_vcs_legato_phrase init 0
 k_vcs_legato_release init 0
 k_vcs_legato_current_release = 0
 k_vcs_legato_gate = (gk_vcs_legato_e98738577e236bf968ea_winner > 0 ? 1 : 0)
 k_vcs_legato_start = (k_vcs_legato_gate > k_vcs_legato_previous_gate ? 1 : 0)
 k_vcs_legato_previous_gate = k_vcs_legato_gate
 gk_vcs_legato_e98738577e236bf968ea_winner = 0
 if k_vcs_legato_start == 1 then
  k_vcs_legato_phrase = k_vcs_legato_phrase + 1
  reinit VCS_LEGATO_PHRASE
 endif
 VCS_LEGATO_PHRASE:
 i_vcs_legato_note = i(gk_vcs_legato_e98738577e236bf968ea_note)
 i_vcs_legato_velocity = i(gk_vcs_legato_e98738577e236bf968ea_velocity)
 ; node:env_attack_const opcode:const_i
 i_env_attack_const_iout_4 = 0.01
 ; node:env_decay_const opcode:const_i
 i_env_decay_const_iout_5 = 0.08
 ; node:env_release_const opcode:const_i
 i_env_release_const_iout_7 = 0.1
 ; node:env_sustain_const opcode:const_i
 i_env_sustain_const_iout_6 = 1
 ; node:pitch_cpsmidi opcode:cpsmidi
 i_pitch_cpsmidi_kfreq_1 = cpsmidinn(i_vcs_legato_note)
 i_sax_growl_iout_9 chnget "__vcs_perf_2d0091edf6436d425227fa063010af0e3c34be2d36248abec28115fba246565a"
 ; node:sax_legato opcode:midi_legato
 k_sax_legato_kfreq_3 = cpsmidinn(gk_vcs_legato_e98738577e236bf968ea_note)
 k_sax_legato_kvelocity_4 portk gk_vcs_legato_e98738577e236bf968ea_velocity / 128, 0.01, i_vcs_legato_velocity / 128
 i_sax_squeal_iout_10 chnget "__vcs_perf_2a8eb42d0c41a51e5926a374cc5606c661c40c18d47eca4107f63b3000fd7736"
 i_sax_tone_iout_8 chnget "__vcs_perf_5c79376f39007b525f80151d8b651e2fa4996563d0172933e236a05697bb6cad"
 i_sax_vibrato_iout_11 chnget "__vcs_perf_ff50f2369acb2e71120b9c55d107e9e51f33f7cc6110385174f99a845d3a2e1c"
 ; node:sax_vibrato_bloom opcode:linseg
 k_sax_vibrato_bloom_kenv_9 linseg 0, 0.2, 0, 0.35, 1
 ; node:sax_vibrato_wave opcode:lfo
 k_sax_vibrato_wave_kout_10 lfo 1, 5.6, 0
 ; node:sax_zero opcode:k_to_a
 a_sax_zero_aout_4 interp 0
 ; node:velocity_scale_const opcode:const_i
 i_velocity_scale_const_iout_2 = 1
 k_amp_madsr_kenv_1 vcs_legato_adsr k_vcs_legato_gate, i_env_attack_const_iout_4, i_env_decay_const_iout_5, i_env_sustain_const_iout_6, ((-1) < 0 ? k_vcs_legato_release : (-1)), 0
 k_vcs_legato_current_release = max(k_vcs_legato_current_release, i_env_release_const_iout_7)
 ; node:sax_force opcode:k_mul
 k_sax_force_kout_6 = ((((((k_sax_legato_kvelocity_4 * 128) - 95) + abs(((k_sax_legato_kvelocity_4 * 128) - 95)))) / 64)) * (1)
 ; node:sax_overblow opcode:k_mul
 k_sax_overblow_kout_7 = ((((((k_sax_legato_kvelocity_4 * 128) - 114) + abs(((k_sax_legato_kvelocity_4 * 128) - 114)))) / 26)) * (1)
 ; node:sax_growl_wave opcode:oscili
 a_sax_growl_wave_asig_17 oscili 1, (47 + (.015 * k_sax_legato_kfreq_3)), -1
 ; node:sax_pitch opcode:k_mul
 k_sax_pitch_kout_11 = ((k_sax_legato_kfreq_3 * ampdb((((.0752575 * i_sax_vibrato_iout_11) * k_sax_vibrato_bloom_kenv_9) * k_sax_vibrato_wave_kout_10)))) * (1)
 ; node:velocity_ampmidi opcode:ampmidi
 i_velocity_ampmidi_iamp_3 = ((i_vcs_legato_velocity / 128) * (i_velocity_scale_const_iout_2))
 ; node:sax_growl_depth opcode:k_to_a
 a_sax_growl_depth_aout_18 interp ((.5 * k_sax_force_kout_6) * i_sax_growl_iout_9)
 ; node:sax_squeal_mix opcode:k_mul
 k_sax_squeal_mix_kout_8 = (((k_sax_overblow_kout_7 * k_sax_overblow_kout_7) * i_sax_squeal_iout_10)) * (1)
 ; node:sax_normal_phase opcode:syncphasor
 a_sax_normal_phase_aphase_5, a_sax_normal_phase_asyncout_6 syncphasor (((i_pitch_cpsmidi_kfreq_1 - (1 * k_sax_pitch_kout_11))) / 2), a_sax_zero_aout_4, 0.5
 ; node:sax_octave_phase opcode:syncphasor
 a_sax_octave_phase_aphase_11, a_sax_octave_phase_asyncout_12 syncphasor (((i_pitch_cpsmidi_kfreq_1 - (2 * k_sax_pitch_kout_11))) / 2), a_sax_zero_aout_4, 0.5
 ; node:sax_tongue opcode:linseg
 k_sax_tongue_kenv_5 linseg 0, (.035 - (((.025 * i_velocity_ampmidi_iamp_3) * 128) / 127)), 1, 0.08, 0.95
 ; node:sax_register_mix opcode:k_to_a
 a_sax_register_mix_aout_19 interp k_sax_squeal_mix_kout_8
 ; node:sax_normal_offset opcode:a_mul
 a_sax_normal_offset_aout_7 = (((a_sax_normal_phase_aphase_5 + .5) - floor((a_sax_normal_phase_aphase_5 + .5)))) * (1)
 ; node:sax_octave_offset opcode:a_mul
 a_sax_octave_offset_aout_13 = (((a_sax_octave_phase_aphase_11 + .5) - floor((a_sax_octave_phase_aphase_11 + .5)))) * (1)
 ; node:amp_velocity_envelope opcode:k_mul
 k_amp_velocity_envelope_kout_2 = (((k_sax_legato_kvelocity_4 * ((.35 + (.65 * k_sax_legato_kvelocity_4)))) * k_sax_tongue_kenv_5)) * (k_amp_madsr_kenv_1)
 ; node:sax_reed opcode:STKSaxofony
 a_sax_reed_asignal_3 STKSaxofony (i_pitch_cpsmidi_kfreq_1 / ((1 - (i_pitch_cpsmidi_kfreq_1 / sr)))), 0.7, 2, (100 + ((.4 * k_sax_force_kout_6) * i_sax_growl_iout_9)), 26, (50 + (.3 * k_sax_squeal_mix_kout_8)), 11, 50, 4, ((2 + (3 * k_sax_legato_kvelocity_4)) + ((5 * k_sax_force_kout_6) * i_sax_growl_iout_9)), 29, 60, 1, ((3 * i_sax_vibrato_iout_11) * k_sax_vibrato_bloom_kenv_9), 128, (((((80 + (2 * k_sax_legato_kvelocity_4)) + (.5 * k_sax_squeal_mix_kout_8))) * k_amp_madsr_kenv_1) * k_sax_tongue_kenv_5)
 ; node:sax_air opcode:noise
 a_sax_air_aout_20 noise (.012 * k_amp_velocity_envelope_kout_2), 0
 ; node:sax_output_gain opcode:k_to_a
 a_sax_output_gain_aout_27 interp (.5 * k_amp_velocity_envelope_kout_2)
 ; node:sax_normal_tap_0 opcode:vdelay3
 a_sax_normal_tap_0_aout_8 vdelay3 a_sax_reed_asignal_3, ((2000 * a_sax_normal_phase_aphase_5) / i_pitch_cpsmidi_kfreq_1), 300
 ; node:sax_normal_tap_1 opcode:vdelay3
 a_sax_normal_tap_1_aout_9 vdelay3 a_sax_reed_asignal_3, ((2000 * a_sax_normal_offset_aout_7) / i_pitch_cpsmidi_kfreq_1), 300
 ; node:sax_octave_tap_0 opcode:vdelay3
 a_sax_octave_tap_0_aout_14 vdelay3 a_sax_reed_asignal_3, ((2000 * a_sax_octave_phase_aphase_11) / i_pitch_cpsmidi_kfreq_1), 300
 ; node:sax_octave_tap_1 opcode:vdelay3
 a_sax_octave_tap_1_aout_15 vdelay3 a_sax_reed_asignal_3, ((2000 * a_sax_octave_offset_aout_13) / i_pitch_cpsmidi_kfreq_1), 300
 ; node:sax_air_band opcode:butterbp
 a_sax_air_band_aout_21 butterbp a_sax_air_aout_20, 1800, 1800, 0
 ; node:sax_normal_mix opcode:a_mul
 a_sax_normal_mix_aout_10 = (((a_sax_normal_tap_0_aout_8 * ((1 - abs(((2 * a_sax_normal_phase_aphase_5) - 1))))) + (a_sax_normal_tap_1_aout_9 * abs(((2 * a_sax_normal_phase_aphase_5) - 1))))) * (1)
 ; node:sax_octave_mix opcode:a_mul
 a_sax_octave_mix_aout_16 = (((a_sax_octave_tap_0_aout_14 * ((1 - abs(((2 * a_sax_octave_phase_aphase_11) - 1))))) + (a_sax_octave_tap_1_aout_15 * abs(((2 * a_sax_octave_phase_aphase_11) - 1))))) * (1)
 ; node:sax_mix opcode:a_mul
 a_sax_mix_aout_22 = (((((a_sax_normal_mix_aout_10 * ((1 - a_sax_register_mix_aout_19))) + (a_sax_octave_mix_aout_16 * a_sax_register_mix_aout_19))) * ((1 + (a_sax_growl_depth_aout_18 * a_sax_growl_wave_asig_17))))) * (1)
 ; node:sax_body opcode:resonx
 a_sax_body_aout_23 resonx a_sax_mix_aout_22, 650, 750, 1, 1, 0
 ; node:sax_presence opcode:resonx
 a_sax_presence_aout_24 resonx a_sax_mix_aout_22, 1800, 1600, 1, 1, 0
 ; node:sax_lowpass opcode:butterlp
 a_sax_lowpass_aout_25 butterlp ((a_sax_mix_aout_22 + (.22 * a_sax_body_aout_23)) + (.12 * a_sax_presence_aout_24)), (((800 + (6200 * i_sax_tone_iout_8)) + (600 * k_sax_legato_kvelocity_4)) + (2000 * k_sax_squeal_mix_kout_8)), 0
 ; node:sax_dc opcode:butterhp
 a_sax_dc_aout_26 butterhp a_sax_lowpass_aout_25, 65, 0
 ; node:output_pan2 opcode:pan2
 a_output_pan2_aleft_1, a_output_pan2_aright_2 pan2 ((a_sax_dc_aout_26 * a_sax_output_gain_aout_27) + a_sax_air_band_aout_21), 0.5, 0
 k_vcs_legato_release = k_vcs_legato_current_release
 rireturn
 a_output_left_asignal_28 vcs_legato_declick a_output_pan2_aleft_1, k_vcs_legato_phrase
 a_output_right_asignal_29 vcs_legato_declick a_output_pan2_aright_2, k_vcs_legato_phrase
 ; node:output_left opcode:outleta
 outleta "left", a_output_left_asignal_28
 ; node:output_right opcode:outleta
 outleta "right", a_output_right_asignal_29
endin

; mixer stage route:0f9cf44a-90ff-4bc6-a69b-0e47feab782d
; audio route:0f9cf44a-90ff-4bc6-a69b-0e47feab782d kind:insert
; from: Tenor Saxophone — Expressive Legato [tenor] port:left stage:raw -> Parametric Equalizer [f94af221-650c-4bb7-9b11-19805039b2d3] port:left stage:input
; tap: raw (before strip); initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_ec0205a8c1fe27b80ccd56ed
 a_signal inleta "pre"
 a_send = 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:bf5f672d-c9cb-4e26-9014-8cda82a92183
; audio route:bf5f672d-c9cb-4e26-9014-8cda82a92183 kind:insert
; from: Tenor Saxophone — Expressive Legato [tenor] port:right stage:raw -> Parametric Equalizer [f94af221-650c-4bb7-9b11-19805039b2d3] port:right stage:input
; tap: raw (before strip); initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_03fb41ebf75031d33554fb6e
 a_signal inleta "pre"
 a_send = 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage patch:f94af221-650c-4bb7-9b11-19805039b2d3
; patch:8d9a8ca4-7983-431c-8a64-ff6c161731d2 name:Parametric Equalizer channel:0 always_on:true
; instance:f94af221-650c-4bb7-9b11-19805039b2d3 csound:vcs_mix_59d2c289d0e545c42865d468
; description: Seven-band stereo parametric equalizer: 63, 160, 400 Hz, 1, 2.5, 6.3 and 16 kHz. Linear gain controls: -20 to +20 dB, default 0 dB; ampdb converts to amplitude. Cascaded peaking filters, nominal Q 1.05 with gain compensation for symmetric boost/cut. Unity at neutral. Continuous insert: restart the rack after changing controls. Allow mixer headroom when boosting.
; trigger: continuous (alwayson); score instrument number: 8
; insert for: Tenor Saxophone — Expressive Legato [tenor]
instr vcs_mix_59d2c289d0e545c42865d468
 ; node:2ddcb719-d475-4827-9c7d-ed00ef84f444 opcode:const_i
 i_2ddcb719_d475_4827_9c7d_ed00ef84f444_iout_6 = 400
 i_377a004c_dd56_4042_b647_29f60bc7880a_iout_7 chnget "__vcs_perf_8e6dcad07cdfe0175dceffa96d7174f8d1891bb7f8ec53038cad92abf629e6fd"
 ; node:39b6e5d1-96fc-4e39-be41-06f8b4aae181 opcode:const_i
 i_39b6e5d1_96fc_4e39_be41_06f8b4aae181_iout_2 = 63
 i_cded9f16_e830_42d7_964f_d9bce78a3cd8_iout_5 chnget "__vcs_perf_3fc58689f0d656b8d05b5208dfdd39f0cbb0ca82658cc37eca5110318a9513de"
 i_d4c20b81_8b7c_4312_91b6_8997156f2ca2_iout_1 chnget "__vcs_perf_dabd35ddf7cbdb99549bdc47d8108ef192cde4863c317466a11dcf270bf73a21"
 i_eq_16000_gain_db_iout_13 chnget "__vcs_perf_8c5c6e818400a98307c988eb5b99d770be775a9d52af0d58a3eef998d5736513"
 ; node:eq_16000_hz opcode:const_i
 i_eq_16000_hz_iout_14 = 16000
 i_eq_160_gain_db_iout_3 chnget "__vcs_perf_84152d13397d95d44f0457af5f0e93f57a1a628d7ddfb506efce51300912b4cf"
 ; node:eq_160_hz opcode:const_i
 i_eq_160_hz_iout_4 = 160
 i_eq_2500_gain_db_iout_9 chnget "__vcs_perf_53168ab94d3fe77fd42e4e23609e1f8adf97c51c199a4128d3ea45ce7602bfd3"
 ; node:eq_2500_hz opcode:const_i
 i_eq_2500_hz_iout_10 = 2500
 i_eq_6300_gain_db_iout_11 chnget "__vcs_perf_9a1ca76dc49a320c110a380d634b5bb08638a4e700081dcd08c5943b363abb9b"
 ; node:eq_6300_hz opcode:const_i
 i_eq_6300_hz_iout_12 = 6300
 ; node:f4220aa9-d2f0-47ac-a311-83a91729a713 opcode:const_i
 i_f4220aa9_d2f0_47ac_a311_83a91729a713_iout_8 = 1000
 ; node:input-left opcode:inleta
 a_input_left_asignal_15 inleta "left"
 ; node:input-right opcode:inleta
 a_input_right_asignal_16 inleta "right"
 ; node:fa196f1a-efcc-4469-a21e-d5e0f0881b1b opcode:pareq
 a_fa196f1a_efcc_4469_a21e_d5e0f0881b1b_ares_1 pareq a_input_left_asignal_15, i_39b6e5d1_96fc_4e39_be41_06f8b4aae181_iout_2, ampdb(i_d4c20b81_8b7c_4312_91b6_8997156f2ca2_iout_1), (1.05 * ampdb((i_d4c20b81_8b7c_4312_91b6_8997156f2ca2_iout_1 / 2))), 0, 0
 ; node:7cb2ae93-0239-48dd-ac83-f712e43945c6 opcode:pareq
 a_7cb2ae93_0239_48dd_ac83_f712e43945c6_ares_2 pareq a_input_right_asignal_16, i_39b6e5d1_96fc_4e39_be41_06f8b4aae181_iout_2, ampdb(i_d4c20b81_8b7c_4312_91b6_8997156f2ca2_iout_1), (1.05 * ampdb((i_d4c20b81_8b7c_4312_91b6_8997156f2ca2_iout_1 / 2))), 0, 0
 ; node:eq_160_left opcode:pareq
 a_eq_160_left_ares_3 pareq a_fa196f1a_efcc_4469_a21e_d5e0f0881b1b_ares_1, i_eq_160_hz_iout_4, ampdb(i_eq_160_gain_db_iout_3), (1.05 * ampdb((i_eq_160_gain_db_iout_3 / 2))), 0, 0
 ; node:eq_160_right opcode:pareq
 a_eq_160_right_ares_4 pareq a_7cb2ae93_0239_48dd_ac83_f712e43945c6_ares_2, i_eq_160_hz_iout_4, ampdb(i_eq_160_gain_db_iout_3), (1.05 * ampdb((i_eq_160_gain_db_iout_3 / 2))), 0, 0
 ; node:05383763-9072-456a-a494-14b651938d3f opcode:pareq
 a_05383763_9072_456a_a494_14b651938d3f_ares_5 pareq a_eq_160_left_ares_3, i_2ddcb719_d475_4827_9c7d_ed00ef84f444_iout_6, ampdb(i_cded9f16_e830_42d7_964f_d9bce78a3cd8_iout_5), (1.05 * ampdb((i_cded9f16_e830_42d7_964f_d9bce78a3cd8_iout_5 / 2))), 0, 0
 ; node:45af38c6-fd45-46f3-a525-bf0654bc16f5 opcode:pareq
 a_45af38c6_fd45_46f3_a525_bf0654bc16f5_ares_6 pareq a_eq_160_right_ares_4, i_2ddcb719_d475_4827_9c7d_ed00ef84f444_iout_6, ampdb(i_cded9f16_e830_42d7_964f_d9bce78a3cd8_iout_5), (1.05 * ampdb((i_cded9f16_e830_42d7_964f_d9bce78a3cd8_iout_5 / 2))), 0, 0
 ; node:3a4409dd-bec4-4dd9-ae8e-f48a0ba75567 opcode:pareq
 a_3a4409dd_bec4_4dd9_ae8e_f48a0ba75567_ares_7 pareq a_05383763_9072_456a_a494_14b651938d3f_ares_5, i_f4220aa9_d2f0_47ac_a311_83a91729a713_iout_8, ampdb(i_377a004c_dd56_4042_b647_29f60bc7880a_iout_7), (1.05 * ampdb((i_377a004c_dd56_4042_b647_29f60bc7880a_iout_7 / 2))), 0, 0
 ; node:7d5b71b2-e423-4c3c-98f8-cc7d60fba496 opcode:pareq
 a_7d5b71b2_e423_4c3c_98f8_cc7d60fba496_ares_8 pareq a_45af38c6_fd45_46f3_a525_bf0654bc16f5_ares_6, i_f4220aa9_d2f0_47ac_a311_83a91729a713_iout_8, ampdb(i_377a004c_dd56_4042_b647_29f60bc7880a_iout_7), (1.05 * ampdb((i_377a004c_dd56_4042_b647_29f60bc7880a_iout_7 / 2))), 0, 0
 ; node:eq_2500_left opcode:pareq
 a_eq_2500_left_ares_9 pareq a_3a4409dd_bec4_4dd9_ae8e_f48a0ba75567_ares_7, i_eq_2500_hz_iout_10, ampdb(i_eq_2500_gain_db_iout_9), (1.05 * ampdb((i_eq_2500_gain_db_iout_9 / 2))), 0, 0
 ; node:eq_2500_right opcode:pareq
 a_eq_2500_right_ares_10 pareq a_7d5b71b2_e423_4c3c_98f8_cc7d60fba496_ares_8, i_eq_2500_hz_iout_10, ampdb(i_eq_2500_gain_db_iout_9), (1.05 * ampdb((i_eq_2500_gain_db_iout_9 / 2))), 0, 0
 ; node:eq_6300_left opcode:pareq
 a_eq_6300_left_ares_11 pareq a_eq_2500_left_ares_9, i_eq_6300_hz_iout_12, ampdb(i_eq_6300_gain_db_iout_11), (1.05 * ampdb((i_eq_6300_gain_db_iout_11 / 2))), 0, 0
 ; node:eq_6300_right opcode:pareq
 a_eq_6300_right_ares_12 pareq a_eq_2500_right_ares_10, i_eq_6300_hz_iout_12, ampdb(i_eq_6300_gain_db_iout_11), (1.05 * ampdb((i_eq_6300_gain_db_iout_11 / 2))), 0, 0
 ; node:eq_16000_left opcode:pareq
 a_eq_16000_left_ares_13 pareq a_eq_6300_left_ares_11, i_eq_16000_hz_iout_14, ampdb(i_eq_16000_gain_db_iout_13), (1.05 * ampdb((i_eq_16000_gain_db_iout_13 / 2))), 0, 0
 ; node:eq_16000_right opcode:pareq
 a_eq_16000_right_ares_14 pareq a_eq_6300_right_ares_12, i_eq_16000_hz_iout_14, ampdb(i_eq_16000_gain_db_iout_13), (1.05 * ampdb((i_eq_16000_gain_db_iout_13 / 2))), 0, 0
 ; node:output-left opcode:outleta
 outleta "left", a_eq_16000_left_ares_13
 ; node:output-right opcode:outleta
 outleta "right", a_eq_16000_right_ares_14
endin

; mixer stage strip:bass
; mixer strip: Jazz Trio — Pizzicato Double Bass [bass]
; initial gain: 2 dB; balance/pan: -0.31; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_d69e2b115c3aedc5f5e51463
 a_gain = 1.2589254117941673
 a_left = 1
 a_right = 0.68999999999999995
 a_p_360f84035942243c6a36537a inleta "p_360f84035942243c6a36537a"
 a_p_360f84035942243c6a36537a_post = a_p_360f84035942243c6a36537a * a_gain * a_left
 a_p_27042f4e6eca7d0b2a7ee402 inleta "p_27042f4e6eca7d0b2a7ee402"
 a_p_27042f4e6eca7d0b2a7ee402_post = a_p_27042f4e6eca7d0b2a7ee402 * a_gain * a_right
 outleta "pre_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a
 outleta "post_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a_post
 outleta "pre_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402
 outleta "post_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402_post
endin

; mixer stage route:523dd462-5e52-40d5-b6c2-6292e400088d
; audio route:523dd462-5e52-40d5-b6c2-6292e400088d kind:main
; from: Jazz Trio — Pizzicato Double Bass [bass] port:right stage:strip -> Master [$master] port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_f92edf1aa4ea82d16f67ef70
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:e3f4495e-0c3e-4a01-9ae1-2add7b095cc3
; audio route:e3f4495e-0c3e-4a01-9ae1-2add7b095cc3 kind:main
; from: Jazz Trio — Pizzicato Double Bass [bass] port:left stage:strip -> Master [$master] port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_e04907308242852d77e990d7
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage strip:brushes
; mixer strip: Jazz Trio — Brushed Drums [brushes]
; initial gain: 1.8 dB; balance/pan: 0.39; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_b9c6f02e83fc10d0b3d7dda6
 a_gain = 1.2302687708123816
 a_left = 0.60999999999999999
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

; mixer stage route:0f0276f1-3697-42d8-9536-daaa78e621f6
; audio route:0f0276f1-3697-42d8-9536-daaa78e621f6 kind:send
; from: Jazz Trio — Brushed Drums [brushes] port:left stage:strip -> Reverb Effect [room] port:left stage:input
; tap: post-fader; initial route gain: -22 dB; source mute and mixer solo gate this route.
instr vcs_mix_452c3d1c40181736c325af2c
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 0.079432823472428138
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:9f34f262-fe8b-4fa1-80a2-bfa934e5af5e
; audio route:9f34f262-fe8b-4fa1-80a2-bfa934e5af5e kind:main
; from: Jazz Trio — Brushed Drums [brushes] port:left stage:strip -> Master [$master] port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_eaefb3da9a303f11dc43573e
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:b6f42228-5f7c-4eec-9202-5a7dc16ed6bd
; audio route:b6f42228-5f7c-4eec-9202-5a7dc16ed6bd kind:send
; from: Jazz Trio — Brushed Drums [brushes] port:right stage:strip -> Reverb Effect [room] port:right stage:input
; tap: post-fader; initial route gain: -22 dB; source mute and mixer solo gate this route.
instr vcs_mix_10da82df6e52165d2fe84077
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 0.079432823472428138
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:e8431fda-3d41-4853-8843-5b37b3d690e8
; audio route:e8431fda-3d41-4853-8843-5b37b3d690e8 kind:main
; from: Jazz Trio — Brushed Drums [brushes] port:right stage:strip -> Master [$master] port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_df9647b028d130cb09f95ca2
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage strip:f94af221-650c-4bb7-9b11-19805039b2d3
; mixer strip: Parametric Equalizer [f94af221-650c-4bb7-9b11-19805039b2d3]
; initial gain: 0 dB; balance/pan: 0; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_af4d34457da067823f5a1202
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

; mixer stage route:403134b6-1621-4394-87d9-2a094aa909f7
; audio route:403134b6-1621-4394-87d9-2a094aa909f7 kind:insert
; from: Parametric Equalizer [f94af221-650c-4bb7-9b11-19805039b2d3] port:left stage:strip -> Tenor Saxophone — Expressive Legato [tenor] port:left stage:strip
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_c14f059675c23f376bc592e1
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:a873d282-6565-4571-a414-679e42483e3c
; audio route:a873d282-6565-4571-a414-679e42483e3c kind:insert
; from: Parametric Equalizer [f94af221-650c-4bb7-9b11-19805039b2d3] port:right stage:strip -> Tenor Saxophone — Expressive Legato [tenor] port:right stage:strip
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_c47937b09d6f6d9b5b596512
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage strip:piano
; mixer strip: Jazz Trio — Mellow Grand [piano]
; initial gain: 8 dB; balance/pan: -0.37; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_f86785032bb9afa6eadf1946
 a_gain = 2.5118864315095801
 a_left = 1
 a_right = 0.63
 a_p_360f84035942243c6a36537a inleta "p_360f84035942243c6a36537a"
 a_p_360f84035942243c6a36537a_post = a_p_360f84035942243c6a36537a * a_gain * a_left
 a_p_27042f4e6eca7d0b2a7ee402 inleta "p_27042f4e6eca7d0b2a7ee402"
 a_p_27042f4e6eca7d0b2a7ee402_post = a_p_27042f4e6eca7d0b2a7ee402 * a_gain * a_right
 outleta "pre_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a
 outleta "post_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a_post
 outleta "pre_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402
 outleta "post_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402_post
endin

; mixer stage route:41413c17-8a63-40d5-9073-797db0935815
; audio route:41413c17-8a63-40d5-9073-797db0935815 kind:main
; from: Jazz Trio — Mellow Grand [piano] port:right stage:strip -> Master [$master] port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_e49eb082f0b3f76b22bcb2d7
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:5b7a1a2b-5b1a-4256-9f17-3f0b328402ae
; audio route:5b7a1a2b-5b1a-4256-9f17-3f0b328402ae kind:send
; from: Jazz Trio — Mellow Grand [piano] port:left stage:strip -> Reverb Effect [room] port:left stage:input
; tap: post-fader; initial route gain: -17 dB; source mute and mixer solo gate this route.
instr vcs_mix_294eb44ea173648de93323a6
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 0.14125375446227545
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:d5b1d404-ac00-4db5-8e20-98257e2b1ba5
; audio route:d5b1d404-ac00-4db5-8e20-98257e2b1ba5 kind:main
; from: Jazz Trio — Mellow Grand [piano] port:left stage:strip -> Master [$master] port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_1860d50e858bb30bb13ca387
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:dd5e4db4-0f15-4197-8c35-9c243c9dfee9
; audio route:dd5e4db4-0f15-4197-8c35-9c243c9dfee9 kind:send
; from: Jazz Trio — Mellow Grand [piano] port:right stage:strip -> Reverb Effect [room] port:right stage:input
; tap: post-fader; initial route gain: -17 dB; source mute and mixer solo gate this route.
instr vcs_mix_35d357764dc91280b35ff769
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 0.14125375446227545
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage strip:tenor
; mixer strip: Tenor Saxophone — Expressive Legato [tenor]
; initial gain: -6.9 dB; balance/pan: 0.17; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_54d89ea777c6e6525fad908a
 a_gain = 0.45185594437492232
 a_left = 0.82999999999999996
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

; mixer stage route:11f96033-0903-44c3-b570-7383b7a35f05
; audio route:11f96033-0903-44c3-b570-7383b7a35f05 kind:main
; from: Tenor Saxophone — Expressive Legato [tenor] port:left stage:strip -> Master [$master] port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_c9d8988717a1c08816d6c145
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:2b6c7b48-eef1-4cd4-9fc2-51595189103e
; audio route:2b6c7b48-eef1-4cd4-9fc2-51595189103e kind:main
; from: Tenor Saxophone — Expressive Legato [tenor] port:right stage:strip -> Master [$master] port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_f3b2f5129918d28c11f70b2f
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:b978c567-33fc-4a8e-8b83-8711705ff9ad
; audio route:b978c567-33fc-4a8e-8b83-8711705ff9ad kind:send
; from: Tenor Saxophone — Expressive Legato [tenor] port:right stage:strip -> Reverb Effect [room] port:right stage:input
; tap: post-fader; initial route gain: -9.5 dB; source mute and mixer solo gate this route.
instr vcs_mix_ac8c5d4d5e38accc9fbae1eb
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 0.33496543915782767
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:e3fe1905-9f28-442b-bde2-e6ed064eb490
; audio route:e3fe1905-9f28-442b-bde2-e6ed064eb490 kind:send
; from: Tenor Saxophone — Expressive Legato [tenor] port:left stage:strip -> Reverb Effect [room] port:left stage:input
; tap: post-fader; initial route gain: -9.5 dB; source mute and mixer solo gate this route.
instr vcs_mix_4a27e1fd0c63a78281a0b56b
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 0.33496543915782767
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage patch:room
; patch:edec9fff-768b-4de1-b892-53eb4249b2bf name:Reverb Effect channel:0 always_on:true
; instance:room csound:vcs_mix_0531470a940264cd091dfdbc
; description: Stereo reverb effect, uses inleta channel names "left" and "right".
; trigger: continuous (alwayson); score instrument number: 30
instr vcs_mix_0531470a940264cd091dfdbc
 i_708a8f43_1c17_4713_a35d_b0b12cee6abe_iout_1 chnget "__vcs_perf_1b3defab28448bada0dfa1ddb5aadb826c4dc248b58a85ad8e88eeb914bede0a"
 ; node:848adfb2-56f2-41d2-92da-582a363d3926 opcode:inleta
 a_848adfb2_56f2_41d2_92da_582a363d3926_asignal_3 inleta "left"
 i_a08d04b8_b407_498d_8186_8ec08a404e5c_iout_2 chnget "__vcs_perf_99eb03c540c347d5688ca2d47d54bf4cb2c34e70d6aed68e4684cc36c655a709"
 ; node:bd65fc9a-7053-4c0c-b7fc-63dc926b8d92 opcode:inleta
 a_bd65fc9a_7053_4c0c_b7fc_63dc926b8d92_asignal_4 inleta "right"
 ; node:a5e612c4-b021-465a-a2c6-f6edb0b620bd opcode:reverbsc
 a_a5e612c4_b021_465a_a2c6_f6edb0b620bd_aout_l_1, a_a5e612c4_b021_465a_a2c6_f6edb0b620bd_aout_r_2 reverbsc a_848adfb2_56f2_41d2_92da_582a363d3926_asignal_3, a_bd65fc9a_7053_4c0c_b7fc_63dc926b8d92_asignal_4, i_708a8f43_1c17_4713_a35d_b0b12cee6abe_iout_1, i_a08d04b8_b407_498d_8186_8ec08a404e5c_iout_2, sr, 1, 0
 ; node:17300219-eb5e-42d1-9b33-5bddb8b0689e opcode:outleta
 outleta "left", a_a5e612c4_b021_465a_a2c6_f6edb0b620bd_aout_l_1
 ; node:1bfdd7bf-0969-4ac0-83df-2b69f8ff6b9a opcode:outleta
 outleta "right", a_a5e612c4_b021_465a_a2c6_f6edb0b620bd_aout_r_2
endin

; mixer stage strip:room
; mixer strip: Reverb Effect [room]
; initial gain: 0 dB; balance/pan: 0; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_90fdf64166538497cea3bc64
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

; mixer stage route:696578a0-81ab-4b8a-9285-f42e56f38d18
; audio route:696578a0-81ab-4b8a-9285-f42e56f38d18 kind:main
; from: Reverb Effect [room] port:right stage:strip -> Master [$master] port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_15a5730c6889037e194ef182
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:f56fa291-1ccf-4352-91c2-2287867c83d9
; audio route:f56fa291-1ccf-4352-91c2-2287867c83d9 kind:main
; from: Reverb Effect [room] port:left stage:strip -> Master [$master] port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_09655d8e71d18d7d13dea7f7
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

; mixer stage route:d721d1f3-4fb5-48fb-8164-b949b856a61c
; audio route:d721d1f3-4fb5-48fb-8164-b949b856a61c kind:insert
; from: Master [$master] port:$direct.right stage:raw -> Stereo Widener [ea24756d-c6eb-46dd-b96e-3d8b638bea45] port:right stage:input
; tap: raw (before strip); initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_9fe22acbd383df649495f672
 a_signal inleta "pre"
 a_send = 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:fbd39db8-a69a-444f-a231-7f0ee2cfaad8
; audio route:fbd39db8-a69a-444f-a231-7f0ee2cfaad8 kind:insert
; from: Master [$master] port:$direct.left stage:raw -> Stereo Widener [ea24756d-c6eb-46dd-b96e-3d8b638bea45] port:left stage:input
; tap: raw (before strip); initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_ac785392a4e13079ba8acdf1
 a_signal inleta "pre"
 a_send = 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage patch:ea24756d-c6eb-46dd-b96e-3d8b638bea45
; patch:d0854c7d-364c-4a29-84bf-89503841f13a name:Stereo Widener channel:0 always_on:true
; instance:ea24756d-c6eb-46dd-b96e-3d8b638bea45 csound:vcs_mix_aca7e15d559c5c807de5fdb1
; description: Mid/side width with optional mono widening. Synthetic side information cancels in mono. Width 1 and Mono Widening 0 preserve the stereo input before Output gain. Allow headroom at high width. Restart the rack after changing performance controllers.
; trigger: continuous (alwayson); score instrument number: 37
; insert for: Master [$master]
instr vcs_mix_aca7e15d559c5c807de5fdb1
 i_sw_delay_iout_3 chnget "__vcs_perf_e599f5308b5173d7658ca3d2c1163c18a5606ddd6f0f952a231bb40a929c2d13"
 ; node:sw_in_left opcode:inleta
 a_sw_in_left_asignal_10 inleta "left"
 ; node:sw_in_right opcode:inleta
 a_sw_in_right_asignal_11 inleta "right"
 i_sw_mono_iout_2 chnget "__vcs_perf_d22d6a780f3986522109caf8b564d71bab2263171e0d9f896c9517d2a1f082af"
 i_sw_output_iout_4 chnget "__vcs_perf_8bd8293df88bd044d149a07fd2ff64a6de2309329ec993a8bb2d0a9207e59827"
 i_sw_width_iout_1 chnget "__vcs_perf_96cf0cc896f1659597f454891ae0fb93b5dbc9527897827ceca9586fdef8c4ba"
 ; node:sw_mid opcode:mix2
 a_sw_mid_aout_1 = ((((a_sw_in_left_asignal_10 + a_sw_in_right_asignal_11)) / 2)) + (0)
 ; node:sw_side opcode:mix2
 a_sw_side_aout_2 = ((((a_sw_in_left_asignal_10 - a_sw_in_right_asignal_11)) / 2)) + (0)
 ; node:sw_mono_audio opcode:upsamp
 a_sw_mono_audio_aout_5 upsamp i_sw_mono_iout_2
 ; node:sw_gain opcode:upsamp
 a_sw_gain_aout_6 upsamp ampdb(i_sw_output_iout_4)
 ; node:sw_width_audio opcode:upsamp
 a_sw_width_audio_aout_4 upsamp i_sw_width_iout_1
 ; node:sw_delayed_mid opcode:delay
 a_sw_delayed_mid_aout_3 delay a_sw_mid_aout_1, (i_sw_delay_iout_3 / 1000), 0
 ; node:sw_spread opcode:mix2
 a_sw_spread_aout_7 = ((((a_sw_side_aout_2 + ((a_sw_mono_audio_aout_5 * ((a_sw_mid_aout_1 - a_sw_delayed_mid_aout_3))) / 2))) * a_sw_width_audio_aout_4)) + (0)
 ; node:sw_left opcode:mix2
 a_sw_left_aout_8 = ((((a_sw_mid_aout_1 + a_sw_spread_aout_7)) * a_sw_gain_aout_6)) + (0)
 ; node:sw_right opcode:mix2
 a_sw_right_aout_9 = ((((a_sw_mid_aout_1 - a_sw_spread_aout_7)) * a_sw_gain_aout_6)) + (0)
 ; node:sw_out_left opcode:outleta
 outleta "left", a_sw_left_aout_8
 ; node:sw_out_right opcode:outleta
 outleta "right", a_sw_right_aout_9
endin

; mixer stage strip:ea24756d-c6eb-46dd-b96e-3d8b638bea45
; mixer strip: Stereo Widener [ea24756d-c6eb-46dd-b96e-3d8b638bea45]
; initial gain: 0 dB; balance/pan: 0; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_0ad8ddf0e098f053050576e7
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

; mixer stage route:7d5eb42c-1681-4dd3-aeb5-339c007504be
; audio route:7d5eb42c-1681-4dd3-aeb5-339c007504be kind:insert
; from: Stereo Widener [ea24756d-c6eb-46dd-b96e-3d8b638bea45] port:left stage:strip -> Master [$master] port:$direct.left stage:strip
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_4f2b1bf72e2d6d1d91a50c59
 a_post = 1
 a_pan = 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 a_send = 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:c7956e30-3c6e-4151-9a1a-19d63c6a7e79
; audio route:c7956e30-3c6e-4151-9a1a-19d63c6a7e79 kind:insert
; from: Stereo Widener [ea24756d-c6eb-46dd-b96e-3d8b638bea45] port:right stage:strip -> Master [$master] port:$direct.right stage:strip
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_a59c277488bce5008c57059d
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
; initial gain: -6 dB; balance/pan: 0; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_0644eeee2942927583ef32ed
 a_gain = 0.50118723362727224
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
i 2 0 0.416667 34 75
i 3 0 0.083333 36 35
i 3 0 0.416667 40 43
i 4 0 0.333333 50 45
i 4 0 0.333333 56 47
i 4 0 0.333333 60 47
i 4 0 0.333333 65 50
i 1 0.333333 0.166667 53 67 9 1
i 1 0.5 0.333333 56 84 17 1
i 2 0.5 0.416667 38 68
i 3 0.5 0.083333 36 29
i 3 0.5 0.166667 38 49
i 3 0.5 0.416667 40 46
i 3 0.5 0.083333 44 46
i 1 0.833333 0.166667 58 92 27 1
i 1 1 0.5 65 90 31 1
i 2 1 0.416667 41 72
i 3 1 0.083333 36 33
i 3 1 0.416667 40 42
i 3 1.333333 0.083333 38 34
i 4 1.333333 0.416667 50 47
i 4 1.333333 0.416667 56 49
i 4 1.333333 0.416667 60 49
i 4 1.333333 0.416667 65 52
i 1 1.5 0.333333 62 78 45 1
i 2 1.5 0.416667 40 66
i 3 1.5 0.083333 36 28
i 3 1.5 0.166667 38 51
i 3 1.5 0.416667 40 47
i 3 1.5 0.083333 44 46

; Measure 2 | 00:02
i 2 2 0.416667 39 75
i 3 2 0.083333 36 35
i 3 2 0.416667 40 43
i 1 2.166667 0.333333 55 77 65 1
i 3 2.333333 0.083333 38 34
i 1 2.5 0.166667 58 88 71 1
i 2 2.5 0.416667 43 68
i 3 2.5 0.083333 36 29
i 3 2.5 0.166667 38 49
i 3 2.5 0.416667 40 46
i 3 2.5 0.083333 44 46
i 1 2.666667 0.333333 61 92 80 1
i 4 2.666667 0.333333 49 46
i 4 2.666667 0.333333 55 48
i 4 2.666667 0.333333 58 48
i 4 2.666667 0.333333 65 51
i 1 3 0.166667 60 63 89 1
i 2 3 0.416667 46 72
i 3 3 0.083333 36 33
i 3 3 0.416667 40 42
i 1 3.166667 0.333333 58 79 99 1
i 1 3.5 0.333333 55 72 103 1
i 2 3.5 0.416667 45 66
i 3 3.5 0.083333 36 28
i 3 3.5 0.166667 38 51
i 3 3.5 0.416667 40 47
i 3 3.5 0.083333 44 46
i 4 3.666667 0.25 49 48
i 4 3.666667 0.25 55 50
i 4 3.666667 0.25 58 50
i 4 3.666667 0.25 65 53
i 3 3.833333 0.083333 38 34

; Measure 3 | 00:04
i 1 4 0.333333 53 72 125 1
i 2 4 0.416667 46 75
i 3 4 0.083333 36 35
i 3 4 0.416667 40 43
i 1 4.333333 0.166667 56 90 131 1
i 4 4.333333 0.416667 50 47
i 4 4.333333 0.416667 56 49
i 4 4.333333 0.416667 60 49
i 4 4.333333 0.416667 65 52
i 1 4.5 0.5 58 94 139 1
i 2 4.5 0.416667 41 68
i 3 4.5 0.083333 36 29
i 3 4.5 0.166667 38 49
i 3 4.5 0.416667 40 46
i 3 4.5 0.083333 44 46
i 2 5 0.416667 38 72
i 3 5 0.083333 36 33
i 3 5 0.416667 40 42
i 1 5.166667 0.083333 61 55 159 1
i 1 5.25 0.25 62 91 161 1
i 3 5.333333 0.083333 38 34
i 1 5.5 0.333333 65 87 167 1
i 2 5.5 0.416667 40 66
i 3 5.5 0.083333 36 28
i 3 5.5 0.166667 38 51
i 3 5.5 0.416667 40 47
i 3 5.5 0.083333 44 46
i 4 5.5 0.333333 50 49
i 4 5.5 0.333333 56 51
i 4 5.5 0.333333 60 51
i 4 5.5 0.333333 65 54

; Measure 4 | 00:06
i 1 6 0.333333 63 85 187 1
i 2 6 0.416667 41 75
i 3 6 0.083333 36 35
i 3 6 0.416667 40 43
i 1 6.333333 0.166667 60 68 193 1
i 3 6.333333 0.083333 38 34
i 4 6.333333 0.416667 51 45
i 4 6.333333 0.416667 56 47
i 4 6.333333 0.416667 60 47
i 4 6.333333 0.416667 67 50
i 1 6.5 0.333333 56 83 203 1
i 2 6.5 0.416667 44 68
i 3 6.5 0.083333 36 29
i 3 6.5 0.166667 38 49
i 3 6.5 0.416667 40 46
i 3 6.5 0.083333 44 46
i 1 6.833333 0.166667 53 67 217 1
i 1 7 0.333333 62 87 221 1
i 2 7 0.416667 34 72
i 3 7 0.083333 36 33
i 3 7 0.416667 40 42
i 1 7.333333 0.166667 61 56 227 1
i 4 7.333333 0.416667 50 47
i 4 7.333333 0.416667 56 49
i 4 7.333333 0.416667 60 49
i 4 7.333333 0.416667 65 52
i 1 7.5 0.333333 60 80 235 1
i 2 7.5 0.416667 38 66
i 3 7.5 0.083333 36 28
i 3 7.5 0.166667 38 51
i 3 7.5 0.416667 40 47
i 3 7.5 0.083333 44 46
i 3 7.833333 0.083333 38 34

; Measure 5 | 00:08
i 2 8 0.416667 39 75
i 3 8 0.083333 36 35
i 3 8 0.416667 40 43
i 4 8 0.583333 49 46
i 4 8 0.583333 55 48
i 4 8 0.583333 58 48
i 4 8 0.583333 65 51
i 1 8.333333 0.166667 55 75 261 1
i 1 8.5 0.333333 58 90 265 1
i 2 8.5 0.416667 43 68
i 3 8.5 0.083333 36 29
i 3 8.5 0.166667 38 49
i 3 8.5 0.416667 40 46
i 3 8.5 0.083333 44 46
i 1 8.833333 0.166667 61 96 279 1
i 1 9 0.5 63 97 283 1
i 2 9 0.416667 34 72
i 3 9 0.083333 36 33
i 3 9 0.416667 40 42
i 3 9.333333 0.083333 38 34
i 4 9.333333 0.416667 49 48
i 4 9.333333 0.416667 55 50
i 4 9.333333 0.416667 58 50
i 4 9.333333 0.416667 65 53
i 1 9.5 0.333333 61 79 297 1
i 2 9.5 0.416667 39 66
i 3 9.5 0.083333 36 28
i 3 9.5 0.166667 38 51
i 3 9.5 0.416667 40 47
i 3 9.5 0.083333 44 46

; Measure 6 | 00:10
i 1 10 0.333333 52 77 313 1
i 2 10 0.416667 40 75
i 3 10 0.083333 36 35
i 3 10 0.416667 40 43
i 1 10.333333 0.166667 55 86 319 1
i 3 10.333333 0.083333 38 34
i 1 10.5 0.333333 58 94 325 1
i 2 10.5 0.416667 43 68
i 3 10.5 0.083333 36 29
i 3 10.5 0.166667 38 49
i 3 10.5 0.416667 40 46
i 3 10.5 0.083333 44 46
i 4 10.666667 0.333333 52 47
i 4 10.666667 0.333333 55 49
i 4 10.666667 0.333333 58 49
i 4 10.666667 0.333333 61 52
i 1 10.833333 0.166667 61 85 339 1
i 1 11 0.333333 64 96 343 1
i 2 11 0.416667 46 72
i 3 11 0.083333 36 33
i 3 11 0.416667 40 42
i 1 11.333333 0.166667 63 60 353 1
i 1 11.5 0.333333 62 83 357 1
i 2 11.5 0.416667 45 66
i 3 11.5 0.083333 36 28
i 3 11.5 0.166667 38 51
i 3 11.5 0.416667 40 47
i 3 11.5 0.083333 44 46
i 4 11.666667 0.25 52 49
i 4 11.666667 0.25 55 51
i 4 11.666667 0.25 58 51
i 4 11.666667 0.25 61 54
i 3 11.833333 0.083333 38 34

; Measure 7 | 00:12
i 1 12 0.333333 65 94 379 1
i 2 12 0.416667 46 75
i 3 12 0.083333 36 35
i 3 12 0.416667 40 43
i 1 12.333333 0.166667 62 80 385 1
i 4 12.333333 0.583333 50 45
i 4 12.333333 0.583333 56 47
i 4 12.333333 0.583333 60 47
i 4 12.333333 0.583333 65 50
i 1 12.5 0.5 58 87 393 1
i 2 12.5 0.416667 41 68
i 3 12.5 0.083333 36 29
i 3 12.5 0.166667 38 49
i 3 12.5 0.416667 40 46
i 3 12.5 0.083333 44 46
i 2 13 0.416667 38 72
i 3 13 0.083333 36 33
i 3 13 0.416667 40 42
i 1 13.166667 0.083333 57 52 413 1
i 1 13.25 0.25 58 84 415 1
i 3 13.333333 0.083333 38 34
i 1 13.5 0.333333 53 73 421 1
i 2 13.5 0.416667 32 66
i 3 13.5 0.083333 36 28
i 3 13.5 0.166667 38 51
i 3 13.5 0.416667 40 47
i 3 13.5 0.083333 44 46

; Measure 8 | 00:14
i 1 14 0.333333 59 86 433 1
i 2 14 0.416667 31 75
i 3 14 0.083333 36 35
i 3 14 0.416667 40 43
i 1 14.333333 0.166667 62 78 439 1
i 3 14.333333 0.083333 38 34
i 4 14.333333 0.416667 53 46
i 4 14.333333 0.416667 56 48
i 4 14.333333 0.416667 59 48
i 4 14.333333 0.416667 63 51
i 1 14.5 0.333333 65 98 449 1
i 2 14.5 0.416667 35 68
i 3 14.5 0.083333 36 29
i 3 14.5 0.166667 38 49
i 3 14.5 0.416667 40 46
i 3 14.5 0.083333 44 46
i 1 14.833333 0.166667 68 105 463 1
i 1 15 0.333333 67 90 467 1
i 2 15 0.416667 38 72
i 3 15 0.083333 36 33
i 3 15 0.416667 40 42
i 1 15.333333 0.166667 65 79 473 1
i 4 15.333333 0.416667 53 48
i 4 15.333333 0.416667 56 50
i 4 15.333333 0.416667 59 50
i 4 15.333333 0.416667 63 53
i 1 15.5 0.333333 63 84 481 1
i 2 15.5 0.416667 37 66
i 3 15.5 0.083333 36 28
i 3 15.5 0.166667 38 51
i 3 15.5 0.416667 40 47
i 3 15.5 0.083333 44 46
i 3 15.833333 0.083333 38 34

; Measure 9 | 00:16
i 2 16 0.416667 36 75
i 3 16 0.083333 36 35
i 3 16 0.416667 40 43
i 4 16 0.333333 51 47
i 4 16 0.333333 58 49
i 4 16 0.333333 62 49
i 4 16 0.333333 67 52
i 1 16.166667 0.333333 63 90 507 1
i 1 16.5 0.166667 62 64 515 1
i 2 16.5 0.416667 39 68
i 3 16.5 0.083333 36 29
i 3 16.5 0.166667 38 49
i 3 16.5 0.416667 40 46
i 3 16.5 0.083333 44 46
i 1 16.666667 0.333333 60 88 524 1
i 1 17 0.166667 55 74 529 1
i 2 17 0.416667 43 72
i 3 17 0.083333 36 33
i 3 17 0.416667 40 42
i 1 17.166667 0.333333 58 82 535 1
i 4 17.166667 0.333333 51 49
i 4 17.166667 0.333333 58 51
i 4 17.166667 0.333333 62 51
i 4 17.166667 0.333333 67 54
i 3 17.333333 0.083333 38 34
i 1 17.5 0.333333 60 90 545 1
i 2 17.5 0.416667 42 66
i 3 17.5 0.083333 36 28
i 3 17.5 0.166667 38 51
i 3 17.5 0.416667 40 47
i 3 17.5 0.083333 44 46

; Measure 10 | 00:18
i 1 18 0.333333 57 88 561 1
i 2 18 0.416667 41 75
i 3 18 0.083333 36 35
i 3 18 0.416667 40 43
i 1 18.333333 0.166667 60 82 567 1
i 3 18.333333 0.083333 38 34
i 1 18.5 0.333333 63 96 573 1
i 2 18.5 0.416667 33 68
i 3 18.5 0.083333 36 29
i 3 18.5 0.166667 38 49
i 3 18.5 0.416667 40 46
i 3 18.5 0.083333 44 46
i 4 18.666667 0.333333 51 45
i 4 18.666667 0.333333 57 47
i 4 18.666667 0.333333 62 47
i 4 18.666667 0.333333 67 50
i 1 18.833333 0.166667 66 104 587 1
i 1 19 0.333333 65 93 591 1
i 2 19 0.416667 36 72
i 3 19 0.083333 36 33
i 3 19 0.416667 40 42
i 1 19.333333 0.166667 63 77 601 1
i 1 19.5 0.333333 60 81 605 1
i 2 19.5 0.416667 35 66
i 3 19.5 0.083333 36 28
i 3 19.5 0.166667 38 51
i 3 19.5 0.416667 40 47
i 3 19.5 0.083333 44 46
i 4 19.666667 0.25 51 47
i 4 19.666667 0.25 57 49
i 4 19.666667 0.25 62 49
i 4 19.666667 0.25 67 52
i 3 19.833333 0.083333 38 34

; Measure 11 | 00:20
i 1 20 0.333333 62 93 627 1
i 2 20 0.416667 34 75
i 3 20 0.083333 36 35
i 3 20 0.416667 40 43
i 1 20.333333 0.166667 65 100 633 1
i 4 20.333333 0.416667 50 46
i 4 20.333333 0.416667 56 48
i 4 20.333333 0.416667 60 48
i 4 20.333333 0.416667 65 51
i 1 20.5 0.333333 70 108 641 1
i 2 20.5 0.416667 38 68
i 3 20.5 0.083333 36 29
i 3 20.5 0.166667 38 49
i 3 20.5 0.416667 40 46
i 3 20.5 0.083333 44 46
i 1 20.833333 0.166667 68 88 655 1
i 1 21 0.333333 67 91 659 1
i 2 21 0.416667 31 72
i 3 21 0.083333 36 33
i 3 21 0.416667 40 42
i 1 21.333333 0.166667 65 72 665 1
i 3 21.333333 0.083333 38 34
i 4 21.333333 0.416667 53 48
i 4 21.333333 0.416667 56 50
i 4 21.333333 0.416667 59 50
i 4 21.333333 0.416667 63 53
i 1 21.5 0.333333 62 80 675 1
i 2 21.5 0.416667 35 66
i 3 21.5 0.083333 36 28
i 3 21.5 0.166667 38 51
i 3 21.5 0.416667 40 47
i 3 21.5 0.083333 44 46

; Measure 12 | 00:22
i 1 22 0.333333 63 84 691 1
i 2 22 0.416667 36 75
i 3 22 0.083333 36 35
i 3 22 0.416667 40 43
i 1 22.333333 0.166667 60 75 697 1
i 3 22.333333 0.083333 38 34
i 4 22.333333 0.416667 51 47
i 4 22.333333 0.416667 58 49
i 4 22.333333 0.416667 62 49
i 4 22.333333 0.416667 67 52
i 1 22.5 0.333333 57 81 707 1
i 2 22.5 0.416667 39 68
i 3 22.5 0.083333 36 29
i 3 22.5 0.166667 38 49
i 3 22.5 0.416667 40 46
i 3 22.5 0.083333 44 46
i 1 22.833333 0.166667 53 68 721 1
i 1 23 0.666667 58 88 725 1
i 2 23 0.416667 41 72
i 3 23 0.083333 36 33
i 3 23 0.416667 40 42
i 4 23.333333 0.416667 51 49
i 4 23.333333 0.416667 57 51
i 4 23.333333 0.416667 62 51
i 4 23.333333 0.416667 67 54
i 2 23.5 0.416667 33 66
i 3 23.5 0.083333 36 28
i 3 23.5 0.166667 38 51
i 3 23.5 0.416667 40 47
i 3 23.5 0.083333 44 46
i 3 23.833333 0.083333 38 34

; Measure 13 | 00:24
i 2 24 0.416667 34 76
i 3 24 0.083333 36 36
i 3 24 0.416667 40 44
i 4 24 0.333333 50 46
i 4 24 0.333333 56 48
i 4 24 0.333333 60 48
i 4 24 0.333333 65 51
i 1 24.5 0.333333 53 68 767 1
i 2 24.5 0.416667 36 69
i 3 24.5 0.083333 36 30
i 3 24.5 0.166667 38 50
i 3 24.5 0.416667 40 47
i 3 24.5 0.083333 44 47
i 1 24.833333 0.166667 56 84 777 1
i 1 25 0.5 58 93 781 1
i 2 25 0.416667 38 73
i 3 25 0.083333 36 34
i 3 25 0.416667 40 43
i 3 25.333333 0.083333 38 35
i 4 25.333333 0.416667 50 48
i 4 25.333333 0.416667 56 50
i 4 25.333333 0.416667 60 50
i 4 25.333333 0.416667 65 53
i 1 25.5 0.333333 65 86 795 1
i 2 25.5 0.416667 40 67
i 3 25.5 0.083333 36 29
i 3 25.5 0.166667 38 52
i 3 25.5 0.416667 40 48
i 3 25.5 0.083333 44 47

; Measure 14 | 00:26
i 1 26 0.333333 61 89 811 1
i 2 26 0.416667 39 76
i 3 26 0.083333 36 36
i 3 26 0.416667 40 44
i 1 26.333333 0.166667 58 74 817 1
i 3 26.333333 0.083333 38 35
i 4 26.333333 0.416667 49 47
i 4 26.333333 0.416667 55 49
i 4 26.333333 0.416667 58 49
i 4 26.333333 0.416667 65 52
i 1 26.5 0.5 55 78 827 1
i 2 26.5 0.416667 38 69
i 3 26.5 0.083333 36 30
i 3 26.5 0.166667 38 50
i 3 26.5 0.416667 40 47
i 3 26.5 0.083333 44 47
i 2 27 0.416667 36 73
i 3 27 0.083333 36 34
i 3 27 0.416667 40 43
i 1 27.166667 0.083333 54 49 847 1
i 1 27.25 0.25 55 83 849 1
i 1 27.5 0.333333 58 90 853 1
i 2 27.5 0.416667 35 67
i 3 27.5 0.083333 36 29
i 3 27.5 0.166667 38 52
i 3 27.5 0.416667 40 48
i 3 27.5 0.083333 44 47
i 4 27.5 0.333333 49 49
i 4 27.5 0.333333 55 51
i 4 27.5 0.333333 58 51
i 4 27.5 0.333333 65 54
i 3 27.833333 0.083333 38 35

; Measure 15 | 00:28
i 1 28 0.333333 62 89 875 1
i 2 28 0.416667 34 76
i 3 28 0.083333 36 36
i 3 28 0.416667 40 44
i 1 28.333333 0.166667 65 94 881 1
i 4 28.333333 0.416667 50 48
i 4 28.333333 0.416667 56 50
i 4 28.333333 0.416667 60 50
i 4 28.333333 0.416667 65 53
i 1 28.5 0.333333 68 103 889 1
i 2 28.5 0.416667 38 69
i 3 28.5 0.083333 36 30
i 3 28.5 0.166667 38 50
i 3 28.5 0.416667 40 47
i 3 28.5 0.083333 44 47
i 1 28.833333 0.166667 67 74 903 1
i 1 29 0.333333 65 88 907 1
i 2 29 0.416667 41 73
i 3 29 0.083333 36 34
i 3 29 0.416667 40 43
i 1 29.333333 0.166667 62 72 913 1
i 3 29.333333 0.083333 38 35
i 1 29.5 0.333333 58 81 919 1
i 2 29.5 0.416667 40 67
i 3 29.5 0.083333 36 29
i 3 29.5 0.166667 38 52
i 3 29.5 0.416667 40 48
i 3 29.5 0.083333 44 47
i 4 29.5 0.333333 50 50
i 4 29.5 0.333333 56 52
i 4 29.5 0.333333 60 52
i 4 29.5 0.333333 65 55

; Measure 16 | 00:30
i 1 30 0.333333 56 86 939 1
i 2 30 0.416667 41 76
i 3 30 0.083333 36 36
i 3 30 0.416667 40 44
i 1 30.333333 0.166667 60 78 945 1
i 3 30.333333 0.083333 38 35
i 4 30.333333 0.416667 51 46
i 4 30.333333 0.416667 56 48
i 4 30.333333 0.416667 60 48
i 4 30.333333 0.416667 67 51
i 1 30.5 0.333333 63 94 955 1
i 2 30.5 0.416667 44 69
i 3 30.5 0.083333 36 30
i 3 30.5 0.166667 38 50
i 3 30.5 0.416667 40 47
i 3 30.5 0.083333 44 47
i 1 30.833333 0.166667 65 97 969 1
i 1 31 0.333333 62 90 973 1
i 2 31 0.416667 34 73
i 3 31 0.083333 36 34
i 3 31 0.416667 40 43
i 1 31.333333 0.166667 60 65 979 1
i 4 31.333333 0.416667 50 48
i 4 31.333333 0.416667 56 50
i 4 31.333333 0.416667 60 50
i 4 31.333333 0.416667 65 53
i 1 31.5 0.083333 59 54 987 1
i 2 31.5 0.416667 38 67
i 3 31.5 0.083333 36 29
i 3 31.5 0.166667 38 52
i 3 31.5 0.416667 40 48
i 3 31.5 0.083333 44 47
i 1 31.583333 0.25 58 82 994 1
i 3 31.833333 0.083333 38 35

; Measure 17 | 00:32
i 2 32 0.416667 39 76
i 3 32 0.083333 36 36
i 3 32 0.416667 40 44
i 4 32 0.583333 49 47
i 4 32 0.583333 55 49
i 4 32 0.583333 58 49
i 4 32 0.583333 65 52
i 1 32.166667 0.333333 51 75 1015 1
i 1 32.5 0.166667 55 84 1019 1
i 2 32.5 0.416667 41 69
i 3 32.5 0.083333 36 30
i 3 32.5 0.166667 38 50
i 3 32.5 0.416667 40 47
i 3 32.5 0.083333 44 47
i 1 32.666667 0.333333 58 92 1032 1
i 1 33 0.166667 61 100 1037 1
i 2 33 0.416667 42 73
i 3 33 0.083333 36 34
i 3 33 0.416667 40 43
i 1 33.166667 0.333333 60 78 1043 1
i 3 33.333333 0.083333 38 35
i 4 33.333333 0.416667 49 49
i 4 33.333333 0.416667 55 51
i 4 33.333333 0.416667 58 51
i 4 33.333333 0.416667 65 54
i 1 33.5 0.333333 58 85 1053 1
i 2 33.5 0.416667 43 67
i 3 33.5 0.083333 36 29
i 3 33.5 0.166667 38 52
i 3 33.5 0.416667 40 48
i 3 33.5 0.083333 44 47

; Measure 18 | 00:34
i 1 34 0.333333 61 92 1069 1
i 2 34 0.416667 40 76
i 3 34 0.083333 36 36
i 3 34 0.416667 40 44
i 1 34.333333 0.166667 58 81 1075 1
i 3 34.333333 0.083333 38 35
i 1 34.5 0.333333 55 82 1081 1
i 2 34.5 0.416667 43 69
i 3 34.5 0.083333 36 30
i 3 34.5 0.166667 38 50
i 3 34.5 0.416667 40 47
i 3 34.5 0.083333 44 47
i 4 34.666667 0.333333 52 48
i 4 34.666667 0.333333 55 50
i 4 34.666667 0.333333 58 50
i 4 34.666667 0.333333 61 53
i 1 34.833333 0.166667 52 70 1095 1
i 1 35 0.333333 55 87 1099 1
i 2 35 0.416667 46 73
i 3 35 0.083333 36 34
i 3 35 0.416667 40 43
i 1 35.333333 0.166667 58 92 1109 1
i 1 35.5 0.333333 61 99 1113 1
i 2 35.5 0.416667 45 67
i 3 35.5 0.083333 36 29
i 3 35.5 0.166667 38 52
i 3 35.5 0.416667 40 48
i 3 35.5 0.083333 44 47
i 4 35.666667 0.25 52 50
i 4 35.666667 0.25 55 52
i 4 35.666667 0.25 58 52
i 4 35.666667 0.25 61 55
i 3 35.833333 0.083333 38 35

; Measure 19 | 00:36
i 1 36 0.5 62 98 1135 1
i 2 36 0.416667 46 76
i 3 36 0.083333 36 36
i 3 36 0.416667 40 44
i 4 36.333333 0.416667 50 46
i 4 36.333333 0.416667 56 48
i 4 36.333333 0.416667 60 48
i 4 36.333333 0.416667 65 51
i 2 36.5 0.416667 44 69
i 3 36.5 0.083333 36 30
i 3 36.5 0.166667 38 50
i 3 36.5 0.416667 40 47
i 3 36.5 0.083333 44 47
i 1 36.666667 0.333333 65 95 1154 1
i 1 37 0.166667 68 105 1163 1
i 2 37 0.416667 41 73
i 3 37 0.083333 36 34
i 3 37 0.416667 40 43
i 1 37.166667 0.333333 65 89 1169 1
i 3 37.333333 0.083333 38 35
i 1 37.5 0.333333 62 78 1175 1
i 2 37.5 0.416667 32 67
i 3 37.5 0.083333 36 29
i 3 37.5 0.166667 38 52
i 3 37.5 0.416667 40 48
i 3 37.5 0.083333 44 47
i 4 37.5 0.333333 50 48
i 4 37.5 0.333333 56 50
i 4 37.5 0.333333 60 50
i 4 37.5 0.333333 65 53

; Measure 20 | 00:38
i 1 38 0.333333 59 85 1195 1
i 2 38 0.416667 31 76
i 3 38 0.083333 36 36
i 3 38 0.416667 40 44
i 1 38.333333 0.166667 62 88 1201 1
i 3 38.333333 0.083333 38 35
i 4 38.333333 0.416667 53 47
i 4 38.333333 0.416667 56 49
i 4 38.333333 0.416667 59 49
i 4 38.333333 0.416667 63 52
i 1 38.5 0.333333 65 100 1211 1
i 2 38.5 0.416667 33 69
i 3 38.5 0.083333 36 30
i 3 38.5 0.166667 38 50
i 3 38.5 0.416667 40 47
i 3 38.5 0.083333 44 47
i 1 38.833333 0.166667 68 108 1225 1
i 1 39 0.083333 69 57 1229 1
i 2 39 0.416667 35 73
i 3 39 0.083333 36 34
i 3 39 0.416667 40 43
i 1 39.083333 0.083333 68 98 1234 1
i 1 39.166667 0.333333 67 94 1237 1
i 4 39.333333 0.416667 53 49
i 4 39.333333 0.416667 56 51
i 4 39.333333 0.416667 59 51
i 4 39.333333 0.416667 63 54
i 1 39.5 0.333333 65 82 1245 1
i 2 39.5 0.416667 37 67
i 3 39.5 0.083333 36 29
i 3 39.5 0.166667 38 52
i 3 39.5 0.416667 40 48
i 3 39.5 0.083333 44 47
i 3 39.833333 0.083333 38 35

; Measure 21 | 00:40
i 1 40 0.333333 67 94 1263 1
i 2 40 0.416667 36 76
i 3 40 0.083333 36 36
i 3 40 0.416667 40 44
i 4 40 0.333333 51 48
i 4 40 0.333333 58 50
i 4 40 0.333333 62 50
i 4 40 0.333333 67 53
i 1 40.333333 0.166667 63 82 1273 1
i 1 40.5 0.083333 62 55 1281 1
i 2 40.5 0.416667 38 69
i 3 40.5 0.083333 36 30
i 3 40.5 0.166667 38 50
i 3 40.5 0.416667 40 47
i 3 40.5 0.083333 44 47
i 1 40.583333 0.25 63 89 1288 1
i 1 40.833333 0.5 60 83 1293 1
i 2 41 0.416667 39 73
i 3 41 0.083333 36 34
i 3 41 0.416667 40 43
i 4 41.166667 0.333333 51 50
i 4 41.166667 0.333333 58 52
i 4 41.166667 0.333333 62 52
i 4 41.166667 0.333333 67 55
i 3 41.333333 0.083333 38 35
i 1 41.5 0.333333 55 72 1309 1
i 2 41.5 0.416667 40 67
i 3 41.5 0.083333 36 29
i 3 41.5 0.166667 38 52
i 3 41.5 0.416667 40 48
i 3 41.5 0.083333 44 47

; Measure 22 | 00:42
i 1 42 0.333333 57 87 1325 1
i 2 42 0.416667 41 76
i 3 42 0.083333 36 36
i 3 42 0.416667 40 44
i 1 42.333333 0.166667 60 91 1331 1
i 3 42.333333 0.083333 38 35
i 1 42.5 0.333333 63 101 1337 1
i 2 42.5 0.416667 39 69
i 3 42.5 0.083333 36 30
i 3 42.5 0.166667 38 50
i 3 42.5 0.416667 40 47
i 3 42.5 0.083333 44 47
i 4 42.666667 0.333333 51 46
i 4 42.666667 0.333333 57 48
i 4 42.666667 0.333333 62 48
i 4 42.666667 0.333333 67 51
i 1 42.833333 0.083333 64 61 1351 1
i 1 42.916667 0.25 65 108 1353 1
i 2 43 0.416667 36 73
i 3 43 0.083333 36 34
i 3 43 0.416667 40 43
i 1 43.166667 0.166667 63 86 1365 1
i 1 43.333333 0.166667 60 76 1367 1
i 1 43.5 0.333333 57 82 1371 1
i 2 43.5 0.416667 35 67
i 3 43.5 0.083333 36 29
i 3 43.5 0.166667 38 52
i 3 43.5 0.416667 40 48
i 3 43.5 0.083333 44 47
i 4 43.666667 0.25 51 48
i 4 43.666667 0.25 57 50
i 4 43.666667 0.25 62 50
i 4 43.666667 0.25 67 53
i 3 43.833333 0.083333 38 35

; Measure 23 | 00:44
i 1 44 0.333333 58 93 1393 1
i 2 44 0.416667 34 76
i 3 44 0.083333 36 36
i 3 44 0.416667 40 44
i 1 44.333333 0.166667 62 87 1399 1
i 4 44.333333 0.416667 50 47
i 4 44.333333 0.416667 56 49
i 4 44.333333 0.416667 60 49
i 4 44.333333 0.416667 65 52
i 1 44.5 0.5 65 100 1407 1
i 2 44.5 0.416667 41 69
i 3 44.5 0.083333 36 30
i 3 44.5 0.166667 38 50
i 3 44.5 0.416667 40 47
i 3 44.5 0.083333 44 47
i 1 45 0.166667 62 77 1423 1
i 2 45 0.416667 31 73
i 3 45 0.083333 36 34
i 3 45 0.416667 40 43
i 1 45.166667 0.333333 59 86 1429 1
i 3 45.333333 0.083333 38 35
i 4 45.333333 0.416667 53 49
i 4 45.333333 0.416667 56 51
i 4 45.333333 0.416667 59 51
i 4 45.333333 0.416667 63 54
i 1 45.5 0.333333 55 74 1439 1
i 2 45.5 0.416667 35 67
i 3 45.5 0.083333 36 29
i 3 45.5 0.166667 38 52
i 3 45.5 0.416667 40 48
i 3 45.5 0.083333 44 47

; Measure 24 | 00:46
i 1 46 0.333333 60 87 1455 1
i 2 46 0.416667 36 76
i 3 46 0.083333 36 36
i 3 46 0.416667 40 44
i 1 46.333333 0.166667 63 93 1461 1
i 3 46.333333 0.083333 38 35
i 4 46.333333 0.416667 51 48
i 4 46.333333 0.416667 58 50
i 4 46.333333 0.416667 62 50
i 4 46.333333 0.416667 67 53
i 1 46.5 0.333333 67 101 1471 1
i 2 46.5 0.416667 38 69
i 3 46.5 0.083333 36 30
i 3 46.5 0.166667 38 50
i 3 46.5 0.416667 40 47
i 3 46.5 0.083333 44 47
i 1 46.833333 0.083333 66 66 1485 1
i 1 46.916667 0.25 65 94 1487 1
i 2 47 0.416667 41 73
i 3 47 0.083333 36 34
i 3 47 0.416667 40 43
i 1 47.166667 0.166667 63 75 1495 1
i 1 47.333333 0.166667 60 73 1497 1
i 4 47.333333 0.416667 51 50
i 4 47.333333 0.416667 57 52
i 4 47.333333 0.416667 62 52
i 4 47.333333 0.416667 67 55
i 1 47.5 0.333333 57 78 1505 1
i 2 47.5 0.416667 33 67
i 3 47.5 0.083333 36 29
i 3 47.5 0.166667 38 52
i 3 47.5 0.416667 40 48
i 3 47.5 0.083333 44 47
i 3 47.833333 0.083333 38 35

; Measure 25 | 00:48
i 1 48 0.333333 62 93 1523 1
i 2 48 0.416667 34 79
i 3 48 0.083333 36 39
i 3 48 0.416667 40 47
i 4 48 0.333333 50 49
i 4 48 0.333333 56 51
i 4 48 0.333333 60 51
i 4 48 0.333333 65 54
i 1 48.333333 0.166667 65 101 1533 1
i 1 48.5 0.333333 68 108 1541 1
i 2 48.5 0.416667 41 72
i 3 48.5 0.083333 36 33
i 3 48.5 0.166667 38 53
i 3 48.5 0.416667 40 50
i 3 48.5 0.083333 44 50
i 1 48.833333 0.083333 69 61 1551 1
i 1 48.916667 0.25 70 109 1553 1
i 2 49 0.416667 44 76
i 3 49 0.083333 36 37
i 3 49 0.416667 40 46
i 1 49.166667 0.166667 68 88 1561 1
i 1 49.333333 0.166667 65 81 1563 1
i 3 49.333333 0.083333 38 38
i 4 49.333333 0.416667 50 51
i 4 49.333333 0.416667 56 53
i 4 49.333333 0.416667 60 53
i 4 49.333333 0.416667 65 56
i 1 49.5 0.333333 62 87 1573 1
i 2 49.5 0.416667 40 70
i 3 49.5 0.083333 36 32
i 3 49.5 0.166667 38 55
i 3 49.5 0.416667 40 51
i 3 49.5 0.083333 44 50

; Measure 26 | 00:50
i 1 50 0.333333 67 96 1589 1
i 2 50 0.416667 39 79
i 3 50 0.083333 36 39
i 3 50 0.416667 40 47
i 1 50.333333 0.166667 70 104 1595 1
i 3 50.333333 0.083333 38 38
i 4 50.333333 0.416667 49 50
i 4 50.333333 0.416667 55 52
i 4 50.333333 0.416667 58 52
i 4 50.333333 0.416667 65 55
i 1 50.5 0.333333 73 109 1605 1
i 2 50.5 0.416667 46 72
i 3 50.5 0.083333 36 33
i 3 50.5 0.166667 38 53
i 3 50.5 0.416667 40 50
i 3 50.5 0.083333 44 50
i 1 50.833333 0.166667 72 88 1619 1
i 1 51 0.333333 70 96 1623 1
i 2 51 0.416667 43 76
i 3 51 0.083333 36 37
i 3 51 0.416667 40 46
i 1 51.333333 0.166667 67 80 1629 1
i 1 51.5 0.333333 63 86 1633 1
i 2 51.5 0.416667 45 70
i 3 51.5 0.083333 36 32
i 3 51.5 0.166667 38 55
i 3 51.5 0.416667 40 51
i 3 51.5 0.083333 44 50
i 4 51.5 0.333333 49 52
i 4 51.5 0.333333 55 54
i 4 51.5 0.333333 58 54
i 4 51.5 0.333333 65 57
i 3 51.833333 0.083333 38 38

; Measure 27 | 00:52
i 1 52 0.333333 65 96 1655 1
i 2 52 0.416667 46 79
i 3 52 0.083333 36 39
i 3 52 0.416667 40 47
i 1 52.333333 0.083333 64 54 1661 1
i 4 52.333333 0.416667 50 51
i 4 52.333333 0.416667 56 53
i 4 52.333333 0.416667 60 53
i 4 52.333333 0.416667 65 56
i 1 52.416667 0.083333 63 77 1667 1
i 1 52.5 0.333333 62 91 1671 1
i 2 52.5 0.416667 44 72
i 3 52.5 0.083333 36 33
i 3 52.5 0.166667 38 53
i 3 52.5 0.416667 40 50
i 3 52.5 0.083333 44 50
i 1 52.833333 0.166667 61 60 1685 1
i 1 53 0.333333 60 83 1689 1
i 2 53 0.416667 41 76
i 3 53 0.083333 36 37
i 3 53 0.416667 40 46
i 1 53.333333 0.166667 57 76 1695 1
i 3 53.333333 0.083333 38 38
i 1 53.5 0.333333 58 92 1701 1
i 2 53.5 0.416667 40 70
i 3 53.5 0.083333 36 32
i 3 53.5 0.166667 38 55
i 3 53.5 0.416667 40 51
i 3 53.5 0.083333 44 50
i 4 53.5 0.333333 50 53
i 4 53.5 0.333333 56 55
i 4 53.5 0.333333 60 55
i 4 53.5 0.333333 65 58

; Measure 28 | 00:54
i 1 54 0.166667 60 82 1721 1
i 2 54 0.416667 41 79
i 3 54 0.083333 36 39
i 3 54 0.416667 40 47
i 1 54.166667 0.166667 63 94 1727 1
i 1 54.333333 0.166667 65 103 1729 1
i 3 54.333333 0.083333 38 38
i 4 54.333333 0.416667 51 49
i 4 54.333333 0.416667 56 51
i 4 54.333333 0.416667 60 51
i 4 54.333333 0.416667 67 54
i 1 54.5 0.333333 68 110 1739 1
i 2 54.5 0.416667 36 72
i 3 54.5 0.083333 36 33
i 3 54.5 0.166667 38 53
i 3 54.5 0.416667 40 50
i 3 54.5 0.083333 44 50
i 1 54.833333 0.166667 67 82 1753 1
i 1 55 0.333333 65 97 1757 1
i 2 55 0.416667 34 76
i 3 55 0.083333 36 37
i 3 55 0.416667 40 46
i 1 55.333333 0.166667 62 82 1763 1
i 4 55.333333 0.416667 50 51
i 4 55.333333 0.416667 56 53
i 4 55.333333 0.416667 60 53
i 4 55.333333 0.416667 65 56
i 1 55.5 0.083333 61 53 1771 1
i 2 55.5 0.416667 38 70
i 3 55.5 0.083333 36 32
i 3 55.5 0.166667 38 55
i 3 55.5 0.416667 40 51
i 3 55.5 0.083333 44 50
i 1 55.583333 0.25 60 87 1778 1
i 3 55.833333 0.083333 38 38

; Measure 29 | 00:56
i 2 56 0.416667 39 79
i 3 56 0.083333 36 39
i 3 56 0.416667 40 47
i 4 56 0.583333 49 50
i 4 56 0.583333 55 52
i 4 56 0.583333 58 52
i 4 56 0.583333 65 55
i 1 56.333333 0.166667 58 88 1799 1
i 1 56.5 0.333333 61 99 1803 1
i 2 56.5 0.416667 43 72
i 3 56.5 0.083333 36 33
i 3 56.5 0.166667 38 53
i 3 56.5 0.416667 40 50
i 3 56.5 0.083333 44 50
i 1 56.833333 0.166667 63 103 1817 1
i 1 57 0.333333 67 106 1821 1
i 2 57 0.416667 46 76
i 3 57 0.083333 36 37
i 3 57 0.416667 40 46
i 1 57.333333 0.166667 65 83 1827 1
i 3 57.333333 0.083333 38 38
i 4 57.333333 0.416667 49 52
i 4 57.333333 0.416667 55 54
i 4 57.333333 0.416667 58 54
i 4 57.333333 0.416667 65 57
i 1 57.5 0.333333 63 96 1837 1
i 2 57.5 0.416667 39 70
i 3 57.5 0.083333 36 32
i 3 57.5 0.166667 38 55
i 3 57.5 0.416667 40 51
i 3 57.5 0.083333 44 50

; Measure 30 | 00:58
i 1 58 0.333333 64 102 1853 1
i 2 58 0.416667 40 79
i 3 58 0.083333 36 39
i 3 58 0.416667 40 47
i 1 58.333333 0.166667 67 106 1859 1
i 3 58.333333 0.083333 38 38
i 1 58.5 0.333333 70 110 1865 1
i 2 58.5 0.416667 43 72
i 3 58.5 0.083333 36 33
i 3 58.5 0.166667 38 53
i 3 58.5 0.416667 40 50
i 3 58.5 0.083333 44 50
i 4 58.666667 0.333333 52 51
i 4 58.666667 0.333333 55 53
i 4 58.666667 0.333333 58 53
i 4 58.666667 0.333333 61 56
i 1 58.833333 0.166667 73 113 1879 1
i 1 59 0.333333 72 94 1883 1
i 2 59 0.416667 46 76
i 3 59 0.083333 36 37
i 3 59 0.416667 40 46
i 1 59.333333 0.166667 70 85 1893 1
i 1 59.5 0.333333 67 92 1897 1
i 2 59.5 0.416667 45 70
i 3 59.5 0.083333 36 32
i 3 59.5 0.166667 38 55
i 3 59.5 0.416667 40 51
i 3 59.5 0.083333 44 50
i 4 59.666667 0.25 52 53
i 4 59.666667 0.25 55 55
i 4 59.666667 0.25 58 55
i 4 59.666667 0.25 61 58
i 3 59.833333 0.083333 38 38

; Measure 31 | 01:00
i 1 60 0.333333 65 99 1919 1
i 2 60 0.416667 46 79
i 3 60 0.083333 36 39
i 3 60 0.416667 40 47
i 1 60.333333 0.166667 62 85 1925 1
i 4 60.333333 0.416667 50 49
i 4 60.333333 0.416667 56 51
i 4 60.333333 0.416667 60 51
i 4 60.333333 0.416667 65 54
i 1 60.5 0.333333 58 94 1933 1
i 2 60.5 0.416667 41 72
i 3 60.5 0.083333 36 33
i 3 60.5 0.166667 38 53
i 3 60.5 0.416667 40 50
i 3 60.5 0.083333 44 50
i 1 60.833333 0.083333 57 52 1947 1
i 1 60.916667 0.25 58 97 1949 1
i 2 61 0.416667 38 76
i 3 61 0.083333 36 37
i 3 61 0.416667 40 46
i 1 61.166667 0.166667 62 88 1957 1
i 1 61.333333 0.166667 65 98 1959 1
i 3 61.333333 0.083333 38 38
i 1 61.5 0.333333 68 108 1965 1
i 2 61.5 0.416667 32 70
i 3 61.5 0.083333 36 32
i 3 61.5 0.166667 38 55
i 3 61.5 0.416667 40 51
i 3 61.5 0.083333 44 50
i 4 61.5 0.333333 50 51
i 4 61.5 0.333333 56 53
i 4 61.5 0.333333 60 53
i 4 61.5 0.333333 65 56

; Measure 32 | 01:02
i 1 62 0.333333 71 106 1985 1
i 2 62 0.416667 31 79
i 3 62 0.083333 36 39
i 3 62 0.416667 40 47
i 1 62.333333 0.166667 68 97 1991 1
i 3 62.333333 0.083333 38 38
i 4 62.333333 0.416667 53 50
i 4 62.333333 0.416667 56 52
i 4 62.333333 0.416667 59 52
i 4 62.333333 0.416667 63 55
i 1 62.5 0.333333 67 103 2001 1
i 2 62.5 0.416667 38 72
i 3 62.5 0.083333 36 33
i 3 62.5 0.166667 38 53
i 3 62.5 0.416667 40 50
i 3 62.5 0.083333 44 50
i 1 62.833333 0.166667 65 86 2015 1
i 1 63 0.166667 63 92 2019 1
i 2 63 0.416667 35 76
i 3 63 0.083333 36 37
i 3 63 0.416667 40 46
i 1 63.166667 0.166667 62 82 2025 1
i 1 63.333333 0.166667 61 61 2027 1
i 4 63.333333 0.416667 53 52
i 4 63.333333 0.416667 56 54
i 4 63.333333 0.416667 59 54
i 4 63.333333 0.416667 63 57
i 1 63.5 0.333333 59 90 2035 1
i 2 63.5 0.416667 37 70
i 3 63.5 0.083333 36 32
i 3 63.5 0.166667 38 55
i 3 63.5 0.416667 40 51
i 3 63.5 0.083333 44 50
i 3 63.833333 0.083333 38 38

; Measure 33 | 01:04
i 1 64 0.333333 60 93 2053 1
i 2 64 0.416667 36 79
i 3 64 0.083333 36 39
i 3 64 0.416667 40 47
i 4 64 0.333333 51 51
i 4 64 0.333333 58 53
i 4 64 0.333333 62 53
i 4 64 0.333333 67 56
i 1 64.333333 0.166667 63 99 2063 1
i 1 64.5 0.333333 67 106 2071 1
i 2 64.5 0.416667 43 72
i 3 64.5 0.083333 36 33
i 3 64.5 0.166667 38 53
i 3 64.5 0.416667 40 50
i 3 64.5 0.083333 44 50
i 1 64.833333 0.166667 70 112 2081 1
i 1 65 0.166667 69 81 2085 1
i 2 65 0.416667 39 76
i 3 65 0.083333 36 37
i 3 65 0.416667 40 46
i 1 65.166667 0.166667 68 83 2091 1
i 4 65.166667 0.333333 51 53
i 4 65.166667 0.333333 58 55
i 4 65.166667 0.333333 62 55
i 4 65.166667 0.333333 67 58
i 1 65.333333 0.166667 67 89 2097 1
i 3 65.333333 0.083333 38 38
i 1 65.5 0.333333 63 94 2103 1
i 2 65.5 0.416667 40 70
i 3 65.5 0.083333 36 32
i 3 65.5 0.166667 38 55
i 3 65.5 0.416667 40 51
i 3 65.5 0.083333 44 50

; Measure 34 | 01:06
i 1 66 0.333333 69 107 2119 1
i 2 66 0.416667 41 79
i 3 66 0.083333 36 39
i 3 66 0.416667 40 47
i 1 66.333333 0.166667 72 112 2125 1
i 3 66.333333 0.083333 38 38
i 1 66.5 0.333333 75 114 2131 1
i 2 66.5 0.416667 45 72
i 3 66.5 0.083333 36 33
i 3 66.5 0.166667 38 53
i 3 66.5 0.416667 40 50
i 3 66.5 0.083333 44 50
i 4 66.666667 0.333333 51 49
i 4 66.666667 0.333333 57 51
i 4 66.666667 0.333333 62 51
i 4 66.666667 0.333333 67 54
i 1 66.833333 0.166667 74 93 2145 1
i 1 67 0.333333 72 102 2149 1
i 2 67 0.416667 43 76
i 3 67 0.083333 36 37
i 3 67 0.416667 40 46
i 1 67.333333 0.166667 69 87 2159 1
i 1 67.5 0.333333 65 94 2163 1
i 2 67.5 0.416667 35 70
i 3 67.5 0.083333 36 32
i 3 67.5 0.166667 38 55
i 3 67.5 0.416667 40 51
i 3 67.5 0.083333 44 50
i 4 67.666667 0.25 51 51
i 4 67.666667 0.25 57 53
i 4 67.666667 0.25 62 53
i 4 67.666667 0.25 67 56
i 3 67.833333 0.083333 38 38

; Measure 35 | 01:08
i 1 68 0.5 74 109 2185 1
i 2 68 0.416667 34 79
i 3 68 0.083333 36 39
i 3 68 0.416667 40 47
i 4 68.333333 0.416667 50 50
i 4 68.333333 0.416667 56 52
i 4 68.333333 0.416667 60 52
i 4 68.333333 0.416667 65 55
i 1 68.5 0.166667 72 89 2197 1
i 2 68.5 0.416667 38 72
i 3 68.5 0.083333 36 33
i 3 68.5 0.166667 38 53
i 3 68.5 0.416667 40 50
i 3 68.5 0.083333 44 50
i 1 68.666667 0.333333 70 103 2206 1
i 1 69 0.166667 68 85 2215 1
i 2 69 0.416667 31 76
i 3 69 0.083333 36 37
i 3 69 0.416667 40 46
i 1 69.166667 0.333333 67 96 2221 1
i 3 69.333333 0.083333 38 38
i 4 69.333333 0.416667 53 52
i 4 69.333333 0.416667 56 54
i 4 69.333333 0.416667 59 54
i 4 69.333333 0.416667 63 57
i 1 69.5 0.333333 65 83 2231 1
i 2 69.5 0.416667 35 70
i 3 69.5 0.083333 36 32
i 3 69.5 0.166667 38 55
i 3 69.5 0.416667 40 51
i 3 69.5 0.083333 44 50

; Measure 36 | 01:10
i 1 70 0.166667 63 87 2247 1
i 2 70 0.416667 36 79
i 3 70 0.083333 36 39
i 3 70 0.416667 40 47
i 1 70.166667 0.166667 67 101 2253 1
i 1 70.333333 0.166667 70 107 2255 1
i 3 70.333333 0.083333 38 38
i 4 70.333333 0.416667 51 51
i 4 70.333333 0.416667 58 53
i 4 70.333333 0.416667 62 53
i 4 70.333333 0.416667 67 56
i 1 70.5 0.333333 69 105 2265 1
i 2 70.5 0.416667 39 72
i 3 70.5 0.083333 36 33
i 3 70.5 0.166667 38 53
i 3 70.5 0.416667 40 50
i 3 70.5 0.083333 44 50
i 1 70.833333 0.083333 68 60 2279 1
i 1 70.916667 0.083333 67 80 2281 1
i 1 71 0.333333 65 96 2285 1
i 2 71 0.416667 41 76
i 3 71 0.083333 36 37
i 3 71 0.416667 40 46
i 1 71.333333 0.166667 63 82 2291 1
i 4 71.333333 0.416667 51 53
i 4 71.333333 0.416667 57 55
i 4 71.333333 0.416667 62 55
i 4 71.333333 0.416667 67 58
i 1 71.5 0.333333 60 88 2299 1
i 2 71.5 0.416667 33 70
i 3 71.5 0.083333 36 32
i 3 71.5 0.166667 38 55
i 3 71.5 0.416667 40 51
i 3 71.5 0.083333 44 50
i 3 71.833333 0.083333 38 38

; Measure 37 | 01:12
i 2 72 0.416667 34 81
i 3 72 0.083333 36 41
i 3 72 0.416667 40 49
i 4 72 0.333333 50 51
i 4 72 0.333333 56 53
i 4 72 0.333333 60 53
i 4 72 0.333333 65 56
i 1 72.333333 0.166667 65 92 2325 1
i 1 72.5 0.333333 68 106 2333 1
i 2 72.5 0.416667 36 74
i 3 72.5 0.083333 36 35
i 3 72.5 0.166667 38 55
i 3 72.5 0.416667 40 52
i 3 72.5 0.083333 44 52
i 1 72.833333 0.166667 70 112 2343 1
i 1 73 0.5 74 114 2347 1
i 2 73 0.416667 38 78
i 3 73 0.083333 36 39
i 3 73 0.416667 40 48
i 3 73.333333 0.083333 38 40
i 4 73.333333 0.416667 50 53
i 4 73.333333 0.416667 56 55
i 4 73.333333 0.416667 60 55
i 4 73.333333 0.416667 65 58
i 1 73.5 0.333333 72 96 2361 1
i 2 73.5 0.416667 40 72
i 3 73.5 0.083333 36 34
i 3 73.5 0.166667 38 57
i 3 73.5 0.416667 40 53
i 3 73.5 0.083333 44 52

; Measure 38 | 01:14
i 1 74 0.333333 70 108 2377 1
i 2 74 0.416667 39 81
i 3 74 0.083333 36 41
i 3 74 0.416667 40 49
i 1 74.333333 0.166667 67 93 2383 1
i 3 74.333333 0.083333 38 40
i 1 74.5 0.5 63 101 2389 1
i 2 74.5 0.416667 38 74
i 3 74.5 0.083333 36 35
i 3 74.5 0.166667 38 55
i 3 74.5 0.416667 40 52
i 3 74.5 0.083333 44 52
i 4 74.666667 0.333333 49 52
i 4 74.666667 0.333333 55 54
i 4 74.666667 0.333333 58 54
i 4 74.666667 0.333333 65 57
i 2 75 0.416667 36 78
i 3 75 0.083333 36 39
i 3 75 0.416667 40 48
i 1 75.166667 0.083333 66 57 2413 1
i 1 75.25 0.25 67 103 2415 1
i 1 75.5 0.333333 70 111 2419 1
i 2 75.5 0.416667 35 72
i 3 75.5 0.083333 36 34
i 3 75.5 0.166667 38 57
i 3 75.5 0.416667 40 53
i 3 75.5 0.083333 44 52
i 4 75.666667 0.25 49 54
i 4 75.666667 0.25 55 56
i 4 75.666667 0.25 58 56
i 4 75.666667 0.25 65 59
i 3 75.833333 0.083333 38 40

; Measure 39 | 01:16
i 1 76 0.333333 74 112 2441 1
i 2 76 0.416667 34 81
i 3 76 0.083333 36 41
i 3 76 0.416667 40 49
i 1 76.333333 0.166667 72 94 2447 1
i 4 76.333333 0.416667 50 53
i 4 76.333333 0.416667 56 55
i 4 76.333333 0.416667 60 55
i 4 76.333333 0.416667 65 58
i 1 76.5 0.333333 70 110 2455 1
i 2 76.5 0.416667 38 74
i 3 76.5 0.083333 36 35
i 3 76.5 0.166667 38 55
i 3 76.5 0.416667 40 52
i 3 76.5 0.083333 44 52
i 1 76.833333 0.166667 68 101 2469 1
i 1 77 0.333333 65 103 2473 1
i 2 77 0.416667 41 78
i 3 77 0.083333 36 39
i 3 77 0.416667 40 48
i 1 77.333333 0.166667 62 88 2479 1
i 3 77.333333 0.083333 38 40
i 1 77.5 0.333333 58 92 2485 1
i 2 77.5 0.416667 40 72
i 3 77.5 0.083333 36 34
i 3 77.5 0.166667 38 57
i 3 77.5 0.416667 40 53
i 3 77.5 0.083333 44 52
i 4 77.5 0.333333 50 55
i 4 77.5 0.333333 56 57
i 4 77.5 0.333333 60 57
i 4 77.5 0.333333 65 60

; Measure 40 | 01:18
i 1 78 0.333333 56 92 2505 1
i 2 78 0.416667 41 81
i 3 78 0.083333 36 41
i 3 78 0.416667 40 49
i 1 78.333333 0.166667 60 95 2511 1
i 3 78.333333 0.083333 38 40
i 4 78.333333 0.416667 51 51
i 4 78.333333 0.416667 56 53
i 4 78.333333 0.416667 60 53
i 4 78.333333 0.416667 67 56
i 1 78.5 0.333333 63 104 2521 1
i 2 78.5 0.416667 44 74
i 3 78.5 0.083333 36 35
i 3 78.5 0.166667 38 55
i 3 78.5 0.416667 40 52
i 3 78.5 0.083333 44 52
i 1 78.833333 0.166667 65 109 2535 1
i 1 79 0.333333 68 113 2539 1
i 2 79 0.416667 34 78
i 3 79 0.083333 36 39
i 3 79 0.416667 40 48
i 1 79.333333 0.166667 70 118 2545 1
i 4 79.333333 0.416667 50 53
i 4 79.333333 0.416667 56 55
i 4 79.333333 0.416667 60 55
i 4 79.333333 0.416667 65 58
i 1 79.5 0.333333 74 107 2553 1
i 2 79.5 0.416667 38 72
i 3 79.5 0.083333 36 34
i 3 79.5 0.166667 38 57
i 3 79.5 0.416667 40 53
i 3 79.5 0.083333 44 52
i 3 79.833333 0.083333 38 40

; Measure 41 | 01:20
i 1 80 0.5 75 113 2571 1
i 2 80 0.416667 39 81
i 3 80 0.083333 36 41
i 3 80 0.416667 40 49
i 4 80 0.583333 49 52
i 4 80 0.583333 55 54
i 4 80 0.583333 58 54
i 4 80 0.583333 65 57
i 1 80.5 0.166667 73 96 2583 1
i 2 80.5 0.416667 41 74
i 3 80.5 0.083333 36 35
i 3 80.5 0.166667 38 55
i 3 80.5 0.416667 40 52
i 3 80.5 0.083333 44 52
i 1 80.666667 0.333333 70 107 2596 1
i 1 81 0.166667 67 92 2601 1
i 2 81 0.416667 42 78
i 3 81 0.083333 36 39
i 3 81 0.416667 40 48
i 1 81.166667 0.5 63 101 2607 1
i 3 81.333333 0.083333 38 40
i 4 81.333333 0.416667 49 54
i 4 81.333333 0.416667 55 56
i 4 81.333333 0.416667 58 56
i 4 81.333333 0.416667 65 59
i 2 81.5 0.416667 43 72
i 3 81.5 0.083333 36 34
i 3 81.5 0.166667 38 57
i 3 81.5 0.416667 40 53
i 3 81.5 0.083333 44 52

; Measure 42 | 01:22
i 1 82 0.166667 64 94 2631 1
i 2 82 0.416667 40 81
i 3 82 0.083333 36 41
i 3 82 0.416667 40 49
i 1 82.166667 0.166667 67 103 2637 1
i 1 82.333333 0.166667 70 108 2639 1
i 3 82.333333 0.083333 38 40
i 1 82.5 0.333333 73 113 2645 1
i 2 82.5 0.416667 43 74
i 3 82.5 0.083333 36 35
i 3 82.5 0.166667 38 55
i 3 82.5 0.416667 40 52
i 3 82.5 0.083333 44 52
i 4 82.666667 0.333333 52 53
i 4 82.666667 0.333333 55 55
i 4 82.666667 0.333333 58 55
i 4 82.666667 0.333333 61 58
i 1 82.833333 0.166667 76 114 2659 1
i 1 83 0.333333 75 106 2663 1
i 2 83 0.416667 46 78
i 3 83 0.083333 36 39
i 3 83 0.416667 40 48
i 1 83.333333 0.166667 73 93 2673 1
i 1 83.5 0.333333 70 101 2677 1
i 2 83.5 0.416667 45 72
i 3 83.5 0.083333 36 34
i 3 83.5 0.166667 38 57
i 3 83.5 0.416667 40 53
i 3 83.5 0.083333 44 52
i 4 83.666667 0.25 52 55
i 4 83.666667 0.25 55 57
i 4 83.666667 0.25 58 57
i 4 83.666667 0.25 61 60
i 3 83.833333 0.083333 38 40

; Measure 43 | 01:24
i 2 84 0.416667 46 81
i 3 84 0.083333 36 41
i 3 84 0.416667 40 49
i 1 84.166667 0.333333 74 111 2703 1
i 4 84.333333 0.583333 50 51
i 4 84.333333 0.583333 56 53
i 4 84.333333 0.583333 60 53
i 4 84.333333 0.583333 65 56
i 1 84.5 0.166667 72 96 2711 1
i 2 84.5 0.416667 44 74
i 3 84.5 0.083333 36 35
i 3 84.5 0.166667 38 55
i 3 84.5 0.416667 40 52
i 3 84.5 0.083333 44 52
i 1 84.666667 0.666667 70 123 2720 1
i 2 85 0.416667 41 78
i 3 85 0.083333 36 39
i 3 85 0.416667 40 48
i 1 85.333333 0.166667 68 102 2733 1
i 3 85.333333 0.083333 38 40
i 1 85.5 0.333333 65 99 2739 1
i 2 85.5 0.416667 32 72
i 3 85.5 0.083333 36 34
i 3 85.5 0.166667 38 57
i 3 85.5 0.416667 40 53
i 3 85.5 0.083333 44 52

; Measure 44 | 01:26
i 1 86 0.333333 71 111 2751 1
i 2 86 0.416667 31 81
i 3 86 0.083333 36 41
i 3 86 0.416667 40 49
i 1 86.333333 0.166667 68 100 2757 1
i 3 86.333333 0.083333 38 40
i 4 86.333333 0.416667 53 52
i 4 86.333333 0.416667 56 54
i 4 86.333333 0.416667 59 54
i 4 86.333333 0.416667 63 57
i 1 86.5 0.333333 67 105 2767 1
i 2 86.5 0.416667 33 74
i 3 86.5 0.083333 36 35
i 3 86.5 0.166667 38 55
i 3 86.5 0.416667 40 52
i 3 86.5 0.083333 44 52
i 1 86.833333 0.166667 65 91 2781 1
i 1 87 0.333333 63 99 2785 1
i 2 87 0.416667 35 78
i 3 87 0.083333 36 39
i 3 87 0.416667 40 48
i 1 87.333333 0.166667 62 86 2791 1
i 4 87.333333 0.416667 53 54
i 4 87.333333 0.416667 56 56
i 4 87.333333 0.416667 59 56
i 4 87.333333 0.416667 63 59
i 1 87.5 0.333333 59 92 2799 1
i 2 87.5 0.416667 37 72
i 3 87.5 0.083333 36 34
i 3 87.5 0.166667 38 57
i 3 87.5 0.416667 40 53
i 3 87.5 0.083333 44 52
i 3 87.833333 0.083333 38 40

; Measure 45 | 01:28
i 1 88 0.333333 67 102 2817 1
i 2 88 0.416667 36 81
i 3 88 0.083333 36 41
i 3 88 0.416667 40 49
i 4 88 0.333333 51 53
i 4 88 0.333333 58 55
i 4 88 0.333333 62 55
i 4 88 0.333333 67 58
i 1 88.333333 0.166667 63 92 2827 1
i 1 88.5 0.5 60 94 2835 1
i 2 88.5 0.416667 38 74
i 3 88.5 0.083333 36 35
i 3 88.5 0.166667 38 55
i 3 88.5 0.416667 40 52
i 3 88.5 0.083333 44 52
i 2 89 0.416667 39 78
i 3 89 0.083333 36 39
i 3 89 0.416667 40 48
i 4 89.166667 0.333333 51 55
i 4 89.166667 0.333333 58 57
i 4 89.166667 0.333333 62 57
i 4 89.166667 0.333333 67 60
i 1 89.333333 0.166667 63 90 2855 1
i 3 89.333333 0.083333 38 40
i 1 89.5 0.333333 67 105 2861 1
i 2 89.5 0.416667 40 72
i 3 89.5 0.083333 36 34
i 3 89.5 0.166667 38 57
i 3 89.5 0.416667 40 53
i 3 89.5 0.083333 44 52

; Measure 46 | 01:30
i 1 90 0.333333 69 108 2877 1
i 2 90 0.416667 41 81
i 3 90 0.083333 36 41
i 3 90 0.416667 40 49
i 1 90.333333 0.166667 72 114 2883 1
i 3 90.333333 0.083333 38 40
i 1 90.5 0.333333 75 119 2889 1
i 2 90.5 0.416667 39 74
i 3 90.5 0.083333 36 35
i 3 90.5 0.166667 38 55
i 3 90.5 0.416667 40 52
i 3 90.5 0.083333 44 52
i 4 90.666667 0.333333 51 51
i 4 90.666667 0.333333 57 53
i 4 90.666667 0.333333 62 53
i 4 90.666667 0.333333 67 56
i 1 90.833333 0.166667 74 98 2903 1
i 1 91 0.333333 72 104 2907 1
i 2 91 0.416667 36 78
i 3 91 0.083333 36 39
i 3 91 0.416667 40 48
i 1 91.333333 0.166667 69 91 2917 1
i 1 91.5 0.333333 65 94 2921 1
i 2 91.5 0.416667 35 72
i 3 91.5 0.083333 36 34
i 3 91.5 0.166667 38 57
i 3 91.5 0.416667 40 53
i 3 91.5 0.083333 44 52
i 4 91.666667 0.25 51 53
i 4 91.666667 0.25 57 55
i 4 91.666667 0.25 62 55
i 4 91.666667 0.25 67 58
i 3 91.833333 0.083333 38 40

; Measure 47 | 01:32
i 1 92 0.333333 62 98 2943 1
i 2 92 0.416667 34 81
i 3 92 0.083333 36 41
i 3 92 0.416667 40 49
i 1 92.333333 0.166667 65 105 2949 1
i 4 92.333333 0.416667 50 52
i 4 92.333333 0.416667 56 54
i 4 92.333333 0.416667 60 54
i 4 92.333333 0.416667 65 57
i 1 92.5 0.5 70 113 2957 1
i 2 92.5 0.416667 41 74
i 3 92.5 0.083333 36 35
i 3 92.5 0.166667 38 55
i 3 92.5 0.416667 40 52
i 3 92.5 0.083333 44 52
i 2 93 0.416667 31 78
i 3 93 0.083333 36 39
i 3 93 0.416667 40 48
i 1 93.166667 0.083333 68 91 2977 1
i 1 93.25 0.083333 67 80 2979 1
i 1 93.333333 0.166667 65 73 2981 1
i 3 93.333333 0.083333 38 40
i 4 93.333333 0.416667 53 54
i 4 93.333333 0.416667 56 56
i 4 93.333333 0.416667 59 56
i 4 93.333333 0.416667 63 59
i 1 93.5 0.333333 62 84 2991 1
i 2 93.5 0.416667 35 72
i 3 93.5 0.083333 36 34
i 3 93.5 0.166667 38 57
i 3 93.5 0.416667 40 53
i 3 93.5 0.083333 44 52

; Measure 48 | 01:34
i 1 94 0.333333 63 92 3007 1
i 2 94 0.416667 36 81
i 3 94 0.083333 36 41
i 3 94 0.416667 40 49
i 1 94.333333 0.166667 60 82 3013 1
i 3 94.333333 0.083333 38 40
i 4 94.333333 0.416667 51 53
i 4 94.333333 0.416667 58 55
i 4 94.333333 0.416667 62 55
i 4 94.333333 0.416667 67 58
i 1 94.5 0.333333 57 85 3023 1
i 2 94.5 0.416667 38 74
i 3 94.5 0.083333 36 35
i 3 94.5 0.166667 38 55
i 3 94.5 0.416667 40 52
i 3 94.5 0.083333 44 52
i 1 94.833333 0.166667 53 73 3037 1
i 1 95 0.666667 58 88 3041 1
i 2 95 0.416667 41 78
i 3 95 0.083333 36 39
i 3 95 0.416667 40 48
i 4 95.333333 0.416667 51 55
i 4 95.333333 0.416667 57 57
i 4 95.333333 0.416667 62 57
i 4 95.333333 0.416667 67 60
i 2 95.5 0.416667 33 72
i 3 95.5 0.083333 36 34
i 3 95.5 0.166667 38 57
i 3 95.5 0.416667 40 53
i 3 95.5 0.083333 44 52
i 3 95.833333 0.083333 38 40

; Measure 49 | 01:36
i 2 96 0.416667 34 73
i 3 96 0.083333 36 33
i 3 96 0.416667 40 41
i 4 96 0.333333 50 43
i 4 96 0.333333 56 45
i 4 96 0.333333 60 45
i 4 96 0.333333 65 48
i 1 96.333333 0.166667 53 67 3077 1
i 1 96.5 0.333333 56 84 3085 1
i 2 96.5 0.416667 38 66
i 3 96.5 0.083333 36 27
i 3 96.5 0.166667 38 47
i 3 96.5 0.416667 40 44
i 3 96.5 0.083333 44 44
i 1 96.833333 0.166667 58 92 3095 1
i 1 97 0.5 65 90 3099 1
i 2 97 0.416667 41 70
i 3 97 0.083333 36 31
i 3 97 0.416667 40 40
i 3 97.333333 0.083333 38 32
i 4 97.333333 0.416667 50 45
i 4 97.333333 0.416667 56 47
i 4 97.333333 0.416667 60 47
i 4 97.333333 0.416667 65 50
i 1 97.5 0.333333 62 78 3113 1
i 2 97.5 0.416667 40 64
i 3 97.5 0.083333 36 26
i 3 97.5 0.166667 38 49
i 3 97.5 0.416667 40 45
i 3 97.5 0.083333 44 44

; Measure 50 | 01:38
i 2 98 0.416667 39 73
i 3 98 0.083333 36 33
i 3 98 0.416667 40 41
i 1 98.166667 0.333333 55 77 3133 1
i 3 98.333333 0.083333 38 32
i 1 98.5 0.166667 58 88 3139 1
i 2 98.5 0.416667 43 66
i 3 98.5 0.083333 36 27
i 3 98.5 0.166667 38 47
i 3 98.5 0.416667 40 44
i 3 98.5 0.083333 44 44
i 1 98.666667 0.333333 61 92 3148 1
i 4 98.666667 0.333333 49 44
i 4 98.666667 0.333333 55 46
i 4 98.666667 0.333333 58 46
i 4 98.666667 0.333333 65 49
i 1 99 0.166667 60 63 3157 1
i 2 99 0.416667 46 70
i 3 99 0.083333 36 31
i 3 99 0.416667 40 40
i 1 99.166667 0.333333 58 79 3167 1
i 1 99.5 0.333333 55 72 3171 1
i 2 99.5 0.416667 45 64
i 3 99.5 0.083333 36 26
i 3 99.5 0.166667 38 49
i 3 99.5 0.416667 40 45
i 3 99.5 0.083333 44 44
i 4 99.666667 0.25 49 46
i 4 99.666667 0.25 55 48
i 4 99.666667 0.25 58 48
i 4 99.666667 0.25 65 51
i 3 99.833333 0.083333 38 32

; Measure 51 | 01:40
i 1 100 0.333333 53 72 3193 1
i 2 100 0.416667 46 73
i 3 100 0.083333 36 33
i 3 100 0.416667 40 41
i 1 100.333333 0.166667 56 90 3199 1
i 4 100.333333 0.416667 50 45
i 4 100.333333 0.416667 56 47
i 4 100.333333 0.416667 60 47
i 4 100.333333 0.416667 65 50
i 1 100.5 0.5 58 94 3207 1
i 2 100.5 0.416667 41 66
i 3 100.5 0.083333 36 27
i 3 100.5 0.166667 38 47
i 3 100.5 0.416667 40 44
i 3 100.5 0.083333 44 44
i 2 101 0.416667 38 70
i 3 101 0.083333 36 31
i 3 101 0.416667 40 40
i 1 101.166667 0.083333 61 55 3227 1
i 1 101.25 0.25 62 91 3229 1
i 3 101.333333 0.083333 38 32
i 1 101.5 0.333333 65 87 3235 1
i 2 101.5 0.416667 40 64
i 3 101.5 0.083333 36 26
i 3 101.5 0.166667 38 49
i 3 101.5 0.416667 40 45
i 3 101.5 0.083333 44 44
i 4 101.5 0.333333 50 47
i 4 101.5 0.333333 56 49
i 4 101.5 0.333333 60 49
i 4 101.5 0.333333 65 52

; Measure 52 | 01:42
i 1 102 0.333333 63 85 3255 1
i 2 102 0.416667 41 73
i 3 102 0.083333 36 33
i 3 102 0.416667 40 41
i 1 102.333333 0.166667 60 68 3261 1
i 3 102.333333 0.083333 38 32
i 4 102.333333 0.416667 51 43
i 4 102.333333 0.416667 56 45
i 4 102.333333 0.416667 60 45
i 4 102.333333 0.416667 67 48
i 1 102.5 0.333333 56 83 3271 1
i 2 102.5 0.416667 44 66
i 3 102.5 0.083333 36 27
i 3 102.5 0.166667 38 47
i 3 102.5 0.416667 40 44
i 3 102.5 0.083333 44 44
i 1 102.833333 0.166667 53 67 3285 1
i 1 103 0.333333 62 87 3289 1
i 2 103 0.416667 34 70
i 3 103 0.083333 36 31
i 3 103 0.416667 40 40
i 1 103.333333 0.166667 61 56 3295 1
i 4 103.333333 0.416667 50 45
i 4 103.333333 0.416667 56 47
i 4 103.333333 0.416667 60 47
i 4 103.333333 0.416667 65 50
i 1 103.5 0.333333 60 80 3303 1
i 2 103.5 0.416667 38 64
i 3 103.5 0.083333 36 26
i 3 103.5 0.166667 38 49
i 3 103.5 0.416667 40 45
i 3 103.5 0.083333 44 44
i 3 103.833333 0.083333 38 32

; Measure 53 | 01:44
i 2 104 0.416667 39 73
i 3 104 0.083333 36 33
i 3 104 0.416667 40 41
i 4 104 0.583333 49 44
i 4 104 0.583333 55 46
i 4 104 0.583333 58 46
i 4 104 0.583333 65 49
i 1 104.333333 0.166667 55 75 3329 1
i 1 104.5 0.333333 58 90 3333 1
i 2 104.5 0.416667 43 66
i 3 104.5 0.083333 36 27
i 3 104.5 0.166667 38 47
i 3 104.5 0.416667 40 44
i 3 104.5 0.083333 44 44
i 1 104.833333 0.166667 61 96 3347 1
i 1 105 0.5 63 97 3351 1
i 2 105 0.416667 34 70
i 3 105 0.083333 36 31
i 3 105 0.416667 40 40
i 3 105.333333 0.083333 38 32
i 4 105.333333 0.416667 49 46
i 4 105.333333 0.416667 55 48
i 4 105.333333 0.416667 58 48
i 4 105.333333 0.416667 65 51
i 1 105.5 0.333333 61 79 3365 1
i 2 105.5 0.416667 39 64
i 3 105.5 0.083333 36 26
i 3 105.5 0.166667 38 49
i 3 105.5 0.416667 40 45
i 3 105.5 0.083333 44 44

; Measure 54 | 01:46
i 1 106 0.333333 52 77 3381 1
i 2 106 0.416667 40 73
i 3 106 0.083333 36 33
i 3 106 0.416667 40 41
i 1 106.333333 0.166667 55 86 3387 1
i 3 106.333333 0.083333 38 32
i 1 106.5 0.333333 58 94 3393 1
i 2 106.5 0.416667 43 66
i 3 106.5 0.083333 36 27
i 3 106.5 0.166667 38 47
i 3 106.5 0.416667 40 44
i 3 106.5 0.083333 44 44
i 4 106.666667 0.333333 52 45
i 4 106.666667 0.333333 55 47
i 4 106.666667 0.333333 58 47
i 4 106.666667 0.333333 61 50
i 1 106.833333 0.166667 61 85 3407 1
i 1 107 0.333333 64 96 3411 1
i 2 107 0.416667 46 70
i 3 107 0.083333 36 31
i 3 107 0.416667 40 40
i 1 107.333333 0.166667 63 60 3421 1
i 1 107.5 0.333333 62 83 3425 1
i 2 107.5 0.416667 45 64
i 3 107.5 0.083333 36 26
i 3 107.5 0.166667 38 49
i 3 107.5 0.416667 40 45
i 3 107.5 0.083333 44 44
i 4 107.666667 0.25 52 47
i 4 107.666667 0.25 55 49
i 4 107.666667 0.25 58 49
i 4 107.666667 0.25 61 52
i 3 107.833333 0.083333 38 32

; Measure 55 | 01:48
i 1 108 0.333333 65 94 3447 1
i 2 108 0.416667 46 73
i 3 108 0.083333 36 33
i 3 108 0.416667 40 41
i 1 108.333333 0.166667 62 80 3453 1
i 4 108.333333 0.583333 50 43
i 4 108.333333 0.583333 56 45
i 4 108.333333 0.583333 60 45
i 4 108.333333 0.583333 65 48
i 1 108.5 0.5 58 87 3461 1
i 2 108.5 0.416667 41 66
i 3 108.5 0.083333 36 27
i 3 108.5 0.166667 38 47
i 3 108.5 0.416667 40 44
i 3 108.5 0.083333 44 44
i 2 109 0.416667 38 70
i 3 109 0.083333 36 31
i 3 109 0.416667 40 40
i 1 109.166667 0.083333 57 52 3481 1
i 1 109.25 0.25 58 84 3483 1
i 3 109.333333 0.083333 38 32
i 1 109.5 0.333333 53 73 3489 1
i 2 109.5 0.416667 32 64
i 3 109.5 0.083333 36 26
i 3 109.5 0.166667 38 49
i 3 109.5 0.416667 40 45
i 3 109.5 0.083333 44 44

; Measure 56 | 01:50
i 1 110 0.333333 59 86 3501 1
i 2 110 0.416667 31 73
i 3 110 0.083333 36 33
i 3 110 0.416667 40 41
i 1 110.333333 0.166667 62 78 3507 1
i 3 110.333333 0.083333 38 32
i 4 110.333333 0.416667 53 44
i 4 110.333333 0.416667 56 46
i 4 110.333333 0.416667 59 46
i 4 110.333333 0.416667 63 49
i 1 110.5 0.333333 65 98 3517 1
i 2 110.5 0.416667 35 66
i 3 110.5 0.083333 36 27
i 3 110.5 0.166667 38 47
i 3 110.5 0.416667 40 44
i 3 110.5 0.083333 44 44
i 1 110.833333 0.166667 68 105 3531 1
i 1 111 0.333333 67 90 3535 1
i 2 111 0.416667 38 70
i 3 111 0.083333 36 31
i 3 111 0.416667 40 40
i 1 111.333333 0.166667 65 79 3541 1
i 4 111.333333 0.416667 53 46
i 4 111.333333 0.416667 56 48
i 4 111.333333 0.416667 59 48
i 4 111.333333 0.416667 63 51
i 1 111.5 0.333333 63 84 3549 1
i 2 111.5 0.416667 37 64
i 3 111.5 0.083333 36 26
i 3 111.5 0.166667 38 49
i 3 111.5 0.416667 40 45
i 3 111.5 0.083333 44 44
i 3 111.833333 0.083333 38 32

; Measure 57 | 01:52
i 2 112 0.416667 36 73
i 3 112 0.083333 36 33
i 3 112 0.416667 40 41
i 4 112 0.333333 51 45
i 4 112 0.333333 58 47
i 4 112 0.333333 62 47
i 4 112 0.333333 67 50
i 1 112.333333 0.166667 63 82 3575 1
i 1 112.5 0.333333 67 94 3583 1
i 2 112.5 0.416667 39 66
i 3 112.5 0.083333 36 27
i 3 112.5 0.166667 38 47
i 3 112.5 0.416667 40 44
i 3 112.5 0.083333 44 44
i 1 112.833333 0.166667 63 80 3593 1
i 1 113 0.5 60 87 3597 1
i 2 113 0.416667 43 70
i 3 113 0.083333 36 31
i 3 113 0.416667 40 40
i 4 113.166667 0.333333 51 47
i 4 113.166667 0.333333 58 49
i 4 113.166667 0.333333 62 49
i 4 113.166667 0.333333 67 52
i 3 113.333333 0.083333 38 32
i 1 113.5 0.333333 58 75 3611 1
i 2 113.5 0.416667 42 64
i 3 113.5 0.083333 36 26
i 3 113.5 0.166667 38 49
i 3 113.5 0.416667 40 45
i 3 113.5 0.083333 44 44

; Measure 58 | 01:54
i 1 114 0.333333 57 82 3627 1
i 2 114 0.416667 41 73
i 3 114 0.083333 36 33
i 3 114 0.416667 40 41
i 1 114.333333 0.166667 60 88 3633 1
i 3 114.333333 0.083333 38 32
i 1 114.5 0.333333 63 96 3639 1
i 2 114.5 0.416667 33 66
i 3 114.5 0.083333 36 27
i 3 114.5 0.166667 38 47
i 3 114.5 0.416667 40 44
i 3 114.5 0.083333 44 44
i 4 114.666667 0.333333 51 43
i 4 114.666667 0.333333 57 45
i 4 114.666667 0.333333 62 45
i 4 114.666667 0.333333 67 48
i 1 114.833333 0.166667 65 101 3653 1
i 1 115 0.166667 63 80 3657 1
i 2 115 0.416667 36 70
i 3 115 0.083333 36 31
i 3 115 0.416667 40 40
i 1 115.166667 0.083333 62 60 3667 1
i 1 115.25 0.083333 61 53 3669 1
i 1 115.333333 0.166667 60 70 3671 1
i 1 115.5 0.333333 57 78 3675 1
i 2 115.5 0.416667 35 64
i 3 115.5 0.083333 36 26
i 3 115.5 0.166667 38 49
i 3 115.5 0.416667 40 45
i 3 115.5 0.083333 44 44
i 4 115.666667 0.25 51 45
i 4 115.666667 0.25 57 47
i 4 115.666667 0.25 62 47
i 4 115.666667 0.25 67 50
i 3 115.833333 0.083333 38 32

; Measure 59 | 01:56
i 1 116 0.5 58 90 3697 1
i 2 116 0.416667 34 73
i 3 116 0.083333 36 33
i 3 116 0.416667 40 41
i 4 116 0.75 50 44
i 4 116 0.75 55 46
i 4 116 0.75 58 46
i 4 116 0.75 65 49
i 2 116.5 0.416667 38 66
i 3 116.5 0.083333 36 27
i 3 116.5 0.166667 38 47
i 3 116.5 0.416667 40 44
i 3 116.5 0.083333 44 44
i 1 116.833333 0.166667 53 66 3721 1
i 1 117 0.333333 56 77 3725 1
i 2 117 0.416667 41 70
i 3 117 0.083333 36 31
i 3 117 0.416667 40 40
i 1 117.333333 0.083333 57 51 3731 1
i 3 117.333333 0.083333 38 32
i 1 117.416667 0.416667 58 84 3734 1
i 2 117.5 0.416667 33 64
i 3 117.5 0.083333 36 26
i 3 117.5 0.166667 38 49
i 3 117.5 0.416667 40 45
i 3 117.5 0.083333 44 44

; Measure 60 | 01:58
i 1 118 0.333333 46 70 3749 1
i 2 118 0.416667 34 73
i 3 118 0.083333 36 34
i 3 118 0.333333 40 43
i 4 118 1 50 45
i 4 118 1 55 47
i 4 118 1 58 47
i 4 118 1 65 50
i 1 118.333333 0.166667 53 76 3759 1
i 1 118.5 0.5 58 83 3763 1
i 2 118.5 0.416667 41 66

f 0 122
</CsScore>
</CsoundSynthesizer>

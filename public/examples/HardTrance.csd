<!--
Performance: Hardtrance Demo
Description: 146 BPM · E minor · 256 bars / 7:01. Slow atmospheric buildup, rolling hard-trance bass, acid call, supersaw theme, breakdown at 3:30, main arrival at 5:16, final crest and fading outro. One-shot arrangement.
Created: 2026-10-04T18:57:41.430Z

This CSD was created with Orchestron.
Design instruments visually and hear ideas take shape.
Build expressive performances with sequencers, arpeggiators, live controls, and flexible audio routing.
Export portable Csound projects for rendering, sharing, and further sound design.

GitHub: https://github.com/thomassresearch/orchestron
-->
<CsoundSynthesizer>
<CsOptions>
-d -W -f -o Hardtrance_Demo.wav
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
chnset 0.58210321777087137, "__vcs_mixer_strip_bad76b2daa79923b4d4593e8_gain"
chnset 1, "__vcs_mixer_strip_bad76b2daa79923b4d4593e8_left"
chnset 0.78000000000000003, "__vcs_mixer_strip_bad76b2daa79923b4d4593e8_right"
chnset 1, "__vcs_mixer_strip_bad76b2daa79923b4d4593e8_mute"
chnset 0.29174270140011677, "__vcs_mixer_strip_8cd32066fc3e746357fe40f7_gain"
chnset 1, "__vcs_mixer_strip_8cd32066fc3e746357fe40f7_left"
chnset 1, "__vcs_mixer_strip_8cd32066fc3e746357fe40f7_right"
chnset 1, "__vcs_mixer_strip_8cd32066fc3e746357fe40f7_mute"
chnset 1.8620871366628675, "__vcs_mixer_strip_14559139f723d60468f91a4f_gain"
chnset 1, "__vcs_mixer_strip_14559139f723d60468f91a4f_left"
chnset 0.69999999999999996, "__vcs_mixer_strip_14559139f723d60468f91a4f_right"
chnset 1, "__vcs_mixer_strip_14559139f723d60468f91a4f_mute"
chnset 0.3981071705534972, "__vcs_mixer_strip_b21ae25633e3575379c0cd0f_gain"
chnset 0.64000000000000001, "__vcs_mixer_strip_b21ae25633e3575379c0cd0f_left"
chnset 1, "__vcs_mixer_strip_b21ae25633e3575379c0cd0f_right"
chnset 1, "__vcs_mixer_strip_b21ae25633e3575379c0cd0f_mute"
chnset 0.83176377110267097, "__vcs_mixer_strip_6cc32acc5b494446f03ac17b_gain"
chnset 1, "__vcs_mixer_strip_6cc32acc5b494446f03ac17b_left"
chnset 0.54000000000000004, "__vcs_mixer_strip_6cc32acc5b494446f03ac17b_right"
chnset 1, "__vcs_mixer_strip_6cc32acc5b494446f03ac17b_mute"
chnset 0.63095734448019325, "__vcs_mixer_strip_44d513e47c631f99f7a3e562_gain"
chnset 1, "__vcs_mixer_strip_44d513e47c631f99f7a3e562_left"
chnset 0.81000000000000005, "__vcs_mixer_strip_44d513e47c631f99f7a3e562_right"
chnset 1, "__vcs_mixer_strip_44d513e47c631f99f7a3e562_mute"
chnset 0.74989420933245587, "__vcs_mixer_strip_b9da087f272fb5e723933d0d_gain"
chnset 0.84999999999999998, "__vcs_mixer_strip_b9da087f272fb5e723933d0d_left"
chnset 1, "__vcs_mixer_strip_b9da087f272fb5e723933d0d_right"
chnset 1, "__vcs_mixer_strip_b9da087f272fb5e723933d0d_mute"
chnset 0.49545019080479025, "__vcs_mixer_strip_c345ff0eaa07a4cf1d076198_gain"
chnset 1, "__vcs_mixer_strip_c345ff0eaa07a4cf1d076198_left"
chnset 1, "__vcs_mixer_strip_c345ff0eaa07a4cf1d076198_right"
chnset 1, "__vcs_mixer_strip_c345ff0eaa07a4cf1d076198_mute"
chnset 3.9810717055349722, "__vcs_mixer_strip_32b902f3e717905c808bc3b3_gain"
chnset 1, "__vcs_mixer_strip_32b902f3e717905c808bc3b3_left"
chnset 0.97999999999999998, "__vcs_mixer_strip_32b902f3e717905c808bc3b3_right"
chnset 1, "__vcs_mixer_strip_32b902f3e717905c808bc3b3_mute"
chnset 1.7179083871575882, "__vcs_mixer_strip_bfc1a1b7430c287732affae4_gain"
chnset 1, "__vcs_mixer_strip_bfc1a1b7430c287732affae4_left"
chnset 0.35999999999999999, "__vcs_mixer_strip_bfc1a1b7430c287732affae4_right"
chnset 1, "__vcs_mixer_strip_bfc1a1b7430c287732affae4_mute"
chnset 1, "__vcs_mixer_strip_3d24d38fbb86f53cbadf2925_gain"
chnset 0.43999999999999995, "__vcs_mixer_strip_3d24d38fbb86f53cbadf2925_left"
chnset 1, "__vcs_mixer_strip_3d24d38fbb86f53cbadf2925_right"
chnset 1, "__vcs_mixer_strip_3d24d38fbb86f53cbadf2925_mute"
chnset 1, "__vcs_mixer_strip_55a2288beedf45404ab748af_gain"
chnset 0.63, "__vcs_mixer_strip_55a2288beedf45404ab748af_left"
chnset 1, "__vcs_mixer_strip_55a2288beedf45404ab748af_right"
chnset 1, "__vcs_mixer_strip_55a2288beedf45404ab748af_mute"
chnset 0.54954087385762451, "__vcs_mixer_strip_4ff4cffa30256d4b88100c02_gain"
chnset 1, "__vcs_mixer_strip_4ff4cffa30256d4b88100c02_left"
chnset 1, "__vcs_mixer_strip_4ff4cffa30256d4b88100c02_right"
chnset 1, "__vcs_mixer_strip_4ff4cffa30256d4b88100c02_mute"
chnset 1, "__vcs_mixer_strip_18240bf957b1c70986590896_gain"
chnset 1, "__vcs_mixer_strip_18240bf957b1c70986590896_left"
chnset 0.58000000000000007, "__vcs_mixer_strip_18240bf957b1c70986590896_right"
chnset 1, "__vcs_mixer_strip_18240bf957b1c70986590896_mute"
chnset 1, "__vcs_mixer_strip_a6256f0694d7a38eb55eee87_gain"
chnset 1, "__vcs_mixer_strip_a6256f0694d7a38eb55eee87_left"
chnset 0.45999999999999996, "__vcs_mixer_strip_a6256f0694d7a38eb55eee87_right"
chnset 1, "__vcs_mixer_strip_a6256f0694d7a38eb55eee87_mute"
chnset 0.31622776601683794, "__vcs_mixer_strip_b5c7638620f2f38a657a5790_gain"
chnset 1, "__vcs_mixer_strip_b5c7638620f2f38a657a5790_left"
chnset 1, "__vcs_mixer_strip_b5c7638620f2f38a657a5790_right"
chnset 1, "__vcs_mixer_strip_b5c7638620f2f38a657a5790_mute"
chnset 1, "__vcs_mixer_route_030b0c1ee70d90df6cc290e9_gain"
chnset 1, "__vcs_mixer_route_030b0c1ee70d90df6cc290e9_post"
chnset 1, "__vcs_mixer_route_030b0c1ee70d90df6cc290e9_pan"
chnset 1, "__vcs_mixer_route_fe338ba6c98a13b8fee998c7_gain"
chnset 1, "__vcs_mixer_route_fe338ba6c98a13b8fee998c7_post"
chnset 1, "__vcs_mixer_route_fe338ba6c98a13b8fee998c7_pan"
chnset 1, "__vcs_mixer_route_1bdd707b8154ef4b993e8b29_gain"
chnset 1, "__vcs_mixer_route_1bdd707b8154ef4b993e8b29_post"
chnset 1, "__vcs_mixer_route_1bdd707b8154ef4b993e8b29_pan"
chnset 1, "__vcs_mixer_route_375853de2f37eecb08896a61_gain"
chnset 1, "__vcs_mixer_route_375853de2f37eecb08896a61_post"
chnset 1, "__vcs_mixer_route_375853de2f37eecb08896a61_pan"
chnset 1, "__vcs_mixer_route_5e4b8ac6df68947c9abf1454_gain"
chnset 1, "__vcs_mixer_route_5e4b8ac6df68947c9abf1454_post"
chnset 1, "__vcs_mixer_route_5e4b8ac6df68947c9abf1454_pan"
chnset 1, "__vcs_mixer_route_eed59fb6a5255fd69d9337f1_gain"
chnset 1, "__vcs_mixer_route_eed59fb6a5255fd69d9337f1_post"
chnset 1, "__vcs_mixer_route_eed59fb6a5255fd69d9337f1_pan"
chnset 1, "__vcs_mixer_route_e73ee7621eb3a4c13901ea8b_gain"
chnset 1, "__vcs_mixer_route_e73ee7621eb3a4c13901ea8b_post"
chnset 1, "__vcs_mixer_route_e73ee7621eb3a4c13901ea8b_pan"
chnset 1, "__vcs_mixer_route_d8b1e8dcc8eb12889af9661c_gain"
chnset 1, "__vcs_mixer_route_d8b1e8dcc8eb12889af9661c_post"
chnset 1, "__vcs_mixer_route_d8b1e8dcc8eb12889af9661c_pan"
chnset 1, "__vcs_mixer_route_cc66606b123efcd807c3bcc9_gain"
chnset 1, "__vcs_mixer_route_cc66606b123efcd807c3bcc9_post"
chnset 1, "__vcs_mixer_route_cc66606b123efcd807c3bcc9_pan"
chnset 1, "__vcs_mixer_route_a30c7f1aaac6106b60c8bf1e_gain"
chnset 1, "__vcs_mixer_route_a30c7f1aaac6106b60c8bf1e_post"
chnset 1, "__vcs_mixer_route_a30c7f1aaac6106b60c8bf1e_pan"
chnset 1, "__vcs_mixer_route_ab636af1f47d3f846c91adcd_gain"
chnset 1, "__vcs_mixer_route_ab636af1f47d3f846c91adcd_post"
chnset 1, "__vcs_mixer_route_ab636af1f47d3f846c91adcd_pan"
chnset 1, "__vcs_mixer_route_97e56d52c2522952ccb1b07c_gain"
chnset 1, "__vcs_mixer_route_97e56d52c2522952ccb1b07c_post"
chnset 1, "__vcs_mixer_route_97e56d52c2522952ccb1b07c_pan"
chnset 1, "__vcs_mixer_route_5d7c201c2b1bc8b6a06c0402_gain"
chnset 1, "__vcs_mixer_route_5d7c201c2b1bc8b6a06c0402_post"
chnset 1, "__vcs_mixer_route_5d7c201c2b1bc8b6a06c0402_pan"
chnset 1, "__vcs_mixer_route_8c42b5ebd60e4df4dfa599ba_gain"
chnset 1, "__vcs_mixer_route_8c42b5ebd60e4df4dfa599ba_post"
chnset 1, "__vcs_mixer_route_8c42b5ebd60e4df4dfa599ba_pan"
chnset 1, "__vcs_mixer_route_9e67d665aecc908cdeee6a97_gain"
chnset 1, "__vcs_mixer_route_9e67d665aecc908cdeee6a97_post"
chnset 1, "__vcs_mixer_route_9e67d665aecc908cdeee6a97_pan"
chnset 1, "__vcs_mixer_route_d4662d3ad8cbca9edcc6f5ae_gain"
chnset 1, "__vcs_mixer_route_d4662d3ad8cbca9edcc6f5ae_post"
chnset 1, "__vcs_mixer_route_d4662d3ad8cbca9edcc6f5ae_pan"
chnset 1, "__vcs_mixer_route_460c6d17907501ede33a6848_gain"
chnset 1, "__vcs_mixer_route_460c6d17907501ede33a6848_post"
chnset 1, "__vcs_mixer_route_460c6d17907501ede33a6848_pan"
chnset 1, "__vcs_mixer_route_91e164bcf8d4e0d1f65cbc8f_gain"
chnset 1, "__vcs_mixer_route_91e164bcf8d4e0d1f65cbc8f_post"
chnset 1, "__vcs_mixer_route_91e164bcf8d4e0d1f65cbc8f_pan"
chnset 1, "__vcs_mixer_route_243e39b4858f7193fa09530a_gain"
chnset 1, "__vcs_mixer_route_243e39b4858f7193fa09530a_post"
chnset 1, "__vcs_mixer_route_243e39b4858f7193fa09530a_pan"
chnset 1, "__vcs_mixer_route_8e4d4960ebc7d83ccb40b41e_gain"
chnset 1, "__vcs_mixer_route_8e4d4960ebc7d83ccb40b41e_post"
chnset 1, "__vcs_mixer_route_8e4d4960ebc7d83ccb40b41e_pan"
chnset 1, "__vcs_mixer_route_f61f4652529a694883fd6bc7_gain"
chnset 1, "__vcs_mixer_route_f61f4652529a694883fd6bc7_post"
chnset 1, "__vcs_mixer_route_f61f4652529a694883fd6bc7_pan"
chnset 1, "__vcs_mixer_route_9e74979841d2aca1fc31d317_gain"
chnset 1, "__vcs_mixer_route_9e74979841d2aca1fc31d317_post"
chnset 1, "__vcs_mixer_route_9e74979841d2aca1fc31d317_pan"
chnset 1, "__vcs_mixer_route_5d41266d70469702a2318702_gain"
chnset 1, "__vcs_mixer_route_5d41266d70469702a2318702_post"
chnset 1, "__vcs_mixer_route_5d41266d70469702a2318702_pan"
chnset 1, "__vcs_mixer_route_d32c2140a36de30f298cdf0e_gain"
chnset 1, "__vcs_mixer_route_d32c2140a36de30f298cdf0e_post"
chnset 1, "__vcs_mixer_route_d32c2140a36de30f298cdf0e_pan"
chnset 1, "__vcs_mixer_route_77fb424075875a8de636592c_gain"
chnset 1, "__vcs_mixer_route_77fb424075875a8de636592c_post"
chnset 1, "__vcs_mixer_route_77fb424075875a8de636592c_pan"
chnset 1, "__vcs_mixer_route_934341a03a3226b4537ad15f_gain"
chnset 1, "__vcs_mixer_route_934341a03a3226b4537ad15f_post"
chnset 1, "__vcs_mixer_route_934341a03a3226b4537ad15f_pan"
chnset 1, "__vcs_mixer_route_8f1311fb2fe500f5ba81da4a_gain"
chnset 1, "__vcs_mixer_route_8f1311fb2fe500f5ba81da4a_post"
chnset 1, "__vcs_mixer_route_8f1311fb2fe500f5ba81da4a_pan"
chnset 1, "__vcs_mixer_route_511c261d13d0c350c7233197_gain"
chnset 1, "__vcs_mixer_route_511c261d13d0c350c7233197_post"
chnset 1, "__vcs_mixer_route_511c261d13d0c350c7233197_pan"
chnset 0.54954087385762451, "__vcs_mixer_route_a4996fc7f6a32a08356594fe_gain"
chnset 1, "__vcs_mixer_route_a4996fc7f6a32a08356594fe_post"
chnset 1, "__vcs_mixer_route_a4996fc7f6a32a08356594fe_pan"
chnset 0.54954087385762451, "__vcs_mixer_route_68d588f623688c8c24d957d2_gain"
chnset 1, "__vcs_mixer_route_68d588f623688c8c24d957d2_post"
chnset 1, "__vcs_mixer_route_68d588f623688c8c24d957d2_pan"
chnset 1.9952623149688795, "__vcs_mixer_route_f6ecc17fcf816ae2e2bf82ba_gain"
chnset 1, "__vcs_mixer_route_f6ecc17fcf816ae2e2bf82ba_post"
chnset 1, "__vcs_mixer_route_f6ecc17fcf816ae2e2bf82ba_pan"
chnset 1.9952623149688795, "__vcs_mixer_route_1e397dc21f4378658e91b5e5_gain"
chnset 1, "__vcs_mixer_route_1e397dc21f4378658e91b5e5_post"
chnset 1, "__vcs_mixer_route_1e397dc21f4378658e91b5e5_pan"
chnset 0.0038018939632056088, "__vcs_mixer_route_2170e5f12703cd3a193f6abd_gain"
chnset 1, "__vcs_mixer_route_2170e5f12703cd3a193f6abd_post"
chnset 1, "__vcs_mixer_route_2170e5f12703cd3a193f6abd_pan"
chnset 0.0038018939632056088, "__vcs_mixer_route_c48fcae2ce8ff4458b0e451f_gain"
chnset 1, "__vcs_mixer_route_c48fcae2ce8ff4458b0e451f_post"
chnset 1, "__vcs_mixer_route_c48fcae2ce8ff4458b0e451f_pan"
chnset 0.82224264994707108, "__vcs_mixer_route_715ef9f48a5c69653ddebd2d_gain"
chnset 1, "__vcs_mixer_route_715ef9f48a5c69653ddebd2d_post"
chnset 1, "__vcs_mixer_route_715ef9f48a5c69653ddebd2d_pan"
chnset 0.82224264994707108, "__vcs_mixer_route_a968ade595d69c835565089d_gain"
chnset 1, "__vcs_mixer_route_a968ade595d69c835565089d_post"
chnset 1, "__vcs_mixer_route_a968ade595d69c835565089d_pan"
chnset 0.11091748152624009, "__vcs_mixer_route_5904028fef78407b0749cf13_gain"
chnset 1, "__vcs_mixer_route_5904028fef78407b0749cf13_post"
chnset 1, "__vcs_mixer_route_5904028fef78407b0749cf13_pan"
chnset 0.11091748152624009, "__vcs_mixer_route_df5d3b33795c697587450e2f_gain"
chnset 1, "__vcs_mixer_route_df5d3b33795c697587450e2f_post"
chnset 1, "__vcs_mixer_route_df5d3b33795c697587450e2f_pan"
chnset 0.077624711662869161, "__vcs_mixer_route_85942b72be0bb4c9f548ef38_gain"
chnset 1, "__vcs_mixer_route_85942b72be0bb4c9f548ef38_post"
chnset 1, "__vcs_mixer_route_85942b72be0bb4c9f548ef38_pan"
chnset 0.077624711662869161, "__vcs_mixer_route_f5e6bfb58a21758867bddcc0_gain"
chnset 1, "__vcs_mixer_route_f5e6bfb58a21758867bddcc0_post"
chnset 1, "__vcs_mixer_route_f5e6bfb58a21758867bddcc0_pan"
chnset 1.6788040181225603, "__vcs_mixer_route_0613931e96821796b634d111_gain"
chnset 1, "__vcs_mixer_route_0613931e96821796b634d111_post"
chnset 1, "__vcs_mixer_route_0613931e96821796b634d111_pan"
chnset 1.6788040181225603, "__vcs_mixer_route_a846aca0bfe525d6f2040603_gain"
chnset 1, "__vcs_mixer_route_a846aca0bfe525d6f2040603_post"
chnset 1, "__vcs_mixer_route_a846aca0bfe525d6f2040603_pan"
chnset 0.0011614486138403425, "__vcs_mixer_route_659b8c3b0c18418c8c46a07a_gain"
chnset 1, "__vcs_mixer_route_659b8c3b0c18418c8c46a07a_post"
chnset 1, "__vcs_mixer_route_659b8c3b0c18418c8c46a07a_pan"
chnset 0.0011614486138403425, "__vcs_mixer_route_907268ecfedd366edc8573f5_gain"
chnset 1, "__vcs_mixer_route_907268ecfedd366edc8573f5_post"
chnset 1, "__vcs_mixer_route_907268ecfedd366edc8573f5_pan"
chnset 0.88104887300801404, "__vcs_mixer_route_5999c467d7fc1272efcc324c_gain"
chnset 1, "__vcs_mixer_route_5999c467d7fc1272efcc324c_post"
chnset 1, "__vcs_mixer_route_5999c467d7fc1272efcc324c_pan"
chnset 0.88104887300801404, "__vcs_mixer_route_46f875c3b474ce8c98617728_gain"
chnset 1, "__vcs_mixer_route_46f875c3b474ce8c98617728_post"
chnset 1, "__vcs_mixer_route_46f875c3b474ce8c98617728_pan"
chnset 0.3630780547701013, "__vcs_mixer_route_ce04c4e5be234ab330b3982d_gain"
chnset 1, "__vcs_mixer_route_ce04c4e5be234ab330b3982d_post"
chnset 1, "__vcs_mixer_route_ce04c4e5be234ab330b3982d_pan"
chnset 0.3630780547701013, "__vcs_mixer_route_c4cfd980b5ffadef1f20d62b_gain"
chnset 1, "__vcs_mixer_route_c4cfd980b5ffadef1f20d62b_post"
chnset 1, "__vcs_mixer_route_c4cfd980b5ffadef1f20d62b_pan"
chnset 0.3126079367123954, "__vcs_mixer_route_4e8a5b0bd27cb1557ce0d7a8_gain"
chnset 1, "__vcs_mixer_route_4e8a5b0bd27cb1557ce0d7a8_post"
chnset 1, "__vcs_mixer_route_4e8a5b0bd27cb1557ce0d7a8_pan"
chnset 0.3126079367123954, "__vcs_mixer_route_ac60e390d9f4cc8a7bc4d933_gain"
chnset 1, "__vcs_mixer_route_ac60e390d9f4cc8a7bc4d933_post"
chnset 1, "__vcs_mixer_route_ac60e390d9f4cc8a7bc4d933_pan"
chnset 0.0072443596007498983, "__vcs_mixer_route_e53d687e91a0e5c309a651aa_gain"
chnset 1, "__vcs_mixer_route_e53d687e91a0e5c309a651aa_post"
chnset 1, "__vcs_mixer_route_e53d687e91a0e5c309a651aa_pan"
chnset 0.0072443596007498983, "__vcs_mixer_route_5475fb8a3751bcad0bf81535_gain"
chnset 1, "__vcs_mixer_route_5475fb8a3751bcad0bf81535_post"
chnset 1, "__vcs_mixer_route_5475fb8a3751bcad0bf81535_pan"
chnset 0.003090295432513589, "__vcs_mixer_route_b901b446594dfdde9ac11226_gain"
chnset 1, "__vcs_mixer_route_b901b446594dfdde9ac11226_post"
chnset 1, "__vcs_mixer_route_b901b446594dfdde9ac11226_pan"
chnset 0.003090295432513589, "__vcs_mixer_route_d7f17e412b1e26334d506d5d_gain"
chnset 1, "__vcs_mixer_route_d7f17e412b1e26334d506d5d_post"
chnset 1, "__vcs_mixer_route_d7f17e412b1e26334d506d5d_pan"
chnset 1, "__vcs_mixer_route_d03a9bfb8537849a25f30638_gain"
chnset 1, "__vcs_mixer_route_d03a9bfb8537849a25f30638_post"
chnset 1, "__vcs_mixer_route_d03a9bfb8537849a25f30638_pan"
chnset 1, "__vcs_mixer_route_77f21ffca96ba56dbec00253_gain"
chnset 1, "__vcs_mixer_route_77f21ffca96ba56dbec00253_post"
chnset 1, "__vcs_mixer_route_77f21ffca96ba56dbec00253_pan"
chnset 1, "__vcs_mixer_route_6e2ccee4f710b9c0a61d256f_gain"
chnset 1, "__vcs_mixer_route_6e2ccee4f710b9c0a61d256f_post"
chnset 1, "__vcs_mixer_route_6e2ccee4f710b9c0a61d256f_pan"
chnset 1, "__vcs_mixer_route_97cfabdca1118d23ac27f030_gain"
chnset 1, "__vcs_mixer_route_97cfabdca1118d23ac27f030_post"
chnset 1, "__vcs_mixer_route_97cfabdca1118d23ac27f030_pan"
chnset 1, "__vcs_mixer_route_ebe4d00ca1570557781dee01_gain"
chnset 1, "__vcs_mixer_route_ebe4d00ca1570557781dee01_post"
chnset 1, "__vcs_mixer_route_ebe4d00ca1570557781dee01_pan"
chnset 1, "__vcs_mixer_route_208ab40923d5bf707587f01b_gain"
chnset 1, "__vcs_mixer_route_208ab40923d5bf707587f01b_post"
chnset 1, "__vcs_mixer_route_208ab40923d5bf707587f01b_pan"
gk_vcs_score_cc[] init 2048
instr 9000
  iindex = int(p4)
  gk_vcs_score_cc[iindex] = p5
endin
chnset 0.13, "__vcs_perf_952fbd2b2abec3807452b9e9be9357511fde6bc76ec9e572560c2217ade6fe05"
chnset 2.5, "__vcs_perf_3991c34dae1c1c9bba7e2d2fadbf60868cec239ce85c4cc4121bdf0a88af9674"
chnset 1400, "__vcs_perf_6fba197bdf50091e6fc7d292291d1728e9cc13abcc0d4d33dea94adedc005fd3"
connect "vcs_mix_dfef5439c127e30b121252ef", "left", "vcs_mix_2d3abc7194d9a93abbb3d71b", "p_360f84035942243c6a36537a"
connect "vcs_mix_dfef5439c127e30b121252ef", "right", "vcs_mix_2d3abc7194d9a93abbb3d71b", "p_27042f4e6eca7d0b2a7ee402"
chnset 0.86201171505381369, "__vcs_perf_5b2e82b0b24e116c199c895c58c2c9e25a6b10b01c10fa48f8bbf996ed88ddf7"
chnset 9546.1372511171612, "__vcs_perf_31a0141314e31627bfd79ebd640cb391f3813758297e30503fc806fd775b67fd"
connect "vcs_mix_46adb534d240b196161f2d0c", "left", "vcs_mix_ac1227af2c1ee2726806c2a4", "p_360f84035942243c6a36537a"
connect "vcs_mix_46adb534d240b196161f2d0c", "right", "vcs_mix_ac1227af2c1ee2726806c2a4", "p_27042f4e6eca7d0b2a7ee402"
chnset 3, "__vcs_perf_370150679d7438c0460bfb924ef6d57291b5f7c84dece8e080e3771bc1476e13"
chnset 0.14000000000000001, "__vcs_perf_f4946d946843952bb8fd2205d74d5918cbc36ea777bcf4c642f88b1d58471175"
chnset 2.4140000000000001, "__vcs_perf_e953f2f5b7dafb2111543486636628a1524cf7d2582fa6c75c4e0232d6a6b012"
connect "vcs_mix_78f66fb9c94330306dee1d9b", "left", "vcs_mix_f616c599d1394aedcbebf807", "p_360f84035942243c6a36537a"
connect "vcs_mix_78f66fb9c94330306dee1d9b", "right", "vcs_mix_f616c599d1394aedcbebf807", "p_27042f4e6eca7d0b2a7ee402"
chnset 0.22, "__vcs_perf_e236d88505b64faa9cba81ba8289b083044371ead60eea9c2f66e01c507517bb"
chnset 2, "__vcs_perf_a78919516a5d78084b37158949ee30fdb11f6dcf769bd3cf4b7d854d23916262"
chnset 1100, "__vcs_perf_1b1f1b19a4aee0a21261accf09f47289b6f7bf667d434f0f9b68f998816d37e7"
connect "vcs_mix_d0469c4c83473ecdd4b828f3", "left", "vcs_mix_4cbc36c24ee222c3b14b97a7", "p_360f84035942243c6a36537a"
connect "vcs_mix_d0469c4c83473ecdd4b828f3", "right", "vcs_mix_4cbc36c24ee222c3b14b97a7", "p_27042f4e6eca7d0b2a7ee402"
chnset 1.2, "__vcs_perf_46c741f7c411ee306278f78a56aebd7a7bbcc321a863c2090835889206383987"
chnset 0.34999999999999998, "__vcs_perf_3e31a49423405b0abbc1f74bd464c30b1b40b30eb5a1bfc990cd18b31b3cfc12"
chnset 0.14999999999999999, "__vcs_perf_f46fcc645796ca1bbb5ef5113cbfbc2f778894a8e54eafd98c19333418b1d276"
connect "vcs_mix_e699cbef276101d1a72a1ebe", "left", "vcs_mix_09c877bcef3d1b63094e6c61", "p_360f84035942243c6a36537a"
connect "vcs_mix_e699cbef276101d1a72a1ebe", "right", "vcs_mix_09c877bcef3d1b63094e6c61", "p_27042f4e6eca7d0b2a7ee402"
chnset 0.54718781852750065, "__vcs_perf_6a44a20eb71ac04b8938beb71eda93af0cfc146c9d40082d38f97b8bbe5f355b"
chnset 1.6892534682729941, "__vcs_perf_6f37f24154f8177a933b5c79c057261cf389bb018b98cca30a0b3c79e3fd42e9"
chnset 896.22979677934404, "__vcs_perf_67b23cec303a69c7dc858d8fb1d1f45410ba7f7a57b4057e8cb3fbcb46a58362"
connect "vcs_mix_e95c8bf2b225fe1042e7bf0d", "left", "vcs_mix_41f59d49bae86a0bb110a8a1", "p_360f84035942243c6a36537a"
connect "vcs_mix_e95c8bf2b225fe1042e7bf0d", "right", "vcs_mix_41f59d49bae86a0bb110a8a1", "p_27042f4e6eca7d0b2a7ee402"
chnset 0.049858722824920362, "__vcs_perf_e5a2205fb51bc7f1bbcf7fbd2f4848d07a4882c09dc4eb8956da0f7b4ea4cc65"
chnset 1, "__vcs_perf_5f450edcbb119082a939ab96be1f0489bcf304ea5a47e5d6cc98f22866142127"
chnset 1459.3371835222379, "__vcs_perf_ae7b32f68e94eeb02e590b82954e33eff6515753518121b6f711785a2fb73f08"
connect "vcs_mix_2b0b4940c8fda27093d9a629", "left", "vcs_mix_9152adbd4f9979234fa00f60", "p_360f84035942243c6a36537a"
connect "vcs_mix_2b0b4940c8fda27093d9a629", "right", "vcs_mix_9152adbd4f9979234fa00f60", "p_27042f4e6eca7d0b2a7ee402"
chnset 2.9271230468992147, "__vcs_perf_53f0cab7ea3ddb74236188c53676e0d4158686ff60b6c7f0d298ea6569316a94"
connect "vcs_mix_8d27111ae349cf621af6bb36", "left", "vcs_mix_899f076410de4fc4acd8fdd6", "p_360f84035942243c6a36537a"
connect "vcs_mix_8d27111ae349cf621af6bb36", "right", "vcs_mix_899f076410de4fc4acd8fdd6", "p_27042f4e6eca7d0b2a7ee402"
chnset 0.8402829587418259, "__vcs_perf_dd7aa82c1b3a597b1f3120cc6fa381e453d456a792e323a7884a23eafa008b73"
chnset 1.2346483075514623, "__vcs_perf_520bcea7b43ae5d54a96e05a7fda105ce2d9f702123c94917a8bd1498461e2c0"
chnset 0.80000000000000004, "__vcs_perf_e13aff939298661788de62eeb33796abc09d3e70a5da5b68d1f3fb6024052fd5"
chnset 4, "__vcs_perf_f5ca75a87855f62fc3cafdfc0e17d54717613839b563f8e24341082c94d224d3"
connect "vcs_mix_820dd0bd33c8b60a88195ed9", "left", "vcs_mix_b99b7ec8f15ac9e237849672", "p_360f84035942243c6a36537a"
connect "vcs_mix_820dd0bd33c8b60a88195ed9", "right", "vcs_mix_b99b7ec8f15ac9e237849672", "p_27042f4e6eca7d0b2a7ee402"
chnset 3, "__vcs_perf_168f161191dd9060edbd6989232fbc9285722e30e9c1579b62f5a708f6f01ee6"
chnset 0.71999999999999997, "__vcs_perf_12378f777cc4b5ed69e73b24569b3f520230899512ac5b4b49e678bb8e057fda"
chnset 0.59999999999999998, "__vcs_perf_7f43542007417e472b80d4d4d24936130c8a88c35142a8d18732dff84cdb239b"
connect "vcs_mix_209b70460343c14b379319d6", "left", "vcs_mix_8929c5bcc40fd958387d739d", "p_360f84035942243c6a36537a"
connect "vcs_mix_209b70460343c14b379319d6", "right", "vcs_mix_8929c5bcc40fd958387d739d", "p_27042f4e6eca7d0b2a7ee402"
chnset 0.12, "__vcs_perf_1849ca14f9c2706e1212ae44c7972e3f3a9a173f02ef1f78872801841b8e6591"
chnset 0.65000000000000002, "__vcs_perf_3f222720ba85e247be93f916f1c397da1578eababd74f2b5be4a7be8fcbfeca6"
chnset 8, "__vcs_perf_0ea6d1e31646c32829f66e1cb76fa391ecf7c8bcf75c4b1da493452c8327ac6a"
connect "vcs_mix_ea8f778ad58bcadea7b1cdbe", "left", "vcs_mix_a1101bc84507692ee94bc59b", "p_360f84035942243c6a36537a"
connect "vcs_mix_ea8f778ad58bcadea7b1cdbe", "right", "vcs_mix_a1101bc84507692ee94bc59b", "p_27042f4e6eca7d0b2a7ee402"
chnset 0.34999999999999998, "__vcs_perf_11f5b2f16c932098b813bf494cc179d2a6c2b5ffc2cae8215f2a2c649a2398ce"
chnset 750, "__vcs_perf_d7fe6dbc40f745fa2ebb425978478cccc75107a1bfbf7372aadf89cd2d5f8212"
chnset 146, "__vcs_perf_bc13c0f2e9148bde3f304c4c3d777f152e9fc0aa8708faea180675cabb65689c"
connect "vcs_mix_d34edde64f840c3e012a27ce", "left", "vcs_mix_bc93846608190ff6ad62067d", "p_360f84035942243c6a36537a"
connect "vcs_mix_d34edde64f840c3e012a27ce", "right", "vcs_mix_bc93846608190ff6ad62067d", "p_27042f4e6eca7d0b2a7ee402"
chnset 0.5, "__vcs_perf_3ba4190670191f5efc37807a373574ac10580cbd8ac86707b3d9cbf3001b9f08"
chnset 0.59999999999999998, "__vcs_perf_7fedd3a61bb49a7dbc06f326d80cd33c8efe6b7380a8e12d647f2d80fb36d7bd"
chnset 0.31384320804945265, "__vcs_perf_220c0ce25a815ed7f08a33c0404eb0757ee05b8883542657ae284620b4a72ab0"
chnset 0.99816993743475646, "__vcs_perf_e8f80352da5b85b4952d78e8128f4142dd5d3096ff3607de2a34c15a46432b21"
chnset 0.04161542039558621, "__vcs_perf_9a5fe5256d28f8be036cab05f7276a4cafe9b48a3f6761c715b1dbb55123c8cf"
connect "vcs_mix_5ca45ad3dd6e73c9a32faa4a", "left", "vcs_mix_9ebe6268ed7dcbd3a68eb58b", "p_360f84035942243c6a36537a"
connect "vcs_mix_5ca45ad3dd6e73c9a32faa4a", "right", "vcs_mix_9ebe6268ed7dcbd3a68eb58b", "p_27042f4e6eca7d0b2a7ee402"
connect "vcs_mix_db43201e41e7c82fff0f4afc", "left", "vcs_mix_eb31e675d375b0200b94afdf", "p_360f84035942243c6a36537a"
connect "vcs_mix_db43201e41e7c82fff0f4afc", "right", "vcs_mix_eb31e675d375b0200b94afdf", "p_27042f4e6eca7d0b2a7ee402"
chnset 0.89168199026025829, "__vcs_perf_a34338b704d6922d8fe8c6a46fc36a3e51d31f48b6e2d8464f405934ab9ef455"
chnset 1.9615542787761888, "__vcs_perf_e5c06e1e8f6371b9f2135f6036651cdd08d59dfc196c05af6a76624e05034732"
connect "vcs_mix_64f69623e2b6b90406304ff1", "left", "vcs_mix_b6b0d23858a7c7ab2ec02e72", "p_360f84035942243c6a36537a"
connect "vcs_mix_64f69623e2b6b90406304ff1", "right", "vcs_mix_b6b0d23858a7c7ab2ec02e72", "p_27042f4e6eca7d0b2a7ee402"
connect "vcs_mix_63254fa67083d5eed1f09ece", "__vcs_direct_e0ee8bb50685e05fa0f47ed0_left", "vcs_mix_0644eeee2942927583ef32ed", "p_2336acbd28828ab05deafe52"
connect "vcs_mix_63254fa67083d5eed1f09ece", "__vcs_direct_e0ee8bb50685e05fa0f47ed0_right", "vcs_mix_0644eeee2942927583ef32ed", "p_2a250433534f9aea9d512171"
connect "vcs_mix_f616c599d1394aedcbebf807", "pre_p_360f84035942243c6a36537a", "vcs_mix_a6f155646994ebd8a6357ffe", "pre"
connect "vcs_mix_f616c599d1394aedcbebf807", "post_p_360f84035942243c6a36537a", "vcs_mix_a6f155646994ebd8a6357ffe", "post"
connect "vcs_mix_a6f155646994ebd8a6357ffe", "out", "vcs_mix_5ca45ad3dd6e73c9a32faa4a", "left"
connect "vcs_mix_f616c599d1394aedcbebf807", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_d161a913d4f386c34b22a475", "pre"
connect "vcs_mix_f616c599d1394aedcbebf807", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_d161a913d4f386c34b22a475", "post"
connect "vcs_mix_d161a913d4f386c34b22a475", "out", "vcs_mix_5ca45ad3dd6e73c9a32faa4a", "right"
connect "vcs_mix_4cbc36c24ee222c3b14b97a7", "pre_p_360f84035942243c6a36537a", "vcs_mix_b028d078a3f89d56e69cda7c", "pre"
connect "vcs_mix_4cbc36c24ee222c3b14b97a7", "post_p_360f84035942243c6a36537a", "vcs_mix_b028d078a3f89d56e69cda7c", "post"
connect "vcs_mix_b028d078a3f89d56e69cda7c", "out", "vcs_mix_5ca45ad3dd6e73c9a32faa4a", "left"
connect "vcs_mix_4cbc36c24ee222c3b14b97a7", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_b8f7e60a3f22795d41848b1a", "pre"
connect "vcs_mix_4cbc36c24ee222c3b14b97a7", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_b8f7e60a3f22795d41848b1a", "post"
connect "vcs_mix_b8f7e60a3f22795d41848b1a", "out", "vcs_mix_5ca45ad3dd6e73c9a32faa4a", "right"
connect "vcs_mix_09c877bcef3d1b63094e6c61", "pre_p_360f84035942243c6a36537a", "vcs_mix_7ef3e3a053f24f231d201d43", "pre"
connect "vcs_mix_09c877bcef3d1b63094e6c61", "post_p_360f84035942243c6a36537a", "vcs_mix_7ef3e3a053f24f231d201d43", "post"
connect "vcs_mix_7ef3e3a053f24f231d201d43", "out", "vcs_mix_5ca45ad3dd6e73c9a32faa4a", "left"
connect "vcs_mix_09c877bcef3d1b63094e6c61", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_893edd60eb17de09ec98b1be", "pre"
connect "vcs_mix_09c877bcef3d1b63094e6c61", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_893edd60eb17de09ec98b1be", "post"
connect "vcs_mix_893edd60eb17de09ec98b1be", "out", "vcs_mix_5ca45ad3dd6e73c9a32faa4a", "right"
connect "vcs_mix_41f59d49bae86a0bb110a8a1", "pre_p_360f84035942243c6a36537a", "vcs_mix_eb05476ab8a7bca004e6aa15", "pre"
connect "vcs_mix_41f59d49bae86a0bb110a8a1", "post_p_360f84035942243c6a36537a", "vcs_mix_eb05476ab8a7bca004e6aa15", "post"
connect "vcs_mix_eb05476ab8a7bca004e6aa15", "out", "vcs_mix_5ca45ad3dd6e73c9a32faa4a", "left"
connect "vcs_mix_41f59d49bae86a0bb110a8a1", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_5ac8bd6ec7cab5b3e43b9b28", "pre"
connect "vcs_mix_41f59d49bae86a0bb110a8a1", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_5ac8bd6ec7cab5b3e43b9b28", "post"
connect "vcs_mix_5ac8bd6ec7cab5b3e43b9b28", "out", "vcs_mix_5ca45ad3dd6e73c9a32faa4a", "right"
connect "vcs_mix_9152adbd4f9979234fa00f60", "pre_p_360f84035942243c6a36537a", "vcs_mix_98059306e38eda156aa00315", "pre"
connect "vcs_mix_9152adbd4f9979234fa00f60", "post_p_360f84035942243c6a36537a", "vcs_mix_98059306e38eda156aa00315", "post"
connect "vcs_mix_98059306e38eda156aa00315", "out", "vcs_mix_5ca45ad3dd6e73c9a32faa4a", "left"
connect "vcs_mix_9152adbd4f9979234fa00f60", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_76dac9c487deb7fc5fc7cad2", "pre"
connect "vcs_mix_9152adbd4f9979234fa00f60", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_76dac9c487deb7fc5fc7cad2", "post"
connect "vcs_mix_76dac9c487deb7fc5fc7cad2", "out", "vcs_mix_5ca45ad3dd6e73c9a32faa4a", "right"
connect "vcs_mix_899f076410de4fc4acd8fdd6", "pre_p_360f84035942243c6a36537a", "vcs_mix_2c6f8f01b3386940969a24fa", "pre"
connect "vcs_mix_899f076410de4fc4acd8fdd6", "post_p_360f84035942243c6a36537a", "vcs_mix_2c6f8f01b3386940969a24fa", "post"
connect "vcs_mix_2c6f8f01b3386940969a24fa", "out", "vcs_mix_5ca45ad3dd6e73c9a32faa4a", "left"
connect "vcs_mix_899f076410de4fc4acd8fdd6", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_118e05d62b2b5f15b84d4c2b", "pre"
connect "vcs_mix_899f076410de4fc4acd8fdd6", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_118e05d62b2b5f15b84d4c2b", "post"
connect "vcs_mix_118e05d62b2b5f15b84d4c2b", "out", "vcs_mix_5ca45ad3dd6e73c9a32faa4a", "right"
connect "vcs_mix_8929c5bcc40fd958387d739d", "pre_p_360f84035942243c6a36537a", "vcs_mix_471af3743ff16a0d8f72f5ab", "pre"
connect "vcs_mix_8929c5bcc40fd958387d739d", "post_p_360f84035942243c6a36537a", "vcs_mix_471af3743ff16a0d8f72f5ab", "post"
connect "vcs_mix_471af3743ff16a0d8f72f5ab", "out", "vcs_mix_5ca45ad3dd6e73c9a32faa4a", "left"
connect "vcs_mix_8929c5bcc40fd958387d739d", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_4593d190d6d07a644767f4ca", "pre"
connect "vcs_mix_8929c5bcc40fd958387d739d", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_4593d190d6d07a644767f4ca", "post"
connect "vcs_mix_4593d190d6d07a644767f4ca", "out", "vcs_mix_5ca45ad3dd6e73c9a32faa4a", "right"
connect "vcs_mix_a1101bc84507692ee94bc59b", "pre_p_360f84035942243c6a36537a", "vcs_mix_7d7cfc5f15191e0ebf542d3d", "pre"
connect "vcs_mix_a1101bc84507692ee94bc59b", "post_p_360f84035942243c6a36537a", "vcs_mix_7d7cfc5f15191e0ebf542d3d", "post"
connect "vcs_mix_7d7cfc5f15191e0ebf542d3d", "out", "vcs_mix_5ca45ad3dd6e73c9a32faa4a", "left"
connect "vcs_mix_a1101bc84507692ee94bc59b", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_1ff035113f22abf03b680ea5", "pre"
connect "vcs_mix_a1101bc84507692ee94bc59b", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_1ff035113f22abf03b680ea5", "post"
connect "vcs_mix_1ff035113f22abf03b680ea5", "out", "vcs_mix_5ca45ad3dd6e73c9a32faa4a", "right"
connect "vcs_mix_bc93846608190ff6ad62067d", "pre_p_360f84035942243c6a36537a", "vcs_mix_a41ba115108d7b5d9eac9b6d", "pre"
connect "vcs_mix_bc93846608190ff6ad62067d", "post_p_360f84035942243c6a36537a", "vcs_mix_a41ba115108d7b5d9eac9b6d", "post"
connect "vcs_mix_a41ba115108d7b5d9eac9b6d", "out", "vcs_mix_5ca45ad3dd6e73c9a32faa4a", "left"
connect "vcs_mix_bc93846608190ff6ad62067d", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_62ca969d250ff30eb88781ec", "pre"
connect "vcs_mix_bc93846608190ff6ad62067d", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_62ca969d250ff30eb88781ec", "post"
connect "vcs_mix_62ca969d250ff30eb88781ec", "out", "vcs_mix_5ca45ad3dd6e73c9a32faa4a", "right"
connect "vcs_mix_ac1227af2c1ee2726806c2a4", "pre_p_360f84035942243c6a36537a", "vcs_mix_68ddc69c251efd7a9ba04c5a", "pre"
connect "vcs_mix_ac1227af2c1ee2726806c2a4", "post_p_360f84035942243c6a36537a", "vcs_mix_68ddc69c251efd7a9ba04c5a", "post"
connect "vcs_mix_68ddc69c251efd7a9ba04c5a", "out", "vcs_mix_5ca45ad3dd6e73c9a32faa4a", "left"
connect "vcs_mix_ac1227af2c1ee2726806c2a4", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_52e931c54fe8d60a5d931460", "pre"
connect "vcs_mix_ac1227af2c1ee2726806c2a4", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_52e931c54fe8d60a5d931460", "post"
connect "vcs_mix_52e931c54fe8d60a5d931460", "out", "vcs_mix_5ca45ad3dd6e73c9a32faa4a", "right"
connect "vcs_mix_9ebe6268ed7dcbd3a68eb58b", "pre_p_360f84035942243c6a36537a", "vcs_mix_70d35df948aaad0ebb528d8d", "pre"
connect "vcs_mix_9ebe6268ed7dcbd3a68eb58b", "post_p_360f84035942243c6a36537a", "vcs_mix_70d35df948aaad0ebb528d8d", "post"
connect "vcs_mix_70d35df948aaad0ebb528d8d", "out", "vcs_mix_63254fa67083d5eed1f09ece", "left"
connect "vcs_mix_9ebe6268ed7dcbd3a68eb58b", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_7ce7413b69a06da8545196c6", "pre"
connect "vcs_mix_9ebe6268ed7dcbd3a68eb58b", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_7ce7413b69a06da8545196c6", "post"
connect "vcs_mix_7ce7413b69a06da8545196c6", "out", "vcs_mix_63254fa67083d5eed1f09ece", "right"
connect "vcs_mix_eb31e675d375b0200b94afdf", "pre_p_360f84035942243c6a36537a", "vcs_mix_063efbfc5b85c25fae777919", "pre"
connect "vcs_mix_eb31e675d375b0200b94afdf", "post_p_360f84035942243c6a36537a", "vcs_mix_063efbfc5b85c25fae777919", "post"
connect "vcs_mix_063efbfc5b85c25fae777919", "out", "vcs_mix_5ca45ad3dd6e73c9a32faa4a", "left"
connect "vcs_mix_eb31e675d375b0200b94afdf", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_b971bb40cf335c3d9f2398ba", "pre"
connect "vcs_mix_eb31e675d375b0200b94afdf", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_b971bb40cf335c3d9f2398ba", "post"
connect "vcs_mix_b971bb40cf335c3d9f2398ba", "out", "vcs_mix_5ca45ad3dd6e73c9a32faa4a", "right"
connect "vcs_mix_b6b0d23858a7c7ab2ec02e72", "pre_p_360f84035942243c6a36537a", "vcs_mix_1d7fea538bc1ccd2882951fb", "pre"
connect "vcs_mix_b6b0d23858a7c7ab2ec02e72", "post_p_360f84035942243c6a36537a", "vcs_mix_1d7fea538bc1ccd2882951fb", "post"
connect "vcs_mix_1d7fea538bc1ccd2882951fb", "out", "vcs_mix_5ca45ad3dd6e73c9a32faa4a", "left"
connect "vcs_mix_b6b0d23858a7c7ab2ec02e72", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_4385eae94f347b60ff1a523f", "pre"
connect "vcs_mix_b6b0d23858a7c7ab2ec02e72", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_4385eae94f347b60ff1a523f", "post"
connect "vcs_mix_4385eae94f347b60ff1a523f", "out", "vcs_mix_5ca45ad3dd6e73c9a32faa4a", "right"
connect "vcs_mix_b99b7ec8f15ac9e237849672", "pre_p_360f84035942243c6a36537a", "vcs_mix_d41a6d68633478f7dc26eb5b", "pre"
connect "vcs_mix_b99b7ec8f15ac9e237849672", "post_p_360f84035942243c6a36537a", "vcs_mix_d41a6d68633478f7dc26eb5b", "post"
connect "vcs_mix_d41a6d68633478f7dc26eb5b", "out", "vcs_mix_5ca45ad3dd6e73c9a32faa4a", "left"
connect "vcs_mix_b99b7ec8f15ac9e237849672", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_56d53795eac571187cf74c65", "pre"
connect "vcs_mix_b99b7ec8f15ac9e237849672", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_56d53795eac571187cf74c65", "post"
connect "vcs_mix_56d53795eac571187cf74c65", "out", "vcs_mix_5ca45ad3dd6e73c9a32faa4a", "right"
connect "vcs_mix_2d3abc7194d9a93abbb3d71b", "pre_p_360f84035942243c6a36537a", "vcs_mix_fe09165720a17029571c7608", "pre"
connect "vcs_mix_2d3abc7194d9a93abbb3d71b", "post_p_360f84035942243c6a36537a", "vcs_mix_fe09165720a17029571c7608", "post"
connect "vcs_mix_fe09165720a17029571c7608", "out", "vcs_mix_46adb534d240b196161f2d0c", "left"
connect "vcs_mix_2d3abc7194d9a93abbb3d71b", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_066668fadb7f0bcbc9d6a4f8", "pre"
connect "vcs_mix_2d3abc7194d9a93abbb3d71b", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_066668fadb7f0bcbc9d6a4f8", "post"
connect "vcs_mix_066668fadb7f0bcbc9d6a4f8", "out", "vcs_mix_46adb534d240b196161f2d0c", "right"
connect "vcs_mix_f616c599d1394aedcbebf807", "pre_p_360f84035942243c6a36537a", "vcs_mix_32f21102db8a4718e2242c15", "pre"
connect "vcs_mix_f616c599d1394aedcbebf807", "post_p_360f84035942243c6a36537a", "vcs_mix_32f21102db8a4718e2242c15", "post"
connect "vcs_mix_32f21102db8a4718e2242c15", "out", "vcs_mix_46adb534d240b196161f2d0c", "left"
connect "vcs_mix_f616c599d1394aedcbebf807", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_b5230e80783cf5999155aef4", "pre"
connect "vcs_mix_f616c599d1394aedcbebf807", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_b5230e80783cf5999155aef4", "post"
connect "vcs_mix_b5230e80783cf5999155aef4", "out", "vcs_mix_46adb534d240b196161f2d0c", "right"
connect "vcs_mix_4cbc36c24ee222c3b14b97a7", "pre_p_360f84035942243c6a36537a", "vcs_mix_27bb71f669b265bcd4c09e8f", "pre"
connect "vcs_mix_4cbc36c24ee222c3b14b97a7", "post_p_360f84035942243c6a36537a", "vcs_mix_27bb71f669b265bcd4c09e8f", "post"
connect "vcs_mix_27bb71f669b265bcd4c09e8f", "out", "vcs_mix_46adb534d240b196161f2d0c", "left"
connect "vcs_mix_4cbc36c24ee222c3b14b97a7", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_c2f6d2e7f6c31aeb6e0595d9", "pre"
connect "vcs_mix_4cbc36c24ee222c3b14b97a7", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_c2f6d2e7f6c31aeb6e0595d9", "post"
connect "vcs_mix_c2f6d2e7f6c31aeb6e0595d9", "out", "vcs_mix_46adb534d240b196161f2d0c", "right"
connect "vcs_mix_09c877bcef3d1b63094e6c61", "pre_p_360f84035942243c6a36537a", "vcs_mix_d934fafb9df283be15ecf22c", "pre"
connect "vcs_mix_09c877bcef3d1b63094e6c61", "post_p_360f84035942243c6a36537a", "vcs_mix_d934fafb9df283be15ecf22c", "post"
connect "vcs_mix_d934fafb9df283be15ecf22c", "out", "vcs_mix_46adb534d240b196161f2d0c", "left"
connect "vcs_mix_09c877bcef3d1b63094e6c61", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_3cfa38d0bf9209936805eef8", "pre"
connect "vcs_mix_09c877bcef3d1b63094e6c61", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_3cfa38d0bf9209936805eef8", "post"
connect "vcs_mix_3cfa38d0bf9209936805eef8", "out", "vcs_mix_46adb534d240b196161f2d0c", "right"
connect "vcs_mix_41f59d49bae86a0bb110a8a1", "pre_p_360f84035942243c6a36537a", "vcs_mix_7afadbee9b0c3fa70e976250", "pre"
connect "vcs_mix_41f59d49bae86a0bb110a8a1", "post_p_360f84035942243c6a36537a", "vcs_mix_7afadbee9b0c3fa70e976250", "post"
connect "vcs_mix_7afadbee9b0c3fa70e976250", "out", "vcs_mix_46adb534d240b196161f2d0c", "left"
connect "vcs_mix_41f59d49bae86a0bb110a8a1", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_8cc4c5a31fca54fff161bbd8", "pre"
connect "vcs_mix_41f59d49bae86a0bb110a8a1", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_8cc4c5a31fca54fff161bbd8", "post"
connect "vcs_mix_8cc4c5a31fca54fff161bbd8", "out", "vcs_mix_46adb534d240b196161f2d0c", "right"
connect "vcs_mix_9152adbd4f9979234fa00f60", "pre_p_360f84035942243c6a36537a", "vcs_mix_bf40d7bbfd0bc17d72854104", "pre"
connect "vcs_mix_9152adbd4f9979234fa00f60", "post_p_360f84035942243c6a36537a", "vcs_mix_bf40d7bbfd0bc17d72854104", "post"
connect "vcs_mix_bf40d7bbfd0bc17d72854104", "out", "vcs_mix_46adb534d240b196161f2d0c", "left"
connect "vcs_mix_9152adbd4f9979234fa00f60", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_196fd89531c3ff1fbc6d14e0", "pre"
connect "vcs_mix_9152adbd4f9979234fa00f60", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_196fd89531c3ff1fbc6d14e0", "post"
connect "vcs_mix_196fd89531c3ff1fbc6d14e0", "out", "vcs_mix_46adb534d240b196161f2d0c", "right"
connect "vcs_mix_899f076410de4fc4acd8fdd6", "pre_p_360f84035942243c6a36537a", "vcs_mix_8e14ded79ce68847b3e66c04", "pre"
connect "vcs_mix_899f076410de4fc4acd8fdd6", "post_p_360f84035942243c6a36537a", "vcs_mix_8e14ded79ce68847b3e66c04", "post"
connect "vcs_mix_8e14ded79ce68847b3e66c04", "out", "vcs_mix_46adb534d240b196161f2d0c", "left"
connect "vcs_mix_899f076410de4fc4acd8fdd6", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_f2b20a5ef277f1d1849b8d86", "pre"
connect "vcs_mix_899f076410de4fc4acd8fdd6", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_f2b20a5ef277f1d1849b8d86", "post"
connect "vcs_mix_f2b20a5ef277f1d1849b8d86", "out", "vcs_mix_46adb534d240b196161f2d0c", "right"
connect "vcs_mix_b99b7ec8f15ac9e237849672", "pre_p_360f84035942243c6a36537a", "vcs_mix_6c2f021cb2ab44bda010649b", "pre"
connect "vcs_mix_b99b7ec8f15ac9e237849672", "post_p_360f84035942243c6a36537a", "vcs_mix_6c2f021cb2ab44bda010649b", "post"
connect "vcs_mix_6c2f021cb2ab44bda010649b", "out", "vcs_mix_46adb534d240b196161f2d0c", "left"
connect "vcs_mix_b99b7ec8f15ac9e237849672", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_e690308b9ccd231763633b4d", "pre"
connect "vcs_mix_b99b7ec8f15ac9e237849672", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_e690308b9ccd231763633b4d", "post"
connect "vcs_mix_e690308b9ccd231763633b4d", "out", "vcs_mix_46adb534d240b196161f2d0c", "right"
connect "vcs_mix_8929c5bcc40fd958387d739d", "pre_p_360f84035942243c6a36537a", "vcs_mix_3fa1361afef1b5caad87f11b", "pre"
connect "vcs_mix_8929c5bcc40fd958387d739d", "post_p_360f84035942243c6a36537a", "vcs_mix_3fa1361afef1b5caad87f11b", "post"
connect "vcs_mix_3fa1361afef1b5caad87f11b", "out", "vcs_mix_46adb534d240b196161f2d0c", "left"
connect "vcs_mix_8929c5bcc40fd958387d739d", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_03cba347a182a33969acb2cb", "pre"
connect "vcs_mix_8929c5bcc40fd958387d739d", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_03cba347a182a33969acb2cb", "post"
connect "vcs_mix_03cba347a182a33969acb2cb", "out", "vcs_mix_46adb534d240b196161f2d0c", "right"
connect "vcs_mix_a1101bc84507692ee94bc59b", "pre_p_360f84035942243c6a36537a", "vcs_mix_77d81c60650bb510029db407", "pre"
connect "vcs_mix_a1101bc84507692ee94bc59b", "post_p_360f84035942243c6a36537a", "vcs_mix_77d81c60650bb510029db407", "post"
connect "vcs_mix_77d81c60650bb510029db407", "out", "vcs_mix_46adb534d240b196161f2d0c", "left"
connect "vcs_mix_a1101bc84507692ee94bc59b", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_80d8f9d47004759a0bb61786", "pre"
connect "vcs_mix_a1101bc84507692ee94bc59b", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_80d8f9d47004759a0bb61786", "post"
connect "vcs_mix_80d8f9d47004759a0bb61786", "out", "vcs_mix_46adb534d240b196161f2d0c", "right"
connect "vcs_mix_bc93846608190ff6ad62067d", "pre_p_360f84035942243c6a36537a", "vcs_mix_d6b7b1e4da4b20cc5d2c5e21", "pre"
connect "vcs_mix_bc93846608190ff6ad62067d", "post_p_360f84035942243c6a36537a", "vcs_mix_d6b7b1e4da4b20cc5d2c5e21", "post"
connect "vcs_mix_d6b7b1e4da4b20cc5d2c5e21", "out", "vcs_mix_46adb534d240b196161f2d0c", "left"
connect "vcs_mix_bc93846608190ff6ad62067d", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_a172ff8ac91c52ba9f6593d3", "pre"
connect "vcs_mix_bc93846608190ff6ad62067d", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_a172ff8ac91c52ba9f6593d3", "post"
connect "vcs_mix_a172ff8ac91c52ba9f6593d3", "out", "vcs_mix_46adb534d240b196161f2d0c", "right"
connect "vcs_mix_eb31e675d375b0200b94afdf", "pre_p_360f84035942243c6a36537a", "vcs_mix_9ce45dce1e80860220376330", "pre"
connect "vcs_mix_eb31e675d375b0200b94afdf", "post_p_360f84035942243c6a36537a", "vcs_mix_9ce45dce1e80860220376330", "post"
connect "vcs_mix_9ce45dce1e80860220376330", "out", "vcs_mix_46adb534d240b196161f2d0c", "left"
connect "vcs_mix_eb31e675d375b0200b94afdf", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_0fa3df020621c82abf16382c", "pre"
connect "vcs_mix_eb31e675d375b0200b94afdf", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_0fa3df020621c82abf16382c", "post"
connect "vcs_mix_0fa3df020621c82abf16382c", "out", "vcs_mix_46adb534d240b196161f2d0c", "right"
connect "vcs_mix_b6b0d23858a7c7ab2ec02e72", "pre_p_360f84035942243c6a36537a", "vcs_mix_6ce8c161a4881ef23d7228db", "pre"
connect "vcs_mix_b6b0d23858a7c7ab2ec02e72", "post_p_360f84035942243c6a36537a", "vcs_mix_6ce8c161a4881ef23d7228db", "post"
connect "vcs_mix_6ce8c161a4881ef23d7228db", "out", "vcs_mix_46adb534d240b196161f2d0c", "left"
connect "vcs_mix_b6b0d23858a7c7ab2ec02e72", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_e23d5820464c82d1c3f1ecb6", "pre"
connect "vcs_mix_b6b0d23858a7c7ab2ec02e72", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_e23d5820464c82d1c3f1ecb6", "post"
connect "vcs_mix_e23d5820464c82d1c3f1ecb6", "out", "vcs_mix_46adb534d240b196161f2d0c", "right"
connect "vcs_mix_ac1227af2c1ee2726806c2a4", "pre_p_360f84035942243c6a36537a", "vcs_mix_7b7fa115d61e566d4af5a143", "pre"
connect "vcs_mix_ac1227af2c1ee2726806c2a4", "post_p_360f84035942243c6a36537a", "vcs_mix_7b7fa115d61e566d4af5a143", "post"
connect "vcs_mix_7b7fa115d61e566d4af5a143", "out", "vcs_mix_5ca45ad3dd6e73c9a32faa4a", "left"
connect "vcs_mix_ac1227af2c1ee2726806c2a4", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_4d7010d90a3625606ead2505", "pre"
connect "vcs_mix_ac1227af2c1ee2726806c2a4", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_4d7010d90a3625606ead2505", "post"
connect "vcs_mix_4d7010d90a3625606ead2505", "out", "vcs_mix_5ca45ad3dd6e73c9a32faa4a", "right"
connect "vcs_mix_2d3abc7194d9a93abbb3d71b", "pre_p_360f84035942243c6a36537a", "vcs_mix_27879694f89d94168f055bd5", "pre"
connect "vcs_mix_2d3abc7194d9a93abbb3d71b", "post_p_360f84035942243c6a36537a", "vcs_mix_27879694f89d94168f055bd5", "post"
connect "vcs_mix_27879694f89d94168f055bd5", "out", "vcs_mix_5ca45ad3dd6e73c9a32faa4a", "left"
connect "vcs_mix_2d3abc7194d9a93abbb3d71b", "pre_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_cfa31b751979e1caad0a51d1", "pre"
connect "vcs_mix_2d3abc7194d9a93abbb3d71b", "post_p_27042f4e6eca7d0b2a7ee402", "vcs_mix_cfa31b751979e1caad0a51d1", "post"
connect "vcs_mix_cfa31b751979e1caad0a51d1", "out", "vcs_mix_5ca45ad3dd6e73c9a32faa4a", "right"
connect "vcs_mix_0644eeee2942927583ef32ed", "pre_p_2336acbd28828ab05deafe52", "vcs_mix_ec8b1641891924a3e102560a", "pre"
connect "vcs_mix_0644eeee2942927583ef32ed", "post_p_2336acbd28828ab05deafe52", "vcs_mix_ec8b1641891924a3e102560a", "post"
connect "vcs_mix_ec8b1641891924a3e102560a", "out", "vcs_mix_9cea1be1f8255375a6cf7b93", "left"
connect "vcs_mix_0644eeee2942927583ef32ed", "pre_p_2a250433534f9aea9d512171", "vcs_mix_5f16b779ade2ce91f307ff35", "pre"
connect "vcs_mix_0644eeee2942927583ef32ed", "post_p_2a250433534f9aea9d512171", "vcs_mix_5f16b779ade2ce91f307ff35", "post"
connect "vcs_mix_5f16b779ade2ce91f307ff35", "out", "vcs_mix_9cea1be1f8255375a6cf7b93", "right"
; Continuous patches and mixer stages start with alwayson; note instruments start from MIDI/score events.
alwayson "vcs_mix_9152adbd4f9979234fa00f60"
alwayson "vcs_mix_bf40d7bbfd0bc17d72854104"
alwayson "vcs_mix_76dac9c487deb7fc5fc7cad2"
alwayson "vcs_mix_196fd89531c3ff1fbc6d14e0"
alwayson "vcs_mix_98059306e38eda156aa00315"
alwayson "vcs_mix_41f59d49bae86a0bb110a8a1"
alwayson "vcs_mix_7afadbee9b0c3fa70e976250"
alwayson "vcs_mix_eb05476ab8a7bca004e6aa15"
alwayson "vcs_mix_8cc4c5a31fca54fff161bbd8"
alwayson "vcs_mix_5ac8bd6ec7cab5b3e43b9b28"
alwayson "vcs_mix_b6b0d23858a7c7ab2ec02e72"
alwayson "vcs_mix_6ce8c161a4881ef23d7228db"
alwayson "vcs_mix_4385eae94f347b60ff1a523f"
alwayson "vcs_mix_e23d5820464c82d1c3f1ecb6"
alwayson "vcs_mix_1d7fea538bc1ccd2882951fb"
alwayson "vcs_mix_8929c5bcc40fd958387d739d"
alwayson "vcs_mix_471af3743ff16a0d8f72f5ab"
alwayson "vcs_mix_03cba347a182a33969acb2cb"
alwayson "vcs_mix_3fa1361afef1b5caad87f11b"
alwayson "vcs_mix_4593d190d6d07a644767f4ca"
alwayson "vcs_mix_f616c599d1394aedcbebf807"
alwayson "vcs_mix_d161a913d4f386c34b22a475"
alwayson "vcs_mix_32f21102db8a4718e2242c15"
alwayson "vcs_mix_b5230e80783cf5999155aef4"
alwayson "vcs_mix_a6f155646994ebd8a6357ffe"
alwayson "vcs_mix_899f076410de4fc4acd8fdd6"
alwayson "vcs_mix_2c6f8f01b3386940969a24fa"
alwayson "vcs_mix_f2b20a5ef277f1d1849b8d86"
alwayson "vcs_mix_8e14ded79ce68847b3e66c04"
alwayson "vcs_mix_118e05d62b2b5f15b84d4c2b"
alwayson "vcs_mix_09c877bcef3d1b63094e6c61"
alwayson "vcs_mix_7ef3e3a053f24f231d201d43"
alwayson "vcs_mix_d934fafb9df283be15ecf22c"
alwayson "vcs_mix_893edd60eb17de09ec98b1be"
alwayson "vcs_mix_3cfa38d0bf9209936805eef8"
alwayson "vcs_mix_a1101bc84507692ee94bc59b"
alwayson "vcs_mix_77d81c60650bb510029db407"
alwayson "vcs_mix_1ff035113f22abf03b680ea5"
alwayson "vcs_mix_80d8f9d47004759a0bb61786"
alwayson "vcs_mix_7d7cfc5f15191e0ebf542d3d"
alwayson "vcs_mix_bc93846608190ff6ad62067d"
alwayson "vcs_mix_a172ff8ac91c52ba9f6593d3"
alwayson "vcs_mix_d6b7b1e4da4b20cc5d2c5e21"
alwayson "vcs_mix_a41ba115108d7b5d9eac9b6d"
alwayson "vcs_mix_62ca969d250ff30eb88781ec"
alwayson "vcs_mix_eb31e675d375b0200b94afdf"
alwayson "vcs_mix_b971bb40cf335c3d9f2398ba"
alwayson "vcs_mix_9ce45dce1e80860220376330"
alwayson "vcs_mix_063efbfc5b85c25fae777919"
alwayson "vcs_mix_0fa3df020621c82abf16382c"
alwayson "vcs_mix_b99b7ec8f15ac9e237849672"
alwayson "vcs_mix_6c2f021cb2ab44bda010649b"
alwayson "vcs_mix_e690308b9ccd231763633b4d"
alwayson "vcs_mix_56d53795eac571187cf74c65"
alwayson "vcs_mix_d41a6d68633478f7dc26eb5b"
alwayson "vcs_mix_2d3abc7194d9a93abbb3d71b"
alwayson "vcs_mix_27879694f89d94168f055bd5"
alwayson "vcs_mix_066668fadb7f0bcbc9d6a4f8"
alwayson "vcs_mix_cfa31b751979e1caad0a51d1"
alwayson "vcs_mix_fe09165720a17029571c7608"
alwayson "vcs_mix_4cbc36c24ee222c3b14b97a7"
alwayson "vcs_mix_c2f6d2e7f6c31aeb6e0595d9"
alwayson "vcs_mix_b028d078a3f89d56e69cda7c"
alwayson "vcs_mix_b8f7e60a3f22795d41848b1a"
alwayson "vcs_mix_27bb71f669b265bcd4c09e8f"
alwayson "vcs_mix_46adb534d240b196161f2d0c"
alwayson "vcs_mix_ac1227af2c1ee2726806c2a4"
alwayson "vcs_mix_52e931c54fe8d60a5d931460"
alwayson "vcs_mix_4d7010d90a3625606ead2505"
alwayson "vcs_mix_7b7fa115d61e566d4af5a143"
alwayson "vcs_mix_68ddc69c251efd7a9ba04c5a"
alwayson "vcs_mix_5ca45ad3dd6e73c9a32faa4a"
alwayson "vcs_mix_9ebe6268ed7dcbd3a68eb58b"
alwayson "vcs_mix_7ce7413b69a06da8545196c6"
alwayson "vcs_mix_70d35df948aaad0ebb528d8d"
alwayson "vcs_mix_63254fa67083d5eed1f09ece"
alwayson "vcs_mix_0644eeee2942927583ef32ed"
alwayson "vcs_mix_ec8b1641891924a3e102560a"
alwayson "vcs_mix_5f16b779ade2ce91f307ff35"
alwayson "vcs_mix_9cea1be1f8255375a6cf7b93"
; mixer stage patch:051948ac-ebf9-43ec-8bf3-df399a268365
; patch:f981a13d-f489-4515-812c-37ac6788869d name:Psy Rotor Bass channel:6 always_on:false
; instance:051948ac-ebf9-43ec-8bf3-df399a268365 csound:vcs_mix_2b0b4940c8fda27093d9a629
; description: Phase-reset saw for rolling psy bass. Tone is the floor of a 3500 Hz envelope sweep; mild saturation precedes the ladder filter. Suggested MIDI notes 28–52. Dry, velocity-sensitive, polyphonic. Three per-instance controls read on new notes. Route Stereo Output through the performance mixer to Master.
; trigger: MIDI channel 6 / score notes; score instrument number: 1
instr vcs_mix_2b0b4940c8fda27093d9a629
 i_vcs_internal_score_note_p4 = p4
 i_vcs_internal_score_velocity_p5 = p5
 ; node:env_attack_const opcode:const_i
 i_env_attack_const_iout_4 = 0.002
 ; node:env_release_const opcode:const_i
 i_env_release_const_iout_6 = 0.012
 ; node:env_sustain_const opcode:const_i
 i_env_sustain_const_iout_5 = 0
 ; node:pitch_cpsmidi opcode:cpsmidi
 i_pitch_cpsmidi_kfreq_1 = cpsmidinn(p4)
 i_rotor_decay_iout_7 chnget "__vcs_perf_e5a2205fb51bc7f1bbcf7fbd2f4848d07a4882c09dc4eb8956da0f7b4ea4cc65"
 i_rotor_drive_iout_9 chnget "__vcs_perf_5f450edcbb119082a939ab96be1f0489bcf304ea5a47e5d6cc98f22866142127"
 i_rotor_tone_iout_8 chnget "__vcs_perf_ae7b32f68e94eeb02e590b82954e33eff6515753518121b6f711785a2fb73f08"
 ; node:saw_gain opcode:const_k
 k_saw_gain_kout_3 = 0.65
 ; node:velocity_scale_const opcode:const_i
 i_velocity_scale_const_iout_2 = 1
 ; node:amp_madsr opcode:madsr
 k_amp_madsr_kenv_1 madsr i_env_attack_const_iout_4, i_rotor_decay_iout_7, i_env_sustain_const_iout_5, i_env_release_const_iout_6, 0, -1
 ; node:velocity_ampmidi opcode:ampmidi
 i_velocity_ampmidi_iamp_3 = ((p5 / 128) * (i_velocity_scale_const_iout_2))
 ; node:amp_velocity_envelope opcode:k_mul
 k_amp_velocity_envelope_kout_2 = (i_velocity_ampmidi_iamp_3) * (k_amp_madsr_kenv_1)
 ; node:saw_amp opcode:k_mul
 k_saw_amp_kout_4 = (k_amp_velocity_envelope_kout_2) * (k_saw_gain_kout_3)
 ; node:saw_vco2 opcode:vco2
 a_saw_vco2_asig_1 vco2 k_saw_amp_kout_4, i_pitch_cpsmidi_kfreq_1, 0, 0.5, 0, 0.5
 ; node:effect_1_distort1 opcode:distort1
 a_effect_1_distort1_aout_2 distort1 a_saw_vco2_asig_1, i_rotor_drive_iout_9, 0.42, 0, 0, 1
 ; node:effect_2_moogladder2 opcode:moogladder2
 a_effect_2_moogladder2_aout_3 moogladder2 a_effect_1_distort1_aout_2, (i_rotor_tone_iout_8 + ((3500 * k_amp_madsr_kenv_1) * k_amp_madsr_kenv_1)), 0.16
 ; node:output_pan2 opcode:pan2
 a_output_pan2_aleft_4, a_output_pan2_aright_5 pan2 (a_effect_2_moogladder2_aout_3 * 7), 0.5, 0
 ; node:output_left opcode:outleta
 outleta "left", a_output_pan2_aleft_4
 ; node:output_right opcode:outleta
 outleta "right", a_output_pan2_aright_5
endin

; mixer stage patch:05624905-6283-4138-ab16-f4161548d16b
; patch:f3922374-6038-4c76-bf75-f8bf1c2f8a30 name:Rubber Core FM Bass channel:5 always_on:false
; instance:05624905-6283-4138-ab16-f4161548d16b csound:vcs_mix_e95c8bf2b225fe1042e7bf0d
; description: One 1:2 FM pair plus a sine at the played fundamental. Growl fades with the envelope to a sustained rubbery body. Suggested MIDI notes 28–55. Dry, velocity-sensitive, polyphonic. Three per-instance controls read on new notes. Route Stereo Output through the performance mixer to Master.
; trigger: MIDI channel 5 / score notes; score instrument number: 2
instr vcs_mix_e95c8bf2b225fe1042e7bf0d
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
 i_rubber_decay_iout_9 chnget "__vcs_perf_6a44a20eb71ac04b8938beb71eda93af0cfc146c9d40082d38f97b8bbe5f355b"
 i_rubber_growl_iout_7 chnget "__vcs_perf_6f37f24154f8177a933b5c79c057261cf389bb018b98cca30a0b3c79e3fd42e9"
 i_rubber_tone_iout_8 chnget "__vcs_perf_67b23cec303a69c7dc858d8fb1d1f45410ba7f7a57b4057e8cb3fbcb46a58362"
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

; mixer stage patch:10663596-a11f-4ab9-a028-b61242369c74
; patch:2a24c93b-3606-47ea-8f88-5e71282cc747 name:TB303 style Bass channel:16 always_on:false
; instance:10663596-a11f-4ab9-a028-b61242369c74 csound:vcs_mix_64f69623e2b6b90406304ff1
; description: TB303 style bass with perf_controller settings for cutoff and resonance
; trigger: MIDI channel 16 / score notes; score instrument number: 3
instr vcs_mix_64f69623e2b6b90406304ff1
 i_vcs_internal_score_note_p4 = p4
 i_vcs_internal_score_velocity_p5 = p5
 ; node:2b50ffa3-34cd-4407-a785-fd20420f5686 opcode:const_i
 i_2b50ffa3_34cd_4407_a785_fd20420f5686_iout_4 = 0.01
 ; node:34ecf250-dc67-475f-9d09-66626a5e3e20 opcode:const_i
 i_34ecf250_dc67_475f_9d09_66626a5e3e20_iout_2 = 2
 ; node:485808e2-8411-49e1-81fd-4b53c270fcc7 opcode:const_i
 i_485808e2_8411_49e1_81fd_4b53c270fcc7_iout_7 = 0.1
 ; node:4c407031-c6dd-4cc6-9dc0-f01a0d63fd88 opcode:const_i
 i_4c407031_c6dd_4cc6_9dc0_f01a0d63fd88_iout_3 = 0.1
 ; node:537bd544-3d8d-44bf-b3c6-2bc09d6bc49e opcode:const_i
 i_537bd544_3d8d_44bf_b3c6_2bc09d6bc49e_iout_10 = 0.05
 i_66324eaf_44d6_4c75_a79a_5a349a24e4c8_iout_16 chnget "__vcs_perf_a34338b704d6922d8fe8c6a46fc36a3e51d31f48b6e2d8464f405934ab9ef455"
 ; node:69c806ed-dda8-4120-858f-c77df587156c opcode:const_i
 i_69c806ed_dda8_4120_858f_c77df587156c_iout_14 = 2
 ; node:a391889f-2377-4ef5-ae8e-51505cd2577e opcode:const_i
 i_a391889f_2377_4ef5_ae8e_51505cd2577e_iout_5 = 0.25
 ; node:a5a5980d-7f7f-458a-ba38-6567e513d6b8 opcode:const_i
 i_a5a5980d_7f7f_458a_ba38_6567e513d6b8_iout_8 = 0.5
 ; node:b6608f37-a64b-4e68-948e-6b6261a7d3b6 opcode:cpsmidi
 i_b6608f37_a64b_4e68_948e_6b6261a7d3b6_kfreq_1 = cpsmidinn(p4)
 ; node:bd40cc76-3325-4328-8e53-af78e0205166 opcode:const_i
 i_bd40cc76_3325_4328_8e53_af78e0205166_iout_12 = 0.2
 ; node:c17e5baf-a3a4-41b6-a13b-0530ff94cb6b opcode:const_i
 i_c17e5baf_a3a4_41b6_a13b_0530ff94cb6b_iout_6 = 0.1
 i_d345722f_1e35_4727_bbac_0315f4085d93_iout_15 chnget "__vcs_perf_e5c06e1e8f6371b9f2135f6036651cdd08d59dfc196c05af6a76624e05034732"
 ; node:d58cd0f3-ba10-47cb-8a65-002731974390 opcode:const_i
 i_d58cd0f3_ba10_47cb_8a65_002731974390_iout_11 = 0.2
 ; node:f5be9a43-ce4f-46bf-8d78-91ec832892c8 opcode:const_i
 i_f5be9a43_ce4f_46bf_8d78_91ec832892c8_iout_9 = 700
 ; node:0bcec43f-59e5-4015-af8c-5ddceb69ad44 opcode:ampmidi
 i_0bcec43f_59e5_4015_af8c_5ddceb69ad44_iamp_13 = ((p5 / 128) * (i_69c806ed_dda8_4120_858f_c77df587156c_iout_14))
 ; node:ed4ef39b-bdd4-4af0-9b7f-97a7485dc21c opcode:madsr
 k_ed4ef39b_bdd4_4af0_9b7f_97a7485dc21c_kenv_1 madsr i_2b50ffa3_34cd_4407_a785_fd20420f5686_iout_4, i_a391889f_2377_4ef5_ae8e_51505cd2577e_iout_5, i_c17e5baf_a3a4_41b6_a13b_0530ff94cb6b_iout_6, i_485808e2_8411_49e1_81fd_4b53c270fcc7_iout_7, 0, -1
 ; node:58aa53d7-1386-453d-b78b-66839a91d490 opcode:madsr
 k_58aa53d7_1386_453d_b78b_66839a91d490_kenv_2 madsr i_537bd544_3d8d_44bf_b3c6_2bc09d6bc49e_iout_10, i_d58cd0f3_ba10_47cb_8a65_002731974390_iout_11, i_bd40cc76_3325_4328_8e53_af78e0205166_iout_12, i_bd40cc76_3325_4328_8e53_af78e0205166_iout_12, 0, -1
 ; node:3e0a0932-4282-4cd6-93e7-24bc70074d45 opcode:vco
 a_3e0a0932_4282_4cd6_93e7_24bc70074d45_asig_1 vco k_ed4ef39b_bdd4_4af0_9b7f_97a7485dc21c_kenv_1, i_b6608f37_a64b_4e68_948e_6b6261a7d3b6_kfreq_1, i_34ecf250_dc67_475f_9d09_66626a5e3e20_iout_2, i_4c407031_c6dd_4cc6_9dc0_f01a0d63fd88_iout_3
 ; node:50dcb589-9ec3-481d-9dd0-499a60d40ef8 opcode:moogladder
 a_50dcb589_9ec3_481d_9dd0_499a60d40ef8_aout_4 moogladder a_3e0a0932_4282_4cd6_93e7_24bc70074d45_asig_1, (i_d345722f_1e35_4727_bbac_0315f4085d93_iout_15 * ((i_f5be9a43_ce4f_46bf_8d78_91ec832892c8_iout_9 + (((i_0bcec43f_59e5_4015_af8c_5ddceb69ad44_iamp_13 * k_58aa53d7_1386_453d_b78b_66839a91d490_kenv_2) * i_b6608f37_a64b_4e68_948e_6b6261a7d3b6_kfreq_1) / 15)))), i_66324eaf_44d6_4c75_a79a_5a349a24e4c8_iout_16
 ; node:48cfb005-1c41-4a6e-b536-b358506932dd opcode:pan2
 a_48cfb005_1c41_4a6e_b536_b358506932dd_aleft_2, a_48cfb005_1c41_4a6e_b536_b358506932dd_aright_3 pan2 a_50dcb589_9ec3_481d_9dd0_499a60d40ef8_aout_4, i_a5a5980d_7f7f_458a_ba38_6567e513d6b8_iout_8, 0
 ; node:68d96962-6aa9-40f2-854f-352410963f4f opcode:outleta
 outleta "left", a_48cfb005_1c41_4a6e_b536_b358506932dd_aleft_2
 ; node:f1f1b657-0e0c-4ee8-9921-650aee6a6770 opcode:outleta
 outleta "right", a_48cfb005_1c41_4a6e_b536_b358506932dd_aright_3
endin

; mixer stage patch:22da2642-cc40-4022-b247-6744a601b60f
; patch:73925e06-205f-4b24-9167-95421d557893 name:Event Horizon Riser channel:9 always_on:false
; instance:22da2642-cc40-4022-b247-6744a601b60f csound:vcs_mix_209b70460343c14b379319d6
; description: Hold a note for a rising FM/noise swell; release it into a diffuse echo and reverb cloud. Rise controls time to peak. MIDI 36–72. Built-in filtered echoes and reverb; no global FX needed. Velocity-sensitive, polyphonic, three per-instance controls read on new notes. Route Stereo Output through the mixer to Master.
; trigger: MIDI channel 9 / score notes; score instrument number: 4
instr vcs_mix_209b70460343c14b379319d6
 i_vcs_internal_score_note_p4 = p4
 i_vcs_internal_score_velocity_p5 = p5
 ; node:air_gain opcode:const_k
 k_air_gain_kout_5 = 0.13
 ; node:env_decay_const opcode:const_i
 i_env_decay_const_iout_4 = 0.3
 ; node:env_release_const opcode:const_i
 i_env_release_const_iout_6 = 0.18
 ; node:env_release_time_const opcode:const_i
 i_env_release_time_const_iout_7 = 0.18
 ; node:env_sustain_const opcode:const_i
 i_env_sustain_const_iout_5 = 0.85
 ; node:fx_tail_guard opcode:linsegr
 k_fx_tail_guard_kenv_10 linsegr 1, 0.001, 1, 7.2, 0
 i_horizon_rise_iout_8 chnget "__vcs_perf_168f161191dd9060edbd6989232fbc9285722e30e9c1579b62f5a708f6f01ee6"
 i_horizon_space_iout_10 chnget "__vcs_perf_12378f777cc4b5ed69e73b24569b3f520230899512ac5b4b49e678bb8e057fda"
 i_horizon_tension_iout_9 chnget "__vcs_perf_7f43542007417e472b80d4d4d24936130c8a88c35142a8d18732dff84cdb239b"
 ; node:orbit_pan_lfo opcode:lfo
 k_orbit_pan_lfo_kout_11 lfo 1, 0.37, 0
 ; node:pitch_cpsmidi opcode:cpsmidi
 i_pitch_cpsmidi_kfreq_1 = cpsmidinn(p4)
 ; node:velocity_scale_const opcode:const_i
 i_velocity_scale_const_iout_2 = 1
 ; node:voice_gain opcode:const_k
 k_voice_gain_kout_3 = 0.14
 ; node:tail_audio opcode:k_to_a
 a_tail_audio_aout_17 interp k_fx_tail_guard_kenv_10
 ; node:amp_madsr opcode:madsr
 k_amp_madsr_kenv_1 madsr i_horizon_rise_iout_8, i_env_decay_const_iout_4, i_env_sustain_const_iout_5, i_env_release_const_iout_6, 0, i_env_release_time_const_iout_7
 ; node:rise_ramp opcode:linseg
 k_rise_ramp_kenv_7 linseg 0, i_horizon_rise_iout_8, 1
 ; node:space_amount opcode:k_mul
 k_space_amount_kout_9 = (i_horizon_space_iout_10) * (1)
 ; node:velocity_ampmidi opcode:ampmidi
 i_velocity_ampmidi_iamp_3 = ((p5 / 128) * (i_velocity_scale_const_iout_2))
 ; node:voice_pitch opcode:k_mul
 k_voice_pitch_kout_8 = ((i_pitch_cpsmidi_kfreq_1 * ((0.5 + (((1 + (2.5 * i_horizon_tension_iout_9))) * k_rise_ramp_kenv_7))))) * (1)
 ; node:space_audio opcode:k_to_a
 a_space_audio_aout_8 interp k_space_amount_kout_9
 ; node:amp_velocity_envelope opcode:k_mul
 k_amp_velocity_envelope_kout_2 = (i_velocity_ampmidi_iamp_3) * (k_amp_madsr_kenv_1)
 ; node:voice_amp opcode:k_mul
 k_voice_amp_kout_4 = (k_amp_velocity_envelope_kout_2) * (k_voice_gain_kout_3)
 ; node:air_amp opcode:k_mul
 k_air_amp_kout_6 = (k_amp_velocity_envelope_kout_2) * (k_air_gain_kout_5)
 ; node:voice_foscili opcode:foscili
 a_voice_foscili_asig_1 foscili k_voice_amp_kout_4, (0.5 * (((k_voice_pitch_kout_8 + 12000) - abs((k_voice_pitch_kout_8 - 12000))))), 1, 2, (0.5 * (((((0.2 + ((6 * i_horizon_tension_iout_9) * k_rise_ramp_kenv_7))) + ((0.5 * (((((((((0.4 * sr) / ((0.5 * (((k_voice_pitch_kout_8 + 12000) - abs((k_voice_pitch_kout_8 - 12000))))))) - 1)) / 2) - 1)) + abs((((((((0.4 * sr) / ((0.5 * (((k_voice_pitch_kout_8 + 12000) - abs((k_voice_pitch_kout_8 - 12000))))))) - 1)) / 2) - 1)))))))) - abs((((0.2 + ((6 * i_horizon_tension_iout_9) * k_rise_ramp_kenv_7))) - ((0.5 * (((((((((0.4 * sr) / ((0.5 * (((k_voice_pitch_kout_8 + 12000) - abs((k_voice_pitch_kout_8 - 12000))))))) - 1)) / 2) - 1)) + abs((((((((0.4 * sr) / ((0.5 * (((k_voice_pitch_kout_8 + 12000) - abs((k_voice_pitch_kout_8 - 12000))))))) - 1)) / 2) - 1)))))))))))), 1, 0
 ; node:air_noise opcode:noise
 a_air_noise_aout_2 noise (k_air_amp_kout_6 * ((0.1 + (0.9 * i_horizon_tension_iout_9)))), 0.15
 ; node:layer_mix_1 opcode:mix2
 a_layer_mix_1_aout_3 = (a_voice_foscili_asig_1) + (a_air_noise_aout_2)
 ; node:effect_1_butterhp opcode:butterhp
 a_effect_1_butterhp_aout_4 butterhp a_layer_mix_1_aout_3, 200, 0
 ; node:effect_2_butterlp opcode:butterlp
 a_effect_2_butterlp_aout_5 butterlp a_effect_1_butterhp_aout_4, (700 + (k_rise_ramp_kenv_7 * ((2000 + (8000 * i_horizon_tension_iout_9))))), 0
 ; node:echo_filter opcode:butterlp
 a_echo_filter_aout_9 butterlp a_effect_2_butterlp_aout_5, 4200, 0
 ; node:echo_1 opcode:delay
 a_echo_1_aout_10 delay a_echo_filter_aout_9, 0.29, 0
 ; node:echo_2 opcode:delay
 a_echo_2_aout_11 delay a_echo_1_aout_10, 0.29, 0
 ; node:echo_3 opcode:delay
 a_echo_3_aout_12 delay a_echo_2_aout_11, 0.29, 0
 ; node:echo_4 opcode:delay
 a_echo_4_aout_13 delay a_echo_3_aout_12, 0.29, 0
 ; node:echo_sum opcode:mix2
 a_echo_sum_aout_14 = (((((0.62000000 * a_echo_1_aout_10) + (0.38440000 * a_echo_2_aout_11)) + (0.23832800 * a_echo_3_aout_12)) + (0.14776336 * a_echo_4_aout_13))) + (0)
 ; node:local_reverb opcode:reverb2
 a_local_reverb_aout_15 reverb2 ((0.45 * a_effect_2_butterlp_aout_5) + (0.55 * a_echo_sum_aout_14)), 3.2, 0.55, 0
 ; node:fx_mix opcode:mix2
 a_fx_mix_aout_16 = ((a_effect_2_butterlp_aout_5 + (a_space_audio_aout_8 * (((0.75 * a_echo_sum_aout_14) + (0.38 * a_local_reverb_aout_15)))))) + (0)
 ; node:output_pan2 opcode:pan2
 a_output_pan2_aleft_6, a_output_pan2_aright_7 pan2 ((5 * a_fx_mix_aout_16) * a_tail_audio_aout_17), (0.5 + (0.22 * k_orbit_pan_lfo_kout_11)), 0
 ; node:output_left opcode:outleta
 outleta "left", a_output_pan2_aleft_6
 ; node:output_right opcode:outleta
 outleta "right", a_output_pan2_aright_7
endin

; mixer stage patch:2f97744d-6693-44e7-b2e2-08d84a51da6d
; patch:88b66cd1-70b3-481c-8f13-c0e4d1010339 name:Alloy Sequence Voice channel:2 always_on:false
; instance:2f97744d-6693-44e7-b2e2-08d84a51da6d csound:vcs_mix_78f66fb9c94330306dee1d9b
; description: Short metallic FM sequence voice. Ratio sets the modulator/carrier relationship; non-integer values are inharmonic. High-pass filtered to leave bass space. Suggested MIDI notes 48–84. Dry, velocity-sensitive, polyphonic. Three per-instance controls read on new notes. Route Stereo Output through the performance mixer to Master.
; trigger: MIDI channel 2 / score notes; score instrument number: 5
instr vcs_mix_78f66fb9c94330306dee1d9b
 i_vcs_internal_score_note_p4 = p4
 i_vcs_internal_score_velocity_p5 = p5
 i_alloy_clang_iout_7 chnget "__vcs_perf_370150679d7438c0460bfb924ef6d57291b5f7c84dece8e080e3771bc1476e13"
 i_alloy_decay_iout_9 chnget "__vcs_perf_f4946d946843952bb8fd2205d74d5918cbc36ea777bcf4c642f88b1d58471175"
 i_alloy_ratio_iout_8 chnget "__vcs_perf_e953f2f5b7dafb2111543486636628a1524cf7d2582fa6c75c4e0232d6a6b012"
 ; node:env_attack_const opcode:const_i
 i_env_attack_const_iout_4 = 0.001
 ; node:env_release_const opcode:const_i
 i_env_release_const_iout_6 = 0.04
 ; node:env_sustain_const opcode:const_i
 i_env_sustain_const_iout_5 = 0
 ; node:fm_gain opcode:const_k
 k_fm_gain_kout_3 = 0.24
 ; node:pitch_cpsmidi opcode:cpsmidi
 i_pitch_cpsmidi_kfreq_1 = cpsmidinn(p4)
 ; node:velocity_scale_const opcode:const_i
 i_velocity_scale_const_iout_2 = 1
 ; node:amp_madsr opcode:madsr
 k_amp_madsr_kenv_1 madsr i_env_attack_const_iout_4, i_alloy_decay_iout_9, i_env_sustain_const_iout_5, i_env_release_const_iout_6, 0, -1
 ; node:velocity_ampmidi opcode:ampmidi
 i_velocity_ampmidi_iamp_3 = ((p5 / 128) * (i_velocity_scale_const_iout_2))
 ; node:amp_velocity_envelope opcode:k_mul
 k_amp_velocity_envelope_kout_2 = (i_velocity_ampmidi_iamp_3) * (k_amp_madsr_kenv_1)
 ; node:fm_amp opcode:k_mul
 k_fm_amp_kout_4 = (k_amp_velocity_envelope_kout_2) * (k_fm_gain_kout_3)
 ; node:fm_foscili opcode:foscili
 a_fm_foscili_asig_1 foscili k_fm_amp_kout_4, i_pitch_cpsmidi_kfreq_1, 1, i_alloy_ratio_iout_8, (0.5 * (((((i_alloy_clang_iout_7 * ((0.4 + (0.6 * k_amp_madsr_kenv_1))))) + ((0.5 * (((((((((0.42 * sr) / i_pitch_cpsmidi_kfreq_1) - 1)) / i_alloy_ratio_iout_8) - 1)) + abs((((((((0.42 * sr) / i_pitch_cpsmidi_kfreq_1) - 1)) / i_alloy_ratio_iout_8) - 1)))))))) - abs((((i_alloy_clang_iout_7 * ((0.4 + (0.6 * k_amp_madsr_kenv_1))))) - ((0.5 * (((((((((0.42 * sr) / i_pitch_cpsmidi_kfreq_1) - 1)) / i_alloy_ratio_iout_8) - 1)) + abs((((((((0.42 * sr) / i_pitch_cpsmidi_kfreq_1) - 1)) / i_alloy_ratio_iout_8) - 1)))))))))))), 1, 0
 ; node:effect_1_butterhp opcode:butterhp
 a_effect_1_butterhp_aout_2 butterhp a_fm_foscili_asig_1, 220, 0
 ; node:effect_2_butterlp opcode:butterlp
 a_effect_2_butterlp_aout_3 butterlp a_effect_1_butterhp_aout_2, 9000, 0
 ; node:output_pan2 opcode:pan2
 a_output_pan2_aleft_4, a_output_pan2_aright_5 pan2 ((a_effect_2_butterlp_aout_3 * 0.85) * 5), 0.5, 0
 ; node:output_left opcode:outleta
 outleta "left", a_output_pan2_aleft_4
 ; node:output_right opcode:outleta
 outleta "right", a_output_pan2_aright_5
endin

; mixer stage patch:786c76df-2174-41fd-b95f-877e42d94975
; patch:6608a9eb-48f3-4b1c-93a5-04bc4813333b name:JP-8000 Supersaw channel:7 always_on:false
; instance:786c76df-2174-41fd-b95f-877e42d94975 csound:vcs_mix_8d27111ae349cf621af6bb36
; description: JP-8000-inspired emotional trance lead (not a hardware emulation). Seven band-limited saws at -18/-11/-5/0/+6/+12/+19 cents with staggered phases and a stronger centered voice. Stereo spread -\x3e resonant 24 dB low-pass with velocity-sensitive filter envelope -\x3e dam compression -\x3e subtle stereo chorus -\x3e three dark rhythmic echoes per side. No reverb. Amp ADSR: 8 ms / 320 ms / 80% / 280 ms. Default delay tempo 138 BPM: left dotted eighth, right quarter. Edit delay_tempo_bpm to match your song (manual, not host synced); 138 gives 326/435 ms. Controls: detune_amount (0..1.5), stereo_width (0..1), filter_base_hz (default 3200), filter_sweep_hz (5800), filter_resonance (0.12), chorus_mix (0.22), delay_mix (0.28), output_level (1.25). Finite echo taps and a reserved tail let echoes finish after MIDI note-off. Polyphonic, velocity-sensitive; add global reverb to taste.
; trigger: MIDI channel 7 / score notes; score instrument number: 6
instr vcs_mix_8d27111ae349cf621af6bb36
 i_vcs_internal_score_note_p4 = p4
 i_vcs_internal_score_velocity_p5 = p5
 i_c5734d71_1fae_4fb0_9ade_c581a8d7aad7_iout_14 chnget "__vcs_perf_53f0cab7ea3ddb74236188c53676e0d4158686ff60b6c7f0d298ea6569316a94"
 ; node:chorus_lfo_left opcode:lfo
 k_chorus_lfo_left_kout_26 lfo 3, 0.23, 0
 ; node:chorus_lfo_right opcode:lfo
 k_chorus_lfo_right_kout_27 lfo 3.6, 0.31, 0
 ; node:chorus_mix opcode:const_k
 k_chorus_mix_kout_22 = 0.22
 ; node:delay_mix opcode:const_k
 k_delay_mix_kout_23 = 0.28
 ; node:delay_tempo_bpm opcode:const_i
 i_delay_tempo_bpm_iout_9 = 138
 ; node:detune_amount opcode:const_k
 k_detune_amount_kout_17 = 1
 ; node:env_attack_const opcode:const_i
 i_env_attack_const_iout_4 = 0.001
 ; node:env_decay_const opcode:const_i
 i_env_decay_const_iout_5 = 0.32
 ; node:env_release_const opcode:const_i
 i_env_release_const_iout_7 = 0.25
 ; node:env_release_time_const opcode:const_i
 i_env_release_time_const_iout_8 = 0.25
 ; node:env_sustain_const opcode:const_i
 i_env_sustain_const_iout_6 = 0.8
 ; node:filter_base_hz opcode:const_k
 k_filter_base_hz_kout_19 = 3200
 ; node:filter_iatt opcode:const_i
 i_filter_iatt_iout_10 = 0.006
 ; node:filter_idec opcode:const_i
 i_filter_idec_iout_11 = 0.6
 ; node:filter_irel opcode:const_i
 i_filter_irel_iout_13 = 0.25
 ; node:filter_islev opcode:const_i
 i_filter_islev_iout_12 = 0.42
 ; node:filter_resonance opcode:const_k
 k_filter_resonance_kout_21 = 0.12
 ; node:filter_sweep_hz opcode:const_k
 k_filter_sweep_hz_kout_20 = 5800
 ; node:output_level opcode:const_k
 k_output_level_kout_24 = 1.25
 ; node:pitch_cpsmidi opcode:cpsmidi
 i_pitch_cpsmidi_kfreq_1 = cpsmidinn(p4)
 ; node:saw_1_gain opcode:const_k
 k_saw_1_gain_kout_3 = 0.05
 ; node:saw_2_gain opcode:const_k
 k_saw_2_gain_kout_5 = 0.05
 ; node:saw_3_gain opcode:const_k
 k_saw_3_gain_kout_7 = 0.05
 ; node:saw_4_gain opcode:const_k
 k_saw_4_gain_kout_9 = 0.075
 ; node:saw_5_gain opcode:const_k
 k_saw_5_gain_kout_11 = 0.05
 ; node:saw_6_gain opcode:const_k
 k_saw_6_gain_kout_13 = 0.05
 ; node:saw_7_gain opcode:const_k
 k_saw_7_gain_kout_15 = 0.05
 ; node:stereo_width opcode:const_k
 k_stereo_width_kout_18 = 1
 ; node:velocity_scale_const opcode:const_i
 i_velocity_scale_const_iout_2 = 1
 ; node:chorus_time_left opcode:k_to_a
 a_chorus_time_left_aout_27 interp (18 + k_chorus_lfo_left_kout_26)
 ; node:chorus_time_right opcode:k_to_a
 a_chorus_time_right_aout_37 interp (22 + k_chorus_lfo_right_kout_27)
 ; node:chorus_mix_audio opcode:k_to_a
 a_chorus_mix_audio_aout_8 interp k_chorus_mix_kout_22
 ; node:delay_mix_audio opcode:k_to_a
 a_delay_mix_audio_aout_9 interp k_delay_mix_kout_23
 ; node:let_echoes_finish opcode:xtratim
 xtratim ((i_env_release_const_iout_7 + (180 / i_delay_tempo_bpm_iout_9)) + 0.15)
 ; node:amp_madsr opcode:madsr
 k_amp_madsr_kenv_1 madsr i_env_attack_const_iout_4, i_env_decay_const_iout_5, i_env_sustain_const_iout_6, i_env_release_const_iout_7, 0, i_env_release_time_const_iout_8
 ; node:filter_envelope opcode:madsr
 k_filter_envelope_kenv_25 madsr i_filter_iatt_iout_10, i_filter_idec_iout_11, i_filter_islev_iout_12, i_filter_irel_iout_13, 0, 0.25
 ; node:output_level_audio opcode:k_to_a
 a_output_level_audio_aout_10 interp k_output_level_kout_24
 ; node:velocity_ampmidi opcode:ampmidi
 i_velocity_ampmidi_iamp_3 = ((p5 / 128) * (i_velocity_scale_const_iout_2))
 ; node:amp_velocity_envelope opcode:k_mul
 k_amp_velocity_envelope_kout_2 = (i_velocity_ampmidi_iamp_3) * (k_amp_madsr_kenv_1)
 ; node:saw_1_amp opcode:k_mul
 k_saw_1_amp_kout_4 = (k_amp_velocity_envelope_kout_2) * (k_saw_1_gain_kout_3)
 ; node:saw_2_amp opcode:k_mul
 k_saw_2_amp_kout_6 = (k_amp_velocity_envelope_kout_2) * (k_saw_2_gain_kout_5)
 ; node:saw_3_amp opcode:k_mul
 k_saw_3_amp_kout_8 = (k_amp_velocity_envelope_kout_2) * (k_saw_3_gain_kout_7)
 ; node:saw_4_amp opcode:k_mul
 k_saw_4_amp_kout_10 = (k_amp_velocity_envelope_kout_2) * (k_saw_4_gain_kout_9)
 ; node:saw_5_amp opcode:k_mul
 k_saw_5_amp_kout_12 = (k_amp_velocity_envelope_kout_2) * (k_saw_5_gain_kout_11)
 ; node:saw_6_amp opcode:k_mul
 k_saw_6_amp_kout_14 = (k_amp_velocity_envelope_kout_2) * (k_saw_6_gain_kout_13)
 ; node:saw_7_amp opcode:k_mul
 k_saw_7_amp_kout_16 = (k_amp_velocity_envelope_kout_2) * (k_saw_7_gain_kout_15)
 ; node:saw_1_vco2 opcode:vco2
 a_saw_1_vco2_asig_1 vco2 k_saw_1_amp_kout_4, (i_pitch_cpsmidi_kfreq_1 * ((1 + ((k_detune_amount_kout_17 * i_c5734d71_1fae_4fb0_9ade_c581a8d7aad7_iout_14) * (-0.010343343585))))), 0, 0.5, 0.13, 0.5
 ; node:saw_2_vco2 opcode:vco2
 a_saw_2_vco2_asig_2 vco2 k_saw_2_amp_kout_6, (i_pitch_cpsmidi_kfreq_1 * ((1 + ((k_detune_amount_kout_17 * i_c5734d71_1fae_4fb0_9ade_c581a8d7aad7_iout_14) * (-0.006333706140))))), 0, 0.5, 0.71, 0.5
 ; node:saw_3_vco2 opcode:vco2
 a_saw_3_vco2_asig_3 vco2 k_saw_3_amp_kout_8, (i_pitch_cpsmidi_kfreq_1 * ((1 + ((k_detune_amount_kout_17 * i_c5734d71_1fae_4fb0_9ade_c581a8d7aad7_iout_14) * (-0.002883946665))))), 0, 0.5, 0.34, 0.5
 ; node:saw_4_vco2 opcode:vco2
 a_saw_4_vco2_asig_4 vco2 k_saw_4_amp_kout_10, (i_pitch_cpsmidi_kfreq_1 * ((1 + (k_detune_amount_kout_17 * 0.000000000000)))), 0, 0.5, 0, 0.5
 ; node:saw_5_vco2 opcode:vco2
 a_saw_5_vco2_asig_5 vco2 k_saw_5_amp_kout_12, (i_pitch_cpsmidi_kfreq_1 * ((1 + ((k_detune_amount_kout_17 * i_c5734d71_1fae_4fb0_9ade_c581a8d7aad7_iout_14) * 0.003471748510)))), 0, 0.5, 0.87, 0.5
 ; node:saw_6_vco2 opcode:vco2
 a_saw_6_vco2_asig_6 vco2 k_saw_6_amp_kout_14, (i_pitch_cpsmidi_kfreq_1 * ((1 + ((k_detune_amount_kout_17 * i_c5734d71_1fae_4fb0_9ade_c581a8d7aad7_iout_14) * 0.006955550057)))), 0, 0.5, 0.52, 0.5
 ; node:saw_7_vco2 opcode:vco2
 a_saw_7_vco2_asig_7 vco2 k_saw_7_amp_kout_16, (i_pitch_cpsmidi_kfreq_1 * ((1 + ((k_detune_amount_kout_17 * i_c5734d71_1fae_4fb0_9ade_c581a8d7aad7_iout_14) * 0.011035274729)))), 0, 0.5, 0.23, 0.5
 ; node:saw_1_pan opcode:pan2
 a_saw_1_pan_aleft_11, a_saw_1_pan_aright_12 pan2 a_saw_1_vco2_asig_1, (0.5 + (k_stereo_width_kout_18 * (-0.460))), 0
 ; node:saw_2_pan opcode:pan2
 a_saw_2_pan_aleft_13, a_saw_2_pan_aright_14 pan2 a_saw_2_vco2_asig_2, (0.5 + (k_stereo_width_kout_18 * 0.280)), 0
 ; node:saw_3_pan opcode:pan2
 a_saw_3_pan_aleft_15, a_saw_3_pan_aright_16 pan2 a_saw_3_vco2_asig_3, (0.5 + (k_stereo_width_kout_18 * (-0.200))), 0
 ; node:saw_4_pan opcode:pan2
 a_saw_4_pan_aleft_17, a_saw_4_pan_aright_18 pan2 a_saw_4_vco2_asig_4, (0.5 + (k_stereo_width_kout_18 * 0.000)), 0
 ; node:saw_5_pan opcode:pan2
 a_saw_5_pan_aleft_19, a_saw_5_pan_aright_20 pan2 a_saw_5_vco2_asig_5, (0.5 + (k_stereo_width_kout_18 * 0.200)), 0
 ; node:saw_6_pan opcode:pan2
 a_saw_6_pan_aleft_21, a_saw_6_pan_aright_22 pan2 a_saw_6_vco2_asig_6, (0.5 + (k_stereo_width_kout_18 * (-0.280))), 0
 ; node:saw_7_pan opcode:pan2
 a_saw_7_pan_aleft_23, a_saw_7_pan_aright_24 pan2 a_saw_7_vco2_asig_7, (0.5 + (k_stereo_width_kout_18 * 0.460)), 0
 ; node:lowpass_left opcode:moogladder2
 a_lowpass_left_aout_25 moogladder2 (a_saw_1_pan_aleft_11) + (a_saw_2_pan_aleft_13) + (a_saw_3_pan_aleft_15) + (a_saw_4_pan_aleft_17) + (a_saw_5_pan_aleft_19) + (a_saw_6_pan_aleft_21) + (a_saw_7_pan_aleft_23), (k_filter_base_hz_kout_19 + ((k_filter_sweep_hz_kout_20 * k_filter_envelope_kenv_25) * ((0.65 + (0.35 * i_velocity_ampmidi_iamp_3))))), k_filter_resonance_kout_21
 ; node:lowpass_right opcode:moogladder2
 a_lowpass_right_aout_35 moogladder2 (a_saw_1_pan_aright_12) + (a_saw_2_pan_aright_14) + (a_saw_3_pan_aright_16) + (a_saw_4_pan_aright_18) + (a_saw_5_pan_aright_20) + (a_saw_6_pan_aright_22) + (a_saw_7_pan_aright_24), (k_filter_base_hz_kout_19 + ((k_filter_sweep_hz_kout_20 * k_filter_envelope_kenv_25) * ((0.65 + (0.35 * i_velocity_ampmidi_iamp_3))))), k_filter_resonance_kout_21
 ; node:compressor_left opcode:dam
 a_compressor_left_aout_26 dam a_lowpass_left_aout_25, 0.02, 0.6, 1, 0.12, 0.008
 ; node:compressor_right opcode:dam
 a_compressor_right_aout_36 dam a_lowpass_right_aout_35, 0.02, 0.6, 1, 0.12, 0.008
 ; node:chorus_delay_left opcode:vdelay3
 a_chorus_delay_left_aout_28 vdelay3 a_compressor_left_aout_26, a_chorus_time_left_aout_27, 35
 ; node:chorus_delay_right opcode:vdelay3
 a_chorus_delay_right_aout_38 vdelay3 a_compressor_right_aout_36, a_chorus_time_right_aout_37, 35
 ; node:chorus_blend_left opcode:mix2
 a_chorus_blend_left_aout_29 = ((a_compressor_left_aout_26 * ((1 - a_chorus_mix_audio_aout_8)))) + ((a_chorus_delay_left_aout_28 * a_chorus_mix_audio_aout_8))
 ; node:chorus_blend_right opcode:mix2
 a_chorus_blend_right_aout_39 = ((a_compressor_right_aout_36 * ((1 - a_chorus_mix_audio_aout_8)))) + ((a_chorus_delay_right_aout_38 * a_chorus_mix_audio_aout_8))
 ; node:echo_highpass_left opcode:butterhp
 a_echo_highpass_left_aout_30 butterhp a_chorus_blend_left_aout_29, 180, 0
 ; node:echo_highpass_right opcode:butterhp
 a_echo_highpass_right_aout_40 butterhp a_chorus_blend_right_aout_39, 180, 0
 ; node:echo_lowpass_left opcode:butterlp
 a_echo_lowpass_left_aout_31 butterlp a_echo_highpass_left_aout_30, 4300, 0
 ; node:echo_lowpass_right opcode:butterlp
 a_echo_lowpass_right_aout_41 butterlp a_echo_highpass_right_aout_40, 4300, 0
 ; node:echo_left_1 opcode:delay
 a_echo_left_1_aout_32 delay a_echo_lowpass_left_aout_31, (45 / i_delay_tempo_bpm_iout_9), 0
 ; node:echo_right_1 opcode:delay
 a_echo_right_1_aout_42 delay a_echo_lowpass_right_aout_41, (60 / i_delay_tempo_bpm_iout_9), 0
 ; node:echo_left_2 opcode:delay
 a_echo_left_2_aout_33 delay a_echo_left_1_aout_32, (45 / i_delay_tempo_bpm_iout_9), 0
 ; node:echo_right_2 opcode:delay
 a_echo_right_2_aout_43 delay a_echo_right_1_aout_42, (60 / i_delay_tempo_bpm_iout_9), 0
 ; node:echo_left_3 opcode:delay
 a_echo_left_3_aout_34 delay a_echo_left_2_aout_33, (45 / i_delay_tempo_bpm_iout_9), 0
 ; node:echo_right_3 opcode:delay
 a_echo_right_3_aout_44 delay a_echo_right_2_aout_43, (60 / i_delay_tempo_bpm_iout_9), 0
 a_8cf688b8_07ed_4a75_9c84_6798d59c3812_asignal_45 = ((25 * a_output_level_audio_aout_10) * ((a_chorus_blend_left_aout_29 + (a_delay_mix_audio_aout_9 * (((a_echo_left_1_aout_32 + (0.43 * a_echo_left_2_aout_33)) + (0.18 * a_echo_left_3_aout_34)))))))
 a_80f14efd_407a_473a_884d_eb7f2a5da6f4_asignal_46 = ((25 * a_output_level_audio_aout_10) * ((a_chorus_blend_right_aout_39 + (a_delay_mix_audio_aout_9 * (((a_echo_right_1_aout_42 + (0.43 * a_echo_right_2_aout_43)) + (0.18 * a_echo_right_3_aout_44)))))))
 ; node:8cf688b8-07ed-4a75-9c84-6798d59c3812 opcode:outleta
 outleta "left", a_8cf688b8_07ed_4a75_9c84_6798d59c3812_asignal_45
 ; node:80f14efd-407a-473a-884d-eb7f2a5da6f4 opcode:outleta
 outleta "right", a_80f14efd_407a_473a_884d_eb7f2a5da6f4_asignal_46
endin

; mixer stage patch:b300f7fe-3b85-42c0-bac2-8f8bdfa84a34
; patch:1d1ae919-b144-484b-b780-fb197bdb4aba name:Prism FM Pluck channel:4 always_on:false
; instance:b300f7fe-3b85-42c0-bac2-8f8bdfa84a34 csound:vcs_mix_e699cbef276101d1a72a1ebe
; description: A harmonic 1:3 FM pair with a bright onset that softens into a glassy pluck. Release controls the tail after key-up; decay controls held notes. Suggested MIDI notes 48–84. Dry, velocity-sensitive, polyphonic. Three per-instance controls read on new notes. Route Stereo Output through the performance mixer to Master.
; trigger: MIDI channel 4 / score notes; score instrument number: 7
instr vcs_mix_e699cbef276101d1a72a1ebe
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
 i_prism_color_iout_6 chnget "__vcs_perf_46c741f7c411ee306278f78a56aebd7a7bbcc321a863c2090835889206383987"
 i_prism_decay_iout_7 chnget "__vcs_perf_3e31a49423405b0abbc1f74bd464c30b1b40b30eb5a1bfc990cd18b31b3cfc12"
 i_prism_release_iout_8 chnget "__vcs_perf_f46fcc645796ca1bbb5ef5113cbfbc2f778894a8e54eafd98c19333418b1d276"
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

; mixer stage patch:bad0b25f-7b9b-4854-8062-2c9298451447
; patch:e05c92da-9cd5-4082-9bb8-09cc8dbf5f3a name:Astral Laser Zaps channel:11 always_on:false
; instance:bad0b25f-7b9b-4854-8062-2c9298451447 csound:vcs_mix_ea8f778ad58bcadea7b1cdbe
; description: Descending FM laser with an exponential pitch sweep, clustered 75 ms echoes and a bright room tail. Sweep is the starting pitch multiplier. MIDI 36–76. Built-in filtered echoes and reverb; no global FX needed. Velocity-sensitive, polyphonic, three per-instance controls read on new notes. Route Stereo Output through the mixer to Master.
; trigger: MIDI channel 11 / score notes; score instrument number: 8
instr vcs_mix_ea8f778ad58bcadea7b1cdbe
 i_vcs_internal_score_note_p4 = p4
 i_vcs_internal_score_velocity_p5 = p5
 i_astral_decay_iout_9 chnget "__vcs_perf_1849ca14f9c2706e1212ae44c7972e3f3a9a173f02ef1f78872801841b8e6591"
 i_astral_space_iout_10 chnget "__vcs_perf_3f222720ba85e247be93f916f1c397da1578eababd74f2b5be4a7be8fcbfeca6"
 i_astral_sweep_iout_8 chnget "__vcs_perf_0ea6d1e31646c32829f66e1cb76fa391ecf7c8bcf75c4b1da493452c8327ac6a"
 ; node:env_attack_const opcode:const_i
 i_env_attack_const_iout_4 = 0.001
 ; node:env_release_const opcode:const_i
 i_env_release_const_iout_6 = 0.025
 ; node:env_release_time_const opcode:const_i
 i_env_release_time_const_iout_7 = 0.025
 ; node:env_sustain_const opcode:const_i
 i_env_sustain_const_iout_5 = 0
 ; node:fx_tail_guard opcode:linsegr
 k_fx_tail_guard_kenv_8 linsegr 1, 0.001, 1, 3.6, 0
 ; node:orbit_pan_lfo opcode:lfo
 k_orbit_pan_lfo_kout_9 lfo 1, 0.37, 0
 ; node:pitch_cpsmidi opcode:cpsmidi
 i_pitch_cpsmidi_kfreq_1 = cpsmidinn(p4)
 ; node:velocity_scale_const opcode:const_i
 i_velocity_scale_const_iout_2 = 1
 ; node:voice_gain opcode:const_k
 k_voice_gain_kout_3 = 0.24
 ; node:laser_sweep_env opcode:expseg
 k_laser_sweep_env_kenv_5 expseg 1, i_astral_decay_iout_9, 0.0001
 ; node:space_amount opcode:k_mul
 k_space_amount_kout_7 = (i_astral_space_iout_10) * (1)
 ; node:amp_madsr opcode:madsr
 k_amp_madsr_kenv_1 madsr i_env_attack_const_iout_4, i_astral_decay_iout_9, i_env_sustain_const_iout_5, i_env_release_const_iout_6, 0, i_env_release_time_const_iout_7
 ; node:tail_audio opcode:k_to_a
 a_tail_audio_aout_19 interp k_fx_tail_guard_kenv_8
 ; node:velocity_ampmidi opcode:ampmidi
 i_velocity_ampmidi_iamp_3 = ((p5 / 128) * (i_velocity_scale_const_iout_2))
 ; node:voice_pitch opcode:k_mul
 k_voice_pitch_kout_6 = ((i_pitch_cpsmidi_kfreq_1 * ((1 + (((i_astral_sweep_iout_8 - 1)) * k_laser_sweep_env_kenv_5))))) * (1)
 ; node:space_audio opcode:k_to_a
 a_space_audio_aout_6 interp k_space_amount_kout_7
 ; node:amp_velocity_envelope opcode:k_mul
 k_amp_velocity_envelope_kout_2 = (i_velocity_ampmidi_iamp_3) * (k_amp_madsr_kenv_1)
 ; node:voice_amp opcode:k_mul
 k_voice_amp_kout_4 = (k_amp_velocity_envelope_kout_2) * (k_voice_gain_kout_3)
 ; node:voice_foscili opcode:foscili
 a_voice_foscili_asig_1 foscili k_voice_amp_kout_4, (0.5 * (((k_voice_pitch_kout_6 + 12000) - abs((k_voice_pitch_kout_6 - 12000))))), 1, 1, (0.5 * (((((0.2 + k_amp_madsr_kenv_1)) + ((0.5 * (((((((((0.4 * sr) / ((0.5 * (((k_voice_pitch_kout_6 + 12000) - abs((k_voice_pitch_kout_6 - 12000))))))) - 1)) / 1) - 1)) + abs((((((((0.4 * sr) / ((0.5 * (((k_voice_pitch_kout_6 + 12000) - abs((k_voice_pitch_kout_6 - 12000))))))) - 1)) / 1) - 1)))))))) - abs((((0.2 + k_amp_madsr_kenv_1)) - ((0.5 * (((((((((0.4 * sr) / ((0.5 * (((k_voice_pitch_kout_6 + 12000) - abs((k_voice_pitch_kout_6 - 12000))))))) - 1)) / 1) - 1)) + abs((((((((0.4 * sr) / ((0.5 * (((k_voice_pitch_kout_6 + 12000) - abs((k_voice_pitch_kout_6 - 12000))))))) - 1)) / 1) - 1)))))))))))), 1, 0
 ; node:effect_1_butterhp opcode:butterhp
 a_effect_1_butterhp_aout_2 butterhp a_voice_foscili_asig_1, 100, 0
 ; node:effect_2_butterlp opcode:butterlp
 a_effect_2_butterlp_aout_3 butterlp a_effect_1_butterhp_aout_2, 9500, 0
 ; node:echo_filter opcode:butterlp
 a_echo_filter_aout_7 butterlp a_effect_2_butterlp_aout_3, 4200, 0
 ; node:echo_1 opcode:delay
 a_echo_1_aout_8 delay a_echo_filter_aout_7, 0.075, 0
 ; node:echo_2 opcode:delay
 a_echo_2_aout_9 delay a_echo_1_aout_8, 0.075, 0
 ; node:echo_3 opcode:delay
 a_echo_3_aout_10 delay a_echo_2_aout_9, 0.075, 0
 ; node:echo_4 opcode:delay
 a_echo_4_aout_11 delay a_echo_3_aout_10, 0.075, 0
 ; node:echo_5 opcode:delay
 a_echo_5_aout_12 delay a_echo_4_aout_11, 0.075, 0
 ; node:echo_6 opcode:delay
 a_echo_6_aout_13 delay a_echo_5_aout_12, 0.075, 0
 ; node:echo_7 opcode:delay
 a_echo_7_aout_14 delay a_echo_6_aout_13, 0.075, 0
 ; node:echo_8 opcode:delay
 a_echo_8_aout_15 delay a_echo_7_aout_14, 0.075, 0
 ; node:echo_sum opcode:mix2
 a_echo_sum_aout_16 = (((((((((0.62000000 * a_echo_1_aout_8) + (0.38440000 * a_echo_2_aout_9)) + (0.23832800 * a_echo_3_aout_10)) + (0.14776336 * a_echo_4_aout_11)) + (0.09161328 * a_echo_5_aout_12)) + (0.05680024 * a_echo_6_aout_13)) + (0.03521615 * a_echo_7_aout_14)) + (0.02183401 * a_echo_8_aout_15))) + (0)
 ; node:local_reverb opcode:reverb2
 a_local_reverb_aout_17 reverb2 ((0.45 * a_effect_2_butterlp_aout_3) + (0.55 * a_echo_sum_aout_16)), 1.4, 0.55, 0
 ; node:fx_mix opcode:mix2
 a_fx_mix_aout_18 = ((a_effect_2_butterlp_aout_3 + (a_space_audio_aout_6 * (((0.75 * a_echo_sum_aout_16) + (0.38 * a_local_reverb_aout_17)))))) + (0)
 ; node:output_pan2 opcode:pan2
 a_output_pan2_aleft_4, a_output_pan2_aright_5 pan2 ((0.65 * a_fx_mix_aout_18) * a_tail_audio_aout_19), (0.5 + (0.22 * k_orbit_pan_lfo_kout_9)), 0
 ; node:output_left opcode:outleta
 outleta "left", a_output_pan2_aleft_4
 ; node:output_right opcode:outleta
 outleta "right", a_output_pan2_aright_5
endin

; mixer stage patch:cc004901-9dcf-4375-982d-851284b67dd2
; patch:1e76a9d4-e0e9-47b8-9822-c1d5a8facb7b name:Mandala Acid Lead channel:15 always_on:false
; instance:cc004901-9dcf-4375-982d-851284b67dd2 csound:vcs_mix_d34edde64f840c3e012a27ce
; description: Goa acid lead: driven saw, resonant envelope sweep, dotted-eighth echoes. Echo BPM is manual tempo, not host sync. MIDI 43–79. Built-in filtered echoes and reverb; no global FX needed. Velocity-sensitive, polyphonic, three per-instance controls read on new notes. Route Stereo Output through the mixer to Master.
; trigger: MIDI channel 15 / score notes; score instrument number: 9
instr vcs_mix_d34edde64f840c3e012a27ce
 i_vcs_internal_score_note_p4 = p4
 i_vcs_internal_score_velocity_p5 = p5
 ; node:env_attack_const opcode:const_i
 i_env_attack_const_iout_4 = 0.004
 ; node:env_decay_const opcode:const_i
 i_env_decay_const_iout_5 = 0.22
 ; node:env_release_const opcode:const_i
 i_env_release_const_iout_7 = 0.055
 ; node:env_release_time_const opcode:const_i
 i_env_release_time_const_iout_8 = 0.055
 ; node:env_sustain_const opcode:const_i
 i_env_sustain_const_iout_6 = 0.45
 ; node:fx_tail_guard opcode:linsegr
 k_fx_tail_guard_kenv_6 linsegr 1, 0.001, 1, 4, 0
 i_mandala_space_iout_11 chnget "__vcs_perf_11f5b2f16c932098b813bf494cc179d2a6c2b5ffc2cae8215f2a2c649a2398ce"
 i_mandala_squelch_iout_9 chnget "__vcs_perf_d7fe6dbc40f745fa2ebb425978478cccc75107a1bfbf7372aadf89cd2d5f8212"
 i_mandala_tempo_iout_10 chnget "__vcs_perf_bc13c0f2e9148bde3f304c4c3d777f152e9fc0aa8708faea180675cabb65689c"
 ; node:orbit_pan_lfo opcode:lfo
 k_orbit_pan_lfo_kout_7 lfo 1, 0.37, 0
 ; node:pitch_cpsmidi opcode:cpsmidi
 i_pitch_cpsmidi_kfreq_1 = cpsmidinn(p4)
 ; node:velocity_scale_const opcode:const_i
 i_velocity_scale_const_iout_2 = 1
 ; node:voice_gain opcode:const_k
 k_voice_gain_kout_3 = 0.55
 ; node:amp_madsr opcode:madsr
 k_amp_madsr_kenv_1 madsr i_env_attack_const_iout_4, i_env_decay_const_iout_5, i_env_sustain_const_iout_6, i_env_release_const_iout_7, 0, i_env_release_time_const_iout_8
 ; node:tail_audio opcode:k_to_a
 a_tail_audio_aout_16 interp k_fx_tail_guard_kenv_6
 ; node:space_amount opcode:k_mul
 k_space_amount_kout_5 = (i_mandala_space_iout_11) * (1)
 ; node:velocity_ampmidi opcode:ampmidi
 i_velocity_ampmidi_iamp_3 = ((p5 / 128) * (i_velocity_scale_const_iout_2))
 ; node:space_audio opcode:k_to_a
 a_space_audio_aout_7 interp k_space_amount_kout_5
 ; node:amp_velocity_envelope opcode:k_mul
 k_amp_velocity_envelope_kout_2 = (i_velocity_ampmidi_iamp_3) * (k_amp_madsr_kenv_1)
 ; node:voice_amp opcode:k_mul
 k_voice_amp_kout_4 = (k_amp_velocity_envelope_kout_2) * (k_voice_gain_kout_3)
 ; node:voice_vco2 opcode:vco2
 a_voice_vco2_asig_1 vco2 k_voice_amp_kout_4, i_pitch_cpsmidi_kfreq_1, 0, 0.5, 0, 0.5
 ; node:effect_1_distort1 opcode:distort1
 a_effect_1_distort1_aout_2 distort1 a_voice_vco2_asig_1, 2.3, 0.26, 0, 0, 1
 ; node:effect_2_moogladder2 opcode:moogladder2
 a_effect_2_moogladder2_aout_3 moogladder2 a_effect_1_distort1_aout_2, (i_mandala_squelch_iout_9 + ((4200 * k_amp_madsr_kenv_1) * k_amp_madsr_kenv_1)), 0.56
 ; node:effect_3_butterhp opcode:butterhp
 a_effect_3_butterhp_aout_4 butterhp a_effect_2_moogladder2_aout_3, 85, 0
 ; node:echo_filter opcode:butterlp
 a_echo_filter_aout_8 butterlp a_effect_3_butterhp_aout_4, 4200, 0
 ; node:echo_1 opcode:delay
 a_echo_1_aout_9 delay a_echo_filter_aout_8, (45 / i_mandala_tempo_iout_10), 0
 ; node:echo_2 opcode:delay
 a_echo_2_aout_10 delay a_echo_1_aout_9, (45 / i_mandala_tempo_iout_10), 0
 ; node:echo_3 opcode:delay
 a_echo_3_aout_11 delay a_echo_2_aout_10, (45 / i_mandala_tempo_iout_10), 0
 ; node:echo_4 opcode:delay
 a_echo_4_aout_12 delay a_echo_3_aout_11, (45 / i_mandala_tempo_iout_10), 0
 ; node:echo_sum opcode:mix2
 a_echo_sum_aout_13 = (((((0.62000000 * a_echo_1_aout_9) + (0.38440000 * a_echo_2_aout_10)) + (0.23832800 * a_echo_3_aout_11)) + (0.14776336 * a_echo_4_aout_12))) + (0)
 ; node:local_reverb opcode:reverb2
 a_local_reverb_aout_14 reverb2 ((0.45 * a_effect_3_butterhp_aout_4) + (0.55 * a_echo_sum_aout_13)), 0.85, 0.55, 0
 ; node:fx_mix opcode:mix2
 a_fx_mix_aout_15 = ((a_effect_3_butterhp_aout_4 + (a_space_audio_aout_7 * (((0.75 * a_echo_sum_aout_13) + (0.38 * a_local_reverb_aout_14)))))) + (0)
 ; node:output_pan2 opcode:pan2
 a_output_pan2_aleft_5, a_output_pan2_aright_6 pan2 ((2 * a_fx_mix_aout_15) * a_tail_audio_aout_16), (0.5 + (0.22 * k_orbit_pan_lfo_kout_7)), 0
 ; node:output_left opcode:outleta
 outleta "left", a_output_pan2_aleft_5
 ; node:output_right opcode:outleta
 outleta "right", a_output_pan2_aright_6
endin

; mixer stage patch:e5317d66-5579-44ee-80f0-fc4128c2ae0d
; patch:48f1a6b6-ae6a-4053-a6a8-09e9dc426ec7 name:Goa Ray Lead channel:12 always_on:false
; instance:e5317d66-5579-44ee-80f0-fc4128c2ae0d csound:vcs_mix_db43201e41e7c82fff0f4afc
; description: Goa psytrance melody lead: saw + hollow square + single-pair FM bite, high-passed, saturated, resonant ladder filter, subtle flanger. Outputs: outleta left/right (full) and sendl/sendr (10% effect send).
; trigger: MIDI channel 12 / score notes; score instrument number: 10
instr vcs_mix_db43201e41e7c82fff0f4afc
 i_vcs_internal_score_note_p4 = p4
 i_vcs_internal_score_velocity_p5 = p5
 ; node:063e9526-e2bd-4b85-adce-0a9e2bf3c33f opcode:const_i
 i_063e9526_e2bd_4b85_adce_0a9e2bf3c33f_iout_8 = 900
 ; node:149651e0-c40c-4996-9966-407254393b09 opcode:const_i
 i_149651e0_c40c_4996_9966_407254393b09_iout_15 = 2.01232
 ; node:19871f98-4155-4614-a3a5-e51041d3608d opcode:const_i
 i_19871f98_4155_4614_a3a5_e51041d3608d_iout_11 = 0.7
 ; node:21b24d47-2e80-40c1-9092-185bf846a50a opcode:const_i
 i_21b24d47_2e80_40c1_9092_185bf846a50a_iout_12 = 1
 ; node:229006e9-b4b0-4135-9e82-feb0bc43c49b opcode:const_i
 i_229006e9_b4b0_4135_9e82_feb0bc43c49b_iout_19 = 4
 ; node:2691609c-db5f-4cb3-b31a-b73cc07f3f2b opcode:const_i
 i_2691609c_db5f_4cb3_b31a_b73cc07f3f2b_iout_18 = 0.2
 ; node:3913361b-61a4-4a60-af01-7724039e3d64 opcode:const_i
 i_3913361b_61a4_4a60_af01_7724039e3d64_iout_22 = 5.5
 ; node:3e2ddfdd-3093-4c4a-a728-7349f6137c66 opcode:const_i
 i_3e2ddfdd_3093_4c4a_a728_7349f6137c66_iout_24 = 0.05
 ; node:61c422e3-a830-4ac6-9ca2-7223fd380909 opcode:const_i
 i_61c422e3_a830_4ac6_9ca2_7223fd380909_iout_10 = 0.0012323
 ; node:6f10c95a-dd3e-4048-9e4b-536a0844e666 opcode:const_i
 i_6f10c95a_dd3e_4048_9e4b_536a0844e666_iout_13 = 0.5556
 ; node:73ee2805-cad4-4b97-af96-89e3b24bca48 opcode:const_i
 i_73ee2805_cad4_4b97_af96_89e3b24bca48_iout_16 = 0.3
 ; node:74d710f0-2295-4dae-b82a-48053d610bdf opcode:const_i
 i_74d710f0_2295_4dae_b82a_48053d610bdf_iout_21 = 2
 ; node:8273dc0e-a85f-44f2-9499-adb494bb9339 opcode:const_i
 i_8273dc0e_a85f_44f2_9499_adb494bb9339_iout_27 = 0.5
 ; node:a18abe1d-60d3-47a9-9aa2-c93511d1efff opcode:const_i
 i_a18abe1d_60d3_47a9_9aa2_c93511d1efff_iout_26 = 0.15
 ; node:b507b571-240d-4fab-86d7-0d95a2aa31b3 opcode:const_i
 i_b507b571_240d_4fab_86d7_0d95a2aa31b3_iout_23 = 6
 ; node:c019a356-69aa-4470-9d38-1b740e1dec56 opcode:const_i
 i_c019a356_69aa_4470_9d38_1b740e1dec56_iout_9 = 0.7
 ; node:c301c9e3-cf6a-4e18-999b-b3cc7d855704 opcode:const_i
 i_c301c9e3_cf6a_4e18_999b_b3cc7d855704_iout_17 = 2.31
 ; node:d554e287-199a-4c89-9e2e-54d92aa93d3c opcode:const_i
 i_d554e287_199a_4c89_9e2e_54d92aa93d3c_iout_20 = 0.01
 ; node:env_attack_const opcode:const_i
 i_env_attack_const_iout_4 = 0.004
 ; node:env_decay_const opcode:const_i
 i_env_decay_const_iout_5 = 0.18
 ; node:env_release_const opcode:const_i
 i_env_release_const_iout_7 = 0.12
 ; node:env_sustain_const opcode:const_i
 i_env_sustain_const_iout_6 = 0.6
 ; node:f0380239-ea6b-4dba-b046-38a2bf8ad64c opcode:const_i
 i_f0380239_ea6b_4dba_b046_38a2bf8ad64c_iout_25 = 1
 ; node:f849b0f4-83f3-4df6-b0b1-d9d46b9184d7 opcode:const_i
 i_f849b0f4_83f3_4df6_b0b1_d9d46b9184d7_iout_14 = 0
 ; node:fm_metal_gain opcode:const_k
 k_fm_metal_gain_kout_7 = 0.16
 ; node:hard_square_gain opcode:const_k
 k_hard_square_gain_kout_5 = 0.22
 ; node:main_saw_gain opcode:const_k
 k_main_saw_gain_kout_3 = 0.4
 ; node:pitch_cpsmidi opcode:cpsmidi
 i_pitch_cpsmidi_kfreq_1 = cpsmidinn(p4)
 ; node:velocity_scale_const opcode:const_i
 i_velocity_scale_const_iout_2 = 1
 ; node:0c5c8279-1996-4eb3-a419-a69ed2ae6cea opcode:lfo
 k_0c5c8279_1996_4eb3_a419_a69ed2ae6cea_kout_9 lfo i_21b24d47_2e80_40c1_9092_185bf846a50a_iout_12, i_6f10c95a_dd3e_4048_9e4b_536a0844e666_iout_13, 0
 ; node:216a8f7b-889c-4176-8306-656644165320 opcode:xtratim
 xtratim i_a18abe1d_60d3_47a9_9aa2_c93511d1efff_iout_26
 ; node:69e67874-368a-4e56-b7d6-b508fb8bac98 opcode:lfo
 k_69e67874_368a_4e56_b7d6_b508fb8bac98_kout_10 lfo i_2691609c_db5f_4cb3_b31a_b73cc07f3f2b_iout_18, i_c301c9e3_cf6a_4e18_999b_b3cc7d855704_iout_17, 0
 ; node:amp_madsr opcode:madsr
 k_amp_madsr_kenv_1 madsr i_env_attack_const_iout_4, i_env_decay_const_iout_5, i_env_sustain_const_iout_6, i_env_release_const_iout_7, 0, -1
 ; node:f42da3ba-cace-4541-9a5a-2cd5e9132e59 opcode:expon
 k_f42da3ba_cace_4541_9a5a_2cd5e9132e59_kenv_11 expon i_b507b571_240d_4fab_86d7_0d95a2aa31b3_iout_23, i_3e2ddfdd_3093_4c4a_a728_7349f6137c66_iout_24, i_f0380239_ea6b_4dba_b046_38a2bf8ad64c_iout_25
 ; node:velocity_ampmidi opcode:ampmidi
 i_velocity_ampmidi_iamp_3 = ((p5 / 128) * (i_velocity_scale_const_iout_2))
 ; node:amp_velocity_envelope opcode:k_mul
 k_amp_velocity_envelope_kout_2 = (i_velocity_ampmidi_iamp_3) * (k_amp_madsr_kenv_1)
 ; node:main_saw_amp opcode:k_mul
 k_main_saw_amp_kout_4 = (k_amp_velocity_envelope_kout_2) * (k_main_saw_gain_kout_3)
 ; node:hard_square_amp opcode:k_mul
 k_hard_square_amp_kout_6 = (k_amp_velocity_envelope_kout_2) * (k_hard_square_gain_kout_5)
 ; node:fm_metal_amp opcode:k_mul
 k_fm_metal_amp_kout_8 = (k_amp_velocity_envelope_kout_2) * (k_fm_metal_gain_kout_7)
 ; node:main_saw_vco2 opcode:vco2
 a_main_saw_vco2_asig_1 vco2 k_main_saw_amp_kout_4, i_pitch_cpsmidi_kfreq_1, i_229006e9_b4b0_4135_9e82_feb0bc43c49b_iout_19, i_d554e287_199a_4c89_9e2e_54d92aa93d3c_iout_20, 0, 0.5
 ; node:hard_square_vco2 opcode:vco2
 a_hard_square_vco2_asig_2 vco2 k_hard_square_amp_kout_6, i_pitch_cpsmidi_kfreq_1, i_229006e9_b4b0_4135_9e82_feb0bc43c49b_iout_19, (k_69e67874_368a_4e56_b7d6_b508fb8bac98_kout_10 + i_73ee2805_cad4_4b97_af96_89e3b24bca48_iout_16), 0, 0.5
 ; node:fm_metal_foscili opcode:foscili
 a_fm_metal_foscili_asig_3 foscili k_fm_metal_amp_kout_8, i_pitch_cpsmidi_kfreq_1, 1, i_149651e0_c40c_4996_9966_407254393b09_iout_15, (i_73ee2805_cad4_4b97_af96_89e3b24bca48_iout_16 + k_69e67874_368a_4e56_b7d6_b508fb8bac98_kout_10), 1, 0
 ; node:layer_mix_1 opcode:mix2
 a_layer_mix_1_aout_4 = (a_main_saw_vco2_asig_1) + (a_hard_square_vco2_asig_2)
 ; node:layer_mix_2 opcode:mix2
 a_layer_mix_2_aout_5 = (a_layer_mix_1_aout_4) + (a_fm_metal_foscili_asig_3)
 ; node:effect_1_butterhp opcode:butterhp
 a_effect_1_butterhp_aout_6 butterhp a_layer_mix_2_aout_5, ((i_063e9526_e2bd_4b85_adce_0a9e2bf3c33f_iout_8 * 0.3) * k_f42da3ba_cace_4541_9a5a_2cd5e9132e59_kenv_11), 0
 ; node:effect_2_distort1 opcode:distort1
 a_effect_2_distort1_aout_7 distort1 a_effect_1_butterhp_aout_6, i_74d710f0_2295_4dae_b82a_48053d610bdf_iout_21, i_3913361b_61a4_4a60_af01_7724039e3d64_iout_22, 0.12, 0.12, 1
 ; node:effect_3_moogladder2 opcode:moogladder2
 a_effect_3_moogladder2_aout_8 moogladder2 a_effect_2_distort1_aout_7, (i_063e9526_e2bd_4b85_adce_0a9e2bf3c33f_iout_8 * (((5 * k_amp_madsr_kenv_1) + 0.1))), i_c019a356_69aa_4470_9d38_1b740e1dec56_iout_9
 ; node:effect_4_flanger opcode:flanger
 a_effect_4_flanger_aout_9 flanger a_effect_3_moogladder2_aout_8, a((i_61c422e3_a830_4ac6_9ca2_7223fd380909_iout_10 * ((0.7 + (0.3 * k_0c5c8279_1996_4eb3_a419_a69ed2ae6cea_kout_9))))), i_19871f98_4155_4614_a3a5_e51041d3608d_iout_11, 0.02
 ; node:28f2f10b-b5ae-43d4-b6ca-f8ba72c5b38b opcode:pan2
 a_28f2f10b_b5ae_43d4_b6ca_f8ba72c5b38b_aleft_10, a_28f2f10b_b5ae_43d4_b6ca_f8ba72c5b38b_aright_11 pan2 (a_effect_4_flanger_aout_9 * 0.3), i_8273dc0e_a85f_44f2_9499_adb494bb9339_iout_27, 0
 ; node:508d8a26-4b27-44e8-97f3-6e0e4fc02bb1 opcode:outleta
 outleta "left", a_28f2f10b_b5ae_43d4_b6ca_f8ba72c5b38b_aleft_10
 ; node:932e62fa-3181-424e-82ea-02454020d908 opcode:outleta
 outleta "right", a_28f2f10b_b5ae_43d4_b6ca_f8ba72c5b38b_aright_11
endin

; mixer stage patch:eabfdd82-d96f-44cd-ac33-6617c708a9cb
; patch:979b006c-d2a5-47c1-836c-9f3f30453ddf name:Analog Drumkit channel:8 always_on:false
; instance:eabfdd82-d96f-44cd-ac33-6617c708a9cb csound:vcs_mix_820dd0bd33c8b60a88195ed9
; description: Five velocity-sensitive analog synthesis voices selected by MIDI notnum through Switch. MIDI notenum 35: Bass drum (pitch-swept sine + click); 36: Bass drum distorted (saturated sine + click); 46: Hi-hat open (700 ms); 42: Hi-hat closed (85 ms); 38: Snare (two sine resonances + filtered noise). Hats use six inharmonic square oscillators plus noise. One-shot decays survive short MIDI note-offs. Silent default; stereo output; no samples. GM bass-drum slot 36 is used for the distorted variation.
; trigger: MIDI channel 8 / score notes; score instrument number: 11
instr vcs_mix_820dd0bd33c8b60a88195ed9
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
   i_9da04da0_dadc_4020_888b_dec37077e0bc_iout_6 chnget "__vcs_perf_dd7aa82c1b3a597b1f3120cc6fa381e453d456a792e323a7884a23eafa008b73"
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
   i_1a9be505_b7fe_4d12_a783_60346b810c6a_iout_7 chnget "__vcs_perf_520bcea7b43ae5d54a96e05a7fda105ce2d9f702123c94917a8bd1498461e2c0"
   i_460f9e29_fa38_4055_8f7b_c9f7d7ebe7aa_iout_5 chnget "__vcs_perf_e13aff939298661788de62eeb33796abc09d3e70a5da5b68d1f3fb6024052fd5"
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
   i_ddccf62d_f9e6_49f3_a0dc_f438c7783415_iout_4 chnget "__vcs_perf_f5ca75a87855f62fc3cafdfc0e17d54717613839b563f8e24341082c94d224d3"
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

; mixer stage patch:f5b3e51b-b01d-4673-9cd6-6e907fd988ad
; patch:006e4f9e-8822-4dc6-bec3-9d806c689672 name:Undertow Motion Pad channel:1 always_on:false
; instance:f5b3e51b-b01d-4673-9cd6-6e907fd988ad csound:vcs_mix_dfef5439c127e30b121252ef
; description: Dark triangle and PWM pulse pad. Sine LFO moves pulse width from 0.32 to 0.68 and filter cutoff from 70% to 130% of Tone. Motion is Hz, not tempo sync. Suggested MIDI notes 43–79. Dry, velocity-sensitive, polyphonic. Three per-instance controls read on new notes. Route Stereo Output through the performance mixer to Master.
; trigger: MIDI channel 1 / score notes; score instrument number: 12
instr vcs_mix_dfef5439c127e30b121252ef
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
 i_undertow_motion_iout_8 chnget "__vcs_perf_952fbd2b2abec3807452b9e9be9357511fde6bc76ec9e572560c2217ade6fe05"
 i_undertow_release_iout_9 chnget "__vcs_perf_3991c34dae1c1c9bba7e2d2fadbf60868cec239ce85c4cc4121bdf0a88af9674"
 i_undertow_tone_iout_7 chnget "__vcs_perf_6fba197bdf50091e6fc7d292291d1728e9cc13abcc0d4d33dea94adedc005fd3"
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

; mixer stage patch:f7c7c61b-3518-4ab6-a326-8cdde9f87f98
; patch:12edeed5-ce05-43a1-9ec8-34878753dec2 name:Furnace Techno Stab channel:3 always_on:false
; instance:f7c7c61b-3518-4ab6-a326-8cdde9f87f98 csound:vcs_mix_d0469c4c83473ecdd4b828f3
; description: Saw and square at one played pitch, saturated into an envelope-swept resonant filter. Play your own chords; no fixed chord or unison. Suggested MIDI notes 43–79. Dry, velocity-sensitive, polyphonic. Three per-instance controls read on new notes. Route Stereo Output through the performance mixer to Master.
; trigger: MIDI channel 3 / score notes; score instrument number: 13
instr vcs_mix_d0469c4c83473ecdd4b828f3
 i_vcs_internal_score_note_p4 = p4
 i_vcs_internal_score_velocity_p5 = p5
 ; node:env_attack_const opcode:const_i
 i_env_attack_const_iout_4 = 0.003
 ; node:env_release_const opcode:const_i
 i_env_release_const_iout_6 = 0.08
 ; node:env_sustain_const opcode:const_i
 i_env_sustain_const_iout_5 = 0
 i_furnace_decay_iout_8 chnget "__vcs_perf_e236d88505b64faa9cba81ba8289b083044371ead60eea9c2f66e01c507517bb"
 i_furnace_drive_iout_9 chnget "__vcs_perf_a78919516a5d78084b37158949ee30fdb11f6dcf769bd3cf4b7d854d23916262"
 i_furnace_tone_iout_7 chnget "__vcs_perf_1b1f1b19a4aee0a21261accf09f47289b6f7bf667d434f0f9b68f998816d37e7"
 ; node:pitch_cpsmidi opcode:cpsmidi
 i_pitch_cpsmidi_kfreq_1 = cpsmidinn(p4)
 ; node:saw_gain opcode:const_k
 k_saw_gain_kout_3 = 0.45
 ; node:square_gain opcode:const_k
 k_square_gain_kout_5 = 0.3
 ; node:velocity_scale_const opcode:const_i
 i_velocity_scale_const_iout_2 = 1
 ; node:amp_madsr opcode:madsr
 k_amp_madsr_kenv_1 madsr i_env_attack_const_iout_4, i_furnace_decay_iout_8, i_env_sustain_const_iout_5, i_env_release_const_iout_6, 0, -1
 ; node:velocity_ampmidi opcode:ampmidi
 i_velocity_ampmidi_iamp_3 = ((p5 / 128) * (i_velocity_scale_const_iout_2))
 ; node:amp_velocity_envelope opcode:k_mul
 k_amp_velocity_envelope_kout_2 = (i_velocity_ampmidi_iamp_3) * (k_amp_madsr_kenv_1)
 ; node:saw_amp opcode:k_mul
 k_saw_amp_kout_4 = (k_amp_velocity_envelope_kout_2) * (k_saw_gain_kout_3)
 ; node:square_amp opcode:k_mul
 k_square_amp_kout_6 = (k_amp_velocity_envelope_kout_2) * (k_square_gain_kout_5)
 ; node:saw_vco2 opcode:vco2
 a_saw_vco2_asig_1 vco2 k_saw_amp_kout_4, i_pitch_cpsmidi_kfreq_1, 0, 0.5, 0, 0.5
 ; node:square_vco2 opcode:vco2
 a_square_vco2_asig_2 vco2 k_square_amp_kout_6, i_pitch_cpsmidi_kfreq_1, 2, 0.5, 0.25, 0.5
 ; node:layer_mix_1 opcode:mix2
 a_layer_mix_1_aout_3 = (a_saw_vco2_asig_1) + (a_square_vco2_asig_2)
 ; node:effect_1_distort1 opcode:distort1
 a_effect_1_distort1_aout_4 distort1 a_layer_mix_1_aout_3, i_furnace_drive_iout_9, 0.25, 0, 0, 1
 ; node:effect_2_moogladder2 opcode:moogladder2
 a_effect_2_moogladder2_aout_5 moogladder2 a_effect_1_distort1_aout_4, (i_furnace_tone_iout_7 * ((1 + k_amp_madsr_kenv_1))), 0.28
 ; node:effect_3_butterhp opcode:butterhp
 a_effect_3_butterhp_aout_6 butterhp a_effect_2_moogladder2_aout_5, 100, 0
 ; node:output_pan2 opcode:pan2
 a_output_pan2_aleft_7, a_output_pan2_aright_8 pan2 ((a_effect_3_butterhp_aout_6 * 0.85) * 10), 0.5, 0
 ; node:output_left opcode:outleta
 outleta "left", a_output_pan2_aleft_7
 ; node:output_right opcode:outleta
 outleta "right", a_output_pan2_aright_8
endin

; mixer stage strip:051948ac-ebf9-43ec-8bf3-df399a268365
; mixer strip: Psy Rotor Bass [051948ac-ebf9-43ec-8bf3-df399a268365]
; initial gain: -2.5 dB; balance/pan: 0.15; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_9152adbd4f9979234fa00f60
 k_meter metro 15
 k_gain chnget "__vcs_mixer_strip_b9da087f272fb5e723933d0d_gain"
 a_gain vcs_mixer_ramp k_gain, 0.74989420933245587
 k_left chnget "__vcs_mixer_strip_b9da087f272fb5e723933d0d_left"
 a_left vcs_mixer_ramp k_left, 0.84999999999999998
 k_right chnget "__vcs_mixer_strip_b9da087f272fb5e723933d0d_right"
 a_right vcs_mixer_ramp k_right, 1
 k_mute chnget "__vcs_mixer_strip_b9da087f272fb5e723933d0d_mute"
 a_mute vcs_mixer_ramp k_mute, 1
 a_p_360f84035942243c6a36537a inleta "p_360f84035942243c6a36537a"
 a_p_360f84035942243c6a36537a_post = a_p_360f84035942243c6a36537a * a_gain * a_left
 a_p_27042f4e6eca7d0b2a7ee402 inleta "p_27042f4e6eca7d0b2a7ee402"
 a_p_27042f4e6eca7d0b2a7ee402_post = a_p_27042f4e6eca7d0b2a7ee402 * a_gain * a_right
 a_meter_left = a_p_360f84035942243c6a36537a_post * a_mute
 a_meter_right = a_p_27042f4e6eca7d0b2a7ee402_post * a_mute
 k_peakL max_k a_meter_left, k_meter, 1
 k_rmsL rms a_meter_left
 chnset k_peakL / 1.0, "__vcs_mixer_meter_b9da087f272fb5e723933d0d_peakL"
 chnset k_rmsL / 1.0, "__vcs_mixer_meter_b9da087f272fb5e723933d0d_rmsL"
 k_peakR max_k a_meter_right, k_meter, 1
 k_rmsR rms a_meter_right
 chnset k_peakR / 1.0, "__vcs_mixer_meter_b9da087f272fb5e723933d0d_peakR"
 chnset k_rmsR / 1.0, "__vcs_mixer_meter_b9da087f272fb5e723933d0d_rmsR"
 outleta "pre_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a
 outleta "post_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a_post
 outleta "pre_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402
 outleta "post_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402_post
endin

; mixer stage route:107a3ffc-60e2-476d-95bd-587349632195
; audio route:107a3ffc-60e2-476d-95bd-587349632195 kind:send
; from: Psy Rotor Bass [051948ac-ebf9-43ec-8bf3-df399a268365] port:left stage:strip -> Reverb Effect [83a4e643-b5d2-428b-b893-07f83614d0ef] port:left stage:input
; tap: post-fader; initial route gain: -22.2 dB; source mute and mixer solo gate this route.
instr vcs_mix_bf40d7bbfd0bc17d72854104
 k_post chnget "__vcs_mixer_route_85942b72be0bb4c9f548ef38_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_85942b72be0bb4c9f548ef38_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_85942b72be0bb4c9f548ef38_gain"
 a_send vcs_mixer_ramp k_send, 0.077624711662869161
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:3d9eb4b9-8850-4c2b-8761-7d5281679335
; audio route:3d9eb4b9-8850-4c2b-8761-7d5281679335 kind:main
; from: Psy Rotor Bass [051948ac-ebf9-43ec-8bf3-df399a268365] port:right stage:strip -> Compressor Effect [e6868d20-5ec4-444c-9d43-fe4115692097] port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_76dac9c487deb7fc5fc7cad2
 k_post chnget "__vcs_mixer_route_a30c7f1aaac6106b60c8bf1e_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_a30c7f1aaac6106b60c8bf1e_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_a30c7f1aaac6106b60c8bf1e_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:4e9a7ae1-39d8-461d-b262-7fc74fc928b2
; audio route:4e9a7ae1-39d8-461d-b262-7fc74fc928b2 kind:send
; from: Psy Rotor Bass [051948ac-ebf9-43ec-8bf3-df399a268365] port:right stage:strip -> Reverb Effect [83a4e643-b5d2-428b-b893-07f83614d0ef] port:right stage:input
; tap: post-fader; initial route gain: -22.2 dB; source mute and mixer solo gate this route.
instr vcs_mix_196fd89531c3ff1fbc6d14e0
 k_post chnget "__vcs_mixer_route_f5e6bfb58a21758867bddcc0_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_f5e6bfb58a21758867bddcc0_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_f5e6bfb58a21758867bddcc0_gain"
 a_send vcs_mixer_ramp k_send, 0.077624711662869161
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:79d8857b-9e1d-4d93-ba94-04f660d75c5c
; audio route:79d8857b-9e1d-4d93-ba94-04f660d75c5c kind:main
; from: Psy Rotor Bass [051948ac-ebf9-43ec-8bf3-df399a268365] port:left stage:strip -> Compressor Effect [e6868d20-5ec4-444c-9d43-fe4115692097] port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_98059306e38eda156aa00315
 k_post chnget "__vcs_mixer_route_cc66606b123efcd807c3bcc9_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_cc66606b123efcd807c3bcc9_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_cc66606b123efcd807c3bcc9_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage strip:05624905-6283-4138-ab16-f4161548d16b
; mixer strip: Rubber Core FM Bass [05624905-6283-4138-ab16-f4161548d16b]
; initial gain: -4 dB; balance/pan: -0.19; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_41f59d49bae86a0bb110a8a1
 k_meter metro 15
 k_gain chnget "__vcs_mixer_strip_44d513e47c631f99f7a3e562_gain"
 a_gain vcs_mixer_ramp k_gain, 0.63095734448019325
 k_left chnget "__vcs_mixer_strip_44d513e47c631f99f7a3e562_left"
 a_left vcs_mixer_ramp k_left, 1
 k_right chnget "__vcs_mixer_strip_44d513e47c631f99f7a3e562_right"
 a_right vcs_mixer_ramp k_right, 0.81000000000000005
 k_mute chnget "__vcs_mixer_strip_44d513e47c631f99f7a3e562_mute"
 a_mute vcs_mixer_ramp k_mute, 1
 a_p_360f84035942243c6a36537a inleta "p_360f84035942243c6a36537a"
 a_p_360f84035942243c6a36537a_post = a_p_360f84035942243c6a36537a * a_gain * a_left
 a_p_27042f4e6eca7d0b2a7ee402 inleta "p_27042f4e6eca7d0b2a7ee402"
 a_p_27042f4e6eca7d0b2a7ee402_post = a_p_27042f4e6eca7d0b2a7ee402 * a_gain * a_right
 a_meter_left = a_p_360f84035942243c6a36537a_post * a_mute
 a_meter_right = a_p_27042f4e6eca7d0b2a7ee402_post * a_mute
 k_peakL max_k a_meter_left, k_meter, 1
 k_rmsL rms a_meter_left
 chnset k_peakL / 1.0, "__vcs_mixer_meter_44d513e47c631f99f7a3e562_peakL"
 chnset k_rmsL / 1.0, "__vcs_mixer_meter_44d513e47c631f99f7a3e562_rmsL"
 k_peakR max_k a_meter_right, k_meter, 1
 k_rmsR rms a_meter_right
 chnset k_peakR / 1.0, "__vcs_mixer_meter_44d513e47c631f99f7a3e562_peakR"
 chnset k_rmsR / 1.0, "__vcs_mixer_meter_44d513e47c631f99f7a3e562_rmsR"
 outleta "pre_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a
 outleta "post_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a_post
 outleta "pre_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402
 outleta "post_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402_post
endin

; mixer stage route:339a2fb9-b277-4bf7-a8b6-5ec2395126f3
; audio route:339a2fb9-b277-4bf7-a8b6-5ec2395126f3 kind:send
; from: Rubber Core FM Bass [05624905-6283-4138-ab16-f4161548d16b] port:left stage:strip -> Reverb Effect [83a4e643-b5d2-428b-b893-07f83614d0ef] port:left stage:input
; tap: post-fader; initial route gain: -19.1 dB; source mute and mixer solo gate this route.
instr vcs_mix_7afadbee9b0c3fa70e976250
 k_post chnget "__vcs_mixer_route_5904028fef78407b0749cf13_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_5904028fef78407b0749cf13_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_5904028fef78407b0749cf13_gain"
 a_send vcs_mixer_ramp k_send, 0.11091748152624009
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:8a484ff2-f296-4ea6-9f3d-258af1c7f087
; audio route:8a484ff2-f296-4ea6-9f3d-258af1c7f087 kind:main
; from: Rubber Core FM Bass [05624905-6283-4138-ab16-f4161548d16b] port:left stage:strip -> Compressor Effect [e6868d20-5ec4-444c-9d43-fe4115692097] port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_eb05476ab8a7bca004e6aa15
 k_post chnget "__vcs_mixer_route_e73ee7621eb3a4c13901ea8b_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_e73ee7621eb3a4c13901ea8b_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_e73ee7621eb3a4c13901ea8b_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:8bbf7aff-6644-4a73-b9a5-ab08e8a0a3d0
; audio route:8bbf7aff-6644-4a73-b9a5-ab08e8a0a3d0 kind:send
; from: Rubber Core FM Bass [05624905-6283-4138-ab16-f4161548d16b] port:right stage:strip -> Reverb Effect [83a4e643-b5d2-428b-b893-07f83614d0ef] port:right stage:input
; tap: post-fader; initial route gain: -19.1 dB; source mute and mixer solo gate this route.
instr vcs_mix_8cc4c5a31fca54fff161bbd8
 k_post chnget "__vcs_mixer_route_df5d3b33795c697587450e2f_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_df5d3b33795c697587450e2f_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_df5d3b33795c697587450e2f_gain"
 a_send vcs_mixer_ramp k_send, 0.11091748152624009
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:c337f609-5e93-47db-8e2d-bfbaa22b4669
; audio route:c337f609-5e93-47db-8e2d-bfbaa22b4669 kind:main
; from: Rubber Core FM Bass [05624905-6283-4138-ab16-f4161548d16b] port:right stage:strip -> Compressor Effect [e6868d20-5ec4-444c-9d43-fe4115692097] port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_5ac8bd6ec7cab5b3e43b9b28
 k_post chnget "__vcs_mixer_route_d8b1e8dcc8eb12889af9661c_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_d8b1e8dcc8eb12889af9661c_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_d8b1e8dcc8eb12889af9661c_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage strip:10663596-a11f-4ab9-a028-b61242369c74
; mixer strip: TB303 style Bass [10663596-a11f-4ab9-a028-b61242369c74]
; initial gain: 0 dB; balance/pan: -0.54; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_b6b0d23858a7c7ab2ec02e72
 k_meter metro 15
 k_gain chnget "__vcs_mixer_strip_a6256f0694d7a38eb55eee87_gain"
 a_gain vcs_mixer_ramp k_gain, 1
 k_left chnget "__vcs_mixer_strip_a6256f0694d7a38eb55eee87_left"
 a_left vcs_mixer_ramp k_left, 1
 k_right chnget "__vcs_mixer_strip_a6256f0694d7a38eb55eee87_right"
 a_right vcs_mixer_ramp k_right, 0.45999999999999996
 k_mute chnget "__vcs_mixer_strip_a6256f0694d7a38eb55eee87_mute"
 a_mute vcs_mixer_ramp k_mute, 1
 a_p_360f84035942243c6a36537a inleta "p_360f84035942243c6a36537a"
 a_p_360f84035942243c6a36537a_post = a_p_360f84035942243c6a36537a * a_gain * a_left
 a_p_27042f4e6eca7d0b2a7ee402 inleta "p_27042f4e6eca7d0b2a7ee402"
 a_p_27042f4e6eca7d0b2a7ee402_post = a_p_27042f4e6eca7d0b2a7ee402 * a_gain * a_right
 a_meter_left = a_p_360f84035942243c6a36537a_post * a_mute
 a_meter_right = a_p_27042f4e6eca7d0b2a7ee402_post * a_mute
 k_peakL max_k a_meter_left, k_meter, 1
 k_rmsL rms a_meter_left
 chnset k_peakL / 1.0, "__vcs_mixer_meter_a6256f0694d7a38eb55eee87_peakL"
 chnset k_rmsL / 1.0, "__vcs_mixer_meter_a6256f0694d7a38eb55eee87_rmsL"
 k_peakR max_k a_meter_right, k_meter, 1
 k_rmsR rms a_meter_right
 chnset k_peakR / 1.0, "__vcs_mixer_meter_a6256f0694d7a38eb55eee87_peakR"
 chnset k_rmsR / 1.0, "__vcs_mixer_meter_a6256f0694d7a38eb55eee87_rmsR"
 outleta "pre_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a
 outleta "post_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a_post
 outleta "pre_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402
 outleta "post_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402_post
endin

; mixer stage route:666116af-1c39-47b5-9562-4331f1c52d67
; audio route:666116af-1c39-47b5-9562-4331f1c52d67 kind:send
; from: TB303 style Bass [10663596-a11f-4ab9-a028-b61242369c74] port:left stage:strip -> Reverb Effect [83a4e643-b5d2-428b-b893-07f83614d0ef] port:left stage:input
; tap: post-fader; initial route gain: -50.2 dB; source mute and mixer solo gate this route.
instr vcs_mix_6ce8c161a4881ef23d7228db
 k_post chnget "__vcs_mixer_route_b901b446594dfdde9ac11226_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_b901b446594dfdde9ac11226_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_b901b446594dfdde9ac11226_gain"
 a_send vcs_mixer_ramp k_send, 0.003090295432513589
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:742f7ce3-5592-4e98-9776-1df63938db52
; audio route:742f7ce3-5592-4e98-9776-1df63938db52 kind:main
; from: TB303 style Bass [10663596-a11f-4ab9-a028-b61242369c74] port:right stage:strip -> Compressor Effect [e6868d20-5ec4-444c-9d43-fe4115692097] port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_4385eae94f347b60ff1a523f
 k_post chnget "__vcs_mixer_route_934341a03a3226b4537ad15f_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_934341a03a3226b4537ad15f_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_934341a03a3226b4537ad15f_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:ccacd8f8-6a42-41ca-93bf-2c82583f33a8
; audio route:ccacd8f8-6a42-41ca-93bf-2c82583f33a8 kind:send
; from: TB303 style Bass [10663596-a11f-4ab9-a028-b61242369c74] port:right stage:strip -> Reverb Effect [83a4e643-b5d2-428b-b893-07f83614d0ef] port:right stage:input
; tap: post-fader; initial route gain: -50.2 dB; source mute and mixer solo gate this route.
instr vcs_mix_e23d5820464c82d1c3f1ecb6
 k_post chnget "__vcs_mixer_route_d7f17e412b1e26334d506d5d_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_d7f17e412b1e26334d506d5d_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_d7f17e412b1e26334d506d5d_gain"
 a_send vcs_mixer_ramp k_send, 0.003090295432513589
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:f7113919-faeb-4754-9bf9-f1da28825513
; audio route:f7113919-faeb-4754-9bf9-f1da28825513 kind:main
; from: TB303 style Bass [10663596-a11f-4ab9-a028-b61242369c74] port:left stage:strip -> Compressor Effect [e6868d20-5ec4-444c-9d43-fe4115692097] port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_1d7fea538bc1ccd2882951fb
 k_post chnget "__vcs_mixer_route_77fb424075875a8de636592c_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_77fb424075875a8de636592c_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_77fb424075875a8de636592c_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage strip:22da2642-cc40-4022-b247-6744a601b60f
; mixer strip: Event Horizon Riser [22da2642-cc40-4022-b247-6744a601b60f]
; initial gain: 4.7 dB; balance/pan: -0.64; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_8929c5bcc40fd958387d739d
 k_meter metro 15
 k_gain chnget "__vcs_mixer_strip_bfc1a1b7430c287732affae4_gain"
 a_gain vcs_mixer_ramp k_gain, 1.7179083871575882
 k_left chnget "__vcs_mixer_strip_bfc1a1b7430c287732affae4_left"
 a_left vcs_mixer_ramp k_left, 1
 k_right chnget "__vcs_mixer_strip_bfc1a1b7430c287732affae4_right"
 a_right vcs_mixer_ramp k_right, 0.35999999999999999
 k_mute chnget "__vcs_mixer_strip_bfc1a1b7430c287732affae4_mute"
 a_mute vcs_mixer_ramp k_mute, 1
 a_p_360f84035942243c6a36537a inleta "p_360f84035942243c6a36537a"
 a_p_360f84035942243c6a36537a_post = a_p_360f84035942243c6a36537a * a_gain * a_left
 a_p_27042f4e6eca7d0b2a7ee402 inleta "p_27042f4e6eca7d0b2a7ee402"
 a_p_27042f4e6eca7d0b2a7ee402_post = a_p_27042f4e6eca7d0b2a7ee402 * a_gain * a_right
 a_meter_left = a_p_360f84035942243c6a36537a_post * a_mute
 a_meter_right = a_p_27042f4e6eca7d0b2a7ee402_post * a_mute
 k_peakL max_k a_meter_left, k_meter, 1
 k_rmsL rms a_meter_left
 chnset k_peakL / 1.0, "__vcs_mixer_meter_bfc1a1b7430c287732affae4_peakL"
 chnset k_rmsL / 1.0, "__vcs_mixer_meter_bfc1a1b7430c287732affae4_rmsL"
 k_peakR max_k a_meter_right, k_meter, 1
 k_rmsR rms a_meter_right
 chnset k_peakR / 1.0, "__vcs_mixer_meter_bfc1a1b7430c287732affae4_peakR"
 chnset k_rmsR / 1.0, "__vcs_mixer_meter_bfc1a1b7430c287732affae4_rmsR"
 outleta "pre_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a
 outleta "post_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a_post
 outleta "pre_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402
 outleta "post_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402_post
endin

; mixer stage route:0f29a8cb-2d79-4057-818d-368db9d01de6
; audio route:0f29a8cb-2d79-4057-818d-368db9d01de6 kind:main
; from: Event Horizon Riser [22da2642-cc40-4022-b247-6744a601b60f] port:left stage:strip -> Compressor Effect [e6868d20-5ec4-444c-9d43-fe4115692097] port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_471af3743ff16a0d8f72f5ab
 k_post chnget "__vcs_mixer_route_5d7c201c2b1bc8b6a06c0402_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_5d7c201c2b1bc8b6a06c0402_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_5d7c201c2b1bc8b6a06c0402_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:1928dd67-943b-4be8-9f3d-2366d7365033
; audio route:1928dd67-943b-4be8-9f3d-2366d7365033 kind:send
; from: Event Horizon Riser [22da2642-cc40-4022-b247-6744a601b60f] port:right stage:strip -> Reverb Effect [83a4e643-b5d2-428b-b893-07f83614d0ef] port:right stage:input
; tap: post-fader; initial route gain: -1.1 dB; source mute and mixer solo gate this route.
instr vcs_mix_03cba347a182a33969acb2cb
 k_post chnget "__vcs_mixer_route_46f875c3b474ce8c98617728_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_46f875c3b474ce8c98617728_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_46f875c3b474ce8c98617728_gain"
 a_send vcs_mixer_ramp k_send, 0.88104887300801404
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:2632be15-6bfb-4e29-aaf1-f45cbed351c1
; audio route:2632be15-6bfb-4e29-aaf1-f45cbed351c1 kind:send
; from: Event Horizon Riser [22da2642-cc40-4022-b247-6744a601b60f] port:left stage:strip -> Reverb Effect [83a4e643-b5d2-428b-b893-07f83614d0ef] port:left stage:input
; tap: post-fader; initial route gain: -1.1 dB; source mute and mixer solo gate this route.
instr vcs_mix_3fa1361afef1b5caad87f11b
 k_post chnget "__vcs_mixer_route_5999c467d7fc1272efcc324c_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_5999c467d7fc1272efcc324c_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_5999c467d7fc1272efcc324c_gain"
 a_send vcs_mixer_ramp k_send, 0.88104887300801404
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:f8480321-7d2f-4771-87ac-7dca5cb21c03
; audio route:f8480321-7d2f-4771-87ac-7dca5cb21c03 kind:main
; from: Event Horizon Riser [22da2642-cc40-4022-b247-6744a601b60f] port:right stage:strip -> Compressor Effect [e6868d20-5ec4-444c-9d43-fe4115692097] port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_4593d190d6d07a644767f4ca
 k_post chnget "__vcs_mixer_route_8c42b5ebd60e4df4dfa599ba_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_8c42b5ebd60e4df4dfa599ba_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_8c42b5ebd60e4df4dfa599ba_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage strip:2f97744d-6693-44e7-b2e2-08d84a51da6d
; mixer strip: Alloy Sequence Voice [2f97744d-6693-44e7-b2e2-08d84a51da6d]
; initial gain: 5.4 dB; balance/pan: -0.3; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_f616c599d1394aedcbebf807
 k_meter metro 15
 k_gain chnget "__vcs_mixer_strip_14559139f723d60468f91a4f_gain"
 a_gain vcs_mixer_ramp k_gain, 1.8620871366628675
 k_left chnget "__vcs_mixer_strip_14559139f723d60468f91a4f_left"
 a_left vcs_mixer_ramp k_left, 1
 k_right chnget "__vcs_mixer_strip_14559139f723d60468f91a4f_right"
 a_right vcs_mixer_ramp k_right, 0.69999999999999996
 k_mute chnget "__vcs_mixer_strip_14559139f723d60468f91a4f_mute"
 a_mute vcs_mixer_ramp k_mute, 1
 a_p_360f84035942243c6a36537a inleta "p_360f84035942243c6a36537a"
 a_p_360f84035942243c6a36537a_post = a_p_360f84035942243c6a36537a * a_gain * a_left
 a_p_27042f4e6eca7d0b2a7ee402 inleta "p_27042f4e6eca7d0b2a7ee402"
 a_p_27042f4e6eca7d0b2a7ee402_post = a_p_27042f4e6eca7d0b2a7ee402 * a_gain * a_right
 a_meter_left = a_p_360f84035942243c6a36537a_post * a_mute
 a_meter_right = a_p_27042f4e6eca7d0b2a7ee402_post * a_mute
 k_peakL max_k a_meter_left, k_meter, 1
 k_rmsL rms a_meter_left
 chnset k_peakL / 1.0, "__vcs_mixer_meter_14559139f723d60468f91a4f_peakL"
 chnset k_rmsL / 1.0, "__vcs_mixer_meter_14559139f723d60468f91a4f_rmsL"
 k_peakR max_k a_meter_right, k_meter, 1
 k_rmsR rms a_meter_right
 chnset k_peakR / 1.0, "__vcs_mixer_meter_14559139f723d60468f91a4f_peakR"
 chnset k_rmsR / 1.0, "__vcs_mixer_meter_14559139f723d60468f91a4f_rmsR"
 outleta "pre_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a
 outleta "post_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a_post
 outleta "pre_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402
 outleta "post_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402_post
endin

; mixer stage route:6415511d-e2a1-41f6-95f9-7dd36034199f
; audio route:6415511d-e2a1-41f6-95f9-7dd36034199f kind:main
; from: Alloy Sequence Voice [2f97744d-6693-44e7-b2e2-08d84a51da6d] port:right stage:strip -> Compressor Effect [e6868d20-5ec4-444c-9d43-fe4115692097] port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_d161a913d4f386c34b22a475
 k_post chnget "__vcs_mixer_route_fe338ba6c98a13b8fee998c7_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_fe338ba6c98a13b8fee998c7_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_fe338ba6c98a13b8fee998c7_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:9470c0db-8715-42e3-9a71-4e4a404b055b
; audio route:9470c0db-8715-42e3-9a71-4e4a404b055b kind:send
; from: Alloy Sequence Voice [2f97744d-6693-44e7-b2e2-08d84a51da6d] port:left stage:strip -> Reverb Effect [83a4e643-b5d2-428b-b893-07f83614d0ef] port:left stage:input
; tap: post-fader; initial route gain: 6 dB; source mute and mixer solo gate this route.
instr vcs_mix_32f21102db8a4718e2242c15
 k_post chnget "__vcs_mixer_route_f6ecc17fcf816ae2e2bf82ba_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_f6ecc17fcf816ae2e2bf82ba_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_f6ecc17fcf816ae2e2bf82ba_gain"
 a_send vcs_mixer_ramp k_send, 1.9952623149688795
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:ace8bfc8-76dd-485b-a3b3-505e4561c5cc
; audio route:ace8bfc8-76dd-485b-a3b3-505e4561c5cc kind:send
; from: Alloy Sequence Voice [2f97744d-6693-44e7-b2e2-08d84a51da6d] port:right stage:strip -> Reverb Effect [83a4e643-b5d2-428b-b893-07f83614d0ef] port:right stage:input
; tap: post-fader; initial route gain: 6 dB; source mute and mixer solo gate this route.
instr vcs_mix_b5230e80783cf5999155aef4
 k_post chnget "__vcs_mixer_route_1e397dc21f4378658e91b5e5_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_1e397dc21f4378658e91b5e5_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_1e397dc21f4378658e91b5e5_gain"
 a_send vcs_mixer_ramp k_send, 1.9952623149688795
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:e8644cad-55b9-4d86-96ee-ed48ec09a845
; audio route:e8644cad-55b9-4d86-96ee-ed48ec09a845 kind:main
; from: Alloy Sequence Voice [2f97744d-6693-44e7-b2e2-08d84a51da6d] port:left stage:strip -> Compressor Effect [e6868d20-5ec4-444c-9d43-fe4115692097] port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_a6f155646994ebd8a6357ffe
 k_post chnget "__vcs_mixer_route_030b0c1ee70d90df6cc290e9_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_030b0c1ee70d90df6cc290e9_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_030b0c1ee70d90df6cc290e9_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage strip:786c76df-2174-41fd-b95f-877e42d94975
; mixer strip: JP-8000 Supersaw [786c76df-2174-41fd-b95f-877e42d94975]
; initial gain: -6.1 dB; balance/pan: 0; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_899f076410de4fc4acd8fdd6
 k_meter metro 15
 k_gain chnget "__vcs_mixer_strip_c345ff0eaa07a4cf1d076198_gain"
 a_gain vcs_mixer_ramp k_gain, 0.49545019080479025
 k_left chnget "__vcs_mixer_strip_c345ff0eaa07a4cf1d076198_left"
 a_left vcs_mixer_ramp k_left, 1
 k_right chnget "__vcs_mixer_strip_c345ff0eaa07a4cf1d076198_right"
 a_right vcs_mixer_ramp k_right, 1
 k_mute chnget "__vcs_mixer_strip_c345ff0eaa07a4cf1d076198_mute"
 a_mute vcs_mixer_ramp k_mute, 1
 a_p_360f84035942243c6a36537a inleta "p_360f84035942243c6a36537a"
 a_p_360f84035942243c6a36537a_post = a_p_360f84035942243c6a36537a * a_gain * a_left
 a_p_27042f4e6eca7d0b2a7ee402 inleta "p_27042f4e6eca7d0b2a7ee402"
 a_p_27042f4e6eca7d0b2a7ee402_post = a_p_27042f4e6eca7d0b2a7ee402 * a_gain * a_right
 a_meter_left = a_p_360f84035942243c6a36537a_post * a_mute
 a_meter_right = a_p_27042f4e6eca7d0b2a7ee402_post * a_mute
 k_peakL max_k a_meter_left, k_meter, 1
 k_rmsL rms a_meter_left
 chnset k_peakL / 1.0, "__vcs_mixer_meter_c345ff0eaa07a4cf1d076198_peakL"
 chnset k_rmsL / 1.0, "__vcs_mixer_meter_c345ff0eaa07a4cf1d076198_rmsL"
 k_peakR max_k a_meter_right, k_meter, 1
 k_rmsR rms a_meter_right
 chnset k_peakR / 1.0, "__vcs_mixer_meter_c345ff0eaa07a4cf1d076198_peakR"
 chnset k_rmsR / 1.0, "__vcs_mixer_meter_c345ff0eaa07a4cf1d076198_rmsR"
 outleta "pre_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a
 outleta "post_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a_post
 outleta "pre_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402
 outleta "post_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402_post
endin

; mixer stage route:56d08534-2e54-45e1-9d7a-60e8f2c56c6f
; audio route:56d08534-2e54-45e1-9d7a-60e8f2c56c6f kind:main
; from: JP-8000 Supersaw [786c76df-2174-41fd-b95f-877e42d94975] port:left stage:strip -> Compressor Effect [e6868d20-5ec4-444c-9d43-fe4115692097] port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_2c6f8f01b3386940969a24fa
 k_post chnget "__vcs_mixer_route_ab636af1f47d3f846c91adcd_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_ab636af1f47d3f846c91adcd_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_ab636af1f47d3f846c91adcd_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:c9c3dce0-efe1-4c42-8cdb-63ecce7dac7b
; audio route:c9c3dce0-efe1-4c42-8cdb-63ecce7dac7b kind:send
; from: JP-8000 Supersaw [786c76df-2174-41fd-b95f-877e42d94975] port:right stage:strip -> Reverb Effect [83a4e643-b5d2-428b-b893-07f83614d0ef] port:right stage:input
; tap: post-fader; initial route gain: 4.5 dB; source mute and mixer solo gate this route.
instr vcs_mix_f2b20a5ef277f1d1849b8d86
 k_post chnget "__vcs_mixer_route_a846aca0bfe525d6f2040603_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_a846aca0bfe525d6f2040603_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_a846aca0bfe525d6f2040603_gain"
 a_send vcs_mixer_ramp k_send, 1.6788040181225603
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:e40ed0e5-19b6-466b-9508-8784183681d3
; audio route:e40ed0e5-19b6-466b-9508-8784183681d3 kind:send
; from: JP-8000 Supersaw [786c76df-2174-41fd-b95f-877e42d94975] port:left stage:strip -> Reverb Effect [83a4e643-b5d2-428b-b893-07f83614d0ef] port:left stage:input
; tap: post-fader; initial route gain: 4.5 dB; source mute and mixer solo gate this route.
instr vcs_mix_8e14ded79ce68847b3e66c04
 k_post chnget "__vcs_mixer_route_0613931e96821796b634d111_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_0613931e96821796b634d111_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_0613931e96821796b634d111_gain"
 a_send vcs_mixer_ramp k_send, 1.6788040181225603
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:e80cf191-65d1-4a8e-8746-0b16ebf03fa2
; audio route:e80cf191-65d1-4a8e-8746-0b16ebf03fa2 kind:main
; from: JP-8000 Supersaw [786c76df-2174-41fd-b95f-877e42d94975] port:right stage:strip -> Compressor Effect [e6868d20-5ec4-444c-9d43-fe4115692097] port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_118e05d62b2b5f15b84d4c2b
 k_post chnget "__vcs_mixer_route_97e56d52c2522952ccb1b07c_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_97e56d52c2522952ccb1b07c_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_97e56d52c2522952ccb1b07c_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage strip:b300f7fe-3b85-42c0-bac2-8f8bdfa84a34
; mixer strip: Prism FM Pluck [b300f7fe-3b85-42c0-bac2-8f8bdfa84a34]
; initial gain: -1.6 dB; balance/pan: -0.46; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_09c877bcef3d1b63094e6c61
 k_meter metro 15
 k_gain chnget "__vcs_mixer_strip_6cc32acc5b494446f03ac17b_gain"
 a_gain vcs_mixer_ramp k_gain, 0.83176377110267097
 k_left chnget "__vcs_mixer_strip_6cc32acc5b494446f03ac17b_left"
 a_left vcs_mixer_ramp k_left, 1
 k_right chnget "__vcs_mixer_strip_6cc32acc5b494446f03ac17b_right"
 a_right vcs_mixer_ramp k_right, 0.54000000000000004
 k_mute chnget "__vcs_mixer_strip_6cc32acc5b494446f03ac17b_mute"
 a_mute vcs_mixer_ramp k_mute, 1
 a_p_360f84035942243c6a36537a inleta "p_360f84035942243c6a36537a"
 a_p_360f84035942243c6a36537a_post = a_p_360f84035942243c6a36537a * a_gain * a_left
 a_p_27042f4e6eca7d0b2a7ee402 inleta "p_27042f4e6eca7d0b2a7ee402"
 a_p_27042f4e6eca7d0b2a7ee402_post = a_p_27042f4e6eca7d0b2a7ee402 * a_gain * a_right
 a_meter_left = a_p_360f84035942243c6a36537a_post * a_mute
 a_meter_right = a_p_27042f4e6eca7d0b2a7ee402_post * a_mute
 k_peakL max_k a_meter_left, k_meter, 1
 k_rmsL rms a_meter_left
 chnset k_peakL / 1.0, "__vcs_mixer_meter_6cc32acc5b494446f03ac17b_peakL"
 chnset k_rmsL / 1.0, "__vcs_mixer_meter_6cc32acc5b494446f03ac17b_rmsL"
 k_peakR max_k a_meter_right, k_meter, 1
 k_rmsR rms a_meter_right
 chnset k_peakR / 1.0, "__vcs_mixer_meter_6cc32acc5b494446f03ac17b_peakR"
 chnset k_rmsR / 1.0, "__vcs_mixer_meter_6cc32acc5b494446f03ac17b_rmsR"
 outleta "pre_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a
 outleta "post_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a_post
 outleta "pre_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402
 outleta "post_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402_post
endin

; mixer stage route:4e7bf48f-bd12-46e1-b420-c0f54bb33a65
; audio route:4e7bf48f-bd12-46e1-b420-c0f54bb33a65 kind:main
; from: Prism FM Pluck [b300f7fe-3b85-42c0-bac2-8f8bdfa84a34] port:left stage:strip -> Compressor Effect [e6868d20-5ec4-444c-9d43-fe4115692097] port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_7ef3e3a053f24f231d201d43
 k_post chnget "__vcs_mixer_route_5e4b8ac6df68947c9abf1454_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_5e4b8ac6df68947c9abf1454_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_5e4b8ac6df68947c9abf1454_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:652dd745-63f1-408d-b34f-8b6db902bfd6
; audio route:652dd745-63f1-408d-b34f-8b6db902bfd6 kind:send
; from: Prism FM Pluck [b300f7fe-3b85-42c0-bac2-8f8bdfa84a34] port:left stage:strip -> Reverb Effect [83a4e643-b5d2-428b-b893-07f83614d0ef] port:left stage:input
; tap: post-fader; initial route gain: -1.7 dB; source mute and mixer solo gate this route.
instr vcs_mix_d934fafb9df283be15ecf22c
 k_post chnget "__vcs_mixer_route_715ef9f48a5c69653ddebd2d_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_715ef9f48a5c69653ddebd2d_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_715ef9f48a5c69653ddebd2d_gain"
 a_send vcs_mixer_ramp k_send, 0.82224264994707108
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:de6a29a0-c019-4aa1-b011-4c640ec32313
; audio route:de6a29a0-c019-4aa1-b011-4c640ec32313 kind:main
; from: Prism FM Pluck [b300f7fe-3b85-42c0-bac2-8f8bdfa84a34] port:right stage:strip -> Compressor Effect [e6868d20-5ec4-444c-9d43-fe4115692097] port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_893edd60eb17de09ec98b1be
 k_post chnget "__vcs_mixer_route_eed59fb6a5255fd69d9337f1_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_eed59fb6a5255fd69d9337f1_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_eed59fb6a5255fd69d9337f1_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:eb0bcb88-fd3b-4e3e-9f62-18df1b8ffac7
; audio route:eb0bcb88-fd3b-4e3e-9f62-18df1b8ffac7 kind:send
; from: Prism FM Pluck [b300f7fe-3b85-42c0-bac2-8f8bdfa84a34] port:right stage:strip -> Reverb Effect [83a4e643-b5d2-428b-b893-07f83614d0ef] port:right stage:input
; tap: post-fader; initial route gain: -1.7 dB; source mute and mixer solo gate this route.
instr vcs_mix_3cfa38d0bf9209936805eef8
 k_post chnget "__vcs_mixer_route_a968ade595d69c835565089d_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_a968ade595d69c835565089d_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_a968ade595d69c835565089d_gain"
 a_send vcs_mixer_ramp k_send, 0.82224264994707108
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage strip:bad0b25f-7b9b-4854-8062-2c9298451447
; mixer strip: Astral Laser Zaps [bad0b25f-7b9b-4854-8062-2c9298451447]
; initial gain: 0 dB; balance/pan: 0.56; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_a1101bc84507692ee94bc59b
 k_meter metro 15
 k_gain chnget "__vcs_mixer_strip_3d24d38fbb86f53cbadf2925_gain"
 a_gain vcs_mixer_ramp k_gain, 1
 k_left chnget "__vcs_mixer_strip_3d24d38fbb86f53cbadf2925_left"
 a_left vcs_mixer_ramp k_left, 0.43999999999999995
 k_right chnget "__vcs_mixer_strip_3d24d38fbb86f53cbadf2925_right"
 a_right vcs_mixer_ramp k_right, 1
 k_mute chnget "__vcs_mixer_strip_3d24d38fbb86f53cbadf2925_mute"
 a_mute vcs_mixer_ramp k_mute, 1
 a_p_360f84035942243c6a36537a inleta "p_360f84035942243c6a36537a"
 a_p_360f84035942243c6a36537a_post = a_p_360f84035942243c6a36537a * a_gain * a_left
 a_p_27042f4e6eca7d0b2a7ee402 inleta "p_27042f4e6eca7d0b2a7ee402"
 a_p_27042f4e6eca7d0b2a7ee402_post = a_p_27042f4e6eca7d0b2a7ee402 * a_gain * a_right
 a_meter_left = a_p_360f84035942243c6a36537a_post * a_mute
 a_meter_right = a_p_27042f4e6eca7d0b2a7ee402_post * a_mute
 k_peakL max_k a_meter_left, k_meter, 1
 k_rmsL rms a_meter_left
 chnset k_peakL / 1.0, "__vcs_mixer_meter_3d24d38fbb86f53cbadf2925_peakL"
 chnset k_rmsL / 1.0, "__vcs_mixer_meter_3d24d38fbb86f53cbadf2925_rmsL"
 k_peakR max_k a_meter_right, k_meter, 1
 k_rmsR rms a_meter_right
 chnset k_peakR / 1.0, "__vcs_mixer_meter_3d24d38fbb86f53cbadf2925_peakR"
 chnset k_rmsR / 1.0, "__vcs_mixer_meter_3d24d38fbb86f53cbadf2925_rmsR"
 outleta "pre_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a
 outleta "post_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a_post
 outleta "pre_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402
 outleta "post_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402_post
endin

; mixer stage route:75e10907-1b2b-4c4b-93b4-cd6c0b4a8396
; audio route:75e10907-1b2b-4c4b-93b4-cd6c0b4a8396 kind:send
; from: Astral Laser Zaps [bad0b25f-7b9b-4854-8062-2c9298451447] port:left stage:strip -> Reverb Effect [83a4e643-b5d2-428b-b893-07f83614d0ef] port:left stage:input
; tap: post-fader; initial route gain: -8.8 dB; source mute and mixer solo gate this route.
instr vcs_mix_77d81c60650bb510029db407
 k_post chnget "__vcs_mixer_route_ce04c4e5be234ab330b3982d_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_ce04c4e5be234ab330b3982d_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_ce04c4e5be234ab330b3982d_gain"
 a_send vcs_mixer_ramp k_send, 0.3630780547701013
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:9be20b39-fa15-464a-8993-48e44f99dfa9
; audio route:9be20b39-fa15-464a-8993-48e44f99dfa9 kind:main
; from: Astral Laser Zaps [bad0b25f-7b9b-4854-8062-2c9298451447] port:right stage:strip -> Compressor Effect [e6868d20-5ec4-444c-9d43-fe4115692097] port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_1ff035113f22abf03b680ea5
 k_post chnget "__vcs_mixer_route_d4662d3ad8cbca9edcc6f5ae_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_d4662d3ad8cbca9edcc6f5ae_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_d4662d3ad8cbca9edcc6f5ae_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:c21e11c1-8e44-4f51-a4f3-4143a5bdf057
; audio route:c21e11c1-8e44-4f51-a4f3-4143a5bdf057 kind:send
; from: Astral Laser Zaps [bad0b25f-7b9b-4854-8062-2c9298451447] port:right stage:strip -> Reverb Effect [83a4e643-b5d2-428b-b893-07f83614d0ef] port:right stage:input
; tap: post-fader; initial route gain: -8.8 dB; source mute and mixer solo gate this route.
instr vcs_mix_80d8f9d47004759a0bb61786
 k_post chnget "__vcs_mixer_route_c4cfd980b5ffadef1f20d62b_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_c4cfd980b5ffadef1f20d62b_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_c4cfd980b5ffadef1f20d62b_gain"
 a_send vcs_mixer_ramp k_send, 0.3630780547701013
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:cb057a91-bb1e-4ea1-b95e-39752e9a5743
; audio route:cb057a91-bb1e-4ea1-b95e-39752e9a5743 kind:main
; from: Astral Laser Zaps [bad0b25f-7b9b-4854-8062-2c9298451447] port:left stage:strip -> Compressor Effect [e6868d20-5ec4-444c-9d43-fe4115692097] port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_7d7cfc5f15191e0ebf542d3d
 k_post chnget "__vcs_mixer_route_9e67d665aecc908cdeee6a97_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_9e67d665aecc908cdeee6a97_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_9e67d665aecc908cdeee6a97_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage strip:cc004901-9dcf-4375-982d-851284b67dd2
; mixer strip: Mandala Acid Lead [cc004901-9dcf-4375-982d-851284b67dd2]
; initial gain: 0 dB; balance/pan: 0.37; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_bc93846608190ff6ad62067d
 k_meter metro 15
 k_gain chnget "__vcs_mixer_strip_55a2288beedf45404ab748af_gain"
 a_gain vcs_mixer_ramp k_gain, 1
 k_left chnget "__vcs_mixer_strip_55a2288beedf45404ab748af_left"
 a_left vcs_mixer_ramp k_left, 0.63
 k_right chnget "__vcs_mixer_strip_55a2288beedf45404ab748af_right"
 a_right vcs_mixer_ramp k_right, 1
 k_mute chnget "__vcs_mixer_strip_55a2288beedf45404ab748af_mute"
 a_mute vcs_mixer_ramp k_mute, 1
 a_p_360f84035942243c6a36537a inleta "p_360f84035942243c6a36537a"
 a_p_360f84035942243c6a36537a_post = a_p_360f84035942243c6a36537a * a_gain * a_left
 a_p_27042f4e6eca7d0b2a7ee402 inleta "p_27042f4e6eca7d0b2a7ee402"
 a_p_27042f4e6eca7d0b2a7ee402_post = a_p_27042f4e6eca7d0b2a7ee402 * a_gain * a_right
 a_meter_left = a_p_360f84035942243c6a36537a_post * a_mute
 a_meter_right = a_p_27042f4e6eca7d0b2a7ee402_post * a_mute
 k_peakL max_k a_meter_left, k_meter, 1
 k_rmsL rms a_meter_left
 chnset k_peakL / 1.0, "__vcs_mixer_meter_55a2288beedf45404ab748af_peakL"
 chnset k_rmsL / 1.0, "__vcs_mixer_meter_55a2288beedf45404ab748af_rmsL"
 k_peakR max_k a_meter_right, k_meter, 1
 k_rmsR rms a_meter_right
 chnset k_peakR / 1.0, "__vcs_mixer_meter_55a2288beedf45404ab748af_peakR"
 chnset k_rmsR / 1.0, "__vcs_mixer_meter_55a2288beedf45404ab748af_rmsR"
 outleta "pre_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a
 outleta "post_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a_post
 outleta "pre_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402
 outleta "post_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402_post
endin

; mixer stage route:9e6bfe3c-920c-4931-8c17-98143af25c5f
; audio route:9e6bfe3c-920c-4931-8c17-98143af25c5f kind:send
; from: Mandala Acid Lead [cc004901-9dcf-4375-982d-851284b67dd2] port:right stage:strip -> Reverb Effect [83a4e643-b5d2-428b-b893-07f83614d0ef] port:right stage:input
; tap: post-fader; initial route gain: -10.1 dB; source mute and mixer solo gate this route.
instr vcs_mix_a172ff8ac91c52ba9f6593d3
 k_post chnget "__vcs_mixer_route_ac60e390d9f4cc8a7bc4d933_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_ac60e390d9f4cc8a7bc4d933_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_ac60e390d9f4cc8a7bc4d933_gain"
 a_send vcs_mixer_ramp k_send, 0.3126079367123954
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:dd29c288-f3c9-4d23-86c5-0ef800e26b58
; audio route:dd29c288-f3c9-4d23-86c5-0ef800e26b58 kind:send
; from: Mandala Acid Lead [cc004901-9dcf-4375-982d-851284b67dd2] port:left stage:strip -> Reverb Effect [83a4e643-b5d2-428b-b893-07f83614d0ef] port:left stage:input
; tap: post-fader; initial route gain: -10.1 dB; source mute and mixer solo gate this route.
instr vcs_mix_d6b7b1e4da4b20cc5d2c5e21
 k_post chnget "__vcs_mixer_route_4e8a5b0bd27cb1557ce0d7a8_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_4e8a5b0bd27cb1557ce0d7a8_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_4e8a5b0bd27cb1557ce0d7a8_gain"
 a_send vcs_mixer_ramp k_send, 0.3126079367123954
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:f15cb8ae-ceb9-4972-a477-05cea6b28d29
; audio route:f15cb8ae-ceb9-4972-a477-05cea6b28d29 kind:main
; from: Mandala Acid Lead [cc004901-9dcf-4375-982d-851284b67dd2] port:left stage:strip -> Compressor Effect [e6868d20-5ec4-444c-9d43-fe4115692097] port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_a41ba115108d7b5d9eac9b6d
 k_post chnget "__vcs_mixer_route_460c6d17907501ede33a6848_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_460c6d17907501ede33a6848_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_460c6d17907501ede33a6848_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:fcaa538d-2957-4317-adee-c6c98e35824c
; audio route:fcaa538d-2957-4317-adee-c6c98e35824c kind:main
; from: Mandala Acid Lead [cc004901-9dcf-4375-982d-851284b67dd2] port:right stage:strip -> Compressor Effect [e6868d20-5ec4-444c-9d43-fe4115692097] port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_62ca969d250ff30eb88781ec
 k_post chnget "__vcs_mixer_route_91e164bcf8d4e0d1f65cbc8f_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_91e164bcf8d4e0d1f65cbc8f_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_91e164bcf8d4e0d1f65cbc8f_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage strip:e5317d66-5579-44ee-80f0-fc4128c2ae0d
; mixer strip: Goa Ray Lead [e5317d66-5579-44ee-80f0-fc4128c2ae0d]
; initial gain: 0 dB; balance/pan: -0.42; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_eb31e675d375b0200b94afdf
 k_meter metro 15
 k_gain chnget "__vcs_mixer_strip_18240bf957b1c70986590896_gain"
 a_gain vcs_mixer_ramp k_gain, 1
 k_left chnget "__vcs_mixer_strip_18240bf957b1c70986590896_left"
 a_left vcs_mixer_ramp k_left, 1
 k_right chnget "__vcs_mixer_strip_18240bf957b1c70986590896_right"
 a_right vcs_mixer_ramp k_right, 0.58000000000000007
 k_mute chnget "__vcs_mixer_strip_18240bf957b1c70986590896_mute"
 a_mute vcs_mixer_ramp k_mute, 1
 a_p_360f84035942243c6a36537a inleta "p_360f84035942243c6a36537a"
 a_p_360f84035942243c6a36537a_post = a_p_360f84035942243c6a36537a * a_gain * a_left
 a_p_27042f4e6eca7d0b2a7ee402 inleta "p_27042f4e6eca7d0b2a7ee402"
 a_p_27042f4e6eca7d0b2a7ee402_post = a_p_27042f4e6eca7d0b2a7ee402 * a_gain * a_right
 a_meter_left = a_p_360f84035942243c6a36537a_post * a_mute
 a_meter_right = a_p_27042f4e6eca7d0b2a7ee402_post * a_mute
 k_peakL max_k a_meter_left, k_meter, 1
 k_rmsL rms a_meter_left
 chnset k_peakL / 1.0, "__vcs_mixer_meter_18240bf957b1c70986590896_peakL"
 chnset k_rmsL / 1.0, "__vcs_mixer_meter_18240bf957b1c70986590896_rmsL"
 k_peakR max_k a_meter_right, k_meter, 1
 k_rmsR rms a_meter_right
 chnset k_peakR / 1.0, "__vcs_mixer_meter_18240bf957b1c70986590896_peakR"
 chnset k_rmsR / 1.0, "__vcs_mixer_meter_18240bf957b1c70986590896_rmsR"
 outleta "pre_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a
 outleta "post_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a_post
 outleta "pre_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402
 outleta "post_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402_post
endin

; mixer stage route:8dd43af1-4e30-415e-9765-ad6c9f2a8aad
; audio route:8dd43af1-4e30-415e-9765-ad6c9f2a8aad kind:main
; from: Goa Ray Lead [e5317d66-5579-44ee-80f0-fc4128c2ae0d] port:right stage:strip -> Compressor Effect [e6868d20-5ec4-444c-9d43-fe4115692097] port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_b971bb40cf335c3d9f2398ba
 k_post chnget "__vcs_mixer_route_d32c2140a36de30f298cdf0e_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_d32c2140a36de30f298cdf0e_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_d32c2140a36de30f298cdf0e_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:ad8f3860-6409-47ee-bd6d-a62af94d75e2
; audio route:ad8f3860-6409-47ee-bd6d-a62af94d75e2 kind:send
; from: Goa Ray Lead [e5317d66-5579-44ee-80f0-fc4128c2ae0d] port:left stage:strip -> Reverb Effect [83a4e643-b5d2-428b-b893-07f83614d0ef] port:left stage:input
; tap: post-fader; initial route gain: -42.8 dB; source mute and mixer solo gate this route.
instr vcs_mix_9ce45dce1e80860220376330
 k_post chnget "__vcs_mixer_route_e53d687e91a0e5c309a651aa_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_e53d687e91a0e5c309a651aa_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_e53d687e91a0e5c309a651aa_gain"
 a_send vcs_mixer_ramp k_send, 0.0072443596007498983
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:b7ba99f4-82d4-47b9-9502-b7bd0ef00a1e
; audio route:b7ba99f4-82d4-47b9-9502-b7bd0ef00a1e kind:main
; from: Goa Ray Lead [e5317d66-5579-44ee-80f0-fc4128c2ae0d] port:left stage:strip -> Compressor Effect [e6868d20-5ec4-444c-9d43-fe4115692097] port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_063efbfc5b85c25fae777919
 k_post chnget "__vcs_mixer_route_5d41266d70469702a2318702_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_5d41266d70469702a2318702_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_5d41266d70469702a2318702_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:d402d224-4970-4a04-aa27-c7e03de27f60
; audio route:d402d224-4970-4a04-aa27-c7e03de27f60 kind:send
; from: Goa Ray Lead [e5317d66-5579-44ee-80f0-fc4128c2ae0d] port:right stage:strip -> Reverb Effect [83a4e643-b5d2-428b-b893-07f83614d0ef] port:right stage:input
; tap: post-fader; initial route gain: -42.8 dB; source mute and mixer solo gate this route.
instr vcs_mix_0fa3df020621c82abf16382c
 k_post chnget "__vcs_mixer_route_5475fb8a3751bcad0bf81535_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_5475fb8a3751bcad0bf81535_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_5475fb8a3751bcad0bf81535_gain"
 a_send vcs_mixer_ramp k_send, 0.0072443596007498983
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage strip:eabfdd82-d96f-44cd-ac33-6617c708a9cb
; mixer strip: Analog Drumkit [eabfdd82-d96f-44cd-ac33-6617c708a9cb]
; initial gain: 12 dB; balance/pan: -0.02; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_b99b7ec8f15ac9e237849672
 k_meter metro 15
 k_gain chnget "__vcs_mixer_strip_32b902f3e717905c808bc3b3_gain"
 a_gain vcs_mixer_ramp k_gain, 3.9810717055349722
 k_left chnget "__vcs_mixer_strip_32b902f3e717905c808bc3b3_left"
 a_left vcs_mixer_ramp k_left, 1
 k_right chnget "__vcs_mixer_strip_32b902f3e717905c808bc3b3_right"
 a_right vcs_mixer_ramp k_right, 0.97999999999999998
 k_mute chnget "__vcs_mixer_strip_32b902f3e717905c808bc3b3_mute"
 a_mute vcs_mixer_ramp k_mute, 1
 a_p_360f84035942243c6a36537a inleta "p_360f84035942243c6a36537a"
 a_p_360f84035942243c6a36537a_post = a_p_360f84035942243c6a36537a * a_gain * a_left
 a_p_27042f4e6eca7d0b2a7ee402 inleta "p_27042f4e6eca7d0b2a7ee402"
 a_p_27042f4e6eca7d0b2a7ee402_post = a_p_27042f4e6eca7d0b2a7ee402 * a_gain * a_right
 a_meter_left = a_p_360f84035942243c6a36537a_post * a_mute
 a_meter_right = a_p_27042f4e6eca7d0b2a7ee402_post * a_mute
 k_peakL max_k a_meter_left, k_meter, 1
 k_rmsL rms a_meter_left
 chnset k_peakL / 1.0, "__vcs_mixer_meter_32b902f3e717905c808bc3b3_peakL"
 chnset k_rmsL / 1.0, "__vcs_mixer_meter_32b902f3e717905c808bc3b3_rmsL"
 k_peakR max_k a_meter_right, k_meter, 1
 k_rmsR rms a_meter_right
 chnset k_peakR / 1.0, "__vcs_mixer_meter_32b902f3e717905c808bc3b3_peakR"
 chnset k_rmsR / 1.0, "__vcs_mixer_meter_32b902f3e717905c808bc3b3_rmsR"
 outleta "pre_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a
 outleta "post_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a_post
 outleta "pre_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402
 outleta "post_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402_post
endin

; mixer stage route:0a4c8e03-51a2-44d1-bf3a-0eb641da9770
; audio route:0a4c8e03-51a2-44d1-bf3a-0eb641da9770 kind:send
; from: Analog Drumkit [eabfdd82-d96f-44cd-ac33-6617c708a9cb] port:left stage:strip -> Reverb Effect [83a4e643-b5d2-428b-b893-07f83614d0ef] port:left stage:input
; tap: post-fader; initial route gain: -58.7 dB; source mute and mixer solo gate this route.
instr vcs_mix_6c2f021cb2ab44bda010649b
 k_post chnget "__vcs_mixer_route_659b8c3b0c18418c8c46a07a_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_659b8c3b0c18418c8c46a07a_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_659b8c3b0c18418c8c46a07a_gain"
 a_send vcs_mixer_ramp k_send, 0.0011614486138403425
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:42a3ccfc-e668-4459-a894-fecc659839ad
; audio route:42a3ccfc-e668-4459-a894-fecc659839ad kind:send
; from: Analog Drumkit [eabfdd82-d96f-44cd-ac33-6617c708a9cb] port:right stage:strip -> Reverb Effect [83a4e643-b5d2-428b-b893-07f83614d0ef] port:right stage:input
; tap: post-fader; initial route gain: -58.7 dB; source mute and mixer solo gate this route.
instr vcs_mix_e690308b9ccd231763633b4d
 k_post chnget "__vcs_mixer_route_907268ecfedd366edc8573f5_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_907268ecfedd366edc8573f5_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_907268ecfedd366edc8573f5_gain"
 a_send vcs_mixer_ramp k_send, 0.0011614486138403425
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:59a83873-359a-410b-8f58-b460a916b241
; audio route:59a83873-359a-410b-8f58-b460a916b241 kind:main
; from: Analog Drumkit [eabfdd82-d96f-44cd-ac33-6617c708a9cb] port:right stage:strip -> Compressor Effect [e6868d20-5ec4-444c-9d43-fe4115692097] port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_56d53795eac571187cf74c65
 k_post chnget "__vcs_mixer_route_511c261d13d0c350c7233197_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_511c261d13d0c350c7233197_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_511c261d13d0c350c7233197_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:e6ffa152-0595-499d-bcd6-9e4ca131b936
; audio route:e6ffa152-0595-499d-bcd6-9e4ca131b936 kind:main
; from: Analog Drumkit [eabfdd82-d96f-44cd-ac33-6617c708a9cb] port:left stage:strip -> Compressor Effect [e6868d20-5ec4-444c-9d43-fe4115692097] port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_d41a6d68633478f7dc26eb5b
 k_post chnget "__vcs_mixer_route_8f1311fb2fe500f5ba81da4a_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_8f1311fb2fe500f5ba81da4a_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_8f1311fb2fe500f5ba81da4a_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage strip:f5b3e51b-b01d-4673-9cd6-6e907fd988ad
; mixer strip: Undertow Motion Pad [f5b3e51b-b01d-4673-9cd6-6e907fd988ad]
; initial gain: -4.7 dB; balance/pan: -0.22; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_2d3abc7194d9a93abbb3d71b
 k_meter metro 15
 k_gain chnget "__vcs_mixer_strip_bad76b2daa79923b4d4593e8_gain"
 a_gain vcs_mixer_ramp k_gain, 0.58210321777087137
 k_left chnget "__vcs_mixer_strip_bad76b2daa79923b4d4593e8_left"
 a_left vcs_mixer_ramp k_left, 1
 k_right chnget "__vcs_mixer_strip_bad76b2daa79923b4d4593e8_right"
 a_right vcs_mixer_ramp k_right, 0.78000000000000003
 k_mute chnget "__vcs_mixer_strip_bad76b2daa79923b4d4593e8_mute"
 a_mute vcs_mixer_ramp k_mute, 1
 a_p_360f84035942243c6a36537a inleta "p_360f84035942243c6a36537a"
 a_p_360f84035942243c6a36537a_post = a_p_360f84035942243c6a36537a * a_gain * a_left
 a_p_27042f4e6eca7d0b2a7ee402 inleta "p_27042f4e6eca7d0b2a7ee402"
 a_p_27042f4e6eca7d0b2a7ee402_post = a_p_27042f4e6eca7d0b2a7ee402 * a_gain * a_right
 a_meter_left = a_p_360f84035942243c6a36537a_post * a_mute
 a_meter_right = a_p_27042f4e6eca7d0b2a7ee402_post * a_mute
 k_peakL max_k a_meter_left, k_meter, 1
 k_rmsL rms a_meter_left
 chnset k_peakL / 1.0, "__vcs_mixer_meter_bad76b2daa79923b4d4593e8_peakL"
 chnset k_rmsL / 1.0, "__vcs_mixer_meter_bad76b2daa79923b4d4593e8_rmsL"
 k_peakR max_k a_meter_right, k_meter, 1
 k_rmsR rms a_meter_right
 chnset k_peakR / 1.0, "__vcs_mixer_meter_bad76b2daa79923b4d4593e8_peakR"
 chnset k_rmsR / 1.0, "__vcs_mixer_meter_bad76b2daa79923b4d4593e8_rmsR"
 outleta "pre_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a
 outleta "post_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a_post
 outleta "pre_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402
 outleta "post_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402_post
endin

; mixer stage route:0b42f34c-bbce-4f63-8308-db0ab84a87e0
; audio route:0b42f34c-bbce-4f63-8308-db0ab84a87e0 kind:main
; from: Undertow Motion Pad [f5b3e51b-b01d-4673-9cd6-6e907fd988ad] port:left stage:strip -> Compressor Effect [e6868d20-5ec4-444c-9d43-fe4115692097] port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_27879694f89d94168f055bd5
 k_post chnget "__vcs_mixer_route_6e2ccee4f710b9c0a61d256f_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_6e2ccee4f710b9c0a61d256f_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_6e2ccee4f710b9c0a61d256f_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:222cba88-47fa-4b19-911d-a0c03ce7b473
; audio route:222cba88-47fa-4b19-911d-a0c03ce7b473 kind:send
; from: Undertow Motion Pad [f5b3e51b-b01d-4673-9cd6-6e907fd988ad] port:right stage:strip -> Reverb Effect [83a4e643-b5d2-428b-b893-07f83614d0ef] port:right stage:input
; tap: post-fader; initial route gain: -5.2 dB; source mute and mixer solo gate this route.
instr vcs_mix_066668fadb7f0bcbc9d6a4f8
 k_post chnget "__vcs_mixer_route_68d588f623688c8c24d957d2_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_68d588f623688c8c24d957d2_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_68d588f623688c8c24d957d2_gain"
 a_send vcs_mixer_ramp k_send, 0.54954087385762451
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:2ff4142c-bc9b-42f3-b5f6-af53038de7ea
; audio route:2ff4142c-bc9b-42f3-b5f6-af53038de7ea kind:main
; from: Undertow Motion Pad [f5b3e51b-b01d-4673-9cd6-6e907fd988ad] port:right stage:strip -> Compressor Effect [e6868d20-5ec4-444c-9d43-fe4115692097] port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_cfa31b751979e1caad0a51d1
 k_post chnget "__vcs_mixer_route_97cfabdca1118d23ac27f030_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_97cfabdca1118d23ac27f030_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_97cfabdca1118d23ac27f030_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:9f674600-44cc-4ba9-be4a-5622b9259107
; audio route:9f674600-44cc-4ba9-be4a-5622b9259107 kind:send
; from: Undertow Motion Pad [f5b3e51b-b01d-4673-9cd6-6e907fd988ad] port:left stage:strip -> Reverb Effect [83a4e643-b5d2-428b-b893-07f83614d0ef] port:left stage:input
; tap: post-fader; initial route gain: -5.2 dB; source mute and mixer solo gate this route.
instr vcs_mix_fe09165720a17029571c7608
 k_post chnget "__vcs_mixer_route_a4996fc7f6a32a08356594fe_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_a4996fc7f6a32a08356594fe_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_a4996fc7f6a32a08356594fe_gain"
 a_send vcs_mixer_ramp k_send, 0.54954087385762451
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage strip:f7c7c61b-3518-4ab6-a326-8cdde9f87f98
; mixer strip: Furnace Techno Stab [f7c7c61b-3518-4ab6-a326-8cdde9f87f98]
; initial gain: -8 dB; balance/pan: 0.36; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_4cbc36c24ee222c3b14b97a7
 k_meter metro 15
 k_gain chnget "__vcs_mixer_strip_b21ae25633e3575379c0cd0f_gain"
 a_gain vcs_mixer_ramp k_gain, 0.3981071705534972
 k_left chnget "__vcs_mixer_strip_b21ae25633e3575379c0cd0f_left"
 a_left vcs_mixer_ramp k_left, 0.64000000000000001
 k_right chnget "__vcs_mixer_strip_b21ae25633e3575379c0cd0f_right"
 a_right vcs_mixer_ramp k_right, 1
 k_mute chnget "__vcs_mixer_strip_b21ae25633e3575379c0cd0f_mute"
 a_mute vcs_mixer_ramp k_mute, 1
 a_p_360f84035942243c6a36537a inleta "p_360f84035942243c6a36537a"
 a_p_360f84035942243c6a36537a_post = a_p_360f84035942243c6a36537a * a_gain * a_left
 a_p_27042f4e6eca7d0b2a7ee402 inleta "p_27042f4e6eca7d0b2a7ee402"
 a_p_27042f4e6eca7d0b2a7ee402_post = a_p_27042f4e6eca7d0b2a7ee402 * a_gain * a_right
 a_meter_left = a_p_360f84035942243c6a36537a_post * a_mute
 a_meter_right = a_p_27042f4e6eca7d0b2a7ee402_post * a_mute
 k_peakL max_k a_meter_left, k_meter, 1
 k_rmsL rms a_meter_left
 chnset k_peakL / 1.0, "__vcs_mixer_meter_b21ae25633e3575379c0cd0f_peakL"
 chnset k_rmsL / 1.0, "__vcs_mixer_meter_b21ae25633e3575379c0cd0f_rmsL"
 k_peakR max_k a_meter_right, k_meter, 1
 k_rmsR rms a_meter_right
 chnset k_peakR / 1.0, "__vcs_mixer_meter_b21ae25633e3575379c0cd0f_peakR"
 chnset k_rmsR / 1.0, "__vcs_mixer_meter_b21ae25633e3575379c0cd0f_rmsR"
 outleta "pre_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a
 outleta "post_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a_post
 outleta "pre_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402
 outleta "post_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402_post
endin

; mixer stage route:38c30188-0a6c-4b9f-895f-efafb3e8a730
; audio route:38c30188-0a6c-4b9f-895f-efafb3e8a730 kind:send
; from: Furnace Techno Stab [f7c7c61b-3518-4ab6-a326-8cdde9f87f98] port:right stage:strip -> Reverb Effect [83a4e643-b5d2-428b-b893-07f83614d0ef] port:right stage:input
; tap: post-fader; initial route gain: -48.4 dB; source mute and mixer solo gate this route.
instr vcs_mix_c2f6d2e7f6c31aeb6e0595d9
 k_post chnget "__vcs_mixer_route_c48fcae2ce8ff4458b0e451f_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_c48fcae2ce8ff4458b0e451f_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_c48fcae2ce8ff4458b0e451f_gain"
 a_send vcs_mixer_ramp k_send, 0.0038018939632056088
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:5ff2802d-c11f-40d7-99c0-54ffff15fb9c
; audio route:5ff2802d-c11f-40d7-99c0-54ffff15fb9c kind:main
; from: Furnace Techno Stab [f7c7c61b-3518-4ab6-a326-8cdde9f87f98] port:left stage:strip -> Compressor Effect [e6868d20-5ec4-444c-9d43-fe4115692097] port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_b028d078a3f89d56e69cda7c
 k_post chnget "__vcs_mixer_route_1bdd707b8154ef4b993e8b29_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_1bdd707b8154ef4b993e8b29_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_1bdd707b8154ef4b993e8b29_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:b3a0a317-8201-40c8-a42b-55d5652e540a
; audio route:b3a0a317-8201-40c8-a42b-55d5652e540a kind:main
; from: Furnace Techno Stab [f7c7c61b-3518-4ab6-a326-8cdde9f87f98] port:right stage:strip -> Compressor Effect [e6868d20-5ec4-444c-9d43-fe4115692097] port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_b8f7e60a3f22795d41848b1a
 k_post chnget "__vcs_mixer_route_375853de2f37eecb08896a61_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_375853de2f37eecb08896a61_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_375853de2f37eecb08896a61_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:ba7bbbba-50d2-43a2-b2e6-4a0a768b0d97
; audio route:ba7bbbba-50d2-43a2-b2e6-4a0a768b0d97 kind:send
; from: Furnace Techno Stab [f7c7c61b-3518-4ab6-a326-8cdde9f87f98] port:left stage:strip -> Reverb Effect [83a4e643-b5d2-428b-b893-07f83614d0ef] port:left stage:input
; tap: post-fader; initial route gain: -48.4 dB; source mute and mixer solo gate this route.
instr vcs_mix_27bb71f669b265bcd4c09e8f
 k_post chnget "__vcs_mixer_route_2170e5f12703cd3a193f6abd_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_2170e5f12703cd3a193f6abd_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_2170e5f12703cd3a193f6abd_gain"
 a_send vcs_mixer_ramp k_send, 0.0038018939632056088
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage patch:83a4e643-b5d2-428b-b893-07f83614d0ef
; patch:edec9fff-768b-4de1-b892-53eb4249b2bf name:Reverb Effect channel:0 always_on:true
; instance:83a4e643-b5d2-428b-b893-07f83614d0ef csound:vcs_mix_46adb534d240b196161f2d0c
; description: Stereo reverb effect, uses inleta channel names "left" and "right".
; trigger: continuous (alwayson); score instrument number: 79
instr vcs_mix_46adb534d240b196161f2d0c
 i_708a8f43_1c17_4713_a35d_b0b12cee6abe_iout_1 chnget "__vcs_perf_5b2e82b0b24e116c199c895c58c2c9e25a6b10b01c10fa48f8bbf996ed88ddf7"
 ; node:848adfb2-56f2-41d2-92da-582a363d3926 opcode:inleta
 a_848adfb2_56f2_41d2_92da_582a363d3926_asignal_3 inleta "left"
 i_a08d04b8_b407_498d_8186_8ec08a404e5c_iout_2 chnget "__vcs_perf_31a0141314e31627bfd79ebd640cb391f3813758297e30503fc806fd775b67fd"
 ; node:bd65fc9a-7053-4c0c-b7fc-63dc926b8d92 opcode:inleta
 a_bd65fc9a_7053_4c0c_b7fc_63dc926b8d92_asignal_4 inleta "right"
 ; node:a5e612c4-b021-465a-a2c6-f6edb0b620bd opcode:reverbsc
 a_a5e612c4_b021_465a_a2c6_f6edb0b620bd_aout_l_1, a_a5e612c4_b021_465a_a2c6_f6edb0b620bd_aout_r_2 reverbsc a_848adfb2_56f2_41d2_92da_582a363d3926_asignal_3, a_bd65fc9a_7053_4c0c_b7fc_63dc926b8d92_asignal_4, i_708a8f43_1c17_4713_a35d_b0b12cee6abe_iout_1, i_a08d04b8_b407_498d_8186_8ec08a404e5c_iout_2, sr, 1, 0
 ; node:17300219-eb5e-42d1-9b33-5bddb8b0689e opcode:outleta
 outleta "left", a_a5e612c4_b021_465a_a2c6_f6edb0b620bd_aout_l_1
 ; node:1bfdd7bf-0969-4ac0-83df-2b69f8ff6b9a opcode:outleta
 outleta "right", a_a5e612c4_b021_465a_a2c6_f6edb0b620bd_aout_r_2
endin

; mixer stage strip:83a4e643-b5d2-428b-b893-07f83614d0ef
; mixer strip: Reverb Effect [83a4e643-b5d2-428b-b893-07f83614d0ef]
; initial gain: -10.7 dB; balance/pan: 0; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_ac1227af2c1ee2726806c2a4
 k_meter metro 15
 k_gain chnget "__vcs_mixer_strip_8cd32066fc3e746357fe40f7_gain"
 a_gain vcs_mixer_ramp k_gain, 0.29174270140011677
 k_left chnget "__vcs_mixer_strip_8cd32066fc3e746357fe40f7_left"
 a_left vcs_mixer_ramp k_left, 1
 k_right chnget "__vcs_mixer_strip_8cd32066fc3e746357fe40f7_right"
 a_right vcs_mixer_ramp k_right, 1
 k_mute chnget "__vcs_mixer_strip_8cd32066fc3e746357fe40f7_mute"
 a_mute vcs_mixer_ramp k_mute, 1
 a_p_360f84035942243c6a36537a inleta "p_360f84035942243c6a36537a"
 a_p_360f84035942243c6a36537a_post = a_p_360f84035942243c6a36537a * a_gain * a_left
 a_p_27042f4e6eca7d0b2a7ee402 inleta "p_27042f4e6eca7d0b2a7ee402"
 a_p_27042f4e6eca7d0b2a7ee402_post = a_p_27042f4e6eca7d0b2a7ee402 * a_gain * a_right
 a_meter_left = a_p_360f84035942243c6a36537a_post * a_mute
 a_meter_right = a_p_27042f4e6eca7d0b2a7ee402_post * a_mute
 k_peakL max_k a_meter_left, k_meter, 1
 k_rmsL rms a_meter_left
 chnset k_peakL / 1.0, "__vcs_mixer_meter_8cd32066fc3e746357fe40f7_peakL"
 chnset k_rmsL / 1.0, "__vcs_mixer_meter_8cd32066fc3e746357fe40f7_rmsL"
 k_peakR max_k a_meter_right, k_meter, 1
 k_rmsR rms a_meter_right
 chnset k_peakR / 1.0, "__vcs_mixer_meter_8cd32066fc3e746357fe40f7_peakR"
 chnset k_rmsR / 1.0, "__vcs_mixer_meter_8cd32066fc3e746357fe40f7_rmsR"
 outleta "pre_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a
 outleta "post_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a_post
 outleta "pre_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402
 outleta "post_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402_post
endin

; mixer stage route:2ebe2319-ab17-4c18-b6d3-5875aa871c27
; audio route:2ebe2319-ab17-4c18-b6d3-5875aa871c27 kind:main
; from: Reverb Effect [83a4e643-b5d2-428b-b893-07f83614d0ef] port:right stage:strip -> Compressor Effect [e6868d20-5ec4-444c-9d43-fe4115692097] port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_52e931c54fe8d60a5d931460
 k_post chnget "__vcs_mixer_route_8e4d4960ebc7d83ccb40b41e_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_8e4d4960ebc7d83ccb40b41e_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_8e4d4960ebc7d83ccb40b41e_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:61ac6aec-b82e-42bf-8f08-f0eabbeac4ec
; audio route:61ac6aec-b82e-42bf-8f08-f0eabbeac4ec kind:main
; from: Reverb Effect [83a4e643-b5d2-428b-b893-07f83614d0ef] port:right stage:strip -> Compressor Effect [e6868d20-5ec4-444c-9d43-fe4115692097] port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_4d7010d90a3625606ead2505
 k_post chnget "__vcs_mixer_route_77f21ffca96ba56dbec00253_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_77f21ffca96ba56dbec00253_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_77f21ffca96ba56dbec00253_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:765060c5-5f0e-47d5-8396-0bfc3f1d199b
; audio route:765060c5-5f0e-47d5-8396-0bfc3f1d199b kind:main
; from: Reverb Effect [83a4e643-b5d2-428b-b893-07f83614d0ef] port:left stage:strip -> Compressor Effect [e6868d20-5ec4-444c-9d43-fe4115692097] port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_7b7fa115d61e566d4af5a143
 k_post chnget "__vcs_mixer_route_d03a9bfb8537849a25f30638_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_d03a9bfb8537849a25f30638_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_d03a9bfb8537849a25f30638_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:b176748a-ac86-48d6-8554-9eb2e32ed8dd
; audio route:b176748a-ac86-48d6-8554-9eb2e32ed8dd kind:main
; from: Reverb Effect [83a4e643-b5d2-428b-b893-07f83614d0ef] port:left stage:strip -> Compressor Effect [e6868d20-5ec4-444c-9d43-fe4115692097] port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_68ddc69c251efd7a9ba04c5a
 k_post chnget "__vcs_mixer_route_243e39b4858f7193fa09530a_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_243e39b4858f7193fa09530a_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_243e39b4858f7193fa09530a_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage patch:e6868d20-5ec4-444c-9d43-fe4115692097
; patch:e3c1fa8d-f3c6-441d-b443-707ce7ef924e name:Compressor Effect channel:0 always_on:true
; instance:e6868d20-5ec4-444c-9d43-fe4115692097 csound:vcs_mix_5ca45ad3dd6e73c9a32faa4a
; description: Dynamic ompression of audio signal
; trigger: continuous (alwayson); score instrument number: 85
instr vcs_mix_5ca45ad3dd6e73c9a32faa4a
 i_0f32b615_df59_4c8b_9a61_70252193be29_iout_5 chnget "__vcs_perf_3ba4190670191f5efc37807a373574ac10580cbd8ac86707b3d9cbf3001b9f08"
 i_19053c50_a059_412c_9e4a_280db42edca9_iout_1 chnget "__vcs_perf_7fedd3a61bb49a7dbc06f326d80cd33c8efe6b7380a8e12d647f2d80fb36d7bd"
 i_364ce489_892d_463e_a519_4e51effe56f7_iout_4 chnget "__vcs_perf_220c0ce25a815ed7f08a33c0404eb0757ee05b8883542657ae284620b4a72ab0"
 ; node:6e51293d-34b8-4876-ab2a-1c97fce32d75 opcode:inleta
 a_6e51293d_34b8_4876_ab2a_1c97fce32d75_asignal_4 inleta "right"
 i_9eabdf3c_9d00_4f37_bf9b_c819ceb1c2a3_iout_2 chnget "__vcs_perf_e8f80352da5b85b4952d78e8128f4142dd5d3096ff3607de2a34c15a46432b21"
 i_a84d4364_5f74_4351_9e29_8e4c6d8a730f_iout_3 chnget "__vcs_perf_9a5fe5256d28f8be036cab05f7276a4cafe9b48a3f6761c715b1dbb55123c8cf"
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

; mixer stage strip:e6868d20-5ec4-444c-9d43-fe4115692097
; mixer strip: Compressor Effect [e6868d20-5ec4-444c-9d43-fe4115692097]
; initial gain: -5.2 dB; balance/pan: 0; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_9ebe6268ed7dcbd3a68eb58b
 k_meter metro 15
 k_gain chnget "__vcs_mixer_strip_4ff4cffa30256d4b88100c02_gain"
 a_gain vcs_mixer_ramp k_gain, 0.54954087385762451
 k_left chnget "__vcs_mixer_strip_4ff4cffa30256d4b88100c02_left"
 a_left vcs_mixer_ramp k_left, 1
 k_right chnget "__vcs_mixer_strip_4ff4cffa30256d4b88100c02_right"
 a_right vcs_mixer_ramp k_right, 1
 k_mute chnget "__vcs_mixer_strip_4ff4cffa30256d4b88100c02_mute"
 a_mute vcs_mixer_ramp k_mute, 1
 a_p_360f84035942243c6a36537a inleta "p_360f84035942243c6a36537a"
 a_p_360f84035942243c6a36537a_post = a_p_360f84035942243c6a36537a * a_gain * a_left
 a_p_27042f4e6eca7d0b2a7ee402 inleta "p_27042f4e6eca7d0b2a7ee402"
 a_p_27042f4e6eca7d0b2a7ee402_post = a_p_27042f4e6eca7d0b2a7ee402 * a_gain * a_right
 a_meter_left = a_p_360f84035942243c6a36537a_post * a_mute
 a_meter_right = a_p_27042f4e6eca7d0b2a7ee402_post * a_mute
 k_peakL max_k a_meter_left, k_meter, 1
 k_rmsL rms a_meter_left
 chnset k_peakL / 1.0, "__vcs_mixer_meter_4ff4cffa30256d4b88100c02_peakL"
 chnset k_rmsL / 1.0, "__vcs_mixer_meter_4ff4cffa30256d4b88100c02_rmsL"
 k_peakR max_k a_meter_right, k_meter, 1
 k_rmsR rms a_meter_right
 chnset k_peakR / 1.0, "__vcs_mixer_meter_4ff4cffa30256d4b88100c02_peakR"
 chnset k_rmsR / 1.0, "__vcs_mixer_meter_4ff4cffa30256d4b88100c02_rmsR"
 outleta "pre_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a
 outleta "post_p_360f84035942243c6a36537a", a_p_360f84035942243c6a36537a_post
 outleta "pre_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402
 outleta "post_p_27042f4e6eca7d0b2a7ee402", a_p_27042f4e6eca7d0b2a7ee402_post
endin

; mixer stage route:7bedbff3-c0f7-46f7-96f8-8f8561cfd807
; audio route:7bedbff3-c0f7-46f7-96f8-8f8561cfd807 kind:main
; from: Compressor Effect [e6868d20-5ec4-444c-9d43-fe4115692097] port:right stage:strip -> Master [$master] port:right stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_7ce7413b69a06da8545196c6
 k_post chnget "__vcs_mixer_route_9e74979841d2aca1fc31d317_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_9e74979841d2aca1fc31d317_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_9e74979841d2aca1fc31d317_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage route:bf31d001-9bf5-4ec6-9cb3-6623044c96c4
; audio route:bf31d001-9bf5-4ec6-9cb3-6623044c96c4 kind:main
; from: Compressor Effect [e6868d20-5ec4-444c-9d43-fe4115692097] port:left stage:strip -> Master [$master] port:left stage:input
; tap: post-fader; initial route gain: 0 dB; source mute and mixer solo gate this route.
instr vcs_mix_70d35df948aaad0ebb528d8d
 k_post chnget "__vcs_mixer_route_f61f4652529a694883fd6bc7_post"
 a_post vcs_mixer_ramp k_post, 1
 k_pan chnget "__vcs_mixer_route_f61f4652529a694883fd6bc7_pan"
 a_pan vcs_mixer_ramp k_pan, 1
 a_pre inleta "pre"
 a_post_signal inleta "post"
 a_signal = a_pre * (1 - a_post) + a_post_signal * a_post * a_pan
 k_send chnget "__vcs_mixer_route_f61f4652529a694883fd6bc7_gain"
 a_send vcs_mixer_ramp k_send, 1
 a_route_output = a_signal * a_send
 outleta "out", a_route_output
endin

; mixer stage patch:$master
; patch:$master name:Master channel:0 always_on:true
; instance:$master csound:vcs_mix_63254fa67083d5eed1f09ece
; trigger: continuous (alwayson); score instrument number: 89
; role: Master processor; only audio explicitly routed here passes through Master.
instr vcs_mix_63254fa67083d5eed1f09ece
 a_left inleta "left"
 a_right inleta "right"
 outleta "__vcs_direct_e0ee8bb50685e05fa0f47ed0_left", a_left
 outleta "__vcs_direct_e0ee8bb50685e05fa0f47ed0_right", a_right
endin

; mixer stage strip:$master
; mixer strip: Master [$master]
; initial gain: -10 dB; balance/pan: 0; mute: false; solo: false
; Voices and insert returns sum before the strip; pre taps precede balance/fader, post taps follow them.
instr vcs_mix_0644eeee2942927583ef32ed
 k_meter metro 15
 k_gain chnget "__vcs_mixer_strip_b5c7638620f2f38a657a5790_gain"
 a_gain vcs_mixer_ramp k_gain, 0.31622776601683794
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
i 12 0 3.082192 52 37
i 12 3.287671 3.082192 52 37
i 12 6.575342 3.082192 59 35
i 12 9.863014 3.082192 52 37
i 12 13.150685 3.082192 52 37
i 7 13.150685 0.205479 64 43
i 7 13.561644 0.205479 71 43
i 7 13.972603 0.205479 67 43
i 7 14.383562 0.205479 71 43
i 7 14.794521 0.205479 64 43
i 7 15.205479 0.205479 71 43
i 7 15.616438 0.205479 67 43
i 7 16.027397 0.205479 71 43
i 12 16.438356 3.082192 59 35
i 12 19.726027 3.082192 52 47
i 12 19.726027 3.082192 55 47
i 12 19.726027 3.082192 59 47
i 7 19.726027 0.205479 64 43
i 7 20.136986 0.205479 71 43
i 7 20.547945 0.205479 67 43
i 7 20.958904 0.205479 71 43
i 7 21.369863 0.205479 64 43
i 7 21.780822 0.205479 71 43
i 7 22.191781 0.205479 67 43
i 7 22.60274 0.205479 71 43
i 12 23.013699 3.082192 52 47
i 12 23.013699 3.082192 55 47
i 12 23.013699 3.082192 59 47
i 4 23.013699 3.082192 52 55
i 11 26.30137 0.10274 35 86
i 12 26.30137 3.082192 52 47
i 12 26.30137 3.082192 55 47
i 12 26.30137 3.082192 59 47
i 7 26.30137 0.205479 64 43
i 11 26.506849 0.10274 46 47
i 7 26.712329 0.205479 71 43
i 11 27.123288 0.10274 35 86
i 7 27.123288 0.205479 67 43
i 11 27.328767 0.10274 46 47
i 7 27.534247 0.205479 71 43
i 11 27.945205 0.10274 35 86
i 7 27.945205 0.205479 64 43
i 11 28.150685 0.10274 46 47
i 7 28.356164 0.205479 71 43
i 11 28.767123 0.10274 35 86
i 7 28.767123 0.205479 67 43
i 11 28.972603 0.10274 46 47
i 7 29.178082 0.205479 71 43
i 11 29.589041 0.10274 35 86
i 12 29.589041 3.082192 52 47
i 12 29.589041 3.082192 55 47
i 12 29.589041 3.082192 59 47
i 7 29.589041 0.205479 64 43
i 11 29.794521 0.10274 46 47
i 7 30 0.205479 67 43
i 11 30.410959 0.10274 35 86
i 7 30.410959 0.205479 72 43
i 11 30.616438 0.10274 46 47
i 7 30.821918 0.205479 67 43
i 11 31.232877 0.10274 35 86
i 7 31.232877 0.205479 64 43
i 11 31.438356 0.10274 46 47
i 7 31.643836 0.205479 67 43
i 11 32.054795 0.10274 35 86
i 7 32.054795 0.205479 72 43
i 11 32.260274 0.10274 46 47
i 7 32.465753 0.205479 67 43
i 11 32.876712 0.10274 35 86
i 12 32.876712 3.082192 52 47
i 12 32.876712 3.082192 55 47
i 12 32.876712 3.082192 59 47
i 7 32.876712 0.205479 62 43
i 11 33.082192 0.10274 46 47
i 7 33.287671 0.205479 67 43
i 11 33.69863 0.10274 35 86
i 7 33.69863 0.205479 71 43
i 11 33.90411 0.10274 46 47
i 7 34.109589 0.205479 67 43
i 11 34.520548 0.10274 35 86
i 7 34.520548 0.205479 62 43
i 11 34.726027 0.10274 46 47
i 7 34.931507 0.205479 67 43
i 11 35.342466 0.10274 35 86
i 7 35.342466 0.205479 71 43
i 11 35.547945 0.10274 46 47
i 7 35.753425 0.205479 67 43
i 11 36.164384 0.10274 35 86
i 12 36.164384 3.082192 52 47
i 12 36.164384 3.082192 55 47
i 12 36.164384 3.082192 59 47
i 7 36.164384 0.205479 62 43
i 11 36.369863 0.10274 46 47
i 7 36.575342 0.205479 69 43
i 11 36.986301 0.10274 35 86
i 7 36.986301 0.205479 66 43
i 11 37.191781 0.10274 46 47
i 7 37.39726 0.205479 69 43
i 11 37.808219 0.10274 35 86
i 7 37.808219 0.205479 62 43
i 11 38.013699 0.10274 46 47
i 7 38.219178 0.205479 69 43
i 11 38.630137 0.10274 35 86
i 7 38.630137 0.205479 66 43
i 11 38.835616 0.10274 46 47
i 7 39.041096 0.205479 69 43
i 11 39.452055 0.10274 35 86
i 12 39.452055 3.082192 52 47
i 12 39.452055 3.082192 55 47
i 12 39.452055 3.082192 59 47
i 7 39.452055 0.205479 64 43
i 11 39.657534 0.10274 46 47
i 7 39.863014 0.205479 71 43
i 11 40.273973 0.10274 35 86
i 7 40.273973 0.205479 67 43
i 11 40.479452 0.10274 46 47
i 7 40.684932 0.205479 71 43
i 11 41.09589 0.10274 35 86
i 7 41.09589 0.205479 64 43
i 11 41.30137 0.10274 46 47
i 7 41.506849 0.205479 71 43
i 11 41.917808 0.10274 35 86
i 7 41.917808 0.205479 67 43
i 11 42.123288 0.10274 46 47
i 7 42.328767 0.205479 71 43
i 11 42.739726 0.10274 35 86
i 12 42.739726 3.082192 52 47
i 12 42.739726 3.082192 55 47
i 12 42.739726 3.082192 59 47
i 7 42.739726 0.205479 64 43
i 11 42.945205 0.10274 46 47
i 7 43.150685 0.205479 67 43
i 11 43.561644 0.10274 35 86
i 7 43.561644 0.205479 72 43
i 11 43.767123 0.10274 46 47
i 7 43.972603 0.205479 67 43
i 11 44.383562 0.10274 35 86
i 7 44.383562 0.205479 64 43
i 11 44.589041 0.10274 46 47
i 7 44.794521 0.205479 67 43
i 11 45.205479 0.10274 35 86
i 7 45.205479 0.205479 72 43
i 11 45.410959 0.10274 46 47
i 7 45.616438 0.205479 67 43
i 11 46.027397 0.10274 35 86
i 12 46.027397 3.082192 52 47
i 12 46.027397 3.082192 55 47
i 12 46.027397 3.082192 59 47
i 7 46.027397 0.205479 62 43
i 11 46.232877 0.10274 46 47
i 7 46.438356 0.205479 67 43
i 11 46.849315 0.10274 35 86
i 7 46.849315 0.205479 71 43
i 11 47.054795 0.10274 46 47
i 7 47.260274 0.205479 67 43
i 11 47.671233 0.10274 35 86
i 7 47.671233 0.205479 62 43
i 11 47.876712 0.10274 46 47
i 7 48.082192 0.205479 67 43
i 11 48.493151 0.10274 35 86
i 7 48.493151 0.205479 71 43
i 11 48.69863 0.10274 46 47
i 7 48.90411 0.205479 67 43
i 11 49.315068 0.10274 35 86
i 12 49.315068 3.082192 52 47
i 12 49.315068 3.082192 55 47
i 12 49.315068 3.082192 59 47
i 7 49.315068 0.205479 62 43
i 11 49.520548 0.10274 46 47
i 7 49.726027 0.205479 69 43
i 11 50.136986 0.10274 35 86
i 7 50.136986 0.205479 66 43
i 11 50.342466 0.10274 46 47
i 7 50.547945 0.205479 69 43
i 11 50.958904 0.10274 35 86
i 7 50.958904 0.205479 62 43
i 11 51.164384 0.10274 46 47
i 7 51.369863 0.205479 69 43
i 11 51.780822 0.10274 35 86
i 7 51.780822 0.205479 66 43
i 11 51.986301 0.10274 46 47
i 7 52.191781 0.205479 69 43
i 11 52.60274 0.10274 35 100
i 12 52.60274 3.082192 52 47
i 12 52.60274 3.082192 55 47
i 12 52.60274 3.082192 59 47
i 7 52.60274 0.205479 64 43
i 11 52.808219 0.10274 46 72
i 11 53.013699 0.10274 35 100
i 7 53.013699 0.205479 71 43
i 11 53.219178 0.10274 46 72
i 2 53.219178 0.10274 40 70
i 11 53.424658 0.10274 35 100
i 7 53.424658 0.205479 67 43
i 11 53.630137 0.10274 46 72
i 11 53.835616 0.10274 35 100
i 7 53.835616 0.205479 71 43
i 11 54.041096 0.10274 46 72
i 2 54.041096 0.10274 40 70
i 11 54.246575 0.10274 35 100
i 7 54.246575 0.205479 64 43
i 11 54.452055 0.10274 46 72
i 11 54.657534 0.10274 35 100
i 7 54.657534 0.205479 71 43
i 11 54.863014 0.10274 46 72
i 2 54.863014 0.10274 40 70
i 11 55.068493 0.10274 35 100
i 7 55.068493 0.205479 67 43
i 11 55.273973 0.10274 46 72
i 11 55.479452 0.10274 35 100
i 7 55.479452 0.205479 71 43
i 11 55.684932 0.10274 46 72
i 2 55.684932 0.10274 40 70
i 11 55.890411 0.10274 35 100
i 12 55.890411 3.082192 48 46
i 12 55.890411 3.082192 52 46
i 12 55.890411 3.082192 55 46
i 7 55.890411 0.205479 64 43
i 11 56.09589 0.10274 46 72
i 11 56.30137 0.10274 35 100
i 7 56.30137 0.205479 67 43
i 11 56.506849 0.10274 46 72
i 2 56.506849 0.10274 40 70
i 11 56.712329 0.10274 35 100
i 7 56.712329 0.205479 72 43
i 11 56.917808 0.10274 46 72
i 11 57.123288 0.10274 35 100
i 7 57.123288 0.205479 67 43
i 11 57.328767 0.10274 46 72
i 2 57.328767 0.10274 40 70
i 11 57.534247 0.10274 35 100
i 7 57.534247 0.205479 64 43
i 11 57.739726 0.10274 46 72
i 11 57.945205 0.10274 35 100
i 7 57.945205 0.205479 67 43
i 11 58.150685 0.10274 46 72
i 2 58.150685 0.10274 40 70
i 11 58.356164 0.10274 35 100
i 7 58.356164 0.205479 72 43
i 11 58.561644 0.10274 46 72
i 11 58.767123 0.10274 35 100
i 7 58.767123 0.205479 67 43
i 11 58.972603 0.10274 46 72
i 2 58.972603 0.10274 40 70
i 11 59.178082 0.10274 35 100
i 12 59.178082 3.082192 55 45
i 12 59.178082 3.082192 59 45
i 12 59.178082 3.082192 62 45
i 7 59.178082 0.205479 62 43
i 11 59.383562 0.10274 46 72
i 5 59.486301 0.10274 64 49
i 11 59.589041 0.10274 35 100
i 7 59.589041 0.205479 67 43
i 11 59.794521 0.10274 46 72
i 2 59.794521 0.10274 40 70
i 11 60 0.10274 35 100
i 7 60 0.205479 71 43
i 5 60.10274 0.10274 64 49
i 11 60.205479 0.10274 46 72
i 11 60.410959 0.10274 35 100
i 7 60.410959 0.205479 67 43
i 11 60.616438 0.10274 46 72
i 2 60.616438 0.10274 40 70
i 5 60.719178 0.10274 64 49
i 11 60.821918 0.10274 35 100
i 7 60.821918 0.205479 62 43
i 11 61.027397 0.10274 46 72
i 11 61.232877 0.10274 35 100
i 7 61.232877 0.205479 67 43
i 11 61.438356 0.10274 46 72
i 2 61.438356 0.10274 40 70
i 5 61.438356 0.10274 64 49
i 11 61.643836 0.10274 35 100
i 7 61.643836 0.205479 71 43
i 11 61.849315 0.10274 46 72
i 5 61.952055 0.10274 64 49
i 11 62.054795 0.10274 35 100
i 7 62.054795 0.205479 67 43
i 11 62.260274 0.10274 46 72
i 2 62.260274 0.10274 40 70
i 11 62.465753 0.10274 35 100
i 12 62.465753 3.082192 50 46
i 12 62.465753 3.082192 54 46
i 12 62.465753 3.082192 57 46
i 7 62.465753 0.205479 62 43
i 11 62.671233 0.10274 46 72
i 11 62.876712 0.10274 35 100
i 7 62.876712 0.205479 69 43
i 11 63.082192 0.10274 46 72
i 2 63.082192 0.10274 40 70
i 11 63.287671 0.10274 35 100
i 7 63.287671 0.205479 66 43
i 11 63.493151 0.10274 46 72
i 11 63.69863 0.10274 35 100
i 7 63.69863 0.205479 69 43
i 11 63.90411 0.10274 46 72
i 2 63.90411 0.10274 40 70
i 11 64.109589 0.10274 35 100
i 7 64.109589 0.205479 62 43
i 11 64.315068 0.10274 46 72
i 11 64.520548 0.10274 35 100
i 7 64.520548 0.205479 69 43
i 11 64.726027 0.10274 46 72
i 2 64.726027 0.10274 40 70
i 11 64.931507 0.10274 35 100
i 7 64.931507 0.205479 66 43
i 11 65.136986 0.10274 46 72
i 11 65.342466 0.10274 35 100
i 7 65.342466 0.205479 69 43
i 11 65.547945 0.10274 46 72
i 2 65.547945 0.10274 40 70
i 11 65.753425 0.10274 35 100
i 12 65.753425 3.082192 52 47
i 12 65.753425 3.082192 55 47
i 12 65.753425 3.082192 59 47
i 7 65.753425 0.205479 64 43
i 11 65.958904 0.10274 46 72
i 11 66.061644 0.10274 42 52
i 5 66.061644 0.10274 64 49
i 11 66.164384 0.10274 35 100
i 7 66.164384 0.205479 71 43
i 11 66.369863 0.10274 46 72
i 2 66.369863 0.10274 40 70
i 11 66.472603 0.10274 42 52
i 11 66.575342 0.10274 35 100
i 7 66.575342 0.205479 67 43
i 5 66.678082 0.10274 64 49
i 11 66.780822 0.10274 46 72
i 11 66.883562 0.10274 42 52
i 11 66.986301 0.10274 35 100
i 11 66.986301 0.10274 38 62
i 7 66.986301 0.205479 71 43
i 11 67.191781 0.10274 46 72
i 2 67.191781 0.10274 40 70
i 11 67.294521 0.10274 42 52
i 5 67.294521 0.10274 64 49
i 11 67.39726 0.10274 35 100
i 7 67.39726 0.205479 64 43
i 11 67.60274 0.10274 46 72
i 11 67.705479 0.10274 42 52
i 11 67.808219 0.10274 35 100
i 7 67.808219 0.205479 71 43
i 11 68.013699 0.10274 46 72
i 2 68.013699 0.10274 40 70
i 5 68.013699 0.10274 64 49
i 11 68.116438 0.10274 42 52
i 11 68.219178 0.10274 35 100
i 7 68.219178 0.205479 67 43
i 11 68.424658 0.10274 46 72
i 11 68.527397 0.10274 42 52
i 5 68.527397 0.10274 64 49
i 11 68.630137 0.10274 35 100
i 11 68.630137 0.10274 38 62
i 7 68.630137 0.205479 71 43
i 11 68.835616 0.10274 46 72
i 2 68.835616 0.10274 40 70
i 11 68.938356 0.10274 42 52
i 11 69.041096 0.10274 35 100
i 12 69.041096 3.082192 48 46
i 12 69.041096 3.082192 52 46
i 12 69.041096 3.082192 55 46
i 7 69.041096 0.205479 64 43
i 11 69.246575 0.10274 46 72
i 11 69.349315 0.10274 42 52
i 11 69.452055 0.10274 35 100
i 7 69.452055 0.205479 67 43
i 11 69.657534 0.10274 46 72
i 2 69.657534 0.10274 40 70
i 11 69.760274 0.10274 42 52
i 11 69.863014 0.10274 35 100
i 7 69.863014 0.205479 72 43
i 11 70.068493 0.10274 46 72
i 11 70.171233 0.10274 42 52
i 11 70.273973 0.10274 35 100
i 11 70.273973 0.10274 38 62
i 7 70.273973 0.205479 67 43
i 11 70.479452 0.10274 46 72
i 2 70.479452 0.10274 40 70
i 11 70.582192 0.10274 42 52
i 11 70.684932 0.10274 35 100
i 7 70.684932 0.205479 64 43
i 11 70.890411 0.10274 46 72
i 11 70.993151 0.10274 42 52
i 11 71.09589 0.10274 35 100
i 7 71.09589 0.205479 67 43
i 11 71.30137 0.10274 46 72
i 2 71.30137 0.10274 40 70
i 11 71.40411 0.10274 42 52
i 11 71.506849 0.10274 35 100
i 7 71.506849 0.205479 72 43
i 11 71.712329 0.10274 46 72
i 11 71.815068 0.10274 42 52
i 11 71.917808 0.10274 35 100
i 11 71.917808 0.10274 38 62
i 7 71.917808 0.205479 67 43
i 11 72.123288 0.10274 46 72
i 2 72.123288 0.10274 40 70
i 11 72.226027 0.10274 42 52
i 11 72.328767 0.10274 35 100
i 12 72.328767 3.082192 55 45
i 12 72.328767 3.082192 59 45
i 12 72.328767 3.082192 62 45
i 7 72.328767 0.205479 62 43
i 11 72.534247 0.10274 46 72
i 11 72.636986 0.10274 42 52
i 5 72.636986 0.10274 64 49
i 11 72.739726 0.10274 35 100
i 7 72.739726 0.205479 67 43
i 11 72.945205 0.10274 46 72
i 2 72.945205 0.10274 40 70
i 11 73.047945 0.10274 42 52
i 11 73.150685 0.10274 35 100
i 7 73.150685 0.205479 71 43
i 5 73.253425 0.10274 64 49
i 11 73.356164 0.10274 46 72
i 11 73.458904 0.10274 42 52
i 11 73.561644 0.10274 35 100
i 11 73.561644 0.10274 38 62
i 7 73.561644 0.205479 67 43
i 11 73.767123 0.10274 46 72
i 2 73.767123 0.10274 40 70
i 11 73.869863 0.10274 42 52
i 5 73.869863 0.10274 64 49
i 11 73.972603 0.10274 35 100
i 7 73.972603 0.205479 62 43
i 11 74.178082 0.10274 46 72
i 11 74.280822 0.10274 42 52
i 11 74.383562 0.10274 35 100
i 7 74.383562 0.205479 67 43
i 11 74.589041 0.10274 46 72
i 2 74.589041 0.10274 40 70
i 5 74.589041 0.10274 64 49
i 11 74.691781 0.10274 42 52
i 11 74.794521 0.10274 35 100
i 7 74.794521 0.205479 71 43
i 11 75 0.10274 46 72
i 11 75.10274 0.10274 42 52
i 5 75.10274 0.10274 64 49
i 11 75.205479 0.10274 35 100
i 11 75.205479 0.10274 38 62
i 7 75.205479 0.205479 67 43
i 11 75.410959 0.10274 46 72
i 2 75.410959 0.10274 40 70
i 11 75.513699 0.10274 42 52
i 11 75.616438 0.10274 35 100
i 12 75.616438 3.082192 50 46
i 12 75.616438 3.082192 54 46
i 12 75.616438 3.082192 57 46
i 4 75.616438 3.082192 52 55
i 7 75.616438 0.205479 62 43
i 11 75.821918 0.10274 46 72
i 11 75.924658 0.10274 42 52
i 11 76.027397 0.10274 35 100
i 7 76.027397 0.205479 69 43
i 11 76.232877 0.10274 46 72
i 2 76.232877 0.10274 40 70
i 11 76.335616 0.10274 42 52
i 11 76.438356 0.10274 35 100
i 7 76.438356 0.205479 66 43
i 11 76.643836 0.10274 46 72
i 11 76.746575 0.10274 42 52
i 11 76.849315 0.10274 35 100
i 11 76.849315 0.10274 38 62
i 7 76.849315 0.205479 69 43
i 11 77.054795 0.10274 46 72
i 2 77.054795 0.10274 40 70
i 11 77.157534 0.10274 42 52
i 11 77.260274 0.10274 35 100
i 7 77.260274 0.205479 62 43
i 11 77.465753 0.10274 46 72
i 11 77.568493 0.10274 42 52
i 11 77.671233 0.10274 35 100
i 7 77.671233 0.205479 69 43
i 11 77.876712 0.10274 46 72
i 2 77.876712 0.10274 40 70
i 11 77.979452 0.10274 42 52
i 11 78.082192 0.10274 35 100
i 7 78.082192 0.205479 66 43
i 11 78.287671 0.10274 46 72
i 11 78.390411 0.10274 42 52
i 11 78.493151 0.10274 35 100
i 11 78.493151 0.10274 38 62
i 7 78.493151 0.205479 69 43
i 11 78.69863 0.10274 46 72
i 2 78.69863 0.10274 40 70
i 11 78.80137 0.10274 42 52
i 11 78.90411 0.10274 36 113
i 7 78.90411 0.205479 64 43
i 8 78.90411 0.10274 64 62
i 11 79.109589 0.10274 46 72
i 2 79.109589 0.10274 40 96
i 1 79.212329 0.10274 40 58
i 11 79.212329 0.10274 42 52
i 5 79.212329 0.10274 64 49
i 11 79.315068 0.10274 36 113
i 11 79.315068 0.10274 38 87
i 7 79.315068 0.205479 71 43
i 11 79.520548 0.10274 46 72
i 2 79.520548 0.10274 40 96
i 1 79.623288 0.10274 40 58
i 11 79.623288 0.10274 42 52
i 11 79.726027 0.10274 36 113
i 7 79.726027 0.205479 67 43
i 5 79.828767 0.10274 64 49
i 11 79.931507 0.10274 46 72
i 2 79.931507 0.10274 40 96
i 1 80.034247 0.10274 40 58
i 11 80.034247 0.10274 42 52
i 11 80.136986 0.10274 36 113
i 11 80.136986 0.10274 38 87
i 7 80.136986 0.205479 71 43
i 11 80.342466 0.10274 46 72
i 2 80.342466 0.10274 40 96
i 1 80.445205 0.10274 40 58
i 11 80.445205 0.10274 42 52
i 5 80.445205 0.10274 64 49
i 11 80.547945 0.10274 36 113
i 7 80.547945 0.205479 64 43
i 11 80.753425 0.10274 46 72
i 2 80.753425 0.10274 40 96
i 1 80.856164 0.10274 40 58
i 11 80.856164 0.10274 42 52
i 11 80.958904 0.10274 36 113
i 11 80.958904 0.10274 38 87
i 7 80.958904 0.205479 71 43
i 11 81.164384 0.10274 46 72
i 2 81.164384 0.10274 40 96
i 5 81.164384 0.10274 64 49
i 1 81.267123 0.10274 40 58
i 11 81.267123 0.10274 42 52
i 11 81.369863 0.10274 36 113
i 7 81.369863 0.205479 67 43
i 11 81.575342 0.10274 46 72
i 2 81.575342 0.10274 40 96
i 1 81.678082 0.10274 40 58
i 11 81.678082 0.10274 42 52
i 5 81.678082 0.10274 64 49
i 11 81.780822 0.10274 36 113
i 11 81.780822 0.10274 38 87
i 7 81.780822 0.205479 71 43
i 11 81.986301 0.10274 46 72
i 2 81.986301 0.10274 40 96
i 1 82.089041 0.10274 40 58
i 11 82.089041 0.10274 42 52
i 11 82.191781 0.10274 36 113
i 7 82.191781 0.205479 64 43
i 11 82.39726 0.10274 46 72
i 2 82.39726 0.10274 36 96
i 1 82.5 0.10274 40 58
i 11 82.5 0.10274 42 52
i 5 82.5 0.10274 64 49
i 11 82.60274 0.10274 36 113
i 11 82.60274 0.10274 38 87
i 7 82.60274 0.205479 67 43
i 11 82.808219 0.10274 46 72
i 2 82.808219 0.10274 36 96
i 1 82.910959 0.10274 40 58
i 11 82.910959 0.10274 42 52
i 11 83.013699 0.10274 36 113
i 7 83.013699 0.205479 72 43
i 5 83.116438 0.10274 64 49
i 11 83.219178 0.10274 46 72
i 2 83.219178 0.10274 36 96
i 1 83.321918 0.10274 40 58
i 11 83.321918 0.10274 42 52
i 11 83.424658 0.10274 36 113
i 11 83.424658 0.10274 38 87
i 7 83.424658 0.205479 67 43
i 11 83.630137 0.10274 46 72
i 2 83.630137 0.10274 36 96
i 1 83.732877 0.10274 40 58
i 11 83.732877 0.10274 42 52
i 5 83.732877 0.10274 64 49
i 11 83.835616 0.10274 36 113
i 7 83.835616 0.205479 64 43
i 11 84.041096 0.10274 46 72
i 2 84.041096 0.10274 36 96
i 1 84.143836 0.10274 40 58
i 11 84.143836 0.10274 42 52
i 11 84.246575 0.10274 36 113
i 11 84.246575 0.10274 38 87
i 7 84.246575 0.205479 67 43
i 11 84.452055 0.10274 46 72
i 2 84.452055 0.10274 36 96
i 5 84.452055 0.10274 64 49
i 1 84.554795 0.10274 40 58
i 11 84.554795 0.10274 42 52
i 11 84.657534 0.10274 36 113
i 7 84.657534 0.205479 72 43
i 11 84.863014 0.10274 46 72
i 2 84.863014 0.10274 36 96
i 1 84.965753 0.10274 40 58
i 11 84.965753 0.10274 42 52
i 5 84.965753 0.10274 64 49
i 11 85.068493 0.10274 36 113
i 11 85.068493 0.10274 38 87
i 7 85.068493 0.205479 67 43
i 11 85.273973 0.10274 46 72
i 2 85.273973 0.10274 36 96
i 1 85.376712 0.10274 40 58
i 11 85.376712 0.10274 42 52
i 11 85.479452 0.10274 36 113
i 7 85.479452 0.205479 62 43
i 11 85.684932 0.10274 46 72
i 2 85.684932 0.10274 43 96
i 1 85.787671 0.10274 40 58
i 11 85.787671 0.10274 42 52
i 5 85.787671 0.10274 64 49
i 9 85.787671 0.10274 52 50
i 11 85.890411 0.10274 36 113
i 11 85.890411 0.10274 38 87
i 7 85.890411 0.205479 67 43
i 11 86.09589 0.10274 46 72
i 2 86.09589 0.10274 43 96
i 1 86.19863 0.10274 40 58
i 11 86.19863 0.10274 42 52
i 11 86.30137 0.10274 36 113
i 7 86.30137 0.205479 71 43
i 5 86.40411 0.10274 64 49
i 11 86.506849 0.10274 46 72
i 2 86.506849 0.10274 43 96
i 1 86.609589 0.10274 40 58
i 11 86.609589 0.10274 42 52
i 11 86.712329 0.10274 36 113
i 11 86.712329 0.10274 38 87
i 7 86.712329 0.205479 67 43
i 11 86.917808 0.10274 46 72
i 2 86.917808 0.10274 43 96
i 9 86.917808 0.10274 59 50
i 1 87.020548 0.10274 40 58
i 11 87.020548 0.10274 42 52
i 5 87.020548 0.10274 64 49
i 11 87.123288 0.10274 36 113
i 7 87.123288 0.205479 62 43
i 11 87.328767 0.10274 46 72
i 2 87.328767 0.10274 43 96
i 1 87.431507 0.10274 40 58
i 11 87.431507 0.10274 42 52
i 11 87.534247 0.10274 36 113
i 11 87.534247 0.10274 38 87
i 7 87.534247 0.205479 67 43
i 11 87.739726 0.10274 46 72
i 2 87.739726 0.10274 43 96
i 5 87.739726 0.10274 64 49
i 1 87.842466 0.10274 40 58
i 11 87.842466 0.10274 42 52
i 9 87.842466 0.10274 64 50
i 11 87.945205 0.10274 36 113
i 7 87.945205 0.205479 71 43
i 11 88.150685 0.10274 46 72
i 2 88.150685 0.10274 43 96
i 1 88.253425 0.10274 40 58
i 11 88.253425 0.10274 42 52
i 5 88.253425 0.10274 64 49
i 11 88.356164 0.10274 36 113
i 11 88.356164 0.10274 38 87
i 7 88.356164 0.205479 67 43
i 11 88.561644 0.10274 46 72
i 2 88.561644 0.10274 43 96
i 1 88.664384 0.10274 40 58
i 11 88.664384 0.10274 42 52
i 11 88.767123 0.10274 36 113
i 7 88.767123 0.205479 62 43
i 11 88.972603 0.10274 46 72
i 2 88.972603 0.10274 38 96
i 1 89.075342 0.10274 40 58
i 11 89.075342 0.10274 42 52
i 5 89.075342 0.10274 64 49
i 11 89.178082 0.10274 36 113
i 11 89.178082 0.10274 38 87
i 7 89.178082 0.205479 69 43
i 11 89.383562 0.10274 46 72
i 2 89.383562 0.10274 38 96
i 1 89.486301 0.10274 40 58
i 11 89.486301 0.10274 42 52
i 11 89.589041 0.10274 36 113
i 7 89.589041 0.205479 66 43
i 5 89.691781 0.10274 64 49
i 11 89.794521 0.10274 46 72
i 2 89.794521 0.10274 38 96
i 1 89.89726 0.10274 40 58
i 11 89.89726 0.10274 42 52
i 11 90 0.10274 36 113
i 11 90 0.10274 38 87
i 7 90 0.205479 69 43
i 11 90.205479 0.10274 46 72
i 2 90.205479 0.10274 38 96
i 1 90.308219 0.10274 40 58
i 11 90.308219 0.10274 42 52
i 5 90.308219 0.10274 64 49
i 11 90.410959 0.10274 36 113
i 7 90.410959 0.205479 62 43
i 11 90.616438 0.10274 46 72
i 2 90.616438 0.10274 38 96
i 1 90.719178 0.10274 40 58
i 11 90.719178 0.10274 42 52
i 11 90.821918 0.10274 36 113
i 11 90.821918 0.10274 38 87
i 7 90.821918 0.205479 69 43
i 11 91.027397 0.10274 46 72
i 2 91.027397 0.10274 38 96
i 5 91.027397 0.10274 64 49
i 1 91.130137 0.10274 40 58
i 11 91.130137 0.10274 42 52
i 11 91.232877 0.10274 36 113
i 7 91.232877 0.205479 66 43
i 11 91.438356 0.10274 46 72
i 2 91.438356 0.10274 38 96
i 1 91.541096 0.10274 40 58
i 11 91.541096 0.10274 42 52
i 5 91.541096 0.10274 64 49
i 11 91.643836 0.10274 36 113
i 11 91.643836 0.10274 38 87
i 7 91.643836 0.205479 69 43
i 11 91.849315 0.10274 46 72
i 2 91.849315 0.10274 38 96
i 1 91.952055 0.10274 40 58
i 11 91.952055 0.10274 42 52
i 11 92.054795 0.10274 36 113
i 7 92.054795 0.205479 64 43
i 11 92.260274 0.10274 46 72
i 2 92.260274 0.10274 40 96
i 1 92.363014 0.10274 40 58
i 11 92.363014 0.10274 42 52
i 5 92.363014 0.10274 64 49
i 9 92.363014 0.10274 52 50
i 11 92.465753 0.10274 36 113
i 11 92.465753 0.10274 38 87
i 7 92.465753 0.205479 71 43
i 11 92.671233 0.10274 46 72
i 2 92.671233 0.10274 40 96
i 1 92.773973 0.10274 40 58
i 11 92.773973 0.10274 42 52
i 11 92.876712 0.10274 36 113
i 7 92.876712 0.205479 67 43
i 5 92.979452 0.10274 64 49
i 11 93.082192 0.10274 46 72
i 2 93.082192 0.10274 40 96
i 1 93.184932 0.10274 40 58
i 11 93.184932 0.10274 42 52
i 11 93.287671 0.10274 36 113
i 11 93.287671 0.10274 38 87
i 7 93.287671 0.205479 71 43
i 11 93.493151 0.10274 46 72
i 2 93.493151 0.10274 40 96
i 9 93.493151 0.10274 59 50
i 1 93.59589 0.10274 40 58
i 11 93.59589 0.10274 42 52
i 5 93.59589 0.10274 64 49
i 11 93.69863 0.10274 36 113
i 7 93.69863 0.205479 64 43
i 11 93.90411 0.10274 46 72
i 2 93.90411 0.10274 40 96
i 1 94.006849 0.10274 40 58
i 11 94.006849 0.10274 42 52
i 11 94.109589 0.10274 36 113
i 11 94.109589 0.10274 38 87
i 7 94.109589 0.205479 71 43
i 11 94.315068 0.10274 46 72
i 2 94.315068 0.10274 40 96
i 5 94.315068 0.10274 64 49
i 1 94.417808 0.10274 40 58
i 11 94.417808 0.10274 42 52
i 9 94.417808 0.10274 64 50
i 11 94.520548 0.10274 36 113
i 7 94.520548 0.205479 67 43
i 11 94.726027 0.10274 46 72
i 2 94.726027 0.10274 40 96
i 1 94.828767 0.10274 40 58
i 11 94.828767 0.10274 42 52
i 5 94.828767 0.10274 64 49
i 11 94.931507 0.10274 36 113
i 11 94.931507 0.10274 38 87
i 7 94.931507 0.205479 71 43
i 11 95.136986 0.10274 46 72
i 2 95.136986 0.10274 40 96
i 1 95.239726 0.10274 40 58
i 11 95.239726 0.10274 42 52
i 11 95.342466 0.10274 36 113
i 7 95.342466 0.205479 64 43
i 11 95.547945 0.10274 46 72
i 2 95.547945 0.10274 36 96
i 1 95.650685 0.10274 40 58
i 11 95.650685 0.10274 42 52
i 5 95.650685 0.10274 64 49
i 11 95.753425 0.10274 36 113
i 11 95.753425 0.10274 38 87
i 7 95.753425 0.205479 67 43
i 11 95.958904 0.10274 46 72
i 2 95.958904 0.10274 36 96
i 1 96.061644 0.10274 40 58
i 11 96.061644 0.10274 42 52
i 11 96.164384 0.10274 36 113
i 7 96.164384 0.205479 72 43
i 5 96.267123 0.10274 64 49
i 11 96.369863 0.10274 46 72
i 2 96.369863 0.10274 36 96
i 1 96.472603 0.10274 40 58
i 11 96.472603 0.10274 42 52
i 11 96.575342 0.10274 36 113
i 11 96.575342 0.10274 38 87
i 7 96.575342 0.205479 67 43
i 11 96.780822 0.10274 46 72
i 2 96.780822 0.10274 36 96
i 1 96.883562 0.10274 40 58
i 11 96.883562 0.10274 42 52
i 5 96.883562 0.10274 64 49
i 11 96.986301 0.10274 36 113
i 7 96.986301 0.205479 64 43
i 11 97.191781 0.10274 46 72
i 2 97.191781 0.10274 36 96
i 1 97.294521 0.10274 40 58
i 11 97.294521 0.10274 42 52
i 11 97.39726 0.10274 36 113
i 11 97.39726 0.10274 38 87
i 7 97.39726 0.205479 67 43
i 11 97.60274 0.10274 46 72
i 2 97.60274 0.10274 36 96
i 5 97.60274 0.10274 64 49
i 1 97.705479 0.10274 40 58
i 11 97.705479 0.10274 42 52
i 11 97.808219 0.10274 36 113
i 7 97.808219 0.205479 72 43
i 11 98.013699 0.10274 46 72
i 2 98.013699 0.10274 36 96
i 1 98.116438 0.10274 40 58
i 11 98.116438 0.10274 42 52
i 5 98.116438 0.10274 64 49
i 11 98.219178 0.10274 36 113
i 11 98.219178 0.10274 38 87
i 7 98.219178 0.205479 67 43
i 11 98.424658 0.10274 46 72
i 2 98.424658 0.10274 36 96
i 1 98.527397 0.10274 40 58
i 11 98.527397 0.10274 42 52
i 11 98.630137 0.10274 36 113
i 7 98.630137 0.205479 62 43
i 11 98.835616 0.10274 46 72
i 2 98.835616 0.10274 43 96
i 1 98.938356 0.10274 40 58
i 11 98.938356 0.10274 42 52
i 5 98.938356 0.10274 64 49
i 9 98.938356 0.10274 52 50
i 11 99.041096 0.10274 36 113
i 11 99.041096 0.10274 38 87
i 7 99.041096 0.205479 67 43
i 11 99.246575 0.10274 46 72
i 2 99.246575 0.10274 43 96
i 1 99.349315 0.10274 40 58
i 11 99.349315 0.10274 42 52
i 11 99.452055 0.10274 36 113
i 7 99.452055 0.205479 71 43
i 5 99.554795 0.10274 64 49
i 11 99.657534 0.10274 46 72
i 2 99.657534 0.10274 43 96
i 1 99.760274 0.10274 40 58
i 11 99.760274 0.10274 42 52
i 11 99.863014 0.10274 36 113
i 11 99.863014 0.10274 38 87
i 7 99.863014 0.205479 67 43
i 11 100.068493 0.10274 46 72
i 2 100.068493 0.10274 43 96
i 9 100.068493 0.10274 59 50
i 1 100.171233 0.10274 40 58
i 11 100.171233 0.10274 42 52
i 5 100.171233 0.10274 64 49
i 11 100.273973 0.10274 36 113
i 7 100.273973 0.205479 62 43
i 11 100.479452 0.10274 46 72
i 2 100.479452 0.10274 43 96
i 1 100.582192 0.10274 40 58
i 11 100.582192 0.10274 42 52
i 11 100.684932 0.10274 36 113
i 11 100.684932 0.10274 38 87
i 7 100.684932 0.205479 67 43
i 11 100.890411 0.10274 46 72
i 2 100.890411 0.10274 43 96
i 5 100.890411 0.10274 64 49
i 1 100.993151 0.10274 40 58
i 11 100.993151 0.10274 42 52
i 9 100.993151 0.10274 64 50
i 11 101.09589 0.10274 36 113
i 7 101.09589 0.205479 71 43
i 11 101.30137 0.10274 46 72
i 2 101.30137 0.10274 43 96
i 1 101.40411 0.10274 40 58
i 11 101.40411 0.10274 42 52
i 5 101.40411 0.10274 64 49
i 11 101.506849 0.10274 36 113
i 11 101.506849 0.10274 38 87
i 7 101.506849 0.205479 67 43
i 11 101.712329 0.10274 46 72
i 2 101.712329 0.10274 43 96
i 1 101.815068 0.10274 40 58
i 11 101.815068 0.10274 42 52
i 11 101.917808 0.10274 36 113
i 4 101.917808 3.082192 52 55
i 7 101.917808 0.205479 62 43
i 11 102.123288 0.10274 46 72
i 2 102.123288 0.10274 38 96
i 1 102.226027 0.10274 40 58
i 11 102.226027 0.10274 42 52
i 5 102.226027 0.10274 64 49
i 9 102.226027 0.10274 52 50
i 11 102.328767 0.10274 36 113
i 11 102.328767 0.10274 38 90
i 7 102.328767 0.205479 69 43
i 11 102.534247 0.10274 46 72
i 2 102.534247 0.10274 38 96
i 1 102.636986 0.10274 40 58
i 11 102.636986 0.10274 42 52
i 11 102.739726 0.10274 36 113
i 7 102.739726 0.205479 66 43
i 5 102.842466 0.10274 64 49
i 11 102.945205 0.10274 46 72
i 2 102.945205 0.10274 38 96
i 1 103.047945 0.10274 40 58
i 11 103.047945 0.10274 42 52
i 11 103.150685 0.10274 36 113
i 11 103.150685 0.10274 38 90
i 7 103.150685 0.205479 69 43
i 11 103.356164 0.10274 46 72
i 2 103.356164 0.10274 38 96
i 9 103.356164 0.10274 59 50
i 1 103.458904 0.10274 40 58
i 11 103.458904 0.10274 42 52
i 5 103.458904 0.10274 64 49
i 11 103.561644 0.10274 36 113
i 7 103.561644 0.205479 62 43
i 11 103.767123 0.10274 46 72
i 2 103.767123 0.10274 38 96
i 1 103.869863 0.10274 40 58
i 11 103.869863 0.10274 42 52
i 11 103.972603 0.10274 36 113
i 11 103.972603 0.10274 38 90
i 7 103.972603 0.205479 69 43
i 11 104.178082 0.10274 46 72
i 2 104.178082 0.10274 38 96
i 5 104.178082 0.10274 64 49
i 1 104.280822 0.10274 40 58
i 11 104.280822 0.10274 42 52
i 9 104.280822 0.10274 64 50
i 11 104.383562 0.10274 36 113
i 7 104.383562 0.205479 66 43
i 11 104.589041 0.10274 38 90
i 11 104.589041 0.10274 46 72
i 2 104.589041 0.10274 38 96
i 1 104.691781 0.10274 40 58
i 11 104.691781 0.10274 42 52
i 5 104.691781 0.10274 64 49
i 8 104.691781 0.10274 59 54
i 11 104.794521 0.10274 36 113
i 11 104.794521 0.10274 38 90
i 7 104.794521 0.205479 69 43
i 11 105 0.10274 38 90
i 11 105 0.10274 46 72
i 2 105 0.10274 38 96
i 8 105 0.10274 64 54
i 1 105.10274 0.10274 40 58
i 11 105.10274 0.10274 38 90
i 11 105.10274 0.10274 42 52
i 11 105.205479 0.10274 36 113
i 7 105.205479 0.10274 64 63
i 8 105.205479 0.10274 64 62
i 1 105.308219 0.10274 40 78
i 11 105.308219 0.10274 42 39
i 9 105.308219 0.10274 52 73
i 11 105.410959 0.10274 46 72
i 2 105.410959 0.10274 40 96
i 7 105.410959 0.10274 71 63
i 1 105.513699 0.10274 40 78
i 11 105.513699 0.10274 42 39
i 5 105.513699 0.10274 64 49
i 9 105.513699 0.10274 52 73
i 11 105.616438 0.10274 36 113
i 11 105.616438 0.10274 38 87
i 7 105.616438 0.10274 67 63
i 1 105.719178 0.10274 40 78
i 11 105.719178 0.10274 42 39
i 11 105.821918 0.10274 46 72
i 2 105.821918 0.10274 40 96
i 7 105.821918 0.10274 71 63
i 9 105.821918 0.10274 59 73
i 1 105.924658 0.10274 40 78
i 11 105.924658 0.10274 42 39
i 11 106.027397 0.10274 36 113
i 7 106.027397 0.10274 64 63
i 1 106.130137 0.10274 40 78
i 11 106.130137 0.10274 42 39
i 5 106.130137 0.10274 64 49
i 11 106.232877 0.10274 46 72
i 2 106.232877 0.10274 40 96
i 7 106.232877 0.10274 71 63
i 9 106.232877 0.10274 64 73
i 1 106.335616 0.10274 40 78
i 11 106.335616 0.10274 42 39
i 11 106.438356 0.10274 36 113
i 11 106.438356 0.10274 38 87
i 7 106.438356 0.10274 67 63
i 1 106.541096 0.10274 40 78
i 11 106.541096 0.10274 42 39
i 11 106.643836 0.10274 46 72
i 2 106.643836 0.10274 40 96
i 7 106.643836 0.10274 71 63
i 1 106.746575 0.10274 40 78
i 11 106.746575 0.10274 42 39
i 5 106.746575 0.10274 64 49
i 9 106.746575 0.10274 55 73
i 11 106.849315 0.10274 36 113
i 7 106.849315 0.10274 64 63
i 1 106.952055 0.10274 40 78
i 11 106.952055 0.10274 42 39
i 11 107.054795 0.10274 46 72
i 2 107.054795 0.10274 40 96
i 7 107.054795 0.10274 71 63
i 9 107.054795 0.10274 52 73
i 1 107.157534 0.10274 40 78
i 11 107.157534 0.10274 42 39
i 11 107.260274 0.10274 36 113
i 11 107.260274 0.10274 38 87
i 7 107.260274 0.10274 67 63
i 1 107.363014 0.10274 40 78
i 11 107.363014 0.10274 42 39
i 11 107.465753 0.10274 46 72
i 2 107.465753 0.10274 40 96
i 5 107.465753 0.10274 64 49
i 7 107.465753 0.10274 71 63
i 1 107.568493 0.10274 40 78
i 11 107.568493 0.10274 42 39
i 9 107.568493 0.10274 62 73
i 11 107.671233 0.10274 36 113
i 7 107.671233 0.10274 64 63
i 1 107.773973 0.10274 40 78
i 11 107.773973 0.10274 42 39
i 11 107.876712 0.10274 46 72
i 2 107.876712 0.10274 40 96
i 7 107.876712 0.10274 71 63
i 1 107.979452 0.10274 40 78
i 11 107.979452 0.10274 42 39
i 5 107.979452 0.10274 64 49
i 11 108.082192 0.10274 36 113
i 11 108.082192 0.10274 38 87
i 7 108.082192 0.10274 67 63
i 1 108.184932 0.10274 40 78
i 11 108.184932 0.10274 42 39
i 9 108.184932 0.10274 59 73
i 11 108.287671 0.10274 46 72
i 2 108.287671 0.10274 40 96
i 7 108.287671 0.10274 71 63
i 1 108.390411 0.10274 40 78
i 11 108.390411 0.10274 42 39
i 11 108.493151 0.10274 36 113
i 7 108.493151 0.10274 64 63
i 1 108.59589 0.10274 36 78
i 11 108.59589 0.10274 42 39
i 9 108.59589 0.10274 52 73
i 11 108.69863 0.10274 46 72
i 2 108.69863 0.10274 36 96
i 7 108.69863 0.10274 67 63
i 1 108.80137 0.10274 36 78
i 11 108.80137 0.10274 42 39
i 5 108.80137 0.10274 71 50
i 9 108.80137 0.10274 55 73
i 11 108.90411 0.10274 36 113
i 11 108.90411 0.10274 38 87
i 7 108.90411 0.10274 72 63
i 1 109.006849 0.10274 36 78
i 11 109.006849 0.10274 42 39
i 11 109.109589 0.10274 46 72
i 2 109.109589 0.10274 36 96
i 7 109.109589 0.10274 67 63
i 9 109.109589 0.10274 60 73
i 1 109.212329 0.10274 36 78
i 11 109.212329 0.10274 42 39
i 11 109.315068 0.10274 36 113
i 7 109.315068 0.10274 64 63
i 1 109.417808 0.10274 36 78
i 11 109.417808 0.10274 42 39
i 5 109.417808 0.10274 71 50
i 11 109.520548 0.10274 46 72
i 2 109.520548 0.10274 36 96
i 7 109.520548 0.10274 67 63
i 9 109.520548 0.10274 64 73
i 1 109.623288 0.10274 36 78
i 11 109.623288 0.10274 42 39
i 11 109.726027 0.10274 36 113
i 11 109.726027 0.10274 38 87
i 7 109.726027 0.10274 72 63
i 1 109.828767 0.10274 36 78
i 11 109.828767 0.10274 42 39
i 11 109.931507 0.10274 46 72
i 2 109.931507 0.10274 36 96
i 7 109.931507 0.10274 67 63
i 1 110.034247 0.10274 36 78
i 11 110.034247 0.10274 42 39
i 5 110.034247 0.10274 71 50
i 9 110.034247 0.10274 55 73
i 11 110.136986 0.10274 36 113
i 7 110.136986 0.10274 64 63
i 1 110.239726 0.10274 36 78
i 11 110.239726 0.10274 42 39
i 11 110.342466 0.10274 46 72
i 2 110.342466 0.10274 36 96
i 7 110.342466 0.10274 67 63
i 9 110.342466 0.10274 60 73
i 1 110.445205 0.10274 36 78
i 11 110.445205 0.10274 42 39
i 11 110.547945 0.10274 36 113
i 11 110.547945 0.10274 38 87
i 7 110.547945 0.10274 72 63
i 1 110.650685 0.10274 36 78
i 11 110.650685 0.10274 42 39
i 11 110.753425 0.10274 46 72
i 2 110.753425 0.10274 36 96
i 5 110.753425 0.10274 71 50
i 7 110.753425 0.10274 67 63
i 1 110.856164 0.10274 36 78
i 11 110.856164 0.10274 42 39
i 9 110.856164 0.10274 52 73
i 11 110.958904 0.10274 36 113
i 7 110.958904 0.10274 64 63
i 1 111.061644 0.10274 36 78
i 11 111.061644 0.10274 42 39
i 11 111.164384 0.10274 46 72
i 2 111.164384 0.10274 36 96
i 7 111.164384 0.10274 67 63
i 1 111.267123 0.10274 36 78
i 11 111.267123 0.10274 42 39
i 5 111.267123 0.10274 71 50
i 11 111.369863 0.10274 36 113
i 11 111.369863 0.10274 38 87
i 7 111.369863 0.10274 72 63
i 1 111.472603 0.10274 36 78
i 11 111.472603 0.10274 42 39
i 9 111.472603 0.10274 55 73
i 11 111.575342 0.10274 46 72
i 2 111.575342 0.10274 36 96
i 7 111.575342 0.10274 67 63
i 1 111.678082 0.10274 36 78
i 11 111.678082 0.10274 42 39
i 11 111.780822 0.10274 36 113
i 7 111.780822 0.10274 62 63
i 1 111.883562 0.10274 43 78
i 11 111.883562 0.10274 42 39
i 9 111.883562 0.10274 55 73
i 11 111.986301 0.10274 46 72
i 2 111.986301 0.10274 43 96
i 7 111.986301 0.10274 67 63
i 1 112.089041 0.10274 43 78
i 11 112.089041 0.10274 42 39
i 5 112.089041 0.10274 64 49
i 9 112.089041 0.10274 55 73
i 11 112.191781 0.10274 36 113
i 11 112.191781 0.10274 38 87
i 7 112.191781 0.10274 71 63
i 1 112.294521 0.10274 43 78
i 11 112.294521 0.10274 42 39
i 11 112.39726 0.10274 46 72
i 2 112.39726 0.10274 43 96
i 7 112.39726 0.10274 67 63
i 9 112.39726 0.10274 62 73
i 1 112.5 0.10274 43 78
i 11 112.5 0.10274 42 39
i 11 112.60274 0.10274 36 113
i 7 112.60274 0.10274 62 63
i 1 112.705479 0.10274 43 78
i 11 112.705479 0.10274 42 39
i 5 112.705479 0.10274 64 49
i 11 112.808219 0.10274 46 72
i 2 112.808219 0.10274 43 96
i 7 112.808219 0.10274 67 63
i 9 112.808219 0.10274 59 73
i 1 112.910959 0.10274 43 78
i 11 112.910959 0.10274 42 39
i 11 113.013699 0.10274 36 113
i 11 113.013699 0.10274 38 87
i 7 113.013699 0.10274 71 63
i 1 113.116438 0.10274 43 78
i 11 113.116438 0.10274 42 39
i 11 113.219178 0.10274 46 72
i 2 113.219178 0.10274 43 96
i 7 113.219178 0.10274 67 63
i 1 113.321918 0.10274 43 78
i 11 113.321918 0.10274 42 39
i 5 113.321918 0.10274 64 49
i 9 113.321918 0.10274 55 73
i 11 113.424658 0.10274 36 113
i 7 113.424658 0.10274 62 63
i 1 113.527397 0.10274 43 78
i 11 113.527397 0.10274 42 39
i 11 113.630137 0.10274 46 72
i 2 113.630137 0.10274 43 96
i 7 113.630137 0.10274 67 63
i 9 113.630137 0.10274 57 73
i 1 113.732877 0.10274 43 78
i 11 113.732877 0.10274 42 39
i 11 113.835616 0.10274 36 113
i 11 113.835616 0.10274 38 87
i 7 113.835616 0.10274 71 63
i 1 113.938356 0.10274 43 78
i 11 113.938356 0.10274 42 39
i 11 114.041096 0.10274 46 72
i 2 114.041096 0.10274 43 96
i 5 114.041096 0.10274 64 49
i 7 114.041096 0.10274 67 63
i 1 114.143836 0.10274 43 78
i 11 114.143836 0.10274 42 39
i 9 114.143836 0.10274 59 73
i 11 114.246575 0.10274 36 113
i 7 114.246575 0.10274 62 63
i 1 114.349315 0.10274 43 78
i 11 114.349315 0.10274 42 39
i 11 114.452055 0.10274 46 72
i 2 114.452055 0.10274 43 96
i 7 114.452055 0.10274 67 63
i 1 114.554795 0.10274 43 78
i 11 114.554795 0.10274 42 39
i 5 114.554795 0.10274 64 49
i 11 114.657534 0.10274 36 113
i 11 114.657534 0.10274 38 87
i 7 114.657534 0.10274 71 63
i 1 114.760274 0.10274 43 78
i 11 114.760274 0.10274 42 39
i 9 114.760274 0.10274 62 73
i 11 114.863014 0.10274 46 72
i 2 114.863014 0.10274 43 96
i 7 114.863014 0.10274 67 63
i 1 114.965753 0.10274 43 78
i 11 114.965753 0.10274 42 39
i 11 115.068493 0.10274 36 113
i 7 115.068493 0.10274 62 63
i 1 115.171233 0.10274 38 78
i 11 115.171233 0.10274 42 39
i 9 115.171233 0.10274 50 73
i 11 115.273973 0.10274 46 72
i 2 115.273973 0.10274 38 96
i 7 115.273973 0.10274 69 63
i 1 115.376712 0.10274 38 78
i 11 115.376712 0.10274 42 39
i 5 115.376712 0.10274 71 50
i 9 115.376712 0.10274 57 73
i 11 115.479452 0.10274 36 113
i 11 115.479452 0.10274 38 87
i 7 115.479452 0.10274 66 63
i 1 115.582192 0.10274 38 78
i 11 115.582192 0.10274 42 39
i 11 115.684932 0.10274 46 72
i 2 115.684932 0.10274 38 96
i 7 115.684932 0.10274 69 63
i 9 115.684932 0.10274 62 73
i 1 115.787671 0.10274 38 78
i 11 115.787671 0.10274 42 39
i 11 115.890411 0.10274 36 113
i 7 115.890411 0.10274 62 63
i 1 115.993151 0.10274 38 78
i 11 115.993151 0.10274 42 39
i 5 115.993151 0.10274 71 50
i 11 116.09589 0.10274 46 72
i 2 116.09589 0.10274 38 96
i 7 116.09589 0.10274 69 63
i 9 116.09589 0.10274 54 73
i 1 116.19863 0.10274 38 78
i 11 116.19863 0.10274 42 39
i 11 116.30137 0.10274 36 113
i 11 116.30137 0.10274 38 87
i 7 116.30137 0.10274 66 63
i 1 116.40411 0.10274 38 78
i 11 116.40411 0.10274 42 39
i 11 116.506849 0.10274 46 72
i 2 116.506849 0.10274 38 96
i 7 116.506849 0.10274 69 63
i 1 116.609589 0.10274 38 78
i 11 116.609589 0.10274 42 39
i 5 116.609589 0.10274 71 50
i 9 116.609589 0.10274 57 73
i 11 116.712329 0.10274 36 113
i 7 116.712329 0.10274 62 63
i 1 116.815068 0.10274 38 78
i 11 116.815068 0.10274 42 39
i 11 116.917808 0.10274 46 72
i 2 116.917808 0.10274 38 96
i 7 116.917808 0.10274 69 63
i 9 116.917808 0.10274 62 73
i 1 117.020548 0.10274 38 78
i 11 117.020548 0.10274 42 39
i 11 117.123288 0.10274 36 113
i 11 117.123288 0.10274 38 87
i 7 117.123288 0.10274 66 63
i 1 117.226027 0.10274 38 78
i 11 117.226027 0.10274 42 39
i 11 117.328767 0.10274 46 72
i 2 117.328767 0.10274 38 96
i 5 117.328767 0.10274 71 50
i 7 117.328767 0.10274 69 63
i 1 117.431507 0.10274 38 78
i 11 117.431507 0.10274 42 39
i 9 117.431507 0.10274 66 73
i 11 117.534247 0.10274 36 113
i 7 117.534247 0.10274 62 63
i 1 117.636986 0.10274 38 78
i 11 117.636986 0.10274 42 39
i 11 117.739726 0.10274 46 72
i 2 117.739726 0.10274 38 96
i 7 117.739726 0.10274 69 63
i 1 117.842466 0.10274 38 78
i 11 117.842466 0.10274 42 39
i 5 117.842466 0.10274 71 50
i 11 117.945205 0.10274 36 113
i 11 117.945205 0.10274 38 87
i 7 117.945205 0.10274 66 63
i 1 118.047945 0.10274 38 78
i 11 118.047945 0.10274 42 39
i 9 118.047945 0.10274 62 73
i 11 118.150685 0.10274 46 72
i 2 118.150685 0.10274 38 96
i 7 118.150685 0.10274 69 63
i 1 118.253425 0.10274 38 78
i 11 118.253425 0.10274 42 39
i 11 118.356164 0.10274 36 113
i 7 118.356164 0.10274 64 63
i 1 118.458904 0.10274 40 78
i 11 118.458904 0.10274 42 39
i 9 118.458904 0.10274 52 73
i 11 118.561644 0.10274 46 72
i 2 118.561644 0.10274 40 96
i 7 118.561644 0.10274 71 63
i 1 118.664384 0.10274 40 78
i 11 118.664384 0.10274 42 39
i 5 118.664384 0.10274 64 49
i 9 118.664384 0.10274 52 73
i 11 118.767123 0.10274 36 113
i 11 118.767123 0.10274 38 87
i 7 118.767123 0.10274 67 63
i 1 118.869863 0.10274 40 78
i 11 118.869863 0.10274 42 39
i 11 118.972603 0.10274 46 72
i 2 118.972603 0.10274 40 96
i 7 118.972603 0.10274 71 63
i 9 118.972603 0.10274 59 73
i 1 119.075342 0.10274 40 78
i 11 119.075342 0.10274 42 39
i 11 119.178082 0.10274 36 113
i 7 119.178082 0.10274 64 63
i 1 119.280822 0.10274 40 78
i 11 119.280822 0.10274 42 39
i 5 119.280822 0.10274 64 49
i 11 119.383562 0.10274 46 72
i 2 119.383562 0.10274 40 96
i 7 119.383562 0.10274 71 63
i 9 119.383562 0.10274 64 73
i 1 119.486301 0.10274 40 78
i 11 119.486301 0.10274 42 39
i 11 119.589041 0.10274 36 113
i 11 119.589041 0.10274 38 87
i 7 119.589041 0.10274 67 63
i 1 119.691781 0.10274 40 78
i 11 119.691781 0.10274 42 39
i 11 119.794521 0.10274 46 72
i 2 119.794521 0.10274 40 96
i 7 119.794521 0.10274 71 63
i 1 119.89726 0.10274 40 78
i 11 119.89726 0.10274 42 39
i 5 119.89726 0.10274 64 49
i 9 119.89726 0.10274 55 73
i 11 120 0.10274 36 113
i 7 120 0.10274 64 63
i 1 120.10274 0.10274 40 78
i 11 120.10274 0.10274 42 39
i 11 120.205479 0.10274 46 72
i 2 120.205479 0.10274 40 96
i 7 120.205479 0.10274 71 63
i 9 120.205479 0.10274 52 73
i 1 120.308219 0.10274 40 78
i 11 120.308219 0.10274 42 39
i 11 120.410959 0.10274 36 113
i 11 120.410959 0.10274 38 87
i 7 120.410959 0.10274 67 63
i 1 120.513699 0.10274 40 78
i 11 120.513699 0.10274 42 39
i 11 120.616438 0.10274 46 72
i 2 120.616438 0.10274 40 96
i 5 120.616438 0.10274 64 49
i 7 120.616438 0.10274 71 63
i 1 120.719178 0.10274 40 78
i 11 120.719178 0.10274 42 39
i 9 120.719178 0.10274 62 73
i 11 120.821918 0.10274 36 113
i 7 120.821918 0.10274 64 63
i 1 120.924658 0.10274 40 78
i 11 120.924658 0.10274 42 39
i 11 121.027397 0.10274 46 72
i 2 121.027397 0.10274 40 96
i 7 121.027397 0.10274 71 63
i 1 121.130137 0.10274 40 78
i 11 121.130137 0.10274 42 39
i 5 121.130137 0.10274 64 49
i 11 121.232877 0.10274 36 113
i 11 121.232877 0.10274 38 87
i 7 121.232877 0.10274 67 63
i 1 121.335616 0.10274 40 78
i 11 121.335616 0.10274 42 39
i 9 121.335616 0.10274 59 73
i 11 121.438356 0.10274 46 72
i 2 121.438356 0.10274 40 96
i 7 121.438356 0.10274 71 63
i 1 121.541096 0.10274 40 78
i 11 121.541096 0.10274 42 39
i 11 121.643836 0.10274 36 113
i 7 121.643836 0.10274 64 63
i 1 121.746575 0.10274 36 78
i 11 121.746575 0.10274 42 39
i 9 121.746575 0.10274 52 73
i 11 121.849315 0.10274 46 72
i 2 121.849315 0.10274 36 96
i 7 121.849315 0.10274 67 63
i 1 121.952055 0.10274 36 78
i 11 121.952055 0.10274 42 39
i 5 121.952055 0.10274 71 50
i 9 121.952055 0.10274 55 73
i 11 122.054795 0.10274 36 113
i 11 122.054795 0.10274 38 87
i 7 122.054795 0.10274 72 63
i 1 122.157534 0.10274 36 78
i 11 122.157534 0.10274 42 39
i 11 122.260274 0.10274 46 72
i 2 122.260274 0.10274 36 96
i 7 122.260274 0.10274 67 63
i 9 122.260274 0.10274 60 73
i 1 122.363014 0.10274 36 78
i 11 122.363014 0.10274 42 39
i 11 122.465753 0.10274 36 113
i 7 122.465753 0.10274 64 63
i 1 122.568493 0.10274 36 78
i 11 122.568493 0.10274 42 39
i 5 122.568493 0.10274 71 50
i 11 122.671233 0.10274 46 72
i 2 122.671233 0.10274 36 96
i 7 122.671233 0.10274 67 63
i 9 122.671233 0.10274 64 73
i 1 122.773973 0.10274 36 78
i 11 122.773973 0.10274 42 39
i 11 122.876712 0.10274 36 113
i 11 122.876712 0.10274 38 87
i 7 122.876712 0.10274 72 63
i 1 122.979452 0.10274 36 78
i 11 122.979452 0.10274 42 39
i 11 123.082192 0.10274 46 72
i 2 123.082192 0.10274 36 96
i 7 123.082192 0.10274 67 63
i 1 123.184932 0.10274 36 78
i 11 123.184932 0.10274 42 39
i 5 123.184932 0.10274 71 50
i 9 123.184932 0.10274 55 73
i 11 123.287671 0.10274 36 113
i 7 123.287671 0.10274 64 63
i 1 123.390411 0.10274 36 78
i 11 123.390411 0.10274 42 39
i 11 123.493151 0.10274 46 72
i 2 123.493151 0.10274 36 96
i 7 123.493151 0.10274 67 63
i 9 123.493151 0.10274 60 73
i 1 123.59589 0.10274 36 78
i 11 123.59589 0.10274 42 39
i 11 123.69863 0.10274 36 113
i 11 123.69863 0.10274 38 87
i 7 123.69863 0.10274 72 63
i 1 123.80137 0.10274 36 78
i 11 123.80137 0.10274 42 39
i 11 123.90411 0.10274 46 72
i 2 123.90411 0.10274 36 96
i 5 123.90411 0.10274 71 50
i 7 123.90411 0.10274 67 63
i 1 124.006849 0.10274 36 78
i 11 124.006849 0.10274 42 39
i 9 124.006849 0.10274 52 73
i 11 124.109589 0.10274 36 113
i 7 124.109589 0.10274 64 63
i 1 124.212329 0.10274 36 78
i 11 124.212329 0.10274 42 39
i 11 124.315068 0.10274 46 72
i 2 124.315068 0.10274 36 96
i 7 124.315068 0.10274 67 63
i 1 124.417808 0.10274 36 78
i 11 124.417808 0.10274 42 39
i 5 124.417808 0.10274 71 50
i 11 124.520548 0.10274 36 113
i 11 124.520548 0.10274 38 87
i 7 124.520548 0.10274 72 63
i 1 124.623288 0.10274 36 78
i 11 124.623288 0.10274 42 39
i 9 124.623288 0.10274 55 73
i 11 124.726027 0.10274 46 72
i 2 124.726027 0.10274 36 96
i 7 124.726027 0.10274 67 63
i 1 124.828767 0.10274 36 78
i 11 124.828767 0.10274 42 39
i 11 124.931507 0.10274 36 113
i 7 124.931507 0.10274 62 63
i 1 125.034247 0.10274 43 78
i 11 125.034247 0.10274 42 39
i 9 125.034247 0.10274 55 73
i 11 125.136986 0.10274 46 72
i 2 125.136986 0.10274 43 96
i 7 125.136986 0.10274 67 63
i 1 125.239726 0.10274 43 78
i 11 125.239726 0.10274 42 39
i 5 125.239726 0.10274 64 49
i 9 125.239726 0.10274 55 73
i 11 125.342466 0.10274 36 113
i 11 125.342466 0.10274 38 87
i 7 125.342466 0.10274 71 63
i 1 125.445205 0.10274 43 78
i 11 125.445205 0.10274 42 39
i 11 125.547945 0.10274 46 72
i 2 125.547945 0.10274 43 96
i 7 125.547945 0.10274 67 63
i 9 125.547945 0.10274 62 73
i 1 125.650685 0.10274 43 78
i 11 125.650685 0.10274 42 39
i 11 125.753425 0.10274 36 113
i 7 125.753425 0.10274 62 63
i 1 125.856164 0.10274 43 78
i 11 125.856164 0.10274 42 39
i 5 125.856164 0.10274 64 49
i 11 125.958904 0.10274 46 72
i 2 125.958904 0.10274 43 96
i 7 125.958904 0.10274 67 63
i 9 125.958904 0.10274 59 73
i 1 126.061644 0.10274 43 78
i 11 126.061644 0.10274 42 39
i 11 126.164384 0.10274 36 113
i 11 126.164384 0.10274 38 87
i 7 126.164384 0.10274 71 63
i 1 126.267123 0.10274 43 78
i 11 126.267123 0.10274 42 39
i 11 126.369863 0.10274 46 72
i 2 126.369863 0.10274 43 96
i 7 126.369863 0.10274 67 63
i 1 126.472603 0.10274 43 78
i 11 126.472603 0.10274 42 39
i 5 126.472603 0.10274 64 49
i 9 126.472603 0.10274 55 73
i 11 126.575342 0.10274 36 113
i 7 126.575342 0.10274 62 63
i 1 126.678082 0.10274 43 78
i 11 126.678082 0.10274 42 39
i 11 126.780822 0.10274 46 72
i 2 126.780822 0.10274 43 96
i 7 126.780822 0.10274 67 63
i 9 126.780822 0.10274 57 73
i 1 126.883562 0.10274 43 78
i 11 126.883562 0.10274 42 39
i 11 126.986301 0.10274 36 113
i 11 126.986301 0.10274 38 87
i 7 126.986301 0.10274 71 63
i 1 127.089041 0.10274 43 78
i 11 127.089041 0.10274 42 39
i 11 127.191781 0.10274 46 72
i 2 127.191781 0.10274 43 96
i 5 127.191781 0.10274 64 49
i 7 127.191781 0.10274 67 63
i 1 127.294521 0.10274 43 78
i 11 127.294521 0.10274 42 39
i 9 127.294521 0.10274 59 73
i 11 127.39726 0.10274 36 113
i 7 127.39726 0.10274 62 63
i 1 127.5 0.10274 43 78
i 11 127.5 0.10274 42 39
i 11 127.60274 0.10274 46 72
i 2 127.60274 0.10274 43 96
i 7 127.60274 0.10274 67 63
i 1 127.705479 0.10274 43 78
i 11 127.705479 0.10274 42 39
i 5 127.705479 0.10274 64 49
i 11 127.808219 0.10274 36 113
i 11 127.808219 0.10274 38 87
i 7 127.808219 0.10274 71 63
i 1 127.910959 0.10274 43 78
i 11 127.910959 0.10274 42 39
i 9 127.910959 0.10274 62 73
i 11 128.013699 0.10274 46 72
i 2 128.013699 0.10274 43 96
i 7 128.013699 0.10274 67 63
i 1 128.116438 0.10274 43 78
i 11 128.116438 0.10274 42 39
i 11 128.219178 0.10274 36 113
i 4 128.219178 3.082192 52 55
i 7 128.219178 0.10274 62 63
i 1 128.321918 0.10274 38 78
i 11 128.321918 0.10274 42 39
i 9 128.321918 0.10274 50 73
i 11 128.424658 0.10274 46 69
i 2 128.424658 0.10274 38 96
i 7 128.424658 0.10274 69 63
i 1 128.527397 0.10274 38 78
i 11 128.527397 0.10274 42 39
i 5 128.527397 0.10274 71 50
i 9 128.527397 0.10274 57 73
i 11 128.630137 0.10274 36 113
i 11 128.630137 0.10274 38 90
i 7 128.630137 0.10274 66 63
i 1 128.732877 0.10274 38 78
i 11 128.732877 0.10274 42 39
i 11 128.835616 0.10274 46 69
i 2 128.835616 0.10274 38 96
i 7 128.835616 0.10274 69 63
i 9 128.835616 0.10274 62 73
i 1 128.938356 0.10274 38 78
i 11 128.938356 0.10274 42 39
i 11 129.041096 0.10274 36 113
i 7 129.041096 0.10274 62 63
i 1 129.143836 0.10274 38 78
i 11 129.143836 0.10274 42 39
i 5 129.143836 0.10274 71 50
i 11 129.246575 0.10274 46 69
i 2 129.246575 0.10274 38 96
i 7 129.246575 0.10274 69 63
i 9 129.246575 0.10274 54 73
i 1 129.349315 0.10274 38 78
i 11 129.349315 0.10274 42 39
i 11 129.452055 0.10274 36 113
i 11 129.452055 0.10274 38 90
i 7 129.452055 0.10274 66 63
i 1 129.554795 0.10274 38 78
i 11 129.554795 0.10274 42 39
i 11 129.657534 0.10274 46 69
i 2 129.657534 0.10274 38 96
i 7 129.657534 0.10274 69 63
i 1 129.760274 0.10274 38 78
i 11 129.760274 0.10274 42 39
i 5 129.760274 0.10274 71 50
i 9 129.760274 0.10274 57 73
i 11 129.863014 0.10274 36 113
i 7 129.863014 0.10274 62 63
i 1 129.965753 0.10274 38 78
i 11 129.965753 0.10274 42 39
i 11 130.068493 0.10274 46 69
i 2 130.068493 0.10274 38 96
i 7 130.068493 0.10274 69 63
i 9 130.068493 0.10274 62 73
i 1 130.171233 0.10274 38 78
i 11 130.171233 0.10274 42 39
i 11 130.273973 0.10274 36 113
i 11 130.273973 0.10274 38 90
i 7 130.273973 0.10274 66 63
i 1 130.376712 0.10274 38 78
i 11 130.376712 0.10274 42 39
i 11 130.479452 0.10274 46 69
i 2 130.479452 0.10274 38 96
i 5 130.479452 0.10274 71 50
i 7 130.479452 0.10274 69 63
i 1 130.582192 0.10274 38 78
i 11 130.582192 0.10274 42 39
i 9 130.582192 0.10274 66 73
i 11 130.684932 0.10274 36 113
i 7 130.684932 0.10274 62 63
i 1 130.787671 0.10274 38 78
i 11 130.787671 0.10274 42 39
i 11 130.890411 0.10274 38 90
i 11 130.890411 0.10274 46 69
i 2 130.890411 0.10274 38 96
i 7 130.890411 0.10274 69 63
i 1 130.993151 0.10274 38 78
i 11 130.993151 0.10274 42 39
i 5 130.993151 0.10274 71 50
i 8 130.993151 0.10274 59 54
i 11 131.09589 0.10274 38 90
i 7 131.09589 0.10274 66 63
i 1 131.19863 0.10274 38 78
i 11 131.19863 0.10274 42 39
i 9 131.19863 0.10274 62 73
i 11 131.30137 0.10274 38 90
i 2 131.30137 0.10274 38 96
i 7 131.30137 0.10274 69 63
i 8 131.30137 0.10274 64 54
i 1 131.40411 0.10274 38 78
i 11 131.40411 0.10274 38 90
i 11 131.40411 0.10274 42 39
i 11 131.506849 0.10274 36 113
i 7 131.506849 0.10274 64 63
i 1 131.609589 0.10274 40 78
i 11 131.609589 0.10274 42 57
i 9 131.609589 0.10274 52 73
i 11 131.712329 0.10274 46 72
i 2 131.712329 0.10274 40 96
i 3 131.712329 0.10274 52 58
i 7 131.712329 0.10274 71 63
i 1 131.815068 0.10274 40 78
i 11 131.815068 0.10274 42 57
i 13 131.815068 0.10274 52 49
i 13 131.815068 0.10274 55 49
i 13 131.815068 0.10274 59 49
i 5 131.815068 0.10274 64 49
i 9 131.815068 0.10274 52 73
i 11 131.917808 0.10274 36 113
i 11 131.917808 0.10274 38 87
i 7 131.917808 0.10274 67 63
i 1 132.020548 0.10274 40 78
i 11 132.020548 0.10274 42 57
i 11 132.123288 0.10274 46 72
i 2 132.123288 0.10274 40 96
i 7 132.123288 0.10274 71 63
i 9 132.123288 0.10274 59 73
i 1 132.226027 0.10274 40 78
i 11 132.226027 0.10274 42 57
i 3 132.226027 0.10274 59 58
i 11 132.328767 0.10274 36 113
i 7 132.328767 0.10274 64 63
i 1 132.431507 0.10274 40 78
i 11 132.431507 0.10274 42 57
i 5 132.431507 0.10274 64 49
i 11 132.534247 0.10274 46 72
i 13 132.534247 0.10274 52 49
i 13 132.534247 0.10274 55 49
i 13 132.534247 0.10274 59 49
i 2 132.534247 0.10274 40 96
i 7 132.534247 0.10274 71 63
i 9 132.534247 0.10274 64 73
i 1 132.636986 0.10274 40 78
i 11 132.636986 0.10274 42 57
i 3 132.636986 0.10274 62 58
i 11 132.739726 0.10274 36 113
i 11 132.739726 0.10274 38 87
i 7 132.739726 0.10274 67 63
i 1 132.842466 0.10274 40 78
i 11 132.842466 0.10274 42 57
i 11 132.945205 0.10274 46 72
i 2 132.945205 0.10274 40 96
i 7 132.945205 0.10274 71 63
i 1 133.047945 0.10274 40 78
i 11 133.047945 0.10274 42 57
i 5 133.047945 0.10274 64 49
i 9 133.047945 0.10274 55 73
i 11 133.150685 0.10274 36 113
i 7 133.150685 0.10274 64 63
i 1 133.253425 0.10274 40 78
i 11 133.253425 0.10274 42 57
i 11 133.356164 0.10274 46 72
i 2 133.356164 0.10274 40 96
i 3 133.356164 0.10274 52 58
i 7 133.356164 0.10274 71 63
i 9 133.356164 0.10274 52 73
i 1 133.458904 0.10274 40 78
i 11 133.458904 0.10274 42 57
i 13 133.458904 0.10274 52 49
i 13 133.458904 0.10274 55 49
i 13 133.458904 0.10274 59 49
i 11 133.561644 0.10274 36 113
i 11 133.561644 0.10274 38 87
i 7 133.561644 0.10274 67 63
i 1 133.664384 0.10274 40 78
i 11 133.664384 0.10274 42 57
i 11 133.767123 0.10274 46 72
i 2 133.767123 0.10274 40 96
i 3 133.767123 0.10274 55 58
i 5 133.767123 0.10274 64 49
i 7 133.767123 0.10274 71 63
i 1 133.869863 0.10274 40 78
i 11 133.869863 0.10274 42 57
i 9 133.869863 0.10274 62 73
i 11 133.972603 0.10274 36 113
i 7 133.972603 0.10274 64 63
i 1 134.075342 0.10274 40 78
i 11 134.075342 0.10274 42 57
i 11 134.178082 0.10274 46 72
i 13 134.178082 0.10274 52 49
i 13 134.178082 0.10274 55 49
i 13 134.178082 0.10274 59 49
i 2 134.178082 0.10274 40 96
i 7 134.178082 0.10274 71 63
i 1 134.280822 0.10274 40 78
i 11 134.280822 0.10274 42 57
i 3 134.280822 0.10274 59 58
i 5 134.280822 0.10274 64 49
i 11 134.383562 0.10274 36 113
i 11 134.383562 0.10274 38 87
i 7 134.383562 0.10274 67 63
i 1 134.486301 0.10274 40 78
i 11 134.486301 0.10274 42 57
i 9 134.486301 0.10274 59 73
i 11 134.589041 0.10274 46 72
i 2 134.589041 0.10274 40 96
i 3 134.589041 0.10274 64 58
i 7 134.589041 0.10274 71 63
i 1 134.691781 0.10274 40 78
i 11 134.691781 0.10274 42 57
i 11 134.794521 0.10274 36 113
i 7 134.794521 0.10274 64 63
i 1 134.89726 0.10274 36 78
i 11 134.89726 0.10274 42 57
i 9 134.89726 0.10274 52 73
i 11 135 0.10274 46 72
i 2 135 0.10274 36 96
i 3 135 0.10274 48 58
i 7 135 0.10274 67 63
i 1 135.10274 0.10274 36 78
i 11 135.10274 0.10274 42 57
i 13 135.10274 0.10274 48 49
i 13 135.10274 0.10274 52 49
i 13 135.10274 0.10274 55 49
i 5 135.10274 0.10274 71 50
i 9 135.10274 0.10274 55 73
i 11 135.205479 0.10274 36 113
i 11 135.205479 0.10274 38 87
i 7 135.205479 0.10274 72 63
i 1 135.308219 0.10274 36 78
i 11 135.308219 0.10274 42 57
i 11 135.410959 0.10274 46 72
i 2 135.410959 0.10274 36 96
i 7 135.410959 0.10274 67 63
i 9 135.410959 0.10274 60 73
i 1 135.513699 0.10274 36 78
i 11 135.513699 0.10274 42 57
i 3 135.513699 0.10274 55 58
i 11 135.616438 0.10274 36 113
i 7 135.616438 0.10274 64 63
i 1 135.719178 0.10274 36 78
i 11 135.719178 0.10274 42 57
i 5 135.719178 0.10274 71 50
i 11 135.821918 0.10274 46 72
i 13 135.821918 0.10274 48 49
i 13 135.821918 0.10274 52 49
i 13 135.821918 0.10274 55 49
i 2 135.821918 0.10274 36 96
i 7 135.821918 0.10274 67 63
i 9 135.821918 0.10274 64 73
i 1 135.924658 0.10274 36 78
i 11 135.924658 0.10274 42 57
i 3 135.924658 0.10274 59 58
i 11 136.027397 0.10274 36 113
i 11 136.027397 0.10274 38 87
i 7 136.027397 0.10274 72 63
i 1 136.130137 0.10274 36 78
i 11 136.130137 0.10274 42 57
i 11 136.232877 0.10274 46 72
i 2 136.232877 0.10274 36 96
i 7 136.232877 0.10274 67 63
i 1 136.335616 0.10274 36 78
i 11 136.335616 0.10274 42 57
i 5 136.335616 0.10274 71 50
i 9 136.335616 0.10274 55 73
i 11 136.438356 0.10274 36 113
i 7 136.438356 0.10274 64 63
i 1 136.541096 0.10274 36 78
i 11 136.541096 0.10274 42 57
i 11 136.643836 0.10274 46 72
i 2 136.643836 0.10274 36 96
i 3 136.643836 0.10274 60 58
i 7 136.643836 0.10274 67 63
i 9 136.643836 0.10274 60 73
i 1 136.746575 0.10274 36 78
i 11 136.746575 0.10274 42 57
i 13 136.746575 0.10274 48 49
i 13 136.746575 0.10274 52 49
i 13 136.746575 0.10274 55 49
i 11 136.849315 0.10274 36 113
i 11 136.849315 0.10274 38 87
i 7 136.849315 0.10274 72 63
i 1 136.952055 0.10274 36 78
i 11 136.952055 0.10274 42 57
i 11 137.054795 0.10274 46 72
i 2 137.054795 0.10274 36 96
i 3 137.054795 0.10274 55 58
i 5 137.054795 0.10274 71 50
i 7 137.054795 0.10274 67 63
i 1 137.157534 0.10274 36 78
i 11 137.157534 0.10274 42 57
i 9 137.157534 0.10274 52 73
i 11 137.260274 0.10274 36 113
i 7 137.260274 0.10274 64 63
i 1 137.363014 0.10274 36 78
i 11 137.363014 0.10274 42 57
i 11 137.465753 0.10274 46 72
i 13 137.465753 0.10274 48 49
i 13 137.465753 0.10274 52 49
i 13 137.465753 0.10274 55 49
i 2 137.465753 0.10274 36 96
i 7 137.465753 0.10274 67 63
i 1 137.568493 0.10274 36 78
i 11 137.568493 0.10274 42 57
i 3 137.568493 0.10274 52 58
i 5 137.568493 0.10274 71 50
i 11 137.671233 0.10274 36 113
i 11 137.671233 0.10274 38 87
i 7 137.671233 0.10274 72 63
i 1 137.773973 0.10274 36 78
i 11 137.773973 0.10274 42 57
i 9 137.773973 0.10274 55 73
i 11 137.876712 0.10274 46 72
i 2 137.876712 0.10274 36 96
i 3 137.876712 0.10274 55 58
i 7 137.876712 0.10274 67 63
i 1 137.979452 0.10274 36 78
i 11 137.979452 0.10274 42 57
i 11 138.082192 0.10274 36 113
i 7 138.082192 0.10274 62 63
i 1 138.184932 0.10274 43 78
i 11 138.184932 0.10274 42 57
i 9 138.184932 0.10274 55 73
i 11 138.287671 0.10274 46 72
i 2 138.287671 0.10274 43 96
i 3 138.287671 0.10274 55 58
i 7 138.287671 0.10274 67 63
i 1 138.390411 0.10274 43 78
i 11 138.390411 0.10274 42 57
i 13 138.390411 0.10274 55 49
i 13 138.390411 0.10274 59 49
i 13 138.390411 0.10274 62 49
i 5 138.390411 0.10274 64 49
i 9 138.390411 0.10274 55 73
i 11 138.493151 0.10274 36 113
i 11 138.493151 0.10274 38 87
i 7 138.493151 0.10274 71 63
i 1 138.59589 0.10274 43 78
i 11 138.59589 0.10274 42 57
i 11 138.69863 0.10274 46 72
i 2 138.69863 0.10274 43 96
i 7 138.69863 0.10274 67 63
i 9 138.69863 0.10274 62 73
i 1 138.80137 0.10274 43 78
i 11 138.80137 0.10274 42 57
i 3 138.80137 0.10274 62 58
i 11 138.90411 0.10274 36 113
i 7 138.90411 0.10274 62 63
i 1 139.006849 0.10274 43 78
i 11 139.006849 0.10274 42 57
i 5 139.006849 0.10274 64 49
i 11 139.109589 0.10274 46 72
i 13 139.109589 0.10274 55 49
i 13 139.109589 0.10274 59 49
i 13 139.109589 0.10274 62 49
i 2 139.109589 0.10274 43 96
i 7 139.109589 0.10274 67 63
i 9 139.109589 0.10274 59 73
i 1 139.212329 0.10274 43 78
i 11 139.212329 0.10274 42 57
i 3 139.212329 0.10274 59 58
i 11 139.315068 0.10274 36 113
i 11 139.315068 0.10274 38 87
i 7 139.315068 0.10274 71 63
i 1 139.417808 0.10274 43 78
i 11 139.417808 0.10274 42 57
i 11 139.520548 0.10274 46 72
i 2 139.520548 0.10274 43 96
i 7 139.520548 0.10274 67 63
i 1 139.623288 0.10274 43 78
i 11 139.623288 0.10274 42 57
i 5 139.623288 0.10274 64 49
i 9 139.623288 0.10274 55 73
i 11 139.726027 0.10274 36 113
i 7 139.726027 0.10274 62 63
i 1 139.828767 0.10274 43 78
i 11 139.828767 0.10274 42 57
i 11 139.931507 0.10274 46 72
i 2 139.931507 0.10274 43 96
i 3 139.931507 0.10274 55 58
i 7 139.931507 0.10274 67 63
i 9 139.931507 0.10274 57 73
i 1 140.034247 0.10274 43 78
i 11 140.034247 0.10274 42 57
i 13 140.034247 0.10274 55 49
i 13 140.034247 0.10274 59 49
i 13 140.034247 0.10274 62 49
i 11 140.136986 0.10274 36 113
i 11 140.136986 0.10274 38 87
i 7 140.136986 0.10274 71 63
i 1 140.239726 0.10274 43 78
i 11 140.239726 0.10274 42 57
i 11 140.342466 0.10274 46 72
i 2 140.342466 0.10274 43 96
i 3 140.342466 0.10274 57 58
i 5 140.342466 0.10274 64 49
i 7 140.342466 0.10274 67 63
i 1 140.445205 0.10274 43 78
i 11 140.445205 0.10274 42 57
i 9 140.445205 0.10274 59 73
i 11 140.547945 0.10274 36 113
i 7 140.547945 0.10274 62 63
i 1 140.650685 0.10274 43 78
i 11 140.650685 0.10274 42 57
i 11 140.753425 0.10274 46 72
i 13 140.753425 0.10274 55 49
i 13 140.753425 0.10274 59 49
i 13 140.753425 0.10274 62 49
i 2 140.753425 0.10274 43 96
i 7 140.753425 0.10274 67 63
i 1 140.856164 0.10274 43 78
i 11 140.856164 0.10274 42 57
i 3 140.856164 0.10274 59 58
i 5 140.856164 0.10274 64 49
i 11 140.958904 0.10274 36 113
i 11 140.958904 0.10274 38 87
i 7 140.958904 0.10274 71 63
i 1 141.061644 0.10274 43 78
i 11 141.061644 0.10274 42 57
i 9 141.061644 0.10274 62 73
i 11 141.164384 0.10274 46 72
i 2 141.164384 0.10274 43 96
i 3 141.164384 0.10274 62 58
i 7 141.164384 0.10274 67 63
i 1 141.267123 0.10274 43 78
i 11 141.267123 0.10274 42 57
i 11 141.369863 0.10274 36 113
i 7 141.369863 0.10274 62 63
i 1 141.472603 0.10274 38 78
i 11 141.472603 0.10274 42 57
i 9 141.472603 0.10274 50 73
i 11 141.575342 0.10274 46 72
i 2 141.575342 0.10274 38 96
i 3 141.575342 0.10274 50 58
i 7 141.575342 0.10274 69 63
i 1 141.678082 0.10274 38 78
i 11 141.678082 0.10274 42 57
i 13 141.678082 0.10274 50 49
i 13 141.678082 0.10274 54 49
i 13 141.678082 0.10274 57 49
i 5 141.678082 0.10274 71 50
i 9 141.678082 0.10274 57 73
i 11 141.780822 0.10274 36 113
i 11 141.780822 0.10274 38 87
i 7 141.780822 0.10274 66 63
i 1 141.883562 0.10274 38 78
i 11 141.883562 0.10274 42 57
i 11 141.986301 0.10274 46 72
i 2 141.986301 0.10274 38 96
i 7 141.986301 0.10274 69 63
i 9 141.986301 0.10274 62 73
i 1 142.089041 0.10274 38 78
i 11 142.089041 0.10274 42 57
i 3 142.089041 0.10274 57 58
i 11 142.191781 0.10274 36 113
i 7 142.191781 0.10274 62 63
i 1 142.294521 0.10274 38 78
i 11 142.294521 0.10274 42 57
i 5 142.294521 0.10274 71 50
i 11 142.39726 0.10274 46 72
i 13 142.39726 0.10274 50 49
i 13 142.39726 0.10274 54 49
i 13 142.39726 0.10274 57 49
i 2 142.39726 0.10274 38 96
i 7 142.39726 0.10274 69 63
i 9 142.39726 0.10274 54 73
i 1 142.5 0.10274 38 78
i 11 142.5 0.10274 42 57
i 3 142.5 0.10274 60 58
i 11 142.60274 0.10274 36 113
i 11 142.60274 0.10274 38 87
i 7 142.60274 0.10274 66 63
i 1 142.705479 0.10274 38 78
i 11 142.705479 0.10274 42 57
i 11 142.808219 0.10274 46 72
i 2 142.808219 0.10274 38 96
i 7 142.808219 0.10274 69 63
i 1 142.910959 0.10274 38 78
i 11 142.910959 0.10274 42 57
i 5 142.910959 0.10274 71 50
i 9 142.910959 0.10274 57 73
i 11 143.013699 0.10274 36 113
i 7 143.013699 0.10274 62 63
i 1 143.116438 0.10274 38 78
i 11 143.116438 0.10274 42 57
i 11 143.219178 0.10274 46 72
i 2 143.219178 0.10274 38 96
i 3 143.219178 0.10274 62 58
i 7 143.219178 0.10274 69 63
i 9 143.219178 0.10274 62 73
i 1 143.321918 0.10274 38 78
i 11 143.321918 0.10274 42 57
i 13 143.321918 0.10274 50 49
i 13 143.321918 0.10274 54 49
i 13 143.321918 0.10274 57 49
i 11 143.424658 0.10274 36 113
i 11 143.424658 0.10274 38 87
i 7 143.424658 0.10274 66 63
i 1 143.527397 0.10274 38 78
i 11 143.527397 0.10274 42 57
i 11 143.630137 0.10274 46 72
i 2 143.630137 0.10274 38 96
i 3 143.630137 0.10274 57 58
i 5 143.630137 0.10274 71 50
i 7 143.630137 0.10274 69 63
i 1 143.732877 0.10274 38 78
i 11 143.732877 0.10274 42 57
i 9 143.732877 0.10274 66 73
i 11 143.835616 0.10274 36 113
i 7 143.835616 0.10274 62 63
i 1 143.938356 0.10274 38 78
i 11 143.938356 0.10274 42 57
i 11 144.041096 0.10274 46 72
i 13 144.041096 0.10274 50 49
i 13 144.041096 0.10274 54 49
i 13 144.041096 0.10274 57 49
i 2 144.041096 0.10274 38 96
i 7 144.041096 0.10274 69 63
i 1 144.143836 0.10274 38 78
i 11 144.143836 0.10274 42 57
i 3 144.143836 0.10274 54 58
i 5 144.143836 0.10274 71 50
i 11 144.246575 0.10274 36 113
i 11 144.246575 0.10274 38 87
i 7 144.246575 0.10274 66 63
i 1 144.349315 0.10274 38 78
i 11 144.349315 0.10274 42 57
i 9 144.349315 0.10274 62 73
i 11 144.452055 0.10274 46 72
i 2 144.452055 0.10274 38 96
i 3 144.452055 0.10274 62 58
i 7 144.452055 0.10274 69 63
i 1 144.554795 0.10274 38 78
i 11 144.554795 0.10274 42 57
i 11 144.657534 0.10274 36 113
i 7 144.657534 0.10274 64 63
i 1 144.760274 0.10274 40 78
i 11 144.760274 0.10274 42 57
i 9 144.760274 0.10274 52 73
i 11 144.863014 0.10274 46 72
i 2 144.863014 0.10274 40 96
i 7 144.863014 0.10274 71 63
i 1 144.965753 0.10274 40 78
i 11 144.965753 0.10274 42 57
i 13 144.965753 0.10274 52 49
i 13 144.965753 0.10274 55 49
i 13 144.965753 0.10274 59 49
i 5 144.965753 0.10274 76 54
i 9 144.965753 0.10274 52 73
i 11 145.068493 0.10274 36 113
i 11 145.068493 0.10274 38 87
i 7 145.068493 0.10274 67 63
i 1 145.171233 0.10274 40 78
i 11 145.171233 0.10274 42 57
i 11 145.273973 0.10274 46 72
i 2 145.273973 0.10274 40 96
i 5 145.273973 0.10274 76 54
i 7 145.273973 0.10274 71 63
i 9 145.273973 0.10274 59 73
i 1 145.376712 0.10274 40 78
i 11 145.376712 0.10274 42 57
i 11 145.479452 0.10274 36 113
i 7 145.479452 0.10274 64 63
i 1 145.582192 0.10274 40 78
i 11 145.582192 0.10274 42 57
i 11 145.684932 0.10274 46 72
i 13 145.684932 0.10274 52 49
i 13 145.684932 0.10274 55 49
i 13 145.684932 0.10274 59 49
i 2 145.684932 0.10274 40 96
i 7 145.684932 0.10274 71 63
i 9 145.684932 0.10274 64 73
i 1 145.787671 0.10274 40 78
i 11 145.787671 0.10274 42 57
i 5 145.787671 0.10274 76 54
i 11 145.890411 0.10274 36 113
i 11 145.890411 0.10274 38 87
i 7 145.890411 0.10274 67 63
i 1 145.993151 0.10274 40 78
i 11 145.993151 0.10274 42 57
i 11 146.09589 0.10274 46 72
i 2 146.09589 0.10274 40 96
i 7 146.09589 0.10274 71 63
i 1 146.19863 0.10274 40 78
i 11 146.19863 0.10274 42 57
i 9 146.19863 0.10274 55 73
i 11 146.30137 0.10274 36 113
i 7 146.30137 0.10274 64 63
i 1 146.40411 0.10274 40 78
i 11 146.40411 0.10274 42 57
i 11 146.506849 0.10274 46 72
i 2 146.506849 0.10274 40 96
i 7 146.506849 0.10274 71 63
i 9 146.506849 0.10274 52 73
i 1 146.609589 0.10274 40 78
i 11 146.609589 0.10274 42 57
i 13 146.609589 0.10274 52 49
i 13 146.609589 0.10274 55 49
i 13 146.609589 0.10274 59 49
i 5 146.609589 0.10274 76 54
i 11 146.712329 0.10274 36 113
i 11 146.712329 0.10274 38 87
i 7 146.712329 0.10274 67 63
i 1 146.815068 0.10274 40 78
i 11 146.815068 0.10274 42 57
i 11 146.917808 0.10274 46 72
i 2 146.917808 0.10274 40 96
i 5 146.917808 0.10274 76 54
i 7 146.917808 0.10274 71 63
i 1 147.020548 0.10274 40 78
i 11 147.020548 0.10274 42 57
i 9 147.020548 0.10274 62 73
i 11 147.123288 0.10274 36 113
i 7 147.123288 0.10274 64 63
i 1 147.226027 0.10274 40 78
i 11 147.226027 0.10274 42 57
i 11 147.328767 0.10274 46 72
i 13 147.328767 0.10274 52 49
i 13 147.328767 0.10274 55 49
i 13 147.328767 0.10274 59 49
i 2 147.328767 0.10274 40 96
i 7 147.328767 0.10274 71 63
i 1 147.431507 0.10274 40 78
i 11 147.431507 0.10274 42 57
i 5 147.431507 0.10274 76 54
i 11 147.534247 0.10274 36 113
i 11 147.534247 0.10274 38 87
i 7 147.534247 0.10274 67 63
i 1 147.636986 0.10274 40 78
i 11 147.636986 0.10274 42 57
i 9 147.636986 0.10274 59 73
i 11 147.739726 0.10274 46 72
i 2 147.739726 0.10274 40 96
i 5 147.739726 0.10274 76 54
i 7 147.739726 0.10274 71 63
i 1 147.842466 0.10274 40 78
i 11 147.842466 0.10274 42 57
i 11 147.945205 0.10274 36 113
i 7 147.945205 0.10274 64 63
i 1 148.047945 0.10274 36 78
i 11 148.047945 0.10274 42 57
i 9 148.047945 0.10274 52 73
i 11 148.150685 0.10274 46 72
i 2 148.150685 0.10274 36 96
i 7 148.150685 0.10274 67 63
i 1 148.253425 0.10274 36 78
i 11 148.253425 0.10274 42 57
i 13 148.253425 0.10274 48 49
i 13 148.253425 0.10274 52 49
i 13 148.253425 0.10274 55 49
i 5 148.253425 0.10274 71 50
i 9 148.253425 0.10274 55 73
i 11 148.356164 0.10274 36 113
i 11 148.356164 0.10274 38 87
i 7 148.356164 0.10274 72 63
i 1 148.458904 0.10274 36 78
i 11 148.458904 0.10274 42 57
i 11 148.561644 0.10274 46 72
i 2 148.561644 0.10274 36 96
i 7 148.561644 0.10274 67 63
i 9 148.561644 0.10274 60 73
i 1 148.664384 0.10274 36 78
i 11 148.664384 0.10274 42 57
i 11 148.767123 0.10274 36 113
i 7 148.767123 0.10274 64 63
i 1 148.869863 0.10274 36 78
i 11 148.869863 0.10274 42 57
i 5 148.869863 0.10274 71 50
i 11 148.972603 0.10274 46 72
i 13 148.972603 0.10274 48 49
i 13 148.972603 0.10274 52 49
i 13 148.972603 0.10274 55 49
i 2 148.972603 0.10274 36 96
i 7 148.972603 0.10274 67 63
i 9 148.972603 0.10274 64 73
i 1 149.075342 0.10274 36 78
i 11 149.075342 0.10274 42 57
i 11 149.178082 0.10274 36 113
i 11 149.178082 0.10274 38 87
i 7 149.178082 0.10274 72 63
i 1 149.280822 0.10274 36 78
i 11 149.280822 0.10274 42 57
i 11 149.383562 0.10274 46 72
i 2 149.383562 0.10274 36 96
i 7 149.383562 0.10274 67 63
i 1 149.486301 0.10274 36 78
i 11 149.486301 0.10274 42 57
i 5 149.486301 0.10274 71 50
i 9 149.486301 0.10274 55 73
i 11 149.589041 0.10274 36 113
i 7 149.589041 0.10274 64 63
i 1 149.691781 0.10274 36 78
i 11 149.691781 0.10274 42 57
i 11 149.794521 0.10274 46 72
i 2 149.794521 0.10274 36 96
i 7 149.794521 0.10274 67 63
i 9 149.794521 0.10274 60 73
i 1 149.89726 0.10274 36 78
i 11 149.89726 0.10274 42 57
i 13 149.89726 0.10274 48 49
i 13 149.89726 0.10274 52 49
i 13 149.89726 0.10274 55 49
i 11 150 0.10274 36 113
i 11 150 0.10274 38 87
i 7 150 0.10274 72 63
i 1 150.10274 0.10274 36 78
i 11 150.10274 0.10274 42 57
i 11 150.205479 0.10274 46 72
i 2 150.205479 0.10274 36 96
i 5 150.205479 0.10274 71 50
i 7 150.205479 0.10274 67 63
i 1 150.308219 0.10274 36 78
i 11 150.308219 0.10274 42 57
i 9 150.308219 0.10274 52 73
i 11 150.410959 0.10274 36 113
i 7 150.410959 0.10274 64 63
i 1 150.513699 0.10274 36 78
i 11 150.513699 0.10274 42 57
i 11 150.616438 0.10274 46 72
i 13 150.616438 0.10274 48 49
i 13 150.616438 0.10274 52 49
i 13 150.616438 0.10274 55 49
i 2 150.616438 0.10274 36 96
i 7 150.616438 0.10274 67 63
i 1 150.719178 0.10274 36 78
i 11 150.719178 0.10274 42 57
i 5 150.719178 0.10274 71 50
i 11 150.821918 0.10274 36 113
i 11 150.821918 0.10274 38 87
i 7 150.821918 0.10274 72 63
i 1 150.924658 0.10274 36 78
i 11 150.924658 0.10274 42 57
i 9 150.924658 0.10274 55 73
i 11 151.027397 0.10274 46 72
i 2 151.027397 0.10274 36 96
i 7 151.027397 0.10274 67 63
i 1 151.130137 0.10274 36 78
i 11 151.130137 0.10274 42 57
i 11 151.232877 0.10274 36 113
i 7 151.232877 0.10274 62 63
i 1 151.335616 0.10274 43 78
i 11 151.335616 0.10274 42 57
i 9 151.335616 0.10274 55 73
i 11 151.438356 0.10274 46 72
i 2 151.438356 0.10274 43 96
i 7 151.438356 0.10274 67 63
i 1 151.541096 0.10274 43 78
i 11 151.541096 0.10274 42 57
i 13 151.541096 0.10274 55 49
i 13 151.541096 0.10274 59 49
i 13 151.541096 0.10274 62 49
i 5 151.541096 0.10274 64 49
i 9 151.541096 0.10274 55 73
i 11 151.643836 0.10274 36 113
i 11 151.643836 0.10274 38 87
i 7 151.643836 0.10274 71 63
i 1 151.746575 0.10274 43 78
i 11 151.746575 0.10274 42 57
i 11 151.849315 0.10274 46 72
i 2 151.849315 0.10274 43 96
i 7 151.849315 0.10274 67 63
i 9 151.849315 0.10274 62 73
i 1 151.952055 0.10274 43 78
i 11 151.952055 0.10274 42 57
i 11 152.054795 0.10274 36 113
i 7 152.054795 0.10274 62 63
i 1 152.157534 0.10274 43 78
i 11 152.157534 0.10274 42 57
i 5 152.157534 0.10274 64 49
i 11 152.260274 0.10274 46 72
i 13 152.260274 0.10274 55 49
i 13 152.260274 0.10274 59 49
i 13 152.260274 0.10274 62 49
i 2 152.260274 0.10274 43 96
i 7 152.260274 0.10274 67 63
i 9 152.260274 0.10274 59 73
i 1 152.363014 0.10274 43 78
i 11 152.363014 0.10274 42 57
i 11 152.465753 0.10274 36 113
i 11 152.465753 0.10274 38 87
i 7 152.465753 0.10274 71 63
i 1 152.568493 0.10274 43 78
i 11 152.568493 0.10274 42 57
i 11 152.671233 0.10274 46 72
i 2 152.671233 0.10274 43 96
i 7 152.671233 0.10274 67 63
i 1 152.773973 0.10274 43 78
i 11 152.773973 0.10274 42 57
i 5 152.773973 0.10274 64 49
i 9 152.773973 0.10274 55 73
i 11 152.876712 0.10274 36 113
i 7 152.876712 0.10274 62 63
i 1 152.979452 0.10274 43 78
i 11 152.979452 0.10274 42 57
i 11 153.082192 0.10274 46 72
i 2 153.082192 0.10274 43 96
i 7 153.082192 0.10274 67 63
i 9 153.082192 0.10274 57 73
i 1 153.184932 0.10274 43 78
i 11 153.184932 0.10274 42 57
i 13 153.184932 0.10274 55 49
i 13 153.184932 0.10274 59 49
i 13 153.184932 0.10274 62 49
i 11 153.287671 0.10274 36 113
i 11 153.287671 0.10274 38 87
i 7 153.287671 0.10274 71 63
i 1 153.390411 0.10274 43 78
i 11 153.390411 0.10274 42 57
i 11 153.493151 0.10274 46 72
i 2 153.493151 0.10274 43 96
i 5 153.493151 0.10274 64 49
i 7 153.493151 0.10274 67 63
i 1 153.59589 0.10274 43 78
i 11 153.59589 0.10274 42 57
i 9 153.59589 0.10274 59 73
i 11 153.69863 0.10274 36 113
i 7 153.69863 0.10274 62 63
i 1 153.80137 0.10274 43 78
i 11 153.80137 0.10274 42 57
i 11 153.90411 0.10274 46 72
i 13 153.90411 0.10274 55 49
i 13 153.90411 0.10274 59 49
i 13 153.90411 0.10274 62 49
i 2 153.90411 0.10274 43 96
i 7 153.90411 0.10274 67 63
i 1 154.006849 0.10274 43 78
i 11 154.006849 0.10274 42 57
i 5 154.006849 0.10274 64 49
i 11 154.109589 0.10274 36 113
i 11 154.109589 0.10274 38 87
i 7 154.109589 0.10274 71 63
i 1 154.212329 0.10274 43 78
i 11 154.212329 0.10274 42 57
i 9 154.212329 0.10274 62 73
i 11 154.315068 0.10274 46 72
i 2 154.315068 0.10274 43 96
i 7 154.315068 0.10274 67 63
i 1 154.417808 0.10274 43 78
i 11 154.417808 0.10274 42 57
i 11 154.520548 0.10274 36 116
i 4 154.520548 3.082192 59 70
i 7 154.520548 0.10274 62 63
i 1 154.623288 0.10274 38 78
i 11 154.623288 0.10274 42 57
i 9 154.623288 0.10274 50 73
i 11 154.726027 0.10274 46 69
i 2 154.726027 0.10274 38 96
i 7 154.726027 0.10274 69 63
i 1 154.828767 0.10274 38 78
i 11 154.828767 0.10274 42 57
i 13 154.828767 0.10274 50 49
i 13 154.828767 0.10274 54 49
i 13 154.828767 0.10274 57 49
i 5 154.828767 0.10274 71 50
i 9 154.828767 0.10274 57 73
i 11 154.931507 0.10274 36 116
i 11 154.931507 0.10274 38 90
i 7 154.931507 0.10274 66 63
i 1 155.034247 0.10274 38 78
i 11 155.034247 0.10274 42 57
i 11 155.136986 0.10274 46 69
i 2 155.136986 0.10274 38 96
i 7 155.136986 0.10274 69 63
i 9 155.136986 0.10274 62 73
i 1 155.239726 0.10274 38 78
i 11 155.239726 0.10274 42 57
i 11 155.342466 0.10274 36 116
i 7 155.342466 0.10274 62 63
i 1 155.445205 0.10274 38 78
i 11 155.445205 0.10274 42 57
i 5 155.445205 0.10274 71 50
i 11 155.547945 0.10274 46 69
i 13 155.547945 0.10274 50 49
i 13 155.547945 0.10274 54 49
i 13 155.547945 0.10274 57 49
i 2 155.547945 0.10274 38 96
i 7 155.547945 0.10274 69 63
i 9 155.547945 0.10274 54 73
i 1 155.650685 0.10274 38 78
i 11 155.650685 0.10274 42 57
i 11 155.753425 0.10274 36 116
i 11 155.753425 0.10274 38 90
i 7 155.753425 0.10274 66 63
i 1 155.856164 0.10274 38 78
i 11 155.856164 0.10274 42 57
i 11 155.958904 0.10274 46 69
i 2 155.958904 0.10274 38 96
i 7 155.958904 0.10274 69 63
i 1 156.061644 0.10274 38 78
i 11 156.061644 0.10274 42 57
i 5 156.061644 0.10274 71 50
i 9 156.061644 0.10274 57 73
i 11 156.164384 0.10274 36 116
i 7 156.164384 0.10274 62 63
i 1 156.267123 0.10274 38 78
i 11 156.267123 0.10274 42 57
i 11 156.369863 0.10274 46 69
i 2 156.369863 0.10274 38 96
i 7 156.369863 0.10274 69 63
i 9 156.369863 0.10274 62 73
i 1 156.472603 0.10274 38 78
i 11 156.472603 0.10274 42 57
i 13 156.472603 0.10274 50 49
i 13 156.472603 0.10274 54 49
i 13 156.472603 0.10274 57 49
i 11 156.575342 0.10274 36 116
i 11 156.575342 0.10274 38 90
i 7 156.575342 0.10274 66 63
i 1 156.678082 0.10274 38 78
i 11 156.678082 0.10274 42 57
i 11 156.780822 0.10274 46 69
i 2 156.780822 0.10274 38 96
i 5 156.780822 0.10274 71 50
i 7 156.780822 0.10274 69 63
i 1 156.883562 0.10274 38 78
i 11 156.883562 0.10274 42 57
i 9 156.883562 0.10274 66 73
i 11 156.986301 0.10274 36 116
i 7 156.986301 0.10274 62 63
i 1 157.089041 0.10274 38 78
i 11 157.089041 0.10274 42 57
i 11 157.191781 0.10274 36 116
i 11 157.191781 0.10274 38 90
i 11 157.191781 0.10274 46 69
i 13 157.191781 0.10274 50 49
i 13 157.191781 0.10274 54 49
i 13 157.191781 0.10274 57 49
i 2 157.191781 0.10274 38 96
i 7 157.191781 0.10274 69 63
i 1 157.294521 0.10274 38 78
i 11 157.294521 0.10274 42 57
i 5 157.294521 0.10274 71 50
i 11 157.39726 0.10274 36 116
i 11 157.39726 0.10274 38 90
i 7 157.39726 0.10274 66 63
i 1 157.5 0.10274 38 78
i 11 157.5 0.10274 42 57
i 9 157.5 0.10274 62 73
i 11 157.60274 0.10274 36 116
i 11 157.60274 0.10274 38 90
i 2 157.60274 0.10274 38 96
i 7 157.60274 0.10274 69 63
i 1 157.705479 0.10274 38 78
i 11 157.705479 0.10274 38 90
i 11 157.705479 0.10274 42 57
i 11 157.808219 0.10274 36 113
i 6 157.808219 0.308219 64 87
i 7 157.808219 0.10274 64 63
i 11 157.910959 0.10274 42 39
i 9 157.910959 0.10274 52 73
i 11 158.013699 0.10274 46 72
i 2 158.013699 0.10274 40 96
i 7 158.013699 0.10274 71 63
i 11 158.116438 0.10274 42 39
i 9 158.116438 0.10274 52 73
i 11 158.219178 0.10274 36 113
i 11 158.219178 0.10274 38 87
i 6 158.219178 0.308219 71 87
i 7 158.219178 0.10274 67 63
i 11 158.321918 0.10274 42 39
i 11 158.424658 0.10274 46 72
i 2 158.424658 0.10274 40 96
i 7 158.424658 0.10274 71 63
i 9 158.424658 0.10274 59 73
i 11 158.527397 0.10274 42 39
i 11 158.630137 0.10274 36 113
i 6 158.630137 0.308219 76 87
i 7 158.630137 0.10274 64 63
i 11 158.732877 0.10274 42 39
i 11 158.835616 0.10274 46 72
i 2 158.835616 0.10274 40 96
i 7 158.835616 0.10274 71 63
i 9 158.835616 0.10274 64 73
i 11 158.938356 0.10274 42 39
i 11 159.041096 0.10274 36 113
i 11 159.041096 0.10274 38 87
i 6 159.041096 0.308219 71 87
i 7 159.041096 0.10274 67 63
i 11 159.143836 0.10274 42 39
i 11 159.246575 0.10274 46 72
i 2 159.246575 0.10274 40 96
i 7 159.246575 0.10274 71 63
i 11 159.349315 0.10274 42 39
i 9 159.349315 0.10274 55 73
i 11 159.452055 0.10274 36 113
i 6 159.452055 0.308219 67 87
i 7 159.452055 0.10274 64 63
i 11 159.554795 0.10274 42 39
i 11 159.657534 0.10274 46 72
i 2 159.657534 0.10274 40 96
i 7 159.657534 0.10274 71 63
i 9 159.657534 0.10274 52 73
i 11 159.760274 0.10274 42 39
i 11 159.863014 0.10274 36 113
i 11 159.863014 0.10274 38 87
i 6 159.863014 0.308219 71 87
i 7 159.863014 0.10274 67 63
i 11 159.965753 0.10274 42 39
i 11 160.068493 0.10274 46 72
i 2 160.068493 0.10274 40 96
i 7 160.068493 0.10274 71 63
i 11 160.171233 0.10274 42 39
i 9 160.171233 0.10274 62 73
i 11 160.273973 0.10274 36 113
i 6 160.273973 0.308219 66 87
i 7 160.273973 0.10274 64 63
i 11 160.376712 0.10274 42 39
i 11 160.479452 0.10274 46 72
i 2 160.479452 0.10274 40 96
i 7 160.479452 0.10274 71 63
i 11 160.582192 0.10274 42 39
i 11 160.684932 0.10274 36 113
i 11 160.684932 0.10274 38 87
i 6 160.684932 0.308219 67 87
i 7 160.684932 0.10274 67 63
i 11 160.787671 0.10274 42 39
i 9 160.787671 0.10274 59 73
i 11 160.890411 0.10274 46 72
i 2 160.890411 0.10274 40 96
i 7 160.890411 0.10274 71 63
i 11 160.993151 0.10274 42 39
i 11 161.09589 0.10274 36 113
i 6 161.09589 0.308219 64 87
i 7 161.09589 0.10274 64 63
i 11 161.19863 0.10274 42 39
i 9 161.19863 0.10274 52 73
i 11 161.30137 0.10274 46 72
i 2 161.30137 0.10274 36 96
i 7 161.30137 0.10274 67 63
i 11 161.40411 0.10274 42 39
i 9 161.40411 0.10274 55 73
i 11 161.506849 0.10274 36 113
i 11 161.506849 0.10274 38 87
i 6 161.506849 0.308219 67 87
i 7 161.506849 0.10274 72 63
i 11 161.609589 0.10274 42 39
i 11 161.712329 0.10274 46 72
i 2 161.712329 0.10274 36 96
i 7 161.712329 0.10274 67 63
i 9 161.712329 0.10274 60 73
i 11 161.815068 0.10274 42 39
i 11 161.917808 0.10274 36 113
i 6 161.917808 0.308219 72 87
i 7 161.917808 0.10274 64 63
i 11 162.020548 0.10274 42 39
i 11 162.123288 0.10274 46 72
i 2 162.123288 0.10274 36 96
i 7 162.123288 0.10274 67 63
i 9 162.123288 0.10274 64 73
i 11 162.226027 0.10274 42 39
i 11 162.328767 0.10274 36 113
i 11 162.328767 0.10274 38 87
i 6 162.328767 0.308219 67 87
i 7 162.328767 0.10274 72 63
i 11 162.431507 0.10274 42 39
i 11 162.534247 0.10274 46 72
i 2 162.534247 0.10274 36 96
i 7 162.534247 0.10274 67 63
i 11 162.636986 0.10274 42 39
i 9 162.636986 0.10274 55 73
i 11 162.739726 0.10274 36 113
i 6 162.739726 0.308219 64 87
i 7 162.739726 0.10274 64 63
i 11 162.842466 0.10274 42 39
i 11 162.945205 0.10274 46 72
i 2 162.945205 0.10274 36 96
i 7 162.945205 0.10274 67 63
i 9 162.945205 0.10274 60 73
i 11 163.047945 0.10274 42 39
i 11 163.150685 0.10274 36 113
i 11 163.150685 0.10274 38 87
i 6 163.150685 0.308219 67 87
i 7 163.150685 0.10274 72 63
i 11 163.253425 0.10274 42 39
i 11 163.356164 0.10274 46 72
i 2 163.356164 0.10274 36 96
i 7 163.356164 0.10274 67 63
i 11 163.458904 0.10274 42 39
i 9 163.458904 0.10274 52 73
i 11 163.561644 0.10274 36 113
i 6 163.561644 0.308219 62 87
i 7 163.561644 0.10274 64 63
i 11 163.664384 0.10274 42 39
i 11 163.767123 0.10274 46 72
i 2 163.767123 0.10274 36 96
i 7 163.767123 0.10274 67 63
i 11 163.869863 0.10274 42 39
i 11 163.972603 0.10274 36 113
i 11 163.972603 0.10274 38 87
i 6 163.972603 0.308219 64 87
i 7 163.972603 0.10274 72 63
i 11 164.075342 0.10274 42 39
i 9 164.075342 0.10274 55 73
i 11 164.178082 0.10274 46 72
i 2 164.178082 0.10274 36 96
i 7 164.178082 0.10274 67 63
i 11 164.280822 0.10274 42 39
i 11 164.383562 0.10274 36 113
i 6 164.383562 0.308219 62 87
i 7 164.383562 0.10274 62 63
i 11 164.486301 0.10274 42 39
i 9 164.486301 0.10274 55 73
i 11 164.589041 0.10274 46 72
i 2 164.589041 0.10274 43 96
i 7 164.589041 0.10274 67 63
i 11 164.691781 0.10274 42 39
i 9 164.691781 0.10274 55 73
i 11 164.794521 0.10274 36 113
i 11 164.794521 0.10274 38 87
i 6 164.794521 0.308219 67 87
i 7 164.794521 0.10274 71 63
i 11 164.89726 0.10274 42 39
i 11 165 0.10274 46 72
i 2 165 0.10274 43 96
i 7 165 0.10274 67 63
i 9 165 0.10274 62 73
i 11 165.10274 0.10274 42 39
i 11 165.205479 0.10274 36 113
i 6 165.205479 0.308219 71 87
i 7 165.205479 0.10274 62 63
i 11 165.308219 0.10274 42 39
i 11 165.410959 0.10274 46 72
i 2 165.410959 0.10274 43 96
i 7 165.410959 0.10274 67 63
i 9 165.410959 0.10274 59 73
i 11 165.513699 0.10274 42 39
i 11 165.616438 0.10274 36 113
i 11 165.616438 0.10274 38 87
i 6 165.616438 0.308219 67 87
i 7 165.616438 0.10274 71 63
i 11 165.719178 0.10274 42 39
i 11 165.821918 0.10274 46 72
i 2 165.821918 0.10274 43 96
i 7 165.821918 0.10274 67 63
i 11 165.924658 0.10274 42 39
i 9 165.924658 0.10274 55 73
i 11 166.027397 0.10274 36 113
i 6 166.027397 0.308219 74 87
i 7 166.027397 0.10274 62 63
i 11 166.130137 0.10274 42 39
i 11 166.232877 0.10274 46 72
i 2 166.232877 0.10274 43 96
i 7 166.232877 0.10274 67 63
i 9 166.232877 0.10274 57 73
i 11 166.335616 0.10274 42 39
i 11 166.438356 0.10274 36 113
i 11 166.438356 0.10274 38 87
i 6 166.438356 0.308219 71 87
i 7 166.438356 0.10274 71 63
i 11 166.541096 0.10274 42 39
i 11 166.643836 0.10274 46 72
i 2 166.643836 0.10274 43 96
i 7 166.643836 0.10274 67 63
i 11 166.746575 0.10274 42 39
i 9 166.746575 0.10274 59 73
i 11 166.849315 0.10274 36 113
i 6 166.849315 0.308219 69 87
i 7 166.849315 0.10274 62 63
i 11 166.952055 0.10274 42 39
i 11 167.054795 0.10274 46 72
i 2 167.054795 0.10274 43 96
i 7 167.054795 0.10274 67 63
i 11 167.157534 0.10274 42 39
i 11 167.260274 0.10274 36 113
i 11 167.260274 0.10274 38 87
i 6 167.260274 0.308219 67 87
i 7 167.260274 0.10274 71 63
i 11 167.363014 0.10274 42 39
i 9 167.363014 0.10274 62 73
i 11 167.465753 0.10274 46 72
i 2 167.465753 0.10274 43 96
i 7 167.465753 0.10274 67 63
i 11 167.568493 0.10274 42 39
i 11 167.671233 0.10274 36 113
i 6 167.671233 0.308219 66 87
i 7 167.671233 0.10274 62 63
i 11 167.773973 0.10274 42 39
i 9 167.773973 0.10274 50 73
i 11 167.876712 0.10274 46 72
i 2 167.876712 0.10274 38 96
i 7 167.876712 0.10274 69 63
i 11 167.979452 0.10274 42 39
i 9 167.979452 0.10274 57 73
i 11 168.082192 0.10274 36 113
i 11 168.082192 0.10274 38 87
i 6 168.082192 0.308219 69 87
i 7 168.082192 0.10274 66 63
i 11 168.184932 0.10274 42 39
i 11 168.287671 0.10274 46 72
i 2 168.287671 0.10274 38 96
i 7 168.287671 0.10274 69 63
i 9 168.287671 0.10274 62 73
i 11 168.390411 0.10274 42 39
i 11 168.493151 0.10274 36 113
i 6 168.493151 0.308219 74 87
i 7 168.493151 0.10274 62 63
i 11 168.59589 0.10274 42 39
i 11 168.69863 0.10274 46 72
i 2 168.69863 0.10274 38 96
i 7 168.69863 0.10274 69 63
i 9 168.69863 0.10274 54 73
i 11 168.80137 0.10274 42 39
i 11 168.90411 0.10274 36 113
i 11 168.90411 0.10274 38 87
i 6 168.90411 0.308219 69 87
i 7 168.90411 0.10274 66 63
i 11 169.006849 0.10274 42 39
i 11 169.109589 0.10274 46 72
i 2 169.109589 0.10274 38 96
i 7 169.109589 0.10274 69 63
i 11 169.212329 0.10274 42 39
i 9 169.212329 0.10274 57 73
i 11 169.315068 0.10274 36 113
i 6 169.315068 0.308219 66 87
i 7 169.315068 0.10274 62 63
i 11 169.417808 0.10274 42 39
i 11 169.520548 0.10274 46 72
i 2 169.520548 0.10274 38 96
i 7 169.520548 0.10274 69 63
i 9 169.520548 0.10274 62 73
i 11 169.623288 0.10274 42 39
i 11 169.726027 0.10274 36 113
i 11 169.726027 0.10274 38 87
i 6 169.726027 0.308219 64 87
i 7 169.726027 0.10274 66 63
i 11 169.828767 0.10274 42 39
i 11 169.931507 0.10274 46 72
i 2 169.931507 0.10274 38 96
i 7 169.931507 0.10274 69 63
i 11 170.034247 0.10274 42 39
i 9 170.034247 0.10274 66 73
i 11 170.136986 0.10274 36 113
i 6 170.136986 0.308219 62 87
i 7 170.136986 0.10274 62 63
i 11 170.239726 0.10274 42 39
i 11 170.342466 0.10274 46 72
i 2 170.342466 0.10274 38 96
i 7 170.342466 0.10274 69 63
i 11 170.445205 0.10274 42 39
i 11 170.547945 0.10274 36 113
i 11 170.547945 0.10274 38 87
i 6 170.547945 0.308219 59 87
i 7 170.547945 0.10274 66 63
i 11 170.650685 0.10274 42 39
i 9 170.650685 0.10274 62 73
i 11 170.753425 0.10274 46 72
i 2 170.753425 0.10274 38 96
i 7 170.753425 0.10274 69 63
i 11 170.856164 0.10274 42 39
i 11 170.958904 0.10274 36 113
i 6 170.958904 0.308219 64 87
i 7 170.958904 0.10274 64 63
i 11 171.061644 0.10274 42 39
i 11 171.164384 0.10274 46 72
i 2 171.164384 0.10274 40 96
i 7 171.164384 0.10274 71 63
i 11 171.267123 0.10274 42 39
i 11 171.369863 0.10274 36 113
i 11 171.369863 0.10274 38 87
i 6 171.369863 0.308219 71 87
i 7 171.369863 0.10274 67 63
i 11 171.472603 0.10274 42 39
i 11 171.575342 0.10274 46 72
i 2 171.575342 0.10274 40 96
i 7 171.575342 0.10274 71 63
i 11 171.678082 0.10274 42 39
i 11 171.780822 0.10274 36 113
i 6 171.780822 0.308219 76 87
i 7 171.780822 0.10274 64 63
i 11 171.883562 0.10274 42 39
i 11 171.986301 0.10274 46 72
i 2 171.986301 0.10274 40 96
i 7 171.986301 0.10274 71 63
i 11 172.089041 0.10274 42 39
i 11 172.191781 0.10274 36 113
i 11 172.191781 0.10274 38 87
i 6 172.191781 0.308219 71 87
i 7 172.191781 0.10274 67 63
i 11 172.294521 0.10274 42 39
i 11 172.39726 0.10274 46 72
i 2 172.39726 0.10274 40 96
i 7 172.39726 0.10274 71 63
i 11 172.5 0.10274 42 39
i 11 172.60274 0.10274 36 113
i 6 172.60274 0.308219 67 87
i 7 172.60274 0.10274 64 63
i 11 172.705479 0.10274 42 39
i 11 172.808219 0.10274 46 72
i 2 172.808219 0.10274 40 96
i 7 172.808219 0.10274 71 63
i 11 172.910959 0.10274 42 39
i 11 173.013699 0.10274 36 113
i 11 173.013699 0.10274 38 87
i 6 173.013699 0.308219 71 87
i 7 173.013699 0.10274 67 63
i 11 173.116438 0.10274 42 39
i 11 173.219178 0.10274 46 72
i 2 173.219178 0.10274 40 96
i 7 173.219178 0.10274 71 63
i 11 173.321918 0.10274 42 39
i 11 173.424658 0.10274 36 113
i 6 173.424658 0.308219 66 87
i 7 173.424658 0.10274 64 63
i 11 173.527397 0.10274 42 39
i 11 173.630137 0.10274 46 72
i 2 173.630137 0.10274 40 96
i 7 173.630137 0.10274 71 63
i 11 173.732877 0.10274 42 39
i 11 173.835616 0.10274 36 113
i 11 173.835616 0.10274 38 87
i 6 173.835616 0.308219 67 87
i 7 173.835616 0.10274 67 63
i 11 173.938356 0.10274 42 39
i 11 174.041096 0.10274 46 72
i 2 174.041096 0.10274 40 96
i 7 174.041096 0.10274 71 63
i 11 174.143836 0.10274 42 39
i 11 174.246575 0.10274 36 113
i 6 174.246575 0.308219 64 87
i 7 174.246575 0.10274 64 63
i 11 174.349315 0.10274 42 39
i 11 174.452055 0.10274 46 72
i 2 174.452055 0.10274 36 96
i 7 174.452055 0.10274 67 63
i 11 174.554795 0.10274 42 39
i 11 174.657534 0.10274 36 113
i 11 174.657534 0.10274 38 87
i 6 174.657534 0.308219 67 87
i 7 174.657534 0.10274 72 63
i 11 174.760274 0.10274 42 39
i 11 174.863014 0.10274 46 72
i 2 174.863014 0.10274 36 96
i 7 174.863014 0.10274 67 63
i 11 174.965753 0.10274 42 39
i 11 175.068493 0.10274 36 113
i 6 175.068493 0.308219 72 87
i 7 175.068493 0.10274 64 63
i 11 175.171233 0.10274 42 39
i 11 175.273973 0.10274 46 72
i 2 175.273973 0.10274 36 96
i 7 175.273973 0.10274 67 63
i 11 175.376712 0.10274 42 39
i 11 175.479452 0.10274 36 113
i 11 175.479452 0.10274 38 87
i 6 175.479452 0.308219 67 87
i 7 175.479452 0.10274 72 63
i 11 175.582192 0.10274 42 39
i 11 175.684932 0.10274 46 72
i 2 175.684932 0.10274 36 96
i 7 175.684932 0.10274 67 63
i 11 175.787671 0.10274 42 39
i 11 175.890411 0.10274 36 113
i 6 175.890411 0.308219 64 87
i 7 175.890411 0.10274 64 63
i 11 175.993151 0.10274 42 39
i 11 176.09589 0.10274 46 72
i 2 176.09589 0.10274 36 96
i 7 176.09589 0.10274 67 63
i 11 176.19863 0.10274 42 39
i 11 176.30137 0.10274 36 113
i 11 176.30137 0.10274 38 87
i 6 176.30137 0.308219 67 87
i 7 176.30137 0.10274 72 63
i 11 176.40411 0.10274 42 39
i 11 176.506849 0.10274 46 72
i 2 176.506849 0.10274 36 96
i 7 176.506849 0.10274 67 63
i 11 176.609589 0.10274 42 39
i 11 176.712329 0.10274 36 113
i 6 176.712329 0.308219 62 87
i 7 176.712329 0.10274 64 63
i 11 176.815068 0.10274 42 39
i 11 176.917808 0.10274 46 72
i 2 176.917808 0.10274 36 96
i 7 176.917808 0.10274 67 63
i 11 177.020548 0.10274 42 39
i 11 177.123288 0.10274 36 113
i 11 177.123288 0.10274 38 87
i 6 177.123288 0.308219 64 87
i 7 177.123288 0.10274 72 63
i 11 177.226027 0.10274 42 39
i 11 177.328767 0.10274 46 72
i 2 177.328767 0.10274 36 96
i 7 177.328767 0.10274 67 63
i 11 177.431507 0.10274 42 39
i 11 177.534247 0.10274 36 113
i 6 177.534247 0.308219 62 87
i 7 177.534247 0.10274 62 63
i 11 177.636986 0.10274 42 39
i 11 177.739726 0.10274 46 72
i 2 177.739726 0.10274 43 96
i 7 177.739726 0.10274 67 63
i 11 177.842466 0.10274 42 39
i 11 177.945205 0.10274 36 113
i 11 177.945205 0.10274 38 87
i 6 177.945205 0.308219 67 87
i 7 177.945205 0.10274 71 63
i 11 178.047945 0.10274 42 39
i 11 178.150685 0.10274 46 72
i 2 178.150685 0.10274 43 96
i 7 178.150685 0.10274 67 63
i 11 178.253425 0.10274 42 39
i 11 178.356164 0.10274 36 113
i 6 178.356164 0.308219 71 87
i 7 178.356164 0.10274 62 63
i 11 178.458904 0.10274 42 39
i 11 178.561644 0.10274 46 72
i 2 178.561644 0.10274 43 96
i 7 178.561644 0.10274 67 63
i 11 178.664384 0.10274 42 39
i 11 178.767123 0.10274 36 113
i 11 178.767123 0.10274 38 87
i 6 178.767123 0.308219 67 87
i 7 178.767123 0.10274 71 63
i 11 178.869863 0.10274 42 39
i 11 178.972603 0.10274 46 72
i 2 178.972603 0.10274 43 96
i 7 178.972603 0.10274 67 63
i 11 179.075342 0.10274 42 39
i 11 179.178082 0.10274 36 113
i 6 179.178082 0.308219 74 87
i 7 179.178082 0.10274 62 63
i 11 179.280822 0.10274 42 39
i 11 179.383562 0.10274 46 72
i 2 179.383562 0.10274 43 96
i 7 179.383562 0.10274 67 63
i 11 179.486301 0.10274 42 39
i 11 179.589041 0.10274 36 113
i 11 179.589041 0.10274 38 87
i 6 179.589041 0.308219 71 87
i 7 179.589041 0.10274 71 63
i 11 179.691781 0.10274 42 39
i 11 179.794521 0.10274 46 72
i 2 179.794521 0.10274 43 96
i 7 179.794521 0.10274 67 63
i 11 179.89726 0.10274 42 39
i 11 180 0.10274 36 113
i 6 180 0.308219 69 87
i 7 180 0.10274 62 63
i 11 180.10274 0.10274 42 39
i 11 180.205479 0.10274 46 72
i 2 180.205479 0.10274 43 96
i 7 180.205479 0.10274 67 63
i 11 180.308219 0.10274 42 39
i 11 180.410959 0.10274 36 113
i 11 180.410959 0.10274 38 87
i 6 180.410959 0.308219 67 87
i 7 180.410959 0.10274 71 63
i 11 180.513699 0.10274 42 39
i 11 180.616438 0.10274 46 72
i 2 180.616438 0.10274 43 96
i 7 180.616438 0.10274 67 63
i 11 180.719178 0.10274 42 39
i 11 180.821918 0.10274 36 113
i 4 180.821918 3.082192 59 70
i 6 180.821918 0.308219 66 87
i 7 180.821918 0.10274 62 63
i 11 180.924658 0.10274 42 39
i 11 181.027397 0.10274 46 69
i 2 181.027397 0.10274 38 96
i 7 181.027397 0.10274 69 63
i 11 181.130137 0.10274 42 39
i 11 181.232877 0.10274 36 113
i 11 181.232877 0.10274 38 90
i 6 181.232877 0.308219 69 87
i 7 181.232877 0.10274 66 63
i 11 181.335616 0.10274 42 39
i 11 181.438356 0.10274 46 69
i 2 181.438356 0.10274 38 96
i 7 181.438356 0.10274 69 63
i 11 181.541096 0.10274 42 39
i 11 181.643836 0.10274 36 113
i 6 181.643836 0.308219 74 87
i 7 181.643836 0.10274 62 63
i 11 181.746575 0.10274 42 39
i 11 181.849315 0.10274 46 69
i 2 181.849315 0.10274 38 96
i 7 181.849315 0.10274 69 63
i 11 181.952055 0.10274 42 39
i 11 182.054795 0.10274 36 113
i 11 182.054795 0.10274 38 90
i 6 182.054795 0.308219 69 87
i 7 182.054795 0.10274 66 63
i 11 182.157534 0.10274 42 39
i 11 182.260274 0.10274 46 69
i 2 182.260274 0.10274 38 96
i 7 182.260274 0.10274 69 63
i 11 182.363014 0.10274 42 39
i 11 182.465753 0.10274 36 113
i 6 182.465753 0.308219 66 87
i 7 182.465753 0.10274 62 63
i 11 182.568493 0.10274 42 39
i 11 182.671233 0.10274 46 69
i 2 182.671233 0.10274 38 96
i 7 182.671233 0.10274 69 63
i 11 182.773973 0.10274 42 39
i 11 182.876712 0.10274 36 113
i 11 182.876712 0.10274 38 90
i 6 182.876712 0.308219 64 87
i 7 182.876712 0.10274 66 63
i 11 182.979452 0.10274 42 39
i 11 183.082192 0.10274 46 69
i 2 183.082192 0.10274 38 96
i 7 183.082192 0.10274 69 63
i 11 183.184932 0.10274 42 39
i 11 183.287671 0.10274 36 113
i 6 183.287671 0.308219 62 87
i 7 183.287671 0.10274 62 63
i 11 183.390411 0.10274 42 39
i 11 183.493151 0.10274 38 90
i 11 183.493151 0.10274 46 69
i 2 183.493151 0.10274 38 96
i 7 183.493151 0.10274 69 63
i 11 183.59589 0.10274 42 39
i 11 183.69863 0.10274 38 90
i 6 183.69863 0.308219 59 87
i 7 183.69863 0.10274 66 63
i 11 183.80137 0.10274 42 39
i 11 183.90411 0.10274 38 90
i 2 183.90411 0.10274 38 96
i 7 183.90411 0.10274 69 63
i 11 184.006849 0.10274 38 90
i 11 184.006849 0.10274 42 39
i 11 184.109589 0.10274 36 113
i 6 184.109589 0.308219 64 87
i 7 184.109589 0.10274 64 63
i 8 184.109589 0.10274 64 62
i 1 184.212329 0.10274 40 78
i 11 184.212329 0.10274 42 57
i 9 184.212329 0.10274 52 73
i 11 184.315068 0.10274 46 72
i 2 184.315068 0.10274 40 96
i 7 184.315068 0.10274 71 63
i 1 184.417808 0.10274 40 78
i 11 184.417808 0.10274 42 57
i 13 184.417808 0.10274 52 49
i 13 184.417808 0.10274 55 49
i 13 184.417808 0.10274 59 49
i 5 184.417808 0.10274 64 49
i 9 184.417808 0.10274 52 73
i 11 184.520548 0.10274 36 113
i 11 184.520548 0.10274 38 87
i 6 184.520548 0.308219 71 87
i 7 184.520548 0.10274 67 63
i 1 184.623288 0.10274 40 78
i 11 184.623288 0.10274 42 57
i 11 184.726027 0.10274 46 72
i 2 184.726027 0.10274 40 96
i 7 184.726027 0.10274 71 63
i 9 184.726027 0.10274 59 73
i 1 184.828767 0.10274 40 78
i 11 184.828767 0.10274 42 57
i 11 184.931507 0.10274 36 113
i 6 184.931507 0.308219 76 87
i 7 184.931507 0.10274 64 63
i 1 185.034247 0.10274 40 78
i 11 185.034247 0.10274 42 57
i 5 185.034247 0.10274 64 49
i 11 185.136986 0.10274 46 72
i 13 185.136986 0.10274 52 49
i 13 185.136986 0.10274 55 49
i 13 185.136986 0.10274 59 49
i 2 185.136986 0.10274 40 96
i 7 185.136986 0.10274 71 63
i 9 185.136986 0.10274 64 73
i 1 185.239726 0.10274 40 78
i 11 185.239726 0.10274 42 57
i 11 185.342466 0.10274 36 113
i 11 185.342466 0.10274 38 87
i 6 185.342466 0.308219 71 87
i 7 185.342466 0.10274 67 63
i 1 185.445205 0.10274 40 78
i 11 185.445205 0.10274 42 57
i 11 185.547945 0.10274 46 72
i 2 185.547945 0.10274 40 96
i 7 185.547945 0.10274 71 63
i 1 185.650685 0.10274 40 78
i 11 185.650685 0.10274 42 57
i 5 185.650685 0.10274 64 49
i 9 185.650685 0.10274 55 73
i 11 185.753425 0.10274 36 113
i 6 185.753425 0.308219 67 87
i 7 185.753425 0.10274 64 63
i 1 185.856164 0.10274 40 78
i 11 185.856164 0.10274 42 57
i 11 185.958904 0.10274 46 72
i 2 185.958904 0.10274 40 96
i 7 185.958904 0.10274 71 63
i 9 185.958904 0.10274 52 73
i 1 186.061644 0.10274 40 78
i 11 186.061644 0.10274 42 57
i 13 186.061644 0.10274 52 49
i 13 186.061644 0.10274 55 49
i 13 186.061644 0.10274 59 49
i 11 186.164384 0.10274 36 113
i 11 186.164384 0.10274 38 87
i 6 186.164384 0.308219 71 87
i 7 186.164384 0.10274 67 63
i 1 186.267123 0.10274 40 78
i 11 186.267123 0.10274 42 57
i 11 186.369863 0.10274 46 72
i 2 186.369863 0.10274 40 96
i 5 186.369863 0.10274 64 49
i 7 186.369863 0.10274 71 63
i 1 186.472603 0.10274 40 78
i 11 186.472603 0.10274 42 57
i 9 186.472603 0.10274 62 73
i 11 186.575342 0.10274 36 113
i 6 186.575342 0.308219 66 87
i 7 186.575342 0.10274 64 63
i 1 186.678082 0.10274 40 78
i 11 186.678082 0.10274 42 57
i 11 186.780822 0.10274 46 72
i 13 186.780822 0.10274 52 49
i 13 186.780822 0.10274 55 49
i 13 186.780822 0.10274 59 49
i 2 186.780822 0.10274 40 96
i 7 186.780822 0.10274 71 63
i 1 186.883562 0.10274 40 78
i 11 186.883562 0.10274 42 57
i 5 186.883562 0.10274 64 49
i 11 186.986301 0.10274 36 113
i 11 186.986301 0.10274 38 87
i 6 186.986301 0.308219 67 87
i 7 186.986301 0.10274 67 63
i 1 187.089041 0.10274 40 78
i 11 187.089041 0.10274 42 57
i 9 187.089041 0.10274 59 73
i 11 187.191781 0.10274 46 72
i 2 187.191781 0.10274 40 96
i 7 187.191781 0.10274 71 63
i 1 187.294521 0.10274 40 78
i 11 187.294521 0.10274 42 57
i 11 187.39726 0.10274 36 113
i 6 187.39726 0.308219 64 87
i 7 187.39726 0.10274 64 63
i 1 187.5 0.10274 36 78
i 11 187.5 0.10274 42 57
i 9 187.5 0.10274 52 73
i 11 187.60274 0.10274 46 72
i 2 187.60274 0.10274 36 96
i 7 187.60274 0.10274 67 63
i 1 187.705479 0.10274 36 78
i 11 187.705479 0.10274 42 57
i 13 187.705479 0.10274 48 49
i 13 187.705479 0.10274 52 49
i 13 187.705479 0.10274 55 49
i 5 187.705479 0.10274 71 50
i 9 187.705479 0.10274 55 73
i 11 187.808219 0.10274 36 113
i 11 187.808219 0.10274 38 87
i 6 187.808219 0.308219 67 87
i 7 187.808219 0.10274 72 63
i 1 187.910959 0.10274 36 78
i 11 187.910959 0.10274 42 57
i 11 188.013699 0.10274 46 72
i 2 188.013699 0.10274 36 96
i 7 188.013699 0.10274 67 63
i 9 188.013699 0.10274 60 73
i 1 188.116438 0.10274 36 78
i 11 188.116438 0.10274 42 57
i 11 188.219178 0.10274 36 113
i 6 188.219178 0.308219 72 87
i 7 188.219178 0.10274 64 63
i 1 188.321918 0.10274 36 78
i 11 188.321918 0.10274 42 57
i 5 188.321918 0.10274 71 50
i 11 188.424658 0.10274 46 72
i 13 188.424658 0.10274 48 49
i 13 188.424658 0.10274 52 49
i 13 188.424658 0.10274 55 49
i 2 188.424658 0.10274 36 96
i 7 188.424658 0.10274 67 63
i 9 188.424658 0.10274 64 73
i 1 188.527397 0.10274 36 78
i 11 188.527397 0.10274 42 57
i 11 188.630137 0.10274 36 113
i 11 188.630137 0.10274 38 87
i 6 188.630137 0.308219 67 87
i 7 188.630137 0.10274 72 63
i 1 188.732877 0.10274 36 78
i 11 188.732877 0.10274 42 57
i 11 188.835616 0.10274 46 72
i 2 188.835616 0.10274 36 96
i 7 188.835616 0.10274 67 63
i 1 188.938356 0.10274 36 78
i 11 188.938356 0.10274 42 57
i 5 188.938356 0.10274 71 50
i 9 188.938356 0.10274 55 73
i 11 189.041096 0.10274 36 113
i 6 189.041096 0.308219 64 87
i 7 189.041096 0.10274 64 63
i 1 189.143836 0.10274 36 78
i 11 189.143836 0.10274 42 57
i 11 189.246575 0.10274 46 72
i 2 189.246575 0.10274 36 96
i 7 189.246575 0.10274 67 63
i 9 189.246575 0.10274 60 73
i 1 189.349315 0.10274 36 78
i 11 189.349315 0.10274 42 57
i 13 189.349315 0.10274 48 49
i 13 189.349315 0.10274 52 49
i 13 189.349315 0.10274 55 49
i 11 189.452055 0.10274 36 113
i 11 189.452055 0.10274 38 87
i 6 189.452055 0.308219 67 87
i 7 189.452055 0.10274 72 63
i 1 189.554795 0.10274 36 78
i 11 189.554795 0.10274 42 57
i 11 189.657534 0.10274 46 72
i 2 189.657534 0.10274 36 96
i 5 189.657534 0.10274 71 50
i 7 189.657534 0.10274 67 63
i 1 189.760274 0.10274 36 78
i 11 189.760274 0.10274 42 57
i 9 189.760274 0.10274 52 73
i 11 189.863014 0.10274 36 113
i 6 189.863014 0.308219 62 87
i 7 189.863014 0.10274 64 63
i 1 189.965753 0.10274 36 78
i 11 189.965753 0.10274 42 57
i 11 190.068493 0.10274 46 72
i 13 190.068493 0.10274 48 49
i 13 190.068493 0.10274 52 49
i 13 190.068493 0.10274 55 49
i 2 190.068493 0.10274 36 96
i 7 190.068493 0.10274 67 63
i 1 190.171233 0.10274 36 78
i 11 190.171233 0.10274 42 57
i 5 190.171233 0.10274 71 50
i 11 190.273973 0.10274 36 113
i 11 190.273973 0.10274 38 87
i 6 190.273973 0.308219 64 87
i 7 190.273973 0.10274 72 63
i 1 190.376712 0.10274 36 78
i 11 190.376712 0.10274 42 57
i 9 190.376712 0.10274 55 73
i 11 190.479452 0.10274 46 72
i 2 190.479452 0.10274 36 96
i 7 190.479452 0.10274 67 63
i 1 190.582192 0.10274 36 78
i 11 190.582192 0.10274 42 57
i 11 190.684932 0.10274 36 113
i 6 190.684932 0.308219 62 87
i 7 190.684932 0.10274 62 63
i 1 190.787671 0.10274 43 78
i 11 190.787671 0.10274 42 57
i 9 190.787671 0.10274 55 73
i 11 190.890411 0.10274 46 72
i 2 190.890411 0.10274 43 96
i 7 190.890411 0.10274 67 63
i 1 190.993151 0.10274 43 78
i 11 190.993151 0.10274 42 57
i 13 190.993151 0.10274 55 49
i 13 190.993151 0.10274 59 49
i 13 190.993151 0.10274 62 49
i 5 190.993151 0.10274 64 49
i 9 190.993151 0.10274 55 73
i 11 191.09589 0.10274 36 113
i 11 191.09589 0.10274 38 87
i 6 191.09589 0.308219 67 87
i 7 191.09589 0.10274 71 63
i 1 191.19863 0.10274 43 78
i 11 191.19863 0.10274 42 57
i 11 191.30137 0.10274 46 72
i 2 191.30137 0.10274 43 96
i 7 191.30137 0.10274 67 63
i 9 191.30137 0.10274 62 73
i 1 191.40411 0.10274 43 78
i 11 191.40411 0.10274 42 57
i 11 191.506849 0.10274 36 113
i 6 191.506849 0.308219 71 87
i 7 191.506849 0.10274 62 63
i 1 191.609589 0.10274 43 78
i 11 191.609589 0.10274 42 57
i 5 191.609589 0.10274 64 49
i 11 191.712329 0.10274 46 72
i 13 191.712329 0.10274 55 49
i 13 191.712329 0.10274 59 49
i 13 191.712329 0.10274 62 49
i 2 191.712329 0.10274 43 96
i 7 191.712329 0.10274 67 63
i 9 191.712329 0.10274 59 73
i 1 191.815068 0.10274 43 78
i 11 191.815068 0.10274 42 57
i 11 191.917808 0.10274 36 113
i 11 191.917808 0.10274 38 87
i 6 191.917808 0.308219 67 87
i 7 191.917808 0.10274 71 63
i 1 192.020548 0.10274 43 78
i 11 192.020548 0.10274 42 57
i 11 192.123288 0.10274 46 72
i 2 192.123288 0.10274 43 96
i 7 192.123288 0.10274 67 63
i 1 192.226027 0.10274 43 78
i 11 192.226027 0.10274 42 57
i 5 192.226027 0.10274 64 49
i 9 192.226027 0.10274 55 73
i 11 192.328767 0.10274 36 113
i 6 192.328767 0.308219 74 87
i 7 192.328767 0.10274 62 63
i 1 192.431507 0.10274 43 78
i 11 192.431507 0.10274 42 57
i 11 192.534247 0.10274 46 72
i 2 192.534247 0.10274 43 96
i 7 192.534247 0.10274 67 63
i 9 192.534247 0.10274 57 73
i 1 192.636986 0.10274 43 78
i 11 192.636986 0.10274 42 57
i 13 192.636986 0.10274 55 49
i 13 192.636986 0.10274 59 49
i 13 192.636986 0.10274 62 49
i 11 192.739726 0.10274 36 113
i 11 192.739726 0.10274 38 87
i 6 192.739726 0.308219 71 87
i 7 192.739726 0.10274 71 63
i 1 192.842466 0.10274 43 78
i 11 192.842466 0.10274 42 57
i 11 192.945205 0.10274 46 72
i 2 192.945205 0.10274 43 96
i 5 192.945205 0.10274 64 49
i 7 192.945205 0.10274 67 63
i 1 193.047945 0.10274 43 78
i 11 193.047945 0.10274 42 57
i 9 193.047945 0.10274 59 73
i 11 193.150685 0.10274 36 113
i 6 193.150685 0.308219 69 87
i 7 193.150685 0.10274 62 63
i 1 193.253425 0.10274 43 78
i 11 193.253425 0.10274 42 57
i 11 193.356164 0.10274 46 72
i 13 193.356164 0.10274 55 49
i 13 193.356164 0.10274 59 49
i 13 193.356164 0.10274 62 49
i 2 193.356164 0.10274 43 96
i 7 193.356164 0.10274 67 63
i 1 193.458904 0.10274 43 78
i 11 193.458904 0.10274 42 57
i 5 193.458904 0.10274 64 49
i 11 193.561644 0.10274 36 113
i 11 193.561644 0.10274 38 87
i 6 193.561644 0.308219 67 87
i 7 193.561644 0.10274 71 63
i 1 193.664384 0.10274 43 78
i 11 193.664384 0.10274 42 57
i 9 193.664384 0.10274 62 73
i 11 193.767123 0.10274 46 72
i 2 193.767123 0.10274 43 96
i 7 193.767123 0.10274 67 63
i 1 193.869863 0.10274 43 78
i 11 193.869863 0.10274 42 57
i 11 193.972603 0.10274 36 113
i 6 193.972603 0.308219 66 87
i 7 193.972603 0.10274 62 63
i 1 194.075342 0.10274 38 78
i 11 194.075342 0.10274 42 57
i 9 194.075342 0.10274 50 73
i 11 194.178082 0.10274 46 72
i 2 194.178082 0.10274 38 96
i 7 194.178082 0.10274 69 63
i 1 194.280822 0.10274 38 78
i 11 194.280822 0.10274 42 57
i 13 194.280822 0.10274 50 49
i 13 194.280822 0.10274 54 49
i 13 194.280822 0.10274 57 49
i 5 194.280822 0.10274 71 50
i 9 194.280822 0.10274 57 73
i 11 194.383562 0.10274 36 113
i 11 194.383562 0.10274 38 87
i 6 194.383562 0.308219 69 87
i 7 194.383562 0.10274 66 63
i 1 194.486301 0.10274 38 78
i 11 194.486301 0.10274 42 57
i 11 194.589041 0.10274 46 72
i 2 194.589041 0.10274 38 96
i 7 194.589041 0.10274 69 63
i 9 194.589041 0.10274 62 73
i 1 194.691781 0.10274 38 78
i 11 194.691781 0.10274 42 57
i 11 194.794521 0.10274 36 113
i 6 194.794521 0.308219 74 87
i 7 194.794521 0.10274 62 63
i 1 194.89726 0.10274 38 78
i 11 194.89726 0.10274 42 57
i 5 194.89726 0.10274 71 50
i 11 195 0.10274 46 72
i 13 195 0.10274 50 49
i 13 195 0.10274 54 49
i 13 195 0.10274 57 49
i 2 195 0.10274 38 96
i 7 195 0.10274 69 63
i 9 195 0.10274 54 73
i 1 195.10274 0.10274 38 78
i 11 195.10274 0.10274 42 57
i 11 195.205479 0.10274 36 113
i 11 195.205479 0.10274 38 87
i 6 195.205479 0.308219 69 87
i 7 195.205479 0.10274 66 63
i 1 195.308219 0.10274 38 78
i 11 195.308219 0.10274 42 57
i 11 195.410959 0.10274 46 72
i 2 195.410959 0.10274 38 96
i 7 195.410959 0.10274 69 63
i 1 195.513699 0.10274 38 78
i 11 195.513699 0.10274 42 57
i 5 195.513699 0.10274 71 50
i 9 195.513699 0.10274 57 73
i 11 195.616438 0.10274 36 113
i 6 195.616438 0.308219 66 87
i 7 195.616438 0.10274 62 63
i 1 195.719178 0.10274 38 78
i 11 195.719178 0.10274 42 57
i 11 195.821918 0.10274 46 72
i 2 195.821918 0.10274 38 96
i 7 195.821918 0.10274 69 63
i 9 195.821918 0.10274 62 73
i 1 195.924658 0.10274 38 78
i 11 195.924658 0.10274 42 57
i 13 195.924658 0.10274 50 49
i 13 195.924658 0.10274 54 49
i 13 195.924658 0.10274 57 49
i 11 196.027397 0.10274 36 113
i 11 196.027397 0.10274 38 87
i 6 196.027397 0.308219 64 87
i 7 196.027397 0.10274 66 63
i 1 196.130137 0.10274 38 78
i 11 196.130137 0.10274 42 57
i 11 196.232877 0.10274 46 72
i 2 196.232877 0.10274 38 96
i 5 196.232877 0.10274 71 50
i 7 196.232877 0.10274 69 63
i 1 196.335616 0.10274 38 78
i 11 196.335616 0.10274 42 57
i 9 196.335616 0.10274 66 73
i 11 196.438356 0.10274 36 113
i 6 196.438356 0.308219 62 87
i 7 196.438356 0.10274 62 63
i 1 196.541096 0.10274 38 78
i 11 196.541096 0.10274 42 57
i 11 196.643836 0.10274 46 72
i 13 196.643836 0.10274 50 49
i 13 196.643836 0.10274 54 49
i 13 196.643836 0.10274 57 49
i 2 196.643836 0.10274 38 96
i 7 196.643836 0.10274 69 63
i 1 196.746575 0.10274 38 78
i 11 196.746575 0.10274 42 57
i 5 196.746575 0.10274 71 50
i 11 196.849315 0.10274 36 113
i 11 196.849315 0.10274 38 87
i 6 196.849315 0.308219 59 87
i 7 196.849315 0.10274 66 63
i 1 196.952055 0.10274 38 78
i 11 196.952055 0.10274 42 57
i 9 196.952055 0.10274 62 73
i 11 197.054795 0.10274 46 72
i 2 197.054795 0.10274 38 96
i 7 197.054795 0.10274 69 63
i 1 197.157534 0.10274 38 78
i 11 197.157534 0.10274 42 57
i 11 197.260274 0.10274 36 113
i 6 197.260274 0.308219 64 87
i 7 197.260274 0.10274 64 63
i 1 197.363014 0.10274 40 78
i 11 197.363014 0.10274 42 57
i 9 197.363014 0.10274 52 73
i 11 197.465753 0.10274 46 72
i 2 197.465753 0.10274 40 96
i 3 197.465753 0.10274 52 58
i 7 197.465753 0.10274 71 63
i 1 197.568493 0.10274 40 78
i 11 197.568493 0.10274 42 57
i 13 197.568493 0.10274 52 49
i 13 197.568493 0.10274 55 49
i 13 197.568493 0.10274 59 49
i 5 197.568493 0.10274 64 49
i 9 197.568493 0.10274 52 73
i 11 197.671233 0.10274 36 113
i 11 197.671233 0.10274 38 87
i 6 197.671233 0.308219 71 87
i 7 197.671233 0.10274 67 63
i 1 197.773973 0.10274 40 78
i 11 197.773973 0.10274 42 57
i 11 197.876712 0.10274 46 72
i 2 197.876712 0.10274 40 96
i 7 197.876712 0.10274 71 63
i 9 197.876712 0.10274 59 73
i 1 197.979452 0.10274 40 78
i 11 197.979452 0.10274 42 57
i 3 197.979452 0.10274 59 58
i 11 198.082192 0.10274 36 113
i 6 198.082192 0.308219 76 87
i 7 198.082192 0.10274 64 63
i 1 198.184932 0.10274 40 78
i 11 198.184932 0.10274 42 57
i 5 198.184932 0.10274 64 49
i 11 198.287671 0.10274 46 72
i 13 198.287671 0.10274 52 49
i 13 198.287671 0.10274 55 49
i 13 198.287671 0.10274 59 49
i 2 198.287671 0.10274 40 96
i 7 198.287671 0.10274 71 63
i 9 198.287671 0.10274 64 73
i 1 198.390411 0.10274 40 78
i 11 198.390411 0.10274 42 57
i 3 198.390411 0.10274 62 58
i 11 198.493151 0.10274 36 113
i 11 198.493151 0.10274 38 87
i 6 198.493151 0.308219 71 87
i 7 198.493151 0.10274 67 63
i 1 198.59589 0.10274 40 78
i 11 198.59589 0.10274 42 57
i 11 198.69863 0.10274 46 72
i 2 198.69863 0.10274 40 96
i 7 198.69863 0.10274 71 63
i 1 198.80137 0.10274 40 78
i 11 198.80137 0.10274 42 57
i 5 198.80137 0.10274 64 49
i 9 198.80137 0.10274 55 73
i 11 198.90411 0.10274 36 113
i 6 198.90411 0.308219 67 87
i 7 198.90411 0.10274 64 63
i 1 199.006849 0.10274 40 78
i 11 199.006849 0.10274 42 57
i 11 199.109589 0.10274 46 72
i 2 199.109589 0.10274 40 96
i 3 199.109589 0.10274 52 58
i 7 199.109589 0.10274 71 63
i 9 199.109589 0.10274 52 73
i 1 199.212329 0.10274 40 78
i 11 199.212329 0.10274 42 57
i 13 199.212329 0.10274 52 49
i 13 199.212329 0.10274 55 49
i 13 199.212329 0.10274 59 49
i 11 199.315068 0.10274 36 113
i 11 199.315068 0.10274 38 87
i 6 199.315068 0.308219 71 87
i 7 199.315068 0.10274 67 63
i 1 199.417808 0.10274 40 78
i 11 199.417808 0.10274 42 57
i 11 199.520548 0.10274 46 72
i 2 199.520548 0.10274 40 96
i 3 199.520548 0.10274 55 58
i 5 199.520548 0.10274 64 49
i 7 199.520548 0.10274 71 63
i 1 199.623288 0.10274 40 78
i 11 199.623288 0.10274 42 57
i 9 199.623288 0.10274 62 73
i 11 199.726027 0.10274 36 113
i 6 199.726027 0.308219 66 87
i 7 199.726027 0.10274 64 63
i 1 199.828767 0.10274 40 78
i 11 199.828767 0.10274 42 57
i 11 199.931507 0.10274 46 72
i 13 199.931507 0.10274 52 49
i 13 199.931507 0.10274 55 49
i 13 199.931507 0.10274 59 49
i 2 199.931507 0.10274 40 96
i 7 199.931507 0.10274 71 63
i 1 200.034247 0.10274 40 78
i 11 200.034247 0.10274 42 57
i 3 200.034247 0.10274 59 58
i 5 200.034247 0.10274 64 49
i 11 200.136986 0.10274 36 113
i 11 200.136986 0.10274 38 87
i 6 200.136986 0.308219 67 87
i 7 200.136986 0.10274 67 63
i 1 200.239726 0.10274 40 78
i 11 200.239726 0.10274 42 57
i 9 200.239726 0.10274 59 73
i 11 200.342466 0.10274 46 72
i 2 200.342466 0.10274 40 96
i 3 200.342466 0.10274 64 58
i 7 200.342466 0.10274 71 63
i 1 200.445205 0.10274 40 78
i 11 200.445205 0.10274 42 57
i 11 200.547945 0.10274 36 113
i 6 200.547945 0.308219 64 87
i 7 200.547945 0.10274 64 63
i 1 200.650685 0.10274 36 78
i 11 200.650685 0.10274 42 57
i 9 200.650685 0.10274 52 73
i 11 200.753425 0.10274 46 72
i 2 200.753425 0.10274 36 96
i 3 200.753425 0.10274 48 58
i 7 200.753425 0.10274 67 63
i 1 200.856164 0.10274 36 78
i 11 200.856164 0.10274 42 57
i 13 200.856164 0.10274 48 49
i 13 200.856164 0.10274 52 49
i 13 200.856164 0.10274 55 49
i 5 200.856164 0.10274 71 50
i 9 200.856164 0.10274 55 73
i 11 200.958904 0.10274 36 113
i 11 200.958904 0.10274 38 87
i 6 200.958904 0.308219 67 87
i 7 200.958904 0.10274 72 63
i 1 201.061644 0.10274 36 78
i 11 201.061644 0.10274 42 57
i 11 201.164384 0.10274 46 72
i 2 201.164384 0.10274 36 96
i 7 201.164384 0.10274 67 63
i 9 201.164384 0.10274 60 73
i 1 201.267123 0.10274 36 78
i 11 201.267123 0.10274 42 57
i 3 201.267123 0.10274 55 58
i 11 201.369863 0.10274 36 113
i 6 201.369863 0.308219 72 87
i 7 201.369863 0.10274 64 63
i 1 201.472603 0.10274 36 78
i 11 201.472603 0.10274 42 57
i 5 201.472603 0.10274 71 50
i 11 201.575342 0.10274 46 72
i 13 201.575342 0.10274 48 49
i 13 201.575342 0.10274 52 49
i 13 201.575342 0.10274 55 49
i 2 201.575342 0.10274 36 96
i 7 201.575342 0.10274 67 63
i 9 201.575342 0.10274 64 73
i 1 201.678082 0.10274 36 78
i 11 201.678082 0.10274 42 57
i 3 201.678082 0.10274 59 58
i 11 201.780822 0.10274 36 113
i 11 201.780822 0.10274 38 87
i 6 201.780822 0.308219 67 87
i 7 201.780822 0.10274 72 63
i 1 201.883562 0.10274 36 78
i 11 201.883562 0.10274 42 57
i 11 201.986301 0.10274 46 72
i 2 201.986301 0.10274 36 96
i 7 201.986301 0.10274 67 63
i 1 202.089041 0.10274 36 78
i 11 202.089041 0.10274 42 57
i 5 202.089041 0.10274 71 50
i 9 202.089041 0.10274 55 73
i 11 202.191781 0.10274 36 113
i 6 202.191781 0.308219 64 87
i 7 202.191781 0.10274 64 63
i 1 202.294521 0.10274 36 78
i 11 202.294521 0.10274 42 57
i 11 202.39726 0.10274 46 72
i 2 202.39726 0.10274 36 96
i 3 202.39726 0.10274 60 58
i 7 202.39726 0.10274 67 63
i 9 202.39726 0.10274 60 73
i 1 202.5 0.10274 36 78
i 11 202.5 0.10274 42 57
i 13 202.5 0.10274 48 49
i 13 202.5 0.10274 52 49
i 13 202.5 0.10274 55 49
i 11 202.60274 0.10274 36 113
i 11 202.60274 0.10274 38 87
i 6 202.60274 0.308219 67 87
i 7 202.60274 0.10274 72 63
i 1 202.705479 0.10274 36 78
i 11 202.705479 0.10274 42 57
i 11 202.808219 0.10274 46 72
i 2 202.808219 0.10274 36 96
i 3 202.808219 0.10274 55 58
i 5 202.808219 0.10274 71 50
i 7 202.808219 0.10274 67 63
i 1 202.910959 0.10274 36 78
i 11 202.910959 0.10274 42 57
i 9 202.910959 0.10274 52 73
i 11 203.013699 0.10274 36 113
i 6 203.013699 0.308219 62 87
i 7 203.013699 0.10274 64 63
i 1 203.116438 0.10274 36 78
i 11 203.116438 0.10274 42 57
i 11 203.219178 0.10274 46 72
i 13 203.219178 0.10274 48 49
i 13 203.219178 0.10274 52 49
i 13 203.219178 0.10274 55 49
i 2 203.219178 0.10274 36 96
i 7 203.219178 0.10274 67 63
i 1 203.321918 0.10274 36 78
i 11 203.321918 0.10274 42 57
i 3 203.321918 0.10274 52 58
i 5 203.321918 0.10274 71 50
i 11 203.424658 0.10274 36 113
i 11 203.424658 0.10274 38 87
i 6 203.424658 0.308219 64 87
i 7 203.424658 0.10274 72 63
i 1 203.527397 0.10274 36 78
i 11 203.527397 0.10274 42 57
i 9 203.527397 0.10274 55 73
i 11 203.630137 0.10274 46 72
i 2 203.630137 0.10274 36 96
i 3 203.630137 0.10274 55 58
i 7 203.630137 0.10274 67 63
i 1 203.732877 0.10274 36 78
i 11 203.732877 0.10274 42 57
i 11 203.835616 0.10274 36 113
i 6 203.835616 0.308219 62 87
i 7 203.835616 0.10274 62 63
i 1 203.938356 0.10274 43 78
i 11 203.938356 0.10274 42 57
i 9 203.938356 0.10274 55 73
i 11 204.041096 0.10274 46 72
i 2 204.041096 0.10274 43 96
i 3 204.041096 0.10274 55 58
i 7 204.041096 0.10274 67 63
i 1 204.143836 0.10274 43 78
i 11 204.143836 0.10274 42 57
i 13 204.143836 0.10274 55 49
i 13 204.143836 0.10274 59 49
i 13 204.143836 0.10274 62 49
i 5 204.143836 0.10274 64 49
i 9 204.143836 0.10274 55 73
i 11 204.246575 0.10274 36 113
i 11 204.246575 0.10274 38 87
i 6 204.246575 0.308219 67 87
i 7 204.246575 0.10274 71 63
i 1 204.349315 0.10274 43 78
i 11 204.349315 0.10274 42 57
i 11 204.452055 0.10274 46 72
i 2 204.452055 0.10274 43 96
i 7 204.452055 0.10274 67 63
i 9 204.452055 0.10274 62 73
i 1 204.554795 0.10274 43 78
i 11 204.554795 0.10274 42 57
i 3 204.554795 0.10274 62 58
i 11 204.657534 0.10274 36 113
i 6 204.657534 0.308219 71 87
i 7 204.657534 0.10274 62 63
i 1 204.760274 0.10274 43 78
i 11 204.760274 0.10274 42 57
i 5 204.760274 0.10274 64 49
i 11 204.863014 0.10274 46 72
i 13 204.863014 0.10274 55 49
i 13 204.863014 0.10274 59 49
i 13 204.863014 0.10274 62 49
i 2 204.863014 0.10274 43 96
i 7 204.863014 0.10274 67 63
i 9 204.863014 0.10274 59 73
i 1 204.965753 0.10274 43 78
i 11 204.965753 0.10274 42 57
i 3 204.965753 0.10274 59 58
i 11 205.068493 0.10274 36 113
i 11 205.068493 0.10274 38 87
i 6 205.068493 0.308219 67 87
i 7 205.068493 0.10274 71 63
i 1 205.171233 0.10274 43 78
i 11 205.171233 0.10274 42 57
i 11 205.273973 0.10274 46 72
i 2 205.273973 0.10274 43 96
i 7 205.273973 0.10274 67 63
i 1 205.376712 0.10274 43 78
i 11 205.376712 0.10274 42 57
i 5 205.376712 0.10274 64 49
i 9 205.376712 0.10274 55 73
i 11 205.479452 0.10274 36 113
i 6 205.479452 0.308219 74 87
i 7 205.479452 0.10274 62 63
i 1 205.582192 0.10274 43 78
i 11 205.582192 0.10274 42 57
i 11 205.684932 0.10274 46 72
i 2 205.684932 0.10274 43 96
i 3 205.684932 0.10274 55 58
i 7 205.684932 0.10274 67 63
i 9 205.684932 0.10274 57 73
i 1 205.787671 0.10274 43 78
i 11 205.787671 0.10274 42 57
i 13 205.787671 0.10274 55 49
i 13 205.787671 0.10274 59 49
i 13 205.787671 0.10274 62 49
i 11 205.890411 0.10274 36 113
i 11 205.890411 0.10274 38 87
i 6 205.890411 0.308219 71 87
i 7 205.890411 0.10274 71 63
i 1 205.993151 0.10274 43 78
i 11 205.993151 0.10274 42 57
i 11 206.09589 0.10274 46 72
i 2 206.09589 0.10274 43 96
i 3 206.09589 0.10274 57 58
i 5 206.09589 0.10274 64 49
i 7 206.09589 0.10274 67 63
i 1 206.19863 0.10274 43 78
i 11 206.19863 0.10274 42 57
i 9 206.19863 0.10274 59 73
i 11 206.30137 0.10274 36 113
i 6 206.30137 0.308219 69 87
i 7 206.30137 0.10274 62 63
i 1 206.40411 0.10274 43 78
i 11 206.40411 0.10274 42 57
i 11 206.506849 0.10274 46 72
i 13 206.506849 0.10274 55 49
i 13 206.506849 0.10274 59 49
i 13 206.506849 0.10274 62 49
i 2 206.506849 0.10274 43 96
i 7 206.506849 0.10274 67 63
i 1 206.609589 0.10274 43 78
i 11 206.609589 0.10274 42 57
i 3 206.609589 0.10274 59 58
i 5 206.609589 0.10274 64 49
i 11 206.712329 0.10274 36 113
i 11 206.712329 0.10274 38 87
i 6 206.712329 0.308219 67 87
i 7 206.712329 0.10274 71 63
i 1 206.815068 0.10274 43 78
i 11 206.815068 0.10274 42 57
i 9 206.815068 0.10274 62 73
i 11 206.917808 0.10274 46 72
i 2 206.917808 0.10274 43 96
i 3 206.917808 0.10274 62 58
i 7 206.917808 0.10274 67 63
i 1 207.020548 0.10274 43 78
i 11 207.020548 0.10274 42 57
i 11 207.123288 0.10274 36 113
i 4 207.123288 3.082192 52 55
i 6 207.123288 0.308219 66 87
i 7 207.123288 0.10274 62 63
i 1 207.226027 0.10274 38 78
i 11 207.226027 0.10274 42 57
i 9 207.226027 0.10274 50 73
i 11 207.328767 0.10274 46 69
i 2 207.328767 0.10274 40 93
i 3 207.328767 0.10274 50 58
i 7 207.328767 0.10274 69 63
i 1 207.431507 0.10274 38 78
i 11 207.431507 0.10274 42 57
i 13 207.431507 0.10274 50 49
i 13 207.431507 0.10274 54 49
i 13 207.431507 0.10274 57 49
i 5 207.431507 0.10274 71 50
i 9 207.431507 0.10274 57 73
i 11 207.534247 0.10274 36 113
i 11 207.534247 0.10274 38 90
i 6 207.534247 0.308219 69 87
i 7 207.534247 0.10274 66 63
i 1 207.636986 0.10274 38 78
i 11 207.636986 0.10274 42 57
i 11 207.739726 0.10274 46 69
i 2 207.739726 0.10274 40 93
i 7 207.739726 0.10274 69 63
i 9 207.739726 0.10274 62 73
i 1 207.842466 0.10274 38 78
i 11 207.842466 0.10274 42 57
i 3 207.842466 0.10274 57 58
i 11 207.945205 0.10274 36 113
i 6 207.945205 0.308219 74 87
i 7 207.945205 0.10274 62 63
i 1 208.047945 0.10274 38 78
i 11 208.047945 0.10274 42 57
i 5 208.047945 0.10274 71 50
i 11 208.150685 0.10274 46 69
i 13 208.150685 0.10274 50 49
i 13 208.150685 0.10274 54 49
i 13 208.150685 0.10274 57 49
i 2 208.150685 0.10274 40 93
i 7 208.150685 0.10274 69 63
i 9 208.150685 0.10274 54 73
i 1 208.253425 0.10274 38 78
i 11 208.253425 0.10274 42 57
i 3 208.253425 0.10274 60 58
i 11 208.356164 0.10274 36 113
i 11 208.356164 0.10274 38 90
i 6 208.356164 0.308219 69 87
i 7 208.356164 0.10274 66 63
i 1 208.458904 0.10274 38 78
i 11 208.458904 0.10274 42 57
i 11 208.561644 0.10274 46 69
i 2 208.561644 0.10274 40 93
i 7 208.561644 0.10274 69 63
i 1 208.664384 0.10274 38 78
i 11 208.664384 0.10274 42 57
i 5 208.664384 0.10274 71 50
i 9 208.664384 0.10274 57 73
i 11 208.767123 0.10274 36 113
i 6 208.767123 0.308219 66 87
i 7 208.767123 0.10274 62 63
i 1 208.869863 0.10274 38 78
i 11 208.869863 0.10274 42 57
i 11 208.972603 0.10274 46 69
i 2 208.972603 0.10274 40 93
i 3 208.972603 0.10274 62 58
i 7 208.972603 0.10274 69 63
i 9 208.972603 0.10274 62 73
i 1 209.075342 0.10274 38 78
i 11 209.075342 0.10274 42 57
i 13 209.075342 0.10274 50 49
i 13 209.075342 0.10274 54 49
i 13 209.075342 0.10274 57 49
i 11 209.178082 0.10274 36 113
i 11 209.178082 0.10274 38 90
i 6 209.178082 0.308219 64 87
i 7 209.178082 0.10274 66 63
i 1 209.280822 0.10274 38 78
i 11 209.280822 0.10274 42 57
i 11 209.383562 0.10274 46 69
i 2 209.383562 0.10274 40 93
i 3 209.383562 0.10274 57 58
i 5 209.383562 0.10274 71 50
i 7 209.383562 0.10274 69 63
i 1 209.486301 0.10274 38 78
i 11 209.486301 0.10274 42 57
i 9 209.486301 0.10274 66 73
i 11 209.589041 0.10274 36 113
i 6 209.589041 0.308219 62 87
i 7 209.589041 0.10274 62 63
i 1 209.691781 0.10274 38 78
i 11 209.691781 0.10274 42 57
i 11 209.794521 0.10274 38 90
i 11 209.794521 0.10274 46 69
i 13 209.794521 0.10274 50 49
i 13 209.794521 0.10274 54 49
i 13 209.794521 0.10274 57 49
i 2 209.794521 0.10274 40 93
i 7 209.794521 0.10274 69 63
i 1 209.89726 0.10274 38 78
i 11 209.89726 0.10274 42 57
i 3 209.89726 0.10274 54 58
i 5 209.89726 0.10274 71 50
i 8 209.89726 0.10274 59 54
i 11 210 0.10274 38 90
i 6 210 0.308219 59 87
i 7 210 0.10274 66 63
i 1 210.10274 0.10274 38 78
i 11 210.10274 0.10274 42 57
i 9 210.10274 0.10274 62 73
i 11 210.205479 0.10274 38 90
i 3 210.205479 0.10274 62 58
i 7 210.205479 0.10274 69 63
i 8 210.205479 0.10274 64 54
i 1 210.308219 0.10274 38 78
i 11 210.308219 0.10274 38 90
i 11 210.308219 0.10274 42 57
i 12 210.410959 3.082192 52 60
i 12 210.410959 3.082192 55 60
i 12 210.410959 3.082192 59 60
i 12 210.410959 3.082192 62 60
i 7 210.410959 0.205479 64 43
i 7 210.821918 0.205479 71 43
i 7 211.232877 0.205479 67 43
i 7 211.643836 0.205479 71 43
i 7 212.054795 0.205479 64 43
i 7 212.465753 0.205479 71 43
i 7 212.876712 0.205479 67 43
i 7 213.287671 0.205479 71 43
i 12 213.69863 3.082192 52 60
i 12 213.69863 3.082192 55 60
i 12 213.69863 3.082192 59 60
i 12 213.69863 3.082192 62 60
i 7 213.69863 0.205479 64 43
i 7 214.109589 0.205479 67 43
i 7 214.520548 0.205479 72 43
i 7 214.931507 0.205479 67 43
i 7 215.342466 0.205479 64 43
i 7 215.753425 0.205479 67 43
i 7 216.164384 0.205479 72 43
i 7 216.575342 0.205479 67 43
i 12 216.986301 3.082192 48 46
i 12 216.986301 3.082192 52 46
i 12 216.986301 3.082192 55 46
i 7 216.986301 0.205479 62 43
i 7 217.39726 0.205479 67 43
i 7 217.808219 0.205479 71 43
i 7 218.219178 0.205479 67 43
i 7 218.630137 0.205479 62 43
i 7 219.041096 0.205479 67 43
i 7 219.452055 0.205479 71 43
i 7 219.863014 0.205479 67 43
i 12 220.273973 3.082192 48 46
i 12 220.273973 3.082192 52 46
i 12 220.273973 3.082192 55 46
i 7 220.273973 0.205479 62 43
i 7 220.684932 0.205479 69 43
i 7 221.09589 0.205479 66 43
i 7 221.506849 0.205479 69 43
i 7 221.917808 0.205479 62 43
i 7 222.328767 0.205479 69 43
i 7 222.739726 0.205479 66 43
i 7 223.150685 0.205479 69 43
i 12 223.561644 3.082192 55 45
i 12 223.561644 3.082192 59 45
i 12 223.561644 3.082192 62 45
i 7 223.561644 0.205479 64 43
i 7 223.972603 0.205479 71 43
i 7 224.383562 0.205479 67 43
i 7 224.794521 0.205479 71 43
i 7 225.205479 0.205479 64 43
i 7 225.616438 0.205479 71 43
i 7 226.027397 0.205479 67 43
i 7 226.438356 0.205479 71 43
i 12 226.849315 3.082192 55 45
i 12 226.849315 3.082192 59 45
i 12 226.849315 3.082192 62 45
i 7 226.849315 0.205479 64 43
i 7 227.260274 0.205479 67 43
i 7 227.671233 0.205479 72 43
i 7 228.082192 0.205479 67 43
i 7 228.493151 0.205479 64 43
i 7 228.90411 0.205479 67 43
i 7 229.315068 0.205479 72 43
i 7 229.726027 0.205479 67 43
i 12 230.136986 3.082192 50 46
i 12 230.136986 3.082192 54 46
i 12 230.136986 3.082192 57 46
i 7 230.136986 0.205479 62 43
i 7 230.547945 0.205479 67 43
i 7 230.958904 0.205479 71 43
i 7 231.369863 0.205479 67 43
i 7 231.780822 0.205479 62 43
i 7 232.191781 0.205479 67 43
i 7 232.60274 0.205479 71 43
i 7 233.013699 0.205479 67 43
i 12 233.424658 3.082192 50 46
i 12 233.424658 3.082192 54 46
i 12 233.424658 3.082192 57 46
i 7 233.424658 0.205479 62 43
i 7 233.835616 0.205479 69 43
i 7 234.246575 0.205479 66 43
i 7 234.657534 0.205479 69 43
i 7 235.068493 0.205479 62 43
i 7 235.479452 0.205479 69 43
i 7 235.890411 0.205479 66 43
i 7 236.30137 0.205479 69 43
i 12 236.712329 3.082192 52 47
i 12 236.712329 3.082192 55 47
i 12 236.712329 3.082192 59 47
i 6 236.712329 0.308219 64 87
i 7 236.712329 0.205479 64 43
i 6 237.123288 0.308219 71 87
i 7 237.123288 0.205479 71 43
i 6 237.534247 0.308219 76 87
i 7 237.534247 0.205479 67 43
i 6 237.945205 0.308219 71 87
i 7 237.945205 0.205479 71 43
i 6 238.356164 0.308219 67 87
i 7 238.356164 0.205479 64 43
i 6 238.767123 0.308219 71 87
i 7 238.767123 0.205479 71 43
i 6 239.178082 0.308219 66 87
i 7 239.178082 0.205479 67 43
i 6 239.589041 0.308219 67 87
i 7 239.589041 0.205479 71 43
i 12 240 3.082192 48 46
i 12 240 3.082192 52 46
i 12 240 3.082192 55 46
i 6 240 0.308219 64 87
i 7 240 0.205479 64 43
i 6 240.410959 0.308219 67 87
i 7 240.410959 0.205479 67 43
i 6 240.821918 0.308219 72 87
i 7 240.821918 0.205479 72 43
i 6 241.232877 0.308219 67 87
i 7 241.232877 0.205479 67 43
i 6 241.643836 0.308219 64 87
i 7 241.643836 0.205479 64 43
i 6 242.054795 0.308219 67 87
i 7 242.054795 0.205479 67 43
i 6 242.465753 0.308219 62 87
i 7 242.465753 0.205479 72 43
i 6 242.876712 0.308219 64 87
i 7 242.876712 0.205479 67 43
i 12 243.287671 3.082192 55 45
i 12 243.287671 3.082192 59 45
i 12 243.287671 3.082192 62 45
i 6 243.287671 0.308219 62 87
i 7 243.287671 0.205479 62 43
i 6 243.69863 0.308219 67 87
i 7 243.69863 0.205479 67 43
i 6 244.109589 0.308219 71 87
i 7 244.109589 0.205479 71 43
i 6 244.520548 0.308219 67 87
i 7 244.520548 0.205479 67 43
i 6 244.931507 0.308219 74 87
i 7 244.931507 0.205479 62 43
i 6 245.342466 0.308219 71 87
i 7 245.342466 0.205479 67 43
i 6 245.753425 0.308219 69 87
i 7 245.753425 0.205479 71 43
i 6 246.164384 0.308219 67 87
i 7 246.164384 0.205479 67 43
i 12 246.575342 3.082192 50 46
i 12 246.575342 3.082192 54 46
i 12 246.575342 3.082192 57 46
i 6 246.575342 0.308219 66 87
i 7 246.575342 0.205479 62 43
i 6 246.986301 0.308219 69 87
i 7 246.986301 0.205479 69 43
i 6 247.39726 0.308219 74 87
i 7 247.39726 0.205479 66 43
i 6 247.808219 0.308219 69 87
i 7 247.808219 0.205479 69 43
i 6 248.219178 0.308219 66 87
i 7 248.219178 0.205479 62 43
i 6 248.630137 0.308219 64 87
i 7 248.630137 0.205479 69 43
i 6 249.041096 0.308219 62 87
i 7 249.041096 0.205479 66 43
i 6 249.452055 0.308219 59 87
i 7 249.452055 0.205479 69 43
i 12 249.863014 3.082192 52 47
i 12 249.863014 3.082192 55 47
i 12 249.863014 3.082192 59 47
i 6 249.863014 0.308219 64 87
i 7 249.863014 0.205479 64 43
i 6 250.273973 0.308219 71 87
i 7 250.273973 0.205479 71 43
i 6 250.684932 0.308219 76 87
i 7 250.684932 0.205479 67 43
i 6 251.09589 0.308219 71 87
i 7 251.09589 0.205479 71 43
i 6 251.506849 0.308219 67 87
i 7 251.506849 0.205479 64 43
i 6 251.917808 0.308219 71 87
i 7 251.917808 0.205479 71 43
i 6 252.328767 0.308219 66 87
i 7 252.328767 0.205479 67 43
i 6 252.739726 0.308219 67 87
i 7 252.739726 0.205479 71 43
i 12 253.150685 3.082192 48 46
i 12 253.150685 3.082192 52 46
i 12 253.150685 3.082192 55 46
i 6 253.150685 0.308219 64 87
i 7 253.150685 0.205479 64 43
i 6 253.561644 0.308219 67 87
i 7 253.561644 0.205479 67 43
i 6 253.972603 0.308219 72 87
i 7 253.972603 0.205479 72 43
i 6 254.383562 0.308219 67 87
i 7 254.383562 0.205479 67 43
i 6 254.794521 0.308219 64 87
i 7 254.794521 0.205479 64 43
i 6 255.205479 0.308219 67 87
i 7 255.205479 0.205479 67 43
i 6 255.616438 0.308219 62 87
i 7 255.616438 0.205479 72 43
i 6 256.027397 0.308219 64 87
i 7 256.027397 0.205479 67 43
i 12 256.438356 3.082192 55 45
i 12 256.438356 3.082192 59 45
i 12 256.438356 3.082192 62 45
i 6 256.438356 0.308219 62 87
i 7 256.438356 0.205479 62 43
i 6 256.849315 0.308219 67 87
i 7 256.849315 0.205479 67 43
i 6 257.260274 0.308219 71 87
i 7 257.260274 0.205479 71 43
i 6 257.671233 0.308219 67 87
i 7 257.671233 0.205479 67 43
i 6 258.082192 0.308219 74 87
i 7 258.082192 0.205479 62 43
i 6 258.493151 0.308219 71 87
i 7 258.493151 0.205479 67 43
i 6 258.90411 0.308219 69 87
i 7 258.90411 0.205479 71 43
i 6 259.315068 0.308219 67 87
i 7 259.315068 0.205479 67 43
i 12 259.726027 3.082192 50 46
i 12 259.726027 3.082192 54 46
i 12 259.726027 3.082192 57 46
i 4 259.726027 3.082192 52 55
i 6 259.726027 0.308219 66 87
i 7 259.726027 0.205479 62 43
i 6 260.136986 0.308219 69 87
i 7 260.136986 0.205479 69 43
i 6 260.547945 0.308219 74 87
i 7 260.547945 0.205479 66 43
i 6 260.958904 0.308219 69 87
i 7 260.958904 0.205479 69 43
i 6 261.369863 0.308219 66 87
i 7 261.369863 0.205479 62 43
i 6 261.780822 0.308219 64 87
i 7 261.780822 0.205479 69 43
i 6 262.191781 0.308219 62 87
i 7 262.191781 0.205479 66 43
i 6 262.60274 0.308219 59 87
i 7 262.60274 0.205479 69 43
i 12 263.013699 3.082192 52 47
i 12 263.013699 3.082192 55 47
i 12 263.013699 3.082192 59 47
i 7 263.013699 0.10274 64 63
i 9 263.116438 0.10274 52 73
i 7 263.219178 0.10274 71 63
i 9 263.321918 0.10274 52 73
i 7 263.424658 0.10274 67 63
i 7 263.630137 0.10274 71 63
i 9 263.630137 0.10274 59 73
i 7 263.835616 0.10274 64 63
i 7 264.041096 0.10274 71 63
i 9 264.041096 0.10274 64 73
i 7 264.246575 0.10274 67 63
i 7 264.452055 0.10274 71 63
i 9 264.554795 0.10274 55 73
i 7 264.657534 0.10274 64 63
i 7 264.863014 0.10274 71 63
i 9 264.863014 0.10274 52 73
i 7 265.068493 0.10274 67 63
i 7 265.273973 0.10274 71 63
i 9 265.376712 0.10274 62 73
i 7 265.479452 0.10274 64 63
i 7 265.684932 0.10274 71 63
i 7 265.890411 0.10274 67 63
i 9 265.993151 0.10274 59 73
i 7 266.09589 0.10274 71 63
i 12 266.30137 3.082192 48 46
i 12 266.30137 3.082192 52 46
i 12 266.30137 3.082192 55 46
i 7 266.30137 0.10274 64 63
i 9 266.40411 0.10274 52 73
i 7 266.506849 0.10274 67 63
i 9 266.609589 0.10274 55 73
i 7 266.712329 0.10274 72 63
i 7 266.917808 0.10274 67 63
i 9 266.917808 0.10274 60 73
i 7 267.123288 0.10274 64 63
i 7 267.328767 0.10274 67 63
i 9 267.328767 0.10274 64 73
i 7 267.534247 0.10274 72 63
i 7 267.739726 0.10274 67 63
i 9 267.842466 0.10274 55 73
i 7 267.945205 0.10274 64 63
i 7 268.150685 0.10274 67 63
i 9 268.150685 0.10274 60 73
i 7 268.356164 0.10274 72 63
i 7 268.561644 0.10274 67 63
i 9 268.664384 0.10274 52 73
i 7 268.767123 0.10274 64 63
i 7 268.972603 0.10274 67 63
i 7 269.178082 0.10274 72 63
i 9 269.280822 0.10274 55 73
i 7 269.383562 0.10274 67 63
i 12 269.589041 3.082192 55 45
i 12 269.589041 3.082192 59 45
i 12 269.589041 3.082192 62 45
i 7 269.589041 0.10274 62 63
i 9 269.691781 0.10274 55 73
i 11 269.794521 0.10274 46 47
i 7 269.794521 0.10274 67 63
i 5 269.89726 0.10274 64 49
i 9 269.89726 0.10274 55 73
i 7 270 0.10274 71 63
i 7 270.205479 0.10274 67 63
i 9 270.205479 0.10274 62 73
i 7 270.410959 0.10274 62 63
i 5 270.513699 0.10274 64 49
i 11 270.616438 0.10274 46 47
i 7 270.616438 0.10274 67 63
i 9 270.616438 0.10274 59 73
i 11 270.821918 0.10274 38 62
i 7 270.821918 0.10274 71 63
i 7 271.027397 0.10274 67 63
i 5 271.130137 0.10274 64 49
i 9 271.130137 0.10274 55 73
i 7 271.232877 0.10274 62 63
i 11 271.438356 0.10274 46 47
i 7 271.438356 0.10274 67 63
i 9 271.438356 0.10274 57 73
i 7 271.643836 0.10274 71 63
i 5 271.849315 0.10274 64 49
i 7 271.849315 0.10274 67 63
i 9 271.952055 0.10274 59 73
i 7 272.054795 0.10274 62 63
i 11 272.260274 0.10274 46 47
i 7 272.260274 0.10274 67 63
i 5 272.363014 0.10274 64 49
i 11 272.465753 0.10274 38 62
i 7 272.465753 0.10274 71 63
i 9 272.568493 0.10274 62 73
i 7 272.671233 0.10274 67 63
i 12 272.876712 3.082192 50 46
i 12 272.876712 3.082192 54 46
i 12 272.876712 3.082192 57 46
i 7 272.876712 0.10274 62 63
i 9 272.979452 0.10274 50 73
i 11 273.082192 0.10274 46 47
i 7 273.082192 0.10274 69 63
i 9 273.184932 0.10274 57 73
i 7 273.287671 0.10274 66 63
i 7 273.493151 0.10274 69 63
i 9 273.493151 0.10274 62 73
i 7 273.69863 0.10274 62 63
i 11 273.90411 0.10274 46 47
i 7 273.90411 0.10274 69 63
i 9 273.90411 0.10274 54 73
i 11 274.109589 0.10274 38 62
i 7 274.109589 0.10274 66 63
i 7 274.315068 0.10274 69 63
i 9 274.417808 0.10274 57 73
i 7 274.520548 0.10274 62 63
i 11 274.726027 0.10274 46 47
i 7 274.726027 0.10274 69 63
i 9 274.726027 0.10274 62 73
i 7 274.931507 0.10274 66 63
i 7 275.136986 0.10274 69 63
i 9 275.239726 0.10274 66 73
i 7 275.342466 0.10274 62 63
i 11 275.547945 0.10274 46 47
i 7 275.547945 0.10274 69 63
i 11 275.753425 0.10274 38 62
i 7 275.753425 0.10274 66 63
i 9 275.856164 0.10274 62 73
i 7 275.958904 0.10274 69 63
i 11 276.164384 0.10274 35 86
i 11 276.164384 0.10274 38 68
i 12 276.164384 3.082192 52 47
i 12 276.164384 3.082192 55 47
i 12 276.164384 3.082192 59 47
i 7 276.164384 0.10274 64 63
i 9 276.267123 0.10274 52 73
i 11 276.369863 0.10274 46 72
i 7 276.369863 0.10274 71 63
i 11 276.472603 0.10274 42 52
i 5 276.472603 0.10274 64 49
i 9 276.472603 0.10274 52 73
i 11 276.575342 0.10274 38 68
i 7 276.575342 0.10274 67 63
i 11 276.780822 0.10274 46 72
i 2 276.780822 0.10274 40 70
i 7 276.780822 0.10274 71 63
i 9 276.780822 0.10274 59 73
i 11 276.883562 0.10274 42 52
i 11 276.986301 0.10274 35 86
i 11 276.986301 0.10274 38 68
i 7 276.986301 0.10274 64 63
i 5 277.089041 0.10274 64 49
i 11 277.191781 0.10274 46 72
i 7 277.191781 0.10274 71 63
i 9 277.191781 0.10274 64 73
i 11 277.294521 0.10274 42 52
i 11 277.39726 0.10274 38 68
i 7 277.39726 0.10274 67 63
i 11 277.60274 0.10274 46 72
i 2 277.60274 0.10274 40 70
i 7 277.60274 0.10274 71 63
i 11 277.705479 0.10274 42 52
i 5 277.705479 0.10274 64 49
i 9 277.705479 0.10274 55 73
i 11 277.808219 0.10274 35 86
i 11 277.808219 0.10274 38 68
i 7 277.808219 0.10274 64 63
i 11 278.013699 0.10274 46 72
i 7 278.013699 0.10274 71 63
i 9 278.013699 0.10274 52 73
i 11 278.116438 0.10274 42 52
i 11 278.219178 0.10274 38 68
i 7 278.219178 0.10274 67 63
i 11 278.424658 0.10274 46 72
i 2 278.424658 0.10274 40 70
i 5 278.424658 0.10274 64 49
i 7 278.424658 0.10274 71 63
i 11 278.527397 0.10274 42 52
i 9 278.527397 0.10274 62 73
i 11 278.630137 0.10274 35 86
i 11 278.630137 0.10274 38 68
i 7 278.630137 0.10274 64 63
i 11 278.835616 0.10274 46 72
i 7 278.835616 0.10274 71 63
i 11 278.938356 0.10274 42 52
i 5 278.938356 0.10274 64 49
i 11 279.041096 0.10274 38 68
i 7 279.041096 0.10274 67 63
i 9 279.143836 0.10274 59 73
i 11 279.246575 0.10274 46 72
i 2 279.246575 0.10274 40 70
i 7 279.246575 0.10274 71 63
i 11 279.349315 0.10274 42 52
i 11 279.452055 0.10274 35 86
i 11 279.452055 0.10274 38 68
i 12 279.452055 3.082192 48 46
i 12 279.452055 3.082192 52 46
i 12 279.452055 3.082192 55 46
i 7 279.452055 0.10274 64 63
i 9 279.554795 0.10274 52 73
i 11 279.657534 0.10274 46 72
i 7 279.657534 0.10274 67 63
i 11 279.760274 0.10274 42 52
i 5 279.760274 0.10274 71 50
i 9 279.760274 0.10274 55 73
i 11 279.863014 0.10274 38 68
i 7 279.863014 0.10274 72 63
i 11 280.068493 0.10274 46 72
i 2 280.068493 0.10274 40 70
i 7 280.068493 0.10274 67 63
i 9 280.068493 0.10274 60 73
i 11 280.171233 0.10274 42 52
i 11 280.273973 0.10274 35 86
i 11 280.273973 0.10274 38 68
i 7 280.273973 0.10274 64 63
i 5 280.376712 0.10274 71 50
i 11 280.479452 0.10274 46 72
i 7 280.479452 0.10274 67 63
i 9 280.479452 0.10274 64 73
i 11 280.582192 0.10274 42 52
i 11 280.684932 0.10274 38 68
i 7 280.684932 0.10274 72 63
i 11 280.890411 0.10274 46 72
i 2 280.890411 0.10274 40 70
i 7 280.890411 0.10274 67 63
i 11 280.993151 0.10274 42 52
i 5 280.993151 0.10274 71 50
i 9 280.993151 0.10274 55 73
i 11 281.09589 0.10274 35 86
i 11 281.09589 0.10274 38 68
i 7 281.09589 0.10274 64 63
i 11 281.30137 0.10274 46 72
i 7 281.30137 0.10274 67 63
i 9 281.30137 0.10274 60 73
i 11 281.40411 0.10274 42 52
i 11 281.506849 0.10274 38 68
i 7 281.506849 0.10274 72 63
i 11 281.712329 0.10274 46 72
i 2 281.712329 0.10274 40 70
i 5 281.712329 0.10274 71 50
i 7 281.712329 0.10274 67 63
i 11 281.815068 0.10274 42 52
i 9 281.815068 0.10274 52 73
i 11 281.917808 0.10274 35 86
i 11 281.917808 0.10274 38 68
i 7 281.917808 0.10274 64 63
i 11 282.123288 0.10274 46 72
i 7 282.123288 0.10274 67 63
i 11 282.226027 0.10274 42 52
i 5 282.226027 0.10274 71 50
i 11 282.328767 0.10274 38 68
i 7 282.328767 0.10274 72 63
i 9 282.431507 0.10274 55 73
i 11 282.534247 0.10274 46 72
i 2 282.534247 0.10274 40 70
i 7 282.534247 0.10274 67 63
i 11 282.636986 0.10274 42 52
i 11 282.739726 0.10274 35 100
i 11 282.739726 0.10274 38 82
i 12 282.739726 3.082192 55 45
i 12 282.739726 3.082192 59 45
i 12 282.739726 3.082192 62 45
i 4 282.739726 3.082192 52 55
i 7 282.739726 0.10274 62 63
i 11 282.842466 0.10274 42 39
i 9 282.842466 0.10274 55 73
i 11 282.945205 0.10274 38 82
i 11 282.945205 0.10274 46 72
i 7 282.945205 0.10274 67 63
i 11 283.047945 0.10274 42 39
i 5 283.047945 0.10274 64 49
i 9 283.047945 0.10274 55 73
i 11 283.150685 0.10274 35 100
i 11 283.150685 0.10274 38 82
i 7 283.150685 0.10274 71 63
i 11 283.253425 0.10274 42 39
i 11 283.356164 0.10274 38 82
i 11 283.356164 0.10274 46 72
i 2 283.356164 0.10274 40 70
i 7 283.356164 0.10274 67 63
i 9 283.356164 0.10274 62 73
i 11 283.458904 0.10274 42 39
i 11 283.561644 0.10274 35 100
i 11 283.561644 0.10274 38 82
i 7 283.561644 0.10274 62 63
i 11 283.664384 0.10274 42 39
i 5 283.664384 0.10274 64 49
i 11 283.767123 0.10274 38 82
i 11 283.767123 0.10274 46 72
i 7 283.767123 0.10274 67 63
i 9 283.767123 0.10274 59 73
i 11 283.869863 0.10274 42 39
i 11 283.972603 0.10274 35 100
i 11 283.972603 0.10274 38 82
i 7 283.972603 0.10274 71 63
i 11 284.075342 0.10274 42 39
i 11 284.178082 0.10274 38 82
i 11 284.178082 0.10274 46 72
i 2 284.178082 0.10274 40 70
i 7 284.178082 0.10274 67 63
i 11 284.280822 0.10274 42 39
i 5 284.280822 0.10274 64 49
i 9 284.280822 0.10274 55 73
i 11 284.383562 0.10274 35 100
i 11 284.383562 0.10274 38 82
i 7 284.383562 0.10274 62 63
i 11 284.486301 0.10274 42 39
i 11 284.589041 0.10274 38 82
i 11 284.589041 0.10274 46 72
i 7 284.589041 0.10274 67 63
i 9 284.589041 0.10274 57 73
i 11 284.691781 0.10274 42 39
i 11 284.794521 0.10274 35 100
i 11 284.794521 0.10274 38 82
i 7 284.794521 0.10274 71 63
i 11 284.89726 0.10274 42 39
i 11 285 0.10274 38 82
i 11 285 0.10274 46 72
i 2 285 0.10274 40 70
i 5 285 0.10274 64 49
i 7 285 0.10274 67 63
i 11 285.10274 0.10274 42 39
i 9 285.10274 0.10274 59 73
i 11 285.205479 0.10274 35 100
i 11 285.205479 0.10274 38 82
i 7 285.205479 0.10274 62 63
i 11 285.308219 0.10274 42 39
i 11 285.410959 0.10274 38 82
i 11 285.410959 0.10274 46 72
i 7 285.410959 0.10274 67 63
i 11 285.513699 0.10274 42 39
i 5 285.513699 0.10274 64 49
i 11 285.616438 0.10274 35 100
i 11 285.616438 0.10274 38 82
i 7 285.616438 0.10274 71 63
i 11 285.719178 0.10274 42 39
i 9 285.719178 0.10274 62 73
i 11 285.821918 0.10274 38 82
i 11 285.821918 0.10274 46 72
i 2 285.821918 0.10274 40 70
i 7 285.821918 0.10274 67 63
i 11 285.924658 0.10274 42 39
i 11 286.027397 0.10274 36 113
i 11 286.027397 0.10274 38 82
i 12 286.027397 3.082192 50 46
i 12 286.027397 3.082192 54 46
i 12 286.027397 3.082192 57 46
i 4 286.027397 3.082192 59 70
i 7 286.027397 0.10274 62 63
i 11 286.130137 0.10274 42 39
i 9 286.130137 0.10274 50 73
i 11 286.232877 0.10274 38 82
i 11 286.232877 0.10274 46 69
i 7 286.232877 0.10274 69 63
i 11 286.335616 0.10274 42 39
i 5 286.335616 0.10274 71 50
i 9 286.335616 0.10274 57 73
i 11 286.438356 0.10274 36 113
i 11 286.438356 0.10274 38 82
i 7 286.438356 0.10274 66 63
i 11 286.541096 0.10274 42 39
i 11 286.643836 0.10274 38 82
i 11 286.643836 0.10274 46 69
i 2 286.643836 0.10274 40 70
i 7 286.643836 0.10274 69 63
i 9 286.643836 0.10274 62 73
i 11 286.746575 0.10274 42 39
i 11 286.849315 0.10274 36 113
i 11 286.849315 0.10274 38 82
i 7 286.849315 0.10274 62 63
i 11 286.952055 0.10274 42 39
i 5 286.952055 0.10274 71 50
i 11 287.054795 0.10274 38 82
i 11 287.054795 0.10274 46 69
i 7 287.054795 0.10274 69 63
i 9 287.054795 0.10274 54 73
i 11 287.157534 0.10274 42 39
i 11 287.260274 0.10274 36 113
i 11 287.260274 0.10274 38 82
i 7 287.260274 0.10274 66 63
i 11 287.363014 0.10274 42 39
i 11 287.465753 0.10274 38 82
i 11 287.465753 0.10274 46 69
i 2 287.465753 0.10274 40 70
i 7 287.465753 0.10274 69 63
i 11 287.568493 0.10274 42 39
i 5 287.568493 0.10274 71 50
i 9 287.568493 0.10274 57 73
i 11 287.671233 0.10274 36 113
i 11 287.671233 0.10274 38 82
i 7 287.671233 0.10274 62 63
i 11 287.773973 0.10274 42 39
i 11 287.876712 0.10274 38 82
i 11 287.876712 0.10274 46 69
i 7 287.876712 0.10274 69 63
i 9 287.876712 0.10274 62 73
i 11 287.979452 0.10274 42 39
i 11 288.082192 0.10274 36 113
i 11 288.082192 0.10274 38 82
i 7 288.082192 0.10274 66 63
i 11 288.184932 0.10274 42 39
i 11 288.287671 0.10274 38 82
i 11 288.287671 0.10274 46 69
i 2 288.287671 0.10274 40 70
i 5 288.287671 0.10274 71 50
i 7 288.287671 0.10274 69 63
i 11 288.390411 0.10274 42 39
i 9 288.390411 0.10274 66 73
i 11 288.493151 0.10274 36 113
i 11 288.493151 0.10274 38 82
i 7 288.493151 0.10274 62 63
i 11 288.59589 0.10274 42 39
i 11 288.69863 0.10274 38 82
i 11 288.69863 0.10274 46 69
i 7 288.69863 0.10274 69 63
i 11 288.80137 0.10274 42 39
i 5 288.80137 0.10274 71 50
i 11 288.90411 0.10274 38 82
i 7 288.90411 0.10274 66 63
i 11 289.006849 0.10274 42 39
i 9 289.006849 0.10274 62 73
i 11 289.109589 0.10274 38 82
i 2 289.109589 0.10274 40 70
i 7 289.109589 0.10274 69 63
i 11 289.212329 0.10274 42 39
i 11 289.315068 0.10274 36 113
i 11 289.315068 0.10274 38 68
i 12 289.315068 3.082192 52 47
i 12 289.315068 3.082192 55 47
i 12 289.315068 3.082192 59 47
i 6 289.315068 0.308219 64 87
i 7 289.315068 0.10274 64 63
i 11 289.417808 0.10274 42 57
i 9 289.417808 0.10274 52 73
i 11 289.520548 0.10274 46 72
i 2 289.520548 0.10274 40 96
i 7 289.520548 0.10274 71 63
i 1 289.623288 0.10274 40 58
i 11 289.623288 0.10274 42 57
i 5 289.623288 0.10274 64 49
i 9 289.623288 0.10274 52 73
i 11 289.726027 0.10274 36 113
i 11 289.726027 0.10274 38 68
i 6 289.726027 0.308219 71 87
i 7 289.726027 0.10274 67 63
i 11 289.828767 0.10274 42 57
i 11 289.931507 0.10274 46 72
i 2 289.931507 0.10274 40 96
i 7 289.931507 0.10274 71 63
i 9 289.931507 0.10274 59 73
i 1 290.034247 0.10274 40 58
i 11 290.034247 0.10274 42 57
i 11 290.136986 0.10274 36 113
i 11 290.136986 0.10274 38 68
i 6 290.136986 0.308219 76 87
i 7 290.136986 0.10274 64 63
i 11 290.239726 0.10274 42 57
i 5 290.239726 0.10274 64 49
i 11 290.342466 0.10274 46 72
i 2 290.342466 0.10274 40 96
i 7 290.342466 0.10274 71 63
i 9 290.342466 0.10274 64 73
i 1 290.445205 0.10274 40 58
i 11 290.445205 0.10274 42 57
i 11 290.547945 0.10274 36 113
i 11 290.547945 0.10274 38 68
i 6 290.547945 0.308219 71 87
i 7 290.547945 0.10274 67 63
i 11 290.650685 0.10274 42 57
i 11 290.753425 0.10274 46 72
i 2 290.753425 0.10274 40 96
i 7 290.753425 0.10274 71 63
i 1 290.856164 0.10274 40 58
i 11 290.856164 0.10274 42 57
i 5 290.856164 0.10274 64 49
i 9 290.856164 0.10274 55 73
i 11 290.958904 0.10274 36 113
i 11 290.958904 0.10274 38 68
i 6 290.958904 0.308219 67 87
i 7 290.958904 0.10274 64 63
i 11 291.061644 0.10274 42 57
i 11 291.164384 0.10274 46 72
i 2 291.164384 0.10274 40 96
i 7 291.164384 0.10274 71 63
i 9 291.164384 0.10274 52 73
i 1 291.267123 0.10274 40 58
i 11 291.267123 0.10274 42 57
i 11 291.369863 0.10274 36 113
i 11 291.369863 0.10274 38 68
i 6 291.369863 0.308219 71 87
i 7 291.369863 0.10274 67 63
i 11 291.472603 0.10274 42 57
i 11 291.575342 0.10274 46 72
i 2 291.575342 0.10274 40 96
i 5 291.575342 0.10274 64 49
i 7 291.575342 0.10274 71 63
i 1 291.678082 0.10274 40 58
i 11 291.678082 0.10274 42 57
i 9 291.678082 0.10274 62 73
i 11 291.780822 0.10274 36 113
i 11 291.780822 0.10274 38 68
i 6 291.780822 0.308219 66 87
i 7 291.780822 0.10274 64 63
i 11 291.883562 0.10274 42 57
i 11 291.986301 0.10274 46 72
i 2 291.986301 0.10274 40 96
i 7 291.986301 0.10274 71 63
i 1 292.089041 0.10274 40 58
i 11 292.089041 0.10274 42 57
i 5 292.089041 0.10274 64 49
i 11 292.191781 0.10274 36 113
i 11 292.191781 0.10274 38 68
i 6 292.191781 0.308219 67 87
i 7 292.191781 0.10274 67 63
i 11 292.294521 0.10274 42 57
i 9 292.294521 0.10274 59 73
i 11 292.39726 0.10274 46 72
i 2 292.39726 0.10274 40 96
i 7 292.39726 0.10274 71 63
i 1 292.5 0.10274 40 58
i 11 292.5 0.10274 42 57
i 11 292.60274 0.10274 36 113
i 11 292.60274 0.10274 38 68
i 12 292.60274 3.082192 52 47
i 12 292.60274 3.082192 55 47
i 12 292.60274 3.082192 59 47
i 6 292.60274 0.308219 64 87
i 7 292.60274 0.10274 64 63
i 11 292.705479 0.10274 42 57
i 9 292.705479 0.10274 52 73
i 11 292.808219 0.10274 46 72
i 2 292.808219 0.10274 40 96
i 7 292.808219 0.10274 71 63
i 1 292.910959 0.10274 40 58
i 11 292.910959 0.10274 42 57
i 5 292.910959 0.10274 71 50
i 9 292.910959 0.10274 52 73
i 11 293.013699 0.10274 36 113
i 11 293.013699 0.10274 38 68
i 6 293.013699 0.308219 71 87
i 7 293.013699 0.10274 67 63
i 11 293.116438 0.10274 42 57
i 11 293.219178 0.10274 46 72
i 2 293.219178 0.10274 40 96
i 7 293.219178 0.10274 71 63
i 9 293.219178 0.10274 59 73
i 1 293.321918 0.10274 40 58
i 11 293.321918 0.10274 42 57
i 11 293.424658 0.10274 36 113
i 11 293.424658 0.10274 38 68
i 6 293.424658 0.308219 76 87
i 7 293.424658 0.10274 64 63
i 11 293.527397 0.10274 42 57
i 5 293.527397 0.10274 71 50
i 11 293.630137 0.10274 46 72
i 2 293.630137 0.10274 40 96
i 7 293.630137 0.10274 71 63
i 9 293.630137 0.10274 64 73
i 1 293.732877 0.10274 40 58
i 11 293.732877 0.10274 42 57
i 11 293.835616 0.10274 36 113
i 11 293.835616 0.10274 38 68
i 6 293.835616 0.308219 71 87
i 7 293.835616 0.10274 67 63
i 11 293.938356 0.10274 42 57
i 11 294.041096 0.10274 46 72
i 2 294.041096 0.10274 40 96
i 7 294.041096 0.10274 71 63
i 1 294.143836 0.10274 40 58
i 11 294.143836 0.10274 42 57
i 5 294.143836 0.10274 71 50
i 9 294.143836 0.10274 55 73
i 11 294.246575 0.10274 36 113
i 11 294.246575 0.10274 38 68
i 6 294.246575 0.308219 67 87
i 7 294.246575 0.10274 64 63
i 11 294.349315 0.10274 42 57
i 11 294.452055 0.10274 46 72
i 2 294.452055 0.10274 40 96
i 7 294.452055 0.10274 71 63
i 9 294.452055 0.10274 52 73
i 1 294.554795 0.10274 40 58
i 11 294.554795 0.10274 42 57
i 11 294.657534 0.10274 36 113
i 11 294.657534 0.10274 38 68
i 6 294.657534 0.308219 71 87
i 7 294.657534 0.10274 67 63
i 11 294.760274 0.10274 42 57
i 11 294.863014 0.10274 46 72
i 2 294.863014 0.10274 40 96
i 5 294.863014 0.10274 71 50
i 7 294.863014 0.10274 71 63
i 1 294.965753 0.10274 40 58
i 11 294.965753 0.10274 42 57
i 9 294.965753 0.10274 62 73
i 11 295.068493 0.10274 36 113
i 11 295.068493 0.10274 38 68
i 6 295.068493 0.308219 66 87
i 7 295.068493 0.10274 64 63
i 11 295.171233 0.10274 42 57
i 11 295.273973 0.10274 46 72
i 2 295.273973 0.10274 40 96
i 7 295.273973 0.10274 71 63
i 1 295.376712 0.10274 40 58
i 11 295.376712 0.10274 42 57
i 5 295.376712 0.10274 71 50
i 11 295.479452 0.10274 36 113
i 11 295.479452 0.10274 38 68
i 6 295.479452 0.308219 67 87
i 7 295.479452 0.10274 67 63
i 11 295.582192 0.10274 42 57
i 9 295.582192 0.10274 59 73
i 11 295.684932 0.10274 46 72
i 2 295.684932 0.10274 40 96
i 7 295.684932 0.10274 71 63
i 1 295.787671 0.10274 40 58
i 11 295.787671 0.10274 42 57
i 11 295.890411 0.10274 36 113
i 11 295.890411 0.10274 38 82
i 12 295.890411 3.082192 52 47
i 12 295.890411 3.082192 55 47
i 12 295.890411 3.082192 59 47
i 6 295.890411 0.308219 64 87
i 7 295.890411 0.10274 64 63
i 11 295.993151 0.10274 42 57
i 9 295.993151 0.10274 52 73
i 11 296.09589 0.10274 38 82
i 11 296.09589 0.10274 46 72
i 2 296.09589 0.10274 40 96
i 3 296.09589 0.10274 52 58
i 7 296.09589 0.10274 71 63
i 1 296.19863 0.10274 40 58
i 11 296.19863 0.10274 42 57
i 5 296.19863 0.10274 64 49
i 9 296.19863 0.10274 52 73
i 11 296.30137 0.10274 36 113
i 11 296.30137 0.10274 38 82
i 6 296.30137 0.308219 71 87
i 7 296.30137 0.10274 67 63
i 11 296.40411 0.10274 42 57
i 11 296.506849 0.10274 38 82
i 11 296.506849 0.10274 46 72
i 2 296.506849 0.10274 40 96
i 7 296.506849 0.10274 71 63
i 9 296.506849 0.10274 59 73
i 1 296.609589 0.10274 40 58
i 11 296.609589 0.10274 42 57
i 3 296.609589 0.10274 59 58
i 11 296.712329 0.10274 36 113
i 11 296.712329 0.10274 38 82
i 6 296.712329 0.308219 76 87
i 7 296.712329 0.10274 64 63
i 11 296.815068 0.10274 42 57
i 5 296.815068 0.10274 64 49
i 11 296.917808 0.10274 38 82
i 11 296.917808 0.10274 46 72
i 2 296.917808 0.10274 40 96
i 7 296.917808 0.10274 71 63
i 9 296.917808 0.10274 64 73
i 1 297.020548 0.10274 40 58
i 11 297.020548 0.10274 42 57
i 3 297.020548 0.10274 62 58
i 11 297.123288 0.10274 36 113
i 11 297.123288 0.10274 38 82
i 6 297.123288 0.308219 71 87
i 7 297.123288 0.10274 67 63
i 11 297.226027 0.10274 42 57
i 11 297.328767 0.10274 38 82
i 11 297.328767 0.10274 46 72
i 2 297.328767 0.10274 40 96
i 7 297.328767 0.10274 71 63
i 1 297.431507 0.10274 40 58
i 11 297.431507 0.10274 42 57
i 5 297.431507 0.10274 64 49
i 9 297.431507 0.10274 55 73
i 11 297.534247 0.10274 36 113
i 11 297.534247 0.10274 38 82
i 6 297.534247 0.308219 67 87
i 7 297.534247 0.10274 64 63
i 11 297.636986 0.10274 42 57
i 11 297.739726 0.10274 38 82
i 11 297.739726 0.10274 46 72
i 2 297.739726 0.10274 40 96
i 3 297.739726 0.10274 52 58
i 7 297.739726 0.10274 71 63
i 9 297.739726 0.10274 52 73
i 1 297.842466 0.10274 40 58
i 11 297.842466 0.10274 42 57
i 11 297.945205 0.10274 36 113
i 11 297.945205 0.10274 38 82
i 6 297.945205 0.308219 71 87
i 7 297.945205 0.10274 67 63
i 11 298.047945 0.10274 42 57
i 11 298.150685 0.10274 38 82
i 11 298.150685 0.10274 46 72
i 2 298.150685 0.10274 40 96
i 3 298.150685 0.10274 55 58
i 5 298.150685 0.10274 64 49
i 7 298.150685 0.10274 71 63
i 1 298.253425 0.10274 40 58
i 11 298.253425 0.10274 42 57
i 9 298.253425 0.10274 62 73
i 11 298.356164 0.10274 36 113
i 11 298.356164 0.10274 38 82
i 6 298.356164 0.308219 66 87
i 7 298.356164 0.10274 64 63
i 11 298.458904 0.10274 42 57
i 11 298.561644 0.10274 38 82
i 11 298.561644 0.10274 46 72
i 2 298.561644 0.10274 40 96
i 7 298.561644 0.10274 71 63
i 1 298.664384 0.10274 40 58
i 11 298.664384 0.10274 42 57
i 3 298.664384 0.10274 59 58
i 5 298.664384 0.10274 64 49
i 11 298.767123 0.10274 36 113
i 11 298.767123 0.10274 38 82
i 6 298.767123 0.308219 67 87
i 7 298.767123 0.10274 67 63
i 11 298.869863 0.10274 42 57
i 9 298.869863 0.10274 59 73
i 11 298.972603 0.10274 38 82
i 11 298.972603 0.10274 46 72
i 2 298.972603 0.10274 40 96
i 3 298.972603 0.10274 64 58
i 7 298.972603 0.10274 71 63
i 1 299.075342 0.10274 40 58
i 11 299.075342 0.10274 42 57
i 11 299.178082 0.10274 36 113
i 11 299.178082 0.10274 38 82
i 12 299.178082 3.082192 52 47
i 12 299.178082 3.082192 55 47
i 12 299.178082 3.082192 59 47
i 6 299.178082 0.308219 64 87
i 7 299.178082 0.10274 64 63
i 11 299.280822 0.10274 42 57
i 9 299.280822 0.10274 52 73
i 11 299.383562 0.10274 38 82
i 11 299.383562 0.10274 46 72
i 2 299.383562 0.10274 40 96
i 3 299.383562 0.10274 52 58
i 7 299.383562 0.10274 71 63
i 1 299.486301 0.10274 40 58
i 11 299.486301 0.10274 42 57
i 5 299.486301 0.10274 71 50
i 9 299.486301 0.10274 52 73
i 11 299.589041 0.10274 36 113
i 11 299.589041 0.10274 38 82
i 6 299.589041 0.308219 71 87
i 7 299.589041 0.10274 67 63
i 11 299.691781 0.10274 42 57
i 11 299.794521 0.10274 38 82
i 11 299.794521 0.10274 46 72
i 2 299.794521 0.10274 40 96
i 7 299.794521 0.10274 71 63
i 9 299.794521 0.10274 59 73
i 1 299.89726 0.10274 40 58
i 11 299.89726 0.10274 42 57
i 3 299.89726 0.10274 59 58
i 11 300 0.10274 36 113
i 11 300 0.10274 38 82
i 6 300 0.308219 76 87
i 7 300 0.10274 64 63
i 11 300.10274 0.10274 42 57
i 5 300.10274 0.10274 71 50
i 11 300.205479 0.10274 38 82
i 11 300.205479 0.10274 46 72
i 2 300.205479 0.10274 40 96
i 7 300.205479 0.10274 71 63
i 9 300.205479 0.10274 64 73
i 1 300.308219 0.10274 40 58
i 11 300.308219 0.10274 42 57
i 3 300.308219 0.10274 62 58
i 11 300.410959 0.10274 36 113
i 11 300.410959 0.10274 38 82
i 6 300.410959 0.308219 71 87
i 7 300.410959 0.10274 67 63
i 11 300.513699 0.10274 42 57
i 11 300.616438 0.10274 38 82
i 11 300.616438 0.10274 46 72
i 2 300.616438 0.10274 40 96
i 7 300.616438 0.10274 71 63
i 1 300.719178 0.10274 40 58
i 11 300.719178 0.10274 42 57
i 5 300.719178 0.10274 71 50
i 9 300.719178 0.10274 55 73
i 11 300.821918 0.10274 36 113
i 11 300.821918 0.10274 38 82
i 6 300.821918 0.308219 67 87
i 7 300.821918 0.10274 64 63
i 11 300.924658 0.10274 42 57
i 11 301.027397 0.10274 38 82
i 11 301.027397 0.10274 46 72
i 2 301.027397 0.10274 40 96
i 3 301.027397 0.10274 52 58
i 7 301.027397 0.10274 71 63
i 9 301.027397 0.10274 52 73
i 1 301.130137 0.10274 40 58
i 11 301.130137 0.10274 42 57
i 11 301.232877 0.10274 36 113
i 11 301.232877 0.10274 38 82
i 6 301.232877 0.308219 71 87
i 7 301.232877 0.10274 67 63
i 11 301.335616 0.10274 42 57
i 11 301.438356 0.10274 38 82
i 11 301.438356 0.10274 46 72
i 2 301.438356 0.10274 40 96
i 3 301.438356 0.10274 55 58
i 5 301.438356 0.10274 71 50
i 7 301.438356 0.10274 71 63
i 1 301.541096 0.10274 40 58
i 11 301.541096 0.10274 42 57
i 9 301.541096 0.10274 62 73
i 11 301.643836 0.10274 36 113
i 11 301.643836 0.10274 38 82
i 6 301.643836 0.308219 66 87
i 7 301.643836 0.10274 64 63
i 11 301.746575 0.10274 42 57
i 11 301.849315 0.10274 38 82
i 11 301.849315 0.10274 46 72
i 2 301.849315 0.10274 40 96
i 7 301.849315 0.10274 71 63
i 1 301.952055 0.10274 40 58
i 11 301.952055 0.10274 42 57
i 3 301.952055 0.10274 59 58
i 5 301.952055 0.10274 71 50
i 11 302.054795 0.10274 36 113
i 11 302.054795 0.10274 38 82
i 6 302.054795 0.308219 67 87
i 7 302.054795 0.10274 67 63
i 11 302.157534 0.10274 42 57
i 9 302.157534 0.10274 59 73
i 11 302.260274 0.10274 38 82
i 11 302.260274 0.10274 46 72
i 2 302.260274 0.10274 40 96
i 3 302.260274 0.10274 64 58
i 7 302.260274 0.10274 71 63
i 1 302.363014 0.10274 40 58
i 11 302.363014 0.10274 42 57
i 11 302.465753 0.10274 36 113
i 11 302.465753 0.10274 38 82
i 12 302.465753 3.082192 59 35
i 4 302.465753 3.082192 52 55
i 6 302.465753 0.308219 64 87
i 7 302.465753 0.10274 64 63
i 1 302.568493 0.10274 40 78
i 11 302.568493 0.10274 42 57
i 9 302.568493 0.10274 52 90
i 11 302.671233 0.10274 38 82
i 11 302.671233 0.10274 46 72
i 2 302.671233 0.10274 40 96
i 3 302.671233 0.10274 52 58
i 7 302.671233 0.10274 71 63
i 1 302.773973 0.10274 40 78
i 11 302.773973 0.10274 42 57
i 5 302.773973 0.10274 76 54
i 9 302.773973 0.10274 52 90
i 11 302.876712 0.10274 36 113
i 11 302.876712 0.10274 38 82
i 6 302.876712 0.308219 71 87
i 7 302.876712 0.10274 67 63
i 1 302.979452 0.10274 40 78
i 11 302.979452 0.10274 42 57
i 11 303.082192 0.10274 38 82
i 11 303.082192 0.10274 46 72
i 2 303.082192 0.10274 40 96
i 5 303.082192 0.10274 76 54
i 7 303.082192 0.10274 71 63
i 9 303.082192 0.10274 59 90
i 1 303.184932 0.10274 40 78
i 11 303.184932 0.10274 42 57
i 3 303.184932 0.10274 59 58
i 11 303.287671 0.10274 36 113
i 11 303.287671 0.10274 38 82
i 6 303.287671 0.308219 76 87
i 7 303.287671 0.10274 64 63
i 1 303.390411 0.10274 40 78
i 11 303.390411 0.10274 42 57
i 9 303.390411 0.10274 64 90
i 11 303.493151 0.10274 38 82
i 11 303.493151 0.10274 46 72
i 2 303.493151 0.10274 40 96
i 7 303.493151 0.10274 71 63
i 1 303.59589 0.10274 40 78
i 11 303.59589 0.10274 42 57
i 3 303.59589 0.10274 62 58
i 5 303.59589 0.10274 76 54
i 9 303.59589 0.10274 55 90
i 11 303.69863 0.10274 36 113
i 11 303.69863 0.10274 38 82
i 6 303.69863 0.308219 71 87
i 7 303.69863 0.10274 67 63
i 1 303.80137 0.10274 40 78
i 11 303.80137 0.10274 42 57
i 11 303.90411 0.10274 38 82
i 11 303.90411 0.10274 46 72
i 2 303.90411 0.10274 40 96
i 7 303.90411 0.10274 71 63
i 9 303.90411 0.10274 52 90
i 1 304.006849 0.10274 40 78
i 11 304.006849 0.10274 42 57
i 11 304.109589 0.10274 36 113
i 11 304.109589 0.10274 38 82
i 6 304.109589 0.308219 67 87
i 7 304.109589 0.10274 64 63
i 1 304.212329 0.10274 40 78
i 11 304.212329 0.10274 42 57
i 9 304.212329 0.10274 62 90
i 11 304.315068 0.10274 38 82
i 11 304.315068 0.10274 46 72
i 2 304.315068 0.10274 40 96
i 3 304.315068 0.10274 52 58
i 7 304.315068 0.10274 71 63
i 1 304.417808 0.10274 40 78
i 11 304.417808 0.10274 42 57
i 5 304.417808 0.10274 76 54
i 9 304.417808 0.10274 59 90
i 11 304.520548 0.10274 36 113
i 11 304.520548 0.10274 38 82
i 6 304.520548 0.308219 71 87
i 7 304.520548 0.10274 67 63
i 1 304.623288 0.10274 40 78
i 11 304.623288 0.10274 42 57
i 11 304.726027 0.10274 38 82
i 11 304.726027 0.10274 46 72
i 2 304.726027 0.10274 40 96
i 3 304.726027 0.10274 55 58
i 5 304.726027 0.10274 76 54
i 7 304.726027 0.10274 71 63
i 9 304.726027 0.10274 52 90
i 1 304.828767 0.10274 40 78
i 11 304.828767 0.10274 42 57
i 11 304.931507 0.10274 36 113
i 11 304.931507 0.10274 38 82
i 6 304.931507 0.308219 66 87
i 7 304.931507 0.10274 64 63
i 1 305.034247 0.10274 40 78
i 11 305.034247 0.10274 42 57
i 9 305.034247 0.10274 52 90
i 11 305.136986 0.10274 38 82
i 11 305.136986 0.10274 46 72
i 2 305.136986 0.10274 40 96
i 7 305.136986 0.10274 71 63
i 1 305.239726 0.10274 40 78
i 11 305.239726 0.10274 42 57
i 3 305.239726 0.10274 59 58
i 5 305.239726 0.10274 76 54
i 9 305.239726 0.10274 59 90
i 11 305.342466 0.10274 36 113
i 11 305.342466 0.10274 38 82
i 6 305.342466 0.308219 67 87
i 7 305.342466 0.10274 67 63
i 1 305.445205 0.10274 40 78
i 11 305.445205 0.10274 42 57
i 11 305.547945 0.10274 38 82
i 11 305.547945 0.10274 46 72
i 2 305.547945 0.10274 40 96
i 3 305.547945 0.10274 64 58
i 5 305.547945 0.10274 76 54
i 7 305.547945 0.10274 71 63
i 9 305.547945 0.10274 64 90
i 1 305.650685 0.10274 40 78
i 11 305.650685 0.10274 42 57
i 11 305.753425 0.10274 36 113
i 11 305.753425 0.10274 38 98
i 12 305.753425 3.082192 59 35
i 4 305.753425 3.082192 59 70
i 6 305.753425 0.308219 64 87
i 7 305.753425 0.10274 64 63
i 1 305.856164 0.10274 40 78
i 11 305.856164 0.10274 38 98
i 11 305.856164 0.10274 42 57
i 9 305.856164 0.10274 52 90
i 11 305.958904 0.10274 38 98
i 11 305.958904 0.10274 46 72
i 2 305.958904 0.10274 40 96
i 3 305.958904 0.10274 52 58
i 7 305.958904 0.10274 71 63
i 1 306.061644 0.10274 40 78
i 11 306.061644 0.10274 38 98
i 11 306.061644 0.10274 42 57
i 5 306.061644 0.10274 76 54
i 9 306.061644 0.10274 52 90
i 11 306.164384 0.10274 36 113
i 11 306.164384 0.10274 38 98
i 6 306.164384 0.308219 71 87
i 7 306.164384 0.10274 67 63
i 1 306.267123 0.10274 40 78
i 11 306.267123 0.10274 38 98
i 11 306.267123 0.10274 42 57
i 11 306.369863 0.10274 38 98
i 11 306.369863 0.10274 46 72
i 2 306.369863 0.10274 40 96
i 5 306.369863 0.10274 76 54
i 7 306.369863 0.10274 71 63
i 9 306.369863 0.10274 59 90
i 1 306.472603 0.10274 40 78
i 11 306.472603 0.10274 38 98
i 11 306.472603 0.10274 42 57
i 3 306.472603 0.10274 59 58
i 11 306.575342 0.10274 36 113
i 11 306.575342 0.10274 38 98
i 6 306.575342 0.308219 76 87
i 7 306.575342 0.10274 64 63
i 1 306.678082 0.10274 40 78
i 11 306.678082 0.10274 38 98
i 11 306.678082 0.10274 42 57
i 9 306.678082 0.10274 64 90
i 11 306.780822 0.10274 38 98
i 11 306.780822 0.10274 46 72
i 2 306.780822 0.10274 40 96
i 7 306.780822 0.10274 71 63
i 1 306.883562 0.10274 40 78
i 11 306.883562 0.10274 38 98
i 11 306.883562 0.10274 42 57
i 3 306.883562 0.10274 62 58
i 5 306.883562 0.10274 76 54
i 9 306.883562 0.10274 55 90
i 11 306.986301 0.10274 36 113
i 11 306.986301 0.10274 38 98
i 6 306.986301 0.308219 71 87
i 7 306.986301 0.10274 67 63
i 1 307.089041 0.10274 40 78
i 11 307.089041 0.10274 38 98
i 11 307.089041 0.10274 42 57
i 11 307.191781 0.10274 38 98
i 11 307.191781 0.10274 46 72
i 2 307.191781 0.10274 40 96
i 7 307.191781 0.10274 71 63
i 9 307.191781 0.10274 52 90
i 1 307.294521 0.10274 40 78
i 11 307.294521 0.10274 38 98
i 11 307.294521 0.10274 42 57
i 11 307.39726 0.10274 36 113
i 11 307.39726 0.10274 38 98
i 6 307.39726 0.308219 67 87
i 7 307.39726 0.10274 64 63
i 1 307.5 0.10274 40 78
i 11 307.5 0.10274 38 98
i 11 307.5 0.10274 42 57
i 9 307.5 0.10274 62 90
i 11 307.60274 0.10274 38 98
i 11 307.60274 0.10274 46 72
i 2 307.60274 0.10274 40 96
i 3 307.60274 0.10274 52 58
i 7 307.60274 0.10274 71 63
i 1 307.705479 0.10274 40 78
i 11 307.705479 0.10274 38 98
i 11 307.705479 0.10274 42 57
i 5 307.705479 0.10274 76 54
i 9 307.705479 0.10274 59 90
i 11 307.808219 0.10274 36 113
i 11 307.808219 0.10274 38 98
i 6 307.808219 0.308219 71 87
i 7 307.808219 0.10274 67 63
i 1 307.910959 0.10274 40 78
i 11 307.910959 0.10274 38 98
i 11 307.910959 0.10274 42 57
i 11 308.013699 0.10274 38 98
i 11 308.013699 0.10274 46 72
i 2 308.013699 0.10274 40 96
i 3 308.013699 0.10274 55 58
i 5 308.013699 0.10274 76 54
i 7 308.013699 0.10274 71 63
i 9 308.013699 0.10274 52 90
i 1 308.116438 0.10274 40 78
i 11 308.116438 0.10274 38 98
i 11 308.116438 0.10274 42 57
i 11 308.219178 0.10274 36 113
i 11 308.219178 0.10274 38 98
i 6 308.219178 0.308219 66 87
i 7 308.219178 0.10274 64 63
i 1 308.321918 0.10274 40 78
i 11 308.321918 0.10274 38 98
i 11 308.321918 0.10274 42 57
i 9 308.321918 0.10274 52 90
i 11 308.424658 0.10274 38 98
i 11 308.424658 0.10274 46 72
i 2 308.424658 0.10274 40 96
i 7 308.424658 0.10274 71 63
i 1 308.527397 0.10274 40 78
i 11 308.527397 0.10274 38 98
i 11 308.527397 0.10274 42 57
i 3 308.527397 0.10274 59 58
i 5 308.527397 0.10274 76 54
i 9 308.527397 0.10274 59 90
i 11 308.630137 0.10274 36 113
i 11 308.630137 0.10274 38 98
i 6 308.630137 0.308219 67 87
i 7 308.630137 0.10274 67 63
i 1 308.732877 0.10274 40 78
i 11 308.732877 0.10274 38 98
i 11 308.732877 0.10274 42 57
i 11 308.835616 0.10274 38 98
i 11 308.835616 0.10274 46 72
i 2 308.835616 0.10274 40 96
i 3 308.835616 0.10274 64 58
i 5 308.835616 0.10274 76 54
i 7 308.835616 0.10274 71 63
i 9 308.835616 0.10274 64 90
i 1 308.938356 0.10274 40 78
i 11 308.938356 0.10274 38 98
i 11 308.938356 0.10274 42 57
i 11 309.041096 0.10274 36 113
i 11 309.041096 0.10274 38 98
i 12 309.041096 3.082192 59 35
i 4 309.041096 3.082192 59 70
i 6 309.041096 0.308219 64 87
i 7 309.041096 0.10274 64 63
i 1 309.143836 0.10274 40 78
i 11 309.143836 0.10274 38 98
i 11 309.143836 0.10274 42 57
i 9 309.143836 0.10274 52 90
i 11 309.246575 0.10274 38 98
i 11 309.246575 0.10274 46 72
i 2 309.246575 0.10274 40 93
i 3 309.246575 0.10274 52 58
i 7 309.246575 0.10274 71 63
i 1 309.349315 0.10274 40 78
i 11 309.349315 0.10274 38 98
i 11 309.349315 0.10274 42 57
i 5 309.349315 0.10274 76 54
i 9 309.349315 0.10274 52 90
i 11 309.452055 0.10274 36 113
i 11 309.452055 0.10274 38 98
i 6 309.452055 0.308219 71 87
i 7 309.452055 0.10274 67 63
i 1 309.554795 0.10274 40 78
i 11 309.554795 0.10274 38 98
i 11 309.554795 0.10274 42 57
i 11 309.657534 0.10274 38 98
i 11 309.657534 0.10274 46 72
i 2 309.657534 0.10274 40 93
i 5 309.657534 0.10274 76 54
i 7 309.657534 0.10274 71 63
i 9 309.657534 0.10274 59 90
i 1 309.760274 0.10274 40 78
i 11 309.760274 0.10274 38 98
i 11 309.760274 0.10274 42 57
i 3 309.760274 0.10274 59 58
i 11 309.863014 0.10274 36 113
i 11 309.863014 0.10274 38 98
i 6 309.863014 0.308219 76 87
i 7 309.863014 0.10274 64 63
i 1 309.965753 0.10274 40 78
i 11 309.965753 0.10274 38 98
i 11 309.965753 0.10274 42 57
i 9 309.965753 0.10274 64 90
i 11 310.068493 0.10274 38 98
i 11 310.068493 0.10274 46 72
i 2 310.068493 0.10274 40 93
i 7 310.068493 0.10274 71 63
i 1 310.171233 0.10274 40 78
i 11 310.171233 0.10274 38 98
i 11 310.171233 0.10274 42 57
i 3 310.171233 0.10274 62 58
i 5 310.171233 0.10274 76 54
i 9 310.171233 0.10274 55 90
i 11 310.273973 0.10274 36 113
i 11 310.273973 0.10274 38 98
i 6 310.273973 0.308219 71 87
i 7 310.273973 0.10274 67 63
i 1 310.376712 0.10274 40 78
i 11 310.376712 0.10274 38 98
i 11 310.376712 0.10274 42 57
i 11 310.479452 0.10274 38 98
i 11 310.479452 0.10274 46 72
i 2 310.479452 0.10274 40 93
i 7 310.479452 0.10274 71 63
i 9 310.479452 0.10274 52 90
i 1 310.582192 0.10274 40 78
i 11 310.582192 0.10274 38 98
i 11 310.582192 0.10274 42 57
i 11 310.684932 0.10274 36 113
i 11 310.684932 0.10274 38 98
i 6 310.684932 0.308219 67 87
i 7 310.684932 0.10274 64 63
i 1 310.787671 0.10274 40 78
i 11 310.787671 0.10274 38 98
i 11 310.787671 0.10274 42 57
i 9 310.787671 0.10274 62 90
i 11 310.890411 0.10274 38 98
i 11 310.890411 0.10274 46 72
i 2 310.890411 0.10274 40 93
i 3 310.890411 0.10274 52 58
i 7 310.890411 0.10274 71 63
i 1 310.993151 0.10274 40 78
i 11 310.993151 0.10274 38 98
i 11 310.993151 0.10274 42 57
i 5 310.993151 0.10274 76 54
i 9 310.993151 0.10274 59 90
i 11 311.09589 0.10274 36 113
i 11 311.09589 0.10274 38 98
i 6 311.09589 0.308219 71 87
i 7 311.09589 0.10274 67 63
i 1 311.19863 0.10274 40 78
i 11 311.19863 0.10274 38 98
i 11 311.19863 0.10274 42 57
i 11 311.30137 0.10274 38 98
i 11 311.30137 0.10274 46 72
i 2 311.30137 0.10274 40 93
i 3 311.30137 0.10274 55 58
i 5 311.30137 0.10274 76 54
i 7 311.30137 0.10274 71 63
i 9 311.30137 0.10274 52 90
i 1 311.40411 0.10274 40 78
i 11 311.40411 0.10274 38 98
i 11 311.40411 0.10274 42 57
i 11 311.506849 0.10274 36 113
i 11 311.506849 0.10274 38 98
i 6 311.506849 0.308219 66 87
i 7 311.506849 0.10274 64 63
i 1 311.609589 0.10274 40 78
i 11 311.609589 0.10274 38 98
i 11 311.609589 0.10274 42 57
i 9 311.609589 0.10274 52 90
i 11 311.712329 0.10274 38 98
i 11 311.712329 0.10274 46 72
i 2 311.712329 0.10274 40 93
i 7 311.712329 0.10274 71 63
i 1 311.815068 0.10274 40 78
i 11 311.815068 0.10274 38 98
i 11 311.815068 0.10274 42 57
i 3 311.815068 0.10274 59 58
i 5 311.815068 0.10274 76 54
i 8 311.815068 0.10274 59 54
i 9 311.815068 0.10274 59 90
i 11 311.917808 0.10274 38 98
i 6 311.917808 0.308219 67 87
i 7 311.917808 0.10274 67 63
i 1 312.020548 0.10274 40 78
i 11 312.020548 0.10274 38 98
i 11 312.020548 0.10274 42 57
i 11 312.123288 0.10274 38 98
i 11 312.123288 0.10274 46 72
i 3 312.123288 0.10274 64 58
i 5 312.123288 0.10274 76 54
i 7 312.123288 0.10274 71 63
i 8 312.123288 0.10274 64 54
i 9 312.123288 0.10274 64 90
i 1 312.226027 0.10274 40 78
i 11 312.226027 0.10274 38 98
i 11 312.226027 0.10274 42 57
i 11 312.328767 0.10274 38 110
i 11 312.328767 0.10274 42 67
i 4 312.328767 2.465753 64 88
i 11 312.431507 0.10274 38 110
i 11 312.431507 0.10274 42 67
i 11 312.534247 0.10274 38 110
i 11 312.534247 0.10274 42 67
i 11 312.636986 0.10274 38 110
i 11 312.636986 0.10274 42 67
i 11 312.739726 0.10274 38 110
i 11 312.739726 0.10274 42 67
i 11 312.842466 0.10274 38 110
i 11 312.842466 0.10274 42 67
i 11 312.945205 0.10274 38 110
i 11 312.945205 0.10274 42 67
i 11 313.047945 0.10274 38 110
i 11 313.047945 0.10274 42 67
i 11 313.150685 0.10274 38 110
i 11 313.150685 0.10274 42 67
i 11 313.253425 0.10274 38 110
i 11 313.253425 0.10274 42 67
i 11 313.356164 0.10274 38 110
i 11 313.356164 0.10274 42 67
i 11 313.458904 0.10274 38 110
i 11 313.458904 0.10274 42 67
i 11 313.561644 0.10274 38 110
i 11 313.561644 0.10274 42 67
i 11 313.664384 0.10274 38 110
i 11 313.664384 0.10274 42 67
i 11 313.767123 0.10274 38 110
i 11 313.767123 0.10274 42 67
i 11 313.869863 0.10274 38 110
i 11 313.869863 0.10274 42 67
i 11 313.972603 0.10274 38 110
i 11 313.972603 0.10274 42 67
i 11 314.075342 0.10274 38 110
i 11 314.075342 0.10274 42 67
i 11 314.178082 0.10274 38 110
i 11 314.178082 0.10274 42 67
i 11 314.280822 0.10274 38 110
i 11 314.280822 0.10274 42 67
i 11 314.383562 0.10274 38 110
i 11 314.383562 0.10274 42 67
i 11 314.486301 0.10274 38 110
i 11 314.486301 0.10274 42 67
i 11 314.589041 0.10274 38 110
i 11 314.589041 0.10274 42 67
i 11 314.691781 0.10274 38 110
i 11 314.691781 0.10274 42 67
i 11 314.794521 0.10274 38 110
i 11 314.89726 0.10274 38 110
i 11 315 0.10274 38 110
i 11 315.10274 0.10274 38 110
i 11 315.616438 0.10274 36 113
i 6 315.616438 0.308219 64 105
i 7 315.616438 0.10274 64 63
i 8 315.616438 0.10274 64 62
i 1 315.719178 0.10274 40 78
i 11 315.719178 0.10274 42 57
i 9 315.719178 0.10274 52 73
i 11 315.821918 0.10274 46 72
i 2 315.821918 0.10274 40 96
i 7 315.821918 0.10274 71 63
i 1 315.924658 0.10274 40 78
i 11 315.924658 0.10274 42 57
i 13 315.924658 0.10274 52 49
i 13 315.924658 0.10274 55 49
i 13 315.924658 0.10274 59 49
i 9 315.924658 0.10274 52 73
i 11 316.027397 0.10274 36 113
i 11 316.027397 0.10274 38 87
i 6 316.027397 0.308219 71 105
i 7 316.027397 0.10274 67 63
i 1 316.130137 0.10274 40 78
i 11 316.130137 0.10274 42 57
i 11 316.232877 0.10274 46 72
i 2 316.232877 0.10274 40 96
i 7 316.232877 0.10274 71 63
i 9 316.232877 0.10274 59 73
i 1 316.335616 0.10274 40 78
i 11 316.335616 0.10274 42 57
i 11 316.438356 0.10274 36 113
i 6 316.438356 0.308219 76 105
i 7 316.438356 0.10274 64 63
i 1 316.541096 0.10274 40 78
i 11 316.541096 0.10274 42 57
i 11 316.643836 0.10274 46 72
i 13 316.643836 0.10274 52 49
i 13 316.643836 0.10274 55 49
i 13 316.643836 0.10274 59 49
i 2 316.643836 0.10274 40 96
i 7 316.643836 0.10274 71 63
i 9 316.643836 0.10274 64 73
i 1 316.746575 0.10274 40 78
i 11 316.746575 0.10274 42 57
i 11 316.849315 0.10274 36 113
i 11 316.849315 0.10274 38 87
i 6 316.849315 0.308219 71 105
i 7 316.849315 0.10274 67 63
i 1 316.952055 0.10274 40 78
i 11 316.952055 0.10274 42 57
i 11 317.054795 0.10274 46 72
i 2 317.054795 0.10274 40 96
i 7 317.054795 0.10274 71 63
i 1 317.157534 0.10274 40 78
i 11 317.157534 0.10274 42 57
i 9 317.157534 0.10274 55 73
i 11 317.260274 0.10274 36 113
i 6 317.260274 0.308219 67 105
i 7 317.260274 0.10274 64 63
i 1 317.363014 0.10274 40 78
i 11 317.363014 0.10274 42 57
i 11 317.465753 0.10274 46 72
i 2 317.465753 0.10274 40 96
i 7 317.465753 0.10274 71 63
i 9 317.465753 0.10274 52 73
i 1 317.568493 0.10274 40 78
i 11 317.568493 0.10274 42 57
i 13 317.568493 0.10274 52 49
i 13 317.568493 0.10274 55 49
i 13 317.568493 0.10274 59 49
i 11 317.671233 0.10274 36 113
i 11 317.671233 0.10274 38 87
i 6 317.671233 0.308219 71 105
i 7 317.671233 0.10274 67 63
i 1 317.773973 0.10274 40 78
i 11 317.773973 0.10274 42 57
i 11 317.876712 0.10274 46 72
i 2 317.876712 0.10274 40 96
i 7 317.876712 0.10274 71 63
i 1 317.979452 0.10274 40 78
i 11 317.979452 0.10274 42 57
i 9 317.979452 0.10274 62 73
i 11 318.082192 0.10274 36 113
i 6 318.082192 0.308219 66 105
i 7 318.082192 0.10274 64 63
i 1 318.184932 0.10274 40 78
i 11 318.184932 0.10274 42 57
i 11 318.287671 0.10274 46 72
i 13 318.287671 0.10274 52 49
i 13 318.287671 0.10274 55 49
i 13 318.287671 0.10274 59 49
i 2 318.287671 0.10274 40 96
i 7 318.287671 0.10274 71 63
i 1 318.390411 0.10274 40 78
i 11 318.390411 0.10274 42 57
i 11 318.493151 0.10274 36 113
i 11 318.493151 0.10274 38 87
i 6 318.493151 0.308219 67 105
i 7 318.493151 0.10274 67 63
i 1 318.59589 0.10274 40 78
i 11 318.59589 0.10274 42 57
i 9 318.59589 0.10274 59 73
i 11 318.69863 0.10274 46 72
i 2 318.69863 0.10274 40 96
i 7 318.69863 0.10274 71 63
i 1 318.80137 0.10274 40 78
i 11 318.80137 0.10274 42 57
i 11 318.90411 0.10274 36 113
i 6 318.90411 0.308219 64 105
i 7 318.90411 0.10274 64 63
i 1 319.006849 0.10274 36 78
i 11 319.006849 0.10274 42 57
i 9 319.006849 0.10274 52 73
i 11 319.109589 0.10274 46 72
i 2 319.109589 0.10274 36 96
i 7 319.109589 0.10274 67 63
i 1 319.212329 0.10274 36 78
i 11 319.212329 0.10274 42 57
i 13 319.212329 0.10274 48 49
i 13 319.212329 0.10274 52 49
i 13 319.212329 0.10274 55 49
i 9 319.212329 0.10274 55 73
i 11 319.315068 0.10274 36 113
i 11 319.315068 0.10274 38 87
i 6 319.315068 0.308219 67 105
i 7 319.315068 0.10274 72 63
i 1 319.417808 0.10274 36 78
i 11 319.417808 0.10274 42 57
i 11 319.520548 0.10274 46 72
i 2 319.520548 0.10274 36 96
i 7 319.520548 0.10274 67 63
i 9 319.520548 0.10274 60 73
i 1 319.623288 0.10274 36 78
i 11 319.623288 0.10274 42 57
i 11 319.726027 0.10274 36 113
i 6 319.726027 0.308219 72 105
i 7 319.726027 0.10274 64 63
i 1 319.828767 0.10274 36 78
i 11 319.828767 0.10274 42 57
i 11 319.931507 0.10274 46 72
i 13 319.931507 0.10274 48 49
i 13 319.931507 0.10274 52 49
i 13 319.931507 0.10274 55 49
i 2 319.931507 0.10274 36 96
i 7 319.931507 0.10274 67 63
i 9 319.931507 0.10274 64 73
i 1 320.034247 0.10274 36 78
i 11 320.034247 0.10274 42 57
i 11 320.136986 0.10274 36 113
i 11 320.136986 0.10274 38 87
i 6 320.136986 0.308219 67 105
i 7 320.136986 0.10274 72 63
i 1 320.239726 0.10274 36 78
i 11 320.239726 0.10274 42 57
i 11 320.342466 0.10274 46 72
i 2 320.342466 0.10274 36 96
i 7 320.342466 0.10274 67 63
i 1 320.445205 0.10274 36 78
i 11 320.445205 0.10274 42 57
i 9 320.445205 0.10274 55 73
i 11 320.547945 0.10274 36 113
i 6 320.547945 0.308219 64 105
i 7 320.547945 0.10274 64 63
i 1 320.650685 0.10274 36 78
i 11 320.650685 0.10274 42 57
i 11 320.753425 0.10274 46 72
i 2 320.753425 0.10274 36 96
i 7 320.753425 0.10274 67 63
i 9 320.753425 0.10274 60 73
i 1 320.856164 0.10274 36 78
i 11 320.856164 0.10274 42 57
i 13 320.856164 0.10274 48 49
i 13 320.856164 0.10274 52 49
i 13 320.856164 0.10274 55 49
i 11 320.958904 0.10274 36 113
i 11 320.958904 0.10274 38 87
i 6 320.958904 0.308219 67 105
i 7 320.958904 0.10274 72 63
i 1 321.061644 0.10274 36 78
i 11 321.061644 0.10274 42 57
i 11 321.164384 0.10274 46 72
i 2 321.164384 0.10274 36 96
i 7 321.164384 0.10274 67 63
i 1 321.267123 0.10274 36 78
i 11 321.267123 0.10274 42 57
i 9 321.267123 0.10274 52 73
i 11 321.369863 0.10274 36 113
i 6 321.369863 0.308219 62 105
i 7 321.369863 0.10274 64 63
i 1 321.472603 0.10274 36 78
i 11 321.472603 0.10274 42 57
i 11 321.575342 0.10274 46 72
i 13 321.575342 0.10274 48 49
i 13 321.575342 0.10274 52 49
i 13 321.575342 0.10274 55 49
i 2 321.575342 0.10274 36 96
i 7 321.575342 0.10274 67 63
i 1 321.678082 0.10274 36 78
i 11 321.678082 0.10274 42 57
i 11 321.780822 0.10274 36 113
i 11 321.780822 0.10274 38 87
i 6 321.780822 0.308219 64 105
i 7 321.780822 0.10274 72 63
i 1 321.883562 0.10274 36 78
i 11 321.883562 0.10274 42 57
i 9 321.883562 0.10274 55 73
i 11 321.986301 0.10274 46 72
i 2 321.986301 0.10274 36 96
i 7 321.986301 0.10274 67 63
i 1 322.089041 0.10274 36 78
i 11 322.089041 0.10274 42 57
i 11 322.191781 0.10274 36 113
i 6 322.191781 0.308219 62 105
i 7 322.191781 0.10274 62 63
i 1 322.294521 0.10274 43 78
i 11 322.294521 0.10274 42 57
i 9 322.294521 0.10274 55 73
i 11 322.39726 0.10274 46 72
i 2 322.39726 0.10274 43 96
i 7 322.39726 0.10274 67 63
i 1 322.5 0.10274 43 78
i 11 322.5 0.10274 42 57
i 13 322.5 0.10274 55 49
i 13 322.5 0.10274 59 49
i 13 322.5 0.10274 62 49
i 9 322.5 0.10274 55 73
i 11 322.60274 0.10274 36 113
i 11 322.60274 0.10274 38 87
i 6 322.60274 0.308219 67 105
i 7 322.60274 0.10274 71 63
i 1 322.705479 0.10274 43 78
i 11 322.705479 0.10274 42 57
i 11 322.808219 0.10274 46 72
i 2 322.808219 0.10274 43 96
i 7 322.808219 0.10274 67 63
i 9 322.808219 0.10274 62 73
i 1 322.910959 0.10274 43 78
i 11 322.910959 0.10274 42 57
i 11 323.013699 0.10274 36 113
i 6 323.013699 0.308219 71 105
i 7 323.013699 0.10274 62 63
i 1 323.116438 0.10274 43 78
i 11 323.116438 0.10274 42 57
i 11 323.219178 0.10274 46 72
i 13 323.219178 0.10274 55 49
i 13 323.219178 0.10274 59 49
i 13 323.219178 0.10274 62 49
i 2 323.219178 0.10274 43 96
i 7 323.219178 0.10274 67 63
i 9 323.219178 0.10274 59 73
i 1 323.321918 0.10274 43 78
i 11 323.321918 0.10274 42 57
i 11 323.424658 0.10274 36 113
i 11 323.424658 0.10274 38 87
i 6 323.424658 0.308219 67 105
i 7 323.424658 0.10274 71 63
i 1 323.527397 0.10274 43 78
i 11 323.527397 0.10274 42 57
i 11 323.630137 0.10274 46 72
i 2 323.630137 0.10274 43 96
i 7 323.630137 0.10274 67 63
i 1 323.732877 0.10274 43 78
i 11 323.732877 0.10274 42 57
i 9 323.732877 0.10274 55 73
i 11 323.835616 0.10274 36 113
i 6 323.835616 0.308219 74 105
i 7 323.835616 0.10274 62 63
i 1 323.938356 0.10274 43 78
i 11 323.938356 0.10274 42 57
i 11 324.041096 0.10274 46 72
i 2 324.041096 0.10274 43 96
i 7 324.041096 0.10274 67 63
i 9 324.041096 0.10274 57 73
i 1 324.143836 0.10274 43 78
i 11 324.143836 0.10274 42 57
i 13 324.143836 0.10274 55 49
i 13 324.143836 0.10274 59 49
i 13 324.143836 0.10274 62 49
i 11 324.246575 0.10274 36 113
i 11 324.246575 0.10274 38 87
i 6 324.246575 0.308219 71 105
i 7 324.246575 0.10274 71 63
i 1 324.349315 0.10274 43 78
i 11 324.349315 0.10274 42 57
i 11 324.452055 0.10274 46 72
i 2 324.452055 0.10274 43 96
i 7 324.452055 0.10274 67 63
i 1 324.554795 0.10274 43 78
i 11 324.554795 0.10274 42 57
i 9 324.554795 0.10274 59 73
i 11 324.657534 0.10274 36 113
i 6 324.657534 0.308219 69 105
i 7 324.657534 0.10274 62 63
i 1 324.760274 0.10274 43 78
i 11 324.760274 0.10274 42 57
i 11 324.863014 0.10274 46 72
i 13 324.863014 0.10274 55 49
i 13 324.863014 0.10274 59 49
i 13 324.863014 0.10274 62 49
i 2 324.863014 0.10274 43 96
i 7 324.863014 0.10274 67 63
i 1 324.965753 0.10274 43 78
i 11 324.965753 0.10274 42 57
i 11 325.068493 0.10274 36 113
i 11 325.068493 0.10274 38 87
i 6 325.068493 0.308219 67 105
i 7 325.068493 0.10274 71 63
i 1 325.171233 0.10274 43 78
i 11 325.171233 0.10274 42 57
i 9 325.171233 0.10274 62 73
i 11 325.273973 0.10274 46 72
i 2 325.273973 0.10274 43 96
i 7 325.273973 0.10274 67 63
i 1 325.376712 0.10274 43 78
i 11 325.376712 0.10274 42 57
i 11 325.479452 0.10274 36 113
i 6 325.479452 0.308219 66 105
i 7 325.479452 0.10274 62 63
i 1 325.582192 0.10274 38 78
i 11 325.582192 0.10274 42 57
i 9 325.582192 0.10274 50 73
i 11 325.684932 0.10274 46 72
i 2 325.684932 0.10274 38 96
i 7 325.684932 0.10274 69 63
i 1 325.787671 0.10274 38 78
i 11 325.787671 0.10274 42 57
i 13 325.787671 0.10274 50 49
i 13 325.787671 0.10274 54 49
i 13 325.787671 0.10274 57 49
i 9 325.787671 0.10274 57 73
i 11 325.890411 0.10274 36 113
i 11 325.890411 0.10274 38 87
i 6 325.890411 0.308219 69 105
i 7 325.890411 0.10274 66 63
i 1 325.993151 0.10274 38 78
i 11 325.993151 0.10274 42 57
i 11 326.09589 0.10274 46 72
i 2 326.09589 0.10274 38 96
i 7 326.09589 0.10274 69 63
i 9 326.09589 0.10274 62 73
i 1 326.19863 0.10274 38 78
i 11 326.19863 0.10274 42 57
i 11 326.30137 0.10274 36 113
i 6 326.30137 0.308219 74 105
i 7 326.30137 0.10274 62 63
i 1 326.40411 0.10274 38 78
i 11 326.40411 0.10274 42 57
i 11 326.506849 0.10274 46 72
i 13 326.506849 0.10274 50 49
i 13 326.506849 0.10274 54 49
i 13 326.506849 0.10274 57 49
i 2 326.506849 0.10274 38 96
i 7 326.506849 0.10274 69 63
i 9 326.506849 0.10274 54 73
i 1 326.609589 0.10274 38 78
i 11 326.609589 0.10274 42 57
i 11 326.712329 0.10274 36 113
i 11 326.712329 0.10274 38 87
i 6 326.712329 0.308219 69 105
i 7 326.712329 0.10274 66 63
i 1 326.815068 0.10274 38 78
i 11 326.815068 0.10274 42 57
i 11 326.917808 0.10274 46 72
i 2 326.917808 0.10274 38 96
i 7 326.917808 0.10274 69 63
i 1 327.020548 0.10274 38 78
i 11 327.020548 0.10274 42 57
i 9 327.020548 0.10274 57 73
i 11 327.123288 0.10274 36 113
i 6 327.123288 0.308219 66 105
i 7 327.123288 0.10274 62 63
i 1 327.226027 0.10274 38 78
i 11 327.226027 0.10274 42 57
i 11 327.328767 0.10274 46 72
i 2 327.328767 0.10274 38 96
i 7 327.328767 0.10274 69 63
i 9 327.328767 0.10274 62 73
i 1 327.431507 0.10274 38 78
i 11 327.431507 0.10274 42 57
i 13 327.431507 0.10274 50 49
i 13 327.431507 0.10274 54 49
i 13 327.431507 0.10274 57 49
i 11 327.534247 0.10274 36 113
i 11 327.534247 0.10274 38 87
i 6 327.534247 0.308219 64 105
i 7 327.534247 0.10274 66 63
i 1 327.636986 0.10274 38 78
i 11 327.636986 0.10274 42 57
i 11 327.739726 0.10274 46 72
i 2 327.739726 0.10274 38 96
i 7 327.739726 0.10274 69 63
i 1 327.842466 0.10274 38 78
i 11 327.842466 0.10274 42 57
i 9 327.842466 0.10274 66 73
i 11 327.945205 0.10274 36 113
i 6 327.945205 0.308219 62 105
i 7 327.945205 0.10274 62 63
i 1 328.047945 0.10274 38 78
i 11 328.047945 0.10274 42 57
i 11 328.150685 0.10274 46 72
i 13 328.150685 0.10274 50 49
i 13 328.150685 0.10274 54 49
i 13 328.150685 0.10274 57 49
i 2 328.150685 0.10274 38 96
i 7 328.150685 0.10274 69 63
i 1 328.253425 0.10274 38 78
i 11 328.253425 0.10274 42 57
i 11 328.356164 0.10274 36 113
i 11 328.356164 0.10274 38 87
i 6 328.356164 0.308219 59 105
i 7 328.356164 0.10274 66 63
i 1 328.458904 0.10274 38 78
i 11 328.458904 0.10274 42 57
i 9 328.458904 0.10274 62 73
i 11 328.561644 0.10274 46 72
i 2 328.561644 0.10274 38 96
i 7 328.561644 0.10274 69 63
i 1 328.664384 0.10274 38 78
i 11 328.664384 0.10274 42 57
i 11 328.767123 0.10274 36 113
i 6 328.767123 0.308219 64 105
i 7 328.767123 0.10274 64 63
i 1 328.869863 0.10274 40 78
i 11 328.869863 0.10274 42 57
i 9 328.869863 0.10274 52 73
i 11 328.972603 0.10274 46 72
i 2 328.972603 0.10274 40 96
i 7 328.972603 0.10274 71 63
i 1 329.075342 0.10274 40 78
i 11 329.075342 0.10274 42 57
i 13 329.075342 0.10274 52 49
i 13 329.075342 0.10274 55 49
i 13 329.075342 0.10274 59 49
i 9 329.075342 0.10274 52 73
i 11 329.178082 0.10274 36 113
i 11 329.178082 0.10274 38 87
i 6 329.178082 0.308219 71 105
i 7 329.178082 0.10274 67 63
i 1 329.280822 0.10274 40 78
i 11 329.280822 0.10274 42 57
i 11 329.383562 0.10274 46 72
i 2 329.383562 0.10274 40 96
i 7 329.383562 0.10274 71 63
i 9 329.383562 0.10274 59 73
i 1 329.486301 0.10274 40 78
i 11 329.486301 0.10274 42 57
i 11 329.589041 0.10274 36 113
i 6 329.589041 0.308219 76 105
i 7 329.589041 0.10274 64 63
i 1 329.691781 0.10274 40 78
i 11 329.691781 0.10274 42 57
i 11 329.794521 0.10274 46 72
i 13 329.794521 0.10274 52 49
i 13 329.794521 0.10274 55 49
i 13 329.794521 0.10274 59 49
i 2 329.794521 0.10274 40 96
i 7 329.794521 0.10274 71 63
i 9 329.794521 0.10274 64 73
i 1 329.89726 0.10274 40 78
i 11 329.89726 0.10274 42 57
i 11 330 0.10274 36 113
i 11 330 0.10274 38 87
i 6 330 0.308219 71 105
i 7 330 0.10274 67 63
i 1 330.10274 0.10274 40 78
i 11 330.10274 0.10274 42 57
i 11 330.205479 0.10274 46 72
i 2 330.205479 0.10274 40 96
i 7 330.205479 0.10274 71 63
i 1 330.308219 0.10274 40 78
i 11 330.308219 0.10274 42 57
i 9 330.308219 0.10274 55 73
i 11 330.410959 0.10274 36 113
i 6 330.410959 0.308219 67 105
i 7 330.410959 0.10274 64 63
i 1 330.513699 0.10274 40 78
i 11 330.513699 0.10274 42 57
i 11 330.616438 0.10274 46 72
i 2 330.616438 0.10274 40 96
i 7 330.616438 0.10274 71 63
i 9 330.616438 0.10274 52 73
i 1 330.719178 0.10274 40 78
i 11 330.719178 0.10274 42 57
i 13 330.719178 0.10274 52 49
i 13 330.719178 0.10274 55 49
i 13 330.719178 0.10274 59 49
i 11 330.821918 0.10274 36 113
i 11 330.821918 0.10274 38 87
i 6 330.821918 0.308219 71 105
i 7 330.821918 0.10274 67 63
i 1 330.924658 0.10274 40 78
i 11 330.924658 0.10274 42 57
i 11 331.027397 0.10274 46 72
i 2 331.027397 0.10274 40 96
i 7 331.027397 0.10274 71 63
i 1 331.130137 0.10274 40 78
i 11 331.130137 0.10274 42 57
i 9 331.130137 0.10274 62 73
i 11 331.232877 0.10274 36 113
i 6 331.232877 0.308219 66 105
i 7 331.232877 0.10274 64 63
i 1 331.335616 0.10274 40 78
i 11 331.335616 0.10274 42 57
i 11 331.438356 0.10274 46 72
i 13 331.438356 0.10274 52 49
i 13 331.438356 0.10274 55 49
i 13 331.438356 0.10274 59 49
i 2 331.438356 0.10274 40 96
i 7 331.438356 0.10274 71 63
i 1 331.541096 0.10274 40 78
i 11 331.541096 0.10274 42 57
i 11 331.643836 0.10274 36 113
i 11 331.643836 0.10274 38 87
i 6 331.643836 0.308219 67 105
i 7 331.643836 0.10274 67 63
i 1 331.746575 0.10274 40 78
i 11 331.746575 0.10274 42 57
i 9 331.746575 0.10274 59 73
i 11 331.849315 0.10274 46 72
i 2 331.849315 0.10274 40 96
i 7 331.849315 0.10274 71 63
i 1 331.952055 0.10274 40 78
i 11 331.952055 0.10274 42 57
i 11 332.054795 0.10274 36 113
i 6 332.054795 0.308219 64 105
i 7 332.054795 0.10274 64 63
i 1 332.157534 0.10274 36 78
i 11 332.157534 0.10274 42 57
i 9 332.157534 0.10274 52 73
i 11 332.260274 0.10274 46 72
i 2 332.260274 0.10274 36 96
i 7 332.260274 0.10274 67 63
i 1 332.363014 0.10274 36 78
i 11 332.363014 0.10274 42 57
i 13 332.363014 0.10274 48 49
i 13 332.363014 0.10274 52 49
i 13 332.363014 0.10274 55 49
i 9 332.363014 0.10274 55 73
i 11 332.465753 0.10274 36 113
i 11 332.465753 0.10274 38 87
i 6 332.465753 0.308219 67 105
i 7 332.465753 0.10274 72 63
i 1 332.568493 0.10274 36 78
i 11 332.568493 0.10274 42 57
i 11 332.671233 0.10274 46 72
i 2 332.671233 0.10274 36 96
i 7 332.671233 0.10274 67 63
i 9 332.671233 0.10274 60 73
i 1 332.773973 0.10274 36 78
i 11 332.773973 0.10274 42 57
i 11 332.876712 0.10274 36 113
i 6 332.876712 0.308219 72 105
i 7 332.876712 0.10274 64 63
i 1 332.979452 0.10274 36 78
i 11 332.979452 0.10274 42 57
i 11 333.082192 0.10274 46 72
i 13 333.082192 0.10274 48 49
i 13 333.082192 0.10274 52 49
i 13 333.082192 0.10274 55 49
i 2 333.082192 0.10274 36 96
i 7 333.082192 0.10274 67 63
i 9 333.082192 0.10274 64 73
i 1 333.184932 0.10274 36 78
i 11 333.184932 0.10274 42 57
i 11 333.287671 0.10274 36 113
i 11 333.287671 0.10274 38 87
i 6 333.287671 0.308219 67 105
i 7 333.287671 0.10274 72 63
i 1 333.390411 0.10274 36 78
i 11 333.390411 0.10274 42 57
i 11 333.493151 0.10274 46 72
i 2 333.493151 0.10274 36 96
i 7 333.493151 0.10274 67 63
i 1 333.59589 0.10274 36 78
i 11 333.59589 0.10274 42 57
i 9 333.59589 0.10274 55 73
i 11 333.69863 0.10274 36 113
i 6 333.69863 0.308219 64 105
i 7 333.69863 0.10274 64 63
i 1 333.80137 0.10274 36 78
i 11 333.80137 0.10274 42 57
i 11 333.90411 0.10274 46 72
i 2 333.90411 0.10274 36 96
i 7 333.90411 0.10274 67 63
i 9 333.90411 0.10274 60 73
i 1 334.006849 0.10274 36 78
i 11 334.006849 0.10274 42 57
i 13 334.006849 0.10274 48 49
i 13 334.006849 0.10274 52 49
i 13 334.006849 0.10274 55 49
i 11 334.109589 0.10274 36 113
i 11 334.109589 0.10274 38 87
i 6 334.109589 0.308219 67 105
i 7 334.109589 0.10274 72 63
i 1 334.212329 0.10274 36 78
i 11 334.212329 0.10274 42 57
i 11 334.315068 0.10274 46 72
i 2 334.315068 0.10274 36 96
i 7 334.315068 0.10274 67 63
i 1 334.417808 0.10274 36 78
i 11 334.417808 0.10274 42 57
i 9 334.417808 0.10274 52 73
i 11 334.520548 0.10274 36 113
i 6 334.520548 0.308219 62 105
i 7 334.520548 0.10274 64 63
i 1 334.623288 0.10274 36 78
i 11 334.623288 0.10274 42 57
i 11 334.726027 0.10274 46 72
i 13 334.726027 0.10274 48 49
i 13 334.726027 0.10274 52 49
i 13 334.726027 0.10274 55 49
i 2 334.726027 0.10274 36 96
i 7 334.726027 0.10274 67 63
i 1 334.828767 0.10274 36 78
i 11 334.828767 0.10274 42 57
i 11 334.931507 0.10274 36 113
i 11 334.931507 0.10274 38 87
i 6 334.931507 0.308219 64 105
i 7 334.931507 0.10274 72 63
i 1 335.034247 0.10274 36 78
i 11 335.034247 0.10274 42 57
i 9 335.034247 0.10274 55 73
i 11 335.136986 0.10274 46 72
i 2 335.136986 0.10274 36 96
i 7 335.136986 0.10274 67 63
i 1 335.239726 0.10274 36 78
i 11 335.239726 0.10274 42 57
i 11 335.342466 0.10274 36 113
i 6 335.342466 0.308219 62 105
i 7 335.342466 0.10274 62 63
i 1 335.445205 0.10274 43 78
i 11 335.445205 0.10274 42 57
i 9 335.445205 0.10274 55 73
i 11 335.547945 0.10274 46 72
i 2 335.547945 0.10274 43 96
i 7 335.547945 0.10274 67 63
i 1 335.650685 0.10274 43 78
i 11 335.650685 0.10274 42 57
i 13 335.650685 0.10274 55 49
i 13 335.650685 0.10274 59 49
i 13 335.650685 0.10274 62 49
i 9 335.650685 0.10274 55 73
i 11 335.753425 0.10274 36 113
i 11 335.753425 0.10274 38 87
i 6 335.753425 0.308219 67 105
i 7 335.753425 0.10274 71 63
i 1 335.856164 0.10274 43 78
i 11 335.856164 0.10274 42 57
i 11 335.958904 0.10274 46 72
i 2 335.958904 0.10274 43 96
i 7 335.958904 0.10274 67 63
i 9 335.958904 0.10274 62 73
i 1 336.061644 0.10274 43 78
i 11 336.061644 0.10274 42 57
i 11 336.164384 0.10274 36 113
i 6 336.164384 0.308219 71 105
i 7 336.164384 0.10274 62 63
i 1 336.267123 0.10274 43 78
i 11 336.267123 0.10274 42 57
i 11 336.369863 0.10274 46 72
i 13 336.369863 0.10274 55 49
i 13 336.369863 0.10274 59 49
i 13 336.369863 0.10274 62 49
i 2 336.369863 0.10274 43 96
i 7 336.369863 0.10274 67 63
i 9 336.369863 0.10274 59 73
i 1 336.472603 0.10274 43 78
i 11 336.472603 0.10274 42 57
i 11 336.575342 0.10274 36 113
i 11 336.575342 0.10274 38 87
i 6 336.575342 0.308219 67 105
i 7 336.575342 0.10274 71 63
i 1 336.678082 0.10274 43 78
i 11 336.678082 0.10274 42 57
i 11 336.780822 0.10274 46 72
i 2 336.780822 0.10274 43 96
i 7 336.780822 0.10274 67 63
i 1 336.883562 0.10274 43 78
i 11 336.883562 0.10274 42 57
i 9 336.883562 0.10274 55 73
i 11 336.986301 0.10274 36 113
i 6 336.986301 0.308219 74 105
i 7 336.986301 0.10274 62 63
i 1 337.089041 0.10274 43 78
i 11 337.089041 0.10274 42 57
i 11 337.191781 0.10274 46 72
i 2 337.191781 0.10274 43 96
i 7 337.191781 0.10274 67 63
i 9 337.191781 0.10274 57 73
i 1 337.294521 0.10274 43 78
i 11 337.294521 0.10274 42 57
i 13 337.294521 0.10274 55 49
i 13 337.294521 0.10274 59 49
i 13 337.294521 0.10274 62 49
i 11 337.39726 0.10274 36 113
i 11 337.39726 0.10274 38 87
i 6 337.39726 0.308219 71 105
i 7 337.39726 0.10274 71 63
i 1 337.5 0.10274 43 78
i 11 337.5 0.10274 42 57
i 11 337.60274 0.10274 46 72
i 2 337.60274 0.10274 43 96
i 7 337.60274 0.10274 67 63
i 1 337.705479 0.10274 43 78
i 11 337.705479 0.10274 42 57
i 9 337.705479 0.10274 59 73
i 11 337.808219 0.10274 36 113
i 6 337.808219 0.308219 69 105
i 7 337.808219 0.10274 62 63
i 1 337.910959 0.10274 43 78
i 11 337.910959 0.10274 42 57
i 11 338.013699 0.10274 46 72
i 13 338.013699 0.10274 55 49
i 13 338.013699 0.10274 59 49
i 13 338.013699 0.10274 62 49
i 2 338.013699 0.10274 43 96
i 7 338.013699 0.10274 67 63
i 1 338.116438 0.10274 43 78
i 11 338.116438 0.10274 42 57
i 11 338.219178 0.10274 36 113
i 11 338.219178 0.10274 38 87
i 6 338.219178 0.308219 67 105
i 7 338.219178 0.10274 71 63
i 1 338.321918 0.10274 43 78
i 11 338.321918 0.10274 42 57
i 9 338.321918 0.10274 62 73
i 11 338.424658 0.10274 46 72
i 2 338.424658 0.10274 43 96
i 7 338.424658 0.10274 67 63
i 1 338.527397 0.10274 43 78
i 11 338.527397 0.10274 42 57
i 11 338.630137 0.10274 36 116
i 6 338.630137 0.308219 66 105
i 7 338.630137 0.10274 62 63
i 1 338.732877 0.10274 38 78
i 11 338.732877 0.10274 42 57
i 9 338.732877 0.10274 50 73
i 11 338.835616 0.10274 46 72
i 2 338.835616 0.10274 38 96
i 7 338.835616 0.10274 69 63
i 1 338.938356 0.10274 38 78
i 11 338.938356 0.10274 42 57
i 13 338.938356 0.10274 50 49
i 13 338.938356 0.10274 54 49
i 13 338.938356 0.10274 57 49
i 9 338.938356 0.10274 57 73
i 11 339.041096 0.10274 36 116
i 11 339.041096 0.10274 38 90
i 6 339.041096 0.308219 69 105
i 7 339.041096 0.10274 66 63
i 1 339.143836 0.10274 38 78
i 11 339.143836 0.10274 42 57
i 11 339.246575 0.10274 46 72
i 2 339.246575 0.10274 38 96
i 7 339.246575 0.10274 69 63
i 9 339.246575 0.10274 62 73
i 1 339.349315 0.10274 38 78
i 11 339.349315 0.10274 42 57
i 11 339.452055 0.10274 36 116
i 6 339.452055 0.308219 74 105
i 7 339.452055 0.10274 62 63
i 1 339.554795 0.10274 38 78
i 11 339.554795 0.10274 42 57
i 11 339.657534 0.10274 46 72
i 13 339.657534 0.10274 50 49
i 13 339.657534 0.10274 54 49
i 13 339.657534 0.10274 57 49
i 2 339.657534 0.10274 38 96
i 7 339.657534 0.10274 69 63
i 9 339.657534 0.10274 54 73
i 1 339.760274 0.10274 38 78
i 11 339.760274 0.10274 42 57
i 11 339.863014 0.10274 36 116
i 11 339.863014 0.10274 38 90
i 6 339.863014 0.308219 69 105
i 7 339.863014 0.10274 66 63
i 1 339.965753 0.10274 38 78
i 11 339.965753 0.10274 42 57
i 11 340.068493 0.10274 46 72
i 2 340.068493 0.10274 38 96
i 7 340.068493 0.10274 69 63
i 1 340.171233 0.10274 38 78
i 11 340.171233 0.10274 42 57
i 9 340.171233 0.10274 57 73
i 11 340.273973 0.10274 36 116
i 6 340.273973 0.308219 66 105
i 7 340.273973 0.10274 62 63
i 1 340.376712 0.10274 38 78
i 11 340.376712 0.10274 42 57
i 11 340.479452 0.10274 46 72
i 2 340.479452 0.10274 38 96
i 7 340.479452 0.10274 69 63
i 9 340.479452 0.10274 62 73
i 1 340.582192 0.10274 38 78
i 11 340.582192 0.10274 42 57
i 13 340.582192 0.10274 50 49
i 13 340.582192 0.10274 54 49
i 13 340.582192 0.10274 57 49
i 11 340.684932 0.10274 36 116
i 11 340.684932 0.10274 38 90
i 6 340.684932 0.308219 64 105
i 7 340.684932 0.10274 66 63
i 1 340.787671 0.10274 38 78
i 11 340.787671 0.10274 42 57
i 11 340.890411 0.10274 46 72
i 2 340.890411 0.10274 38 96
i 7 340.890411 0.10274 69 63
i 1 340.993151 0.10274 38 78
i 11 340.993151 0.10274 42 57
i 9 340.993151 0.10274 66 73
i 11 341.09589 0.10274 36 116
i 6 341.09589 0.308219 62 105
i 7 341.09589 0.10274 62 63
i 1 341.19863 0.10274 38 78
i 11 341.19863 0.10274 42 57
i 11 341.30137 0.10274 36 116
i 11 341.30137 0.10274 38 90
i 11 341.30137 0.10274 46 72
i 13 341.30137 0.10274 50 49
i 13 341.30137 0.10274 54 49
i 13 341.30137 0.10274 57 49
i 2 341.30137 0.10274 38 96
i 7 341.30137 0.10274 69 63
i 1 341.40411 0.10274 38 78
i 11 341.40411 0.10274 42 57
i 8 341.40411 0.10274 59 54
i 11 341.506849 0.10274 36 116
i 11 341.506849 0.10274 38 90
i 6 341.506849 0.308219 59 105
i 7 341.506849 0.10274 66 63
i 1 341.609589 0.10274 38 78
i 11 341.609589 0.10274 42 57
i 9 341.609589 0.10274 62 73
i 11 341.712329 0.10274 36 116
i 11 341.712329 0.10274 38 90
i 11 341.712329 0.10274 46 72
i 2 341.712329 0.10274 38 96
i 7 341.712329 0.10274 69 63
i 8 341.712329 0.10274 64 54
i 1 341.815068 0.10274 38 78
i 11 341.815068 0.10274 38 90
i 11 341.815068 0.10274 42 57
i 11 341.917808 0.10274 36 113
i 6 341.917808 0.308219 64 105
i 7 341.917808 0.10274 64 63
i 8 341.917808 0.10274 64 62
i 1 342.020548 0.10274 40 78
i 11 342.020548 0.10274 42 57
i 9 342.020548 0.10274 52 73
i 11 342.123288 0.10274 46 72
i 2 342.123288 0.10274 40 96
i 3 342.123288 0.10274 52 58
i 7 342.123288 0.10274 71 63
i 1 342.226027 0.10274 40 78
i 11 342.226027 0.10274 42 57
i 13 342.226027 0.10274 52 49
i 13 342.226027 0.10274 55 49
i 13 342.226027 0.10274 59 49
i 5 342.226027 0.10274 64 49
i 9 342.226027 0.10274 52 73
i 11 342.328767 0.10274 36 113
i 11 342.328767 0.10274 38 87
i 6 342.328767 0.308219 71 105
i 7 342.328767 0.10274 67 63
i 1 342.431507 0.10274 40 78
i 11 342.431507 0.10274 42 57
i 11 342.534247 0.10274 46 72
i 2 342.534247 0.10274 40 96
i 7 342.534247 0.10274 71 63
i 9 342.534247 0.10274 59 73
i 1 342.636986 0.10274 40 78
i 11 342.636986 0.10274 42 57
i 3 342.636986 0.10274 59 58
i 11 342.739726 0.10274 36 113
i 6 342.739726 0.308219 76 105
i 7 342.739726 0.10274 64 63
i 1 342.842466 0.10274 40 78
i 11 342.842466 0.10274 42 57
i 5 342.842466 0.10274 64 49
i 11 342.945205 0.10274 46 72
i 13 342.945205 0.10274 52 49
i 13 342.945205 0.10274 55 49
i 13 342.945205 0.10274 59 49
i 2 342.945205 0.10274 40 96
i 7 342.945205 0.10274 71 63
i 9 342.945205 0.10274 64 73
i 1 343.047945 0.10274 40 78
i 11 343.047945 0.10274 42 57
i 3 343.047945 0.10274 62 58
i 11 343.150685 0.10274 36 113
i 11 343.150685 0.10274 38 87
i 6 343.150685 0.308219 71 105
i 7 343.150685 0.10274 67 63
i 1 343.253425 0.10274 40 78
i 11 343.253425 0.10274 42 57
i 11 343.356164 0.10274 46 72
i 2 343.356164 0.10274 40 96
i 7 343.356164 0.10274 71 63
i 1 343.458904 0.10274 40 78
i 11 343.458904 0.10274 42 57
i 5 343.458904 0.10274 64 49
i 9 343.458904 0.10274 55 73
i 11 343.561644 0.10274 36 113
i 6 343.561644 0.308219 67 105
i 7 343.561644 0.10274 64 63
i 1 343.664384 0.10274 40 78
i 11 343.664384 0.10274 42 57
i 11 343.767123 0.10274 46 72
i 2 343.767123 0.10274 40 96
i 3 343.767123 0.10274 52 58
i 7 343.767123 0.10274 71 63
i 9 343.767123 0.10274 52 73
i 1 343.869863 0.10274 40 78
i 11 343.869863 0.10274 42 57
i 13 343.869863 0.10274 52 49
i 13 343.869863 0.10274 55 49
i 13 343.869863 0.10274 59 49
i 11 343.972603 0.10274 36 113
i 11 343.972603 0.10274 38 87
i 6 343.972603 0.308219 71 105
i 7 343.972603 0.10274 67 63
i 1 344.075342 0.10274 40 78
i 11 344.075342 0.10274 42 57
i 11 344.178082 0.10274 46 72
i 2 344.178082 0.10274 40 96
i 3 344.178082 0.10274 55 58
i 5 344.178082 0.10274 64 49
i 7 344.178082 0.10274 71 63
i 1 344.280822 0.10274 40 78
i 11 344.280822 0.10274 42 57
i 9 344.280822 0.10274 62 73
i 11 344.383562 0.10274 36 113
i 6 344.383562 0.308219 66 105
i 7 344.383562 0.10274 64 63
i 1 344.486301 0.10274 40 78
i 11 344.486301 0.10274 42 57
i 11 344.589041 0.10274 46 72
i 13 344.589041 0.10274 52 49
i 13 344.589041 0.10274 55 49
i 13 344.589041 0.10274 59 49
i 2 344.589041 0.10274 40 96
i 7 344.589041 0.10274 71 63
i 1 344.691781 0.10274 40 78
i 11 344.691781 0.10274 42 57
i 3 344.691781 0.10274 59 58
i 5 344.691781 0.10274 64 49
i 11 344.794521 0.10274 36 113
i 11 344.794521 0.10274 38 87
i 6 344.794521 0.308219 67 105
i 7 344.794521 0.10274 67 63
i 1 344.89726 0.10274 40 78
i 11 344.89726 0.10274 42 57
i 9 344.89726 0.10274 59 73
i 11 345 0.10274 46 72
i 2 345 0.10274 40 96
i 3 345 0.10274 64 58
i 7 345 0.10274 71 63
i 1 345.10274 0.10274 40 78
i 11 345.10274 0.10274 42 57
i 11 345.205479 0.10274 36 113
i 6 345.205479 0.308219 64 105
i 7 345.205479 0.10274 64 63
i 1 345.308219 0.10274 36 78
i 11 345.308219 0.10274 42 57
i 9 345.308219 0.10274 52 73
i 11 345.410959 0.10274 46 72
i 2 345.410959 0.10274 36 96
i 3 345.410959 0.10274 48 58
i 7 345.410959 0.10274 67 63
i 1 345.513699 0.10274 36 78
i 11 345.513699 0.10274 42 57
i 13 345.513699 0.10274 48 49
i 13 345.513699 0.10274 52 49
i 13 345.513699 0.10274 55 49
i 5 345.513699 0.10274 71 50
i 9 345.513699 0.10274 55 73
i 11 345.616438 0.10274 36 113
i 11 345.616438 0.10274 38 87
i 6 345.616438 0.308219 67 105
i 7 345.616438 0.10274 72 63
i 1 345.719178 0.10274 36 78
i 11 345.719178 0.10274 42 57
i 11 345.821918 0.10274 46 72
i 2 345.821918 0.10274 36 96
i 7 345.821918 0.10274 67 63
i 9 345.821918 0.10274 60 73
i 1 345.924658 0.10274 36 78
i 11 345.924658 0.10274 42 57
i 3 345.924658 0.10274 55 58
i 11 346.027397 0.10274 36 113
i 6 346.027397 0.308219 72 105
i 7 346.027397 0.10274 64 63
i 1 346.130137 0.10274 36 78
i 11 346.130137 0.10274 42 57
i 5 346.130137 0.10274 71 50
i 11 346.232877 0.10274 46 72
i 13 346.232877 0.10274 48 49
i 13 346.232877 0.10274 52 49
i 13 346.232877 0.10274 55 49
i 2 346.232877 0.10274 36 96
i 7 346.232877 0.10274 67 63
i 9 346.232877 0.10274 64 73
i 1 346.335616 0.10274 36 78
i 11 346.335616 0.10274 42 57
i 3 346.335616 0.10274 59 58
i 11 346.438356 0.10274 36 113
i 11 346.438356 0.10274 38 87
i 6 346.438356 0.308219 67 105
i 7 346.438356 0.10274 72 63
i 1 346.541096 0.10274 36 78
i 11 346.541096 0.10274 42 57
i 11 346.643836 0.10274 46 72
i 2 346.643836 0.10274 36 96
i 7 346.643836 0.10274 67 63
i 1 346.746575 0.10274 36 78
i 11 346.746575 0.10274 42 57
i 5 346.746575 0.10274 71 50
i 9 346.746575 0.10274 55 73
i 11 346.849315 0.10274 36 113
i 6 346.849315 0.308219 64 105
i 7 346.849315 0.10274 64 63
i 1 346.952055 0.10274 36 78
i 11 346.952055 0.10274 42 57
i 11 347.054795 0.10274 46 72
i 2 347.054795 0.10274 36 96
i 3 347.054795 0.10274 60 58
i 7 347.054795 0.10274 67 63
i 9 347.054795 0.10274 60 73
i 1 347.157534 0.10274 36 78
i 11 347.157534 0.10274 42 57
i 13 347.157534 0.10274 48 49
i 13 347.157534 0.10274 52 49
i 13 347.157534 0.10274 55 49
i 11 347.260274 0.10274 36 113
i 11 347.260274 0.10274 38 87
i 6 347.260274 0.308219 67 105
i 7 347.260274 0.10274 72 63
i 1 347.363014 0.10274 36 78
i 11 347.363014 0.10274 42 57
i 11 347.465753 0.10274 46 72
i 2 347.465753 0.10274 36 96
i 3 347.465753 0.10274 55 58
i 5 347.465753 0.10274 71 50
i 7 347.465753 0.10274 67 63
i 1 347.568493 0.10274 36 78
i 11 347.568493 0.10274 42 57
i 9 347.568493 0.10274 52 73
i 11 347.671233 0.10274 36 113
i 6 347.671233 0.308219 62 105
i 7 347.671233 0.10274 64 63
i 1 347.773973 0.10274 36 78
i 11 347.773973 0.10274 42 57
i 11 347.876712 0.10274 46 72
i 13 347.876712 0.10274 48 49
i 13 347.876712 0.10274 52 49
i 13 347.876712 0.10274 55 49
i 2 347.876712 0.10274 36 96
i 7 347.876712 0.10274 67 63
i 1 347.979452 0.10274 36 78
i 11 347.979452 0.10274 42 57
i 3 347.979452 0.10274 52 58
i 5 347.979452 0.10274 71 50
i 11 348.082192 0.10274 36 113
i 11 348.082192 0.10274 38 87
i 6 348.082192 0.308219 64 105
i 7 348.082192 0.10274 72 63
i 1 348.184932 0.10274 36 78
i 11 348.184932 0.10274 42 57
i 9 348.184932 0.10274 55 73
i 11 348.287671 0.10274 46 72
i 2 348.287671 0.10274 36 96
i 3 348.287671 0.10274 55 58
i 7 348.287671 0.10274 67 63
i 1 348.390411 0.10274 36 78
i 11 348.390411 0.10274 42 57
i 11 348.493151 0.10274 36 113
i 6 348.493151 0.308219 62 105
i 7 348.493151 0.10274 62 63
i 1 348.59589 0.10274 43 78
i 11 348.59589 0.10274 42 57
i 9 348.59589 0.10274 55 73
i 11 348.69863 0.10274 46 72
i 2 348.69863 0.10274 43 96
i 3 348.69863 0.10274 55 58
i 7 348.69863 0.10274 67 63
i 1 348.80137 0.10274 43 78
i 11 348.80137 0.10274 42 57
i 13 348.80137 0.10274 55 49
i 13 348.80137 0.10274 59 49
i 13 348.80137 0.10274 62 49
i 5 348.80137 0.10274 64 49
i 9 348.80137 0.10274 55 73
i 11 348.90411 0.10274 36 113
i 11 348.90411 0.10274 38 87
i 6 348.90411 0.308219 67 105
i 7 348.90411 0.10274 71 63
i 1 349.006849 0.10274 43 78
i 11 349.006849 0.10274 42 57
i 11 349.109589 0.10274 46 72
i 2 349.109589 0.10274 43 96
i 7 349.109589 0.10274 67 63
i 9 349.109589 0.10274 62 73
i 1 349.212329 0.10274 43 78
i 11 349.212329 0.10274 42 57
i 3 349.212329 0.10274 62 58
i 11 349.315068 0.10274 36 113
i 6 349.315068 0.308219 71 105
i 7 349.315068 0.10274 62 63
i 1 349.417808 0.10274 43 78
i 11 349.417808 0.10274 42 57
i 5 349.417808 0.10274 64 49
i 11 349.520548 0.10274 46 72
i 13 349.520548 0.10274 55 49
i 13 349.520548 0.10274 59 49
i 13 349.520548 0.10274 62 49
i 2 349.520548 0.10274 43 96
i 7 349.520548 0.10274 67 63
i 9 349.520548 0.10274 59 73
i 1 349.623288 0.10274 43 78
i 11 349.623288 0.10274 42 57
i 3 349.623288 0.10274 59 58
i 11 349.726027 0.10274 36 113
i 11 349.726027 0.10274 38 87
i 6 349.726027 0.308219 67 105
i 7 349.726027 0.10274 71 63
i 1 349.828767 0.10274 43 78
i 11 349.828767 0.10274 42 57
i 11 349.931507 0.10274 46 72
i 2 349.931507 0.10274 43 96
i 7 349.931507 0.10274 67 63
i 1 350.034247 0.10274 43 78
i 11 350.034247 0.10274 42 57
i 5 350.034247 0.10274 64 49
i 9 350.034247 0.10274 55 73
i 11 350.136986 0.10274 36 113
i 6 350.136986 0.308219 74 105
i 7 350.136986 0.10274 62 63
i 1 350.239726 0.10274 43 78
i 11 350.239726 0.10274 42 57
i 11 350.342466 0.10274 46 72
i 2 350.342466 0.10274 43 96
i 3 350.342466 0.10274 55 58
i 7 350.342466 0.10274 67 63
i 9 350.342466 0.10274 57 73
i 1 350.445205 0.10274 43 78
i 11 350.445205 0.10274 42 57
i 13 350.445205 0.10274 55 49
i 13 350.445205 0.10274 59 49
i 13 350.445205 0.10274 62 49
i 11 350.547945 0.10274 36 113
i 11 350.547945 0.10274 38 87
i 6 350.547945 0.308219 71 105
i 7 350.547945 0.10274 71 63
i 1 350.650685 0.10274 43 78
i 11 350.650685 0.10274 42 57
i 11 350.753425 0.10274 46 72
i 2 350.753425 0.10274 43 96
i 3 350.753425 0.10274 57 58
i 5 350.753425 0.10274 64 49
i 7 350.753425 0.10274 67 63
i 1 350.856164 0.10274 43 78
i 11 350.856164 0.10274 42 57
i 9 350.856164 0.10274 59 73
i 11 350.958904 0.10274 36 113
i 6 350.958904 0.308219 69 105
i 7 350.958904 0.10274 62 63
i 1 351.061644 0.10274 43 78
i 11 351.061644 0.10274 42 57
i 11 351.164384 0.10274 46 72
i 13 351.164384 0.10274 55 49
i 13 351.164384 0.10274 59 49
i 13 351.164384 0.10274 62 49
i 2 351.164384 0.10274 43 96
i 7 351.164384 0.10274 67 63
i 1 351.267123 0.10274 43 78
i 11 351.267123 0.10274 42 57
i 3 351.267123 0.10274 59 58
i 5 351.267123 0.10274 64 49
i 11 351.369863 0.10274 36 113
i 11 351.369863 0.10274 38 87
i 6 351.369863 0.308219 67 105
i 7 351.369863 0.10274 71 63
i 1 351.472603 0.10274 43 78
i 11 351.472603 0.10274 42 57
i 9 351.472603 0.10274 62 73
i 11 351.575342 0.10274 46 72
i 2 351.575342 0.10274 43 96
i 3 351.575342 0.10274 62 58
i 7 351.575342 0.10274 67 63
i 1 351.678082 0.10274 43 78
i 11 351.678082 0.10274 42 57
i 11 351.780822 0.10274 36 113
i 6 351.780822 0.308219 66 105
i 7 351.780822 0.10274 62 63
i 1 351.883562 0.10274 38 78
i 11 351.883562 0.10274 42 57
i 9 351.883562 0.10274 50 73
i 11 351.986301 0.10274 46 72
i 2 351.986301 0.10274 38 96
i 3 351.986301 0.10274 50 58
i 7 351.986301 0.10274 69 63
i 1 352.089041 0.10274 38 78
i 11 352.089041 0.10274 42 57
i 13 352.089041 0.10274 50 49
i 13 352.089041 0.10274 54 49
i 13 352.089041 0.10274 57 49
i 5 352.089041 0.10274 71 50
i 9 352.089041 0.10274 57 73
i 11 352.191781 0.10274 36 113
i 11 352.191781 0.10274 38 87
i 6 352.191781 0.308219 69 105
i 7 352.191781 0.10274 66 63
i 1 352.294521 0.10274 38 78
i 11 352.294521 0.10274 42 57
i 11 352.39726 0.10274 46 72
i 2 352.39726 0.10274 38 96
i 7 352.39726 0.10274 69 63
i 9 352.39726 0.10274 62 73
i 1 352.5 0.10274 38 78
i 11 352.5 0.10274 42 57
i 3 352.5 0.10274 57 58
i 11 352.60274 0.10274 36 113
i 6 352.60274 0.308219 74 105
i 7 352.60274 0.10274 62 63
i 1 352.705479 0.10274 38 78
i 11 352.705479 0.10274 42 57
i 5 352.705479 0.10274 71 50
i 11 352.808219 0.10274 46 72
i 13 352.808219 0.10274 50 49
i 13 352.808219 0.10274 54 49
i 13 352.808219 0.10274 57 49
i 2 352.808219 0.10274 38 96
i 7 352.808219 0.10274 69 63
i 9 352.808219 0.10274 54 73
i 1 352.910959 0.10274 38 78
i 11 352.910959 0.10274 42 57
i 3 352.910959 0.10274 60 58
i 11 353.013699 0.10274 36 113
i 11 353.013699 0.10274 38 87
i 6 353.013699 0.308219 69 105
i 7 353.013699 0.10274 66 63
i 1 353.116438 0.10274 38 78
i 11 353.116438 0.10274 42 57
i 11 353.219178 0.10274 46 72
i 2 353.219178 0.10274 38 96
i 7 353.219178 0.10274 69 63
i 1 353.321918 0.10274 38 78
i 11 353.321918 0.10274 42 57
i 5 353.321918 0.10274 71 50
i 9 353.321918 0.10274 57 73
i 11 353.424658 0.10274 36 113
i 6 353.424658 0.308219 66 105
i 7 353.424658 0.10274 62 63
i 1 353.527397 0.10274 38 78
i 11 353.527397 0.10274 42 57
i 11 353.630137 0.10274 46 72
i 2 353.630137 0.10274 38 96
i 3 353.630137 0.10274 62 58
i 7 353.630137 0.10274 69 63
i 9 353.630137 0.10274 62 73
i 1 353.732877 0.10274 38 78
i 11 353.732877 0.10274 42 57
i 13 353.732877 0.10274 50 49
i 13 353.732877 0.10274 54 49
i 13 353.732877 0.10274 57 49
i 11 353.835616 0.10274 36 113
i 11 353.835616 0.10274 38 87
i 6 353.835616 0.308219 64 105
i 7 353.835616 0.10274 66 63
i 1 353.938356 0.10274 38 78
i 11 353.938356 0.10274 42 57
i 11 354.041096 0.10274 46 72
i 2 354.041096 0.10274 38 96
i 3 354.041096 0.10274 57 58
i 5 354.041096 0.10274 71 50
i 7 354.041096 0.10274 69 63
i 1 354.143836 0.10274 38 78
i 11 354.143836 0.10274 42 57
i 9 354.143836 0.10274 66 73
i 11 354.246575 0.10274 36 113
i 6 354.246575 0.308219 62 105
i 7 354.246575 0.10274 62 63
i 1 354.349315 0.10274 38 78
i 11 354.349315 0.10274 42 57
i 11 354.452055 0.10274 46 72
i 13 354.452055 0.10274 50 49
i 13 354.452055 0.10274 54 49
i 13 354.452055 0.10274 57 49
i 2 354.452055 0.10274 38 96
i 7 354.452055 0.10274 69 63
i 1 354.554795 0.10274 38 78
i 11 354.554795 0.10274 42 57
i 3 354.554795 0.10274 54 58
i 5 354.554795 0.10274 71 50
i 11 354.657534 0.10274 36 113
i 11 354.657534 0.10274 38 87
i 6 354.657534 0.308219 59 105
i 7 354.657534 0.10274 66 63
i 1 354.760274 0.10274 38 78
i 11 354.760274 0.10274 42 57
i 9 354.760274 0.10274 62 73
i 11 354.863014 0.10274 46 72
i 2 354.863014 0.10274 38 96
i 3 354.863014 0.10274 62 58
i 7 354.863014 0.10274 69 63
i 1 354.965753 0.10274 38 78
i 11 354.965753 0.10274 42 57
i 11 355.068493 0.10274 36 113
i 6 355.068493 0.308219 64 105
i 7 355.068493 0.10274 64 63
i 1 355.171233 0.10274 40 78
i 11 355.171233 0.10274 42 57
i 9 355.171233 0.10274 52 73
i 10 355.273973 0.205479 71 63
i 11 355.273973 0.10274 46 72
i 2 355.273973 0.10274 40 96
i 3 355.273973 0.10274 52 58
i 7 355.273973 0.10274 71 63
i 1 355.376712 0.10274 40 78
i 11 355.376712 0.10274 42 57
i 13 355.376712 0.10274 52 49
i 13 355.376712 0.10274 55 49
i 13 355.376712 0.10274 59 49
i 5 355.376712 0.10274 64 49
i 9 355.376712 0.10274 52 73
i 11 355.479452 0.10274 36 113
i 11 355.479452 0.10274 38 87
i 6 355.479452 0.308219 71 105
i 7 355.479452 0.10274 67 63
i 1 355.582192 0.10274 40 78
i 11 355.582192 0.10274 42 57
i 10 355.684932 0.205479 76 63
i 11 355.684932 0.10274 46 72
i 2 355.684932 0.10274 40 96
i 7 355.684932 0.10274 71 63
i 9 355.684932 0.10274 59 73
i 1 355.787671 0.10274 40 78
i 11 355.787671 0.10274 42 57
i 3 355.787671 0.10274 59 58
i 11 355.890411 0.10274 36 113
i 6 355.890411 0.308219 76 105
i 7 355.890411 0.10274 64 63
i 1 355.993151 0.10274 40 78
i 11 355.993151 0.10274 42 57
i 5 355.993151 0.10274 64 49
i 11 356.09589 0.10274 46 72
i 13 356.09589 0.10274 52 49
i 13 356.09589 0.10274 55 49
i 13 356.09589 0.10274 59 49
i 2 356.09589 0.10274 40 96
i 7 356.09589 0.10274 71 63
i 9 356.09589 0.10274 64 73
i 1 356.19863 0.10274 40 78
i 10 356.19863 0.205479 79 63
i 11 356.19863 0.10274 42 57
i 3 356.19863 0.10274 62 58
i 11 356.30137 0.10274 36 113
i 11 356.30137 0.10274 38 87
i 6 356.30137 0.308219 71 105
i 7 356.30137 0.10274 67 63
i 1 356.40411 0.10274 40 78
i 11 356.40411 0.10274 42 57
i 10 356.506849 0.205479 78 63
i 11 356.506849 0.10274 46 72
i 2 356.506849 0.10274 40 96
i 7 356.506849 0.10274 71 63
i 1 356.609589 0.10274 40 78
i 11 356.609589 0.10274 42 57
i 5 356.609589 0.10274 64 49
i 9 356.609589 0.10274 55 73
i 11 356.712329 0.10274 36 113
i 6 356.712329 0.308219 67 105
i 7 356.712329 0.10274 64 63
i 1 356.815068 0.10274 40 78
i 11 356.815068 0.10274 42 57
i 10 356.917808 0.205479 76 63
i 11 356.917808 0.10274 46 72
i 2 356.917808 0.10274 40 96
i 3 356.917808 0.10274 52 58
i 7 356.917808 0.10274 71 63
i 9 356.917808 0.10274 52 73
i 1 357.020548 0.10274 40 78
i 11 357.020548 0.10274 42 57
i 13 357.020548 0.10274 52 49
i 13 357.020548 0.10274 55 49
i 13 357.020548 0.10274 59 49
i 11 357.123288 0.10274 36 113
i 11 357.123288 0.10274 38 87
i 6 357.123288 0.308219 71 105
i 7 357.123288 0.10274 67 63
i 1 357.226027 0.10274 40 78
i 11 357.226027 0.10274 42 57
i 10 357.328767 0.205479 71 63
i 11 357.328767 0.10274 46 72
i 2 357.328767 0.10274 40 96
i 3 357.328767 0.10274 55 58
i 5 357.328767 0.10274 64 49
i 7 357.328767 0.10274 71 63
i 1 357.431507 0.10274 40 78
i 11 357.431507 0.10274 42 57
i 9 357.431507 0.10274 62 73
i 11 357.534247 0.10274 36 113
i 6 357.534247 0.308219 66 105
i 7 357.534247 0.10274 64 63
i 1 357.636986 0.10274 40 78
i 11 357.636986 0.10274 42 57
i 11 357.739726 0.10274 46 72
i 13 357.739726 0.10274 52 49
i 13 357.739726 0.10274 55 49
i 13 357.739726 0.10274 59 49
i 2 357.739726 0.10274 40 96
i 7 357.739726 0.10274 71 63
i 1 357.842466 0.10274 40 78
i 10 357.842466 0.205479 67 63
i 11 357.842466 0.10274 42 57
i 3 357.842466 0.10274 59 58
i 5 357.842466 0.10274 64 49
i 11 357.945205 0.10274 36 113
i 11 357.945205 0.10274 38 87
i 6 357.945205 0.308219 67 105
i 7 357.945205 0.10274 67 63
i 1 358.047945 0.10274 40 78
i 11 358.047945 0.10274 42 57
i 9 358.047945 0.10274 59 73
i 10 358.150685 0.205479 71 63
i 11 358.150685 0.10274 46 72
i 2 358.150685 0.10274 40 96
i 3 358.150685 0.10274 64 58
i 7 358.150685 0.10274 71 63
i 1 358.253425 0.10274 40 78
i 11 358.253425 0.10274 42 57
i 11 358.356164 0.10274 36 113
i 6 358.356164 0.308219 64 105
i 7 358.356164 0.10274 64 63
i 1 358.458904 0.10274 36 78
i 11 358.458904 0.10274 42 57
i 9 358.458904 0.10274 52 73
i 10 358.561644 0.205479 67 63
i 11 358.561644 0.10274 46 72
i 2 358.561644 0.10274 36 96
i 3 358.561644 0.10274 48 58
i 7 358.561644 0.10274 67 63
i 1 358.664384 0.10274 36 78
i 11 358.664384 0.10274 42 57
i 13 358.664384 0.10274 48 49
i 13 358.664384 0.10274 52 49
i 13 358.664384 0.10274 55 49
i 5 358.664384 0.10274 71 50
i 9 358.664384 0.10274 55 73
i 11 358.767123 0.10274 36 113
i 11 358.767123 0.10274 38 87
i 6 358.767123 0.308219 67 105
i 7 358.767123 0.10274 72 63
i 1 358.869863 0.10274 36 78
i 11 358.869863 0.10274 42 57
i 10 358.972603 0.205479 72 63
i 11 358.972603 0.10274 46 72
i 2 358.972603 0.10274 36 96
i 7 358.972603 0.10274 67 63
i 9 358.972603 0.10274 60 73
i 1 359.075342 0.10274 36 78
i 11 359.075342 0.10274 42 57
i 3 359.075342 0.10274 55 58
i 11 359.178082 0.10274 36 113
i 6 359.178082 0.308219 72 105
i 7 359.178082 0.10274 64 63
i 1 359.280822 0.10274 36 78
i 11 359.280822 0.10274 42 57
i 5 359.280822 0.10274 71 50
i 11 359.383562 0.10274 46 72
i 13 359.383562 0.10274 48 49
i 13 359.383562 0.10274 52 49
i 13 359.383562 0.10274 55 49
i 2 359.383562 0.10274 36 96
i 7 359.383562 0.10274 67 63
i 9 359.383562 0.10274 64 73
i 1 359.486301 0.10274 36 78
i 10 359.486301 0.205479 76 63
i 11 359.486301 0.10274 42 57
i 3 359.486301 0.10274 59 58
i 11 359.589041 0.10274 36 113
i 11 359.589041 0.10274 38 87
i 6 359.589041 0.308219 67 105
i 7 359.589041 0.10274 72 63
i 1 359.691781 0.10274 36 78
i 11 359.691781 0.10274 42 57
i 10 359.794521 0.205479 74 63
i 11 359.794521 0.10274 46 72
i 2 359.794521 0.10274 36 96
i 7 359.794521 0.10274 67 63
i 1 359.89726 0.10274 36 78
i 11 359.89726 0.10274 42 57
i 5 359.89726 0.10274 71 50
i 9 359.89726 0.10274 55 73
i 11 360 0.10274 36 113
i 6 360 0.308219 64 105
i 7 360 0.10274 64 63
i 1 360.10274 0.10274 36 78
i 11 360.10274 0.10274 42 57
i 10 360.205479 0.205479 72 63
i 11 360.205479 0.10274 46 72
i 2 360.205479 0.10274 36 96
i 3 360.205479 0.10274 60 58
i 7 360.205479 0.10274 67 63
i 9 360.205479 0.10274 60 73
i 1 360.308219 0.10274 36 78
i 11 360.308219 0.10274 42 57
i 13 360.308219 0.10274 48 49
i 13 360.308219 0.10274 52 49
i 13 360.308219 0.10274 55 49
i 11 360.410959 0.10274 36 113
i 11 360.410959 0.10274 38 87
i 6 360.410959 0.308219 67 105
i 7 360.410959 0.10274 72 63
i 1 360.513699 0.10274 36 78
i 11 360.513699 0.10274 42 57
i 10 360.616438 0.205479 67 63
i 11 360.616438 0.10274 46 72
i 2 360.616438 0.10274 36 96
i 3 360.616438 0.10274 55 58
i 5 360.616438 0.10274 71 50
i 7 360.616438 0.10274 67 63
i 1 360.719178 0.10274 36 78
i 11 360.719178 0.10274 42 57
i 9 360.719178 0.10274 52 73
i 11 360.821918 0.10274 36 113
i 6 360.821918 0.308219 62 105
i 7 360.821918 0.10274 64 63
i 1 360.924658 0.10274 36 78
i 11 360.924658 0.10274 42 57
i 11 361.027397 0.10274 46 72
i 13 361.027397 0.10274 48 49
i 13 361.027397 0.10274 52 49
i 13 361.027397 0.10274 55 49
i 2 361.027397 0.10274 36 96
i 7 361.027397 0.10274 67 63
i 1 361.130137 0.10274 36 78
i 10 361.130137 0.205479 64 63
i 11 361.130137 0.10274 42 57
i 3 361.130137 0.10274 52 58
i 5 361.130137 0.10274 71 50
i 11 361.232877 0.10274 36 113
i 11 361.232877 0.10274 38 87
i 6 361.232877 0.308219 64 105
i 7 361.232877 0.10274 72 63
i 1 361.335616 0.10274 36 78
i 11 361.335616 0.10274 42 57
i 9 361.335616 0.10274 55 73
i 10 361.438356 0.205479 67 63
i 11 361.438356 0.10274 46 72
i 2 361.438356 0.10274 36 96
i 3 361.438356 0.10274 55 58
i 7 361.438356 0.10274 67 63
i 1 361.541096 0.10274 36 78
i 11 361.541096 0.10274 42 57
i 11 361.643836 0.10274 36 113
i 6 361.643836 0.308219 62 105
i 7 361.643836 0.10274 62 63
i 1 361.746575 0.10274 43 78
i 11 361.746575 0.10274 42 57
i 9 361.746575 0.10274 55 73
i 10 361.849315 0.205479 67 63
i 11 361.849315 0.10274 46 72
i 2 361.849315 0.10274 43 96
i 3 361.849315 0.10274 55 58
i 7 361.849315 0.10274 67 63
i 1 361.952055 0.10274 43 78
i 11 361.952055 0.10274 42 57
i 13 361.952055 0.10274 55 49
i 13 361.952055 0.10274 59 49
i 13 361.952055 0.10274 62 49
i 5 361.952055 0.10274 64 49
i 9 361.952055 0.10274 55 73
i 11 362.054795 0.10274 36 113
i 11 362.054795 0.10274 38 87
i 6 362.054795 0.308219 67 105
i 7 362.054795 0.10274 71 63
i 1 362.157534 0.10274 43 78
i 11 362.157534 0.10274 42 57
i 10 362.260274 0.205479 71 63
i 11 362.260274 0.10274 46 72
i 2 362.260274 0.10274 43 96
i 7 362.260274 0.10274 67 63
i 9 362.260274 0.10274 62 73
i 1 362.363014 0.10274 43 78
i 11 362.363014 0.10274 42 57
i 3 362.363014 0.10274 62 58
i 11 362.465753 0.10274 36 113
i 6 362.465753 0.308219 71 105
i 7 362.465753 0.10274 62 63
i 1 362.568493 0.10274 43 78
i 11 362.568493 0.10274 42 57
i 5 362.568493 0.10274 64 49
i 11 362.671233 0.10274 46 72
i 13 362.671233 0.10274 55 49
i 13 362.671233 0.10274 59 49
i 13 362.671233 0.10274 62 49
i 2 362.671233 0.10274 43 96
i 7 362.671233 0.10274 67 63
i 9 362.671233 0.10274 59 73
i 1 362.773973 0.10274 43 78
i 10 362.773973 0.205479 74 63
i 11 362.773973 0.10274 42 57
i 3 362.773973 0.10274 59 58
i 11 362.876712 0.10274 36 113
i 11 362.876712 0.10274 38 87
i 6 362.876712 0.308219 67 105
i 7 362.876712 0.10274 71 63
i 1 362.979452 0.10274 43 78
i 11 362.979452 0.10274 42 57
i 10 363.082192 0.205479 79 63
i 11 363.082192 0.10274 46 72
i 2 363.082192 0.10274 43 96
i 7 363.082192 0.10274 67 63
i 1 363.184932 0.10274 43 78
i 11 363.184932 0.10274 42 57
i 5 363.184932 0.10274 64 49
i 9 363.184932 0.10274 55 73
i 11 363.287671 0.10274 36 113
i 6 363.287671 0.308219 74 105
i 7 363.287671 0.10274 62 63
i 1 363.390411 0.10274 43 78
i 11 363.390411 0.10274 42 57
i 10 363.493151 0.205479 78 63
i 11 363.493151 0.10274 46 72
i 2 363.493151 0.10274 43 96
i 3 363.493151 0.10274 55 58
i 7 363.493151 0.10274 67 63
i 9 363.493151 0.10274 57 73
i 1 363.59589 0.10274 43 78
i 11 363.59589 0.10274 42 57
i 13 363.59589 0.10274 55 49
i 13 363.59589 0.10274 59 49
i 13 363.59589 0.10274 62 49
i 11 363.69863 0.10274 36 113
i 11 363.69863 0.10274 38 87
i 6 363.69863 0.308219 71 105
i 7 363.69863 0.10274 71 63
i 1 363.80137 0.10274 43 78
i 11 363.80137 0.10274 42 57
i 10 363.90411 0.205479 74 63
i 11 363.90411 0.10274 46 72
i 2 363.90411 0.10274 43 96
i 3 363.90411 0.10274 57 58
i 5 363.90411 0.10274 64 49
i 7 363.90411 0.10274 67 63
i 1 364.006849 0.10274 43 78
i 11 364.006849 0.10274 42 57
i 9 364.006849 0.10274 59 73
i 11 364.109589 0.10274 36 113
i 6 364.109589 0.308219 69 105
i 7 364.109589 0.10274 62 63
i 1 364.212329 0.10274 43 78
i 11 364.212329 0.10274 42 57
i 11 364.315068 0.10274 46 72
i 13 364.315068 0.10274 55 49
i 13 364.315068 0.10274 59 49
i 13 364.315068 0.10274 62 49
i 2 364.315068 0.10274 43 96
i 7 364.315068 0.10274 67 63
i 1 364.417808 0.10274 43 78
i 10 364.417808 0.205479 71 63
i 11 364.417808 0.10274 42 57
i 3 364.417808 0.10274 59 58
i 5 364.417808 0.10274 64 49
i 11 364.520548 0.10274 36 113
i 11 364.520548 0.10274 38 87
i 6 364.520548 0.308219 67 105
i 7 364.520548 0.10274 71 63
i 1 364.623288 0.10274 43 78
i 11 364.623288 0.10274 42 57
i 9 364.623288 0.10274 62 73
i 10 364.726027 0.205479 69 63
i 11 364.726027 0.10274 46 72
i 2 364.726027 0.10274 43 96
i 3 364.726027 0.10274 62 58
i 7 364.726027 0.10274 67 63
i 1 364.828767 0.10274 43 78
i 11 364.828767 0.10274 42 57
i 11 364.931507 0.10274 36 113
i 4 364.931507 3.082192 59 70
i 6 364.931507 0.308219 66 105
i 7 364.931507 0.10274 62 63
i 1 365.034247 0.10274 38 78
i 11 365.034247 0.10274 42 57
i 9 365.034247 0.10274 50 73
i 10 365.136986 0.205479 69 63
i 11 365.136986 0.10274 46 69
i 2 365.136986 0.10274 38 96
i 3 365.136986 0.10274 50 58
i 7 365.136986 0.10274 69 63
i 1 365.239726 0.10274 38 78
i 11 365.239726 0.10274 42 57
i 13 365.239726 0.10274 50 49
i 13 365.239726 0.10274 54 49
i 13 365.239726 0.10274 57 49
i 5 365.239726 0.10274 71 50
i 9 365.239726 0.10274 57 73
i 11 365.342466 0.10274 36 113
i 11 365.342466 0.10274 38 90
i 6 365.342466 0.308219 69 105
i 7 365.342466 0.10274 66 63
i 1 365.445205 0.10274 38 78
i 11 365.445205 0.10274 42 57
i 10 365.547945 0.205479 74 63
i 11 365.547945 0.10274 46 69
i 2 365.547945 0.10274 38 96
i 7 365.547945 0.10274 69 63
i 9 365.547945 0.10274 62 73
i 1 365.650685 0.10274 38 78
i 11 365.650685 0.10274 42 57
i 3 365.650685 0.10274 57 58
i 11 365.753425 0.10274 36 113
i 6 365.753425 0.308219 74 105
i 7 365.753425 0.10274 62 63
i 1 365.856164 0.10274 38 78
i 11 365.856164 0.10274 42 57
i 5 365.856164 0.10274 71 50
i 11 365.958904 0.10274 46 69
i 13 365.958904 0.10274 50 49
i 13 365.958904 0.10274 54 49
i 13 365.958904 0.10274 57 49
i 2 365.958904 0.10274 38 96
i 7 365.958904 0.10274 69 63
i 9 365.958904 0.10274 54 73
i 1 366.061644 0.10274 38 78
i 10 366.061644 0.205479 78 63
i 11 366.061644 0.10274 42 57
i 3 366.061644 0.10274 60 58
i 11 366.164384 0.10274 36 113
i 11 366.164384 0.10274 38 90
i 6 366.164384 0.308219 69 105
i 7 366.164384 0.10274 66 63
i 1 366.267123 0.10274 38 78
i 11 366.267123 0.10274 42 57
i 10 366.369863 0.205479 76 63
i 11 366.369863 0.10274 46 69
i 2 366.369863 0.10274 38 96
i 7 366.369863 0.10274 69 63
i 1 366.472603 0.10274 38 78
i 11 366.472603 0.10274 42 57
i 5 366.472603 0.10274 71 50
i 9 366.472603 0.10274 57 73
i 11 366.575342 0.10274 36 113
i 6 366.575342 0.308219 66 105
i 7 366.575342 0.10274 62 63
i 1 366.678082 0.10274 38 78
i 11 366.678082 0.10274 42 57
i 10 366.780822 0.205479 74 63
i 11 366.780822 0.10274 46 69
i 2 366.780822 0.10274 38 96
i 3 366.780822 0.10274 62 58
i 7 366.780822 0.10274 69 63
i 9 366.780822 0.10274 62 73
i 1 366.883562 0.10274 38 78
i 11 366.883562 0.10274 42 57
i 13 366.883562 0.10274 50 49
i 13 366.883562 0.10274 54 49
i 13 366.883562 0.10274 57 49
i 11 366.986301 0.10274 36 113
i 11 366.986301 0.10274 38 90
i 6 366.986301 0.308219 64 105
i 7 366.986301 0.10274 66 63
i 1 367.089041 0.10274 38 78
i 11 367.089041 0.10274 42 57
i 10 367.191781 0.205479 69 63
i 11 367.191781 0.10274 46 69
i 2 367.191781 0.10274 38 96
i 3 367.191781 0.10274 57 58
i 5 367.191781 0.10274 71 50
i 7 367.191781 0.10274 69 63
i 1 367.294521 0.10274 38 78
i 11 367.294521 0.10274 42 57
i 9 367.294521 0.10274 66 73
i 11 367.39726 0.10274 36 113
i 6 367.39726 0.308219 62 105
i 7 367.39726 0.10274 62 63
i 1 367.5 0.10274 38 78
i 11 367.5 0.10274 42 57
i 11 367.60274 0.10274 38 90
i 11 367.60274 0.10274 46 69
i 13 367.60274 0.10274 50 49
i 13 367.60274 0.10274 54 49
i 13 367.60274 0.10274 57 49
i 2 367.60274 0.10274 38 96
i 7 367.60274 0.10274 69 63
i 1 367.705479 0.10274 38 78
i 10 367.705479 0.205479 66 63
i 11 367.705479 0.10274 42 57
i 3 367.705479 0.10274 54 58
i 5 367.705479 0.10274 71 50
i 8 367.705479 0.10274 59 54
i 11 367.808219 0.10274 38 90
i 6 367.808219 0.308219 59 105
i 7 367.808219 0.10274 66 63
i 1 367.910959 0.10274 38 78
i 11 367.910959 0.10274 42 57
i 9 367.910959 0.10274 62 73
i 10 368.013699 0.205479 71 63
i 11 368.013699 0.10274 38 90
i 2 368.013699 0.10274 38 96
i 3 368.013699 0.10274 62 58
i 7 368.013699 0.10274 69 63
i 8 368.013699 0.10274 64 54
i 1 368.116438 0.10274 38 78
i 11 368.116438 0.10274 38 90
i 11 368.116438 0.10274 42 57
i 11 368.219178 0.10274 36 113
i 12 368.219178 3.082192 52 47
i 12 368.219178 3.082192 55 47
i 12 368.219178 3.082192 59 47
i 6 368.219178 0.308219 64 87
i 7 368.219178 0.205479 64 43
i 1 368.321918 0.10274 40 78
i 11 368.321918 0.10274 42 39
i 9 368.321918 0.10274 52 73
i 11 368.424658 0.10274 46 72
i 2 368.424658 0.10274 40 96
i 1 368.527397 0.10274 40 78
i 11 368.527397 0.10274 42 39
i 5 368.527397 0.10274 64 49
i 9 368.527397 0.10274 52 73
i 11 368.630137 0.10274 36 113
i 11 368.630137 0.10274 38 87
i 6 368.630137 0.308219 71 87
i 7 368.630137 0.205479 71 43
i 1 368.732877 0.10274 40 78
i 11 368.732877 0.10274 42 39
i 11 368.835616 0.10274 46 72
i 2 368.835616 0.10274 40 96
i 9 368.835616 0.10274 59 73
i 1 368.938356 0.10274 40 78
i 11 368.938356 0.10274 42 39
i 11 369.041096 0.10274 36 113
i 6 369.041096 0.308219 76 87
i 7 369.041096 0.205479 67 43
i 1 369.143836 0.10274 40 78
i 11 369.143836 0.10274 42 39
i 5 369.143836 0.10274 64 49
i 11 369.246575 0.10274 46 72
i 2 369.246575 0.10274 40 96
i 9 369.246575 0.10274 64 73
i 1 369.349315 0.10274 40 78
i 11 369.349315 0.10274 42 39
i 11 369.452055 0.10274 36 113
i 11 369.452055 0.10274 38 87
i 6 369.452055 0.308219 71 87
i 7 369.452055 0.205479 71 43
i 1 369.554795 0.10274 40 78
i 11 369.554795 0.10274 42 39
i 11 369.657534 0.10274 46 72
i 2 369.657534 0.10274 40 96
i 1 369.760274 0.10274 40 78
i 11 369.760274 0.10274 42 39
i 5 369.760274 0.10274 64 49
i 9 369.760274 0.10274 55 73
i 11 369.863014 0.10274 36 113
i 6 369.863014 0.308219 67 87
i 7 369.863014 0.205479 64 43
i 1 369.965753 0.10274 40 78
i 11 369.965753 0.10274 42 39
i 11 370.068493 0.10274 46 72
i 2 370.068493 0.10274 40 96
i 9 370.068493 0.10274 52 73
i 1 370.171233 0.10274 40 78
i 11 370.171233 0.10274 42 39
i 11 370.273973 0.10274 36 113
i 11 370.273973 0.10274 38 87
i 6 370.273973 0.308219 71 87
i 7 370.273973 0.205479 71 43
i 1 370.376712 0.10274 40 78
i 11 370.376712 0.10274 42 39
i 11 370.479452 0.10274 46 72
i 2 370.479452 0.10274 40 96
i 5 370.479452 0.10274 64 49
i 1 370.582192 0.10274 40 78
i 11 370.582192 0.10274 42 39
i 9 370.582192 0.10274 62 73
i 11 370.684932 0.10274 36 113
i 6 370.684932 0.308219 66 87
i 7 370.684932 0.205479 67 43
i 1 370.787671 0.10274 40 78
i 11 370.787671 0.10274 42 39
i 11 370.890411 0.10274 46 72
i 2 370.890411 0.10274 40 96
i 1 370.993151 0.10274 40 78
i 11 370.993151 0.10274 42 39
i 5 370.993151 0.10274 64 49
i 11 371.09589 0.10274 36 113
i 11 371.09589 0.10274 38 87
i 6 371.09589 0.308219 67 87
i 7 371.09589 0.205479 71 43
i 1 371.19863 0.10274 40 78
i 11 371.19863 0.10274 42 39
i 9 371.19863 0.10274 59 73
i 11 371.30137 0.10274 46 72
i 2 371.30137 0.10274 40 96
i 1 371.40411 0.10274 40 78
i 11 371.40411 0.10274 42 39
i 11 371.506849 0.10274 36 113
i 12 371.506849 3.082192 48 46
i 12 371.506849 3.082192 52 46
i 12 371.506849 3.082192 55 46
i 6 371.506849 0.308219 64 87
i 7 371.506849 0.205479 64 43
i 1 371.609589 0.10274 36 78
i 11 371.609589 0.10274 42 39
i 9 371.609589 0.10274 52 73
i 11 371.712329 0.10274 46 72
i 2 371.712329 0.10274 36 96
i 1 371.815068 0.10274 36 78
i 11 371.815068 0.10274 42 39
i 5 371.815068 0.10274 71 50
i 9 371.815068 0.10274 55 73
i 11 371.917808 0.10274 36 113
i 11 371.917808 0.10274 38 87
i 6 371.917808 0.308219 67 87
i 7 371.917808 0.205479 67 43
i 1 372.020548 0.10274 36 78
i 11 372.020548 0.10274 42 39
i 11 372.123288 0.10274 46 72
i 2 372.123288 0.10274 36 96
i 9 372.123288 0.10274 60 73
i 1 372.226027 0.10274 36 78
i 11 372.226027 0.10274 42 39
i 11 372.328767 0.10274 36 113
i 6 372.328767 0.308219 72 87
i 7 372.328767 0.205479 72 43
i 1 372.431507 0.10274 36 78
i 11 372.431507 0.10274 42 39
i 5 372.431507 0.10274 71 50
i 11 372.534247 0.10274 46 72
i 2 372.534247 0.10274 36 96
i 9 372.534247 0.10274 64 73
i 1 372.636986 0.10274 36 78
i 11 372.636986 0.10274 42 39
i 11 372.739726 0.10274 36 113
i 11 372.739726 0.10274 38 87
i 6 372.739726 0.308219 67 87
i 7 372.739726 0.205479 67 43
i 1 372.842466 0.10274 36 78
i 11 372.842466 0.10274 42 39
i 11 372.945205 0.10274 46 72
i 2 372.945205 0.10274 36 96
i 1 373.047945 0.10274 36 78
i 11 373.047945 0.10274 42 39
i 5 373.047945 0.10274 71 50
i 9 373.047945 0.10274 55 73
i 11 373.150685 0.10274 36 113
i 6 373.150685 0.308219 64 87
i 7 373.150685 0.205479 64 43
i 1 373.253425 0.10274 36 78
i 11 373.253425 0.10274 42 39
i 11 373.356164 0.10274 46 72
i 2 373.356164 0.10274 36 96
i 9 373.356164 0.10274 60 73
i 1 373.458904 0.10274 36 78
i 11 373.458904 0.10274 42 39
i 11 373.561644 0.10274 36 113
i 11 373.561644 0.10274 38 87
i 6 373.561644 0.308219 67 87
i 7 373.561644 0.205479 67 43
i 1 373.664384 0.10274 36 78
i 11 373.664384 0.10274 42 39
i 11 373.767123 0.10274 46 72
i 2 373.767123 0.10274 36 96
i 5 373.767123 0.10274 71 50
i 1 373.869863 0.10274 36 78
i 11 373.869863 0.10274 42 39
i 9 373.869863 0.10274 52 73
i 11 373.972603 0.10274 36 113
i 6 373.972603 0.308219 62 87
i 7 373.972603 0.205479 72 43
i 1 374.075342 0.10274 36 78
i 11 374.075342 0.10274 42 39
i 11 374.178082 0.10274 46 72
i 2 374.178082 0.10274 36 96
i 1 374.280822 0.10274 36 78
i 11 374.280822 0.10274 42 39
i 5 374.280822 0.10274 71 50
i 11 374.383562 0.10274 36 113
i 11 374.383562 0.10274 38 87
i 6 374.383562 0.308219 64 87
i 7 374.383562 0.205479 67 43
i 1 374.486301 0.10274 36 78
i 11 374.486301 0.10274 42 39
i 9 374.486301 0.10274 55 73
i 11 374.589041 0.10274 46 72
i 2 374.589041 0.10274 36 96
i 1 374.691781 0.10274 36 78
i 11 374.691781 0.10274 42 39
i 11 374.794521 0.10274 36 113
i 12 374.794521 3.082192 55 45
i 12 374.794521 3.082192 59 45
i 12 374.794521 3.082192 62 45
i 6 374.794521 0.308219 62 87
i 7 374.794521 0.205479 62 43
i 1 374.89726 0.10274 43 78
i 11 374.89726 0.10274 42 39
i 9 374.89726 0.10274 55 73
i 11 375 0.10274 46 72
i 2 375 0.10274 43 96
i 1 375.10274 0.10274 43 78
i 11 375.10274 0.10274 42 39
i 5 375.10274 0.10274 64 49
i 9 375.10274 0.10274 55 73
i 11 375.205479 0.10274 36 113
i 11 375.205479 0.10274 38 87
i 6 375.205479 0.308219 67 87
i 7 375.205479 0.205479 67 43
i 1 375.308219 0.10274 43 78
i 11 375.308219 0.10274 42 39
i 11 375.410959 0.10274 46 72
i 2 375.410959 0.10274 43 96
i 9 375.410959 0.10274 62 73
i 1 375.513699 0.10274 43 78
i 11 375.513699 0.10274 42 39
i 11 375.616438 0.10274 36 113
i 6 375.616438 0.308219 71 87
i 7 375.616438 0.205479 71 43
i 1 375.719178 0.10274 43 78
i 11 375.719178 0.10274 42 39
i 5 375.719178 0.10274 64 49
i 11 375.821918 0.10274 46 72
i 2 375.821918 0.10274 43 96
i 9 375.821918 0.10274 59 73
i 1 375.924658 0.10274 43 78
i 11 375.924658 0.10274 42 39
i 11 376.027397 0.10274 36 113
i 11 376.027397 0.10274 38 87
i 6 376.027397 0.308219 67 87
i 7 376.027397 0.205479 67 43
i 1 376.130137 0.10274 43 78
i 11 376.130137 0.10274 42 39
i 11 376.232877 0.10274 46 72
i 2 376.232877 0.10274 43 96
i 1 376.335616 0.10274 43 78
i 11 376.335616 0.10274 42 39
i 5 376.335616 0.10274 64 49
i 9 376.335616 0.10274 55 73
i 11 376.438356 0.10274 36 113
i 6 376.438356 0.308219 74 87
i 7 376.438356 0.205479 62 43
i 1 376.541096 0.10274 43 78
i 11 376.541096 0.10274 42 39
i 11 376.643836 0.10274 46 72
i 2 376.643836 0.10274 43 96
i 9 376.643836 0.10274 57 73
i 1 376.746575 0.10274 43 78
i 11 376.746575 0.10274 42 39
i 11 376.849315 0.10274 36 113
i 11 376.849315 0.10274 38 87
i 6 376.849315 0.308219 71 87
i 7 376.849315 0.205479 67 43
i 1 376.952055 0.10274 43 78
i 11 376.952055 0.10274 42 39
i 11 377.054795 0.10274 46 72
i 2 377.054795 0.10274 43 96
i 5 377.054795 0.10274 64 49
i 1 377.157534 0.10274 43 78
i 11 377.157534 0.10274 42 39
i 9 377.157534 0.10274 59 73
i 11 377.260274 0.10274 36 113
i 6 377.260274 0.308219 69 87
i 7 377.260274 0.205479 71 43
i 1 377.363014 0.10274 43 78
i 11 377.363014 0.10274 42 39
i 11 377.465753 0.10274 46 72
i 2 377.465753 0.10274 43 96
i 1 377.568493 0.10274 43 78
i 11 377.568493 0.10274 42 39
i 5 377.568493 0.10274 64 49
i 11 377.671233 0.10274 36 113
i 11 377.671233 0.10274 38 87
i 6 377.671233 0.308219 67 87
i 7 377.671233 0.205479 67 43
i 1 377.773973 0.10274 43 78
i 11 377.773973 0.10274 42 39
i 9 377.773973 0.10274 62 73
i 11 377.876712 0.10274 46 72
i 2 377.876712 0.10274 43 96
i 1 377.979452 0.10274 43 78
i 11 377.979452 0.10274 42 39
i 11 378.082192 0.10274 36 113
i 12 378.082192 3.082192 50 46
i 12 378.082192 3.082192 54 46
i 12 378.082192 3.082192 57 46
i 6 378.082192 0.308219 66 87
i 7 378.082192 0.205479 62 43
i 1 378.184932 0.10274 38 78
i 11 378.184932 0.10274 42 39
i 9 378.184932 0.10274 50 73
i 11 378.287671 0.10274 46 72
i 2 378.287671 0.10274 38 96
i 1 378.390411 0.10274 38 78
i 11 378.390411 0.10274 42 39
i 5 378.390411 0.10274 71 50
i 9 378.390411 0.10274 57 73
i 11 378.493151 0.10274 36 113
i 11 378.493151 0.10274 38 87
i 6 378.493151 0.308219 69 87
i 7 378.493151 0.205479 69 43
i 1 378.59589 0.10274 38 78
i 11 378.59589 0.10274 42 39
i 11 378.69863 0.10274 46 72
i 2 378.69863 0.10274 38 96
i 9 378.69863 0.10274 62 73
i 1 378.80137 0.10274 38 78
i 11 378.80137 0.10274 42 39
i 11 378.90411 0.10274 36 113
i 6 378.90411 0.308219 74 87
i 7 378.90411 0.205479 66 43
i 1 379.006849 0.10274 38 78
i 11 379.006849 0.10274 42 39
i 5 379.006849 0.10274 71 50
i 11 379.109589 0.10274 46 72
i 2 379.109589 0.10274 38 96
i 9 379.109589 0.10274 54 73
i 1 379.212329 0.10274 38 78
i 11 379.212329 0.10274 42 39
i 11 379.315068 0.10274 36 113
i 11 379.315068 0.10274 38 87
i 6 379.315068 0.308219 69 87
i 7 379.315068 0.205479 69 43
i 1 379.417808 0.10274 38 78
i 11 379.417808 0.10274 42 39
i 11 379.520548 0.10274 46 72
i 2 379.520548 0.10274 38 96
i 1 379.623288 0.10274 38 78
i 11 379.623288 0.10274 42 39
i 5 379.623288 0.10274 71 50
i 9 379.623288 0.10274 57 73
i 11 379.726027 0.10274 36 113
i 6 379.726027 0.308219 66 87
i 7 379.726027 0.205479 62 43
i 1 379.828767 0.10274 38 78
i 11 379.828767 0.10274 42 39
i 11 379.931507 0.10274 46 72
i 2 379.931507 0.10274 38 96
i 9 379.931507 0.10274 62 73
i 1 380.034247 0.10274 38 78
i 11 380.034247 0.10274 42 39
i 11 380.136986 0.10274 36 113
i 11 380.136986 0.10274 38 87
i 6 380.136986 0.308219 64 87
i 7 380.136986 0.205479 69 43
i 1 380.239726 0.10274 38 78
i 11 380.239726 0.10274 42 39
i 11 380.342466 0.10274 46 72
i 2 380.342466 0.10274 38 96
i 5 380.342466 0.10274 71 50
i 1 380.445205 0.10274 38 78
i 11 380.445205 0.10274 42 39
i 9 380.445205 0.10274 66 73
i 11 380.547945 0.10274 36 113
i 6 380.547945 0.308219 62 87
i 7 380.547945 0.205479 66 43
i 1 380.650685 0.10274 38 78
i 11 380.650685 0.10274 42 39
i 11 380.753425 0.10274 46 72
i 2 380.753425 0.10274 38 96
i 1 380.856164 0.10274 38 78
i 11 380.856164 0.10274 42 39
i 5 380.856164 0.10274 71 50
i 11 380.958904 0.10274 36 113
i 11 380.958904 0.10274 38 87
i 6 380.958904 0.308219 59 87
i 7 380.958904 0.205479 69 43
i 1 381.061644 0.10274 38 78
i 11 381.061644 0.10274 42 39
i 9 381.061644 0.10274 62 73
i 11 381.164384 0.10274 46 72
i 2 381.164384 0.10274 38 96
i 1 381.267123 0.10274 38 78
i 11 381.267123 0.10274 42 39
i 11 381.369863 0.10274 36 113
i 12 381.369863 3.082192 52 47
i 12 381.369863 3.082192 55 47
i 12 381.369863 3.082192 59 47
i 7 381.369863 0.205479 64 43
i 11 381.472603 0.10274 42 39
i 11 381.575342 0.10274 46 72
i 2 381.575342 0.10274 40 96
i 11 381.678082 0.10274 42 39
i 9 381.678082 0.10274 52 50
i 11 381.780822 0.10274 36 113
i 11 381.780822 0.10274 38 87
i 7 381.780822 0.205479 71 43
i 11 381.883562 0.10274 42 39
i 11 381.986301 0.10274 46 72
i 2 381.986301 0.10274 40 96
i 11 382.089041 0.10274 42 39
i 11 382.191781 0.10274 36 113
i 7 382.191781 0.205479 67 43
i 11 382.294521 0.10274 42 39
i 11 382.39726 0.10274 46 72
i 2 382.39726 0.10274 40 96
i 11 382.5 0.10274 42 39
i 11 382.60274 0.10274 36 113
i 11 382.60274 0.10274 38 87
i 7 382.60274 0.205479 71 43
i 11 382.705479 0.10274 42 39
i 11 382.808219 0.10274 46 72
i 2 382.808219 0.10274 40 96
i 9 382.808219 0.10274 59 50
i 11 382.910959 0.10274 42 39
i 11 383.013699 0.10274 36 113
i 7 383.013699 0.205479 64 43
i 11 383.116438 0.10274 42 39
i 11 383.219178 0.10274 46 72
i 2 383.219178 0.10274 40 96
i 11 383.321918 0.10274 42 39
i 11 383.424658 0.10274 36 113
i 11 383.424658 0.10274 38 87
i 7 383.424658 0.205479 71 43
i 11 383.527397 0.10274 42 39
i 11 383.630137 0.10274 46 72
i 2 383.630137 0.10274 40 96
i 11 383.732877 0.10274 42 39
i 9 383.732877 0.10274 64 50
i 11 383.835616 0.10274 36 113
i 7 383.835616 0.205479 67 43
i 11 383.938356 0.10274 42 39
i 11 384.041096 0.10274 46 72
i 2 384.041096 0.10274 40 96
i 11 384.143836 0.10274 42 39
i 11 384.246575 0.10274 36 113
i 11 384.246575 0.10274 38 87
i 7 384.246575 0.205479 71 43
i 11 384.349315 0.10274 42 39
i 11 384.452055 0.10274 46 72
i 2 384.452055 0.10274 40 96
i 11 384.554795 0.10274 42 39
i 11 384.657534 0.10274 36 113
i 12 384.657534 3.082192 48 46
i 12 384.657534 3.082192 52 46
i 12 384.657534 3.082192 55 46
i 7 384.657534 0.205479 64 43
i 11 384.760274 0.10274 42 39
i 11 384.863014 0.10274 46 72
i 2 384.863014 0.10274 36 96
i 11 384.965753 0.10274 42 39
i 9 384.965753 0.10274 52 50
i 11 385.068493 0.10274 36 113
i 11 385.068493 0.10274 38 87
i 7 385.068493 0.205479 67 43
i 11 385.171233 0.10274 42 39
i 11 385.273973 0.10274 46 72
i 2 385.273973 0.10274 36 96
i 11 385.376712 0.10274 42 39
i 11 385.479452 0.10274 36 113
i 7 385.479452 0.205479 72 43
i 11 385.582192 0.10274 42 39
i 11 385.684932 0.10274 46 72
i 2 385.684932 0.10274 36 96
i 11 385.787671 0.10274 42 39
i 11 385.890411 0.10274 36 113
i 11 385.890411 0.10274 38 87
i 7 385.890411 0.205479 67 43
i 11 385.993151 0.10274 42 39
i 11 386.09589 0.10274 46 72
i 2 386.09589 0.10274 36 96
i 9 386.09589 0.10274 59 50
i 11 386.19863 0.10274 42 39
i 11 386.30137 0.10274 36 113
i 7 386.30137 0.205479 64 43
i 11 386.40411 0.10274 42 39
i 11 386.506849 0.10274 46 72
i 2 386.506849 0.10274 36 96
i 11 386.609589 0.10274 42 39
i 11 386.712329 0.10274 36 113
i 11 386.712329 0.10274 38 87
i 7 386.712329 0.205479 67 43
i 11 386.815068 0.10274 42 39
i 11 386.917808 0.10274 46 72
i 2 386.917808 0.10274 36 96
i 11 387.020548 0.10274 42 39
i 9 387.020548 0.10274 64 50
i 11 387.123288 0.10274 36 113
i 7 387.123288 0.205479 72 43
i 11 387.226027 0.10274 42 39
i 11 387.328767 0.10274 46 72
i 2 387.328767 0.10274 36 96
i 11 387.431507 0.10274 42 39
i 11 387.534247 0.10274 36 113
i 11 387.534247 0.10274 38 87
i 7 387.534247 0.205479 67 43
i 11 387.636986 0.10274 42 39
i 11 387.739726 0.10274 46 72
i 2 387.739726 0.10274 36 96
i 11 387.842466 0.10274 42 39
i 11 387.945205 0.10274 36 113
i 12 387.945205 3.082192 55 45
i 12 387.945205 3.082192 59 45
i 12 387.945205 3.082192 62 45
i 7 387.945205 0.205479 62 43
i 11 388.047945 0.10274 42 39
i 11 388.150685 0.10274 46 72
i 2 388.150685 0.10274 43 96
i 11 388.253425 0.10274 42 39
i 9 388.253425 0.10274 52 50
i 11 388.356164 0.10274 36 113
i 11 388.356164 0.10274 38 87
i 7 388.356164 0.205479 67 43
i 11 388.458904 0.10274 42 39
i 11 388.561644 0.10274 46 72
i 2 388.561644 0.10274 43 96
i 11 388.664384 0.10274 42 39
i 11 388.767123 0.10274 36 113
i 7 388.767123 0.205479 71 43
i 11 388.869863 0.10274 42 39
i 11 388.972603 0.10274 46 72
i 2 388.972603 0.10274 43 96
i 11 389.075342 0.10274 42 39
i 11 389.178082 0.10274 36 113
i 11 389.178082 0.10274 38 87
i 7 389.178082 0.205479 67 43
i 11 389.280822 0.10274 42 39
i 11 389.383562 0.10274 46 72
i 2 389.383562 0.10274 43 96
i 9 389.383562 0.10274 59 50
i 11 389.486301 0.10274 42 39
i 11 389.589041 0.10274 36 113
i 7 389.589041 0.205479 62 43
i 11 389.691781 0.10274 42 39
i 11 389.794521 0.10274 46 72
i 2 389.794521 0.10274 43 96
i 11 389.89726 0.10274 42 39
i 11 390 0.10274 36 113
i 11 390 0.10274 38 87
i 7 390 0.205479 67 43
i 11 390.10274 0.10274 42 39
i 11 390.205479 0.10274 46 72
i 2 390.205479 0.10274 43 96
i 11 390.308219 0.10274 42 39
i 9 390.308219 0.10274 64 50
i 11 390.410959 0.10274 36 113
i 7 390.410959 0.205479 71 43
i 11 390.513699 0.10274 42 39
i 11 390.616438 0.10274 46 72
i 2 390.616438 0.10274 43 96
i 11 390.719178 0.10274 42 39
i 11 390.821918 0.10274 36 113
i 11 390.821918 0.10274 38 87
i 7 390.821918 0.205479 67 43
i 11 390.924658 0.10274 42 39
i 11 391.027397 0.10274 46 72
i 2 391.027397 0.10274 43 96
i 11 391.130137 0.10274 42 39
i 11 391.232877 0.10274 36 113
i 12 391.232877 3.082192 50 46
i 12 391.232877 3.082192 54 46
i 12 391.232877 3.082192 57 46
i 7 391.232877 0.205479 62 43
i 11 391.335616 0.10274 42 39
i 11 391.438356 0.10274 46 72
i 2 391.438356 0.10274 38 96
i 11 391.541096 0.10274 42 39
i 9 391.541096 0.10274 52 50
i 11 391.643836 0.10274 36 113
i 11 391.643836 0.10274 38 90
i 7 391.643836 0.205479 69 43
i 11 391.746575 0.10274 42 39
i 11 391.849315 0.10274 46 72
i 2 391.849315 0.10274 38 96
i 11 391.952055 0.10274 42 39
i 11 392.054795 0.10274 36 113
i 7 392.054795 0.205479 66 43
i 11 392.157534 0.10274 42 39
i 11 392.260274 0.10274 46 72
i 2 392.260274 0.10274 38 96
i 11 392.363014 0.10274 42 39
i 11 392.465753 0.10274 36 113
i 11 392.465753 0.10274 38 90
i 7 392.465753 0.205479 69 43
i 11 392.568493 0.10274 42 39
i 11 392.671233 0.10274 46 72
i 2 392.671233 0.10274 38 96
i 9 392.671233 0.10274 59 50
i 11 392.773973 0.10274 42 39
i 11 392.876712 0.10274 36 113
i 7 392.876712 0.205479 62 43
i 11 392.979452 0.10274 42 39
i 11 393.082192 0.10274 46 72
i 2 393.082192 0.10274 38 96
i 11 393.184932 0.10274 42 39
i 11 393.287671 0.10274 36 113
i 11 393.287671 0.10274 38 90
i 7 393.287671 0.205479 69 43
i 11 393.390411 0.10274 42 39
i 11 393.493151 0.10274 46 72
i 2 393.493151 0.10274 38 96
i 11 393.59589 0.10274 42 39
i 9 393.59589 0.10274 64 50
i 11 393.69863 0.10274 36 113
i 7 393.69863 0.205479 66 43
i 11 393.80137 0.10274 42 39
i 11 393.90411 0.10274 38 90
i 11 393.90411 0.10274 46 72
i 2 393.90411 0.10274 38 96
i 11 394.006849 0.10274 42 39
i 11 394.109589 0.10274 38 90
i 7 394.109589 0.205479 69 43
i 11 394.212329 0.10274 42 39
i 11 394.315068 0.10274 38 90
i 11 394.315068 0.10274 46 72
i 2 394.315068 0.10274 38 96
i 11 394.417808 0.10274 38 90
i 11 394.417808 0.10274 42 39
i 11 394.520548 0.10274 35 100
i 12 394.520548 3.082192 52 47
i 12 394.520548 3.082192 55 47
i 12 394.520548 3.082192 59 47
i 7 394.520548 0.205479 64 43
i 11 394.726027 0.10274 46 72
i 2 394.726027 0.10274 40 96
i 11 394.828767 0.10274 42 52
i 11 394.931507 0.10274 35 100
i 7 394.931507 0.205479 71 43
i 11 395.136986 0.10274 46 72
i 2 395.136986 0.10274 40 96
i 11 395.239726 0.10274 42 52
i 11 395.342466 0.10274 35 100
i 7 395.342466 0.205479 67 43
i 11 395.547945 0.10274 46 72
i 2 395.547945 0.10274 40 96
i 11 395.650685 0.10274 42 52
i 11 395.753425 0.10274 35 100
i 11 395.753425 0.10274 38 62
i 7 395.753425 0.205479 71 43
i 11 395.958904 0.10274 46 72
i 2 395.958904 0.10274 40 96
i 11 396.061644 0.10274 42 52
i 11 396.164384 0.10274 35 100
i 7 396.164384 0.205479 64 43
i 11 396.369863 0.10274 46 72
i 2 396.369863 0.10274 40 96
i 11 396.472603 0.10274 42 52
i 11 396.575342 0.10274 35 100
i 7 396.575342 0.205479 71 43
i 11 396.780822 0.10274 46 72
i 2 396.780822 0.10274 40 96
i 11 396.883562 0.10274 42 52
i 11 396.986301 0.10274 35 100
i 7 396.986301 0.205479 67 43
i 11 397.191781 0.10274 46 72
i 2 397.191781 0.10274 40 96
i 11 397.294521 0.10274 42 52
i 11 397.39726 0.10274 35 100
i 11 397.39726 0.10274 38 62
i 7 397.39726 0.205479 71 43
i 11 397.60274 0.10274 46 72
i 2 397.60274 0.10274 40 96
i 11 397.705479 0.10274 42 52
i 11 397.808219 0.10274 35 100
i 12 397.808219 3.082192 52 47
i 12 397.808219 3.082192 55 47
i 12 397.808219 3.082192 59 47
i 7 397.808219 0.205479 64 43
i 11 398.013699 0.10274 46 72
i 2 398.013699 0.10274 40 96
i 11 398.116438 0.10274 42 52
i 11 398.219178 0.10274 35 100
i 7 398.219178 0.205479 71 43
i 11 398.424658 0.10274 46 72
i 2 398.424658 0.10274 40 96
i 11 398.527397 0.10274 42 52
i 11 398.630137 0.10274 35 100
i 7 398.630137 0.205479 67 43
i 11 398.835616 0.10274 46 72
i 2 398.835616 0.10274 40 96
i 11 398.938356 0.10274 42 52
i 11 399.041096 0.10274 35 100
i 11 399.041096 0.10274 38 62
i 7 399.041096 0.205479 71 43
i 11 399.246575 0.10274 46 72
i 2 399.246575 0.10274 40 96
i 11 399.349315 0.10274 42 52
i 11 399.452055 0.10274 35 100
i 7 399.452055 0.205479 64 43
i 11 399.657534 0.10274 46 72
i 2 399.657534 0.10274 40 96
i 11 399.760274 0.10274 42 52
i 11 399.863014 0.10274 35 100
i 7 399.863014 0.205479 71 43
i 11 400.068493 0.10274 46 72
i 2 400.068493 0.10274 40 96
i 11 400.171233 0.10274 42 52
i 11 400.273973 0.10274 35 100
i 7 400.273973 0.205479 67 43
i 11 400.479452 0.10274 46 72
i 2 400.479452 0.10274 40 96
i 11 400.582192 0.10274 42 52
i 11 400.684932 0.10274 35 100
i 11 400.684932 0.10274 38 62
i 7 400.684932 0.205479 71 43
i 11 400.890411 0.10274 46 72
i 2 400.890411 0.10274 40 96
i 11 400.993151 0.10274 42 52
i 11 401.09589 0.10274 35 86
i 12 401.09589 3.082192 52 37
i 7 401.09589 0.205479 64 43
i 11 401.30137 0.10274 46 47
i 11 401.40411 0.10274 42 52
i 7 401.506849 0.205479 71 43
i 2 401.712329 0.10274 40 70
i 11 401.815068 0.10274 42 52
i 11 401.917808 0.10274 35 86
i 7 401.917808 0.205479 67 43
i 11 402.123288 0.10274 46 47
i 11 402.226027 0.10274 42 52
i 11 402.328767 0.10274 38 62
i 7 402.328767 0.205479 71 43
i 2 402.534247 0.10274 40 70
i 11 402.636986 0.10274 42 52
i 11 402.739726 0.10274 35 86
i 7 402.739726 0.205479 64 43
i 11 402.945205 0.10274 46 47
i 11 403.047945 0.10274 42 52
i 7 403.150685 0.205479 71 43
i 2 403.356164 0.10274 40 70
i 11 403.458904 0.10274 42 52
i 11 403.561644 0.10274 35 86
i 7 403.561644 0.205479 67 43
i 11 403.767123 0.10274 46 47
i 11 403.869863 0.10274 42 52
i 11 403.972603 0.10274 38 62
i 7 403.972603 0.205479 71 43
i 2 404.178082 0.10274 40 70
i 11 404.280822 0.10274 42 52
i 11 404.383562 0.10274 35 86
i 12 404.383562 3.082192 52 37
i 7 404.383562 0.205479 64 43
i 11 404.589041 0.10274 46 47
i 11 404.691781 0.10274 42 52
i 7 404.794521 0.205479 71 43
i 2 405 0.10274 40 70
i 11 405.10274 0.10274 42 52
i 11 405.205479 0.10274 35 86
i 7 405.205479 0.205479 67 43
i 11 405.410959 0.10274 46 47
i 11 405.513699 0.10274 42 52
i 7 405.616438 0.205479 71 43
i 2 405.821918 0.10274 40 70
i 11 405.924658 0.10274 42 52
i 11 406.027397 0.10274 35 86
i 7 406.027397 0.205479 64 43
i 11 406.232877 0.10274 46 47
i 11 406.335616 0.10274 42 52
i 7 406.438356 0.205479 71 43
i 2 406.643836 0.10274 40 70
i 11 406.746575 0.10274 42 52
i 11 406.849315 0.10274 35 86
i 7 406.849315 0.205479 67 43
i 11 407.054795 0.10274 46 47
i 11 407.157534 0.10274 42 52
i 7 407.260274 0.205479 71 43
i 2 407.465753 0.10274 40 70
i 11 407.568493 0.10274 42 52
i 11 407.671233 0.10274 35 86
i 12 407.671233 3.082192 52 37
i 7 407.671233 0.205479 64 43
i 11 407.876712 0.10274 46 47
i 7 408.082192 0.205479 71 43
i 11 408.493151 0.10274 35 86
i 7 408.493151 0.205479 67 43
i 11 408.69863 0.10274 46 47
i 7 408.90411 0.205479 71 43
i 11 409.315068 0.10274 35 86
i 7 409.315068 0.205479 64 43
i 11 409.520548 0.10274 46 47
i 7 409.726027 0.205479 71 43
i 11 410.136986 0.10274 35 86
i 7 410.136986 0.205479 67 43
i 11 410.342466 0.10274 46 47
i 7 410.547945 0.205479 71 43
i 12 410.958904 2.054795 52 25
i 12 410.958904 2.054795 55 25
i 12 410.958904 2.054795 59 25
i 11 411.164384 0.10274 46 47
i 11 411.986301 0.10274 46 47
i 11 412.808219 0.10274 46 47
i 11 413.630137 0.10274 46 47
i 12 414.246575 2.054795 52 25
i 12 414.246575 2.054795 55 25
i 12 414.246575 2.054795 59 25
f 0 422.821918
</CsScore>
</CsoundSynthesizer>
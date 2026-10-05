<CsoundSynthesizer>
<CsOptions>
-odac -d
</CsOptions>
<CsInstruments>
sr = 48000
ksmps = 32
nchnls = 2
0dbfs = 1

instr 1
  aEnv linseg 0, 0.02, 0.12, p3 - 0.12, 0.12, 0.1, 0
  aTone oscili aEnv, p4
  outs aTone, aTone
endin
</CsInstruments>
<CsScore>
; A quiet, eight-second sequence. Both speakers receive the same signal.
i 1 0 2 261.6256
i 1 2 2 329.6276
i 1 4 2 391.9954
i 1 6 2 523.2511
e
</CsScore>
</CsoundSynthesizer>

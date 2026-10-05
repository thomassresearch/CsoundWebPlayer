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
  aEnvelope linseg 0, 0.02, 0.12, p3 - 0.07, 0.12, 0.05, 0
  aTone oscili aEnvelope, p4
  out aTone, aTone
endin
</CsInstruments>
<CsScore>
i 1 0 1 440
i 1 1.2 1 550
i 1 2.4 1.5 660
e
</CsScore>
</CsoundSynthesizer>

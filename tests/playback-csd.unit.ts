import assert from 'node:assert/strict';
import test from 'node:test';
import { prepareCsdForPlayback } from '../src/playback-csd.ts';

test('rate overrides leave header assignments, local setksmps, strings and score intact', () => {
  const source = `<CsoundSynthesizer>
<CsOptions>
-r 96000 -k 96000 --ksmps=1 ; keep this comment
</CsOptions>
<CsInstruments>
sr = 96000
ksmps = 1
opcode local, a, 0
  setksmps 1
  Slabel = "sr = 22050; ksmps = 2"
  aTone oscili 0.1, 440
  xout aTone
endop
</CsInstruments>
<CsScore>
; sr = 22050 and ksmps = 2 are only comments here
e
</CsScore>
</CsoundSynthesizer>`;
  const override = '\n--sample-rate=48000 --control-rate=750 --ksmps=64\n';
  const prepared = prepareCsdForPlayback(source);
  assert.equal(prepared.replace(override, ''), source);
  assert.match(prepared, /keep this comment\n\n--sample-rate=48000/);
});

test('missing CsOptions is added without replacing fake tags in XML comments', () => {
  const source = '<!-- Example: <CsOptions>ignore me</CsOptions><CsInstruments> -->\r\n<CsoundSynthesizer>\r\n<CsInstruments>\r\nksmps = 1\r\n</CsInstruments>\r\n<CsScore>e</CsScore>\r\n</CsoundSynthesizer>';
  const inserted = '<CsOptions>\n--sample-rate=48000 --control-rate=750 --ksmps=64\n</CsOptions>\n';
  assert.equal(prepareCsdForPlayback(source).replace(inserted, ''), source);
});

test('an XML comment containing option tags does not receive the override', () => {
  const comment = '<!-- <CsOptions>--sample-rate=22050</CsOptions> -->';
  const source = `${comment}\n<CsoundSynthesizer><CsOptions>-d</CsOptions><CsInstruments>ksmps = 1</CsInstruments><CsScore>e</CsScore></CsoundSynthesizer>`;
  const prepared = prepareCsdForPlayback(source);
  assert.ok(prepared.startsWith(comment));
  assert.match(prepared, /<CsOptions>-d\n--sample-rate=48000 --control-rate=750 --ksmps=64\n<\/CsOptions>/);
});

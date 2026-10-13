import { test } from 'node:test';
import assert from 'node:assert/strict';
import { stkOpcodes } from '../src/stk-detection.ts';

test('STK detection finds opcode and function syntax, deduplicating names', () => {
  assert.deepEqual(stkOpcodes('a1 STKBowed 220, .5\na2 = STKModalBar(440, .2)\na3 STKBowed 330,.5'), ['STKBowed', 'STKModalBar']);
});
test('STK detection ignores strings, comments, prefixes, header and score', () => {
  assert.deepEqual(stkOpcodes(`<CsInstruments>
; STKBowed
// STKFlute
/* STKModalBar */
Sname = "STKBowed \\" STKFlute"
Stext = {{ STKPlucked }}
a1 MY_STKBowed 1
</CsInstruments><CsScore>; STKBowed</CsScore>`), []);
});

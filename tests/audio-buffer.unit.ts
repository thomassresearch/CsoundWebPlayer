import assert from 'node:assert/strict';
import test from 'node:test';
import { audioBufferSettings } from '../src/audio-buffer.ts';
import { createQueue, nextRequest, receivePacket, renderQueue, stopQueue } from '../src/csound-buffer-worklet.js';

test('buffer presets preserve default timing and allocate enough capacity for large queues', () => {
  assert.deepEqual(audioBufferSettings('50'), { targetFrames: 2048, prefillFrames: 8192, capacity: 16384 });
  assert.deepEqual(audioBufferSettings('500'), { targetFrames: 24064, prefillFrames: 24064, capacity: 65536 });
  assert.deepEqual(audioBufferSettings('5000'), { targetFrames: 240000, prefillFrames: 240000, capacity: 524288 });
  assert.throws(() => audioBufferSettings('100'));
});

test('queue wraps packets correctly, prefills silently and allows only one outstanding request', () => {
  const queue = createQueue(1, { targetFrames: 8, prefillFrames: 8, capacity: 16 });
  queue.read = 12;
  const output = [new Float32Array(4)];
  const initial = renderQueue(queue, output);
  assert.equal(initial.becameReady, false);
  assert.deepEqual([...output[0]], [0, 0, 0, 0]);
  assert.deepEqual(initial.request, { numFrames: 8, readIndex: 12 });
  assert.equal(nextRequest(queue), undefined);
  receivePacket(queue, { audioPacket: [Float64Array.from([1, 2, 3, 4, 5, 6, 7, 8])], numFrames: 8, readIndex: 12 });
  const started = renderQueue(queue, output);
  assert.equal(started.becameReady, true);
  assert.deepEqual([...output[0]], [1, 2, 3, 4]);
  assert.deepEqual(started.request, { numFrames: 4, readIndex: 4 });
  assert.equal(renderQueue(queue, output).request, undefined);
  assert.deepEqual([...output[0]], [5, 6, 7, 8]);
  receivePacket(queue, { audioPacket: [Float64Array.from([9, 10, 11, 12])], numFrames: 4, readIndex: 4 });
  renderQueue(queue, output);
  assert.deepEqual([...output[0]], [9, 10, 11, 12]);
});

test('EOF before prefill plays a short score completely and reports drained only once', () => {
  const queue = createQueue(1, audioBufferSettings('5000'));
  const request = nextRequest(queue)!;
  assert.equal(request.numFrames, 8192);
  receivePacket(queue, { audioPacket: [new Float64Array(256).fill(0.25)], numFrames: 256, readIndex: 0, playerEnd: true });
  const output = [new Float32Array(128)];
  const first = renderQueue(queue, output);
  assert.equal(first.becameReady, true);
  assert.equal(first.drained, false);
  assert.equal(first.request, undefined);
  assert.ok(output[0].every((value) => value === 0.25));
  assert.equal(renderQueue(queue, output).drained, true);
  assert.ok(output[0].every((value) => value === 0.25));
  assert.equal(renderQueue(queue, output).drained, false);
  assert.equal(queue.underruns, 0);
});

test('large queues batch refills instead of messaging for every Web Audio quantum', () => {
  const queue = createQueue(1, audioBufferSettings('500'));
  queue.ready = true;
  queue.available = queue.targetFrames;
  const output = [new Float32Array(128)];
  for (let quantum = 0; quantum < 15; quantum++) assert.equal(renderQueue(queue, output).request, undefined);
  assert.equal(renderQueue(queue, output).request?.numFrames, 2048);
  assert.equal(nextRequest(queue), undefined);
});

test('Stop fades at most 128 frames and discards the remaining queued seconds', () => {
  const queue = createQueue(1, audioBufferSettings('5000'));
  nextRequest(queue);
  receivePacket(queue, { audioPacket: [new Float64Array(8192).fill(0.5)], numFrames: 8192, readIndex: 0 });
  assert.equal(stopQueue(queue), 128);
  const output = [new Float32Array(128)];
  assert.equal(renderQueue(queue, output).request, undefined);
  assert.ok(output[0][0] > 0);
  assert.equal(output[0][127], 0);
  renderQueue(queue, output);
  assert.ok(output[0].every((value) => value === 0));
});

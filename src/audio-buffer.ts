import { PLAYBACK_SAMPLE_RATE } from './playback-csd.ts';

export function audioBufferSettings(value: string) {
  if (!['50', '500', '5000'].includes(value)) throw new Error('Choose an audio buffer of 50, 500 or 5000 ms.');
  // Keep the original ~43 ms queue and startup prefill for the default.
  const targetFrames = value === '50' ? 2048 : Math.ceil(Number(value) * PLAYBACK_SAMPLE_RATE / 1000 / 128) * 128;
  const prefillFrames = value === '50' ? 8192 : targetFrames;
  const capacity = 2 ** Math.ceil(Math.log2(Math.max(targetFrames, prefillFrames) * 2));
  return { targetFrames, prefillFrames, capacity };
}

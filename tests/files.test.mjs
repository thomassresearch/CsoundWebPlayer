import assert from 'node:assert/strict';
import { test } from 'node:test';
import { assetPath, validateAssets } from '../src/files.ts';

test('asset paths preserve case and support relative subdirectories', () => {
  assert.equal(assetPath('samples/Kick.wav'), 'samples/Kick.wav');
  assert.equal(assetPath('samples\\Kick.wav'), 'samples/Kick.wav');
});
test('asset paths reject ambiguous paths, traversal and host filenames', () => {
  for (const path of ['', '/etc/file', '../file', 'a/../b', './file', 'a//b', 'C:\\a.wav', 'https://host/a', 'a\0b']) {
    assert.throws(() => assetPath(path));
  }
});
test('assets cannot overwrite each other or collide with a directory', () => {
  const assets = (...paths) => paths.map((path) => ({ path }));
  assert.throws(() => validateAssets(assets('a.wav', 'a.wav')), /Duplicate/);
  assert.throws(() => validateAssets(assets('a\\b.wav', 'a/b.wav')), /Duplicate/);
  assert.throws(() => validateAssets(assets('samples', 'samples/kick.wav')), /directory/);
  assert.doesNotThrow(() => validateAssets(assets('samples/a.wav', 'samples/b.wav')));
});

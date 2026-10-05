export const PLAYBACK_SAMPLE_RATE = 48000;
export const PLAYBACK_KSMPS = 64;

const options = `--sample-rate=${PLAYBACK_SAMPLE_RATE} --control-rate=${PLAYBACK_SAMPLE_RATE / PLAYBACK_KSMPS} --ksmps=${PLAYBACK_KSMPS}`;

/** Use Csound's header overrides; preserve orchestra/score and local setksmps. */
export function prepareCsdForPlayback(source: string): string {
  // Ignore example tags inside XML comments without changing source offsets.
  const searchable = source.replace(/<!--[\s\S]*?-->/g, (comment) => ' '.repeat(comment.length));
  const opening = /<CsOptions\s*>/i.exec(searchable);
  if (opening) {
    const from = opening.index + opening[0].length;
    const closing = /<\/CsOptions\s*>/i.exec(searchable.slice(from));
    if (!closing) throw new Error('CSD has an unclosed CsOptions section.');
    const at = from + closing.index;
    // A fresh line ends any trailing option comment. Last rate flags win.
    return `${source.slice(0, at)}\n${options}\n${source.slice(at)}`;
  }
  const instruments = /<CsInstruments\s*>/i.exec(searchable);
  if (!instruments) throw new Error('CSD has no CsInstruments section.');
  return `${source.slice(0, instruments.index)}<CsOptions>\n${options}\n</CsOptions>\n${source.slice(instruments.index)}`;
}

export const PLAYBACK_SAMPLE_RATE = 48000;
export const PLAYBACK_KSMPS = 64;
export const KSMPS_VALUES = [1, 16, 32, 64, 128] as const;

/** Use Csound's header overrides; preserve orchestra/score and local setksmps. */
export function prepareCsdForPlayback(source: string, ksmps: number = PLAYBACK_KSMPS): string {
  if (!KSMPS_VALUES.some((value) => value === ksmps)) throw new Error('Choose ksmps 1, 16, 32, 64 or 128.');
  const options = `--sample-rate=${PLAYBACK_SAMPLE_RATE} --control-rate=${PLAYBACK_SAMPLE_RATE / ksmps} --ksmps=${ksmps}`;
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

/** Inspect code, not quoted strings, XML/Csound comments or the score. */
export function stkOpcodes(csd: string): string[] {
  const searchable = csd.replace(/<!--[\s\S]*?-->/g, ' ');
  const orchestra = /<CsInstruments\b[^>]*>([\s\S]*?)<\/CsInstruments\s*>/i.exec(searchable)?.[1] ?? searchable;
  const code = orchestra.replace(/<!--[\s\S]*?-->|\/\*[\s\S]*?\*\/|\{\{[\s\S]*?\}\}|"(?:\\.|[^"\\])*"|;[^\r\n]*|\/\/[^\r\n]*/g, ' ');
  return [...new Set(code.match(/\bSTK[A-Za-z][A-Za-z0-9_]*\b/g) ?? [])].sort();
}

// Add CSD files to public/examples/ and register them here.
export const examples = [
  { filename: 'HardTrance.csd', title: 'HardTrance' },
  { filename: 'Evening_at_the_Lake.csd', title: 'Evening at the Lake' },
  { filename: 'Sad_Mad_Cello_Version_2.csd', title: 'Sad Mad Cello — Version 2' },
] as const;

// Orchestron exports a leading XML comment. Show it as plain text, never HTML.
export function headerComment(csd: string): string {
  return /^\s*<!--([\s\S]*?)-->/.exec(csd)?.[1]?.trim() ?? '';
}

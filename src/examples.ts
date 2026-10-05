// Add CSD files to public/examples/ and register them here.
export const examples = [
  { filename: 'HardTrance.csd', title: 'HardTrance' },
  { filename: 'Evening_at_the_Lake.csd', title: 'Evening at the Lake' },
] as const;

// Orchestron exports a leading XML comment. Show it as plain text, never HTML.
export function headerComment(csd: string): string {
  return /^\s*<!--([\s\S]*?)-->/.exec(csd)?.[1]?.trim() ?? '';
}

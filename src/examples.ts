// Add CSDs and their supporting files to public/examples/ and register them here.
type Example = { filename: string; title: string; assets?: readonly string[] };
export const examples: readonly Example[] = [
  { filename: 'HardTrance.csd', title: 'HardTrance' },
  { filename: 'Evening_at_the_Lake.csd', title: 'Evening at the Lake' },
  { filename: 'Sad_Mad_Cello_Version_2.csd', title: 'Sad Mad Cello — Version 2' },
  {
    filename: 'After_Hours_One_More_Chorus.csd',
    title: 'After Hours, One More Chorus',
    assets: ['9523d0c6-6d27-48c3-83e6-5e1902bf6834.sf2'],
  },
];

// Orchestron exports a leading XML comment. Show it as plain text, never HTML.
export function headerComment(csd: string): string {
  return /^\s*<!--([\s\S]*?)-->/.exec(csd)?.[1]?.trim() ?? '';
}

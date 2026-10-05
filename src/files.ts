export interface Asset {
  file: File;
  path: string;
}

// Keep user files inside the in-memory root; never interpret host/URL paths.
export function assetPath(value: string): string {
  const path = value.replaceAll('\\', '/');
  if (!path || path.startsWith('/') || /[:\x00-\x1f]/.test(path) ||
      path.split('/').some((part) => !part || part === '.' || part === '..')) {
    throw new Error(`Invalid asset path: ${value}. Use a relative path such as samples/kick.wav.`);
  }
  return path;
}

export function validateAssets(assets: Asset[]): void {
  const paths = assets.map((asset) => assetPath(asset.path));
  const seen = new Set<string>();
  for (const path of paths) {
    if (seen.has(path)) throw new Error(`Duplicate asset path: ${path}`);
    seen.add(path);
  }
  for (const path of paths) {
    const parts = path.split('/');
    parts.pop();
    while (parts.length) {
      const parent = parts.join('/');
      if (seen.has(parent)) throw new Error(`Asset ${parent} is also used as a directory.`);
      parts.pop();
    }
  }
}

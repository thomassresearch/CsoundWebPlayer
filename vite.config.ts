import { defineConfig } from 'vite';

export default defineConfig({
  base: '/CsoundWebPlayer/',
  // The package ships its WASM and worker/worklet sources inside this ESM bundle.
  // Keep it intact: no CDN, runtime asset copy, or cross-origin isolation needed.
  optimizeDeps: { exclude: ['@csound/browser'] },
  build: { target: 'es2022' },
});

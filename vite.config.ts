import { defineConfig } from 'vite';
import { csoundBufferPlugin } from './build/csound-buffer-plugin.ts';

export default defineConfig({
  base: '/CsoundWebPlayer/',
  plugins: [csoundBufferPlugin()],
  // Ensure the same buffering transform runs in npm run dev.
  optimizeDeps: { exclude: ['@csound/browser'] },
  // Deliberately no COOP/COEP headers: test the same non-SAB mode as Pages.
});

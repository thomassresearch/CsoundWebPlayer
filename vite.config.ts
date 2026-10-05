import { defineConfig } from 'vite';

export default defineConfig({
  base: '/CsoundWebPlayer/',
  // Deliberately no COOP/COEP headers: test the same non-SAB mode as Pages.
});

import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

// https://vite.dev/config/
export default defineConfig({
  plugins: [react()],
  build: {
    // Output en la raíz del proyecto para que Hostinger lo encuentre en dist/
    outDir: '../dist',
    emptyOutDir: true,
  },
})

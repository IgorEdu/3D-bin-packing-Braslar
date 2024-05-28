import { defineConfig } from 'vite'

export default defineConfig({
    base: "/3D-bin-packing/",
    build: {
        chunkSizeWarningLimit: 1600
      }
})
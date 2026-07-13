import { defineConfig } from 'vite'

import react from '@vitejs/plugin-react'

// https://vite.dev/config/
export default defineConfig({
  plugins: [react()],
})


// import { defineConfig } from 'vite'
// import react from '@vitejs/plugin-react'

// // https://vite.dev/config/
// export default defineConfig({
//   plugins: [react()],
//   server:  {
//         allowedHosts: [
//                 '192.168.133.15',
//                 'mgu-genrentas-migracion.intranet',
//                 'mgu-genrentas-migracion.nomadesoft.com.ar'
//         ]
//   }
// })

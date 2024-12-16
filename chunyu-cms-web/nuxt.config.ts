export default defineNuxtConfig({
  // @ts-ignore
  devtools: true,
  experimental: {
    // @ts-ignore
    inlineSSRStyles: false
  },
  css: ['@unocss/reset/tailwind-compat.css', 'element-plus/dist/index.css', 'element-plus/theme-chalk/display.css'],
  modules: ['@element-plus/nuxt', '@unocss/nuxt'],
  vite: {
    css: {
      preprocessorOptions: {
        scss: {
          api: 'modern-compiler' // 修复 Deprecation Warning: The legacy JS API is deprecated and will be removed in Dart Sass 2.0.0.
        }
      }
    }
  },
  app: {
    head: {
      title: '淳渔CMS-V2',
      meta: [
        { charset: 'utf-8' },
        { name: 'viewport', content: 'width=device-width, initial-scale=1' },
        {
          name: 'keywords',
          content: ''
        },
        {
          name: 'description',
          content: ''
        }
      ],
      link: [{ rel: 'icon', type: 'image/x-icon', href: '/favicon.ico' }],
      script: []
    }
  },
  nitro: {
    esbuild: {
      options: {
        target: 'esnext'
      }
    },
    storage: {
      redis: {
        driver: 'redis',
        port: 6379, // Redis port
        host: '127.0.0.1', // Redis host
        username: '', // needs Redis >= 6
        password: '',
        db: 0 // Defaults to 0
      }
    }
  },
  runtimeConfig: {
    mysql: {
      host: process.env.DATABASE_HOST,
      port: Number(process.env.DATABASE_PORT) || 3306,
      user: process.env.DATABASE_USERNAME,
      password: process.env.DATABASE_PASSWORD,
      database: process.env.DATABASE_DB
    },
    jwt: {
      secret: process.env.JWT_SECRET
    },
    uploadPath: '/uploads',
    imgHost: 'http://localhost:3000'
  },
  compatibilityDate: '2024-11-04'
});

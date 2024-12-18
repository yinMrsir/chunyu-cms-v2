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
      // redis连接配置
      redis: {
        driver: 'redis',
        port: process.env.REDIS_PORT || 6379, // Redis port
        host: process.env.REDIS_HOST || '127.0.0.1', // Redis host
        username: process.env.REDIS_USERNAME || '', // needs Redis >= 6
        password: process.env.REDIS_PASSWORD || '',
        db: process.env.REDIS_DB || 0, // Defaults to 0
        ttl: process.env.REDIS_TTL || 60 * 60 * 24 // 默认存储一天
      }
    }
  },
  runtimeConfig: {
    // mysql连接配置
    mysql: {
      host: process.env.DATABASE_HOST || 'localhost',
      port: Number(process.env.DATABASE_PORT) || 3306,
      user: process.env.DATABASE_USERNAME || 'root',
      password: process.env.DATABASE_PASSWORD || '123456',
      database: process.env.DATABASE_DB || 'chunyu-cms-v2'
    },
    // jwt加密
    jwt: {
      secret: process.env.JWT_SECRET || 'chunyu-cms-v2'
    },
    // 上传文件保存路径
    uploadPath: '/uploads',
    // 上传图片访问host
    imgHost: 'http://localhost:3000'
  },
  compatibilityDate: '2024-11-04'
});

import path from 'path';

export default defineNuxtConfig({
  // @ts-ignore
  devtools: true,
  experimental: {
    // @ts-ignore
    inlineSSRStyles: false
  },
  css: [
    '@unocss/reset/tailwind-compat.css',
    'element-plus/dist/index.css',
    'element-plus/theme-chalk/dark/css-vars.css',
    '@/assets/css/style.css',
    '@/assets/css/short.scss'
  ],
  modules: ['@element-plus/nuxt', '@unocss/nuxt', '@nuxt/image'],
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
      htmlAttrs: {
        class: 'dark'
      },
      title: '淳渔影视CMS-Nodejs快速搭建影视类网站',
      meta: [
        { charset: 'utf-8' },
        {
          name: 'viewport',
          content: 'width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no'
        },
        { name: 'keywords', content: '淳渔影视,最新电影，最新电视剧' },
        {
          name: 'description',
          content: '淳渔影视更新最快的影视网站之一，收集了全网最新高分电影,电视剧,综艺,动漫等热播剧目免费在线观看！'
        }
      ],
      link: [{ rel: 'icon', type: 'image/x-icon', href: '/favicon.ico' }],
      script: [
        {
          innerHTML: `var _hmt = _hmt || [];
          (function() {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?9edadaa49ae4e9c979c6724865c04b05";
            var s = document.getElementsByTagName("script")[0]; 
            s.parentNode.insertBefore(hm, s);
          })();`
        }
      ]
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
    },
    // 注意生产环境需要配置nginx代理，详见nginx.conf
    publicAssets:
      process.env.NODE_ENV === 'development'
        ? [
            {
              dir: path.resolve(__dirname, 'uploads'),
              baseURL: '/uploads'
            },
            {
              dir: path.resolve(__dirname, 'admin'),
              baseURL: '/admin'
            }
          ]
        : []
  },
  runtimeConfig: {
    public: {
      globalTitle: '淳渔影视',
      serverHost: process.env.SERVER_HOST || 'http://localhost:3000'
    },
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
    imgHost: process.env.IMG_HOST || 'http://localhost:3000',
    // 是否演示环境
    isDemoEnvironment: process.env.IS_DEMO_ENVIRONMENT === 'true',
    // 邮箱配置
    email: {
      service: process.env.USER_EMAIL_SERVICE || 'QQ',
      auth: {
        user: process.env.FORM_USER_EMAIL || '',
        pass: process.env.FORM_USER_EMAIL_PASSWORD || ''
      }
    },
    // 微信支付配置
    wechatPay: {
      appId: process.env.WECHAT_PAY_APP_ID || '',
      mchId: process.env.WECHAT_PAY_MCH_ID || '',
      publicKey: process.env.WECHAT_PAY_PUBLIC_KEY || '',
      privateKey: process.env.WECHAT_PAY_PRIVATE_KEY || ''
    }
  },
  compatibilityDate: '2024-11-04'
});

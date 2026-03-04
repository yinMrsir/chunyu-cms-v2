# 淳渔 CMS V2

## 项目简介

淳渔是一款快速搭建影视类网站的系统，它用户端和服务端都基于[nuxt4](https://nuxt.com/)开发 ,管理端基于 [vue3](https://cn.vuejs.org/) 和 [element-ui](https://element.eleme.cn/#/zh-CN) ，数据库采用 mysql ，缓存采用 redis。

V2 相比[V1 版本](https://github.com/yinMrsir/chunyu-cms)使用[DrizzleOrm](https://orm.drizzle.team/)替换了 typeOrm，我想你会更容易上手操作。但请注意不支持 mysql5.x，建议使用 mysql8.x。

## 核心功能

- 用户端界面：采用 Nuxt4 构建，提供流畅的用户体验并有良好的 SEO 支持。
- 管理端界面：基于 Vue3 和 Element-UI，方便管理员进行网站内容的管理和更新。
- 视频资源管理：可自行在后台上传视频资源或添加第三方资源，如魔都资源等。
- 影视评分系统：用户可以对影视作品进行评分和评论。
- 影视榜单：根据影片热度排名，实时展示周榜、月榜、年榜。
- 金币商城：用户可以购买金币，用于充值、观看付费视频等，为网站提供盈利渠道。
- 兑换券：后台批量添加兑换券，用户进行兑换，获得金币。
- 邀请好友得金币功能：用户邀请好友注册，好友注册成功后，系统会发放邀请者奖励和被邀请者奖励。
- 短视频：支持短视频的播放，用户可以上传短视频。

## 在线体验(网络带宽有限，请耐心等待 🍵)

- [用户端演示地址](https://cms.yinchunyu.com)
- [管理端演示地址](https://cms.yinchunyu.com/admin)
- 源码地址 1: [GitHub](https://github.com/yinMrsir/chunyu-cms-v2)
- 源码地址 2: [gitcode](https://gitcode.com/a542968439/chunyu-cms-v2)

## 为什么有 V2 版本？

考虑到大部分使用者为个人独立开发，Nuxt3 也可以开发服务端的功能，所有把之前的 NestJS 服务端移除了，改用到 Nuxt 实现。这样就可以不用启动两个 Node 服务了。

也考虑了是否后续会将后台管理系统也合并，但目前没有计划，、

- 第一，管理端不需要 SEO。
- 第二，如何需要集成到一个服务中，你可以使用`pnpm run build:single`，然后通过 nginx 代理到`dist`目录即可，这样只需要一个服务，如演示地址：https://cms.yinchunyu.com/admin。
- 第三，管理端移入 nuxt 中，会要消耗大量时间，先把时间用于其他地方，😂。

当然，NestJs 有它的优势，也有很多基于它的模块，在有些功能上实现会更方便，如何你喜欢 NestJs，可以继续使用[之前的版本](https://github.com/yinMrsir/chunyu-cms)。

## 使用前

如未安装`node`，`mysql`数据库和`redis`请先自行安装。node20.x，mysql8.x，redis7。或[点击此处服务器环境安装流程](服务器环境安装流程.md)

**mysql**和**redis**配置你可以到`chunyu-cms-web/nuxt.config.ts`进行配置。你也可以创建一个`chunyu-cms-web/.env`文件

```dotenv
DATABASE_USERNAME=
DATABASE_PASSWORD=
DATABASE_HOST=127.0.0.1
DATABASE_PORT=3306
DATABASE_DB=chunyu-cms-v2

JWT_SECRET=chunyu-cms-v2
# redis配置
REDIS_HOST=127.0.0.1
REDIS_PORT=6379
REDIS_USERNAME=
REDIS_PASSWORD=
REDIS_DB=0
# 是否演示环境
IS_DEMO_ENVIRONMENT=false
# 服务端接口域名（支付回调域名时使用）
SERVER_HOST=http://localhost:3000
# 图片、视频文件等静态资源域名
IMG_HOST=http://localhost:3000
# 用户发送邮件的邮箱
FORM_USER_EMAIL=
# 用户发送邮件的邮箱密码 注意此处为qq邮箱的授权码，不是qq邮箱的密码
FORM_USER_EMAIL_PASSWORD=
# 使用 Gmail 服务，你可以使用其他服务，如 'QQ'
USER_EMAIL_SERVICE=QQ

# 微信支付：直连商户申请的公众号或移动应用appid
WECHAT_PAY_APP_ID=
# 微信支付：商户号
WECHAT_PAY_MCH_ID=
# 公钥文件绝对路径
WECHAT_PAY_PUBLIC_KEY=
# 秘钥文件绝对路径
WECHAT_PAY_PRIVATE_KEY=

# 百度统计：百度统计的ID
BAIDU_STATISTICS_ID=
# 是否开启反调试保护
ANTI_DEBUG_ENABLED=true
```

**注意：** `mysql`和`redis`的端口号，用户名，密码，数据库名称，jwt 加密密钥等配置信息，请自行修改。

## 数据库初始化

1. 先到数据库目录下，创建数据库`chunyu-cms-v2`
2. 导入数据库文件`chunyu-cms-web/chunyu-cms-v2.sql`

## 本地开发

### 服务端和用户端同时启动

```shell
cd chunyu-cms-web
pnpm install
pnpm dev
```

启动成功后，请访问：http://localhost:3000

### 管理端启动

```shell
cd chunyu-cms-admin
pnpm install
pnpm dev
```

启动成功后，请访问：http://localhost:4000, 用户名：admin，密码：admin123

## 部署

### 方式一: 自行部署（推荐）

#### 构建管理端

执行以下命令会生成`dist`目录，可通过`nginx`指定到目录。

```shell
cd chunyu-cms-admin
pnpm isntall
pnpm build:prod
```

#### 构建服务端和用户端

```shell
cd chunyu-cms-web
pnpm isntall
pnpm build
```

构建完成后，可通过 pm2 进行部署，未安装的可执行`npm install -g pm2`安装

执行以下命令启动服务：

```shell
pm2 start pm2.config.cjs
```

nginx 配置如下：

```nginx configuration
server {
    listen 80;
    server_name your.domain.com;

    location / {
        proxy_pass http://127.0.0.1:3000/;
    }
    location /uploads {
        alias /path/to/chunyu-cms-v2/chunyu-cms-web/uploads;
    }
}

server {
    listen 80;
    server_name your-admin.domain.com;

    location / {
        root  /path/to/chunyu-cms-v2/chunyu-cms-admin/dist;
        index index.html;
        try_files $uri $uri/ /index.html;
    }

    location /api/ {
        proxy_pass http://127.0.0.1:3000/api/;
    }
}
```

nginx 更详细配置可[查看](nginx.conf)

Nuxt 项目部署文档：https://nuxt.com/docs/getting-started/deployment

### 方式二: 命令部署（不推荐）

执行以下命令：

```shell
node bin/deploy.js
```

部署完成后可以访问：

用户端：http://localhost:3000/

管理端：http://localhost:3000/admin/
用户名：admin，密码：admin123

此方式会把管理端代码拷贝到`chunyu-cms-web/public/admin`目录中，此方式路由使用的是 hash 模式。

⚠️ 注意：修改管理端代码部署需要再次执行`node bin/deploy.js`命令：

```nginx configuration
server {
    listen 80;
    server_name your.domain.com;

    location / {
        proxy_pass http://127.0.0.1:3000/;
    }
    location /uploads {
        alias /path/to/chunyu-cms-v2/chunyu-cms-web/uploads;
    }
}
```

部署后访问演示地址：https://cms.yinchunyu.com/admin

## 支付相关

微信支付库：https://github.com/klover2/wechatpay-node-v3-ts

微信支付开发文档：https://pay.weixin.qq.com/doc/v3/merchant/4012791874

## drizzle ORM 同步数据库结构

创建 drizzle.config.ts 文件

```json
{
  "dialect": "mysql",
  "out": "./server/db/migrations",
  "schema": "./server/db/schema/*/**",
  "dbCredentials": {
    "url": "mysql://用户名:密码@ip地址:3306/chunyu-cms-v2"
  }
}
```

生成数据库结构

```
pnpm generate
```

同步数据库结构

```
pnpm sql-push
```

## 有任何疑问可添加微信

微信：qianduanlaoying

<img src="https://raw.githubusercontent.com/yinMrsir/chunyu-cms-v2/refs/heads/main/wx.png" width="300" height="409" />

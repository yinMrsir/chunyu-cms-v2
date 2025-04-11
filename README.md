# 注意: 当前仅能使用管理端功能，用户端界面进行中。。。

## 项目简介
淳渔是一款快速搭建影视类网站的系统，它用户端基于[nuxt3](https://nuxt.com/)和 [element-ui](https://element.eleme.cn/#/zh-CN) ,管理端基于 [vue3](https://cn.vuejs.org/) 和 [element-ui](https://element.eleme.cn/#/zh-CN) ，数据库采用 mysql ，缓存采用 redis。

当前版本使用[DrizzleOrm](https://orm.drizzle.team/)替换了typeOrm，我想你会更容易上手操作。但请注意不支持mysql5.x，建议使用mysql8.x。

## 在线体验

- 源码地址: [GitHub](https://github.com/yinMrsir/chunyu-cms-v2) | [Gitee](https://gitee.com/chunyu-cms/chunyu-cms-v2)

<img src="https://gitee.com/chunyu-cms/chunyu-cms-v2/raw/main/1.png"/>

<img src="https://gitee.com/chunyu-cms/chunyu-cms-v2/raw/main/2.png" />

## 为什么有V2版本？
考虑到大部分使用者为个人独立开发，Nuxt3也可以开发服务端的功能，所有把之前的NestJS服务端移除了，改用到Nuxt实现。这样就可以不用启动两个Node服务了。

也考虑了是否后续会将后台管理系统也合并，但目前没有计划，、
* 第一，管理端不需要SEO。
* 第二，如何需要集成到一个服务中，完全可以把后台管理系统打包文件移入Nuxt目录中，这样只需要一个服务即可。如下面的[部署方式一](#方式一-命令部署)
* 第三，管理端移入nuxt中，会要消耗大量时间，先把时间用于其他地方，😂。

当然，NestJs有它的优势，也有很多基于它的模块，在有些功能上实现会更方便，如何你喜欢NestJs，可以继续使用之前的版本。


## 使用前

如未安装`mysql`数据库和`redis`请先自行安装。mysql8.x，redis7。或[点击此处服务器环境安装流程](服务器环境安装流程.md)

**mysql**和**redis**配置你可以到`chunyu-cms-web/nuxt.config.ts`进行配置。你也可以创建一个`chunyu-cms-web/.env`文件

```dotenv
DATABASE_USERNAME=root
DATABASE_PASSWORD=123456
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
# 图片域名
IMG_HOST=http://localhost:3000
```

**注意：** `mysql`和`redis`的端口号，用户名，密码，数据库名称，jwt加密密钥，请自行修改。

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

### 管理端启动

```shell
cd chunyu-cms-admin
pnpm install
pnpm dev
```

启动成功后，请访问：http://localhost:4000, 用户名：admin，密码：admin123

## 部署

### 方式一: 命令部署

执行以下命令：
```shell
node bin/deploy.js
```

部署完成后可以访问：

用户端：http://localhost:3000/

管理端：http://localhost:3000/admin/
用户名：admin，密码：admin123

此方式会把管理端代码拷贝到`chunyu-cms-web/admin`目录中，但此方式路由使用的是hash模式。

⚠️注意：你仍需要通过nginx设置代理到子目录, nginx如下配置：

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
    location /admin {
        alias /path/to/chunyu-cms-v2/chunyu-cms-web/admin;
    }
}
```

### 方式二：自行部署

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

构建完成后，可通过pm2进行部署，未安装的可执行`npm install -g pm2`安装

执行以下命令启动服务：
```shell
pm2 start pm2.config.cjs
```

nginx配置如下：
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
    server_name your.domain.com;
    
    location / {
        root  /path/to/chunyu-cms-v2/chunyu-cms-admin/dist;
        index index.html;
        try_files $uri $uri/ /index.html;
    }
}
```
nginx更详细配置可[查看](nginx.conf)

Nuxt项目部署文档：https://nuxt.com/docs/getting-started/deployment

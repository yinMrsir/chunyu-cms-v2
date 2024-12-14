# 注意: 开发中，当前仅能使用管理端系统模块功能。

## 项目简介
淳渔是一款快速搭建影视类网站的系统，它用户端基于[nuxt3](https://nuxt.com/)和 [element-ui](https://element.eleme.cn/#/zh-CN) ,管理端基于 [vue3](https://cn.vuejs.org/) 和 [element-ui](https://element.eleme.cn/#/zh-CN) ，数据库采用 mysql ，缓存采用 redis。

当前版本使用[DrizzleOrm](https://orm.drizzle.team/)替换了typeOrm，我想你会更容易上手操作。但请注意不支持mysql5.x，建议使用mysql8.x。

## 为什么有V2版本？
考虑到大部分使用者为个人独立开发，Nuxt3也可以开发服务端的功能，所有把之前的NestJS服务端移除了，改用到Nuxt实现。这样就可以不用启动两个Node服务了。当然，也考虑了是否后续会将后台管理系统也合并，但目前没有计划。

当然，NestJs有它的优势，也有很多基于它的模块，在有些功能上实现会更方便，如何你喜欢NestJs，可以继续使用之前的版本。

## 后续
1. 当前仅能使用系统模块相关功能，后续将整体迁移到Nuxt3。
2. 用户端界面UI重构，如果你能提供一些设计，那更好了。

* 由于利用业余时间，所有会更新较慢。

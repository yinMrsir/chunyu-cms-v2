# 注意: 开发中，当前仅能使用管理端系统模块功能。

## 项目简介
淳渔是一款快速搭建影视类网站的系统，它用户端基于[nuxt3](https://nuxt.com/)和 [element-ui](https://element.eleme.cn/#/zh-CN) ,管理端基于 [vue3](https://cn.vuejs.org/) 和 [element-ui](https://element.eleme.cn/#/zh-CN) ，数据库采用 mysql ，缓存采用 redis。

## 为什么有V2版本？
考虑到使用这大部分都是全栈开发，Nuxt3也可以开发服务端的功能，所有把之前的NestJS服务端移除了，改用到Nuxt实现。这样就可以不用启动两个Node服务了。当然，也考虑了是否后续会将后台管理系统也合并，但目前没有计划。

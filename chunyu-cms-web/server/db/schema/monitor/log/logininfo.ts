import { mysqlTable, varchar, char, datetime, text, int } from 'drizzle-orm/mysql-core';

export const loginInfoTable = mysqlTable('login_info', {
  // 访问id
  infoId: int('info_id').autoincrement().primaryKey().notNull(),

  // 用户账号
  userName: varchar('user_name', { length: 50 }).default('').notNull(),

  // 登录IP地址
  ipaddr: varchar('ipaddr', { length: 128 }).default('').notNull(),

  // 登录地点
  loginLocation: varchar('login_location', { length: 255 }).default('').notNull(),

  // 浏览器类型
  browser: varchar('browser', { length: 50 }).default('').notNull(),

  // 浏览器操作系统类型
  os: varchar('os', { length: 50 }).default('').notNull(),

  // 登录状态（0成功 1失败）
  status: char('status', { length: 1 }).default('0').notNull(),

  // 提示消息
  msg: text('msg').default('').notNull(),

  // 访问时间
  loginTime: datetime('login_time').notNull()
});

export type LoginInfo = typeof loginInfoTable.$inferSelect;
export type NewLoginInfo = typeof loginInfoTable.$inferInsert;

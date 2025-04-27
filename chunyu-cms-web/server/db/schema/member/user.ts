import { char, date, int, mysqlTable, varchar } from 'drizzle-orm/mysql-core';
import { columnsHelpers } from '../../columns.helpers';

export const memberUserTable = mysqlTable('member_user', {
  memberUserId: int('member_user_id').autoincrement().primaryKey(),
  // 邮箱
  email: varchar('email', { length: 255 }).notNull(),
  // 密码
  password: varchar('password', { length: 255 }).default(''),
  // 昵称
  nickname: varchar('nickname', { length: 255 }).notNull(),
  // 手机号码
  phonenumber: varchar('phonenumber', { length: 11 }),
  // 头像地址
  avatar: varchar('avatar', { length: 100 }).notNull(),
  // 盐加密
  salt: varchar('salt', { length: 100 }).default(''),
  // 删除标志
  delFlag: char('del_flag', { length: 1 }).default('0').notNull(),
  // 最后登录IP
  loginIp: varchar('login_ip', { length: 128 }).default(''),
  // 最后登录时间
  loginDate: date('login_date', { mode: 'date' }),
  // 通用字段
  ...columnsHelpers
});

export type MemberUser = typeof memberUserTable.$inferSelect;
export type NewMemberUser = typeof memberUserTable.$inferInsert;

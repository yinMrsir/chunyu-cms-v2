import { relations } from 'drizzle-orm';
import { int, mysqlTable, varchar, char, date } from 'drizzle-orm/mysql-core';
import { columnsHelpers } from '../../columns.helpers';
import { userToRoleTable } from './userToRole';
import { deptTable } from './dept';
import { userToPostTable } from './userToPost';

export const userTable = mysqlTable('user', {
  // 用户Id
  userId: int('user_id').autoincrement().primaryKey().notNull(),
  // 用户账号
  userName: varchar('user_name', { length: 30 }).notNull(),
  // 用户昵称
  nickName: varchar('nick_name', { length: 30 }).notNull(),
  // 用户类型
  userType: varchar('user_type', { length: 2 }).default('00'),
  // 用户邮箱
  email: varchar('email', { length: 50 }),
  // 手机号码
  phonenumber: varchar('phonenumber', { length: 11 }),
  // 用户性别
  sex: char('sex', { length: 1 }).default('0'),
  // 头像地址
  avatar: varchar('avatar', { length: 100 }).default(''),
  // 密码
  password: varchar('password', { length: 100 }).default(''),
  // 盐加密
  salt: varchar('salt', { length: 100 }).default(''),
  // 帐号状态
  status: char('status', { length: 1 }).default('0'),
  // 删除标志
  delFlag: char('del_flag', { length: 1 }).default('0'),
  // 最后登录IP
  loginIp: varchar('login_ip', { length: 128 }).default(''),
  // 最后登录时间
  loginDate: date('login_date'),
  // 部门ID
  deptId: int('dept_id').references(() => deptTable.deptId),
  // 通用字段
  ...columnsHelpers
});

export const userTableRelations = relations(userTable, ({ one, many }) => ({
  dept: one(deptTable, { fields: [userTable.deptId], references: [deptTable.deptId] }),
  userToRole: many(userToRoleTable),
  userToPost: many(userToPostTable)
}));

export type User = typeof userTable.$inferSelect;
export type NewUser = typeof userTable.$inferInsert;

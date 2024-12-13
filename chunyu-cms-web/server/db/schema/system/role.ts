import { relations } from 'drizzle-orm';
import { boolean, char, int, mysqlTable, varchar } from 'drizzle-orm/mysql-core';
import { columnsHelpers } from '../../columns.helpers';
import { roleToMenuTable } from './roleToMenu';
import { userToRoleTable } from './userToRole';

// 定义角色表结构
export const roleTable = mysqlTable('role', {
  roleId: int('role_id').primaryKey().autoincrement().notNull(),
  roleName: varchar('role_name', { length: 30 }).notNull(),
  roleKey: varchar('role_key', { length: 100 }).notNull(),
  roleSort: int('role_sort').notNull(),
  dataScope: char('data_scope', { length: 1 }).default('1'),
  menuCheckStrictly: boolean('menu_check_strictly').default(true),
  deptCheckStrictly: boolean('dept_check_strictly').default(true),
  status: char('status', { length: 1 }).notNull(),
  delFlag: char('del_flag', { length: 1 }).default('0'),
  ...columnsHelpers
});

// 定义关系
export const rolesRelations = relations(roleTable, ({ many }) => ({
  roleToMenu: many(roleToMenuTable),
  userToRole: many(userToRoleTable)
}));

// 定义角色类型
export type Role = typeof roleTable.$inferSelect;
export type NewRole = typeof roleTable.$inferInsert;

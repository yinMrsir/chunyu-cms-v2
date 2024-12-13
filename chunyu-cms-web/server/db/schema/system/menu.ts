import { int, varchar, char, mysqlTable } from 'drizzle-orm/mysql-core';
import { relations } from 'drizzle-orm';
import { columnsHelpers } from '../../columns.helpers';
import { roleToMenuTable } from './roleToMenu';

// 定义Menu表
export const menuTable = mysqlTable('menu', {
  // 菜单ID
  menuId: int('menu_id').autoincrement().primaryKey().notNull(),
  // 菜单名称
  menuName: varchar('menu_name', { length: 50 }).notNull(),
  // 显示顺序
  orderNum: int('order_num').notNull(),
  // 路由地址
  path: varchar('path', { length: 200 }).default('').notNull(),
  // 组件路径
  component: varchar('component', { length: 255 }),
  // 路由参数
  query: varchar('query', { length: 255 }),
  // 是否为外链
  isFrame: int('is_frame').default(1).notNull(),
  // 是否缓存
  isCache: char('is_cache', { length: 1 }).default('0').notNull(),
  // 菜单类型
  menuType: char('menu_type', { length: 1 }).default('').notNull(),
  // 菜单状态（显示/隐藏）
  visible: char('visible', { length: 1 }).default('0').notNull(),
  // 菜单状态（正常/停用）
  status: char('status', { length: 1 }).default('0').notNull(),
  // 权限标识
  perms: varchar('perms', { length: 100 }),
  // 菜单图标
  icon: char('icon', { length: 100 }).default('#').notNull(),
  // 父菜单ID
  parentMenuId: int('parent_menu_id').default(0),
  // 路径
  mpath: varchar('mpath', { length: 255 }),
  // 通用字段
  ...columnsHelpers
});

export const menuRelations = relations(menuTable, ({ many }) => ({
  roleToMenu: many(roleToMenuTable)
}));

export type Menu = typeof menuTable.$inferSelect;
export type NewMenu = typeof menuTable.$inferInsert;

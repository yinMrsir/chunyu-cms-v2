import { int, mysqlTable } from 'drizzle-orm/mysql-core';
import { relations } from 'drizzle-orm';
import { roleTable } from './role';
import { menuTable } from './menu';

export const roleToMenuTable = mysqlTable('role_to_menu', {
  roleId: int('role_id').references(() => roleTable.roleId),
  menuId: int('menu_id').references(() => menuTable.menuId)
});

export const roleToMenuRelations = relations(roleToMenuTable, ({ one }) => ({
  role: one(roleTable, { fields: [roleToMenuTable.roleId], references: [roleTable.roleId] }),
  menu: one(menuTable, { fields: [roleToMenuTable.menuId], references: [menuTable.menuId] })
}));

import { int, mysqlTable } from 'drizzle-orm/mysql-core';
import { relations } from 'drizzle-orm';
import { roleTable } from './role';
import { userTable } from './user';

export const userToRoleTable = mysqlTable('user_to_role', {
  userId: int('user_id').references(() => userTable.userId),
  roleId: int('role_id').references(() => roleTable.roleId)
});

export const userToRoleRelations = relations(userToRoleTable, ({ one }) => ({
  user: one(userTable, { fields: [userToRoleTable.userId], references: [userTable.userId] }),
  role: one(roleTable, { fields: [userToRoleTable.roleId], references: [roleTable.roleId] })
}));

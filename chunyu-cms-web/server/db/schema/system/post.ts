import { relations } from 'drizzle-orm';
import { int, mysqlTable, varchar } from 'drizzle-orm/mysql-core';
import { columnsHelpers } from '../../columns.helpers';
import { userTable } from './user';

export const postTable = mysqlTable('post', {
  postId: int('post_id').primaryKey().autoincrement().notNull(),
  postCode: varchar('post_code', { length: 30 }).unique().notNull(),
  postName: varchar('post_name', { length: 30 }).notNull(),
  postSort: int('post_sort').notNull(),
  status: varchar('status', { length: 1 }).notNull(),
  ...columnsHelpers
});

export const postRelations = relations(postTable, ({ many }) => ({
  users: many(userTable)
}));

export type Post = typeof postTable.$inferSelect;
export type NewPost = typeof postTable.$inferInsert;

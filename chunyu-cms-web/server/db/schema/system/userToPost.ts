import { int, mysqlTable } from 'drizzle-orm/mysql-core';
import { relations } from 'drizzle-orm';
import { userTable } from './user';
import { postTable } from './post';

export const userToPostTable = mysqlTable('user_to_post', {
  userId: int('user_id').references(() => userTable.userId),
  postId: int('post_id').references(() => postTable.postId)
});

export const userToPostRelations = relations(userToPostTable, ({ one }) => ({
  user: one(userTable, { fields: [userToPostTable.userId], references: [userTable.userId] }),
  post: one(postTable, { fields: [userToPostTable.postId], references: [postTable.postId] })
}));

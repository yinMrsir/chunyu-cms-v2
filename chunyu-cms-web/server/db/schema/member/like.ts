import { int, mysqlTable } from 'drizzle-orm/mysql-core';
import { relations } from 'drizzle-orm';
import { columnsHelpers } from '../../columns.helpers';
import { shortTable } from '../shorts/short';

export const memberLikeTable = mysqlTable('member_like', {
  memberLikeId: int('member_like_id').autoincrement().primaryKey(),
  memberUserId: int('member_user_id').notNull(),
  shortId: int('short_id').notNull(),
  ...columnsHelpers
});

export const memberLikeRelations = relations(memberLikeTable, ({ one }) => {
  return {
    short: one(shortTable, {
      fields: [memberLikeTable.shortId],
      references: [shortTable.shortId]
    })
  };
});

export type MemberLike = typeof memberLikeTable.$inferSelect;
export type NewMemberLike = typeof memberLikeTable.$inferInsert;

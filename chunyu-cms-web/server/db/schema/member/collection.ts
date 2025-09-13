import { int, mysqlTable } from 'drizzle-orm/mysql-core';
import { relations } from 'drizzle-orm';
import { columnsHelpers } from '../../columns.helpers';
import { shortTable } from '../shorts/short';

export const memberCollectionTable = mysqlTable('member_collection', {
  memberCollectionId: int('member_collection_id').autoincrement().primaryKey(),
  // 会员ID
  memberUserId: int('member_user_id').notNull(),
  // 短视频ID
  shortId: int('short_id').notNull(),
  ...columnsHelpers
});

export const memberCollectionRelations = relations(memberCollectionTable, ({ one }) => ({
  short: one(shortTable, {
    fields: [memberCollectionTable.shortId],
    references: [shortTable.shortId]
  })
}));

export type MemberCollection = typeof memberCollectionTable.$inferSelect;
export type NewMemberCollection = typeof memberCollectionTable.$inferInsert;

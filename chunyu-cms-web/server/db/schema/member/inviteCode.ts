import { int, varchar, datetime, mysqlTable, char } from 'drizzle-orm/mysql-core';
import { relations } from 'drizzle-orm';
import { columnsHelpers } from '../../columns.helpers';
import { memberUserTable } from './user';

export const memberInviteCodeTable = mysqlTable('member_invite_code', {
  memberInviteCodeId: int('member_invite_code_id').autoincrement().primaryKey(),
  // 用户ID
  memberUserId: int('member_user_id').notNull(),
  // 邀请码
  inviteCode: varchar('invite_code', { length: 8 }).notNull().unique(),
  // 邀请码状态：0-正常，1-禁用
  status: char('status', { length: 1 }).default('0').notNull(),
  // 使用次数
  useCount: int('use_count').default(0).notNull(),
  // 最大使用次数
  maxUseCount: int('max_use_count').default(0).notNull(), // 0表示无限制
  // 过期时间
  expireTime: datetime('expire_time', { mode: 'date' }),
  // 通用字段
  ...columnsHelpers
});

export const memberInviteCodeRelations = relations(memberInviteCodeTable, ({ one }) => ({
  memberUser: one(memberUserTable, {
    fields: [memberInviteCodeTable.memberUserId],
    references: [memberUserTable.memberUserId]
  })
}));

export type MemberInviteCode = typeof memberInviteCodeTable.$inferSelect;
export type NewMemberInviteCode = typeof memberInviteCodeTable.$inferInsert;
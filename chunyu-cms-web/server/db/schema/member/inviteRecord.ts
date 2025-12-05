import { int, varchar, datetime, mysqlTable, char } from 'drizzle-orm/mysql-core';
import { relations } from 'drizzle-orm';
import { columnsHelpers } from '../../columns.helpers';
import { memberUserTable } from './user';

export const memberInviteRecordTable = mysqlTable('member_invite_record', {
  memberInviteRecordId: int('member_invite_record_id').autoincrement().primaryKey(),
  // 邀请者ID
  inviterId: int('inviter_id').notNull(),
  // 被邀请者ID
  inviteeId: int('invitee_id').notNull(),
  // 使用的邀请码
  inviteCode: varchar('invite_code', { length: 8 }).notNull(),
  // 邀请状态：0-待奖励，1-已奖励，2-已取消
  status: char('status', { length: 1 }).default('0').notNull(),
  // 邀请者奖励金额
  inviterReward: int('inviter_reward').default(0).notNull(),
  // 被邀请者奖励金额
  inviteeReward: int('invitee_reward').default(0).notNull(),
  // 奖励发放时间
  rewardTime: datetime('reward_time', { mode: 'date' }),
  // 注册时间
  registerTime: datetime('register_time', { mode: 'date' }).notNull(),
  // 通用字段
  ...columnsHelpers
});

export const memberInviteRecordRelations = relations(memberInviteRecordTable, ({ one }) => ({
  inviter: one(memberUserTable, {
    fields: [memberInviteRecordTable.inviterId],
    references: [memberUserTable.memberUserId]
  }),
  invitee: one(memberUserTable, {
    fields: [memberInviteRecordTable.inviteeId],
    references: [memberUserTable.memberUserId]
  })
}));

export type MemberInviteRecord = typeof memberInviteRecordTable.$inferSelect;
export type NewMemberInviteRecord = typeof memberInviteRecordTable.$inferInsert;

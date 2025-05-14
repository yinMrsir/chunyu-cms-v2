import { char, int, mysqlTable } from 'drizzle-orm/mysql-core';
import { columnsHelpers } from '../../columns.helpers';

export const memberWalletLogTable = mysqlTable('member_wallet_log', {
  memberWalletLogId: int('member_wallet_log_id').autoincrement().primaryKey(),
  // 会员ID
  memberUserId: int('member_user_id').notNull(),
  // 金币
  gold: int('gold').notNull(),
  // 类型 1：新增  2：扣除
  type: char('type', { length: 1 }).notNull(),
  ...columnsHelpers
});

export type MemberWalletLog = typeof memberWalletLogTable.$inferSelect;
export type NewMemberWalletLog = typeof memberWalletLogTable.$inferInsert;

import { int, mysqlTable } from 'drizzle-orm/mysql-core';
import { columnsHelpers } from '../../columns.helpers';

export const memberWalletTable = mysqlTable('member_wallet', {
  memberWalletId: int('member_wallet_id').primaryKey().autoincrement(),
  // 会员ID
  memberUserId: int('member_user_id').unique().notNull(),
  // 金币
  gold: int('gold').default(0).notNull(),
  ...columnsHelpers
});

export type MemberWallet = typeof memberWalletTable.$inferSelect;
export type NewMemberWallet = typeof memberWalletTable.$inferInsert;

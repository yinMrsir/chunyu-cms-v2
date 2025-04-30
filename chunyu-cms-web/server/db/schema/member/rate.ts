import { int, mysqlTable } from 'drizzle-orm/mysql-core';
import { columnsHelpers } from '../../columns.helpers';

export const memberRateTable = mysqlTable('member_rate', {
  memberRateId: int('member_rate_id').autoincrement().primaryKey(),
  memberUserId: int('member_user_id').notNull(),
  movieBasicsId: int('movie_basics_id').notNull(),
  rate: int('rate'),
  ...columnsHelpers
});

export type MemberRate = typeof memberRateTable.$inferSelect;
export type NewMemberRate = typeof memberRateTable.$inferInsert;

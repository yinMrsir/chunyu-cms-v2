import { int, tinyint, varchar, datetime, mysqlTable } from 'drizzle-orm/mysql-core';
import { relations } from 'drizzle-orm';
import { columnsHelpers } from '../../columns.helpers';
import { memberUserTable } from './user';

export const memberCouponTable = mysqlTable('member_coupon', {
  memberCouponId: int('member_coupon_id').autoincrement().primaryKey(),
  // 兑换券码
  couponCode: varchar('coupon_code', { length: 50 }).notNull().unique(),
  // 兑换金币数量
  goldAmount: int('gold_amount').notNull(),
  // 状态 0：未使用 1：已使用 2：已过期
  status: tinyint('status').notNull().default(0),
  // 使用者用户ID
  usedBy: int('used_by'),
  // 使用时间
  usedTime: datetime('used_time', { mode: 'date' }),
  // 过期时间
  expireTime: datetime('expire_time', { mode: 'date' }),
  ...columnsHelpers
});

export type MemberCoupon = typeof memberCouponTable.$inferSelect;
export type NewMemberCoupon = typeof memberCouponTable.$inferInsert;

export const memberCouponTableRelations = relations(memberCouponTable, ({ one }) => {
  return {
    memberUser: one(memberUserTable, {
      fields: [memberCouponTable.usedBy],
      references: [memberUserTable.memberUserId]
    })
  };
});

import { datetime, int, mysqlTable, varchar } from 'drizzle-orm/mysql-core';
import { columnsHelpers } from '../../columns.helpers';

export const memberOrderTable = mysqlTable('member_order', {
  memberOrderId: int('member_order_id').primaryKey().autoincrement(),
  // 会员ID
  memberUserId: int('member_user_id').notNull(),
  // 订单号
  outTradeNo: varchar('out_trade_no', { length: 50 }).notNull(),
  // 交易单号 微信支付返回的支付单号
  transactionId: varchar('transaction_id', { length: 50 }),
  // 订单总金额，以分为单位存储
  totalAmount: int('total_amount').notNull(),
  /* 订单状态 同步 微信支付订单状态
  SUCCESS--支付成功
  REFUND--转入退款
  NOTPAY--未支付
  CLOSED--已关闭
  REVOKED--已撤销(刷卡支付)
  USERPAYING--用户支付中
  PAYERROR--支付失败(其他原因，如银行返回失败)
  ACCEPT--已接收，等待扣款
  */
  status: varchar('status', { length: 20 }).default('NOTPAY'),
  // 支付时间，可能为空，直到订单支付成功后记录
  paidAt: datetime('paid_at', { mode: 'string' }),
  // 查询微信订单同步的次数
  queryCount: int('query_count').default(0),
  // 描述
  description: varchar('description', { length: 255 }),
  ...columnsHelpers
});

export type MemberOrder = typeof memberOrderTable.$inferSelect;
export type NewMemberOrder = typeof memberOrderTable.$inferInsert;

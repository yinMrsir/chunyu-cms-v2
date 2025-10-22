import { and, desc, eq, sql } from 'drizzle-orm';
import { MemberOrder, memberOrderTable, NewMemberOrder } from '~~/server/db/schema/member/order';
import { queryParams } from '~~/server/db/query.helper';
import { WxPayServices } from '~~/server/services/wxPay/wxPay.services';

export class MemberOrderServices {
  async add(memberOrder: NewMemberOrder) {
    const [{ memberOrderId }] = await db.insert(memberOrderTable).values(memberOrder).$returningId();
    return memberOrderId;
  }

  async delete(memberOrderId: number) {
    await db.delete(memberOrderTable).where(eq(memberOrderTable.memberOrderId, memberOrderId));
  }

  // 通过订单号查询
  async getByOrderNo(outTradeNo: string): Promise<MemberOrder | undefined> {
    return await db.query.memberOrderTable.findFirst({
      where: eq(memberOrderTable.outTradeNo, outTradeNo)
    });
  }

  // 获取订单列表分页
  async list(params: Partial<NewMemberOrder & queryParams>) {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;

    const whereList = [];
    if (params.outTradeNo) {
      whereList.push(eq(memberOrderTable.outTradeNo, params.outTradeNo));
    }
    const where = and(...whereList);

    const rowsQuery = await db.query.memberOrderTable.findMany({
      extras: {
        id: sql`${memberOrderTable.memberOrderId}`.as('id')
      },
      offset,
      limit: Number(limit),
      where,
      orderBy: [desc(memberOrderTable.outTradeNo)]
    });
    const totalQuery = await db.$count(memberOrderTable, where);
    const [rows, total] = await Promise.all([rowsQuery, totalQuery]);
    return {
      rows,
      total
    };
  }

  // 查询所有未支付订单
  async findAllUnpaid() {
    return await db.query.memberOrderTable.findMany({
      where: eq(memberOrderTable.status, 'NOTPAY')
    });
  }

  // 根据outTradeNo更新订单
  async updateByOutTradeNo(outTradeNo: string, data: Partial<NewMemberOrder>): Promise<MemberOrder> {
    await db.update(memberOrderTable).set(data).where(eq(memberOrderTable.outTradeNo, outTradeNo));
    return (await this.getByOrderNo(outTradeNo)) as MemberOrder;
  }

  // 同步订单
  async asyncPayStatus(outTradeNo: string) {
    const result: any = await WxPayServices.getInstance().query({ out_trade_no: outTradeNo });
    await db
      .update(memberOrderTable)
      .set({
        status: result.data.trade_state,
        transactionId: result.data.transaction_id,
        paidAt: result.data.success_time,
        remark: result.data.trade_state_desc,
        updateTime: new Date()
      })
      .where(eq(memberOrderTable.outTradeNo, outTradeNo));
    // {
    //   status: 200,
    //   appid: 'appid',
    //   attach: '',
    //   mchid: '商户号',
    //   out_trade_no: '1609899981750',
    //   payer: {},
    //   promotion_detail: [],
    //   trade_state: 'CLOSED',
    //   trade_state_desc: '订单已关闭'
    // }
    return result;
  }
}

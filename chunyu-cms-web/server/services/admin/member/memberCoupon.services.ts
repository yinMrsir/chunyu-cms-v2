import { and, eq, like, desc, sql, inArray, lt } from 'drizzle-orm';
import { MemberCoupon, memberCouponTable, NewMemberCoupon } from '~~/server/db/schema/member/coupon';
import { queryParams } from '~~/server/db/query.helper';

export class MemberCouponServices {
  // 添加兑换券
  async add(coupon: NewMemberCoupon) {
    // 检查券码是否已存在
    const existing = await this.getByCouponCode(coupon.couponCode);
    if (existing) {
      throw createError({ statusCode: 400, message: '兑换券码已存在' });
    }
    await db.insert(memberCouponTable).values(coupon);
  }

  // 更新兑换券
  async update(memberCouponId: number, coupon: Partial<MemberCoupon>) {
    // 如果更新券码，检查是否已存在
    if (coupon.couponCode) {
      const existing = await this.getByCouponCode(coupon.couponCode);
      if (existing && existing.memberCouponId !== memberCouponId) {
        throw createError({ statusCode: 400, message: '兑换券码已存在' });
      }
    }
    await db.update(memberCouponTable).set(coupon).where(eq(memberCouponTable.memberCouponId, memberCouponId));
  }

  // 删除兑换券
  async delete(memberCouponIds: string[]) {
    await db.delete(memberCouponTable).where(
      inArray(
        memberCouponTable.memberCouponId,
        memberCouponIds.map(memberCouponId => Number(memberCouponId))
      )
    );
  }

  // 通过ID获取兑换券
  async findById(memberCouponId: number): Promise<MemberCoupon | undefined> {
    return await db.query.memberCouponTable.findFirst({
      where: eq(memberCouponTable.memberCouponId, memberCouponId)
    });
  }

  // 通过券码获取兑换券
  async getByCouponCode(couponCode: string): Promise<MemberCoupon | undefined> {
    return await db.query.memberCouponTable.findFirst({
      where: eq(memberCouponTable.couponCode, couponCode)
    });
  }

  // 分页查询兑换券
  async list(params?: Partial<MemberCoupon & { keyword: string } & queryParams>) {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;
    const whereList = [];

    if (params?.couponCode || params?.keyword) {
      whereList.push(like(memberCouponTable.couponCode, `%${params.couponCode || params.keyword}%`));
    }

    if (params?.status !== undefined) {
      whereList.push(eq(memberCouponTable.status, params.status));
    }

    const where = whereList.length > 0 ? and(...whereList) : undefined;

    // 先自动更新过期状态
    await this.updateExpiredCoupons();

    const rowsQuery = await db.query.memberCouponTable.findMany({
      extras: {
        id: sql`${memberCouponTable.memberCouponId}`.as('id')
      },
      with: {
        memberUser: {
          columns: {
            email: true,
            nickname: true
          }
        }
      },
      where,
      offset,
      limit: Number(limit),
      orderBy: [desc(memberCouponTable.createTime), desc(memberCouponTable.memberCouponId)]
    });

    const totalQuery = await db.$count(memberCouponTable, where);
    const [rows, total] = await Promise.all([rowsQuery, totalQuery]);

    return {
      rows,
      total
    };
  }

  // 兑换券兑换
  async exchange(couponCode: string, memberUserId: number) {
    const coupon = await this.getByCouponCode(couponCode);

    if (!coupon) {
      throw createError({ statusCode: 400, message: '兑换券不存在' });
    }

    if (coupon.status === 1) {
      throw createError({ statusCode: 400, message: '兑换券已被使用' });
    }

    if (coupon.status === 2) {
      throw createError({ statusCode: 400, message: '兑换券已过期' });
    }

    if (coupon.expireTime && new Date(coupon.expireTime) < new Date()) {
      // 自动标记为过期
      await this.update(coupon.memberCouponId, {
        status: 2,
        updateTime: new Date()
      });
      throw createError({ statusCode: 400, message: '兑换券已过期' });
    }

    // 标记为已使用
    await this.update(coupon.memberCouponId, {
      status: 1,
      usedBy: memberUserId,
      usedTime: new Date(),
      updateTime: new Date()
    });

    return coupon.goldAmount;
  }

  // 自动更新过期兑换券状态
  async updateExpiredCoupons() {
    const now = new Date();

    // 查找已过期但状态仍为未使用的兑换券
    await db
      .update(memberCouponTable)
      .set({
        status: 2, // 已过期
        updateTime: now
      })
      .where(
        and(
          eq(memberCouponTable.status, 0), // 未使用状态
          lt(memberCouponTable.expireTime, now), // 过期时间小于当前时间
          // 确保expireTime不为空
          sql`${memberCouponTable.expireTime} IS NOT NULL`
        )
      );
  }

  // 获取过期状态的兑换券数量
  async getExpiredCount() {
    const now = new Date();

    const result = await db.$count(
      memberCouponTable,
      and(
        eq(memberCouponTable.status, 0),
        lt(memberCouponTable.expireTime, now),
        sql`${memberCouponTable.expireTime} IS NOT NULL`
      )
    );

    return result;
  }

  // 生成随机券码
  generateCouponCode(length: number = 8): string {
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    let result = '';
    for (let i = 0; i < length; i++) {
      result += chars.charAt(Math.floor(Math.random() * chars.length));
    }
    return result;
  }

  // 批量生成兑换券
  async batchCreate(goldAmount: number, count: number, expireDays?: number) {
    const coupons: NewMemberCoupon[] = [];
    const expireTime = expireDays ? new Date(Date.now() + expireDays * 24 * 60 * 60 * 1000) : undefined;

    for (let i = 0; i < count; i++) {
      let couponCode: string;
      let existing: MemberCoupon | undefined;

      // 确保生成的券码唯一
      do {
        couponCode = this.generateCouponCode();
        existing = await this.getByCouponCode(couponCode);
      } while (existing);

      coupons.push({
        couponCode,
        goldAmount,
        status: 0,
        expireTime,
        createTime: new Date(),
        updateTime: new Date()
      });
    }

    // 批量插入
    await db.insert(memberCouponTable).values(coupons);
    return coupons.map(c => c.couponCode);
  }
}

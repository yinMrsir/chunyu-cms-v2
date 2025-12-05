import { eq, and, sql, like } from 'drizzle-orm';
import { MemberInviteCode, memberInviteCodeTable } from '~~/server/db/schema/member/inviteCode';

export class MemberInviteCodeServices {
  // 生成唯一邀请码
  private generateInviteCode(): string {
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    let code = '';
    for (let i = 0; i < 8; i++) {
      code += chars.charAt(Math.floor(Math.random() * chars.length));
    }
    return code;
  }

  // 通过用户ID查询邀请码
  async getInviteCodeByUserId(memberUserId: number): Promise<MemberInviteCode | undefined> {
    return await db.query.memberInviteCodeTable.findFirst({
      where: and(eq(memberInviteCodeTable.memberUserId, memberUserId), eq(memberInviteCodeTable.status, '0'))
    });
  }

  // 通过邀请码查询
  async getInviteCodeByCode(inviteCode: string): Promise<MemberInviteCode | undefined> {
    return await db.query.memberInviteCodeTable.findFirst({
      where: and(eq(memberInviteCodeTable.inviteCode, inviteCode), eq(memberInviteCodeTable.status, '0'))
    });
  }

  // 创建或获取用户邀请码
  async getOrCreateInviteCode(memberUserId: number): Promise<string> {
    // 先查找现有邀请码
    const existingCode = await this.getInviteCodeByUserId(memberUserId);
    if (existingCode) {
      return existingCode.inviteCode;
    }

    // 生成新的唯一邀请码
    let newCode = '';
    let attempts = 0;
    const maxAttempts = 10;

    while (attempts < maxAttempts) {
      newCode = this.generateInviteCode();
      const existing = await this.getInviteCodeByCode(newCode);
      if (!existing) {
        break;
      }
      attempts++;
    }

    if (attempts >= maxAttempts) {
      throw new Error('无法生成唯一邀请码，请稍后重试');
    }

    // 创建邀请码记录
    await db.insert(memberInviteCodeTable).values({
      memberUserId,
      inviteCode: newCode,
      status: '0',
      useCount: 0,
      maxUseCount: 0, // 无限制
      createTime: new Date()
    });

    return newCode;
  }

  // 验证邀请码是否可用
  async validateInviteCode(
    inviteCode: string
  ): Promise<{ valid: boolean; message?: string; inviteCodeData?: MemberInviteCode }> {
    if (!inviteCode || inviteCode.length !== 8) {
      return { valid: false, message: '邀请码格式不正确' };
    }

    const codeData = await this.getInviteCodeByCode(inviteCode);
    if (!codeData) {
      return { valid: false, message: '邀请码不存在或已失效' };
    }

    // 检查是否过期
    if (codeData.expireTime && new Date() > codeData.expireTime) {
      return { valid: false, message: '邀请码已过期' };
    }

    // 检查使用次数限制
    if (codeData.maxUseCount > 0 && codeData.useCount >= codeData.maxUseCount) {
      return { valid: false, message: '邀请码使用次数已达上限' };
    }

    return { valid: true, inviteCodeData: codeData };
  }

  // 增加使用次数
  async incrementUseCount(inviteCode: string): Promise<void> {
    await db
      .update(memberInviteCodeTable)
      .set({
        useCount: sql`${memberInviteCodeTable.useCount} + 1`,
        updateTime: new Date()
      })
      .where(eq(memberInviteCodeTable.inviteCode, inviteCode));
  }

  // 禁用邀请码
  async disableInviteCode(memberUserId: number): Promise<void> {
    await db
      .update(memberInviteCodeTable)
      .set({
        status: '1',
        updateTime: new Date()
      })
      .where(eq(memberInviteCodeTable.memberUserId, memberUserId));
  }

  // 获取邀请码统计
  async getInviteCodeStats(memberUserId: number) {
    const codeData = await this.getInviteCodeByUserId(memberUserId);
    if (!codeData) {
      return {
        hasInviteCode: false,
        inviteCode: '',
        useCount: 0,
        maxUseCount: 0
      };
    }

    return {
      hasInviteCode: true,
      inviteCode: codeData.inviteCode,
      useCount: codeData.useCount,
      maxUseCount: codeData.maxUseCount,
      expireTime: codeData.expireTime,
      status: codeData.status
    };
  }

  // 分页查询邀请码列表（管理员使用）
  async getInviteCodeList(query: any) {
    const { page, pageSize, filters } = query;
    const whereConditions = [];

    if (filters?.inviteCode) {
      whereConditions.push(like(memberInviteCodeTable.inviteCode, `%${filters.inviteCode}%`));
    }

    if (filters?.status !== undefined) {
      whereConditions.push(eq(memberInviteCodeTable.status, filters.status));
    }

    if (filters?.memberUserId) {
      whereConditions.push(eq(memberInviteCodeTable.memberUserId, Number(filters.memberUserId)));
    }

    const whereClause = whereConditions.length > 0 ? and(...whereConditions) : undefined;

    const [records, total] = await Promise.all([
      db.query.memberInviteCodeTable.findMany({
        where: whereClause,
        limit: pageSize,
        offset: (page - 1) * pageSize,
        orderBy: sql`${memberInviteCodeTable.createTime} DESC`,
        with: {
          memberUser: {
            columns: {
              memberUserId: true,
              nickname: true,
              email: true
            }
          }
        }
      }),
      db
        .select({ count: sql<number>`count(*)` })
        .from(memberInviteCodeTable)
        .where(whereClause)
    ]);

    return {
      records,
      total: total[0]?.count || 0,
      page,
      pageSize
    };
  }
}

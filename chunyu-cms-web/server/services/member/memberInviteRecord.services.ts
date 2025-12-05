import { eq, and, sql, desc } from 'drizzle-orm';
import {
  MemberInviteRecord,
  memberInviteRecordTable,
  NewMemberInviteRecord
} from '~~/server/db/schema/member/inviteRecord';

export class MemberInviteRecordServices {
  // 创建邀请记录
  async createInviteRecord(data: NewMemberInviteRecord): Promise<Number> {
    const result = await db.insert(memberInviteRecordTable).values({
      inviterId: data.inviterId,
      inviteeId: data.inviteeId,
      inviteCode: data.inviteCode,
      status: '0', // 待奖励
      inviterReward: data.inviterReward,
      inviteeReward: data.inviteeReward,
      registerTime: data.registerTime || new Date(),
      createTime: new Date()
    });

    return Number(result.insertId);
  }

  // 发放邀请奖励
  async rewardInvite(recordId: number): Promise<void> {
    const record = await db.query.memberInviteRecordTable.findFirst({
      where: eq(memberInviteRecordTable.memberInviteRecordId, recordId)
    });

    if (!record) {
      throw new Error('邀请记录不存在');
    }

    if (record.status === '1') {
      throw new Error('奖励已发放');
    }

    if (record.status === '2') {
      throw new Error('邀请已被取消');
    }

    // 这里应该调用钱包服务来发放奖励
    // 为了简化，这里只是更新状态
    await db
      .update(memberInviteRecordTable)
      .set({
        status: '1',
        rewardTime: new Date(),
        updateTime: new Date()
      })
      .where(eq(memberInviteRecordTable.memberInviteRecordId, recordId));
  }

  // 取消邀请
  async cancelInvite(recordId: number, reason: string = ''): Promise<void> {
    await db
      .update(memberInviteRecordTable)
      .set({
        status: '2',
        remark: reason,
        updateTime: new Date()
      })
      .where(eq(memberInviteRecordTable.memberInviteRecordId, recordId));
  }

  // 通过邀请者ID查询邀请记录
  async getRecordsByInviterId(inviterId: number, page: number = 1, pageSize: number = 10) {
    const whereClause = and(eq(memberInviteRecordTable.inviterId, inviterId));

    const [records, total] = await Promise.all([
      db.query.memberInviteRecordTable.findMany({
        where: whereClause,
        limit: pageSize,
        offset: (page - 1) * pageSize,
        orderBy: desc(memberInviteRecordTable.registerTime),
        with: {
          invitee: {
            columns: {
              memberUserId: true,
              nickname: true,
              email: true,
              avatar: true
            }
          }
        }
      }),
      db
        .select({ count: sql<number>`count(*)` })
        .from(memberInviteRecordTable)
        .where(whereClause)
    ]);

    return {
      records,
      total: total[0]?.count || 0,
      page,
      pageSize
    };
  }

  // 通过被邀请者ID查询邀请记录
  async getRecordByInviteeId(inviteeId: number): Promise<MemberInviteRecord | undefined> {
    return await db.query.memberInviteRecordTable.findFirst({
      where: eq(memberInviteRecordTable.inviteeId, inviteeId),
      with: {
        inviter: {
          columns: {
            memberUserId: true,
            nickname: true,
            email: true
          }
        }
      }
    });
  }

  // 获取邀请统计
  async getInviteStats(memberUserId: number) {
    // 总邀请人数
    const totalInvitesResult = await db
      .select({ count: sql<number>`count(*)` })
      .from(memberInviteRecordTable)
      .where(eq(memberInviteRecordTable.inviterId, memberUserId));

    const totalInvites = totalInvitesResult[0]?.count || 0;

    // 已发放奖励的邀请人数
    const rewardedInvitesResult = await db
      .select({ count: sql<number>`count(*)` })
      .from(memberInviteRecordTable)
      .where(and(eq(memberInviteRecordTable.inviterId, memberUserId), eq(memberInviteRecordTable.status, '1')));

    const rewardedInvites = rewardedInvitesResult[0]?.count || 0;

    // 待发放奖励的邀请人数
    const pendingInvites = totalInvites - rewardedInvites;

    // 总奖励金额
    const totalRewardResult = await db
      .select({
        totalReward: sql<number>`sum(${memberInviteRecordTable.inviterReward})`,
        pendingReward: sql<number>`sum(CASE WHEN status = '0' THEN ${memberInviteRecordTable.inviterReward} ELSE 0 END)`
      })
      .from(memberInviteRecordTable)
      .where(and(eq(memberInviteRecordTable.inviterId, memberUserId), sql`${memberInviteRecordTable.status} != '2'`));

    const totalReward = totalRewardResult[0]?.totalReward || 0;
    const pendingReward = totalRewardResult[0]?.pendingReward || 0;

    return {
      totalInvites,
      rewardedInvites,
      pendingInvites,
      totalReward,
      pendingReward
    };
  }

  // 分页查询邀请记录列表（管理员使用）
  async getInviteRecordList(query: any) {
    const { page, pageSize, filters } = query;
    const whereConditions = [];

    if (filters?.inviterId) {
      whereConditions.push(eq(memberInviteRecordTable.inviterId, Number(filters.inviterId)));
    }

    if (filters?.inviteeId) {
      whereConditions.push(eq(memberInviteRecordTable.inviteeId, Number(filters.inviteeId)));
    }

    if (filters?.inviteCode) {
      whereConditions.push(sql`UPPER(${memberInviteRecordTable.inviteCode}) LIKE UPPER('%${filters.inviteCode}%')`);
    }

    if (filters?.status !== undefined) {
      whereConditions.push(eq(memberInviteRecordTable.status, filters.status));
    }

    if (filters?.registerTimeStart) {
      whereConditions.push(sql`${memberInviteRecordTable.registerTime} >= '${filters.registerTimeStart}'`);
    }

    if (filters?.registerTimeEnd) {
      whereConditions.push(sql`${memberInviteRecordTable.registerTime} <= '${filters.registerTimeEnd}'`);
    }

    const whereClause = whereConditions.length > 0 ? and(...whereConditions) : undefined;

    const [records, total] = await Promise.all([
      db.query.memberInviteRecordTable.findMany({
        where: whereClause,
        limit: pageSize,
        offset: (page - 1) * pageSize,
        orderBy: desc(memberInviteRecordTable.createTime),
        with: {
          inviter: {
            columns: {
              memberUserId: true,
              nickname: true,
              email: true
            }
          },
          invitee: {
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
        .from(memberInviteRecordTable)
        .where(whereClause)
    ]);

    return {
      records,
      total: total[0]?.count || 0,
      page,
      pageSize
    };
  }

  // 检查用户是否已经被邀请过
  async isUserInvited(inviteeId: number): Promise<boolean> {
    const record = await db.query.memberInviteRecordTable.findFirst({
      where: eq(memberInviteRecordTable.inviteeId, inviteeId)
    });
    return !!record;
  }
}

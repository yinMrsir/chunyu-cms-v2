import { and, desc, eq, sql } from 'drizzle-orm';
import { MemberLike, memberLikeTable, NewMemberLike } from '~~/server/db/schema/member/like';
import { queryParams } from '~~/server/db/query.helper';
import { ShortServices } from '~~/server/services/short/short.services';
import { shortTable } from '~~/server/db/schema/shorts/short';

export class MemberLikeServices {
  private shortServices: ShortServices;
  constructor() {
    this.shortServices = new ShortServices();
  }

  async add(memberLike: NewMemberLike) {
    const short = await this.shortServices.getById(memberLike.shortId);
    if (!short) {
      throw createError({ statusCode: 404, statusMessage: '短视频未找到' });
    }
    let likes = short.likes as number;
    await db.transaction(async tx => {
      await tx.insert(memberLikeTable).values(memberLike);
      likes++;
      await tx.update(shortTable).set({ likes }).where(eq(shortTable.shortId, memberLike.shortId));
    });
  }

  async delete(memberUserId: number, shortId: number) {
    const memberLike = await this.getByMemberUserIdAndShortId(memberUserId, shortId);
    if (!memberLike) {
      throw createError({ statusCode: 404, statusMessage: '用户未点赞' });
    }
    const short = await this.shortServices.getById(memberLike.shortId);
    if (!short) {
      throw createError({ statusCode: 404, statusMessage: '短视频未找到' });
    }
    let likes = short.likes as number;
    await db.transaction(async tx => {
      await tx.delete(memberLikeTable).where(eq(memberLikeTable.memberLikeId, memberLike.memberLikeId));
      likes--;
      await tx.update(shortTable).set({ likes }).where(eq(shortTable.shortId, memberLike.shortId));
    });
  }

  // 通过memberUserId和shortId查询
  async getByMemberUserIdAndShortId(memberUserId: number, shortId: number): Promise<MemberLike | undefined> {
    return await db.query.memberLikeTable.findFirst({
      where: and(eq(memberLikeTable.memberUserId, memberUserId), eq(memberLikeTable.shortId, shortId))
    });
  }

  async list(params: Partial<NewMemberLike & queryParams>, memberUserId?: number) {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;

    const whereList = [];
    if (memberUserId) {
      whereList.push(eq(memberLikeTable.memberUserId, memberUserId));
    }
    const where = and(...whereList);

    const rowsQuery = await db.query.memberLikeTable.findMany({
      extras: {
        id: sql`${memberLikeTable.memberLikeId}`.as('id')
      },
      columns: {},
      with: {
        short: {
          columns: {
            shortId: true,
            videoUrl: true,
            poster: true
          }
        }
      },
      offset,
      where,
      limit: Number(limit),
      orderBy: [desc(memberLikeTable.memberLikeId)]
    });
    const totalQuery = await db.$count(memberLikeTable, where);
    const [rows, total] = await Promise.all([rowsQuery, totalQuery]);
    return {
      rows,
      total
    };
  }
}

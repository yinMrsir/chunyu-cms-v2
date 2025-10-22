import { and, desc, eq, sql } from 'drizzle-orm';
import { MemberCollection, memberCollectionTable, NewMemberCollection } from '~~/server/db/schema/member/collection';
import { queryParams } from '~~/server/db/query.helper';
import { ShortServices } from '~~/server/services/short/short.services';
import { shortTable } from '~~/server/db/schema/shorts/short';

export class MemberCollectionServices {
  private shortServices: ShortServices;
  constructor() {
    this.shortServices = new ShortServices();
  }

  async add(memberCollection: NewMemberCollection) {
    const short = await this.shortServices.getById(memberCollection.shortId);
    if (!short) {
      throw createError({ statusCode: 404, statusMessage: '短视频未找到' });
    }
    let collection = short.collection as number;
    await db.transaction(async tx => {
      await tx.insert(memberCollectionTable).values(memberCollection);
      collection++;
      await tx.update(shortTable).set({ collection }).where(eq(shortTable.shortId, memberCollection.shortId));
    });
  }

  async delete(memberUserId: number, shortId: number) {
    const memberCollection = await this.getByMemberUserIdAndShortId(memberUserId, shortId);
    if (!memberCollection) {
      throw createError({ statusCode: 404, statusMessage: '用户未收藏' });
    }
    const short = await this.shortServices.getById(memberCollection.shortId);
    if (!short) {
      throw createError({ statusCode: 404, statusMessage: '短视频未找到' });
    }
    let collection = short.collection as number;
    await db.transaction(async tx => {
      await tx
        .delete(memberCollectionTable)
        .where(eq(memberCollectionTable.memberCollectionId, memberCollection.memberCollectionId));
      collection--;
      await tx.update(shortTable).set({ collection }).where(eq(shortTable.shortId, memberCollection.shortId));
    });
  }

  // 通过memberUserId和shortId查询
  async getByMemberUserIdAndShortId(memberUserId: number, shortId: number): Promise<MemberCollection | undefined> {
    return await db.query.memberCollectionTable.findFirst({
      where: and(eq(memberCollectionTable.memberUserId, memberUserId), eq(memberCollectionTable.shortId, shortId))
    });
  }

  async list(params: Partial<NewMemberCollection & queryParams>, memberUserId?: number) {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;

    const whereList = [];
    if (memberUserId) {
      whereList.push(eq(memberCollectionTable.memberUserId, memberUserId));
    }
    const where = and(...whereList);

    const rowsQuery = await db.query.memberCollectionTable.findMany({
      extras: {
        id: sql`${memberCollectionTable.memberCollectionId}`.as('id')
      },
      columns: {},
      with: {
        short: {
          columns: {
            shortId: true,
            videoUrl: true,
            poster: true,
            description: true,
            duration: true,
            playCount: true,
            likes: true,
            comments: true,
            collection: true
          },
          with: {
            memberUser: {
              columns: {
                memberUserId: true,
                nickname: true,
                avatar: true
              }
            }
          }
        }
      },
      offset,
      where,
      limit: Number(limit),
      orderBy: [desc(memberCollectionTable.memberCollectionId)]
    });
    const totalQuery = await db.$count(memberCollectionTable, where);
    const [rows, total] = await Promise.all([rowsQuery, totalQuery]);
    return {
      rows,
      total
    };
  }
}

import { and, eq, desc, sql } from 'drizzle-orm';
import { memberMovieTable, MemberMovie } from '~~/server/db/schema/member/movie';
import { queryParams } from '~~/server/db/query.helper';

export class MemberMovieServices {
  // 通过影片ID获取会员影片
  async getMemberMovieById(memberUserId: number, movieBasicsId: number) {
    return await db.query.memberMovieTable.findFirst({
      where: and(eq(memberMovieTable.memberUserId, memberUserId), eq(memberMovieTable.movieBasicsId, movieBasicsId))
    });
  }

  // 获取会员影片列表
  async list(params?: Partial<MemberMovie & queryParams>, memberUserId?: number) {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;
    const whereList = [];
    if (memberUserId) {
      whereList.push(eq(memberMovieTable.memberUserId, memberUserId));
    }
    const where = and(...whereList);

    const rowsQuery = db.query.memberMovieTable.findMany({
      extras: {
        id: sql`${memberMovieTable.memberMovieId}`.as('id')
      },
      with: {
        movie: {
          columns: {
            title: true,
            poster: true
          }
        }
      },
      where,
      offset,
      limit: Number(limit),
      orderBy: [desc(memberMovieTable.memberMovieId)]
    });
    const totalQuery = db.$count(memberMovieTable, where);
    const [rows, total] = await Promise.all([rowsQuery, totalQuery]);
    return {
      rows,
      total
    };
  }
}

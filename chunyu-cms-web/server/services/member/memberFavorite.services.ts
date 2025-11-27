import { and, desc, eq, sql } from 'drizzle-orm';
import { MemberFavorite, memberFavoriteTable, NewMemberFavorite } from '~~/server/db/schema/member/favorite';
import { queryParams } from '~~/server/db/query.helper';
import { MovieBasicsServices } from '~~/server/services/movie/movieBasics/movieBasics.services';

export class MemberFavoriteServices {
  private movieBasicsServices: MovieBasicsServices;
  constructor() {
    this.movieBasicsServices = new MovieBasicsServices();
  }

  async add(memberFavorite: { movieBasicsId: number; memberUserId: number }) {
    const movie = await this.movieBasicsServices.findById(memberFavorite.movieBasicsId);
    if (!movie) {
      throw createError({ statusCode: 404, statusMessage: '电影未找到' });
    }

    // 检查是否已经收藏
    const existing = await this.getByMemberUserIdAndMovieBasicsId(
      memberFavorite.memberUserId,
      memberFavorite.movieBasicsId
    );
    if (existing) {
      throw createError({ statusCode: 400, statusMessage: '已经收藏过了' });
    }

    await db.transaction(async tx => {
      await tx.insert(memberFavoriteTable).values(memberFavorite);
    });
  }

  async delete(memberUserId: number, movieBasicsId: number) {
    const memberFavorite = await this.getByMemberUserIdAndMovieBasicsId(memberUserId, movieBasicsId);
    if (!memberFavorite) {
      throw createError({ statusCode: 404, statusMessage: '用户未收藏' });
    }
    const movie = await this.movieBasicsServices.findById(memberFavorite.movieBasicsId);
    if (!movie) {
      throw createError({ statusCode: 404, statusMessage: '电影未找到' });
    }
    await db.transaction(async tx => {
      await tx
        .delete(memberFavoriteTable)
        .where(eq(memberFavoriteTable.memberFavoriteId, memberFavorite.memberFavoriteId));
    });
  }

  // 通过memberUserId和movieBasicsId查询
  async getByMemberUserIdAndMovieBasicsId(
    memberUserId: number,
    movieBasicsId: number
  ): Promise<MemberFavorite | undefined> {
    return await db.query.memberFavoriteTable.findFirst({
      where: and(
        eq(memberFavoriteTable.memberUserId, memberUserId),
        eq(memberFavoriteTable.movieBasicsId, movieBasicsId)
      )
    });
  }

  // 检查用户是否收藏了某部电影
  async checkFavoriteStatus(memberUserId: number, movieBasicsId: number): Promise<boolean> {
    const favorite = await this.getByMemberUserIdAndMovieBasicsId(memberUserId, movieBasicsId);
    return !!favorite;
  }

  async list(params: Partial<NewMemberFavorite & queryParams>, memberUserId?: number) {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;

    const whereList = [];
    if (memberUserId) {
      whereList.push(eq(memberFavoriteTable.memberUserId, memberUserId));
    }
    const where = and(...whereList);

    const rowsQuery = await db.query.memberFavoriteTable.findMany({
      extras: {
        id: sql`${memberFavoriteTable.memberFavoriteId}`.as('id')
      },
      columns: {
        createTime: true
      },
      with: {
        movie: {
          columns: {
            movieBasicsId: true,
            title: true,
            poster: true,
            summary: true,
            duration: true,
            year: true,
            languages: true,
            status: true,
            columnValue: true
          },
          with: {
            casts: {
              columns: {},
              with: {
                actor: {
                  columns: {
                    actorId: true,
                    name: true,
                    avatar: true
                  }
                }
              }
            }
          }
        }
      },
      offset,
      where,
      limit: Number(limit),
      orderBy: [desc(memberFavoriteTable.memberFavoriteId)]
    });
    const totalQuery = await db.$count(memberFavoriteTable, where);
    const [rows, total] = await Promise.all([rowsQuery, totalQuery]);
    return {
      rows,
      total
    };
  }
}

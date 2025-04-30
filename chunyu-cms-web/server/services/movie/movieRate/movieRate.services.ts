import { eq } from 'drizzle-orm';
import { movieRateTable } from '~/server/db/schema/movie/rate';
import { MemberRateServices } from '~/server/services/member/memberRate.services';
import { memberRateTable } from '~/server/db/schema/member/rate';

export class MovieRateServices {
  private memberRateServices: MemberRateServices;
  constructor() {
    this.memberRateServices = new MemberRateServices();
  }

  // 通过movieBasicId获取电影评分
  async getMovieRateByMovieBasicId(movieBasicsId: number) {
    return await db.query.movieRateTable.findFirst({
      where: eq(movieRateTable.movieBasicsId, movieBasicsId)
    });
  }

  // 创建电影评分
  async createMovieRate(data: { memberUserId: number; movieBasicsId: number; rate: number }) {
    const movieRate = await this.getMovieRateByMovieBasicId(data.movieBasicsId);
    if (movieRate) {
      return await db.transaction(async tx => {
        await tx.insert(memberRateTable).values({
          memberUserId: data.memberUserId,
          movieBasicsId: data.movieBasicsId,
          rate: data.rate
        });
        const rateUserCount = movieRate.rateUserCount + 1;
        const rate = (movieRate.rate + data.rate) / rateUserCount;
        await tx
          .update(movieRateTable)
          .set({
            rate,
            rateUserCount
          })
          .where(eq(movieRateTable.movieBasicsId, data.movieBasicsId));
        return rate;
      });
    } else {
      return await db.transaction(async tx => {
        await tx.insert(memberRateTable).values({
          memberUserId: data.memberUserId,
          movieBasicsId: data.movieBasicsId,
          rate: data.rate
        });
        await tx.insert(movieRateTable).values({
          movieBasicsId: data.movieBasicsId,
          rate: data.rate,
          rateUserCount: 1
        });
        return data.rate;
      });
    }
  }
}

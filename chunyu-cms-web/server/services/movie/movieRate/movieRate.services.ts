import { and, desc, eq, inArray, like, lt, not } from 'drizzle-orm';
import { movieRateTable } from '~~/server/db/schema/movie/rate';
import { MemberRateServices } from '~~/server/services/member/memberRate.services';
import { memberRateTable } from '~~/server/db/schema/member/rate';
import { queryParams } from '~~/server/db/query.helper';
import { movieBasicsTable } from '~~/server/db/schema/movie/movieBasics';
import { movieBasicToGenreTable } from '~~/server/db/schema/movie/movieBasicToGenre';
import { movieBasicToCountryTable } from '~~/server/db/schema/movie/movieBasicToCountry';

export class MovieRateServices {
  private memberRateServices: MemberRateServices;
  constructor() {
    this.memberRateServices = new MemberRateServices();
  }

  // 初始化评分
  async initMovieRate(movieBasicsId: number) {
    const movieRate = await this.getMovieRateByMovieBasicId(movieBasicsId);
    if (!movieRate) {
      await db.insert(movieRateTable).values({
        movieBasicsId,
        rate: 0,
        rateUserCount: 0
      });
    }
  }

  // 通过movieBasicId获取电影评分
  async getMovieRateByMovieBasicId(movieBasicsId: number) {
    return await db.query.movieRateTable.findFirst({
      where: eq(movieRateTable.movieBasicsId, movieBasicsId)
    });
  }

  // 用户对电影评分
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

  async byRateDescPage(
    params?: Partial<
      {
        columnValue: string;
        genreId: number;
        countryId: number;
        language: string;
        year: number;
      } & queryParams
    >,
    movieBasicsId?: number
  ) {
    const whereList = [];
    if (params?.columnValue) {
      whereList.push(
        inArray(
          movieRateTable.movieBasicsId,
          (
            await db.query.movieBasicsTable.findMany({
              where: eq(movieBasicsTable.columnValue, params.columnValue)
            })
          ).map(item => item.movieBasicsId)
        )
      );
    }
    if (params?.genreId) {
      whereList.push(
        inArray(
          movieRateTable.movieBasicsId,
          (
            await db.query.movieBasicToGenreTable.findMany({
              where: eq(movieBasicToGenreTable.genreId, Number(params.genreId))
            })
          ).map((item: any) => item.movieBasicsId)
        )
      );
    }
    if (params?.countryId) {
      whereList.push(
        inArray(
          movieRateTable.movieBasicsId,
          (
            await db.query.movieBasicToCountryTable.findMany({
              where: eq(movieBasicToCountryTable.countryId, Number(params.countryId))
            })
          ).map((item: any) => item.movieBasicsId)
        )
      );
    }
    if (params?.year) {
      if (+params.year === -1) {
        // 获取小于年份前20年的
        whereList.push(
          inArray(
            movieRateTable.movieBasicsId,
            (
              await db.query.movieBasicsTable.findMany({
                where: lt(movieBasicsTable.year, new Date().getFullYear() - 20)
              })
            ).map(item => item.movieBasicsId)
          )
        );
      } else {
        whereList.push(
          inArray(
            movieRateTable.movieBasicsId,
            (
              await db.query.movieBasicsTable.findMany({
                where: eq(movieBasicsTable.year, params.year)
              })
            ).map(item => item.movieBasicsId)
          )
        );
      }
    }
    if (params?.language) {
      whereList.push(
        inArray(
          movieRateTable.movieBasicsId,
          (
            await db.query.movieBasicsTable.findMany({
              where: like(movieBasicsTable.languages, `%${params.language}%`)
            })
          ).map(item => item.movieBasicsId)
        )
      );
    }
    if (movieBasicsId) {
      whereList.push(not(eq(movieRateTable.movieBasicsId, movieBasicsId)));
    }
    const where = and(...whereList);
    const rowsQuery = db.query.movieRateTable.findMany({
      with: {
        movieBasic: {
          with: {
            movieBasicToCountry: {
              with: {
                country: true
              }
            },
            casts: {
              with: {
                actor: true
              }
            },
            genres: {
              with: {
                genre: {
                  columns: {
                    name: true,
                    genreId: true
                  }
                }
              }
            },
            pv: true,
            movieRate: true
          }
        }
      },
      where,
      orderBy: [desc(movieRateTable.rate)]
    });
    const totalQuery = db.$count(movieRateTable, where);
    const [rows, total] = await Promise.all([rowsQuery, totalQuery]);
    return {
      rows,
      total
    };
  }
}

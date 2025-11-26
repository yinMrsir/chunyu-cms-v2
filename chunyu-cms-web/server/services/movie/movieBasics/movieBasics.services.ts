import { and, between, desc, eq, inArray, like, lt, not, sql } from 'drizzle-orm';
import { MovieBasics, movieBasicsTable, NewMovieBasics } from '~~/server/db/schema/movie/movieBasics';
import { queryParams } from '~~/server/db/query.helper';
import { movieBasicToCountryTable } from '~~/server/db/schema/movie/movieBasicToCountry';
import { movieVideoTable } from '~~/server/db/schema/movie/movieVideo';
import { movieBasicToGenreTable } from '~~/server/db/schema/movie/movieBasicToGenre';
import { memberFavoriteTable } from '~~/server/db/schema/member/favorite';

export class MovieBasicsServices {
  /* 新增 */
  async add(body: NewMovieBasics & { countryIds: number[] } & { genreIds: number[] }) {
    try {
      let movieBasicsId: number;
      await db.transaction(async tx => {
        const [insetMovieBasics] = await tx.insert(movieBasicsTable).values(body).$returningId();
        movieBasicsId = insetMovieBasics.movieBasicsId;
        if (body.countryIds.length) {
          await tx.insert(movieBasicToCountryTable).values(
            body.countryIds.map(countryId => ({
              movieBasicsId,
              countryId
            }))
          );
        }
        if (body.genreIds.length) {
          await tx.insert(movieBasicToGenreTable).values(
            body.genreIds.map(genreId => ({
              movieBasicsId,
              genreId
            }))
          );
        }
      });
      // @ts-ignore
      return movieBasicsId;
    } catch (error: any) {
      throw createError({ statusCode: 400, message: error.message });
    }
  }

  /* 更新 */
  async update(body: MovieBasics & { countryIds: number[] } & { genreIds: number[] }) {
    try {
      await db.transaction(async tx => {
        await tx.update(movieBasicsTable).set(body).where(eq(movieBasicsTable.movieBasicsId, body.movieBasicsId));
        await tx.delete(movieBasicToCountryTable).where(eq(movieBasicToCountryTable.movieBasicsId, body.movieBasicsId));
        if (body.countryIds.length) {
          await tx.insert(movieBasicToCountryTable).values(
            body.countryIds.map(countryId => ({
              movieBasicsId: body.movieBasicsId,
              countryId
            }))
          );
        }
        await tx.delete(movieBasicToGenreTable).where(eq(movieBasicToGenreTable.movieBasicsId, body.movieBasicsId));
        if (body.genreIds.length) {
          await tx.insert(movieBasicToGenreTable).values(
            body.genreIds.map(genreId => ({
              movieBasicsId: body.movieBasicsId,
              genreId
            }))
          );
        }
      });
    } catch (error) {
      throw createError({ statusCode: 400, message: String(error) });
    }
  }

  /* 根据id查询 */
  async findById(movieBasicsId: number, withParams?: any) {
    const withData = withParams || {
      movieBasicToCountry: {
        with: {
          country: true
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
      movieVideo: {
        with: {
          video: true
        }
      }
    };
    return await db.query.movieBasicsTable.findFirst({
      where: eq(movieBasicsTable.movieBasicsId, movieBasicsId),
      extras: {
        favoritesCount: db
          .$count(memberFavoriteTable, sql`member_favorite.movie_basics_id = ${movieBasicsTable.movieBasicsId}`)
          .as('favoritesCount')
      },
      with: withData
    });
  }

  /* 分页查询 */
  async pageList(
    params?: Partial<
      MovieBasics & {
        keyword: string;
        genreId: number;
        countryId: number;
        language: string;
        orderBy: string;
        'date[0]': string;
        'date[1]': string;
      } & queryParams
    >,
    movieBasicsId?: number
  ) {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;
    const whereList = [];
    if (params?.title || params?.keyword) {
      whereList.push(like(movieBasicsTable.title, `%${params.title || params.keyword}%`));
    }
    if (params?.columnValue) {
      whereList.push(eq(movieBasicsTable.columnValue, params.columnValue));
    }
    if (params?.genreId) {
      whereList.push(
        inArray(
          movieBasicsTable.movieBasicsId,
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
          movieBasicsTable.movieBasicsId,
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
        whereList.push(lt(movieBasicsTable.year, new Date().getFullYear() - 20));
      } else {
        whereList.push(eq(movieBasicsTable.year, Number(params.year)));
      }
    }
    if (params?.language) {
      whereList.push(like(movieBasicsTable.languages, `%${params.language}%`));
    }
    if (params?.['date[0]'] && params?.['date[1]']) {
      whereList.push(
        between(
          movieBasicsTable.createTime,
          new Date(params['date[0]'] + ' 00:00:00'),
          new Date(params['date[1]'] + ' 23:59:59')
        )
      );
    }
    if (movieBasicsId) {
      whereList.push(not(eq(movieBasicsTable.movieBasicsId, movieBasicsId)));
    }
    const where = and(...whereList);

    const rowsQuery = db.query.movieBasicsTable.findMany({
      extras: {
        id: sql`${movieBasicsTable.movieBasicsId}`.as('id'),
        movieVideosCount: db
          .$count(movieVideoTable, sql`movie_video.movie_id = ${movieBasicsTable.movieBasicsId}`)
          .as('movieVideosCount'),
        favoritesCount: db
          .$count(memberFavoriteTable, sql`member_favorite.movie_basics_id = ${movieBasicsTable.movieBasicsId}`)
          .as('favoritesCount')
      },
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
      },
      where,
      offset,
      limit: Number(limit),
      orderBy:
        params?.orderBy === 'createTime' ? [desc(movieBasicsTable.createTime)] : [desc(movieBasicsTable.movieBasicsId)]
    });
    const totalQuery = db.$count(movieBasicsTable, where);
    const [rows, total] = await Promise.all([rowsQuery, totalQuery]);

    return {
      rows,
      total
    };
  }

  /* 根据columnValue的值查询所有 */
  async findByColumnValue(columnValue: string) {
    return await db.query.movieBasicsTable.findMany({
      where: eq(movieBasicsTable.columnValue, columnValue)
    });
  }

  /* 删除 */
  async delete(genreIds: string[]) {
    await db.delete(movieBasicsTable).where(
      inArray(
        movieBasicsTable.movieBasicsId,
        genreIds.map(genreId => Number(genreId))
      )
    );
  }
}

import { and, eq, inArray, like, sql } from 'drizzle-orm';
import { MovieBasics, movieBasicsTable, NewMovieBasics } from '~/server/db/schema/movie/movieBasics';
import { queryParams } from '~/server/db/query.helper';
import { movieBasicToCountryTable } from '~/server/db/schema/movie/movieBasicToCountry';

export class MovieBasicsServices {
  /* 新增 */
  async add(body: NewMovieBasics & { countryIds: number[] }) {
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
      });
      return movieBasicsId;
    } catch (error: any) {
      throw createError({ statusCode: 400, message: error.message });
    }
  }

  /* 更新 */
  async update(body: MovieBasics & { countryIds: number[] }) {
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
      });
    } catch (error) {
      throw createError({ statusCode: 400, message: String(error) });
    }
  }

  /* 根据id查询 */
  async findById(movieBasicsId: number) {
    return await db.query.movieBasicsTable.findFirst({
      where: eq(movieBasicsTable.movieBasicsId, movieBasicsId),
      with: {
        movieBasicToCountry: {
          with: {
            country: true
          }
        }
      }
    });
  }

  /* 分页查询 */
  async pageList(params?: Partial<MovieBasics & { keyword: string } & queryParams>) {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;
    const whereList = [];
    if (params?.title || params?.keyword) {
      whereList.push(like(movieBasicsTable.title, `%${params.title || params.keyword}%`));
    }
    const where = and(...whereList);

    const rowsQuery = db.query.movieBasicsTable.findMany({
      extras: {
        id: sql`${movieBasicsTable.movieBasicsId}`.as('id')
      },
      with: {
        movieBasicToCountry: {
          with: {
            country: true
          }
        }
      },
      where,
      offset,
      limit
    });
    const totalQuery = db.$count(movieBasicsTable, where);
    const [rows, total] = await Promise.all([rowsQuery, totalQuery]);

    return {
      rows,
      total
    };
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

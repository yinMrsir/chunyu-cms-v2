import { eq, and, inArray, like, not, lt } from 'drizzle-orm';
import { MoviePv, moviePvTable, NewMoviePv } from '~~/server/db/schema/movie/moviePv';
import { movieBasicsTable } from '~~/server/db/schema/movie/movieBasics';
import { queryParams } from '~~/server/db/query.helper';
import { movieBasicToGenreTable, MovieBasicToGenre } from '~~/server/db/schema/movie/movieBasicToGenre';
import { movieBasicToCountryTable, MovieBasicToCountry } from '~~/server/db/schema/movie/movieBasicToCountry';
import type { MovieBasics } from '~~/server/db/schema/movie/movieBasics';
import type { Country } from '~~/server/db/schema/basic/country';
import type { Genre } from '~~/server/db/schema/basic/genre';
import type { Cast } from '~~/server/db/schema/movie/cast';
import type { MovieRate } from '~~/server/db/schema/movie/rate';
import type { Actor } from '~~/server/db/schema/movie/actor';

type CastVo = Cast & { actor: Actor };
type GenreVo = MovieBasicToGenre & {
  genre: Pick<Genre, 'genreId' | 'name'>;
};
type movieBasicToCountryVo = MovieBasicToCountry & {
  country: Country | null;
};

export type MovieBasicsVo = MovieBasics & {
  movieBasicToCountry: movieBasicToCountryVo[];
} & { casts: CastVo[] } & { genres: GenreVo[] } & { pv: MoviePv } & {
  movieRate: MovieRate;
};

export type MoviePvAndMovieBasics = MoviePv & {
  movieBasic: MovieBasicsVo;
};

export class MoviePvServices {
  /* 新增 */
  async add(body: NewMoviePv) {
    await db.insert(moviePvTable).values(body);
  }

  /* 更新 */
  async update(moviePvId: number, pv: number) {
    await db.update(moviePvTable).set({ pv }).where(eq(moviePvTable.moviePvId, moviePvId));
  }

  /* 通过movieBasicsId查询单个 */
  async findByMovieBasicsId(movieBasicsId: number): Promise<MoviePv | undefined> {
    return await db.query.moviePvTable.findFirst({
      where: eq(moviePvTable.movieBasicsId, movieBasicsId)
    });
  }

  /* 通过pv从高到低排序返回movieBasicsId */
  async byPvDescPage(
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
  ): Promise<{ rows: MoviePvAndMovieBasics[]; total: number }> {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;
    const whereList = [];
    if (params?.columnValue) {
      whereList.push(
        inArray(
          moviePvTable.movieBasicsId,
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
          moviePvTable.movieBasicsId,
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
          moviePvTable.movieBasicsId,
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
            moviePvTable.movieBasicsId,
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
            moviePvTable.movieBasicsId,
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
          moviePvTable.movieBasicsId,
          (
            await db.query.movieBasicsTable.findMany({
              where: like(movieBasicsTable.languages, `%${params.language}%`)
            })
          ).map(item => item.movieBasicsId)
        )
      );
    }
    if (movieBasicsId) {
      whereList.push(not(eq(moviePvTable.movieBasicsId, movieBasicsId)));
    }
    const where = and(...whereList);
    const rowsQuery = db.query.moviePvTable.findMany({
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
      offset,
      limit: Number(limit),
      orderBy: (moviePvTable, { desc }) => [desc(moviePvTable.pv)]
    });
    const totalQuery = db.$count(moviePvTable, where);
    const [rows, total] = await Promise.all([rowsQuery, totalQuery]);
    return {
      rows,
      total
    };
  }

  // 获取所有
  async findAll() {
    return await db.query.moviePvTable.findMany();
  }
}

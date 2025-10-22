import dayjs from 'dayjs';
import isoWeek from 'dayjs/plugin/isoWeek.js';
import { and, eq, desc, inArray } from 'drizzle-orm';
import { MoviePvServices } from '../moviePv/moviePv.services';
import { MovieYearVisits, movieYearVisitsTable } from '~~/server/db/schema/movie/movieYearVisits';
import { queryParams } from '~~/server/db/query.helper';
import { MovieBasicsServices } from '~~/server/services/movie/movieBasics/movieBasics.services';

dayjs.extend(isoWeek);

export class MovieYearVisitsServices {
  private moviePvServices: MoviePvServices;
  private movieBasicsServices: MovieBasicsServices;
  constructor() {
    this.moviePvServices = new MoviePvServices();
    this.movieBasicsServices = new MovieBasicsServices();
  }

  async updateVisits() {
    // 获取今天的日期
    const currentDate = dayjs();
    // 获取本月年份
    const yearNumber = currentDate.format('YYYY');
    // 遍历所有有访问记录的影片
    const moviesWithVisits = await this.moviePvServices.findAll();

    // 上年
    const lastYearDate = currentDate.subtract(1, 'year');
    // 上年 年份
    const lastYearNumber = lastYearDate.format('YYYY');

    for (const movie of moviesWithVisits) {
      const currentYearRecord = await this.findOne(movie.movieBasicsId, yearNumber);
      const lastYearRecord = await db.query.movieYearVisitsTable.findFirst({
        where: and(
          eq(movieYearVisitsTable.yearNumber, lastYearNumber),
          eq(movieYearVisitsTable.movieBasicsId, movie.movieBasicsId)
        )
      });
      if (!currentYearRecord) {
        await db.insert(movieYearVisitsTable).values({
          movieBasicsId: movie.movieBasicsId,
          yearNumber,
          yearPv: movie?.pv || 0,
          yearIncrement: movie.pv - (lastYearRecord?.yearPv || 0),
          createTime: new Date(),
          updateTime: new Date()
        });
      } else {
        await db
          .update(movieYearVisitsTable)
          .set({
            yearPv: movie?.pv || 0,
            yearIncrement: movie.pv - (lastYearRecord?.yearPv || 0),
            updateTime: new Date()
          })
          .where(
            and(
              eq(movieYearVisitsTable.movieBasicsId, movie.movieBasicsId),
              eq(movieYearVisitsTable.yearNumber, yearNumber)
            )
          );
      }
    }
  }

  // 通过movieBasicsId和monthNumber查询
  async findOne(movieBasicsId: number, yearNumber: string) {
    return await db.query.movieYearVisitsTable.findFirst({
      where: and(eq(movieYearVisitsTable.movieBasicsId, movieBasicsId), eq(movieYearVisitsTable.yearNumber, yearNumber))
    });
  }

  async list(params?: Partial<MovieYearVisits & { columnValue?: string } & queryParams>) {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;

    // 获取今天的日期
    const currentDate = dayjs();
    const whereList = [eq(movieYearVisitsTable.yearNumber, currentDate.format('YYYY'))];

    if (params?.columnValue) {
      const movieList = await this.movieBasicsServices.findByColumnValue(params.columnValue);
      whereList.push(
        inArray(
          movieYearVisitsTable.movieBasicsId,
          movieList.map(item => item.movieBasicsId)
        )
      );
    }
    const where = and(...whereList);

    const rowsQuery = db.query.movieYearVisitsTable.findMany({
      with: {
        movie: {
          columns: {
            movieBasicsId: true,
            poster: true,
            title: true,
            year: true,
            summary: true,
            columnValue: true,
            tags: true
          },
          with: {
            casts: {
              with: {
                actor: true
              }
            }
          }
        }
      },
      where,
      offset,
      limit: Number(limit),
      orderBy: [desc(movieYearVisitsTable.yearIncrement), desc(movieYearVisitsTable.id)]
    });
    const totalQuery = db.$count(movieYearVisitsTable, where);
    const [rows, total] = await Promise.all([rowsQuery, totalQuery]);
    return {
      rows,
      total
    };
  }
}

import dayjs from 'dayjs';
import isoWeek from 'dayjs/plugin/isoWeek.js';
import { and, desc, eq, inArray } from 'drizzle-orm';
import { MoviePvServices } from '../moviePv/moviePv.services';
import { MovieWeeklyVisits, movieWeeklyVisitsTable } from '~~/server/db/schema/movie/movieWeeklyVisits';
import { queryParams } from '~~/server/db/query.helper';
import { MovieBasicsServices } from '~~/server/services/movie/movieBasics/movieBasics.services';

dayjs.extend(isoWeek);

export class MovieWeeklyVisitsServices {
  private moviePvServices: MoviePvServices;
  private movieBasicsServices: MovieBasicsServices;
  constructor() {
    this.moviePvServices = new MoviePvServices();
    this.movieBasicsServices = new MovieBasicsServices();
  }

  async updateVisits() {
    // 获取今天的日期
    const currentDate = dayjs();
    // 获取本周的年份
    const currentYearNumber = currentDate.isoWeekYear();
    // 获取本周的周数
    const currentWeekNumber = currentDate.isoWeek();
    // 遍历所有有访问记录的影片
    const moviesWithVisits = await this.moviePvServices.findAll();
    // 当前需要存储的周期
    const weekNumber = currentYearNumber + '-' + currentWeekNumber;

    // 上周
    const lastWeekDate = currentDate.subtract(1, 'week');
    // 上周 年份
    const lastYearNumber = lastWeekDate.isoWeekYear();
    // 上周 周数
    const lastWeekNumber = lastWeekDate.isoWeek();
    for (const movie of moviesWithVisits) {
      const currentWeekRecord = await this.findOne(movie.movieBasicsId, weekNumber);
      const lastWeekRecord = await db.query.movieWeeklyVisitsTable.findFirst({
        where: and(
          eq(movieWeeklyVisitsTable.weekNumber, lastYearNumber + '-' + lastWeekNumber),
          eq(movieWeeklyVisitsTable.movieBasicsId, movie.movieBasicsId)
        )
      });
      if (!currentWeekRecord) {
        await db.insert(movieWeeklyVisitsTable).values({
          movieBasicsId: movie.movieBasicsId,
          weekNumber,
          weeklyPv: movie?.pv || 0,
          weeklyIncrement: movie.pv - (lastWeekRecord?.weeklyPv || 0),
          createTime: new Date(),
          updateTime: new Date()
        });
      } else {
        await db
          .update(movieWeeklyVisitsTable)
          .set({
            weeklyPv: movie?.pv || 0,
            weeklyIncrement: movie.pv - (lastWeekRecord?.weeklyPv || 0),
            updateTime: new Date()
          })
          .where(
            and(
              eq(movieWeeklyVisitsTable.movieBasicsId, movie.movieBasicsId),
              eq(movieWeeklyVisitsTable.weekNumber, weekNumber)
            )
          );
      }
    }
  }

  // 通过movieBasicsId和weekNumber查询
  async findOne(movieBasicsId: number, weekNumber: string) {
    return await db.query.movieWeeklyVisitsTable.findFirst({
      where: and(
        eq(movieWeeklyVisitsTable.movieBasicsId, movieBasicsId),
        eq(movieWeeklyVisitsTable.weekNumber, weekNumber)
      )
    });
  }

  async list(params?: Partial<MovieWeeklyVisits & { columnValue?: string } & queryParams>) {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;

    // 获取今天的日期
    const currentDate = dayjs();
    // 获取本周的年份
    const currentYearNumber = currentDate.isoWeekYear();
    // 获取本周的周数
    const currentWeekNumber = currentDate.isoWeek();
    const whereList = [eq(movieWeeklyVisitsTable.weekNumber, currentYearNumber + '-' + currentWeekNumber)];

    if (params?.columnValue) {
      const movieList = await this.movieBasicsServices.findByColumnValue(params.columnValue);
      whereList.push(
        inArray(
          movieWeeklyVisitsTable.movieBasicsId,
          movieList.map(item => item.movieBasicsId)
        )
      );
    }
    const where = and(...whereList);

    const rowsQuery = db.query.movieWeeklyVisitsTable.findMany({
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
      orderBy: [desc(movieWeeklyVisitsTable.weeklyIncrement), desc(movieWeeklyVisitsTable.id)]
    });
    const totalQuery = db.$count(movieWeeklyVisitsTable, where);
    const [rows, total] = await Promise.all([rowsQuery, totalQuery]);
    return {
      rows,
      total
    };
  }
}

import dayjs from 'dayjs';
import isoWeek from 'dayjs/plugin/isoWeek.js';
import { and, eq, desc, inArray } from 'drizzle-orm';
import { MoviePvServices } from '../moviePv/moviePv.services';
import { MovieMonthVisits, movieMonthVisitsTable } from '~~/server/db/schema/movie/movieMonthVisits';
import { queryParams } from '~~/server/db/query.helper';
import { MovieBasicsServices } from '~~/server/services/movie/movieBasics/movieBasics.services';

dayjs.extend(isoWeek);

export class MovieMonthVisitsServices {
  private moviePvServices: MoviePvServices;
  private movieBasicsServices: MovieBasicsServices;
  constructor() {
    this.moviePvServices = new MoviePvServices();
    this.movieBasicsServices = new MovieBasicsServices();
  }

  async updateVisits() {
    // 获取今天的日期
    const currentDate = dayjs();

    // 遍历所有有访问记录的影片
    const moviesWithVisits = await this.moviePvServices.findAll();
    // 当前需要存储的月期
    const monthNumber = currentDate.format('YYYY-MM');

    // 上月
    const lastMonthDate = currentDate.subtract(1, 'month');
    for (const movie of moviesWithVisits) {
      const currentMonthRecord = await this.findOne(movie.movieBasicsId, monthNumber);
      const lastMonthRecord = await db.query.movieMonthVisitsTable.findFirst({
        where: and(
          eq(movieMonthVisitsTable.monthNumber, lastMonthDate.format('YYYY-MM')),
          eq(movieMonthVisitsTable.movieBasicsId, movie.movieBasicsId)
        )
      });
      if (!currentMonthRecord) {
        await db.insert(movieMonthVisitsTable).values({
          movieBasicsId: movie.movieBasicsId,
          monthNumber,
          monthPv: movie?.pv || 0,
          monthIncrement: movie.pv - (lastMonthRecord?.monthPv || 0),
          createTime: new Date(),
          updateTime: new Date()
        });
      } else {
        await db
          .update(movieMonthVisitsTable)
          .set({
            monthPv: movie?.pv || 0,
            monthIncrement: movie.pv - (lastMonthRecord?.monthPv || 0),
            updateTime: new Date()
          })
          .where(
            and(
              eq(movieMonthVisitsTable.movieBasicsId, movie.movieBasicsId),
              eq(movieMonthVisitsTable.monthNumber, monthNumber)
            )
          );
      }
    }
  }

  // 通过movieBasicsId和monthNumber查询
  async findOne(movieBasicsId: number, monthNumber: string) {
    return await db.query.movieMonthVisitsTable.findFirst({
      where: and(
        eq(movieMonthVisitsTable.movieBasicsId, movieBasicsId),
        eq(movieMonthVisitsTable.monthNumber, monthNumber)
      )
    });
  }

  async list(params?: Partial<MovieMonthVisits & { columnValue?: string } & queryParams>) {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;

    const currentDate = dayjs();
    const whereList = [eq(movieMonthVisitsTable.monthNumber, currentDate.format('YYYY-MM'))];

    if (params?.columnValue) {
      const movieList = await this.movieBasicsServices.findByColumnValue(params.columnValue);
      whereList.push(
        inArray(
          movieMonthVisitsTable.movieBasicsId,
          movieList.map(item => item.movieBasicsId)
        )
      );
    }
    const where = and(...whereList);

    const rowsQuery = db.query.movieMonthVisitsTable.findMany({
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
      orderBy: [desc(movieMonthVisitsTable.monthIncrement), desc(movieMonthVisitsTable.id)]
    });
    const totalQuery = db.$count(movieMonthVisitsTable, where);
    const [rows, total] = await Promise.all([rowsQuery, totalQuery]);
    return {
      rows,
      total
    };
  }
}

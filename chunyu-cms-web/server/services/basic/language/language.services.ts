import { and, eq, inArray, like, sql } from 'drizzle-orm';
import { queryParams } from '~~/server/db/query.helper';
import { Language, languageTable, NewLanguage } from '~~/server/db/schema/basic/language';
import { countryTable } from '~~/server/db/schema/basic/country';
import { movieBasicsTable } from '~~/server/db/schema/movie/movieBasics';

export class LanguageServices {
  /* 新增 */
  async add(body: NewLanguage) {
    await db.insert(languageTable).values(body);
  }

  /* 更新 */
  async update(body: Language) {
    await db.update(languageTable).set(body).where(eq(languageTable.languageId, body.languageId));
  }

  /* 分页查询 */
  async pageList(params?: Partial<Language & { keyword: string } & queryParams>) {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;
    const whereList = [];
    if (params?.name || params?.keyword) {
      whereList.push(like(languageTable.name, `%${params.name || params.keyword}%`));
    }
    const where = and(...whereList);

    const rowsQuery = db.query.languageTable.findMany({
      extras: {
        id: sql`${languageTable.languageId}`.as('id'),
        movieCount: db
          .$count(movieBasicsTable, sql`movie_basics.languages LIKE CONCAT('%', ${languageTable.name}, '%')`)
          .as('movieCount')
      },
      with: {
        country: {
          columns: {
            name: true,
            flag: true
          },
          extras: {
            id: sql`${countryTable.countryId}`.as('id')
          }
        }
      },
      where,
      offset,
      limit: Number(limit)
    });
    const totalQuery = db.$count(languageTable, where);
    const [rows, total] = await Promise.all([rowsQuery, totalQuery]);
    return {
      rows,
      total
    };
  }

  async allList(params?: Partial<Language & { keyword: string }>) {
    const whereList = [];
    if (params?.name || params?.keyword) {
      whereList.push(like(languageTable.name, `%${params.name || params.keyword}%`));
    }
    const where = and(...whereList);

    return await db.query.languageTable.findMany({
      extras: {
        id: sql`${languageTable.languageId}`.as('id')
      },
      where
    });
  }

  /* 删除 */
  async delete(languageIds: string[]) {
    await db.delete(languageTable).where(
      inArray(
        languageTable.languageId,
        languageIds.map(languageId => Number(languageId))
      )
    );
  }
}

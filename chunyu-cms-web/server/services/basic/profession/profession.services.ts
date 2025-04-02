import { and, eq, inArray, like, sql } from 'drizzle-orm';
import { Profession, professionTable, NewProfession } from '~/server/db/schema/basic/profession';
import { queryParams } from '~/server/db/query.helper';

export class ProfessionServices {
  /* 新增 */
  async add(body: NewProfession) {
    await db.insert(professionTable).values(body);
  }

  /* 更新 */
  async update(body: Profession) {
    await db.update(professionTable).set(body).where(eq(professionTable.professionId, body.professionId));
  }

  /* 分页查询 */
  async pageList(params?: Partial<Profession & { keyword: string } & queryParams>) {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;
    const whereList = [];
    if (params?.name || params?.keyword) {
      whereList.push(like(professionTable.name, `%${params.name || params.keyword}%`));
    }
    const where = and(...whereList);

    const rowsQuery = db.query.professionTable.findMany({
      extras: {
        id: sql`${professionTable.professionId}`.as('id')
      },
      where,
      offset,
      limit
    });
    const totalQuery = db.$count(professionTable, where);
    const [rows, total] = await Promise.all([rowsQuery, totalQuery]);
    return {
      rows,
      total
    };
  }

  allList(params?: Partial<Profession & { keyword: string }>) {
    const whereList = [];
    if (params?.name || params?.keyword) {
      whereList.push(like(professionTable.name, `%${params.name || params.keyword}%`));
    }
    if (params?.status) {
      whereList.push(eq(professionTable.status, params.status));
    }
    const where = and(...whereList);

    return db.query.professionTable.findMany({
      extras: {
        id: sql`${professionTable.professionId}`.as('id')
      },
      where
    });
  }

  /* 删除 */
  async delete(genreIds: string[]) {
    await db.delete(professionTable).where(
      inArray(
        professionTable.professionId,
        genreIds.map(genreId => Number(genreId))
      )
    );
  }
}

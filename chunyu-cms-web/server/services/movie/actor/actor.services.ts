import { and, eq, inArray, like, sql } from 'drizzle-orm';
import { Actor, actorTable, NewActor } from '~~/server/db/schema/movie/actor';
import { queryParams } from '~~/server/db/query.helper';

export class ActorServices {
  /* 新增 */
  async add(body: NewActor) {
    await db.insert(actorTable).values(body);
  }

  /* 更新 */
  async update(body: Actor) {
    await db.update(actorTable).set(body).where(eq(actorTable.actorId, body.actorId));
  }

  /* 分页查询 */
  async pageList(params?: Partial<Actor & { keyword: string } & queryParams>) {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;
    const whereList = [];
    if (params?.name || params?.keyword) {
      whereList.push(like(actorTable.name, `%${params.name || params.keyword}%`));
    }
    const where = and(...whereList);

    const rowsQuery = db.query.actorTable.findMany({
      extras: {
        id: sql`${actorTable.actorId}`.as('id')
      },
      with: {
        country: true
      },
      where,
      offset,
      limit: Number(limit)
    });
    const totalQuery = db.$count(actorTable, where);
    const [rows, total] = await Promise.all([rowsQuery, totalQuery]);
    return {
      rows,
      total
    };
  }

  async allList(params?: Partial<Actor & { keyword: string }>) {
    const whereList = [];
    if (params?.name || params?.keyword) {
      whereList.push(like(actorTable.name, `%${params.name || params.keyword}%`));
    }
    const where = and(...whereList);

    const rows = await db.query.actorTable.findMany({
      extras: {
        id: sql`${actorTable.actorId}`.as('id')
      },
      where
    });
    return { rows };
  }

  /* 删除 */
  async delete(genreIds: string[]) {
    await db.delete(actorTable).where(
      inArray(
        actorTable.actorId,
        genreIds.map(genreId => Number(genreId))
      )
    );
  }
}

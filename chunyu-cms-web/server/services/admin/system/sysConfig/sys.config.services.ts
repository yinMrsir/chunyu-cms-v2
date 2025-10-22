import { like, eq, between, and, not, inArray } from 'drizzle-orm';
import dayjs from 'dayjs';
import { NewSysConfig, SysConfig, sysConfigTable } from '~~/server/db/schema/system/sysConfig';
import { queryParams } from '~~/server/db/query.helper';

export class SysConfigServices {
  async add(body: NewSysConfig) {
    const sysConfig = await this.findByConfigKey(body.configKey as string, body.sysConfigId);
    if (sysConfig) {
      throw createError({ statusCode: 400, statusMessage: '配置键名已存在' });
    }
    return db.insert(sysConfigTable).values(body);
  }

  async update(body: SysConfig) {
    const sysConfig = await this.findByConfigKey(body.configKey as string, body.sysConfigId);
    if (sysConfig) {
      throw createError({ statusCode: 400, statusMessage: '配置键名已存在' });
    }
    return db.update(sysConfigTable).set(body).where(eq(sysConfigTable.sysConfigId, body.sysConfigId));
  }

  async list(params: Partial<SysConfig & queryParams>) {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;

    const whereList = [];

    if (params.configName) {
      whereList.push(like(sysConfigTable.configName, `%${params.configName}%`));
    }

    if (params.configKey) {
      whereList.push(like(sysConfigTable.configKey, `%${params.configKey}%`));
    }

    if (params.configType) {
      whereList.push(eq(sysConfigTable.configType, params.configType));
    }

    if (params['params[beginTime]'] && params['params[endTime]']) {
      const endTime = dayjs(params['params[endTime]']).add(1, 'day').format();
      whereList.push(between(sysConfigTable.createTime, new Date(params['params[beginTime]']), new Date(endTime)));
    }
    const where = and(...whereList);
    const rowsQuery = await db.query.sysConfigTable.findMany({
      where,
      limit,
      offset
    });
    const totalQuery = db.$count(sysConfigTable, where);

    const [rows, total] = await Promise.all([rowsQuery, totalQuery]);

    return {
      rows,
      total
    };
  }

  /* 通过id查询 */
  async findById(sysConfigId: number) {
    return await db.query.sysConfigTable.findFirst({
      where: eq(sysConfigTable.sysConfigId, sysConfigId)
    });
  }

  /* 通过id数组删除 */
  delete(sysConfigIdArr: number[] | string[]) {
    return db.delete(sysConfigTable).where(
      inArray(
        sysConfigTable.sysConfigId,
        sysConfigIdArr.map(item => Number(item))
      )
    );
  }

  /* 通过字参数键名查询 */
  async findByConfigKey(configKey: string, sysConfigId?: number): Promise<SysConfig | undefined> {
    const whereList = [eq(sysConfigTable.configKey, configKey)];
    if (sysConfigId) {
      whereList.push(not(eq(sysConfigTable.sysConfigId, sysConfigId)));
    }
    const where = and(...whereList);
    return await db.query.sysConfigTable.findFirst({
      where
    });
  }
}

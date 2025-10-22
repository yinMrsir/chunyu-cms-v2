import { eq, inArray, and, between, like, not } from 'drizzle-orm';
import dayjs from 'dayjs';
import { DICTTYPE_KEY } from '~~/server/contants/redis.contant';
import { dictDataTable, dictTypeTable } from '~~/server/db/schema/system/dict';

type tDictType = typeof dictTypeTable.$inferInsert;
type tDictData = typeof dictDataTable.$inferInsert;

type queryParams = {
  pageNum?: number;
  limit?: number;
  'params[beginTime]'?: string;
  'params[endTime]'?: string;
};

export class DictServices {
  /* 新增字典类型 */
  async addType(type: tDictType & { dictType: string }) {
    const dictType = await this.findByDictType(type.dictType);
    if (dictType) {
      throw createError({ statusCode: 400, message: '该字典类型已存在，请更换' });
    }
    await db.insert(dictTypeTable).values(type);
  }

  /* 更新字典类型 */
  updateType(params: tDictType & { dictId: number }) {
    const { dictId } = params;
    return db.update(dictTypeTable).set(params).where(eq(dictTypeTable.dictId, dictId));
  }

  /* 分页查询字典类型list */
  async typeList(params: Partial<tDictType & queryParams>) {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;

    const whereList = [];
    if (params.dictName) {
      whereList.push(like(dictTypeTable.dictName, `%${params.dictName}%`));
    }
    if (params.dictType) {
      whereList.push(like(dictTypeTable.dictType, `%${params.dictType}%`));
    }
    if (params.status) {
      whereList.push(eq(dictTypeTable.status, params.status));
    }
    if (params['params[beginTime]'] && params['params[endTime]']) {
      whereList.push(
        between(
          dictTypeTable.createTime,
          new Date(params['params[beginTime]']),
          new Date(dayjs(params['params[endTime]']).add(1, 'day').format())
        )
      );
    }
    const where = and(...whereList);

    const queryRows = db.query.dictTypeTable.findMany({
      limit,
      offset,
      where
    });
    const queryTotal = db.$count(dictTypeTable, where);

    const [rows, total] = await Promise.all([queryRows, queryTotal]);
    return { rows, total };
  }

  /* 通过字典类型查询 */
  findByDictType(dictType: string, dictId?: number) {
    return db.query.dictTypeTable.findFirst({
      where: (dictTypeTable, { eq, and }) => {
        const whereList = [eq(dictTypeTable.dictType, dictType)];
        if (dictId) {
          whereList.push(eq(dictTypeTable.dictId, dictId));
        }
        return and(...whereList);
      }
    });
  }

  /* 通过字典id数组删除 */
  deleteByDictIdArr(dictIdArr: number[] | string[]) {
    return db.delete(dictTypeTable).where(
      inArray(
        dictTypeTable.dictId,
        dictIdArr.map(item => Number(item))
      )
    );
  }

  /* 通过 dictType 获取 字典数据(排除停用的) 并缓存进入redis */
  async getDictDataByDictType(dictType: string) {
    const dictDataArrRedis = await useStorage('redis').getItem(`${DICTTYPE_KEY}:${dictType}`);
    if (dictDataArrRedis) {
      return dictDataArrRedis;
    }
    const whereList = [];
    whereList.push(eq(dictDataTable.status, '0'));
    whereList.push(
      inArray(
        dictDataTable.dictTypeId,
        db
          .select({ dictId: dictTypeTable.dictId })
          .from(dictTypeTable)
          .where(and(eq(dictTypeTable.dictType, dictType), eq(dictTypeTable.status, '0')))
      )
    );

    const dictDataArr = await db
      .select({ ...dictDataTable, dictType: dictTypeTable.dictType } as any)
      .from(dictDataTable)
      .innerJoin(dictTypeTable, eq(dictTypeTable.dictId, dictDataTable.dictTypeId))
      .where(and(...whereList));

    await useStorage('redis').setItem(`${DICTTYPE_KEY}:${dictType}`, dictDataArr);

    return dictDataArr;
  }

  /* 清除缓存 */
  async refreshCache() {
    const redis = useStorage('redis');
    const keyArr = await redis.getKeys(`${DICTTYPE_KEY}`);
    for (const key of keyArr) {
      await redis.removeItem(key);
    }
  }

  /* 通过id 查找字典类型 */
  findDictTypeById(dictId: number) {
    return db.query.dictTypeTable.findFirst({
      where: (dictTypeTable, { eq }) => eq(dictTypeTable.dictId, dictId)
    });
  }

  /* 分页查询字典数据 */
  async dictDataList(params: Partial<tDictData & queryParams & { dictType: string }>) {
    if (!params.dictType) {
      throw createError({ statusCode: 400, message: 'dictType is required' });
    }
    const whereList = [];
    if (params.status) {
      whereList.push(eq(dictDataTable.status, params.status));
    }
    if (params.dictLabel) {
      whereList.push(like(dictDataTable.dictLabel, `%${params.dictLabel}%`));
    }
    whereList.push(
      inArray(
        dictDataTable.dictTypeId,
        db
          .select({ dictId: dictTypeTable.dictId })
          .from(dictTypeTable)
          .where(eq(dictTypeTable.dictType, params.dictType))
      )
    );
    const where = and(...whereList);

    const queryRows = db.query.dictDataTable.findMany({
      with: {
        dictType: true
      },
      where
    });
    const queryTotal = db.$count(dictDataTable, where);
    const [rows, total] = await Promise.all([queryRows, queryTotal]);
    return {
      rows,
      total
    };
  }

  /* 通过字典类型查询 */
  findDictType(dictType: string) {
    return db.query.dictTypeTable.findFirst({
      where: (dictTypeTable, { eq }) => eq(dictTypeTable.dictType, dictType)
    });
  }

  /* 获取所有字典类型 */
  findAllDictType() {
    return db.query.dictTypeTable.findMany();
  }

  /* 通过字典类型和数据键值查询数据 */
  getDictDataByTypeOrValue(dictType: string, dictValue: string, dictCode?: number) {
    const whereList = [];
    whereList.push(eq(dictDataTable.dictValue, dictValue));
    whereList.push(
      inArray(
        dictDataTable.dictTypeId,
        db.select({ dictId: dictTypeTable.dictId }).from(dictTypeTable).where(eq(dictTypeTable.dictType, dictType))
      )
    );
    if (dictCode) {
      whereList.push(not(eq(dictDataTable.dictCode, dictCode)));
    }
    const where = and(...whereList);

    return db.query.dictDataTable.findFirst({
      where
    });
  }

  /* 新增字典数据 */
  async addDictData(params: {
    dictLabel: string;
    dictValue: string;
    cssClass: string;
    listClass: string;
    dictSort: number;
    status: string;
    dictType: string;
  }) {
    const dictType = await this.findByDictType(params.dictType);
    if (!dictType) {
      throw createError({ statusCode: 400, message: '字典类型不存在' });
    }
    const body = { ...params, dictTypeId: dictType.dictId };
    return db.insert(dictDataTable).values(body).$returningId();
  }

  /* 编辑字典数据 */
  updateDictData(params: {
    dictCode: number;
    dictLabel: string;
    dictValue: string;
    cssClass: string;
    listClass: string;
    dictSort: number;
    status: string;
    dictType: string;
    updateBy: string;
  }) {
    return db.update(dictDataTable).set(params).where(eq(dictDataTable.dictCode, params.dictCode));
  }

  /* 通过dictCode获取字典数据 */
  findDictDataById(dictCode: number) {
    return db.query.dictDataTable.findFirst({
      with: {
        dictType: true
      },
      where: (dictDataTable, { eq }) => eq(dictDataTable.dictCode, dictCode)
    });
  }

  /* 删除字典数据 */
  deleteDictDataByids(dictDataArr: number[] | string[]) {
    return db.delete(dictDataTable).where(
      inArray(
        dictDataTable.dictCode,
        dictDataArr.map(item => Number(item))
      )
    );
  }
}

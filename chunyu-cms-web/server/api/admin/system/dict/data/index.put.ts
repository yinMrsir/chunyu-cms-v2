import { DictServices } from '~~/server/services/admin/system/dict/dict.services';

const dictService = new DictServices();

export default defineEventHandler(async event => {
  await event.context.validatePermission('system:dict:edit');
  const body = await readBody(event);
  body.updateBy = event.context.user.userName;
  body.updateTime = new Date();
  delete body.createTime;
  const dictData = await dictService.getDictDataByTypeOrValue(body.dictType, body.dictValue, body.dictCode);
  if (dictData) {
    throw createError({ statusCode: 400, message: '该数据键值已存在，请更换' });
  }
  await dictService.updateDictData(body);
  return createApiResponse(null);
});

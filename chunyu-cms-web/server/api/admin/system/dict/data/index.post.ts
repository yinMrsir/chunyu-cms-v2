import { useAuth } from '~~/server/composables/useAuth';
import { DictServices } from '~~/server/services/admin/system/dict/dict.services';

const dictService = new DictServices();

export default defineEventHandler(async event => {
  await event.context.validatePermission('system:dict:add');
  const body = await readBody(event);
  const dictData = await dictService.getDictDataByTypeOrValue(body.dictType, body.dictValue);
  if (dictData) {
    throw createError({ statusCode: 400, message: '该数据键值已存在，请更换' });
  }
  return createApiResponse(await dictService.addDictData(body));
});

import { DictServices } from '~~/server/services/admin/system/dict/dict.services';

export default defineEventHandler(async event => {
  await event.context.validatePermission('system:dict:remove');
  const dictCode = getRouterParam(event, 'dictCode');
  if (!dictCode) {
    throw createError({ statusCode: 400, message: 'dictCode undefined' });
  }
  await new DictServices().deleteDictDataByids(dictCode.split(','));
});

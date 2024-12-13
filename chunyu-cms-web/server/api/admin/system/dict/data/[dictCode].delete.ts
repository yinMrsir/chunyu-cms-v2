import { useAuth } from '~/server/composables/useAuth';
import { DictServices } from '~/server/services/admin/system/dict/dict.services';

export default defineEventHandler(async event => {
  const dictCode = getRouterParam(event, 'dictCode');
  if (!dictCode) {
    throw createError({ statusCode: 400, message: 'dictCode undefined' });
  }
  await new DictServices().deleteDictDataByids(dictCode.split(','));
});

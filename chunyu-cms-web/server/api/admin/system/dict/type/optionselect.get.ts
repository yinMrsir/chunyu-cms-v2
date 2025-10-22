import { DictServices } from '~~/server/services/admin/system/dict/dict.services';

export default defineEventHandler(async () => {
  const data = await new DictServices().findAllDictType();
  return createApiResponse(data);
});

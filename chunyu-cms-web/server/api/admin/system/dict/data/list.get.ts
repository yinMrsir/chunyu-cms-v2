import { DictServices } from '~/server/services/admin/system/dict/dict.services';

export default defineEventHandler(async event => {
  const query = getQuery(event);
  const data = await new DictServices().dictDataList(query);
  return createApiResponse(data);
});

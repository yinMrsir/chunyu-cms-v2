import { useAuth } from '~~/server/composables/useAuth';
import { DictServices } from '~~/server/services/admin/system/dict/dict.services';

/* 刷新字典缓存 */
export default defineEventHandler(async () => {
  await new DictServices().refreshCache();
  return createApiResponse(null);
});

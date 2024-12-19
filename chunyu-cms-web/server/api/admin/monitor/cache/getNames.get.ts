import { DICTTYPE_KEY, USER_TOKEN_KEY } from '~/server/contants/redis.contant';

export default defineEventHandler(() => {
  const caches = [];
  caches.push({
    cacheName: USER_TOKEN_KEY,
    cacheKey: '',
    cacheValue: '',
    remark: '系统用户'
  });
  caches.push({
    cacheName: DICTTYPE_KEY,
    cacheKey: '',
    cacheValue: '',
    remark: '数据字典'
  });
  return createApiResponse(caches);
});

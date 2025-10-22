import { DICTTYPE_KEY, USER_TOKEN_KEY, USER_WEB_KEY } from '~~/server/contants/redis.contant';

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
  caches.push({
    cacheName: USER_WEB_KEY,
    cacheKey: '',
    cacheValue: '',
    remark: '用户端接口'
  });
  return createApiResponse(caches);
});

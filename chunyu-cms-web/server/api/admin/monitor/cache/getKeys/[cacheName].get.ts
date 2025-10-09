export default defineEventHandler(async event => {
  const cacheName = getRouterParam(event, 'cacheName');
  if (!cacheName) {
    throw createError({ statusCode: 400, message: '参数错误' });
  }
  const redis = useStorage('redis');
  const data = await redis.getKeys(cacheName);
  return createApiResponse(data);
});

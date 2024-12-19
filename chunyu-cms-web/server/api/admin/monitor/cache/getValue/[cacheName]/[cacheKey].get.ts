export default defineEventHandler(async event => {
  const { cacheKey } = getRouterParams(event);
  const redis = useStorage('redis');
  const data = await redis.getItem(cacheKey);
  return createApiResponse({
    cacheName: cacheKey.substring(0, cacheKey.lastIndexOf(':')),
    cacheKey: cacheKey.substring(cacheKey.lastIndexOf(':')),
    cacheValue: JSON.stringify(data)
  });
});

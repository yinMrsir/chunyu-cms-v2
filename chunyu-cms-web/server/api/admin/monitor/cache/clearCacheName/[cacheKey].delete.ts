export default defineEventHandler(async event => {
  const cacheKey = getRouterParam(event, 'cacheKey');
  if (!cacheKey) {
    throw createError({ statusCode: 400, message: 'cacheKey is required' });
  }
  const redis = useStorage('redis');
  const data = await redis.getKeys(cacheKey);
  for (const datum of data) {
    await redis.removeItem(datum);
  }
  return createApiResponse(null);
});

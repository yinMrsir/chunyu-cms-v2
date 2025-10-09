export default defineEventHandler(async event => {
  const cacheKey = getRouterParam(event, 'cacheKey');
  if (!cacheKey) {
    throw createError({ statusCode: 400, message: 'cacheKey is required' });
  }
  const redis = useStorage('redis');
  await redis.removeItem(cacheKey);
  return createApiResponse(null);
});

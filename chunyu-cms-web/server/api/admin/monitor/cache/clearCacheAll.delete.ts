export default defineEventHandler(async () => {
  const redis = useStorage('redis');
  const data = await redis.getKeys('');
  for (const datum of data) {
    await redis.removeItem(datum);
  }
  return createApiResponse(null);
});

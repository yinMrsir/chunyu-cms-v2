export const localCacheData = (key: string, minute: number = 30) => {
  const nuxtApp = useNuxtApp();
  const data = nuxtApp.payload.data[key] || nuxtApp.static.data[key];
  if (!data || minute === 0) {
    return;
  }
  const expirationDate = new Date(data.fetchedAt);
  // 缓存时间30分钟
  expirationDate.setTime(expirationDate.getTime() + minute * 60 * 1000);
  const isExpired = expirationDate.getTime() < Date.now();
  if (isExpired) {
    return;
  }
  return data;
};

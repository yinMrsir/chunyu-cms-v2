import { BannerServices } from '~~/server/services/basic/banner/banner.services';

const bannerServices = new BannerServices();

export default defineEventHandler(async event => {
  const ids = getRouterParam(event, 'ids');
  if (!ids) {
    throw createError({ statusCode: 400, message: '参数错误' });
  }
  await bannerServices.delete(ids.split(','));
  return createApiResponse(null);
});

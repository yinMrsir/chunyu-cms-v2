import { BannerServices } from '~~/server/services/basic/banner/banner.services';

const bannerServices = new BannerServices();

export default defineEventHandler(async event => {
  const query = getQuery(event);
  const data = await bannerServices.pageList(query);
  return createApiResponse(data);
});

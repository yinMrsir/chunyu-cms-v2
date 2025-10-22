import { BannerServices } from '~~/server/services/basic/banner/banner.services';

const bannerServices = new BannerServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  await bannerServices.add(body);
  return createApiResponse(null);
});

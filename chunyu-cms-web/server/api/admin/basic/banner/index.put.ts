import { BannerServices } from '~~/server/services/basic/banner/banner.services';

const bannerServices = new BannerServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  delete body.createTime;
  body.updateTime = new Date();
  await bannerServices.update(body);
  return createApiResponse(null);
});

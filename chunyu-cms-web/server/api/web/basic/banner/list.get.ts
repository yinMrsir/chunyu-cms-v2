import { BannerServices } from '~/server/services/basic/banner/banner.services';

const bannerServices = new BannerServices();

export default defineEventHandler(async () => {
  const data = await bannerServices.pageList();
  return data.rows;
});

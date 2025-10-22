import { BannerServices } from '~~/server/services/basic/banner/banner.services';

const bannerServices = new BannerServices();

export default defineCachedEventHandler(
  async () => {
    const data = await bannerServices.pageList();
    return data.rows;
  },
  { base: 'redis', maxAge: 60 * 60 }
);

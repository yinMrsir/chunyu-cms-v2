import { CountryServices } from '~/server/services/basic/country/country.services';

const countryServices = new CountryServices();

export default defineCachedEventHandler(
  async () => {
    return await countryServices.allList();
  },
  { maxAge: 60 * 30 }
);

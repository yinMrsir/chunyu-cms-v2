import { CountryServices } from '~/server/services/basic/country/country.services';

const countryServices = new CountryServices();

export default defineEventHandler(async () => {
  return await countryServices.allList();
});

import { CountryServices } from '~~/server/services/basic/country/country.services';

const countryServices = new CountryServices();

export default defineEventHandler(async () => {
  const data = await countryServices.getCountryLevelAll();
  return createApiResponse(data);
});

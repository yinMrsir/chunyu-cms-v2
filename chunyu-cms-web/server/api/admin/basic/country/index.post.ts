import { CountryServices } from '~~/server/services/basic/country/country.services';

const countryServices = new CountryServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  await countryServices.add(body);
  return createApiResponse(null);
});

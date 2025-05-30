import { CountryServices } from '~/server/services/basic/country/country.services';

const countryServices = new CountryServices();

export default defineEventHandler(async event => {
  const query = getQuery(event);
  const data = await countryServices.allList(query);
  return createApiResponse(data);
});

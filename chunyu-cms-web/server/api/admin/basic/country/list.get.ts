import { CountryServices } from '~~/server/services/basic/country/country.services';

const countryServices = new CountryServices();

export default defineEventHandler(async event => {
  const query = getQuery(event);
  const data = await countryServices.pageList(query);
  return createApiResponse(data);
});

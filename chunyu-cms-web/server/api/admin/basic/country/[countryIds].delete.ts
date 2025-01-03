import { CountryServices } from '~/server/services/basic/country/country.services';

const countryServices = new CountryServices();

export default defineEventHandler(async event => {
  const countryIds = getRouterParam(event, 'countryIds');
  if (!countryIds) {
    throw createError({ statusCode: 400, message: '参数错误' });
  }
  await countryServices.delete(countryIds.split(','));
  return createApiResponse(null);
});

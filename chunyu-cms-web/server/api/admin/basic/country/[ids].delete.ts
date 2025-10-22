import { CountryServices } from '~~/server/services/basic/country/country.services';

const countryServices = new CountryServices();

export default defineEventHandler(async event => {
  const ids = getRouterParam(event, 'ids');
  if (!ids) {
    throw createError({ statusCode: 400, message: '参数错误' });
  }
  await countryServices.delete(ids.split(','));
  return createApiResponse(null);
});

import { CountryServices } from '~~/server/services/basic/country/country.services';

const countryServices = new CountryServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  delete body.createTime;
  body.updateTime = new Date();
  await countryServices.update(body);
  return createApiResponse(null);
});

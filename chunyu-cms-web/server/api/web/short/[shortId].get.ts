import { ShortServices } from '~~/server/services/short/short.services';

const shortServices = new ShortServices();

export default defineEventHandler(async event => {
  const shortId = getRouterParam(event, 'shortId');
  if (!shortId) {
    return createError({
      statusCode: 400,
      message: 'shortId is required'
    });
  }
  return await shortServices.getById(Number(shortId));
});

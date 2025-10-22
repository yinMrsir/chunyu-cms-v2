import { LanguageServices } from '~~/server/services/basic/language/language.services';

const languageServices = new LanguageServices();

export default defineEventHandler(async event => {
  const ids = getRouterParam(event, 'ids');
  if (!ids) {
    throw createError({ statusCode: 400, message: '参数错误' });
  }
  await languageServices.delete(ids.split(','));
  return createApiResponse(null);
});

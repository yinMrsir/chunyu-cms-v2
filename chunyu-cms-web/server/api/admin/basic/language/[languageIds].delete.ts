import { LanguageServices } from '~/server/services/basic/language/language.services';

const languageServices = new LanguageServices();

export default defineEventHandler(async event => {
  const languageIds = getRouterParam(event, 'languageIds');
  if (!languageIds) {
    throw createError({ statusCode: 400, message: '参数错误' });
  }
  await languageServices.delete(languageIds.split(','));
  return createApiResponse(null);
});

import { LanguageServices } from '~~/server/services/basic/language/language.services';

const languageServices = new LanguageServices();

export default defineEventHandler(async event => {
  const params = getQuery(event);
  const data = await languageServices.allList(params);
  return createApiResponse(data);
});

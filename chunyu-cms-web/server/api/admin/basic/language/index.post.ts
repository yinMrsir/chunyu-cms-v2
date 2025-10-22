import { LanguageServices } from '~~/server/services/basic/language/language.services';

const languageServices = new LanguageServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  await languageServices.add(body);
  return createApiResponse(null);
});

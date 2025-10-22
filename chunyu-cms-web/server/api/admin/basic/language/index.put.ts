import { LanguageServices } from '~~/server/services/basic/language/language.services';

const languageServices = new LanguageServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  delete body.createTime;
  body.updateTime = new Date();
  await languageServices.update(body);
  return createApiResponse(null);
});

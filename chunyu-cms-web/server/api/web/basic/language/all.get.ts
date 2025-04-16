import { LanguageServices } from '~/server/services/basic/language/language.services';

const languageServices = new LanguageServices();

export default defineEventHandler(async () => {
  return await languageServices.allList();
});

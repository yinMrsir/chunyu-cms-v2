import { LanguageServices } from '~~/server/services/basic/language/language.services';

const languageServices = new LanguageServices();

export default defineCachedEventHandler(
  async () => {
    return await languageServices.allList();
  },
  { base: 'redis', maxAge: 60 * 60 }
);

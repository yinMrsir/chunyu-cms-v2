import { LanguageServices } from '~/server/services/basic/language/language.services';

const languageServices = new LanguageServices();

export default defineCachedEventHandler(
  async () => {
    return await languageServices.allList();
  },
  { maxAge: 60 * 30 }
);

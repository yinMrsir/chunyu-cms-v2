import { WEB_TOKEN } from '~~/shared/cookiesName';

export default defineNuxtRouteMiddleware(() => {
  const token = useCookie<string | undefined>(WEB_TOKEN);
  if (!token?.value) {
    return navigateTo('/');
  }
});

import { WEB_TOKEN, WEB_USER_INFO } from '~/shared/cookiesName';

export const createToken = () => {
  const token = useCookie(WEB_TOKEN);
  return 'Bearer ' + token.value;
};

export const request = (options: { url: any; method?: any; body?: any }) => {
  return new Promise<any>((resolve, reject) => {
    $fetch(options.url, {
      method: options.method || 'get',
      body: options.body,
      headers: {
        'Content-Type': 'application/json',
        token: createToken()
      }
    })
      .then((response: any) => {
        if (response.code === 200) {
          resolve(response.data);
        } else if (response.code === 401) {
          const token = useCookie(WEB_TOKEN);
          const userInfo = useCookie(WEB_USER_INFO);
          token.value = null;
          userInfo.value = null;
        } else {
          ElMessage.error(response.msg);
          reject(response.msg);
        }
      })
      .catch(error => {
        ElMessage.error(error.response?._data.message || error.message);
        reject(error.message);
      });
  });
};

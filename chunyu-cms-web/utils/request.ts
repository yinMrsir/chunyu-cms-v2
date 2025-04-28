import { WEB_TOKEN } from '~/shared/cookiesName';

export const createToken = () => {
  const token = useCookie(WEB_TOKEN);
  return 'Bearer ' + token.value;
};

export const request = options => {
  return new Promise<any>((resolve, reject) => {
    $fetch(options.url, {
      method: options.method || 'get',
      body: JSON.stringify(options.body),
      headers: {
        'Content-Type': 'application/json',
        token: createToken()
      }
    })
      .then(response => {
        if (response.code === 200) {
          resolve(response.data);
        } else {
          ElMessage.error(response.msg);
          reject(response.msg);
        }
      })
      .catch(error => {
        ElMessage.error(error.response._data.message || error.message);
        reject(error.message);
      });
  });
};

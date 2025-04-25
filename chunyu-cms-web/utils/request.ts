export const request = async options => {
  const response = await $fetch(options.url, {
    method: options.method || 'get',
    body: JSON.stringify(options.body)
  });
  if (response.code === 200) {
    return response.data;
  } else {
    ElMessage.error(response.msg);
  }
};

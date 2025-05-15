export default defineEventHandler(async event => {
  const body = await readBody(event);
  console.log(body);
  return {
    return_code: 'SUCCESS',
    return_msg: 'OK'
  };
});

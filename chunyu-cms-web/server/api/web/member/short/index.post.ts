import { ShortServices } from '~~/server/services/short/short.services';

const shortServices = new ShortServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  await shortServices.add({ ...body, memberUserId: event.context.memberUser.memberUserId });
  return createApiResponse(null);
});

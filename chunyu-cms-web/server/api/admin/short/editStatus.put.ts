import { ShortServices } from '~~/server/services/short/short.services';

const shortServices = new ShortServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  await shortServices.editStatus({ status: body.status, shortId: body.shortId, remark: body.remark });
  return createApiResponse(null);
});

import { ColumnsServices } from '~~/server/services/basic/columns/columns.services';

const columnsServices = new ColumnsServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  delete body.createTime;
  body.updateTime = new Date();
  await columnsServices.update(body);
  return createApiResponse(null);
});

import { ColumnsServices } from '~~/server/services/basic/columns/columns.services';

const columnsServices = new ColumnsServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  await columnsServices.add(body);
  return createApiResponse(null);
});

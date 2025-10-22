import { ColumnsServices } from '~~/server/services/basic/columns/columns.services';

const columnsServices = new ColumnsServices();

export default defineEventHandler(async event => {
  const query = getQuery(event);
  const data = await columnsServices.pageList(query);
  return createApiResponse(data);
});

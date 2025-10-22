import { ColumnsServices } from '~~/server/services/basic/columns/columns.services';

const columnsServices = new ColumnsServices();

export default defineEventHandler(async event => {
  const columnValue = getRouterParam(event, 'columnValue');
  if (!columnValue) {
    throw createError(`error`);
  }
  return await columnsServices.findByColumnValue(columnValue);
});

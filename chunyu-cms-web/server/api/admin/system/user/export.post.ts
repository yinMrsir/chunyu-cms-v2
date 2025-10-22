import { ExcelServices } from '~~/server/services/common/excel/excel.services';
import { userTableHeaders } from '~~/server/contants/export/admin/system/user.columns';
import { UserServices } from '~~/server/services/admin/system/user/user.services';

export default defineEventHandler(async event => {
  const body = await readBody(event);
  const { rows } = await new UserServices().list(body);

  return await new ExcelServices().export(userTableHeaders, rows);
});

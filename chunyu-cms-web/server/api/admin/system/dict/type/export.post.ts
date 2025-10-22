import { dictTypeTableHeaders } from '~~/server/contants/export/admin/system/dict.columns';
import { DictServices } from '~~/server/services/admin/system/dict/dict.services';
import { ExcelServices } from '~~/server/services/common/excel/excel.services';

export default defineEventHandler(async event => {
  const body = await readBody(event);
  const { rows } = await new DictServices().typeList(body);

  return await new ExcelServices().export(dictTypeTableHeaders, rows);
});

import { dictDataTableHeaders } from '~~/server/contants/export/admin/system/dict.columns';
import { DictServices } from '~~/server/services/admin/system/dict/dict.services';
import { ExcelServices } from '~~/server/services/common/excel/excel.services';

export default defineEventHandler(async event => {
  const body = await readBody(event);
  const { rows } = await new DictServices().dictDataList(body);

  return await new ExcelServices().export(dictDataTableHeaders, rows);
});

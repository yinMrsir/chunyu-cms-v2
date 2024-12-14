import dayjs from 'dayjs';
import * as ExcelJS from 'exceljs';
import { DictServices } from '../../admin/system/dict/dict.services';

enum ExcelTypeEnum {
  // 导入和导出
  ALL = '0',
  // 导出
  EXPORT = '1',
  // 导入
  IMPORT = '2'
}

const dictService = new DictServices();

export class ExcelServices {
  async export(model: any[], list: any[]) {
    const data = await this.formatExport(model, list);
    // 创建工作簿实例
    const workbook = new (ExcelJS as any).default.Workbook();
    // 添加工作表
    const worksheet = workbook.addWorksheet('Sheet1');
    data.forEach(row => {
      worksheet.addRow(row);
    });
    return workbook.xlsx.writeBuffer();
  }

  /* 整理导出数据 */
  private async formatExport(exportObjArr: any[], list: any[]) {
    const optionPromiseArr = exportObjArr
      .filter(item => item.type === ExcelTypeEnum.ALL || item.type === ExcelTypeEnum.EXPORT) // 过滤
      .sort((obj, obj2) => obj.sort - obj2.sort) // 排序
      .map(async item => {
        // 获取字典数据
        if (item.dictType) {
          item.dictDataArr = await dictService.getDictDataByDictType(item.dictType);
        }
        return item;
      });
    const optionArr: any[] = await Promise.all(optionPromiseArr);
    const data = [];
    data.push(optionArr.map(item => item.name)); // 插入表头
    for (let index = 0; index < list.length; index++) {
      const element = list[index];
      const inArr = optionArr.map(option => {
        let dataItem = element[option.propertyKey];
        // 处理‘role.roleName的格式情况’
        if (typeof option.propertyKey === 'string' && option.propertyKey.includes('.')) {
          const keys = option.propertyKey.split('.');
          let current = element;
          for (const key of keys) {
            if (current[key] === undefined) {
              // 如果中间某个属性不存在，可根据需求进行处理，这里简单返回undefined
              dataItem = undefined;
              break;
            }
            current = current[key];
          }
          dataItem = current;
        }
        if (option.dateFormat) {
          dataItem = dayjs(dataItem).format(option.dateFormat);
        }
        if (option.dictType) {
          const dictData = option.dictDataArr.find((item: { dictValue: any }) => item.dictValue === dataItem);
          dataItem = dictData ? dictData.dictLabel : '';
        }
        if (option.readConverterExp) {
          dataItem = option.readConverterExp[dataItem] ?? '';
        }
        if (option.separator) {
          dataItem = dataItem.join(option.separator);
        }
        if (option.suffix) {
          dataItem = '' + dataItem + option.suffix;
        }
        if (option.defaultValue) {
          dataItem = dataItem ?? option.defaultValue;
        }
        return dataItem;
      });
      data.push(inArr); // 插入每行数据
    }
    return data;
  }
}

import { join } from 'path';
import { writeFile } from 'fs/promises';
import * as fs from 'fs';
import { EventHandlerRequest, H3Event, readMultipartFormData } from 'h3';
import dayjs from 'dayjs';
import * as sizeOf from 'image-size';
import { SharedServices } from '~/server/services/admin/share/shared.services';

const shareServices = new SharedServices();
const { uploadPath, imgHost } = useRuntimeConfig();

export default defineEventHandler(async (event: H3Event<EventHandlerRequest>) => {
  try {
    const formData = await readMultipartFormData(event);
    const file = formData?.find(item => item.name === 'file');
    if (!file) {
      return {
        code: 400,
        message: '未选择文件'
      };
    }
    // 获取图片的MIME类型（例如:image/png）
    const mimeType = file.type;
    // 提取文件扩展名（例如:png）
    const fileExtension = mimeType?.split('/')[1];
    const currentDate = dayjs().format('YYYY-MM-DD');
    const dir = `${uploadPath}/${currentDate}`;
    // 创建目录
    shareServices.createDirectorySync(dir);
    const fileName = `/${shareServices.generateRandomValue(9)}.${fileExtension}`;
    const filePath = join(process.cwd(), dir, fileName);
    // 将文件内容写入到服务器上的指定路径
    await writeFile(filePath, file.data);
    const dimensions = sizeOf.default(filePath);
    const stats = fs.statSync(filePath);
    return createApiResponse({
      name: file.filename,
      url: imgHost + `${uploadPath}/${currentDate}${fileName}`,
      mimeType,
      width: dimensions.width,
      height: dimensions.height,
      size: stats.size
    });
  } catch (error) {
    return {
      code: 500,
      msg: String(error)
    };
  }
});

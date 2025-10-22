import { join } from 'path';
import { writeFile } from 'fs/promises';
import { H3Event, readMultipartFormData, createError } from 'h3';
import { SharedServices } from '~~/server/services/admin/share/shared.services';
import { UserServices } from '~~/server/services/admin/system/user/user.services';

const shareServices = new SharedServices();
const { uploadPath, imgHost } = useRuntimeConfig();

export default defineEventHandler(async (event: H3Event) => {
  try {
    const formData = await readMultipartFormData(event);
    const file = formData?.find(item => item.filename === 'blob');
    if (!file) {
      throw createError({
        statusCode: 400,
        message: '未选择文件'
      });
    }
    // 获取图片的MIME类型（例如:image/png）
    const mimeType = file.type;
    // 提取文件扩展名（例如:png）
    const fileExtension = mimeType?.split('/')[1];
    const fileName = `${uploadPath}/${shareServices.generateRandomValue(9)}.${fileExtension}`;
    const filePath = join(process.cwd(), fileName);
    // 将文件内容写入到服务器上的指定路径
    await writeFile(filePath, file.data);
    await new UserServices().updateProfile({ avatar: fileName }, event.context.user.userId);
    return createApiResponse({
      imgUrl: imgHost + fileName
    });
  } catch (error) {
    throw createError({
      statusCode: 500,
      message: String(error)
    });
  }
});

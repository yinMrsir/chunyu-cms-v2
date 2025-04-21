import { join } from 'path';
import { writeFile } from 'fs/promises';
import * as fs from 'fs';
import { EventHandlerRequest, H3Event, MultiPartData, readMultipartFormData } from 'h3';
import dayjs from 'dayjs';
import OSS from 'ali-oss';
import * as sizeOf from 'image-size';
import { SharedServices } from '~/server/services/admin/share/shared.services';
import { SysConfigServices } from '~/server/services/admin/system/sysConfig/sys.config.services';
import { FileConfigServices } from '~/server/services/admin/system/fileConfig/fileConfig.services';

const shareServices = new SharedServices();
const sysConfigServices = new SysConfigServices();
const fileConfigServices = new FileConfigServices();
const { uploadPath, imgHost } = useRuntimeConfig();

export default defineEventHandler(async (event: H3Event<EventHandlerRequest>) => {
  try {
    const formData = await readMultipartFormData(event);
    const file = formData?.find(item => item.name === 'file');
    if (!file) {
      return createError({ statusCode: 400, statusMessage: '未选择文件' });
    }
    const fileConfig = await sysConfigServices.findByConfigKey('fileConfig');
    // 获取图片的MIME类型（例如:image/png）
    const mimeType = file.type;
    // 提取文件扩展名（例如:png）
    const fileExtension = mimeType?.split('/')[1];
    const currentDate = dayjs().format('YYYY-MM-DD');
    const dir = `${uploadPath}/${currentDate}`;
    // 创建目录
    shareServices.createDirectorySync(dir);
    const fileName = `/${shareServices.generateRandomValue(9)}.${fileExtension}`;
    // 如果是阿里云上传
    if (fileConfig?.configValue === 'aliyun') {
      return createAliyunFile(file, dir + fileName);
    }
    const filePath = join(process.cwd(), dir, fileName);
    // 将文件内容写入到服务器上的指定路径
    await writeFile(filePath, file.data);
    const size = fs.statSync(filePath).size;
    if (mimeType === 'video/mp4') {
      return createApiResponse({
        name: file.filename,
        url: imgHost + `${uploadPath}/${currentDate}${fileName}`,
        mimeType,
        size,
        path: filePath
      });
    } else {
      const dimensions = sizeOf.default(filePath);
      return createApiResponse({
        name: file.filename,
        url: imgHost + `${uploadPath}/${currentDate}${fileName}`,
        mimeType,
        width: dimensions.width,
        height: dimensions.height,
        size
      });
    }
  } catch (error: any) {
    return createError({ statusCode: 500, statusMessage: error.message });
  }
});

/**
 * 阿里云上传文件
 */
async function createAliyunFile(file: MultiPartData, fileName: string) {
  const config = await fileConfigServices.getByValue('aliyun');
  if (!config) {
    throw createError({ statusCode: 400, statusMessage: '未配置阿里云文件上传' });
  }
  const client = new OSS({
    region: config.region,
    accessKeyId: config.accessKeyId,
    accessKeySecret: config.accessKeySecret,
    bucket: config.bucket
  });
  // 默认返回图片域名为 `${bucket}.${region}.aliyuncs.com`, 如何使用自定义域名需要替换
  try {
    const result = await client.put(fileName, file.data);
    if (file.type === 'video/mp4') {
      return createApiResponse({
        name: file.filename,
        url:
          config.cname === '1' && config.endpoint
            ? result.url.replace(`${config.bucket}.${config.region}.aliyuncs.com`, config.endpoint)
            : result.url,
        mimeType: file.type,
        size: file.data.length,
        path: ''
      });
    } else {
      const dimensions = sizeOf.default(file.data);
      return createApiResponse({
        name: file.filename,
        url:
          config.cname === '1' && config.endpoint
            ? result.url.replace(`${config.bucket}.${config.region}.aliyuncs.com`, config.endpoint)
            : result.url,
        mimeType: file.type,
        width: dimensions.width,
        height: dimensions.height,
        size: file.data.length
      });
    }
  } catch (e: any) {
    throw createError({ statusCode: 500, message: '上传失败', statusMessage: e.message });
  }
}

import { promises as fs } from 'fs';
import { join } from 'path';
import fsExtra from 'fs-extra';

const { writeFile } = fs;
const resolve = (p: string) => join(process.cwd(), p);
const ensureDir = fsExtra.ensureDir;

export default defineEventHandler(async event => {
  const formData = await readMultipartFormData(event);

  const chunk = formData?.find(part => part.name === 'file');
  const fileId = formData?.find(part => part.name === 'fileId')?.data.toString();
  const chunkIndex = formData?.find(part => part.name === 'chunkIndex')?.data.toString();
  const fileName = formData?.find(part => part.name === 'fileName')?.data.toString();

  if (!chunk || !fileId || !chunkIndex || !fileName) {
    throw createError({ statusCode: 400, statusMessage: '缺少参数' });
  }

  const uploadBase = resolve('./uploads');
  const chunkDir = resolve(`./uploads/chunks/${fileId}`);
  const chunkPath = `${chunkDir}/${chunkIndex}`;

  await ensureDir(uploadBase);
  await ensureDir(chunkDir);

  await writeFile(chunkPath, chunk.data);

  return { success: true, chunkIndex };
});

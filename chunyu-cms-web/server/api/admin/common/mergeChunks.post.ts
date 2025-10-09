import { createWriteStream, promises as fs, readFileSync, statSync } from 'fs';
import { join } from 'path';
import dayjs from 'dayjs';
import fsExtra from 'fs-extra';
import { SharedServices } from '~/server/services/admin/share/shared.services';

const { readdir, unlink, rm } = fs;
const resolve = (p: string) => join(process.cwd(), p);
const ensureDir = fsExtra.ensureDir;
const { uploadPath, imgHost } = useRuntimeConfig();
const shareServices = new SharedServices();

export default defineEventHandler(async event => {
  const { fileId, fileName } = await readBody(event);

  const index = fileName.lastIndexOf('.');
  const mimeType = fileName.substring(index + 1);

  const chunkDir = resolve(`./uploads/chunks/${fileId}`);

  const currentDate = dayjs().format('YYYY-MM-DD');
  const dir = resolve(`${uploadPath}/${currentDate}`);
  const rename = `${shareServices.generateRandomValue(9)}.${mimeType}`;
  const targetPath = `${dir}/${rename}`;

  await ensureDir(dir);

  const chunkFiles = await readdir(chunkDir);
  chunkFiles.sort((a, b) => parseInt(a) - parseInt(b));

  const writeStream = createWriteStream(targetPath);

  for (const chunkFile of chunkFiles) {
    const chunkPath = `${chunkDir}/${chunkFile}`;
    const data = readFileSync(chunkPath);
    writeStream.write(data);
    await unlink(chunkPath);
  }

  writeStream.end();
  await rm(chunkDir, { recursive: true });

  const size = statSync(targetPath).size;

  return createApiResponse({
    name: fileName,
    url: imgHost + `${uploadPath}/${currentDate}/${rename}`,
    mimeType,
    size,
    path: targetPath
  });
});

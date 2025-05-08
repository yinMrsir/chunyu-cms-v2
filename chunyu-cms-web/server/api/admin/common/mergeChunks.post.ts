import { createWriteStream, promises as fs, readFileSync, statSync } from 'fs';
import { join } from 'path';
import dayjs from 'dayjs';
import fsExtra from 'fs-extra';

const { readdir, unlink, rm } = fs;
const resolve = (p: string) => join(process.cwd(), p);
const ensureDir = fsExtra.ensureDir;
const { uploadPath, imgHost } = useRuntimeConfig();

export default defineEventHandler(async event => {
  const { fileId, fileName } = await readBody(event);

  const chunkDir = resolve(`./uploads/chunks/${fileId}`);

  const currentDate = dayjs().format('YYYY-MM-DD');
  const dir = resolve(`${uploadPath}/${currentDate}`);
  const targetPath = `${dir}/${fileName}`;

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
  const index = fileName.lastIndexOf('.');
  const mimeType = fileName.substring(index + 1);
  return createApiResponse({
    name: fileName,
    url: imgHost + `${uploadPath}/${currentDate}/${fileName}`,
    mimeType,
    size,
    path: targetPath
  });
});

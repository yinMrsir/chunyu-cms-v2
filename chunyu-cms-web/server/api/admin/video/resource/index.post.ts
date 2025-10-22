import { VideoResourceServices } from '~~/server/services/movie/videoResource/videoResource.services';

const videoResourceServices = new VideoResourceServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);

  // 如果是批量创建 (list 格式)
  if (body.list && Array.isArray(body.list)) {
    const list = body.list.map((item: any) => ({
      ...item,
      createBy: event.context.user.userName,
      createTime: new Date(),
      updateBy: event.context.user.userName,
      updateTime: new Date()
    }));
    const ids = await videoResourceServices.batchAdd(list);
    return createApiResponse({ ids });
  }

  // 单个创建
  body.createBy = body.updateBy = event.context.user.userName;
  body.createTime = body.updateTime = new Date();
  const id = await videoResourceServices.add(body);
  return createApiResponse({ id });
});

import { PostServices } from '~~/server/services/admin/system/post/post.services';

export default defineEventHandler(async event => {
  await event.context.validatePermission('system:post:edit');
  const body = await readBody(event);
  body.updateBy = event.context.user.userName;
  body.updateTime = new Date();
  delete body.createTime;
  await new PostServices().update(body);
});

import { PostServices } from '~~/server/services/admin/system/post/post.services';

export default defineEventHandler(async event => {
  await event.context.validatePermission('system:post:add');
  const body = await readBody(event);
  body.createBy = body.updateBy = event.context.user.userName;
  await new PostServices().add(body);
});

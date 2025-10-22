import { PostServices } from '~~/server/services/admin/system/post/post.services';

export default defineEventHandler(async event => {
  await event.context.validatePermission('system:post:query');
  const params = getQuery(event);
  const data = await new PostServices().list(params);
  return createApiResponse(data);
});

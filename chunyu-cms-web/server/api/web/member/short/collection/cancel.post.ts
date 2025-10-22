import { MemberCollectionServices } from '~~/server/services/member/memberCollection.services';

const memberCollectionServices = new MemberCollectionServices();

export default defineEventHandler(async event => {
  const body = await readBody<{
    shortId: number;
  }>(event);
  if (!body.shortId) {
    return createApiResponse(null, 400, '短视频ID不能为空');
  }
  await memberCollectionServices.delete(event.context.memberUser.memberUserId, Number(body.shortId));
  return createApiResponse(null);
});

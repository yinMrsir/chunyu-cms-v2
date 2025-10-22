import { MemberLikeServices } from '~~/server/services/member/memberLike.services';

const memberLikeServices = new MemberLikeServices();

export default defineEventHandler(async event => {
  const body = await readBody<{
    shortId: number;
  }>(event);
  if (!body.shortId) {
    return createApiResponse(null, 400, '短视频ID不能为空');
  }
  await memberLikeServices.delete(event.context.memberUser.memberUserId, Number(body.shortId));
  return createApiResponse(null);
});

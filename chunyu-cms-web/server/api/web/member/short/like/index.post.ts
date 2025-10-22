import { MemberLikeServices } from '~~/server/services/member/memberLike.services';

const memberLikeServices = new MemberLikeServices();

export default defineEventHandler(async event => {
  const body = await readBody<{
    shortId: number;
  }>(event);
  if (!body.shortId) {
    return createApiResponse(null, 400, '短视频ID不能为空');
  }
  await memberLikeServices.add({
    shortId: body.shortId,
    memberUserId: event.context.memberUser.memberUserId
  });
  return createApiResponse(null);
});

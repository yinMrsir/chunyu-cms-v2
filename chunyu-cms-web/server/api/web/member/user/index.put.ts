import { MemberUserServices } from '~~/server/services/member/memberUser.services';

const memberUserServices = new MemberUserServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  delete body.loginDate;
  delete body.loginIp;
  body.updateTime = new Date();
  const data = await memberUserServices.update(event.context.memberUser.memberUserId, body);
  return createApiResponse(data);
});

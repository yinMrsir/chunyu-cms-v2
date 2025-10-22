import { MemberWalletLogServices } from '~~/server/services/member/memberWalletLog.services';

const memberWalletLogServices = new MemberWalletLogServices();

export default defineEventHandler(async event => {
  const query = getQuery(event);
  const data = await memberWalletLogServices.list(query, event.context.memberUser.memberUserId);
  return createApiResponse(data);
});

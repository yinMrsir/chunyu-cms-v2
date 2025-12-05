import { createApiResponse } from '~~/server/utils/apiResponse';
import { MemberInviteCodeServices } from '~~/server/services/member/memberInviteCode.services';

export default defineEventHandler(async (event) => {
  try {
    const body = await readBody(event);
    const { inviteCode } = body;

    if (!inviteCode) {
      return createApiResponse(
        null,
        400,
        '请输入邀请码'
      );
    }

    const memberInviteCodeServices = new MemberInviteCodeServices();
    const validation = await memberInviteCodeServices.validateInviteCode(inviteCode);

    return createApiResponse(validation, '邀请码验证完成');

  } catch (error: any) {
    return createApiResponse(
      null,
      500,
      error.message || '验证邀请码失败'
    );
  }
});
import { MemberUserServices } from '~~/server/services/member/memberUser.services';
import { SharedServices } from '~~/server/services/admin/share/shared.services';

const memberUserServices = new MemberUserServices();
const sharedServices = new SharedServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  if (!body.newPassword) {
    return createApiResponse(null, 400, '请输入新密码');
  }
  if (!body.confirmPassword) {
    return createApiResponse(null, 400, '请输入确认密码');
  }
  if (body.newPassword !== body.confirmPassword) {
    return createApiResponse(null, 400, '两次密码不一致');
  }
  const salt = sharedServices.generateUUID();
  const password = sharedServices.md5(body.newPassword + salt);
  await memberUserServices.updatePassword(event.context.memberUser.memberUserId, { password, salt });
  return createApiResponse(null, 200, '修改成功');
});

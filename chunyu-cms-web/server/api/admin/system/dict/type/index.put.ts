import { DictServices } from '~~/server/services/admin/system/dict/dict.services';

export default defineEventHandler(async event => {
  try {
    const body = await readBody(event);
    body.updateBy = event.context.user.userName;
    body.updateTime = new Date();
    delete body.createTime;
    await new DictServices().updateType(body);
    return createApiResponse(null);
  } catch (error) {
    return createError({ statusCode: 400, message: String(error) });
  }
});

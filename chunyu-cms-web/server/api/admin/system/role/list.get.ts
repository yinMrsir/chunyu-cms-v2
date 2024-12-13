import { RoleServices } from '~/server/services/admin/system/role/role.services';

export default defineEventHandler(async event => {
  const params = getQuery(event);
  const data = await new RoleServices().list(params);
  return createApiResponse(data);
});

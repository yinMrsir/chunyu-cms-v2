import * as newsSchema from './news';
import * as userSchema from './system/user';
import * as deptSchema from './system/dept';
import * as dictSchema from './system/dict';
import * as menuSchema from './system/menu';
import * as roleSchema from './system/role';
import * as roleToMenuSchema from './system/roleToMenu';
import * as userToRoleSchema from './system/userToRole';
import * as postSchema from './system/post';
import * as userToPostSchema from './system/userToPost';

export default {
  ...newsSchema,
  ...userSchema,
  ...deptSchema,
  ...dictSchema,
  ...menuSchema,
  ...roleSchema,
  ...roleToMenuSchema,
  ...userToRoleSchema,
  ...postSchema,
  ...userToPostSchema
};

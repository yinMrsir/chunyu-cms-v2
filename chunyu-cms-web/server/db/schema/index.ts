import * as userSchema from './system/user';
import * as deptSchema from './system/dept';
import * as dictSchema from './system/dict';
import * as menuSchema from './system/menu';
import * as roleSchema from './system/role';
import * as roleToMenuSchema from './system/roleToMenu';
import * as userToRoleSchema from './system/userToRole';
import * as postSchema from './system/post';
import * as userToPostSchema from './system/userToPost';
import * as loginInfoSchema from './monitor/log/logininfo';
import * as jobSchema from './monitor/job';
import * as jobLogSchema from './monitor/jobLog';
import * as sysConfigSchema from './system/sysConfig';
// 以下是业务模块
import * as countrySchema from './basic/country';
import * as languageSchema from './basic/language';
import * as bannerSchema from './basic/banner';
import * as genreSchema from './basic/genre';
import * as movieLevelSchema from './basic/movieLevel';
import * as professionSchema from './basic/profession';
import * as columnsSchema from './basic/columns';

export default {
  ...userSchema,
  ...deptSchema,
  ...dictSchema,
  ...menuSchema,
  ...roleSchema,
  ...roleToMenuSchema,
  ...userToRoleSchema,
  ...postSchema,
  ...userToPostSchema,
  ...loginInfoSchema,
  ...jobSchema,
  ...jobLogSchema,
  ...sysConfigSchema,
  ...countrySchema,
  ...languageSchema,
  ...bannerSchema,
  ...genreSchema,
  ...movieLevelSchema,
  ...professionSchema,
  ...columnsSchema
};

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
import * as levelSchema from './basic/level';
import * as professionSchema from './basic/profession';
import * as columnsSchema from './basic/columns';
import * as actorSchema from './movie/actor';
import * as videoSchema from './movie/video';
import * as movieBasicsSchema from './movie/movieBasics';
import * as movieBasicToCountrySchema from './movie/movieBasicToCountry';
import * as pubDateSchema from './movie/pubDate';
import * as movieLevelSchema from './movie/movieLevel';
import * as castSchema from './movie/cast';
import * as movieVideoSchema from './movie/movieVideo';
import * as moviePhotoSchema from './movie/moviePhoto';
import * as movieBasicToGenreSchema from './movie/movieBasicToGenre';

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
  ...levelSchema,
  ...professionSchema,
  ...columnsSchema,
  ...actorSchema,
  ...videoSchema,
  ...movieBasicsSchema,
  ...movieBasicToCountrySchema,
  ...pubDateSchema,
  ...movieLevelSchema,
  ...castSchema,
  ...movieVideoSchema,
  ...moviePhotoSchema,
  ...movieBasicToGenreSchema
};

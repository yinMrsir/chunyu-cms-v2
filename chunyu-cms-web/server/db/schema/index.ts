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
import * as fileConfigSchema from './system/fileConfig';
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
import * as moviePvSchema from './movie/moviePv';
import * as movieWeeklyVisitsSchema from './movie/movieWeeklyVisits';
import * as movieMonthVisitsSchema from './movie/movieMonthVisits';
import * as movieYearVisitsSchema from './movie/movieYearVisits';
// 用户端
import * as memberUserSchema from './member/user';
import * as memberRateSchema from './member/rate';
import * as memberWalletSchema from './member/wallet';
import * as memberWalletLogSchema from './member/walletLog';
import * as memberCouponSchema from './member/coupon';
import * as memberMovieSchema from './member/movie';
import * as memberOrderSchema from './member/order';
import * as memberLikeSchema from './member/like';
import * as memberCollectionSchema from './member/collection';
import * as memberFavoriteSchema from './member/favorite';
import * as memberInviteCodeSchema from './member/inviteCode';
import * as memberInviteRecordSchema from './member/inviteRecord';
import * as movieRateSchema from './movie/rate';
import * as commentSchema from './movie/comment';
import * as shortSchema from './shorts/short';
import * as videoResourceSchema from './movie/videoResource';

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
  ...fileConfigSchema,
  ...countrySchema,
  ...languageSchema,
  ...bannerSchema,
  ...genreSchema,
  ...levelSchema,
  ...professionSchema,
  ...columnsSchema,
  ...actorSchema,
  ...videoSchema,
  ...videoResourceSchema,
  ...movieBasicsSchema,
  ...movieBasicToCountrySchema,
  ...pubDateSchema,
  ...movieLevelSchema,
  ...castSchema,
  ...movieVideoSchema,
  ...moviePhotoSchema,
  ...movieBasicToGenreSchema,
  ...moviePvSchema,
  ...movieWeeklyVisitsSchema,
  ...movieMonthVisitsSchema,
  ...movieYearVisitsSchema,
  ...memberUserSchema,
  ...memberRateSchema,
  ...memberWalletSchema,
  ...memberWalletLogSchema,
  ...memberCouponSchema,
  ...memberMovieSchema,
  ...memberOrderSchema,
  ...memberLikeSchema,
  ...memberCollectionSchema,
  ...memberFavoriteSchema,
  ...memberInviteCodeSchema,
  ...memberInviteRecordSchema,
  ...movieRateSchema,
  ...commentSchema,
  ...shortSchema
};

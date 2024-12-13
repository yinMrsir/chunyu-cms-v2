import lodash from 'lodash';
import { Storage } from 'unstorage';
import { CAPTCHA_IMG_KEY, USER_TOKEN_KEY, USER_VERSION_KEY } from '~/server/contants/redis.contant';
import { UserServices } from '~/server/services/admin/system/user/user.services';
import { SharedServices } from '~/server/services/admin/share/shared.services';

export class AuthServices {
  private userServices: UserServices;
  private shareServices: SharedServices;
  private redis: Storage<string | number>;
  constructor() {
    this.userServices = new UserServices();
    this.shareServices = new SharedServices();
    this.redis = useStorage('redis');
  }

  /* 判断验证码是否正确 */
  async checkImgCaptcha(uuid: string, code: string) {
    const key = `${CAPTCHA_IMG_KEY}:${uuid}`;
    const result: number | string | null = await useStorage('redis').getItem(key);
    if (!lodash.isEmpty(result) || code.toLowerCase() !== String(result).toLowerCase()) {
      throw createError({ statusCode: 400, message: '验证码错误' });
    }
    await useStorage('redis').removeItem(key);
  }

  /* 判断用户账号密码是否正确 */
  async validateUser(username: string, password: string) {
    const user = await this.userServices.findOneByUsername(username);
    if (!user) {
      throw createError({ statusCode: 400, message: '用户不存在' });
    }
    const comparePassword = this.shareServices.md5(password + user.salt);
    if (comparePassword !== user.password) {
      throw createError({ statusCode: 400, message: '密码错误' });
    }
    return user;
  }

  /* 判断token 是否过期 或者被重置 */
  async validateToken(userId: number, pv: number, restoken: string) {
    const token = await this.redis.getItem(`${USER_TOKEN_KEY}:${userId}`);
    if (restoken !== token) throw createError({ statusCode: 401, message: '登录状态已过期' });
    const passwordVersion = parseInt((await this.redis.getItem(`${USER_VERSION_KEY}:${userId}`)) as string);
    if (pv !== passwordVersion) throw createError({ statusCode: 401, message: '用户信息已被修改' });
  }
}

import * as svgCaptcha from 'svg-captcha';
import { Storage } from 'unstorage';
import * as jwt from 'jsonwebtoken';
import {
  CAPTCHA_IMG_KEY,
  USER_DEPTID_KEY,
  USER_DEPTNAME_KEY,
  USER_NICKNAME_KEY,
  USER_PERMISSIONS_KEY,
  USER_ROLEKEYS_KEY,
  USER_ROLEKS_KEY,
  USER_TOKEN_KEY,
  USER_USERNAME_KEY,
  USER_VERSION_KEY
} from '~~/server/contants/redis.contant';
import { SharedServices } from '~~/server/services/admin/share/shared.services';
import { UserServices } from '~~/server/services/admin/system/user/user.services';
import { MenuServices } from '~~/server/services/admin/system/menu/menu.service';
import { AuthServices } from '~~/server/services/admin/auth/auth.services';
import { LogServices } from '~~/server/services/admin/monitor/log/log.services';
import { SysConfigServices } from '~~/server/services/admin/system/sysConfig/sys.config.services';

export class LoginServices {
  private userServices: UserServices;
  private sharedServices: SharedServices;
  private menuServices: MenuServices;
  private authServices: AuthServices;
  private redis: Storage<string | number | null>;
  private logServices: LogServices;
  private sysConfigServices: SysConfigServices;
  constructor() {
    this.sharedServices = new SharedServices();
    this.userServices = new UserServices();
    this.menuServices = new MenuServices();
    this.authServices = new AuthServices();
    this.logServices = new LogServices();
    this.sysConfigServices = new SysConfigServices();
    this.redis = useStorage('redis');
  }

  /* 创建验证码图片 */
  async createImageCaptcha() {
    try {
      const { data, text } = svgCaptcha.createMathExpr({
        size: 4,
        ignoreChars: '0o1i',
        noise: 3,
        color: true,
        background: '#ffffff',
        width: 115.5,
        height: 38
      });
      const uuid = this.sharedServices.generateUUID();
      // 验证码 有效期3分钟
      await this.redis.setItem(`${CAPTCHA_IMG_KEY}:${uuid}`, text, { ttl: 60 * 3 });
      return {
        img: data.toString(),
        uuid
      };
    } catch (error) {
      throw createError({ statusCode: 400, message: String(error) });
    }
  }

  async login(username: string, password: string, headers: any) {
    try {
      const user = await this.authServices.validateUser(username, password, headers);
      const payload = { userId: user.userId, userName: user.userName, pv: 1 };
      const loginTime = await this.sysConfigServices.findByConfigKey('loginTime');
      const token = (jwt as any).default.sign(payload, useRuntimeConfig().jwt.secret, {
        expiresIn: loginTime?.configValue ? Number(loginTime.configValue) * 1000 : '1d'
      });
      // 存储密码版本号，防止登录期间 密码被管理员更改后 还能继续登录
      await this.redis.setItem(`${USER_VERSION_KEY}:${user.userId}`, 1);
      // 存储token, 防止重复登录问题，设置token过期时间(1天后 token 自动过期)，以及主动注销token。
      await this.redis.setItem(`${USER_TOKEN_KEY}:${user.userId}`, token, {
        ttl: loginTime?.configValue ? Number(loginTime.configValue) : 60 * 60 * 24
      });
      // 调用存储在线用户接口
      await this.logServices.addLoginInfo(
        {
          headers,
          user
        },
        '登录成功',
        `${USER_TOKEN_KEY}:${user.userId}`
      );
      return { token };
    } catch (error) {
      throw createError({ statusCode: 400, message: (error as any).message });
    }
  }

  async getInfo(userId: number | string) {
    const user = await this.userServices.findOneUserAllById(userId);
    if (!user) {
      throw createError({ statusCode: 400, message: '用户信息已被修改' });
    }
    const deptId = user.dept ? user.dept.deptId : '';
    const deptName = user.dept ? user.dept.deptName : '';
    const roleKeyArr: string[] = user.roles.map(role => role.roleKey);
    let permissions: string[] = [];
    if (!roleKeyArr.length) {
      permissions = [];
    } else if (roleKeyArr.find(roleKey => roleKey === 'admin')) {
      permissions = ['*:*:*'];
    } else {
      const roleIdArr = user.roles.map(role => role.roleId);
      permissions = await this.menuServices.getAllPermissionsByRoles(roleIdArr);
    }
    /* 将用户信息、权限数组、角色数组 存放进入缓存 */
    const promiseArr = [
      this.redis.setItem(`${USER_USERNAME_KEY}:${userId}`, user.userName),
      this.redis.setItem(`${USER_NICKNAME_KEY}:${userId}`, user.nickName),
      this.redis.setItem(`${USER_DEPTID_KEY}:${userId}`, deptId),
      this.redis.setItem(`${USER_DEPTNAME_KEY}:${userId}`, deptName),
      this.redis.setItem(`${USER_PERMISSIONS_KEY}:${userId}`, JSON.stringify(permissions)),
      this.redis.setItem(`${USER_ROLEKEYS_KEY}:${userId}`, JSON.stringify(roleKeyArr)),
      this.redis.setItem(`${USER_ROLEKS_KEY}:${userId}`, JSON.stringify(user.roles))
    ];
    await Promise.all(promiseArr);
    return {
      permissions,
      roles: roleKeyArr,
      user
    };
  }

  /* 获取当前用户的菜单 */
  async getRouterByUser(userId: number) {
    const user = await this.userServices.findOneUserAllById(userId);
    const isAdmin = user.roles.some(role => role.roleKey === 'admin');
    const roleIdArr = user.roles.map(role => role.roleId);
    if (!isAdmin && !roleIdArr.length) return [];
    return await this.menuServices.getMenuList(isAdmin, roleIdArr);
  }

  /* 退出登录 */
  async logout(userId: string) {
    if (await this.redis.getItem(`${USER_TOKEN_KEY}:${userId}`)) {
      await this.redis.removeItem(`${USER_TOKEN_KEY}:${userId}`);
    }
  }
}

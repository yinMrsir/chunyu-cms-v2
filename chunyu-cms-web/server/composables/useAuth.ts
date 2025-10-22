import * as jwt from 'jsonwebtoken';
import { H3Event } from 'h3';
import { AuthServices } from '~~/server/services/admin/auth/auth.services';
import { USER_PERMISSIONS_KEY } from '~~/server/contants/redis.contant';

interface resp {
  userId: number;
  userName: string;
  pv: number;
}

export function useAuth(event: H3Event) {
  // 验证token
  async function verification(): Promise<resp> {
    const token = getHeader(event, 'authorization');
    if (!token) {
      throw createError({ statusCode: 401, message: 'Unauthorized' });
    }
    const sign = token.replaceAll('Bearer ', '');
    try {
      const user = (jwt as any).default.verify(sign, useRuntimeConfig().jwt.secret as string) as resp;
      await new AuthServices().validateToken(user.userId, user.pv, sign);
      return user;
    } catch (error) {
      throw createError({ statusCode: 401, message: String(error) });
    }
  }

  /**
   * 验证用户是否有权限
   * @param permission
   */
  async function validatePermission(permission: string) {
    if (permission) {
      const { userId } = await verification();
      const userPermission = (await useStorage('redis').getItem(`${USER_PERMISSIONS_KEY}:${userId}`)) as string[];
      if (userPermission.includes('*:*:*')) {
        // 超级管理员
      } else if (userPermission.includes(permission)) {
        // 通过
      } else {
        throw createError({ statusCode: 403, message: '无权限' });
      }
    }
  }

  return {
    verification,
    validatePermission
  };
}

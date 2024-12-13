import * as jwt from 'jsonwebtoken';
import { H3Event, use } from 'h3';
import { AuthServices } from '~/server/services/admin/auth/auth.services';

interface resp {
  userId: number;
  userName: string;
  pv: number;
}

export function useAuth(event: H3Event) {
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

  return {
    verification
  };
}

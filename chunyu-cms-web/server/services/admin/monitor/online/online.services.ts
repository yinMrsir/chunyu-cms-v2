import { Storage } from 'unstorage';
import { USER_ONLINE_KEY, USER_TOKEN_KEY } from '~~/server/contants/redis.contant';

export class OnlineServices {
  private redis: Storage<string | number>;
  constructor() {
    this.redis = useStorage('redis');
  }

  /* 查询在线用户 */
  async online({ ipaddr = '', userName = '' }) {
    const tokenKeyArr = await this.redis.getKeys(`${USER_TOKEN_KEY}`);
    const promiseArr = tokenKeyArr.map(async item => {
      const onlineKey = USER_ONLINE_KEY + item.replace(USER_TOKEN_KEY, '');
      return await this.redis.getItem(onlineKey);
    });
    const allOnline = await Promise.all(promiseArr);
    const rows = allOnline.filter((item: any) => {
      if (!item) return false;
      return item.ipaddr?.includes(ipaddr) && item.userName?.includes(userName);
    });
    return {
      rows,
      total: rows.length
    };
  }

  /* 强退用户 */
  async deleteOnline(tokenKey: string) {
    await this.redis.removeItem(tokenKey);
  }
}

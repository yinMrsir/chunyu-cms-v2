import { UAParser } from 'ua-parser-js';
import { Storage } from 'unstorage';
import { and, between, eq, like } from 'drizzle-orm';
import { SharedServices } from '~~/server/services/admin/share/shared.services';
import { USER_ONLINE_KEY } from '~~/server/contants/redis.contant';
import { LoginInfo, loginInfoTable } from '~~/server/db/schema/monitor/log/logininfo';
import { queryParams } from '~~/server/db/query.helper';
import { userTable } from '~~/server/db/schema/system/user';

export class LogServices {
  private sharedServices: SharedServices;
  private redis: Storage<string | number>;
  constructor() {
    this.sharedServices = new SharedServices();
    this.redis = useStorage('redis');
  }

  async list(
    params: LoginInfo &
      queryParams & { orderByColumn: 'loginTime' | 'userName' } & { isAsc: 'ascending' | 'descending' }
  ) {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;

    const whereList = [];
    if (params.ipaddr) {
      whereList.push(like(loginInfoTable.ipaddr, `%${params.ipaddr}%`));
    }
    if (params.userName) {
      whereList.push(like(loginInfoTable.userName, `%${params.userName}%`));
    }
    if (params.status) {
      whereList.push(eq(loginInfoTable.status, params.status));
    }
    if (params['params[beginTime]'] && params['params[endTime]']) {
      whereList.push(
        between(userTable.createTime, new Date(params['params[beginTime]']), new Date(params['params[endTime]']))
      );
    }
    const where = and(...whereList);

    const rowsQuery = db.query.loginInfoTable.findMany({
      limit,
      offset,
      where,
      orderBy: (loginInfoTable, { asc, desc }) => {
        if (params.isAsc === 'ascending') {
          return [asc(loginInfoTable[params.orderByColumn])];
        } else {
          return [desc(loginInfoTable[params.orderByColumn])];
        }
      }
    });
    const totalQuery = db.$count(loginInfoTable, where);
    const [rows, total] = await Promise.all([rowsQuery, totalQuery]);
    return { rows, total };
  }

  /* 新增登录日志 */
  async addLoginInfo(request: { user: any; headers: any }, msg: string, token?: string) {
    const loginInfo: any = {};
    const { userName } = request.user;
    const { browser, os } = UAParser(request.headers['user-agent']) as any;
    loginInfo.userName = userName;
    loginInfo.ipaddr = this.sharedServices.getReqIP(request);
    loginInfo.loginLocation = await this.sharedServices.getLocation(loginInfo.ipaddr);
    loginInfo.status = token ? '0' : '1';
    loginInfo.msg = msg;
    loginInfo.loginTime = new Date();
    loginInfo.browser = browser.name + browser.version.split('.')[0];
    loginInfo.os = os.name + os.version;
    if (token) {
      // 如果登录成功，就记录这个登录信息，方便在线用户查询
      const user = (request as any).user;
      const data = { deptName: '', tokenId: token };
      if (user.dept) {
        data.deptName = user.dept.deptName;
      }
      const loginUser = Object.assign(loginInfo, data);
      await this.redis.setItem(`${USER_ONLINE_KEY}:${user.userId}`, JSON.stringify(loginUser), {
        expires: 60 * 60 * 24 * 7
      });
    }
    await db.insert(loginInfoTable).values(loginInfo);
  }
}

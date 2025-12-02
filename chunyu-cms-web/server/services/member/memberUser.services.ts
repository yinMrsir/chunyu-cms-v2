import { and, eq, like, sql } from 'drizzle-orm';
import { Storage } from 'unstorage';
import { MemberUser, memberUserTable, NewMemberUser } from '~~/server/db/schema/member/user';
import { queryParams } from '~~/server/db/query.helper';
import { USER_WEB_TOKEN_KEY } from '~~/server/contants/redis.contant';
import { MemberWalletServices } from '~~/server/services/member/memberWallet.services';
import { MemberWalletLogServices } from '~~/server/services/member/memberWalletLog.services';
import { SysConfigServices } from '~~/server/services/admin/system/sysConfig/sys.config.services';

export class MemberUserServices {
  private redis: Storage<any>;
  private memberWalletServices: MemberWalletServices;
  private memberWalletLogServices: MemberWalletLogServices;
  private sysConfigServices: SysConfigServices;
  constructor() {
    this.redis = useStorage('redis');
    this.memberWalletServices = new MemberWalletServices();
    this.memberWalletLogServices = new MemberWalletLogServices();
    this.sysConfigServices = new SysConfigServices();
  }

  // 通过邮箱查询用户
  async getUserByEmail(email: string): Promise<MemberUser | undefined> {
    return await db.query.memberUserTable.findFirst({
      where: and(eq(memberUserTable.email, email), eq(memberUserTable.delFlag, '0'))
    });
  }

  // 通过id查询用户
  async getUserById(memberUserId: number) {
    return await db.query.memberUserTable.findFirst({
      columns: {
        memberUserId: true,
        email: true,
        nickname: true,
        avatar: true,
        phonenumber: true,
        sex: true,
        birthday: true,
        introduction: true,
        loginIp: true,
        loginDate: true
      },
      where: and(eq(memberUserTable.memberUserId, memberUserId), eq(memberUserTable.delFlag, '0'))
    });
  }

  // 创建用户
  async add(user: NewMemberUser): Promise<Number> {
    return await db.transaction(async tx => {
      const [{ memberUserId }] = await tx.insert(memberUserTable).values(user).$returningId();
      let gold = 0;
      const regGold = await this.sysConfigServices.findByConfigKey('regGold');
      if (regGold && regGold.configValue) {
        gold = Number(regGold.configValue);
      }
      await this.memberWalletServices.add({ memberUserId, gold });
      // 写入到金币明细
      if (gold > 0) {
        await this.memberWalletLogServices.add({
          memberUserId,
          gold,
          type: '1',
          remark: `注册奖励 +${gold}`,
          createTime: new Date()
        });
      }
      return memberUserId;
    });
  }

  // 更新用户信息
  async update(memberUserId: number, user: Partial<MemberUser>) {
    await db.update(memberUserTable).set(user).where(eq(memberUserTable.memberUserId, memberUserId));
  }

  // 删除用户
  async delete(memberUserId: number) {
    await db.update(memberUserTable).set({ delFlag: '1' }).where(eq(memberUserTable.memberUserId, memberUserId));
    await this.redis.removeItem(`${USER_WEB_TOKEN_KEY}:${memberUserId}`);
  }

  // 修改密码
  async updatePassword(memberUserId: number, body: { password: string; salt: string }) {
    await db.update(memberUserTable).set(body).where(eq(memberUserTable.memberUserId, memberUserId));
  }

  // 分页查询
  async list(params?: Partial<MemberUser & { keyword: string } & queryParams>) {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;
    const whereList = [eq(memberUserTable.delFlag, '0')];
    if (params?.email || params?.keyword) {
      whereList.push(like(memberUserTable.email, `%${params.email || params.keyword}%`));
    }
    if (params?.nickname) {
      whereList.push(like(memberUserTable.nickname, `%${params.nickname}%`));
    }
    const where = and(...whereList);
    const rowsQuery = await db.query.memberUserTable.findMany({
      extras: {
        id: sql`${memberUserTable.memberUserId}`.as('id')
      },
      with: {
        memberWallet: {
          columns: {
            gold: true
          }
        }
      },
      columns: {
        memberUserId: true,
        email: true,
        nickname: true,
        avatar: true,
        phonenumber: true,
        sex: true,
        birthday: true,
        introduction: true,
        loginIp: true,
        loginDate: true,
        createTime: true
      },
      where,
      offset,
      limit: Number(limit)
    });
    const totalQuery = await db.$count(memberUserTable, where);
    const [rows, total] = await Promise.all([rowsQuery, totalQuery]);
    return {
      rows,
      total
    };
  }
}

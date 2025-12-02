import { eq } from 'drizzle-orm';
import { MemberWallet, memberWalletTable, NewMemberWallet } from '~~/server/db/schema/member/wallet';
import { MovieBasicsServices } from '~~/server/services/movie/movieBasics/movieBasics.services';
import { memberMovieTable } from '~~/server/db/schema/member/movie';
import { MemberWalletLogServices } from '~~/server/services/member/memberWalletLog.services';

export class MemberWalletServices {
  private movieBasicsServices: MovieBasicsServices;
  private memberWalletLogServices: MemberWalletLogServices;
  constructor() {
    this.movieBasicsServices = new MovieBasicsServices();
    this.memberWalletLogServices = new MemberWalletLogServices();
  }

  // 添加
  async add(data: NewMemberWallet) {
    await db.insert(memberWalletTable).values(data);
  }

  // 充值
  async recharge(memberUserId: number, gold: number, text?: string) {
    const memberWallet = await this.getByMemberUserId(memberUserId);
    if (!memberWallet) {
      await this.add({
        memberUserId,
        gold
      });
      await this.memberWalletLogServices.add({
        memberUserId,
        gold,
        type: '1',
        remark: `${text || '充值'} +${gold}`,
        createTime: new Date()
      });
    } else {
      await db
        .update(memberWalletTable)
        .set({ gold: memberWallet.gold + gold })
        .where(eq(memberWalletTable.memberUserId, memberUserId));
      await this.memberWalletLogServices.add({
        memberUserId,
        gold: memberWallet.gold + gold,
        type: '1',
        remark: `充值 +${gold}`,
        createTime: new Date()
      });
    }
  }

  // 扣除
  async deduct(
    { memberUserId, gold, remark }: { memberUserId: number; gold: number; remark?: string | undefined },
    callback?: (memberWallet: any) => void
  ) {
    const memberWallet = await this.getByMemberUserId(memberUserId);
    if (!memberWallet) {
      throw createError({ statusCode: 400, message: '钱包余额不足' });
    } else if (memberWallet.gold < gold) {
      throw createError({ statusCode: 400, message: '钱包余额不足' });
    } else if (callback) {
      callback(memberWallet);
    } else {
      await db
        .update(memberWalletTable)
        .set({ gold: memberWallet.gold - gold })
        .where(eq(memberWalletTable.memberUserId, memberUserId));
      await this.memberWalletLogServices.add({
        memberUserId,
        gold: memberWallet.gold - gold,
        type: '2',
        remark,
        createTime: new Date()
      });
    }
  }

  // 通过memberUserId获取
  async getByMemberUserId(memberUserId: number): Promise<MemberWallet | undefined> {
    return await db.query.memberWalletTable.findFirst({
      where: eq(memberWalletTable.memberUserId, memberUserId)
    });
  }

  // 购买影片
  async buyMovie(memberUserId: number, movieBasicsId: number) {
    const movieBasics = await this.movieBasicsServices.findById(movieBasicsId);
    if (!movieBasics) {
      throw createError({ statusCode: 400, message: '影片不存在' });
    }
    if (movieBasics.isPay === 0) {
      throw createError({ statusCode: 400, message: '影片无需购买' });
    }
    await this.deduct({ memberUserId, gold: movieBasics.paymentAmount }, async memberWallet => {
      await db.transaction(async tx => {
        // 更新钱包
        await tx
          .update(memberWalletTable)
          .set({ gold: memberWallet.gold - movieBasics.paymentAmount, updateTime: new Date() })
          .where(eq(memberWalletTable.memberUserId, memberUserId));
        //  写入会员影片表
        await tx.insert(memberMovieTable).values({ memberUserId, movieBasicsId, createTime: new Date() });
        // 写入记录表
        await this.memberWalletLogServices.add({
          memberUserId,
          gold: memberWallet.gold - movieBasics.paymentAmount,
          type: '2',
          remark: `购买影片:${movieBasics.title} -${movieBasics.paymentAmount}`,
          createTime: new Date()
        });
      });
    });
  }
}

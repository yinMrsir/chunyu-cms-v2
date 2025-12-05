import * as schedule from 'node-schedule';
import { and, eq, inArray } from 'drizzle-orm';
import { Job, jobTable, NewJob } from '~~/server/db/schema/monitor/job';
import { JobLog, jobLogTable } from '~~/server/db/schema/monitor/jobLog';
import { memberInviteRecordTable } from '~~/server/db/schema/member/inviteRecord';
import { queryParams } from '~~/server/db/query.helper';
import { MemberOrderServices } from '~~/server/services/member/memberOrder.services';
import { MemberWalletServices } from '~~/server/services/member/memberWallet.services';
import { MemberWalletLogServices } from '~~/server/services/member/memberWalletLog.services';
import { MemberInviteRecordServices } from '~~/server/services/member/memberInviteRecord.services';
import { WxPayServices } from '~~/server/services/wxPay/wxPay.services';
import { MovieWeeklyVisitsServices } from '~~/server/services/movie/movieWeeklyVisits/movieWeeklyVisits.services';
import { MovieMonthVisitsServices } from '~~/server/services/movie/movieMonthVisits/movieMonthVisits.services';
import { MovieYearVisitsServices } from '~~/server/services/movie/movieYearVisits/movieYearVisits.services';
import { MemberCouponServices } from '~~/server/services/admin/member/memberCoupon.services';

export class JobServices {
  private static instance: any;
  private readonly jobs: any;
  private memberOrderServices: MemberOrderServices;
  private memberWalletServices: MemberWalletServices;
  private memberWalletLogServices: MemberWalletLogServices;
  private memberInviteRecordServices: MemberInviteRecordServices;
  private movieWeeklyVisitsServices: MovieWeeklyVisitsServices;
  private movieMontVisitsServices: MovieMonthVisitsServices;
  private movieYearVisitsServices: MovieYearVisitsServices;
  private memberCouponServices: MemberCouponServices;
  private constructor() {
    this.jobs = {};
    this.memberOrderServices = new MemberOrderServices();
    this.memberWalletServices = new MemberWalletServices();
    this.memberWalletLogServices = new MemberWalletLogServices();
    this.memberInviteRecordServices = new MemberInviteRecordServices();
    this.movieWeeklyVisitsServices = new MovieWeeklyVisitsServices();
    this.movieMontVisitsServices = new MovieMonthVisitsServices();
    this.movieYearVisitsServices = new MovieYearVisitsServices();
    this.memberCouponServices = new MemberCouponServices();
  }

  public static getInstance(): JobServices {
    if (!JobServices.instance) {
      JobServices.instance = new JobServices();
    }
    return JobServices.instance;
  }

  async init() {
    const jobList = await this.findAllJob({ status: '0' });
    for (const job of jobList) {
      await this.start(job);
    }
  }

  async addJob(job: NewJob) {
    this.hasMethod(job.invokeTarget);
    const [jobItem] = await db.insert(jobTable).values(job).$returningId();
    if (job.status === '0') {
      await this.start({
        jobId: jobItem.jobId,
        ...job
      } as Job);
    }
  }

  async updateJob(job: Job) {
    await db.update(jobTable).set(job).where(eq(jobTable.jobId, job.jobId));
    const jobItem = (await this.oneJob(job.jobId)) as Job;
    if (jobItem.status === '0') {
      await this.stop(jobItem);
      await this.start(jobItem);
    } else {
      await this.stop(jobItem);
    }
  }

  async jobList(params?: Partial<Job> & queryParams) {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;

    const whereList = [];
    if (params?.status) {
      whereList.push(eq(jobTable.status, params.status));
    }
    const where = and(...whereList);

    const rowQuery = db.query.jobTable.findMany({ where, offset, limit });
    const totalQuery = db.$count(jobTable, where);

    const [rows, total] = await Promise.all([rowQuery, totalQuery]);
    return {
      rows,
      total
    };
  }

  /* 查找所有的定时任务 */
  findAllJob(params: Partial<Job>) {
    const whereList = [];
    if (params.status) {
      whereList.push(eq(jobTable.status, params.status));
    }
    const where = and(...whereList);
    return db.query.jobTable.findMany({ where });
  }

  oneJob(jobId: number | string) {
    return db.query.jobTable.findFirst({
      where: eq(jobTable.jobId, Number(jobId))
    });
  }

  async changeStatus(jobId: number, status: string) {
    await db.update(jobTable).set({ status }).where(eq(jobTable.jobId, jobId));
    const job = (await this.oneJob(jobId)) as Job;
    if (status === '0') {
      await this.start(job);
    } else {
      await this.stop(job);
    }
  }

  async start(job: Job) {
    this.jobs[job.jobName] = schedule.scheduleJob(job.cronExpression as string, () => {
      const { funName, argumens } = this.hasMethod(job.invokeTarget);
      // @ts-ignore
      this[funName](argumens);
    });
    console.info(`启动任务成功：${job.jobName}`);
    await db.insert(jobLogTable).values({
      jobName: job.jobName,
      jobGroup: job.jobGroup,
      invokeTarget: job.invokeTarget,
      jobMessage: '启动任务成功',
      status: '0',
      exceptionInfo: '',
      createTime: new Date()
    });

    this.jobs[job.jobName].on('success', async () => {
      await db.insert(jobLogTable).values({
        jobName: job.jobName,
        jobGroup: job.jobGroup,
        invokeTarget: job.invokeTarget,
        jobMessage: '执行任务成功',
        status: '0',
        exceptionInfo: '',
        createTime: new Date()
      });
    });

    this.jobs[job.jobName].on('error', async (error: any) => {
      await db.insert(jobLogTable).values({
        jobName: job.jobName,
        jobGroup: job.jobGroup,
        invokeTarget: job.invokeTarget,
        jobMessage: '执行任务失败',
        status: '1',
        exceptionInfo: String(error),
        createTime: new Date()
      });
    });

    this.jobs[job.jobName].on('canceled', async () => {
      await db.insert(jobLogTable).values({
        jobName: job.jobName,
        jobGroup: job.jobGroup,
        invokeTarget: job.invokeTarget,
        jobMessage: '停止任务成功',
        status: '0',
        exceptionInfo: '',
        createTime: new Date()
      });
    });
  }

  async stop(job: Job) {
    if (this.jobs[job.jobName]) {
      try {
        this.jobs[job.jobName].cancel();
      } catch (error) {
        await db.insert(jobLogTable).values({
          jobName: job.jobName,
          jobGroup: job.jobGroup,
          invokeTarget: job.invokeTarget,
          jobMessage: '停止任务失败',
          status: '1',
          exceptionInfo: String(error),
          createTime: new Date()
        });
      }
    }
  }

  async once(job: Job) {
    try {
      const { funName, argumens } = this.hasMethod(job.invokeTarget);
      // @ts-ignore
      this[funName](argumens);
      await db.insert(jobLogTable).values({
        jobName: job.jobName,
        jobGroup: job.jobGroup,
        invokeTarget: job.invokeTarget,
        jobMessage: '执行任务成功',
        status: '0',
        exceptionInfo: '',
        createTime: new Date()
      });
    } catch (error) {
      await db.insert(jobLogTable).values({
        jobName: job.jobName,
        jobGroup: job.jobGroup,
        invokeTarget: job.invokeTarget,
        jobMessage: '执行任务失败',
        status: '1',
        exceptionInfo: String(error),
        createTime: new Date()
      });
    }
  }

  /* 删除任务 */
  async deleteJob(jobIdArr: number[] | string[]) {
    const where = inArray(
      jobTable.jobId,
      jobIdArr.map(item => Number(item))
    );
    const jobs = await db.query.jobTable.findMany({ where });
    for (const job of jobs) {
      await this.stop(job);
    }
    return db.delete(jobTable).where(where);
  }

  /* 分页查询任务调度日志 */
  async jobLogList(params?: Partial<JobLog> & queryParams) {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;

    const whereList = [];
    if (params?.jobName) {
      whereList.push(eq(jobLogTable.jobName, params.jobName));
    }
    const where = and(...whereList);

    const rowsQuery = db.query.jobLogTable.findMany({ where, offset, limit });
    const totalQuery = db.$count(jobLogTable, where);

    const [rows, total] = await Promise.all([rowsQuery, totalQuery]);
    return {
      rows,
      total
    };
  }

  /* 清空日志 */
  cleanJobLog() {
    return db.delete(jobLogTable);
  }

  /* 判断方法是否存在 */
  hasMethod(methodName: string) {
    if (!(methodName.includes('(') && methodName.includes(')'))) {
      throw createError({ statusCode: 400, message: '方法格式错误' });
    }
    const funName = methodName.match(/(\S*)\(/)?.[1];
    if (!funName) throw createError({ statusCode: 400, message: '调用方法格式错误' });
    if (funName && !Object.prototype.hasOwnProperty.call(this.constructor.prototype, funName)) {
      throw createError({ statusCode: 400, message: '方法不存在' });
    }
    // eslint-disable-next-line no-eval
    const argumens = eval('[' + methodName.match(/\((\S*)\)/)?.[1] + ']');
    return {
      funName,
      argumens
    };
  }

  // 同步微信支付订单状态
  async syncOrderStatus() {
    // 查询所有未支付的订单
    const orders = await this.memberOrderServices.findAllUnpaid();
    for (const order of orders) {
      const result: any = await WxPayServices.getInstance().query({ out_trade_no: order.outTradeNo });
      const queryCount = (order.queryCount as number) + 1;
      const memberOrder = await this.memberOrderServices.updateByOutTradeNo(result.data.out_trade_no, {
        status: result.data.trade_state,
        transactionId: result.data.transaction_id,
        paidAt: result.data.success_time,
        remark: result.data.trade_state_desc,
        queryCount,
        updateTime: new Date()
      });
      // 如果订单已支付
      if (result.data.trade_state === 'SUCCESS') {
        await this.memberWalletServices.recharge(memberOrder.memberUserId, memberOrder.totalAmount);
      }
      if ((order.queryCount as number) >= 30 && result.data.trade_state === 'NOTPAY') {
        await WxPayServices.getInstance().close(order.outTradeNo);
      }
    }
  }

  // 生成周排名
  async generateWeeklyStatistics() {
    await this.movieWeeklyVisitsServices.updateVisits();
  }

  // 生成月排名
  async generateMonthStatistics() {
    await this.movieMontVisitsServices.updateVisits();
  }

  // 生成年排名
  async generateYearStatistics() {
    await this.movieYearVisitsServices.updateVisits();
  }

  // 更新过期兑换券状态
  async updateExpiredCoupons() {
    try {
      await this.memberCouponServices.updateExpiredCoupons();
      console.log('成功更新过期兑换券状态');
    } catch (error) {
      console.error('更新过期兑换券状态失败:', error);
      throw error;
    }
  }

  // 发放邀请奖励
  async processInviteRewards() {
    try {
      // 查询所有待发放奖励的邀请记录（状态为0，注册时间超过24小时）
      const pendingRecords = await db.query.memberInviteRecordTable.findMany({
        where: and(
          eq(memberInviteRecordTable.status, '0')
          // sql`${memberInviteRecordTable.registerTime} < DATE_SUB(NOW(), INTERVAL 24 HOUR)`
        )
      });

      console.log(`发现 ${pendingRecords.length} 条待发放的邀请奖励记录`);

      for (const record of pendingRecords) {
        try {
          // 给邀请者发放奖励并记录金币变动日志
          if (record.inviterReward > 0) {
            await this.memberWalletServices.recharge(
              record.inviterId,
              record.inviterReward,
              `邀请奖励 (被邀请者ID: ${record.inviteeId})`
            );
          }

          // 更新邀请记录状态为已发放
          await this.memberInviteRecordServices.rewardInvite(record.memberInviteRecordId);

          console.log(`成功发放邀请奖励：邀请者 ${record.inviterId} 获得 ${record.inviterReward} 金币`);
        } catch (error) {
          console.error(`发放邀请奖励失败，记录ID: ${record.memberInviteRecordId}`, error);

          // 更新记录状态为已取消，避免重复处理
          await this.memberInviteRecordServices.cancelInvite(
            record.memberInviteRecordId,
            `系统处理失败: ${(error as any).message}`
          );
        }
      }

      console.log('邀请奖励发放任务执行完成');
    } catch (error) {
      console.error('邀请奖励发放任务执行失败:', error);
      throw error;
    }
  }
}

const jobServices = JobServices.getInstance();
export { jobServices };

import * as schedule from 'node-schedule';
import { and, eq, inArray, like } from 'drizzle-orm';
import { Job, jobTable, NewJob } from '~/server/db/schema/monitor/job';
import { JobLog, jobLogTable } from '~/server/db/schema/monitor/jobLog';
import { queryParams } from '~/server/db/query.helper';

class JobServices {
  private static instance: any;
  private readonly jobs: any;
  private constructor() {
    this.jobs = {};

    this.init().then(({ length }) => {
      console.log(`定时任务启动成功: ${length}个`);
    });
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
      this.start(job);
    }
    return {
      length: jobList.length
    };
  }

  async addJob(job: NewJob) {
    this.hasMethod(job.invokeTarget);
    const [jobItem] = await db.insert(jobTable).values(job).$returningId();
    if (job.status === '0') {
      this.start({
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
      this.start(jobItem);
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
      this.start(job);
    } else {
      await this.stop(job);
    }
  }

  start(job: Job) {
    this.jobs[job.jobName] = schedule.scheduleJob(job.cronExpression as string, async () => {
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
    });
  }

  async stop(job: Job) {
    if (this.jobs[job.jobName]) {
      try {
        this.jobs[job.jobName].cancel();
        await db.insert(jobLogTable).values({
          jobName: job.jobName,
          jobGroup: job.jobGroup,
          invokeTarget: job.invokeTarget,
          jobMessage: '停止任务成功',
          status: '0',
          exceptionInfo: '',
          createTime: new Date()
        });
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

  test(params: any[]) {
    console.log(params);
  }
}

const jobServices = JobServices.getInstance();
export { jobServices };

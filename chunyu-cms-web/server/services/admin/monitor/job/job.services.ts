import * as schedule from 'node-schedule';
import { eq, inArray } from 'drizzle-orm';
import { Job, jobTable, NewJob } from '~/server/db/schema/monitor/job';

const jobs: any = {};

export class JobServices {
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
  }

  async jobList() {
    const rowQuery = db.query.jobTable.findMany();
    const totalQuery = db.$count(jobTable);

    const [rows, total] = await Promise.all([rowQuery, totalQuery]);
    return {
      rows,
      total
    };
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
      this.stop(job);
    }
  }

  start(job: Job) {
    const { funName } = this.hasMethod(job.invokeTarget);
    jobs[job.jobName] = schedule.scheduleJob(job.cronExpression as string, () => {
      // @ts-ignore
      this[funName]();
    });
  }

  stop(job: Job) {
    jobs[job.jobName] && jobs[job.jobName].cancel();
  }

  once(job: Job) {
    const { funName } = this.hasMethod(job.invokeTarget);
    // @ts-ignore
    this[funName]();
  }

  /* 删除任务 */
  deleteJob(jobIdArr: number[] | string[]) {
    return db.delete(jobTable).where(
      inArray(
        jobTable.jobId,
        jobIdArr.map(item => Number(item))
      )
    );
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

  test() {
    console.log('The answer to life, the universe, and everything!');
  }
}

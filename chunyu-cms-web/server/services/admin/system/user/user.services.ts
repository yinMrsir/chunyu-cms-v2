import { and, between, eq, inArray, like } from 'drizzle-orm';
import { Storage } from 'unstorage';
import { queryParams } from '~~/server/db/query.helper';
import { Dept, deptTable } from '~~/server/db/schema/system/dept';
import { NewUser, User, userTable } from '~~/server/db/schema/system/user';
import { userToRoleTable } from '~~/server/db/schema/system/userToRole';
import { userToPostTable } from '~~/server/db/schema/system/userToPost';
import { Role } from '~~/server/db/schema/system/role';
import { Post } from '~~/server/db/schema/system/post';
import { SharedServices } from '~~/server/services/admin/share/shared.services';
import { USER_VERSION_KEY } from '~~/server/contants/redis.contant';

export class UserServices {
  private sharedServices: SharedServices;
  private redis: Storage<string | number>;
  private runtimeConfig: any;
  constructor() {
    this.sharedServices = new SharedServices();
    this.redis = useStorage('redis');
    this.runtimeConfig = useRuntimeConfig();
  }

  /* 通过用户名获取用户,排除停用和删除的,用于登录 */
  findOneByUsername(username: string): Promise<Pick<User, 'userId' | 'userName' | 'password' | 'salt'> | undefined> {
    return db.query.userTable.findFirst({
      columns: {
        userId: true,
        userName: true,
        password: true,
        salt: true
      },
      with: {
        dept: true
      },
      where: (userTable, { eq, and }) =>
        and(eq(userTable.userName, username), eq(userTable.status, '0'), eq(userTable.delFlag, '0'))
    });
  }

  /* 通过用户名获取用户,排除删除的 */
  findOneByUserNameState(username: string) {
    return db.query.userTable.findFirst({
      columns: {
        userId: true,
        userName: true,
        password: true,
        salt: true,
        status: true,
        delFlag: true
      },
      where: (userTable, { eq, and }) => and(eq(userTable.userName, username), eq(userTable.delFlag, '0'))
    });
  }

  /* 分页查询用户列表 */
  async list(params: Partial<User & queryParams>) {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;

    const whereList = [];
    if (params.userName) {
      whereList.push(like(userTable.userName, `%${params.userName}%`));
    }
    if (params.phonenumber) {
      whereList.push(like(userTable.phonenumber, `%${params.phonenumber}%`));
    }
    if (params.status) {
      whereList.push(eq(userTable.status, params.status));
    }
    if (params['params[beginTime]'] && params['params[endTime]']) {
      whereList.push(
        between(userTable.createTime, new Date(params['params[beginTime]']), new Date(params['params[endTime]']))
      );
    }
    if (params.deptId) {
      whereList.push(
        inArray(
          userTable.deptId,
          db.select({ deptId: deptTable.deptId }).from(deptTable).where(eq(deptTable.deptId, params.deptId))
        )
      );
    }
    whereList.push(eq(userTable.delFlag, '0'));
    const where = and(...whereList);

    const queryRows = db.query.userTable.findMany({
      limit,
      offset,
      columns: {
        userId: true,
        userName: true,
        nickName: true,
        phonenumber: true,
        createTime: true,
        createBy: true,
        status: true
      },
      with: {
        dept: true
      },
      where
    });
    const queryTotal = db.$count(userTable, where);

    const [rows, total] = await Promise.all([queryRows, queryTotal]);

    return {
      rows,
      total
    };
  }

  /* 新增用户 */
  async addUser(params: NewUser & { roleIds: number[] } & { postIds: number[] }) {
    try {
      await db.transaction(async tx => {
        if (params.password) {
          params.salt = this.sharedServices.generateUUID();
          params.password = this.sharedServices.md5(params.password + params.salt);
        }
        const [insertUser] = await tx.insert(userTable).values(params).$returningId();
        if (params.roleIds?.length) {
          await tx
            .insert(userToRoleTable)
            .values(params.roleIds.map(roleId => ({ userId: insertUser.userId, roleId })));
        }
        if (params.postIds?.length) {
          await tx
            .insert(userToPostTable)
            .values(params.postIds.map(postId => ({ userId: insertUser.userId, postId })));
        }
      });
    } catch (error) {
      throw createError({ statusCode: 400, message: String(error) });
    }
  }

  /* 编辑用户 */
  async updateUser(data: User & { roleIds: number[] } & { postIds: number[] }) {
    try {
      await db.transaction(async tx => {
        await tx
          .update(userTable)
          .set(data)
          .where(eq(userTable.userId, Number(data.userId)));
        await tx.delete(userToRoleTable).where(eq(userToRoleTable.userId, Number(data.userId)));
        if (data.roleIds?.length) {
          await tx
            .insert(userToRoleTable)
            .values(data.roleIds.map(roleId => ({ userId: Number(data.userId), roleId })));
        }
        await tx.delete(userToPostTable).where(eq(userToPostTable.userId, Number(data.userId)));
        if (data.postIds?.length) {
          await tx
            .insert(userToPostTable)
            .values(data.postIds.map(postId => ({ userId: Number(data.userId), postId })));
        }
      });
    } catch (error) {
      throw createError({ statusCode: 400, message: String(error) });
    }
  }

  delete(userId: number | string) {
    return db
      .update(userTable)
      .set({
        delFlag: '1'
      })
      .where(eq(userTable.userId, Number(userId)));
  }

  /* 通过id 查找用户的所有信息 */
  async userAllInfo(userId: number | string) {
    const userInfo = await db.query.userTable.findFirst({
      columns: {
        userId: true,
        userName: true,
        nickName: true,
        email: true,
        phonenumber: true,
        sex: true,
        avatar: true,
        status: true,
        loginIp: true,
        loginDate: true,
        createBy: true,
        createTime: true,
        remark: true,
        deptId: true
      },
      with: {
        dept: true,
        userToRole: {
          with: {
            role: true
          }
        },
        userToPost: {
          with: {
            post: true
          }
        }
      },
      where: (userTable, { eq }) => eq(userTable.userId, Number(userId))
    });

    const result = {
      ...userInfo,
      avatar: userInfo?.avatar ? `${this.runtimeConfig.imgHost}${userInfo.avatar}` : '',
      roles: userInfo?.userToRole?.filter(item => item.role?.delFlag === '0').map(item => item.role),
      posts: userInfo?.userToPost?.map(item => item.post)
    };
    delete result.userToRole;
    delete result.userToPost;
    return result;
  }

  /* 通过id 查询用户的所有信息，排除停用和删除的 */
  async findOneUserAllById(
    userId: number | string
  ): Promise<User & { dept: Dept | null; roles: Role[]; posts: Post[] }> {
    const userInfo = await db.query.userTable.findFirst({
      columns: {
        userId: true,
        userName: true,
        nickName: true,
        email: true,
        phonenumber: true,
        sex: true,
        avatar: true,
        status: true,
        loginIp: true,
        loginDate: true,
        createBy: true,
        createTime: true,
        remark: true,
        deptId: true
      },
      with: {
        dept: true,
        userToRole: {
          with: {
            role: true
          }
        },
        userToPost: {
          with: {
            post: true
          }
        }
      },
      where: (userTable, { and, eq }) =>
        and(eq(userTable.userId, Number(userId)), eq(userTable.delFlag, '0'), eq(userTable.status, '0'))
    });

    const result = {
      ...userInfo,
      avatar: userInfo?.avatar ? `${this.runtimeConfig.imgHost}${userInfo.avatar}` : '',
      dept: userInfo?.dept?.status === '0' && userInfo?.dept?.delFlag === '0' ? userInfo?.dept : null,
      roles: userInfo?.userToRole
        ?.filter(item => item.role?.delFlag === '0' && item.role?.status === '0')
        .map(item => item.role),
      posts: userInfo?.userToPost?.filter(item => item.post?.status === '0').map(item => item.post)
    };
    delete result.userToRole;
    delete result.userToPost;
    return result as User & { dept: Dept | null; roles: Role[]; posts: Post[] };
  }

  /* id查询用户 */
  async findById(userId: number): Promise<User | undefined> {
    return await db.query.userTable.findFirst({
      where: eq(userTable.userId, userId)
    });
  }

  /* 更改密码 */
  async resetPwd(userId: number, password: string, updateBy: string) {
    const user = await this.findById(userId);
    user!.updateBy = updateBy;
    user!.salt = this.sharedServices.generateUUID();
    user!.password = this.sharedServices.md5(password + user!.salt);
    await db.update(userTable).set(user!).where(eq(userTable.userId, userId));
    if (await this.redis.getItem(`${USER_VERSION_KEY}:${userId}`)) {
      await this.redis.setItem(`${USER_VERSION_KEY}:${userId}`, 2); // 调整密码版本，强制用户重新登录
    }
  }

  /* 改变用户状态 */
  async changeStatus(userId: number, status: string, updateBy: string) {
    await db.update(userTable).set({ status, updateBy }).where(eq(userTable.userId, userId));
  }

  /* 更改个人用户信息 */
  async updateProfile(user: Partial<User>, userId: number) {
    await db.update(userTable).set(user).where(eq(userTable.userId, userId));
  }

  /* 更新自己的密码 */
  async updateSelfPwd(
    reqUpdateSelfPwd: { oldPassword: string | number; newPassword: string | number },
    userName: string
  ) {
    const user = await this.findOneByUsername(userName);
    if (!user) {
      throw createError({ statusCode: 400, message: '用户不存在' });
    }
    const password = this.sharedServices.md5(reqUpdateSelfPwd.oldPassword + (user.salt as string));
    if (password !== user?.password) throw createError({ statusCode: 400, message: '旧密码错误' });
    user.password = this.sharedServices.md5(reqUpdateSelfPwd.newPassword + (user.salt as string));
    await db.update(userTable).set(user).where(eq(userTable.userId, user.userId));
    if (await this.redis.getItem(`${USER_VERSION_KEY}:${user.userId}`)) {
      await this.redis.setItem(`${USER_VERSION_KEY}:${user.userId}`, 2); // 调整密码版本，强制用户重新登录
    }
  }
}

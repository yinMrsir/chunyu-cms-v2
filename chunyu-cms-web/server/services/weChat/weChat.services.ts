interface WeChatFollowersResponse {
  total: number;
  count: number;
  data: {
    openid: string[];
  };
  next_openid: string;
  errcode?: number;
  errmsg?: string;
}

interface TemplateData {
  [key: string]: {
    value: string;
    color: string;
  };
}

interface Config {
  appid: string;
  appSecret: string;
}

class WeChatPush {
  private appid: string;
  private appSecret: string;
  private accessToken: string | null;
  private tokenExpires: Date | null;

  constructor(appid: string, appSecret: string) {
    this.appid = appid;
    this.appSecret = appSecret;
    this.accessToken = null;
    this.tokenExpires = null;
  }

  async getAccessToken(): Promise<string | null> {
    if (this.accessToken && this.tokenExpires && new Date() < this.tokenExpires) {
      return this.accessToken;
    }

    try {
      const url = `https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=${this.appid}&secret=${this.appSecret}`;
      const response = await fetch(url);
      const data = await response.json();

      if (data.access_token) {
        this.accessToken = data.access_token;
        this.tokenExpires = new Date(new Date().getTime() + 7000 * 1000);
        return this.accessToken;
      } else {
        throw new Error('获取access_token失败：' + JSON.stringify(data));
      }
    } catch (error) {
      throw new Error('获取access_token出错：' + (error as Error).message);
    }
  }

  async pushMessage(openid: string, templateId: string, data: TemplateData, url: string = ''): Promise<any> {
    try {
      const accessToken = await this.getAccessToken();
      const pushUrl = `https://api.weixin.qq.com/cgi-bin/message/template/send?access_token=${accessToken}`;

      const message = {
        touser: openid,
        template_id: templateId,
        url,
        data
      };

      const response = await fetch(pushUrl, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify(message)
      });

      return await response.json();
    } catch (error) {
      throw new Error('推送消息失败：' + (error as Error).message);
    }
  }

  async getFollowers(nextOpenid: string = ''): Promise<{
    total: number;
    count: number;
    nextOpenid: string;
    openids: string[];
  }> {
    try {
      const accessToken = await this.getAccessToken();
      const url = `https://api.weixin.qq.com/cgi-bin/user/get?access_token=${accessToken}&next_openid=${nextOpenid}`;

      const response = await fetch(url);
      const data = (await response.json()) as WeChatFollowersResponse;

      if (data.errcode) {
        throw new Error(`获取关注者列表失败：${data.errmsg}`);
      }

      return {
        total: data.total,
        count: data.count,
        nextOpenid: data.next_openid,
        openids: data.data?.openid || []
      };
    } catch (error) {
      throw new Error('获取关注者列表出错：' + (error as Error).message);
    }
  }

  async getAllFollowers(): Promise<string[]> {
    try {
      let allOpenids: string[] = [];
      let nextOpenid = '';

      do {
        const result = await this.getFollowers(nextOpenid);
        allOpenids = allOpenids.concat(result.openids);
        nextOpenid = result.nextOpenid;
      } while (nextOpenid);

      return allOpenids;
    } catch (error) {
      throw new Error('获取所有关注者出错：' + (error as Error).message);
    }
  }
}

class NotificationService {
  private wechatPush: WeChatPush;

  constructor(config: Config) {
    this.wechatPush = new WeChatPush(config.appid, config.appSecret);
  }

  async sendSystemNotification(openid: string, title: string, content: string, url: string = ''): Promise<any> {
    try {
      const templateId = 'ZW6Ffw84bW2JTnWi8euPoCszLBxmtXH7cmxwp9RUj4M';

      const templateData: TemplateData = {
        title: {
          value: title,
          color: '#173177' // 蓝色
        },
        time: {
          value: new Date().toLocaleString('zh-CN', {
            year: 'numeric',
            month: '2-digit',
            day: '2-digit',
            hour: '2-digit',
            minute: '2-digit',
            second: '2-digit',
            hour12: false
          }),
          color: '#000000' // 黑色
        },

        content: {
          value: content,
          color: '#000000' // 黑色
        }
      };

      return await this.wechatPush.pushMessage(openid, templateId, templateData, url);
    } catch (error) {
      console.error('发送系统通知失败：', error);
      throw error;
    }
  }
}

export { WeChatPush, NotificationService };

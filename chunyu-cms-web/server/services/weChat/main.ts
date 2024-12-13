import { WeChatPush, NotificationService } from './weChat.services';

interface Config {
  appid: string;
  appSecret: string;
}

const config: Config = {
  appid: 'wx4cf99a524f508c88',
  appSecret: '25f31a8dac91242508a4e33bef48aaf1'
};

const wechatPush = new WeChatPush(config.appid, config.appSecret);
const notificationService = new NotificationService(config);

async function sendNotificationToAllFollowers(): Promise<void> {
  try {
    const allOpenids = await wechatPush.getAllFollowers();
    console.log(`总共有 ${allOpenids.length} 个关注者`);

    for (const openid of allOpenids) {
      try {
        const result = await notificationService.sendSystemNotification(
          openid,
          'AI 早报提醒',
          'OpenAI宣布收购Chat.com域名，价格为 1550 万美元，用于跳转ChatGPT官网。',
          'https://www.aicpb.com'
        );
        console.log(`发送给 ${openid} 成功:`, result);
      } catch (error) {
        console.error(`发送给 ${openid} 失败:`, error);
      }
    }
  } catch (error) {
    console.error('群发消息失败：', error instanceof Error ? error.message : String(error));
  }
}

export { sendNotificationToAllFollowers };

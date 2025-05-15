import fs from 'fs';
import WxPay from 'wechatpay-node-v3';

const runtimeConfig = useRuntimeConfig();

export class WxPayServices {
  private static instance: WxPay;

  public static getInstance() {
    if (!this.instance) {
      this.instance = new WxPay({
        appid: runtimeConfig.wechatPay.appId,
        mchid: runtimeConfig.wechatPay.mchId,
        publicKey: fs.readFileSync(runtimeConfig.wechatPay.publicKey),
        privateKey: fs.readFileSync(runtimeConfig.wechatPay.privateKey)
      });
    }
    return this.instance;
  }
}

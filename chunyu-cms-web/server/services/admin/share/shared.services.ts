/*
 * @Description: 公共方法
 */

import * as fs from 'fs-extra';
import CryptoJS from 'crypto-js';
import { customAlphabet, nanoid } from 'nanoid';
import iconv from 'iconv-lite';

export class SharedServices {
  /**
   * 构造树型结构数据
   */
  public handleTree(data: any[], id?: string, parentId?: string, children?: string) {
    const config = {
      id: id || 'id',
      parentId: parentId || 'parentId',
      childrenList: children || 'children'
    };

    const childrenListMap: any = {};
    const nodeIds: any = {};
    const tree = [];

    for (const d of data) {
      const parentId = d[config.parentId];
      if (childrenListMap[parentId] == null) {
        childrenListMap[parentId] = [];
      }
      nodeIds[d[config.id]] = d;
      childrenListMap[parentId].push(d);
    }

    for (const d of data) {
      const parentId = d[config.parentId];
      if (nodeIds[parentId] == null) {
        tree.push(d);
      }
    }

    for (const t of tree) {
      adaptToChildrenList(t);
    }

    function adaptToChildrenList(o: { [x: string]: any }) {
      if (childrenListMap[o[config.id]] !== null) {
        o[config.childrenList] = childrenListMap[o[config.id]];
      }
      if (o[config.childrenList]) {
        for (const c of o[config.childrenList]) {
          adaptToChildrenList(c);
        }
      }
    }

    return tree;
  }

  /* 获取请求IP */
  getReqIP(req: any): string {
    return (
      // 判断是否有反向代理 IP
      (
        ((req.headers as any)['x-forwarded-for'] as string) ||
        // 判断后端的 socket 的 IP
        (req as any).socket?.remoteAddress ||
        ''
      ).replace('::ffff:', '')
    );
  }

  /* 判断IP是不是内网 */
  IsLAN(ip: string) {
    ip.toLowerCase();
    if (ip === 'localhost') return true;
    let aIp = 0;
    if (ip === '') return false;
    const aNum = ip.split('.');
    if (aNum.length !== 4) return false;
    aIp += parseInt(aNum[0]) << 24;
    aIp += parseInt(aNum[1]) << 16;
    aIp += parseInt(aNum[2]) << 8;
    aIp += parseInt(aNum[3]) << 0;
    aIp = (aIp >> 16) & 0xffff;
    return aIp >> 8 === 0x7f || aIp >> 8 === 0xa || aIp === 0xc0a8 || (aIp >= 0xac10 && aIp <= 0xac1f);
  }

  /* 通过ip获取地理位置 */
  async getLocation(ip: string) {
    if (this.IsLAN(ip)) return '内网IP';
    try {
      const response = await fetch(`http://whois.pconline.com.cn/ipJson.jsp?ip=${ip}&json=true`);
      const buffer = await response.arrayBuffer();
      const data = JSON.parse((iconv as any).decode(Buffer.from(buffer), 'gbk'));
      return data.pro + ' ' + data.city;
    } catch (error) {
      return '未知';
    }
  }

  /**
   * @description: AES加密
   * @param {string} msg
   * @param {string} secret
   * @return {*}
   */
  aesEncrypt(msg: string, secret: string): string {
    return CryptoJS.AES.encrypt(msg, secret).toString();
  }

  /**
   * @description: AES解密
   * @param {string} encrypted
   * @param {string} secret
   * @return {*}
   */
  aesDecrypt(encrypted: string, secret: string): string {
    return CryptoJS.AES.decrypt(encrypted, secret).toString(CryptoJS.enc.Utf8);
  }

  /**
   * @description: md5加密
   * @param {string} msg
   * @return {*}
   */
  md5(msg: string): string {
    return CryptoJS.MD5(msg).toString();
  }

  /**
   * @description: 生成一个UUID
   * @return {*}
   */
  generateUUID(): string {
    return nanoid();
  }

  /**
   * @description: 生成随机数
   * @param {number} length
   * @param {*} placeholder
   * @return {*}
   */
  generateRandomValue(
    length: number,
    placeholder: any = '1234567890qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM'
  ): string {
    const customNanoid = customAlphabet(placeholder, length);
    return customNanoid();
  }

  /**
   * 数组对象去重
   * @param arr
   * @param uniId
   */
  uniqueFunc(arr: any[], uniId: string | number) {
    const res = new Map();
    return arr.filter(item => !res.has(item[uniId]) && res.set(item[uniId], 1));
  }

  /**
   * 检测目录是否存在，不存在则创建
   * @param directoryPath
   */
  async createDirectorySync(directoryPath: string) {
    try {
      await fs.ensureDir(process.cwd() + '/' + directoryPath);
    } catch (err) {
      console.error(`创建目录 ${directoryPath} 时出错：`, err);
    }
  }

  /**
   * 生成订单编号
   */
  generateOrderNumber() {
    // 获取当前时间戳，精确到毫秒
    const timestamp = new Date().getTime();
    // 生成一个 4 位的随机数
    const randomNum = Math.floor(Math.random() * 9000) + 1000;
    // 组合时间戳和随机数形成订单编号
    return `ORD${timestamp}${randomNum}`;
  }
}

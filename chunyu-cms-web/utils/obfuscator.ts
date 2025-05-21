// 混淆函数（异或运算 + 位移）
const MAGIC_NUMBER = 123456789;

export function obfuscateId(id: number) {
  return (id ^ MAGIC_NUMBER) << 2;
}

export function deObfuscateId(obfuscatedId: number) {
  return (obfuscatedId >> 2) ^ MAGIC_NUMBER;
}

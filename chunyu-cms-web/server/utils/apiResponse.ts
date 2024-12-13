export interface ApiResponse<T> {
  code: number;
  msg: string;
  data: T;
}

// 函数重载声明
export function createApiResponse<T>(data: T): ApiResponse<T>;
export function createApiResponse<T>(data: T, code: number): ApiResponse<T>;
export function createApiResponse<T>(data: T, code: number, message: any): ApiResponse<T>;

// 函数实现
export function createApiResponse<T>(data: T, code?: number, message?: any): ApiResponse<T> {
  const defaultCode = 200;
  const defaultMessage = '成功';
  if (code === undefined && message === undefined) {
    return {
      code: defaultCode,
      msg: defaultMessage,
      data
    };
  }
  return {
    code: code as number,
    msg: message instanceof Error ? message.message : String(message),
    data
  };
}

import { ApiResponse } from '~~/server/utils/apiResponse';

export type adminCommonUpload = ApiResponse<{
  name: string;
  url: string;
  mimeType: string;
  width: number;
  height: number;
  size: number;
}>;

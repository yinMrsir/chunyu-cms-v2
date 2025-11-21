import { ApiResponse } from '~~/server/utils/apiResponse';

export type adminCommonMergeChunks = ApiResponse<{
  name: string;
  url: string;
  mimeType: string;
  size: number;
  path: string;
}>;

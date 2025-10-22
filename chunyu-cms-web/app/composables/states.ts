/** 侧边栏 **/
export const useSidebarOpen = () => useState<boolean>('sidebarOpen', () => true);

/** 侧边栏文字显示 **/
export const useTextVisible = () => useState<boolean>('textVisible', () => true);

/** 登录弹层 **/
export const useLoginVisible = () => useState<boolean>('loginVisible', () => false);

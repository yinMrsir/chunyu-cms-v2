<template>
  <div>
    <el-dialog v-model="loginVisible" width="315px" class="login-box">
      <el-tabs v-model="loginType" class="mt-15px">
        <el-tab-pane label="验证码登录" name="1">
          <el-form
            ref="verificationLoginFormRef"
            size="large"
            :model="verificationLoginForm"
            :rules="verificationLoginRules"
            label-width="0px"
            class="mt-20px"
          >
            <el-form-item prop="email">
              <el-input v-model="verificationLoginForm.email" placeholder="请输入邮箱"></el-input>
            </el-form-item>
            <el-form-item prop="code" class="!mb-6px relative">
              <el-input v-model="verificationLoginForm.code" placeholder="请输入验证码"></el-input>
              <div class="absolute right-8px top-[2px] z-10">
                <el-button link size="small" :loading="sendCodeLoading" @click="handleSendCode">
                  {{ codeTime === 0 ? '获取验证码' : codeTime + 's后可重发' }}
                </el-button>
              </div>
            </el-form-item>
            <el-button class="login-button" type="primary" :loading="submitLoading" @click="handleLogin">
              登录/注册
            </el-button>
          </el-form>
        </el-tab-pane>
        <el-tab-pane label="密码登录" name="2">
          <el-form
            ref="loginFormRef"
            size="large"
            :model="loginForm"
            :rules="loginFormRules"
            label-width="0px"
            class="mt-20px"
          >
            <el-form-item prop="email">
              <el-input v-model="loginForm.email" placeholder="请输入邮箱"></el-input>
            </el-form-item>
            <el-form-item prop="password" class="!mb-6px relative">
              <el-input
                v-model="loginForm.password"
                :type="isShowPassword ? 'text' : 'password'"
                placeholder="请输入密码"
              ></el-input>
              <span class="absolute right-8px top-2px z-10 cursor-pointer" @click="isShowPassword = !isShowPassword">
                <ElIconView v-if="isShowPassword" class="inline-block w-20px h-20px" />
                <ElIconHide v-else class="inline-block w-20px h-20px" />
              </span>
            </el-form-item>
            <el-button class="login-button" type="primary" :loading="submitLoading" @click="handleLogin">
              登录
            </el-button>
          </el-form>
        </el-tab-pane>
      </el-tabs>
      <div class="border-solid border-#ffffff40 border-t-1px pt-20px mt-20px text-12px">
        <div ref="checkboxRef" class="flex items-center justify-center gap-6px">
          <el-checkbox
            v-model="isAgree"
            true-value="1"
            false-value="0"
            style="--el-color-primary: #00da5a; --el-checkbox-bg-color: #4b4b4b"
          />
          <span>
            同意 <nuxt-link to="/protocol" class="color-#00da5ab2">《用户协议》</nuxt-link>和
            <nuxt-link to="/policies" class="color-#00da5ab2">《隐私条款》</nuxt-link>
          </span>
        </div>
      </div>
    </el-dialog>
  </div>
</template>

<script setup>
  import { useLoginVisible } from '~/composables/states';
  import { request } from '~/utils/request';
  import { WEB_TOKEN, WEB_USER_INFO } from '~/shared/cookiesName';

  const token = useCookie(WEB_TOKEN);
  const userInfo = useCookie(WEB_USER_INFO);
  const route = useRoute();
  const loginVisible = useLoginVisible();
  const checkboxRef = useTemplateRef('checkboxRef');
  const loginType = ref('1');
  const isAgree = ref('0');
  const loginForm = ref({
    email: undefined,
    password: undefined
  });
  const loginFormRules = ref({
    email: [
      { required: true, message: '请输入邮箱', trigger: 'change' },
      {
        pattern: /^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/,
        message: '请输入正确的邮箱',
        trigger: 'change'
      }
    ],
    password: [{ required: true, message: '请输入密码', trigger: 'change' }]
  });
  const loginFormRef = useTemplateRef('loginFormRef');
  const verificationLoginForm = ref({
    email: undefined,
    code: undefined
  });
  const verificationLoginFormRef = useTemplateRef('verificationLoginFormRef');
  const verificationLoginRules = ref({
    email: [
      { required: true, message: '请输入邮箱', trigger: 'change' },
      {
        pattern: /^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/,
        message: '请输入正确的邮箱',
        trigger: 'change'
      }
    ],
    code: [{ required: true, message: '请输入验证码', trigger: 'change' }]
  });
  const isShowPassword = ref(false);
  const codeTime = ref(0);
  let timer = null;
  const sendCodeLoading = ref(false);
  const submitLoading = ref(false);

  watch(
    () => route.path,
    () => {
      loginVisible.value = false;
    }
  );

  watch(
    () => loginType.value,
    () => {
      verificationLoginFormRef.value.clearValidate();
      loginFormRef.value.clearValidate();
    }
  );

  // 发送验证码
  async function handleSendCode() {
    if (codeTime.value !== 0) return;
    if (loginType.value === '1') {
      await verificationLoginFormRef.value.validateField('email');
    }
    if (sendCodeLoading.value) return;
    sendCodeLoading.value = true;
    try {
      await request({
        url: '/api/web/sendCode',
        method: 'POST',
        body: {
          email: verificationLoginForm.value.email
        }
      });
      ElMessage.success('验证码发送成功');
      codeTime.value = 60;
      timer = setInterval(() => {
        codeTime.value--;
        if (codeTime.value === 0) {
          clearInterval(timer);
        }
      }, 1000);
    } finally {
      sendCodeLoading.value = false;
    }
  }

  // 登录
  async function handleLogin() {
    if (isAgree.value === '0') {
      checkboxRef.value.classList.add('animate__shakeX');
      setTimeout(() => {
        checkboxRef.value.classList.remove('animate__shakeX');
      }, 1000);
      return;
    }
    if (submitLoading.value) return;
    submitLoading.value = true;
    let data = null;
    try {
      if (loginType.value === '1') {
        await verificationLoginFormRef.value.validate();
        data = await request({
          url: '/api/web/login',
          method: 'POST',
          body: {
            ...verificationLoginForm.value,
            loginType: loginType.value
          }
        });
      } else {
        await loginFormRef.value.validate();
        data = await request({
          url: '/api/web/login',
          method: 'POST',
          body: {
            ...loginForm.value,
            loginType: loginType.value
          }
        });
      }
      token.value = data.token;
      userInfo.value = data.userInfo;
      ElMessage.success('登录成功');
      loginVisible.value = false;
    } finally {
      submitLoading.value = false;
    }
  }
</script>

<style lang="scss">
  .el-dialog.login-box {
    background: #1e2126;
  }
  .login-box {
    .el-tabs__item {
      color: #ffffff7f;
      font-weight: normal;
      font-size: 14px;
      &.is-active {
        color: #fff;
      }
    }
    .el-button.login-button {
      background-image: linear-gradient(90deg, #00a8e6, #00b84d 50%, #00b84d);
      border-radius: 20px;
      cursor: pointer;
      display: flex;
      height: 40px;
      justify-content: center;
      line-height: 38px;
      margin-top: 36px;
      position: relative;
      width: 100%;
      border: none;
    }
    .is-loading:before {
      background: transparent !important;
    }
    .el-input__wrapper {
      background: #0000;
      border: 1px solid #ffffff14;
      border-radius: 6px;
      box-sizing: border-box;
      caret-color: #00cc4c;
      color: #fff;
      cursor: text;
      font-size: 13px;
      height: 48px;
      outline: none;
      padding-left: 16px;
      position: relative;
      box-shadow: none;
    }
    .el-tabs__nav-scroll {
      padding-left: 10px;
    }
    .el-tabs__active-bar {
      background: #00f48e;
      box-shadow: 0 0 14px 1px #00f48e;
      box-sizing: border-box;
      height: 4px;
      border-radius: 2px;
    }
    .el-checkbox__inner {
      border: none;
      &::after {
        top: 2px;
        left: 5px;
      }
    }
    input {
      color: #ffffff;
    }
    input::placeholder {
      color: #383838;
    }
  }
  .animate__shakeX {
    animation-name: shakeX;
    animation-duration: 1s;
  }
  @keyframes shakeX {
    0%,
    100% {
      transform: translateZ(0);
    }
    10%,
    30%,
    50%,
    70%,
    90% {
      transform: translate3d(-10px, 0, 0);
    }
    20%,
    40%,
    60%,
    80% {
      transform: translate3d(10px, 0, 0);
    }
  }
</style>

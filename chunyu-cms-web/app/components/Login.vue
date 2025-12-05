<template>
  <div>
    <el-dialog v-model="loginVisible" width="315px" class="login-box">
      <el-tabs v-model="loginType" class="mt-15px">
        <el-tab-pane :label="$t('verification_code_login')" name="1">
          <el-form
            ref="verificationLoginFormRef"
            size="large"
            :model="verificationLoginForm"
            :rules="verificationLoginRules"
            label-width="0px"
            class="mt-20px"
          >
            <el-form-item prop="email">
              <el-input v-model="verificationLoginForm.email" :placeholder="$t('please_enter_email')" />
            </el-form-item>
            <el-form-item prop="code" class="relative">
              <el-input v-model="verificationLoginForm.code" :placeholder="$t('please_enter_verification_code')" />
              <div class="absolute right-8px top-[2px] z-10">
                <el-button link size="small" :loading="sendCodeLoading" @click="handleSendCode">
                  {{ codeTime === 0 ? $t('get_verification_code') : codeTime + $t('seconds_before_retry') }}
                </el-button>
              </div>
            </el-form-item>
            <el-form-item class="!mb-6px">
              <el-input v-model="verificationLoginForm.inviteCode" placeholder="输入邀请码，额外获得金币（可选）" />
            </el-form-item>
            <el-button class="login-button" type="primary" :loading="submitLoading" @click="handleLogin">
              {{ $t('login_register') }}
            </el-button>
          </el-form>
        </el-tab-pane>
        <el-tab-pane :label="$t('password_login')" name="2">
          <el-form
            ref="loginFormRef"
            size="large"
            :model="loginForm"
            :rules="loginFormRules"
            label-width="0px"
            class="mt-20px"
          >
            <el-form-item prop="email">
              <el-input v-model="loginForm.email" :placeholder="$t('please_enter_email')"></el-input>
            </el-form-item>
            <el-form-item prop="password" class="!mb-6px relative">
              <el-input
                v-model="loginForm.password"
                :type="isShowPassword ? 'text' : 'password'"
                :placeholder="$t('default_password')"
              ></el-input>
              <span class="absolute right-8px top-2px z-10 cursor-pointer" @click="isShowPassword = !isShowPassword">
                <ElIconView v-if="isShowPassword" class="inline-block w-20px h-20px" />
                <ElIconHide v-else class="inline-block w-20px h-20px" />
              </span>
            </el-form-item>
            <el-button class="login-button" type="primary" :loading="submitLoading" @click="handleLogin">
              {{ $t('login') }}
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
            {{ $t('agree') }} <nuxt-link to="/protocol" class="color-#00da5ab2">{{ $t('user_agreement') }}</nuxt-link>
            {{ $t('and') }}
            <nuxt-link to="/policies" class="color-#00da5ab2">{{ $t('privacy_policy') }}</nuxt-link>
          </span>
        </div>
      </div>
    </el-dialog>
  </div>
</template>

<script setup lang="ts">
  import { useLoginVisible } from '~~/app/composables/states';
  import { request } from '~~/app/utils/request';
  import { WEB_TOKEN, WEB_USER_INFO } from '~~/shared/cookiesName';
  import type { CookieUserInfo } from '~~/types/hooks';

  const token = useCookie(WEB_TOKEN);
  const userInfo = useCookie<CookieUserInfo>(WEB_USER_INFO);
  const route = useRoute();
  const loginVisible = useLoginVisible();
  const checkboxRef = useTemplateRef('checkboxRef');
  const loginType = ref('2');
  const isAgree = ref('0');
  const loginForm = ref({
    email: '542968439@qq.com',
    password: '',
    inviteCode: ''
  });
  const { t } = useI18n();
  const loginFormRules = ref({
    email: [
      { required: true, message: t('please_enter_email'), trigger: 'change' },
      {
        pattern: /^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/,
        message: t('please_enter_correct_email'),
        trigger: 'change'
      }
    ],
    password: [{ required: true, message: t('please_enter_password'), trigger: 'change' }]
  });
  const loginFormRef = useTemplateRef('loginFormRef');
  const verificationLoginForm = ref({
    email: undefined,
    code: undefined,
    inviteCode: ''
  });
  const verificationLoginFormRef = useTemplateRef('verificationLoginFormRef');
  const verificationLoginRules = ref({
    email: [
      { required: true, message: t('please_enter_email'), trigger: 'change' },
      {
        pattern: /^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/,
        message: t('please_enter_correct_email'),
        trigger: 'change'
      }
    ],
    code: [{ required: true, message: t('please_enter_verification_code'), trigger: 'change' }]
  });
  const isShowPassword = ref(false);
  const codeTime = ref(0);
  let timer: NodeJS.Timeout | undefined;
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
      verificationLoginFormRef.value?.clearValidate();
      loginFormRef.value?.clearValidate();
    }
  );

  // 发送验证码
  async function handleSendCode() {
    if (codeTime.value !== 0) return;
    if (loginType.value === '1') {
      await verificationLoginFormRef.value?.validateField('email');
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
      ElMessage.success(t('verification_code_sent_successfully'));
      codeTime.value = 60;
      timer = setInterval(() => {
        codeTime.value--;
        if (codeTime.value === 0 && timer) {
          clearInterval(timer);
          timer = undefined;
        }
      }, 1000);
    } finally {
      sendCodeLoading.value = false;
    }
  }

  // 登录
  async function handleLogin() {
    if (isAgree.value === '0') {
      checkboxRef.value?.classList.add('animate__shakeX');
      setTimeout(() => {
        checkboxRef.value?.classList.remove('animate__shakeX');
      }, 1000);
      return;
    }
    if (submitLoading.value) return;
    submitLoading.value = true;
    let data = null;
    try {
      if (loginType.value === '1') {
        await verificationLoginFormRef.value?.validate();
        data = await request({
          url: '/api/web/login',
          method: 'POST',
          body: {
            ...verificationLoginForm.value,
            loginType: loginType.value
          }
        });
      } else {
        await loginFormRef.value?.validate();
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

      // 显示登录成功消息
      if (data.inviteInfo?.usedInviteCode) {
        ElMessage.success(`${t('login_successful')}！${data.inviteInfo.message}`);
      } else {
        ElMessage.success(t('login_successful'));
      }

      loginVisible.value = false;
      window.location.reload();
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

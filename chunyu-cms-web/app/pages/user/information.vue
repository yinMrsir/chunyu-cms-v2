<template>
  <div class="p-20px pt-74px center-information">
    <el-tabs v-model="activeTab">
      <el-tab-pane label="个人资料" name="information">
        <el-form ref="formRef" class="mt-15px" :model="form" label-width="80px">
          <el-form-item label="头像">
            <div class="avatar-box" @click="handleShowAvatarDialog">
              <el-avatar :src="form?.avatar" :size="60"></el-avatar>
            </div>
          </el-form-item>
          <el-form-item label="邮箱">
            <el-input v-model="form.email" disabled></el-input>
          </el-form-item>
          <el-form-item label="昵称">
            <el-input v-model="form.nickname" placeholder="请输入昵称"></el-input>
          </el-form-item>
          <el-form-item label="手机号码">
            <el-input v-model="form.phonenumber" placeholder="请输入手机号码"></el-input>
          </el-form-item>
          <el-form-item label="性别">
            <el-radio-group v-model="form.sex">
              <el-radio value="1">男</el-radio>
              <el-radio value="2">女</el-radio>
            </el-radio-group>
          </el-form-item>
          <el-form-item label="生日">
            <el-date-picker
              v-model="form.birthday"
              value-format="YYYY-MM-DD"
              type="date"
              placeholder="选择日期"
            ></el-date-picker>
          </el-form-item>
          <el-form-item label="个人简介">
            <el-input v-model="form.introduction" type="textarea" placeholder="请输入个人简介"></el-input>
          </el-form-item>
          <el-form-item>
            <el-button type="primary" @click="handleUpdateInformation">保存</el-button>
          </el-form-item>
        </el-form>
      </el-tab-pane>
      <el-tab-pane label="修改密码" name="editPassword">
        <el-form
          ref="passwordFormRef"
          :rules="passwordFormRules"
          class="mt-15px"
          :model="passwordForm"
          label-width="100px"
        >
          <el-form-item prop="newPassword" label="新密码">
            <el-input v-model="passwordForm.newPassword" type="password" placeholder="请输入新密码"></el-input>
          </el-form-item>
          <el-form-item prop="confirmPassword" label="确认密码">
            <el-input v-model="passwordForm.confirmPassword" type="password" placeholder="请输入确认密码"></el-input>
          </el-form-item>
          <el-form-item>
            <el-button type="primary" @click="handleUpdatePassword">保存</el-button>
          </el-form-item>
        </el-form>
      </el-tab-pane>
    </el-tabs>

    <el-dialog v-model="avatarDialogVisible" :width="dialogWidth" style="background: #1e2126">
      <div class="flex gap-x-30px">
        <div>
          <vue-cropper
            ref="cropperRef"
            :src="avatarImg"
            :aspect-ratio="1"
            :container-style="{ width: '200px', height: '200px' }"
            @ready="updatePreview"
            @cropmove="updatePreview"
          />
        </div>
        <div>
          <el-upload action="#" :http-request="requestUpload" :show-file-list="false" :before-upload="beforeUpload">
            <el-button size="small" type="primary">点击上传</el-button>
          </el-upload>
          <div class="preview-container mt-15px flex flex-col gap-y-10px">
            <el-avatar :src="previewImage" :size="60" />
            <el-avatar :src="previewImage" :size="40" />
            <el-avatar :src="previewImage" :size="20" />
          </div>
        </div>
      </div>
      <template #footer>
        <el-button @click="avatarDialogVisible = false">取消</el-button>
        <el-button type="primary" @click="handleSaveAvatar">保存</el-button>
      </template>
    </el-dialog>
  </div>
</template>

<script setup lang="ts">
  import VueCropper from 'vue-cropperjs';
  import 'cropperjs/dist/cropper.css';
  import { createToken } from '~~/app/utils/request';
  import { WEB_TOKEN, WEB_USER_INFO } from '~~/shared/cookiesName';
  import type { CookieUserInfo } from '~~/types/hooks';
  import type { adminCommonUpload } from '~~/types/api/adminCommonUpload';
  import type { WebMemberUser } from '~~/types/api/webMemberUser';

  definePageMeta({
    layout: 'user-center',
    middleware: 'auth'
  });

  const router = useRouter();
  const token = useCookie(WEB_TOKEN);
  const userInfo = useCookie<CookieUserInfo>(WEB_USER_INFO);

  const activeTab = ref('information');
  const cropperRef = useTemplateRef('cropperRef');
  const form = ref<{
    nickname?: string;
    phonenumber?: string | null;
    sex?: string;
    birthday?: string | null;
    introduction?: string | null;
    avatar?: string;
    email?: string;
  }>({
    nickname: '',
    phonenumber: '',
    sex: '',
    birthday: '',
    introduction: '',
    avatar: '',
    email: ''
  });
  const passwordFormRef = useTemplateRef('passwordFormRef');
  const passwordForm = ref<{
    newPassword?: string;
    confirmPassword?: string;
  }>({
    newPassword: undefined,
    confirmPassword: undefined
  });
  const passwordFormRules = ref({
    newPassword: [{ required: true, message: '请输入新密码', trigger: 'change' }],
    confirmPassword: [
      { required: true, message: '请输入确认密码', trigger: 'change' },
      {
        validator: (_: any, value: any, callback: any) => {
          if (passwordForm.value.newPassword === value) {
            callback();
          } else {
            callback(new Error('两次输入的密码不一致'));
          }
        },
        trigger: 'change'
      }
    ]
  });
  const avatarDialogVisible = ref(false);
  const avatarImg = ref<string | ArrayBuffer | null | undefined>('');
  const previewImage = ref('');
  const dialogWidth = ref('360px');

  const { data: memberUser } = await useFetch<WebMemberUser>('/api/web/member/user', {
    headers: {
      Token: createToken()
    }
  });
  if (memberUser.value?.code === 200) {
    const { nickname, phonenumber, sex, birthday, introduction, avatar, email } = memberUser.value.data;
    form.value = {
      nickname,
      phonenumber,
      sex,
      birthday,
      introduction,
      avatar,
      email
    };
  } else if (memberUser.value?.code === 401) {
    token.value = null;
    userInfo.value = undefined;
    router.push('/');
  } else {
    throw createError({ statusCode: 500, statusMessage: '服务器错误' });
  }

  const handleUpdatePassword = async () => {
    await passwordFormRef.value?.validate();
    await request({
      url: '/api/web/member/user/updatePassword',
      method: 'post',
      body: passwordForm.value
    });
    await passwordFormRef.value?.resetFields();
    ElMessage.success('修改成功');
  };

  const handleUpdateInformation = async () => {
    await request({
      url: '/api/web/member/user',
      method: 'put',
      body: form.value
    });
    userInfo.value = {
      avatar: form.value.avatar ?? '',
      email: form.value.email ?? '',
      nickname: form.value.nickname ?? '',
      memberUserId: userInfo.value!.memberUserId
    };
    ElMessage.success('修改成功');
  };

  function handleShowAvatarDialog() {
    avatarImg.value = form.value.avatar;
    avatarDialogVisible.value = true;
  }

  /** 覆盖默认上传行为 */
  function requestUpload() {
    // 不实际上传，仅用于阻止默认行为
    return Promise.resolve();
  }

  /** 上传预处理 */
  function beforeUpload(file: InstanceType<typeof File>) {
    if (!file.type.includes('image/')) {
      ElMessage.error('文件格式错误，请上传图片类型,如：JPG，PNG后缀的文件。');
    } else {
      const reader = new FileReader();
      reader.readAsDataURL(file);
      reader.onload = event => {
        avatarImg.value = event.target?.result;
        if (cropperRef.value) {
          cropperRef.value.replace(event.target?.result);
        }
      };
    }
  }

  /** 更新实时预览图片 **/
  const updatePreview = () => {
    if (cropperRef.value) {
      const canvas = cropperRef.value.getCroppedCanvas(); // 获取裁剪后的 Canvas
      if (canvas) {
        previewImage.value = canvas.toDataURL(); // 将 Canvas 转换为 Base64 图片
      }
    }
  };

  async function handleSaveAvatar() {
    const canvas = cropperRef.value.getCroppedCanvas();
    if (!canvas) {
      ElMessage.error('无法获取裁剪后的图片');
      return;
    }
    // 将 Canvas 转换为 Blob
    const blob = await new Promise<Blob>((resolve, reject) => {
      canvas.toBlob(
        (blob: Blob | PromiseLike<Blob>) => {
          if (blob) {
            resolve(blob);
          } else {
            reject(new Error('Canvas toBlob failed'));
          }
        },
        'image/jpeg',
        0.9
      );
    });
    // 创建 FormData
    const formData = new FormData();
    formData.append('file', blob, 'avatar.jpg'); // 设置文件名

    const data = await $fetch<adminCommonUpload>('/api/admin/common/upload', {
      headers: {
        contentType: 'multipart/form-data'
      },
      method: 'POST',
      body: formData
    });
    if (data.code === 200) {
      form.value.avatar = data.data.url;
    } else {
      ElMessage.error('上传失败');
    }
    avatarDialogVisible.value = false;
  }
</script>

<style lang="scss">
  .center-information {
    .el-input__wrapper,
    .el-textarea__inner,
    .is-disabled .el-input__wrapper {
      background: rgba(255, 255, 255, 0.1);
      box-shadow: 0 5px 35px rgba(0, 0, 0, 0.2);
      padding: 4px 20px;
    }
    input {
      color: rgba(255, 255, 255, 0.8);
    }
    input::placeholder,
    textarea::placeholder {
      color: rgba(255, 255, 255, 0.2);
    }
  }
  .avatar-box {
    position: relative;
    cursor: pointer;
    &:hover::before {
      content: '+';
      position: absolute;
      width: 60px;
      height: 60px;
      background: rgba(0, 0, 0, 0.5);
      font-size: 20px;
      display: flex;
      justify-content: center;
      align-items: center;
    }
  }
</style>

<template>
  <div class="p-20px pt-74px center-information">
    <el-tabs v-model="activeTab">
      <el-tab-pane label="个人资料" name="information">
        <el-form ref="formRef" class="mt-15px" :model="form" label-width="80px">
          <el-form-item label="头像">
            <el-upload
              class="avatar-uploader"
              action="https://jsonplaceholder.typicode.com/posts/"
              :show-file-list="false"
              :on-success="handleAvatarSuccess"
              :before-upload="beforeAvatarUpload"
            >
              <img v-if="imageUrl" :src="imageUrl" class="avatar" />
              <i v-else class="el-icon-plus avatar-uploader-icon"></i>
            </el-upload>
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
  </div>
</template>

<script setup>
  import { createToken } from '~/utils/request';
  import { WEB_USER_INFO } from '~/shared/cookiesName';

  definePageMeta({
    layout: 'user-center',
    middleware: 'auth'
  });

  const userInfo = useCookie(WEB_USER_INFO);
  const activeTab = ref('information');
  const form = ref({});
  const passwordFormRef = useTemplateRef('passwordFormRef');
  const passwordForm = ref({});
  const passwordFormRules = ref({
    newPassword: [{ required: true, message: '请输入新密码', trigger: 'change' }],
    confirmPassword: [
      { required: true, message: '请输入确认密码', trigger: 'change' },
      {
        validator: (_, value, callback) => {
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
  const imageUrl = ref('');

  const { data } = await useFetch('/api/web/member/user', {
    headers: {
      Token: createToken()
    }
  });
  form.value = data.value.data;

  const handleAvatarSuccess = (res, file) => {
    imageUrl.value = URL.createObjectURL(file.raw);
  };

  const beforeAvatarUpload = file => {
    const isJPG = file.type === 'image/jpeg';
    const isLt2M = file.size / 1024 / 1024 < 2;

    if (!isJPG) {
      ElMessage.error('上传头像图片只能是 JPG 格式!');
    }
    if (!isLt2M) {
      ElMessage.error('上传头像图片大小不能超过 2MB!');
    }
    return isJPG && isLt2M;
  };

  const handleUpdatePassword = async () => {
    await request({
      url: '/api/web/member/user/updatePassword',
      method: 'post',
      body: passwordForm.value
    });
    await passwordFormRef.value.resetFields();
    ElMessage.success('修改成功');
  };

  const handleUpdateInformation = async () => {
    await request({
      url: '/api/web/member/user',
      method: 'put',
      body: form.value
    });
    userInfo.value = form.value;
    ElMessage.success('修改成功');
  };
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
</style>

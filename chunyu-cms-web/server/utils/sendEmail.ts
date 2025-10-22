import { createTransport } from 'nodemailer';

const runtimeConfig = useRuntimeConfig();

// 创建一个传输对象
const transporter = createTransport(runtimeConfig.email);

export const sendEmail = async (mailOptions: { to: string; subject: string; text: string }) => {
  return new Promise((resolve, reject) => {
    transporter.sendMail(
      {
        from: runtimeConfig.email.auth.user,
        to: mailOptions.to,
        subject: mailOptions.subject,
        html: mailOptions.text
      },
      (error, info) => {
        if (error) {
          reject(error);
        } else {
          resolve(info);
        }
      }
    );
  });
};

-- 插入邀请奖励发放任务
INSERT INTO `job` (
  `job_name`,
  `job_group`,
  `invoke_target`,
  `cron_expression`,
  `misfire_policy`,
  `concurrent`,
  `status`,
  `create_time`,
  `remark`
) VALUES (
  '邀请奖励发放任务',
  'DEFAULT',
  'processInviteRewards()',
  '0 0 2 * * ?',  -- 每天凌晨2点执行
  '3',
  '1',
  '0',
  NOW(),
  '自动发放邀请奖励，给注册超过24小时的用户发放邀请奖励金币'
);

-- 插入邀请奖励系统配置
INSERT INTO `sys_config` (`config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `remark`) VALUES
('邀请者奖励金额', 'inviteReward', '50', 'number', 'admin', NOW(), '用户成功邀请他人注册时，邀请者获得的金币数量'),
('被邀请者奖励金额', 'inviteeReward', '20', 'number', 'admin', NOW(), '用户使用邀请码注册时，被邀请者获得的额外金币数量');
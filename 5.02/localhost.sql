CREATE TABLE IF EXISTS `site_admin_users`(
	`id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT '索引id',
	`username` varchar(50) NOT NULL COMMENT '账号',
	`password` varchar(255) NOT NULL COMMENT '密码',
	`keyCode` varchar(10) NOT NULL COMMENT '秘钥',
	`powerId` int(10) NOT NULL DEFAULT 1 COMMENT '权限组id 0为不可删除超级管理员 默认1 可删除的次级管理员',
	`createTime` int(10) NOT NULL DEFAULT 0 COMMENT '创建时间',
	`lastLoginTime` int(10) NOT NULL DEFAULT 0 COMMENT '上一次登录时间',
	`updateTime` int(10) NOT NULL DEFAULT 0 COMMENT '上一次更新时间',
	`status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '账号状态 1正常 0禁用'
);


CREATE TABLE IF EXISTS `site_admin_users_token`(
	`id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT '索引id',
	`adminUserId` int(11) NOT NULL COMMENT '后台用户索引id to admin_users',
	`token` varchar(255) NOT NULL COMMENT 'token秘钥',
	`createTime` int(10) NOT NULL COMMENT '创建时间',
	`duration` int(10) NOT NULL DEFAULT 0 COMMENT '有效时长'
);
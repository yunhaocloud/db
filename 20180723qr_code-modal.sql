CREATE TABLE `t_activity` (
`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
`activity_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '活动名称',
`expiry_page_id` bigint NOT NULL COMMENT '兑奖界面',
`expiry_rule_id` bigint NOT NULL COMMENT '兑奖规则',
`activity_state` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '活动状态',
`is_deleted` char(0) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT N COMMENT '是否删除',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
`create_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT admin COMMENT '创建人',
`update_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT admin COMMENT '修改人',
PRIMARY KEY (`id`) 
);
CREATE TABLE `t_expiry_page` (
`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
`page_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '界面名称',
`page_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '界面类型',
`is_deleted` char(0) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否删除',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
`create_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT admin COMMENT '创建人',
`update_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT admin COMMENT '修改人',
PRIMARY KEY (`id`) 
);
CREATE TABLE `t_expiry_rule` (
`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
`rule_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '中奖规则名称',
`is_deleted` char(0) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否删除',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
`create_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT admin COMMENT '创建人',
`update_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT admin COMMENT '修改人',
PRIMARY KEY (`id`) 
);
CREATE TABLE `t_expiry_rule_detail` (
`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
`prize_grade` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '奖品等级',
`prize_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '奖品名称',
`prize_total_num` integer(10) NOT NULL COMMENT '奖品总数目',
`prize_used_num` integer(10) NOT NULL COMMENT '已使用奖品数目',
`prize_unused_num` integer(10) NOT NULL COMMENT '未使用奖品数目',
`percentage` double NULL COMMENT '中将百分比',
`is_deleted` char(0) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT N COMMENT '是否删除',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
`expiry_rule_id` bigint NOT NULL COMMENT '兑奖规则id',
`create_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT admin COMMENT '创建人',
`update_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT admin COMMENT '修改人',
PRIMARY KEY (`id`) 
);
CREATE TABLE `t_prize` (
`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
`prize_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '奖品名称',
`prize_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '奖品类型',
`prize_value` integer(10) NOT NULL COMMENT '奖品价值',
`prize_total_num` integer(10) NULL COMMENT '奖品总数',
`prize_unused_num` integer(10) NULL COMMENT '剩余库存数',
`is_deleted` char(0) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT N COMMENT '是否删除',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
`create_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT admin COMMENT '创建人',
`update_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT admin COMMENT '修改人',
PRIMARY KEY (`id`) 
);
CREATE TABLE `t_scan_code_log` (
`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
`phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号',
`serial_no` varchar(0) NOT NULL COMMENT '唯一性标识（针对每一次扫码）',
`activity_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '活动名称',
`phone_home_location` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机归属地',
`member_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '会员类型',
`prize_grade` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '奖品等级',
`prize_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '奖品名称',
`prize_value` integer NULL COMMENT '奖品价值',
`current_address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '扫码地址（实时地址）',
`scan_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '扫码时间',
`is_deleted` char(0) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT N COMMENT '是否删除',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
`create_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT admin COMMENT '创建人',
`update_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT admin COMMENT '修改人',
PRIMARY KEY (`id`) 
);
CREATE TABLE `t_qr_code` (
`id` bigint NOT NULL,
`unique_symbol` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '唯一标识',
`activity_id` bigint NULL COMMENT '活动id',
`qr_state` varchar(10) NULL COMMENT '二维码状态',
`prize_grade` varchar(20) NOT NULL COMMENT '奖品等级',
`is_deleted` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT N COMMENT '是否删除',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
`user_id` bigint NOT NULL COMMENT '用户id',
`create_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT admin COMMENT '创建人',
`update_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT admin COMMENT '修改人',
PRIMARY KEY (`id`) 
);
CREATE TABLE `t_user` (
`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
`role` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '角色',
`name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户姓名',
`phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '用户手机号',
`company` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '公司名称',
`is_deleted` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否删除',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
`age` int NULL,
`sex` varchar(10) NULL,
`address` varchar(200) NULL,
`create_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT admin COMMENT '创建人',
`update_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT admin COMMENT '修改人',
PRIMARY KEY (`id`) 
);

ALTER TABLE `t_activity` ADD CONSTRAINT `fk_expiry_page_id` FOREIGN KEY (`expiry_page_id`) REFERENCES `t_expiry_page` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `t_activity` ADD CONSTRAINT `fk_expiry_rule_id` FOREIGN KEY (`expiry_rule_id`) REFERENCES `t_expiry_rule` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `t_expiry_rule_detail` ADD CONSTRAINT `fk_expiry_rule_id_detail` FOREIGN KEY (`expiry_rule_id`) REFERENCES `t_expiry_rule` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `t_qr_code` ADD CONSTRAINT `fk_activity_id` FOREIGN KEY (`activity_id`) REFERENCES `t_activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `t_qr_code` ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;


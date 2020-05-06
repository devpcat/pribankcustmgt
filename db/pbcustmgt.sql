/*
 Navicat Premium Data Transfer

 Source Server         : 阿里云MySQL
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : rm-8vbi0k952c59x6m629o.mysql.zhangbei.rds.aliyuncs.com:3306
 Source Schema         : pbcustmgt

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 14/04/2020 20:31:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pbcm_cust_baseinfo
-- ----------------------------
DROP TABLE IF EXISTS `pbcm_cust_baseinfo`;
CREATE TABLE `pbcm_cust_baseinfo`  (
  `marketer` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '营销人员',
  `custid` int(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '客户编号系统级别',
  `cino` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户号',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `sex` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `birth` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生日',
  `workunit` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '工作单位',
  `position` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职务',
  `enterpriseprop` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业性质',
  `industrytype` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属行业',
  `homeaddr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '家庭住址',
  `carbrand` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车辆品牌',
  `carno` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车牌号码',
  `worktel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位电话',
  `hometel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '家庭电话',
  `phone1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机1',
  `phone2` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机2',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电子邮箱',
  `wxno` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信号',
  `iscontroler` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否是实际资金控制人',
  `characterdesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性格描述',
  `incomestate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收入状况',
  `hobby` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '兴趣爱好',
  `interest` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最关注的人或事',
  `problem` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '需要解决的人或事',
  `financialprefer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '金融投资偏好',
  `businessperfer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '办理业务习惯',
  `reserve1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留1',
  `reserve2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留2',
  `reserve3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留3',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本',
  `deleted` int(11) NULL DEFAULT 0 COMMENT '删除 0-否 1-是',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新事件',
  PRIMARY KEY (`custid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10000014 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pbcm_cust_baseinfo
-- ----------------------------
INSERT INTO `pbcm_cust_baseinfo` VALUES ('admin2', 10000000, 'A00002', '客户1', '女', '2019-12-30', '测试工作单位1', '职位111', '股份制企业', '制造业', '家庭地址', '骑车', '车牌', '0411', '辽宁大连', '15242589365', '18941105108', 'yuchao@dl', 'yuchao925', '是', '安静', '10万', '兴趣爱好', '关注的人或事', '需要解决的问题', '投资偏好', '办理业务习惯', NULL, NULL, NULL, 11, 0, '2020-03-30 22:08:39', '2020-04-11 11:23:32');
INSERT INTO `pbcm_cust_baseinfo` VALUES ('admin2', 10000001, 'A00001', '客户6', '女', '2020-01-01', '测试工作单位', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15242589365', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, '2020-03-30 22:08:39', '2020-04-08 21:26:47');
INSERT INTO `pbcm_cust_baseinfo` VALUES ('admin2', 10000002, 'A00003', '客户2', '男', '1991-01-02', '测试工作单位', '', '', '', '', '', '', '', '', '13642836985', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, 2, 0, '2020-04-05 13:17:19', '2020-04-11 11:23:32');
INSERT INTO `pbcm_cust_baseinfo` VALUES ('admin2', 10000003, 'A00004', '客户7', '', '', '测试工作单位', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, 3, 0, '2020-04-05 13:17:33', '2020-04-08 00:24:02');
INSERT INTO `pbcm_cust_baseinfo` VALUES ('admin1', 10000004, 'A00005', '客户3', '女', '2001-06-05', '测试工作单位', '', '', '', '', '', '', '', '', '18242589365', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, 2, 0, '2020-04-05 13:17:59', '2020-04-11 11:10:25');
INSERT INTO `pbcm_cust_baseinfo` VALUES ('admin2', 10000005, 'A00006', '客户4', '', '', '测试工作单位', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, 1, 0, '2020-04-05 13:29:06', '2020-04-10 23:28:20');
INSERT INTO `pbcm_cust_baseinfo` VALUES ('admin3', 10000006, 'A00007', '客户8', '', '', '测试工作单位', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, 1, 0, '2020-04-05 13:29:11', '2020-04-05 13:29:11');
INSERT INTO `pbcm_cust_baseinfo` VALUES ('admin2', 10000007, 'A00008', '客户a', '', '', '测试工作单位', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, 1, 0, '2020-04-08 21:36:42', '2020-04-10 23:28:21');
INSERT INTO `pbcm_cust_baseinfo` VALUES ('admin2', 10000008, 'A00009', '客户b', '', '', '测试工作单位', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, 1, 1, '2020-04-10 13:21:05', '2020-04-10 13:21:05');
INSERT INTO `pbcm_cust_baseinfo` VALUES ('admin2', 10000009, 'A00010', '客户c', '', '', '测试工作单位', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, 1, 1, '2020-04-10 13:26:30', '2020-04-10 13:26:30');
INSERT INTO `pbcm_cust_baseinfo` VALUES ('admin2', 10000010, 'A00011', '客户d', '', '', '测试工作单位', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, 1, 1, '2020-04-10 13:26:46', '2020-04-10 13:26:46');
INSERT INTO `pbcm_cust_baseinfo` VALUES ('admin2', 10000011, 'A00012', '客户e', '', '', '测试工作单位', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, 1, 1, '2020-04-10 13:26:54', '2020-04-10 13:26:54');
INSERT INTO `pbcm_cust_baseinfo` VALUES ('admin2', 10000012, 'A00013', '客户f', '', '', '测试工作单位', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, 1, 1, '2020-04-10 13:29:13', '2020-04-10 13:29:13');
INSERT INTO `pbcm_cust_baseinfo` VALUES ('admin2', 10000013, 'A00014', '客户g', '女', '2020-04-05', '测试工作单位', '', '', '', '', '', '', '', '', '11234', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, 1, 0, '2020-04-10 13:37:01', '2020-04-10 13:37:01');

-- ----------------------------
-- Table structure for pbcm_cust_extprop_admin_item
-- ----------------------------
DROP TABLE IF EXISTS `pbcm_cust_extprop_admin_item`;
CREATE TABLE `pbcm_cust_extprop_admin_item`  (
  `propid` int(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '管理员自定义属性id',
  `propname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员自定义属性名',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本',
  `deleted` int(11) NULL DEFAULT 0 COMMENT '删除 0-否 1-是',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新事件',
  PRIMARY KEY (`propid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pbcm_cust_extprop_admin_item
-- ----------------------------
INSERT INTO `pbcm_cust_extprop_admin_item` VALUES (2, '管理员属性2', 1, 1, NULL, NULL);
INSERT INTO `pbcm_cust_extprop_admin_item` VALUES (3, '333444', 1, 1, '2020-04-09 17:30:17', '2020-04-09 17:30:17');
INSERT INTO `pbcm_cust_extprop_admin_item` VALUES (4, '再找找1231', 1, 1, '2020-04-09 17:32:23', '2020-04-09 20:57:30');
INSERT INTO `pbcm_cust_extprop_admin_item` VALUES (5, '嗯嗯嗯', 1, 1, '2020-04-09 17:32:27', '2020-04-09 17:32:27');
INSERT INTO `pbcm_cust_extprop_admin_item` VALUES (6, '管理员自定义属性', 1, 0, '2020-04-09 17:32:47', '2020-04-10 16:11:23');

-- ----------------------------
-- Table structure for pbcm_cust_extprop_admin_value
-- ----------------------------
DROP TABLE IF EXISTS `pbcm_cust_extprop_admin_value`;
CREATE TABLE `pbcm_cust_extprop_admin_value`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键-自增',
  `propid` int(8) UNSIGNED NULL DEFAULT NULL COMMENT '属性的id',
  `custid` int(8) UNSIGNED NULL DEFAULT NULL COMMENT '客户的id',
  `propvalue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '属性的值',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本',
  `deleted` int(11) NULL DEFAULT 0 COMMENT '删除 0-否 1-是',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新事件',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pbcm_cust_ext_fk1`(`propid`) USING BTREE,
  INDEX `pbcm_cust_ext_fk2`(`custid`) USING BTREE,
  CONSTRAINT `pbcm_cust_ext_fk1` FOREIGN KEY (`propid`) REFERENCES `pbcm_cust_extprop_admin_item` (`propid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pbcm_cust_ext_fk2` FOREIGN KEY (`custid`) REFERENCES `pbcm_cust_baseinfo` (`custid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pbcm_cust_extprop_admin_value
-- ----------------------------
INSERT INTO `pbcm_cust_extprop_admin_value` VALUES (1, 2, 10000000, '测试管理员值1', 1, 1, NULL, NULL);
INSERT INTO `pbcm_cust_extprop_admin_value` VALUES (3, 2, NULL, '测试管理员值1', 1, 0, '2020-04-05 12:54:59', '2020-04-05 12:54:59');
INSERT INTO `pbcm_cust_extprop_admin_value` VALUES (5, 2, 10000000, NULL, 1, 1, '2020-04-05 13:04:51', '2020-04-05 13:04:51');
INSERT INTO `pbcm_cust_extprop_admin_value` VALUES (7, 2, 10000000, '123456', 1, 1, '2020-04-05 13:06:20', '2020-04-05 13:06:20');
INSERT INTO `pbcm_cust_extprop_admin_value` VALUES (9, 2, 10000000, '123456', 1, 1, '2020-04-05 13:06:40', '2020-04-05 13:06:40');
INSERT INTO `pbcm_cust_extprop_admin_value` VALUES (11, 2, 10000000, '123456', 1, 1, '2020-04-05 13:06:58', '2020-04-05 13:06:58');
INSERT INTO `pbcm_cust_extprop_admin_value` VALUES (13, 2, 10000001, NULL, 1, 0, '2020-04-05 13:15:53', '2020-04-05 13:15:53');
INSERT INTO `pbcm_cust_extprop_admin_value` VALUES (15, 2, 10000002, NULL, 1, 1, '2020-04-05 13:17:19', '2020-04-05 13:17:19');
INSERT INTO `pbcm_cust_extprop_admin_value` VALUES (17, 2, 10000003, NULL, 1, 1, '2020-04-05 13:17:34', '2020-04-05 13:17:34');
INSERT INTO `pbcm_cust_extprop_admin_value` VALUES (19, 2, 10000004, NULL, 1, 1, '2020-04-05 13:17:59', '2020-04-05 13:17:59');
INSERT INTO `pbcm_cust_extprop_admin_value` VALUES (21, 2, 10000005, NULL, 1, 0, '2020-04-05 13:29:06', '2020-04-05 13:29:06');
INSERT INTO `pbcm_cust_extprop_admin_value` VALUES (23, 2, 10000006, NULL, 1, 0, '2020-04-05 13:29:11', '2020-04-05 13:29:11');
INSERT INTO `pbcm_cust_extprop_admin_value` VALUES (25, 2, 10000000, '123456', 1, 1, '2020-04-07 22:32:14', '2020-04-07 22:32:14');
INSERT INTO `pbcm_cust_extprop_admin_value` VALUES (27, 2, 10000000, '123456', 1, 1, '2020-04-07 22:32:59', '2020-04-07 22:32:59');
INSERT INTO `pbcm_cust_extprop_admin_value` VALUES (29, 2, 10000000, '123456', 1, 1, '2020-04-07 22:33:50', '2020-04-07 22:33:50');
INSERT INTO `pbcm_cust_extprop_admin_value` VALUES (31, 2, 10000003, NULL, 1, 1, '2020-04-07 22:35:19', '2020-04-07 22:35:19');
INSERT INTO `pbcm_cust_extprop_admin_value` VALUES (33, 2, 10000003, NULL, 1, 0, '2020-04-08 00:24:02', '2020-04-08 00:24:02');
INSERT INTO `pbcm_cust_extprop_admin_value` VALUES (35, 2, 10000007, NULL, 1, 0, '2020-04-08 21:36:42', '2020-04-08 21:36:42');
INSERT INTO `pbcm_cust_extprop_admin_value` VALUES (36, 4, 10000008, NULL, 1, 0, '2020-04-10 13:21:05', '2020-04-10 13:21:05');
INSERT INTO `pbcm_cust_extprop_admin_value` VALUES (37, 6, 10000008, NULL, 1, 0, '2020-04-10 13:21:05', '2020-04-10 13:21:05');
INSERT INTO `pbcm_cust_extprop_admin_value` VALUES (38, 4, 10000009, NULL, 1, 0, '2020-04-10 13:26:30', '2020-04-10 13:26:30');
INSERT INTO `pbcm_cust_extprop_admin_value` VALUES (39, 6, 10000009, NULL, 1, 0, '2020-04-10 13:26:30', '2020-04-10 13:26:30');
INSERT INTO `pbcm_cust_extprop_admin_value` VALUES (40, 4, 10000010, NULL, 1, 0, '2020-04-10 13:26:46', '2020-04-10 13:26:46');
INSERT INTO `pbcm_cust_extprop_admin_value` VALUES (41, 6, 10000010, NULL, 1, 0, '2020-04-10 13:26:46', '2020-04-10 13:26:46');
INSERT INTO `pbcm_cust_extprop_admin_value` VALUES (42, 4, 10000011, NULL, 1, 0, '2020-04-10 13:26:54', '2020-04-10 13:26:54');
INSERT INTO `pbcm_cust_extprop_admin_value` VALUES (43, 6, 10000011, NULL, 1, 0, '2020-04-10 13:26:54', '2020-04-10 13:26:54');
INSERT INTO `pbcm_cust_extprop_admin_value` VALUES (44, 4, 10000012, NULL, 1, 0, '2020-04-10 13:29:13', '2020-04-10 13:29:13');
INSERT INTO `pbcm_cust_extprop_admin_value` VALUES (45, 6, 10000012, NULL, 1, 0, '2020-04-10 13:29:13', '2020-04-10 13:29:13');
INSERT INTO `pbcm_cust_extprop_admin_value` VALUES (46, 4, 10000013, NULL, 1, 0, '2020-04-10 13:37:01', '2020-04-10 13:37:01');
INSERT INTO `pbcm_cust_extprop_admin_value` VALUES (47, 6, 10000013, NULL, 1, 0, '2020-04-10 13:37:01', '2020-04-10 13:37:01');
INSERT INTO `pbcm_cust_extprop_admin_value` VALUES (48, 6, 10000000, NULL, 1, 0, '2020-04-10 22:45:04', '2020-04-10 22:45:04');
INSERT INTO `pbcm_cust_extprop_admin_value` VALUES (49, 6, 10000002, NULL, 1, 0, '2020-04-11 11:08:51', '2020-04-11 11:08:51');
INSERT INTO `pbcm_cust_extprop_admin_value` VALUES (50, 6, 10000004, NULL, 1, 0, '2020-04-11 11:10:25', '2020-04-11 11:10:25');

-- ----------------------------
-- Table structure for pbcm_cust_extprop_userdef
-- ----------------------------
DROP TABLE IF EXISTS `pbcm_cust_extprop_userdef`;
CREATE TABLE `pbcm_cust_extprop_userdef`  (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `custid` int(8) UNSIGNED NULL DEFAULT NULL COMMENT '客户id',
  `propname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '属性名',
  `propvalue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '属性值',
  `proptype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '属性类型',
  `reserve1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留1',
  `reserve2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留2',
  `reserve3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留3',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本',
  `deleted` int(11) NULL DEFAULT 0 COMMENT '删除 0-否 1-是',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新事件',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pbcm_cust_extprop_ud_fk`(`custid`) USING BTREE,
  CONSTRAINT `pbcm_cust_extprop_ud_fk` FOREIGN KEY (`custid`) REFERENCES `pbcm_cust_baseinfo` (`custid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pbcm_cust_extprop_userdef
-- ----------------------------
INSERT INTO `pbcm_cust_extprop_userdef` VALUES (1, 10000000, '用户自定义1', '用户自定义1值', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL);
INSERT INTO `pbcm_cust_extprop_userdef` VALUES (2, 10000000, '用户自定义2', '用户自定义2值', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL);
INSERT INTO `pbcm_cust_extprop_userdef` VALUES (3, 10000000, '用户自定义1', '用户自定义1值', NULL, NULL, NULL, NULL, 1, 1, '2020-04-05 12:54:59', '2020-04-05 12:54:59');
INSERT INTO `pbcm_cust_extprop_userdef` VALUES (4, 10000000, '用户自定义2', '用户自定义2值', NULL, NULL, NULL, NULL, 1, 1, '2020-04-05 12:54:59', '2020-04-05 12:54:59');
INSERT INTO `pbcm_cust_extprop_userdef` VALUES (5, 10000000, '用户自定义1', '用户自定义1值', NULL, NULL, NULL, NULL, 1, 1, '2020-04-05 13:04:51', '2020-04-05 13:04:51');
INSERT INTO `pbcm_cust_extprop_userdef` VALUES (6, 10000000, '用户自定义2', '用户自定义2值', NULL, NULL, NULL, NULL, 1, 1, '2020-04-05 13:04:51', '2020-04-05 13:04:51');
INSERT INTO `pbcm_cust_extprop_userdef` VALUES (7, 10000000, '用户自定义1', '用户自定义1值', NULL, NULL, NULL, NULL, 1, 1, '2020-04-05 13:06:20', '2020-04-05 13:06:20');
INSERT INTO `pbcm_cust_extprop_userdef` VALUES (8, 10000000, '用户自定义2', '用户自定义2值', NULL, NULL, NULL, NULL, 1, 1, '2020-04-05 13:06:20', '2020-04-05 13:06:20');
INSERT INTO `pbcm_cust_extprop_userdef` VALUES (9, 10000000, '33333', '444444', NULL, NULL, NULL, NULL, 1, 1, '2020-04-05 13:06:20', '2020-04-05 13:06:20');
INSERT INTO `pbcm_cust_extprop_userdef` VALUES (10, 10000000, '用户自定义1', '用户自定义1值', NULL, NULL, NULL, NULL, 1, 1, '2020-04-05 13:06:40', '2020-04-05 13:06:40');
INSERT INTO `pbcm_cust_extprop_userdef` VALUES (11, 10000000, '用户自定义2', '用户自定义2值', NULL, NULL, NULL, NULL, 1, 1, '2020-04-05 13:06:40', '2020-04-05 13:06:40');
INSERT INTO `pbcm_cust_extprop_userdef` VALUES (12, 10000000, '33333', '444444', NULL, NULL, NULL, NULL, 1, 1, '2020-04-05 13:06:40', '2020-04-05 13:06:40');
INSERT INTO `pbcm_cust_extprop_userdef` VALUES (13, 10000000, '用户自定义1', '用户自定义1值', NULL, NULL, NULL, NULL, 1, 1, '2020-04-05 13:06:58', '2020-04-05 13:06:58');
INSERT INTO `pbcm_cust_extprop_userdef` VALUES (14, 10000000, '用户自定义2', '用户自定义2值', NULL, NULL, NULL, NULL, 1, 1, '2020-04-05 13:06:58', '2020-04-05 13:06:58');
INSERT INTO `pbcm_cust_extprop_userdef` VALUES (15, 10000000, '33333', '444444', NULL, NULL, NULL, NULL, 1, 1, '2020-04-05 13:06:58', '2020-04-05 13:06:58');
INSERT INTO `pbcm_cust_extprop_userdef` VALUES (16, 10000000, '用户自定义1', '用户自定义1值', NULL, NULL, NULL, NULL, 1, 1, '2020-04-07 22:32:14', '2020-04-07 22:32:14');
INSERT INTO `pbcm_cust_extprop_userdef` VALUES (17, 10000000, '用户自定义2', '用户自定义2值', NULL, NULL, NULL, NULL, 1, 1, '2020-04-07 22:32:14', '2020-04-07 22:32:14');
INSERT INTO `pbcm_cust_extprop_userdef` VALUES (18, 10000000, '33333', '444444', NULL, NULL, NULL, NULL, 1, 1, '2020-04-07 22:32:14', '2020-04-07 22:32:14');
INSERT INTO `pbcm_cust_extprop_userdef` VALUES (19, 10000000, '用户自定义1', '用户自定义1值', NULL, NULL, NULL, NULL, 1, 1, '2020-04-07 22:32:59', '2020-04-07 22:32:59');
INSERT INTO `pbcm_cust_extprop_userdef` VALUES (20, 10000000, '用户自定义2', '用户自定义2值', NULL, NULL, NULL, NULL, 1, 1, '2020-04-07 22:32:59', '2020-04-07 22:32:59');
INSERT INTO `pbcm_cust_extprop_userdef` VALUES (21, 10000000, '33333', '444444', NULL, NULL, NULL, NULL, 1, 1, '2020-04-07 22:32:59', '2020-04-07 22:32:59');
INSERT INTO `pbcm_cust_extprop_userdef` VALUES (22, 10000000, '用户自定义1', '用户自定义1值', NULL, NULL, NULL, NULL, 1, 1, '2020-04-07 22:33:50', '2020-04-07 22:33:50');
INSERT INTO `pbcm_cust_extprop_userdef` VALUES (23, 10000000, '用户自定义2', '用户自定义2值', NULL, NULL, NULL, NULL, 1, 1, '2020-04-07 22:33:50', '2020-04-07 22:33:50');
INSERT INTO `pbcm_cust_extprop_userdef` VALUES (24, 10000000, '33333', '444444', NULL, NULL, NULL, NULL, 1, 1, '2020-04-07 22:33:50', '2020-04-07 22:33:50');
INSERT INTO `pbcm_cust_extprop_userdef` VALUES (25, 10000000, '用户自定义1', '用户自定义1值', NULL, NULL, NULL, NULL, 1, 0, '2020-04-10 22:45:04', '2020-04-10 22:45:04');
INSERT INTO `pbcm_cust_extprop_userdef` VALUES (26, 10000000, '用户自定义2', '用户自定义2值', NULL, NULL, NULL, NULL, 1, 0, '2020-04-10 22:45:04', '2020-04-10 22:45:04');
INSERT INTO `pbcm_cust_extprop_userdef` VALUES (27, 10000000, '33333', '444444', NULL, NULL, NULL, NULL, 1, 0, '2020-04-10 22:45:04', '2020-04-10 22:45:04');

-- ----------------------------
-- Table structure for pbcm_cust_product
-- ----------------------------
DROP TABLE IF EXISTS `pbcm_cust_product`;
CREATE TABLE `pbcm_cust_product`  (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `custid` int(8) UNSIGNED NULL DEFAULT NULL COMMENT '客户id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品名称',
  `pid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品编号',
  `amt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '金额',
  `quotient` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '份额',
  `startdate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '起息日',
  `enddate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '到息日',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品类型',
  `opermode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '运作模式',
  `reserve1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留1',
  `reserve2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留2',
  `reserve3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留3',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本',
  `deleted` int(11) NULL DEFAULT 0 COMMENT '删除 0-否 1-是',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新事件',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pbcm_cust_prod`(`custid`) USING BTREE,
  CONSTRAINT `pbcm_cust_prod` FOREIGN KEY (`custid`) REFERENCES `pbcm_cust_baseinfo` (`custid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pbcm_cust_product
-- ----------------------------
INSERT INTO `pbcm_cust_product` VALUES (1, 10000000, '1111', '2222', '3333', '4444', '2019-12-13', '2020-11-11', '类型', '操作模式', NULL, NULL, NULL, 1, 1, NULL, NULL);
INSERT INTO `pbcm_cust_product` VALUES (2, 10000000, '1111', '2222', '3333', '4444', '2019-12-13', '2020-11-11', '类型', '操作模式', NULL, NULL, NULL, 1, 1, '2020-04-05 12:54:59', '2020-04-05 12:54:59');
INSERT INTO `pbcm_cust_product` VALUES (3, 10000000, '1111', '2222', '3333', '4444', '2019-12-13', '2020-11-11', '类型', '操作模式', NULL, NULL, NULL, 1, 1, '2020-04-05 13:04:51', '2020-04-05 13:04:51');
INSERT INTO `pbcm_cust_product` VALUES (4, 10000000, '1111', '2222', '3333', '4444', '2019-12-13', '2020-11-11', '类型', '操作模式', NULL, NULL, NULL, 1, 1, '2020-04-05 13:06:20', '2020-04-05 13:06:20');
INSERT INTO `pbcm_cust_product` VALUES (5, 10000000, '2222', '4444', '3333', '55555', '2020-04-28', '2020-04-21', '66666', '7777', NULL, NULL, NULL, 1, 1, '2020-04-05 13:06:20', '2020-04-05 13:06:20');
INSERT INTO `pbcm_cust_product` VALUES (6, 10000000, '1111', '2222', '3333', '4444', '2019-12-13', '2020-11-11', '类型', '操作模式', NULL, NULL, NULL, 1, 1, '2020-04-05 13:06:40', '2020-04-05 13:06:40');
INSERT INTO `pbcm_cust_product` VALUES (7, 10000000, '2222', '4444', '3333', '55555', '2020-04-28', '2020-04-21', '66666', '7777', NULL, NULL, NULL, 1, 1, '2020-04-05 13:06:40', '2020-04-05 13:06:40');
INSERT INTO `pbcm_cust_product` VALUES (8, 10000000, '2222', '4444', '3333', '55555', '2020-04-28', '2020-04-21', '66666', '7777', NULL, NULL, NULL, 1, 1, '2020-04-05 13:06:58', '2020-04-05 13:06:58');
INSERT INTO `pbcm_cust_product` VALUES (9, 10000001, '', '', '', '', '', '', '', '', NULL, NULL, NULL, 1, 0, '2020-04-05 13:15:53', '2020-04-05 13:15:53');
INSERT INTO `pbcm_cust_product` VALUES (10, 10000002, '', '', '', '', '', '', '', '', NULL, NULL, NULL, 1, 1, '2020-04-05 13:17:19', '2020-04-05 13:17:19');
INSERT INTO `pbcm_cust_product` VALUES (11, 10000003, '', '', '', '', '', '', '', '', NULL, NULL, NULL, 1, 1, '2020-04-05 13:17:33', '2020-04-05 13:17:33');
INSERT INTO `pbcm_cust_product` VALUES (12, 10000004, '', '', '', '', '', '', '', '', NULL, NULL, NULL, 1, 1, '2020-04-05 13:17:59', '2020-04-05 13:17:59');
INSERT INTO `pbcm_cust_product` VALUES (13, 10000005, '', '', '', '', '', '', '', '', NULL, NULL, NULL, 1, 0, '2020-04-05 13:29:06', '2020-04-05 13:29:06');
INSERT INTO `pbcm_cust_product` VALUES (14, 10000006, '', '', '', '', '', '', '', '', NULL, NULL, NULL, 1, 0, '2020-04-05 13:29:11', '2020-04-05 13:29:11');
INSERT INTO `pbcm_cust_product` VALUES (15, 10000000, '2222', '4444', '3333', '55555', '2020-04-28', '2020-04-21', '66666', '7777', NULL, NULL, NULL, 1, 1, '2020-04-07 22:32:14', '2020-04-07 22:32:14');
INSERT INTO `pbcm_cust_product` VALUES (16, 10000000, '2222', '4444', '3333', '55555', '2020-04-28', '2020-04-21', '66666', '7777', NULL, NULL, NULL, 1, 1, '2020-04-07 22:32:59', '2020-04-07 22:32:59');
INSERT INTO `pbcm_cust_product` VALUES (17, 10000000, '3333', '3333', '4444', '444', '2020-04-28', '2020-04-28', '4444', '555', NULL, NULL, NULL, 1, 1, '2020-04-07 22:32:59', '2020-04-07 22:32:59');
INSERT INTO `pbcm_cust_product` VALUES (18, 10000000, '2222', '4444', '3333', '55555', '2020-04-28', '2020-04-21', '66666', '7777', '否', NULL, NULL, 1, 1, '2020-04-07 22:33:50', '2020-04-07 22:33:50');
INSERT INTO `pbcm_cust_product` VALUES (19, 10000000, '3333', '3333', '4444', '444', '2020-04-28', '2020-04-28', '4444', '555', '是', NULL, NULL, 1, 1, '2020-04-07 22:33:50', '2020-04-07 22:33:50');
INSERT INTO `pbcm_cust_product` VALUES (20, 10000003, '', '', '', '', '', '', '', '', '是', NULL, NULL, 1, 1, '2020-04-07 22:35:19', '2020-04-07 22:35:19');
INSERT INTO `pbcm_cust_product` VALUES (21, 10000003, '', '', '', '', '', '', '', '', '否', NULL, NULL, 1, 1, '2020-04-07 22:35:19', '2020-04-07 22:35:19');
INSERT INTO `pbcm_cust_product` VALUES (22, 10000003, '', '', '', '', '', '', '', '', '是', NULL, NULL, 1, 0, '2020-04-08 00:24:02', '2020-04-08 00:24:02');
INSERT INTO `pbcm_cust_product` VALUES (23, 10000003, '', '', '', '', '', '', '', '', '否', NULL, NULL, 1, 0, '2020-04-08 00:24:02', '2020-04-08 00:24:02');
INSERT INTO `pbcm_cust_product` VALUES (24, 10000007, '', '', '', '', '', '', '', '', '否', NULL, NULL, 1, 0, '2020-04-08 21:36:42', '2020-04-08 21:36:42');
INSERT INTO `pbcm_cust_product` VALUES (25, 10000008, '', '', '', '', '', '', '', '', '否', NULL, NULL, 1, 0, '2020-04-10 13:21:05', '2020-04-10 13:21:05');
INSERT INTO `pbcm_cust_product` VALUES (26, 10000009, '', '', '', '', '', '', '', '', '否', NULL, NULL, 1, 0, '2020-04-10 13:26:30', '2020-04-10 13:26:30');
INSERT INTO `pbcm_cust_product` VALUES (27, 10000010, '', '', '', '', '', '', '', '', '否', NULL, NULL, 1, 0, '2020-04-10 13:26:46', '2020-04-10 13:26:46');
INSERT INTO `pbcm_cust_product` VALUES (28, 10000011, '', '', '', '', '', '', '', '', '否', NULL, NULL, 1, 0, '2020-04-10 13:26:54', '2020-04-10 13:26:54');
INSERT INTO `pbcm_cust_product` VALUES (29, 10000012, '', '', '', '', '', '', '', '', '否', NULL, NULL, 1, 0, '2020-04-10 13:29:13', '2020-04-10 13:29:13');
INSERT INTO `pbcm_cust_product` VALUES (30, 10000013, '', '', '', '', '', '', '', '', '否', NULL, NULL, 1, 0, '2020-04-10 13:37:01', '2020-04-10 13:37:01');
INSERT INTO `pbcm_cust_product` VALUES (31, 10000000, '2222', '4444', '3333', '55555', '2020-04-28', '2020-04-21', '66666', '7777', '是', NULL, NULL, 1, 0, '2020-04-10 22:45:04', '2020-04-10 22:45:04');
INSERT INTO `pbcm_cust_product` VALUES (32, 10000000, '3333', '3333', '4444', '444', '2020-04-28', '2020-04-28', '4444', '555', '否', NULL, NULL, 1, 0, '2020-04-10 22:45:04', '2020-04-10 22:45:04');
INSERT INTO `pbcm_cust_product` VALUES (33, 10000002, '', '', '', '', '', '', '', '', NULL, NULL, NULL, 1, 0, '2020-04-11 11:08:51', '2020-04-11 11:08:51');
INSERT INTO `pbcm_cust_product` VALUES (34, 10000004, '', '', '', '', '', '', '', '', NULL, NULL, NULL, 1, 0, '2020-04-11 11:10:25', '2020-04-11 11:10:25');

-- ----------------------------
-- Table structure for pbcm_cust_relation
-- ----------------------------
DROP TABLE IF EXISTS `pbcm_cust_relation`;
CREATE TABLE `pbcm_cust_relation`  (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `custid` int(8) UNSIGNED NOT NULL COMMENT '客户id',
  `relation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关系',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `birth` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生日',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `reserve1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留1',
  `reserve2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留2',
  `reserve3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留3',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本',
  `deleted` int(11) NULL DEFAULT 0 COMMENT '删除 0-否 1-是',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新事件',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pbcm_cust_relation_fk`(`custid`) USING BTREE,
  CONSTRAINT `pbcm_cust_relation_fk` FOREIGN KEY (`custid`) REFERENCES `pbcm_cust_baseinfo` (`custid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pbcm_cust_relation
-- ----------------------------
INSERT INTO `pbcm_cust_relation` VALUES (1, 10000000, '父母', '父亲大人', '1967-12-02', '父亲大人备注', NULL, NULL, NULL, 1, 1, NULL, NULL);
INSERT INTO `pbcm_cust_relation` VALUES (2, 10000000, '父母', '父亲大人', '1967-12-02', '父亲大人备注', NULL, NULL, NULL, 1, 1, '2020-04-05 12:54:59', '2020-04-05 12:54:59');
INSERT INTO `pbcm_cust_relation` VALUES (3, 10000000, '父母', '父亲大人', '1967-12-02', '父亲大人备注', NULL, NULL, NULL, 1, 1, '2020-04-05 13:04:51', '2020-04-05 13:04:51');
INSERT INTO `pbcm_cust_relation` VALUES (4, 10000000, '父母', '父亲大人', '1967-12-02', '父亲大人备注', NULL, NULL, NULL, 1, 1, '2020-04-05 13:06:20', '2020-04-05 13:06:20');
INSERT INTO `pbcm_cust_relation` VALUES (5, 10000000, '子女', '测试子女', '2020-04-06', '测试备注', NULL, NULL, NULL, 1, 1, '2020-04-05 13:06:20', '2020-04-05 13:06:20');
INSERT INTO `pbcm_cust_relation` VALUES (6, 10000000, '父母', '父亲大人', '1967-12-02', '父亲大人备注', NULL, NULL, NULL, 1, 1, '2020-04-05 13:06:40', '2020-04-05 13:06:40');
INSERT INTO `pbcm_cust_relation` VALUES (7, 10000000, '子女', '测试子女', '2020-04-06', '测试备注', NULL, NULL, NULL, 1, 1, '2020-04-05 13:06:40', '2020-04-05 13:06:40');
INSERT INTO `pbcm_cust_relation` VALUES (8, 10000000, '父母', '父亲大人', '1967-12-02', '父亲大人备注', NULL, NULL, NULL, 1, 1, '2020-04-05 13:06:58', '2020-04-05 13:06:58');
INSERT INTO `pbcm_cust_relation` VALUES (9, 10000000, '子女', '测试子女', '2020-04-06', '测试备注', NULL, NULL, NULL, 1, 1, '2020-04-05 13:06:58', '2020-04-05 13:06:58');
INSERT INTO `pbcm_cust_relation` VALUES (10, 10000001, '', '44444', '', '', NULL, NULL, NULL, 1, 0, '2020-04-05 13:15:53', '2020-04-05 13:15:53');
INSERT INTO `pbcm_cust_relation` VALUES (11, 10000002, '', '', '', '', NULL, NULL, NULL, 1, 1, '2020-04-05 13:17:19', '2020-04-05 13:17:19');
INSERT INTO `pbcm_cust_relation` VALUES (12, 10000003, '', '', '', '', NULL, NULL, NULL, 1, 1, '2020-04-05 13:17:33', '2020-04-05 13:17:33');
INSERT INTO `pbcm_cust_relation` VALUES (13, 10000004, '', '', '', '', NULL, NULL, NULL, 1, 1, '2020-04-05 13:17:59', '2020-04-05 13:17:59');
INSERT INTO `pbcm_cust_relation` VALUES (14, 10000005, '', '', '', '', NULL, NULL, NULL, 1, 0, '2020-04-05 13:29:06', '2020-04-05 13:29:06');
INSERT INTO `pbcm_cust_relation` VALUES (15, 10000006, '', '', '', '', NULL, NULL, NULL, 1, 0, '2020-04-05 13:29:11', '2020-04-05 13:29:11');
INSERT INTO `pbcm_cust_relation` VALUES (16, 10000000, '父母', '父亲大人', '1967-12-02', '父亲大人备注', NULL, NULL, NULL, 1, 1, '2020-04-07 22:32:14', '2020-04-07 22:32:14');
INSERT INTO `pbcm_cust_relation` VALUES (17, 10000000, '子女', '测试子女', '2020-04-06', '测试备注', NULL, NULL, NULL, 1, 1, '2020-04-07 22:32:14', '2020-04-07 22:32:14');
INSERT INTO `pbcm_cust_relation` VALUES (18, 10000000, '父母', '父亲大人', '1967-12-02', '父亲大人备注', NULL, NULL, NULL, 1, 1, '2020-04-07 22:32:59', '2020-04-07 22:32:59');
INSERT INTO `pbcm_cust_relation` VALUES (19, 10000000, '子女', '测试子女', '2020-04-06', '测试备注', NULL, NULL, NULL, 1, 1, '2020-04-07 22:32:59', '2020-04-07 22:32:59');
INSERT INTO `pbcm_cust_relation` VALUES (20, 10000000, '父母', '父亲大人', '1967-12-02', '父亲大人备注', NULL, NULL, NULL, 1, 1, '2020-04-07 22:33:50', '2020-04-07 22:33:50');
INSERT INTO `pbcm_cust_relation` VALUES (21, 10000000, '子女', '测试子女', '2020-04-06', '测试备注', NULL, NULL, NULL, 1, 1, '2020-04-07 22:33:50', '2020-04-07 22:33:50');
INSERT INTO `pbcm_cust_relation` VALUES (22, 10000003, '', '', '', '', NULL, NULL, NULL, 1, 1, '2020-04-07 22:35:19', '2020-04-07 22:35:19');
INSERT INTO `pbcm_cust_relation` VALUES (23, 10000003, '', '', '', '', NULL, NULL, NULL, 1, 0, '2020-04-08 00:24:02', '2020-04-08 00:24:02');
INSERT INTO `pbcm_cust_relation` VALUES (24, 10000007, '', '', '', '', NULL, NULL, NULL, 1, 0, '2020-04-08 21:36:42', '2020-04-08 21:36:42');
INSERT INTO `pbcm_cust_relation` VALUES (25, 10000008, '', '', '', '', NULL, NULL, NULL, 1, 0, '2020-04-10 13:21:05', '2020-04-10 13:21:05');
INSERT INTO `pbcm_cust_relation` VALUES (26, 10000009, '', '', '', '', NULL, NULL, NULL, 1, 0, '2020-04-10 13:26:30', '2020-04-10 13:26:30');
INSERT INTO `pbcm_cust_relation` VALUES (27, 10000010, '', '', '', '', NULL, NULL, NULL, 1, 0, '2020-04-10 13:26:46', '2020-04-10 13:26:46');
INSERT INTO `pbcm_cust_relation` VALUES (28, 10000011, '', '', '', '', NULL, NULL, NULL, 1, 0, '2020-04-10 13:26:54', '2020-04-10 13:26:54');
INSERT INTO `pbcm_cust_relation` VALUES (29, 10000012, '', '', '', '', NULL, NULL, NULL, 1, 0, '2020-04-10 13:29:13', '2020-04-10 13:29:13');
INSERT INTO `pbcm_cust_relation` VALUES (30, 10000013, '', '', '', '', NULL, NULL, NULL, 1, 0, '2020-04-10 13:37:01', '2020-04-10 13:37:01');
INSERT INTO `pbcm_cust_relation` VALUES (31, 10000000, '父母', '父亲大人', '1967-12-02', '父亲大人备注', NULL, NULL, NULL, 1, 0, '2020-04-10 22:45:04', '2020-04-10 22:45:04');
INSERT INTO `pbcm_cust_relation` VALUES (32, 10000000, '子女', '测试子女', '2020-04-06', '测试备注', NULL, NULL, NULL, 1, 0, '2020-04-10 22:45:04', '2020-04-10 22:45:04');
INSERT INTO `pbcm_cust_relation` VALUES (33, 10000002, '', '', '', '', NULL, NULL, NULL, 1, 0, '2020-04-11 11:08:51', '2020-04-11 11:08:51');
INSERT INTO `pbcm_cust_relation` VALUES (34, 10000004, '', '', '', '', NULL, NULL, NULL, 1, 0, '2020-04-11 11:10:25', '2020-04-11 11:10:25');

-- ----------------------------
-- Table structure for pbcm_user_branch
-- ----------------------------
DROP TABLE IF EXISTS `pbcm_user_branch`;
CREATE TABLE `pbcm_user_branch`  (
  `userid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名字-登陆id',
  `branchid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户的所在机构id',
  `parentbarnchid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户的上级机构id'
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pbcm_user_branch
-- ----------------------------
INSERT INTO `pbcm_user_branch` VALUES ('', 'admin1', '34001', '34000');
INSERT INTO `pbcm_user_branch` VALUES ('', 'admin2', '34001', '34000');

-- ----------------------------
-- Table structure for pbcm_user_remind
-- ----------------------------
DROP TABLE IF EXISTS `pbcm_user_remind`;
CREATE TABLE `pbcm_user_remind`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户的id号码',
  `custid` int(8) UNSIGNED NULL DEFAULT NULL COMMENT '客户id',
  `custname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户的名字--方便处理',
  `eventname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '事件名称',
  `eventdate` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '提醒日期',
  `eventcontent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '提醒内容',
  `status` int(1) UNSIGNED ZEROFILL NULL DEFAULT NULL COMMENT '0-未读 1-已读 其他-无效',
  `type` int(11) NULL DEFAULT NULL COMMENT '类型 1-重要事项 2-理财到期',
  `reserve1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留1',
  `reserve2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留2',
  `reserve3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留3',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本',
  `deleted` int(11) NULL DEFAULT 0 COMMENT '删除 0-否 1-是',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新事件',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pbcm_user_remind`(`custid`) USING BTREE,
  CONSTRAINT `pbcm_user_remind` FOREIGN KEY (`custid`) REFERENCES `pbcm_cust_baseinfo` (`custid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pbcm_user_remind
-- ----------------------------
INSERT INTO `pbcm_user_remind` VALUES (1, 'admin', 10000000, '', '测试事件名称', NULL, '测试内容', 1, 1, NULL, NULL, NULL, 1, 0, NULL, '2020-04-06 12:45:55');
INSERT INTO `pbcm_user_remind` VALUES (2, 'admin', 10000000, '', '测试事件名称', NULL, '测试内容', 1, 1, NULL, NULL, NULL, 1, 0, NULL, '2020-04-06 12:45:54');
INSERT INTO `pbcm_user_remind` VALUES (11, 'admin', 10000000, '狂神啦', '444', '2020-04-08', '77788', 1, 1, NULL, NULL, NULL, 1, 0, '2020-04-07 21:34:38', '2020-04-07 21:41:36');
INSERT INTO `pbcm_user_remind` VALUES (12, 'admin', 10000003, '654321', 'erwewcwerxwerxwerwe', '2020-04-23', '55555', 1, 2, NULL, NULL, NULL, 1, 0, '2020-04-07 21:47:44', '2020-04-07 21:47:50');
INSERT INTO `pbcm_user_remind` VALUES (13, 'admin', 10000000, '狂神啦', '6666', '2020-04-22', '7777', 1, 1, NULL, NULL, NULL, 1, 0, '2020-04-07 21:48:22', '2020-04-07 21:48:27');
INSERT INTO `pbcm_user_remind` VALUES (14, 'admin', 10000000, '狂神啦', 'eee', '2020-04-14', '555', 1, 2, NULL, NULL, NULL, 1, 0, '2020-04-07 21:50:38', '2020-04-07 21:51:18');
INSERT INTO `pbcm_user_remind` VALUES (15, 'admin', 10000000, '狂神啦', 'erwewcwerxwerxwerwe', '2020-04-29', '4444', 1, 2, NULL, NULL, NULL, 1, 0, '2020-04-07 21:51:08', '2020-04-07 21:51:17');
INSERT INTO `pbcm_user_remind` VALUES (16, 'admin1', 10000000, '客户姓名', '给客户打电话送生日祝福', '2020-04-11', '客户生日是4月10日，客户喜欢惊喜。（点击本条信息可以查看客户详细信息）', 1, 1, NULL, NULL, NULL, 1, 0, '2020-04-08 12:13:41', '2020-04-11 11:43:46');
INSERT INTO `pbcm_user_remind` VALUES (17, 'admin1', 10000004, '654321', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, 0, '2020-04-08 14:55:22', '2020-04-08 19:34:25');
INSERT INTO `pbcm_user_remind` VALUES (18, 'admin1', 10000000, '狂神啦', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, 0, '2020-04-08 18:39:27', '2020-04-08 19:34:26');
INSERT INTO `pbcm_user_remind` VALUES (19, 'admin1', 10000000, '狂神啦', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, 0, '2020-04-08 18:41:19', '2020-04-08 21:37:39');
INSERT INTO `pbcm_user_remind` VALUES (20, 'admin1', 10000000, '狂神啦', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, 0, '2020-04-08 18:41:37', '2020-04-08 21:37:38');
INSERT INTO `pbcm_user_remind` VALUES (21, 'admin2', 10000000, '狂神啦', '测试提醒主题', '2020-04-08', '测试提醒内容', 1, 1, NULL, NULL, NULL, 1, 0, '2020-04-08 21:32:24', '2020-04-08 21:32:33');
INSERT INTO `pbcm_user_remind` VALUES (22, 'admin1', 10000000, '狂神啦', '主题', '2020-04-30', '内容', 1, 1, NULL, NULL, NULL, 1, 0, '2020-04-08 21:37:18', '2020-04-08 21:37:34');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `ip_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'IP地址',
  `ip_source` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'IP来源',
  `message` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `browser_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '浏览器名称',
  `system_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '系统名称',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('00c8be325d7c45e088d0083fd1c58a7d', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-05 10:49:18');
INSERT INTO `sys_log` VALUES ('04453d3cff7a4b8d960f4303d0b13228', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-31 21:16:17');
INSERT INTO `sys_log` VALUES ('044887754f2d4793ba3d6f8cbcccf895', 'admin1', '192.168.1.112', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-08 11:32:34');
INSERT INTO `sys_log` VALUES ('04634cf871b4471685672c981d533db5', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-04 22:48:41');
INSERT INTO `sys_log` VALUES ('0526d7931dea4084aa3504e1e9ddee8b', 'admin1', '192.168.6.158', '内网IP', '登录成功', 'Mozilla', 'Windows', '2020-04-08 21:36:28');
INSERT INTO `sys_log` VALUES ('05b697bb08b04e2baa0477ebb6b6d9f7', 'admin1', '223.100.212.41', '中国|辽宁省|大连市|移动', '登录成功', 'Chrome 8', 'Windows', '2020-04-10 15:12:52');
INSERT INTO `sys_log` VALUES ('05cafa5b61e84d839afa489b92b17737', 'admin', '192.168.6.158', '内网IP', '密码不正确', 'Chrome 8', 'Windows', '2020-04-04 09:51:35');
INSERT INTO `sys_log` VALUES ('069fb11f70fb4ef39e3cad9f52e67bab', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-05 21:35:16');
INSERT INTO `sys_log` VALUES ('06d8b851a3994b529c3f41c47b758231', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-04 12:28:04');
INSERT INTO `sys_log` VALUES ('0792250315aa4219a186d6c6bb3be071', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-30 22:31:26');
INSERT INTO `sys_log` VALUES ('09c02d4f873d4d509b248030b924066b', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-06 09:43:53');
INSERT INTO `sys_log` VALUES ('0d8c301e56934e6997d31d418e0e2a41', 'admin1', '192.168.6.158', '内网IP', '密码不正确', 'Chrome 8', 'Windows', '2020-04-08 19:47:19');
INSERT INTO `sys_log` VALUES ('0dad7ba369724e9696aee0abe42b2f41', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-29 08:45:29');
INSERT INTO `sys_log` VALUES ('0dd7c05bd49142f69686883290563952', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Mozilla', 'Windows', '2020-03-29 17:32:35');
INSERT INTO `sys_log` VALUES ('0edd17c782154902baa243a5033289d8', 'admin2', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-08 21:14:09');
INSERT INTO `sys_log` VALUES ('0f7b01b4b455434182fa9b5979eef7b4', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-04 20:23:38');
INSERT INTO `sys_log` VALUES ('10b636ad6ac84e79b621c70014d8df9b', 'admin1', '42.248.36.236', '中国|辽宁省|大连市|电信', '登录成功', 'Mozilla', 'Windows', '2020-04-10 15:48:53');
INSERT INTO `sys_log` VALUES ('10df4e50d8af4674b54a560296d087ee', 'admin', '192.168.6.158', '内网IP', '验证码的值不能为空', 'Chrome 8', 'Windows', '2020-03-28 23:12:38');
INSERT INTO `sys_log` VALUES ('137cfded9c55448c8e2ad857194000d6', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-05 12:54:30');
INSERT INTO `sys_log` VALUES ('13cc878521e74209921920016d911ec8', 'admin1', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-07 22:41:37');
INSERT INTO `sys_log` VALUES ('14541a13c812401a834707cb3814ff6d', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-04 23:50:49');
INSERT INTO `sys_log` VALUES ('1546e9a944b4434b9758cdf51a0f32d8', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-07 22:11:57');
INSERT INTO `sys_log` VALUES ('1579d3220eff4c858597cf8837be9a7b', 'admin1', '192.168.6.202', '内网IP', '登录成功', 'Chrome', 'Windows', '2020-04-10 22:22:48');
INSERT INTO `sys_log` VALUES ('17ff24634a0b4f9b9b8be8c83f5a92f3', 'admin1', '192.168.1.112', '内网IP', '登录成功', 'Mozilla', 'Windows', '2020-04-08 14:54:54');
INSERT INTO `sys_log` VALUES ('182f2aa297a641f99f15ce22f271c45e', 'admin1', '172.20.10.7', '内网IP', '登录成功', 'Mozilla', 'Windows', '2020-04-10 13:40:36');
INSERT INTO `sys_log` VALUES ('19c4c2149ccf4ac59f123e6df17be20c', 'admin1', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-08 00:23:37');
INSERT INTO `sys_log` VALUES ('19d4b79d1fe244bcb950f119558c77a4', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-05 00:10:43');
INSERT INTO `sys_log` VALUES ('1adb5e3549954798b13de51bb2a71ba2', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-04 19:01:48');
INSERT INTO `sys_log` VALUES ('1c362582d2934e94ac681fc4a7d55afd', 'admin1', '192.168.6.158', '内网IP', '登录成功', 'Mozilla', 'Windows', '2020-04-08 22:04:31');
INSERT INTO `sys_log` VALUES ('1d415419558242a3b5e2385eb1b2261b', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Mozilla', 'Windows', '2020-03-29 17:38:08');
INSERT INTO `sys_log` VALUES ('1f00592bb6e642dfb374f628b6c7d192', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-05 12:19:40');
INSERT INTO `sys_log` VALUES ('20429ce8cd8b4220b10d66161bdd03f3', 'cxd', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-28 22:36:31');
INSERT INTO `sys_log` VALUES ('2092813fb61149d996549a179425e255', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-07 22:13:36');
INSERT INTO `sys_log` VALUES ('21784eef29f643cdb43693ead63ebf1d', 'admin2', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-08 21:10:36');
INSERT INTO `sys_log` VALUES ('21c888fed16d4456b645da15222238a6', 'admin2', '192.168.1.112', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-09 17:03:20');
INSERT INTO `sys_log` VALUES ('220331b57b84402a9832377ba637bbfe', 'admin1', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-07 22:51:12');
INSERT INTO `sys_log` VALUES ('2223a7be78df47788b9c86357517a1fc', 'admin2', '192.168.1.112', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-10 12:03:50');
INSERT INTO `sys_log` VALUES ('22a5480735584456bdfd89f93c4b65f1', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-06 00:38:39');
INSERT INTO `sys_log` VALUES ('23b18b0b82a44ae69bf8ea55e5faa379', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-31 22:03:13');
INSERT INTO `sys_log` VALUES ('23b9f16a8b4643fca67cd31d64a086b8', 'admin', '192.168.6.158', '内网IP', '验证码的值不能为空', 'Chrome 8', 'Windows', '2020-03-28 23:16:11');
INSERT INTO `sys_log` VALUES ('24262dce885c4d4f8040e35cdc089e29', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-07 21:59:45');
INSERT INTO `sys_log` VALUES ('248d945f316a40f88875743d6f387704', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-31 21:10:45');
INSERT INTO `sys_log` VALUES ('25d1d8a618e7422f9330d060818f45ee', '', '192.168.6.158', '内网IP', '退出成功', 'Chrome 8', 'Windows', '2020-03-28 23:06:52');
INSERT INTO `sys_log` VALUES ('260b19f710524718969adf826c08b622', 'admin1', '192.168.6.158', '内网IP', '验证码不匹配', 'Chrome 8', 'Windows', '2020-04-08 00:15:33');
INSERT INTO `sys_log` VALUES ('268b182be8bc43ecbb7c5bc359c01eaf', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-05 23:37:18');
INSERT INTO `sys_log` VALUES ('27e1b5b397df4848814c2ebb0b54f80b', 'cxd', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-28 22:25:48');
INSERT INTO `sys_log` VALUES ('287cc6e5bc424bdc9985fe90bce5d8ae', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-04 22:32:16');
INSERT INTO `sys_log` VALUES ('289863b45dbd4676b647ae413a6c9da7', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-31 22:36:59');
INSERT INTO `sys_log` VALUES ('28edc6a2a7c045909ee1c3bce92aabb3', 'admin2', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-08 21:16:31');
INSERT INTO `sys_log` VALUES ('28f0c1a6fc3942f9a642b392d0de10c0', 'admin', '192.168.6.158', '内网IP', '验证码的值不能为空', 'Chrome 8', 'Windows', '2020-03-28 10:11:02');
INSERT INTO `sys_log` VALUES ('2982b7690443425683a5605ce882a89d', 'admin1', '192.168.1.112', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-08 13:33:25');
INSERT INTO `sys_log` VALUES ('2993951f23954631b960914f3f0fe3a0', 'admin1', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-08 18:56:33');
INSERT INTO `sys_log` VALUES ('2a9b8eb7cc1c4378b936bb939f6250e9', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-28 23:06:48');
INSERT INTO `sys_log` VALUES ('2ae022b1b2a743059a3ce18e1c33dc47', 'admin', '192.168.6.158', '内网IP', '验证码的值不能为空', 'Chrome 8', 'Windows', '2020-03-28 23:38:07');
INSERT INTO `sys_log` VALUES ('2aeb941fdaca4cb9b4f9f54cf3fdd39b', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-28 23:12:45');
INSERT INTO `sys_log` VALUES ('2c3f43ffd04a4d69856b151b82a01009', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-05 12:07:12');
INSERT INTO `sys_log` VALUES ('2c902585323649c1bef72080c77d806b', 'cxd', '192.168.6.158', '内网IP', '退出成功', 'Chrome 8', 'Windows', '2020-03-28 22:56:26');
INSERT INTO `sys_log` VALUES ('2c92c9fca1704c1b86785529a89c8056', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-29 21:48:03');
INSERT INTO `sys_log` VALUES ('2d8d9708bd3c4ec0b9b4c9405a45d1ca', 'admin', '192.168.6.158', '内网IP', '用户不存在', 'Chrome 8', 'Windows', '2020-04-08 00:15:29');
INSERT INTO `sys_log` VALUES ('2db8dd6b8a254982be758fd0d3f93b7f', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-05 00:05:49');
INSERT INTO `sys_log` VALUES ('30bbee1b4eba4b74a03802315c449a52', 'cxd', '192.168.6.158', '内网IP', '验证码的值不能为空', 'Chrome 8', 'Windows', '2020-03-28 22:36:07');
INSERT INTO `sys_log` VALUES ('329976eb74774aceb033ac074849aba6', 'admin', '192.168.6.158', '内网IP', '用户不存在', 'Chrome 8', 'Windows', '2020-04-07 22:48:19');
INSERT INTO `sys_log` VALUES ('346f0472a8804275b820503ef4b47f5e', 'admin1', '192.168.6.158', '内网IP', '登录成功', 'Mozilla', 'Windows', '2020-04-08 22:51:44');
INSERT INTO `sys_log` VALUES ('35394aff485840ceb1c51e4c9c2a9600', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-04 11:18:35');
INSERT INTO `sys_log` VALUES ('36136159a4ed4b3babbbac0909fea3f5', 'admin2', '192.168.1.112', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-10 13:09:59');
INSERT INTO `sys_log` VALUES ('361aa68514124788a0905470fa6dd594', 'zhangs', '192.168.6.158', '内网IP', '用户不存在', 'Mozilla', 'Windows', '2020-03-29 17:39:48');
INSERT INTO `sys_log` VALUES ('36b2754ffff24cde8446f077d23f9bbd', 'admin2', '192.168.1.112', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-10 12:46:38');
INSERT INTO `sys_log` VALUES ('3739c248006e43d7a24e06fbdf4a5af9', 'cxd', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-28 22:46:25');
INSERT INTO `sys_log` VALUES ('3873e7b19483452fb2b0d0dc741cbfb4', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-06 00:40:14');
INSERT INTO `sys_log` VALUES ('389c28f823ea4c41bf2bbe0b731381da', 'admin2', '192.168.1.112', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-10 10:29:18');
INSERT INTO `sys_log` VALUES ('38c07122c6384d39a0b40c5714c64712', 'admin', '192.168.6.158', '内网IP', '验证码不匹配', 'Chrome 8', 'Windows', '2020-03-28 23:12:41');
INSERT INTO `sys_log` VALUES ('38eaa0fd17c54eaeaeed1c068923c305', 'admin', '192.168.1.111', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-30 10:07:42');
INSERT INTO `sys_log` VALUES ('38f35c30e34f44a186fdc706bf656ae1', 'admin', '192.168.6.158', '内网IP', '验证码已过期', 'Mozilla', 'Windows', '2020-03-28 11:15:36');
INSERT INTO `sys_log` VALUES ('39bad90970f34d4bb4f58765ff842e62', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Mozilla', 'Windows', '2020-03-29 22:45:06');
INSERT INTO `sys_log` VALUES ('3a0ba4f4a20e4fb28265368a35788d0e', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-05 12:59:11');
INSERT INTO `sys_log` VALUES ('3af9a35ab10a45cab916bdf9f89dcb0a', 'admin1', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-07 22:48:24');
INSERT INTO `sys_log` VALUES ('3c15952c445f470b8fc4dcd747153924', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Mozilla', 'Windows', '2020-03-29 10:26:10');
INSERT INTO `sys_log` VALUES ('3cf907f3233a42c5aeec6a19ed9016d1', 'admin1', '192.168.6.158', '内网IP', '登录成功', 'Chrome', 'Windows', '2020-04-08 21:56:36');
INSERT INTO `sys_log` VALUES ('3d01f124776e4b35b3175ad289110535', 'admin1', '192.168.6.202', '内网IP', '登录成功', 'Chrome', 'Windows', '2020-04-11 10:31:02');
INSERT INTO `sys_log` VALUES ('3d3a6a7b7356441c863b813ffe6bc5bd', 'admin2', '192.168.1.112', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-10 11:31:20');
INSERT INTO `sys_log` VALUES ('3d50fdfef9ad4749b45b7f8a874948bf', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Mozilla', 'Windows', '2020-03-29 19:18:36');
INSERT INTO `sys_log` VALUES ('3e7db16566514f608b8ae76e2f1adf83', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-30 22:02:18');
INSERT INTO `sys_log` VALUES ('3f5176c9861248a5a3e575f1c0329c3b', 'admin', '192.168.1.111', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-30 14:11:41');
INSERT INTO `sys_log` VALUES ('416c1630e3674fc7a23daec644fe9650', 'admin1', '42.248.53.98', '中国|辽宁省|大连市|电信', '登录成功', 'Mozilla', 'Windows', '2020-04-10 14:54:11');
INSERT INTO `sys_log` VALUES ('417320f1ea864d5b936127127c542ae8', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-04 23:13:57');
INSERT INTO `sys_log` VALUES ('425244e46d02431781080de706d1b914', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-05 11:32:58');
INSERT INTO `sys_log` VALUES ('42a08c1a0da94a5f8b91ff9de69d15ed', 'admin', '192.168.6.158', '内网IP', '验证码不匹配', 'Chrome 8', 'Windows', '2020-04-07 22:03:00');
INSERT INTO `sys_log` VALUES ('43075ed452d8422c8d982b0a0a87a650', 'admin', '192.168.1.111', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-30 16:12:59');
INSERT INTO `sys_log` VALUES ('4469e33969c243508c57b1947da8b7b4', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-04 19:56:12');
INSERT INTO `sys_log` VALUES ('44c5fc59ea2844f69de1077a948e280e', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-31 22:38:39');
INSERT INTO `sys_log` VALUES ('4551226faaf047ba9560e1a86b7b867f', 'admin1', '192.168.6.202', '内网IP', '登录成功', 'Chrome', 'Windows', '2020-04-10 21:57:39');
INSERT INTO `sys_log` VALUES ('4589fb1bf9e04795b203ed3fec86e6ea', 'cxd', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-28 22:22:11');
INSERT INTO `sys_log` VALUES ('47b4bc9508844b82b3d70c56738dfb02', 'admin', '192.168.1.111', '内网IP', '登录成功', 'Mozilla', 'Windows', '2020-03-30 12:49:39');
INSERT INTO `sys_log` VALUES ('49dda0586f0e4947aab8a3013f794d42', 'admin1', '192.168.6.158', '内网IP', '密码不正确', 'Chrome 8', 'Windows', '2020-04-08 19:47:23');
INSERT INTO `sys_log` VALUES ('4a30cbf863644ddfa20c0ef3336d51bc', 'admin1', '192.168.6.158', '内网IP', '登录成功', 'Mozilla', 'Windows', '2020-04-09 21:14:09');
INSERT INTO `sys_log` VALUES ('4b846ac2549a49eb900386a8ef20f4d8', 'admin1', '192.168.6.202', '内网IP', '密码不正确', 'Chrome', 'Windows', '2020-04-10 21:57:30');
INSERT INTO `sys_log` VALUES ('4bea862347f446ff818ffbcb6e8e3b31', 'admin', '192.168.6.158', '内网IP', '退出成功', 'Chrome 8', 'Windows', '2020-03-28 15:24:43');
INSERT INTO `sys_log` VALUES ('4c04dc4b5d724cd9880735bbdc8b77d6', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-05 12:22:09');
INSERT INTO `sys_log` VALUES ('53172f05775246dda62004948fbdbd02', 'admin2', '172.20.10.7', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-10 14:28:04');
INSERT INTO `sys_log` VALUES ('532a24f4079a4fb19ea6cb2a670ced54', 'admin2', '192.168.1.112', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-10 12:07:55');
INSERT INTO `sys_log` VALUES ('54b6284509c84c939aef3e309da0c90a', 'admin1', '192.168.6.158', '内网IP', '登录成功', 'Mozilla', 'Windows', '2020-04-09 22:23:20');
INSERT INTO `sys_log` VALUES ('54cbe452409b4ea18eb5073a70f23a36', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-29 15:01:50');
INSERT INTO `sys_log` VALUES ('5556fafcf10f4367b34c437ee50f73b5', 'admin1', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-07 23:43:36');
INSERT INTO `sys_log` VALUES ('574647f1dde048fc9356e296db4ba42e', 'admin1', '123.185.143.185', '中国|辽宁省|大连市|电信', '登录成功', 'Chrome 8', 'Windows', '2020-04-11 10:54:02');
INSERT INTO `sys_log` VALUES ('574b2f3bc4d04baaa1067e2c29910f89', 'admin1', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-08 18:57:27');
INSERT INTO `sys_log` VALUES ('574d3be83d964c468773837f5ae478e3', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Mozilla', 'Windows', '2020-03-29 17:31:05');
INSERT INTO `sys_log` VALUES ('575e95890bc24194b39b33bb83e0daf0', 'admin', '192.168.6.158', '内网IP', '密码不正确', 'Mozilla', 'Windows', '2020-03-29 17:30:58');
INSERT INTO `sys_log` VALUES ('57d732ae8c7d4be493d278eb109c84e6', 'admin', '192.168.6.158', '内网IP', '验证码的值不能为空', 'Chrome 8', 'Windows', '2020-03-28 10:11:05');
INSERT INTO `sys_log` VALUES ('598e2b00fba342df98ecd083bc91b509', 'admin1', '123.185.143.185', '中国|辽宁省|大连市|电信', '登录成功', 'Chrome', 'Windows', '2020-04-11 10:22:11');
INSERT INTO `sys_log` VALUES ('5ae602a81bea4f75b2f6845c49eb0ab2', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-28 23:08:47');
INSERT INTO `sys_log` VALUES ('5c5043d66ee845c7b017832dcf465dc4', 'admin2', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-08 22:53:34');
INSERT INTO `sys_log` VALUES ('5d13cbc30c2c4f3ea3209f1acf8604f9', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-05 12:02:34');
INSERT INTO `sys_log` VALUES ('5d657d30456e45f78f0d6862ca0f665f', 'admin2', '192.168.1.112', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-10 12:16:55');
INSERT INTO `sys_log` VALUES ('5e760eafb64c4d328169733564dab497', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-04 23:15:53');
INSERT INTO `sys_log` VALUES ('6129761fbcfd4d5b9ce4c50ae69636f1', 'admin2', '192.168.1.112', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-10 10:08:50');
INSERT INTO `sys_log` VALUES ('62b583693c974c0f80e9aa69b502f8cd', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-04 22:26:16');
INSERT INTO `sys_log` VALUES ('6308eea465534d15995c4c1820de04aa', 'admin1', '123.185.143.185', '中国|辽宁省|大连市|电信', '登录成功', 'Chrome', 'Windows', '2020-04-11 16:43:24');
INSERT INTO `sys_log` VALUES ('63a679d00bde42c9b03cecdcc7005cff', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-30 20:49:53');
INSERT INTO `sys_log` VALUES ('63dd4cb1abf748328245ddd9f73317cb', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-04 22:55:58');
INSERT INTO `sys_log` VALUES ('64f507736e5946dfbb216804fd621a94', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Mozilla', 'Windows', '2020-04-06 13:37:16');
INSERT INTO `sys_log` VALUES ('65b5b0e8fa23403d88d771d3b0994794', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-04 22:59:33');
INSERT INTO `sys_log` VALUES ('663dd89e493e4b40bd9a613fdf56ebd5', 'admin2', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-08 22:44:15');
INSERT INTO `sys_log` VALUES ('679d8291568e4948b1149864b5880475', 'admin', '192.168.6.158', '内网IP', '退出成功', 'Chrome 8', 'Windows', '2020-03-29 08:59:56');
INSERT INTO `sys_log` VALUES ('6816c94f192b4123a28765593dfd1883', 'admin2', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-09 23:34:12');
INSERT INTO `sys_log` VALUES ('687ea98ca244461e956341dd672db2e4', 'cxd', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-28 15:24:53');
INSERT INTO `sys_log` VALUES ('68acedd7e74649dfacf4b3c4b59d5ff9', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-04 19:58:45');
INSERT INTO `sys_log` VALUES ('68e8b1fbc60144fca9008b0a4d9516aa', 'admin1', '192.168.1.112', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-08 14:32:14');
INSERT INTO `sys_log` VALUES ('68f7a85e8da14314ae0c0f015add904a', 'admin2', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-08 21:05:40');
INSERT INTO `sys_log` VALUES ('6915e8a16ddc442ab7e0467b76e48436', 'admin2', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-08 20:30:10');
INSERT INTO `sys_log` VALUES ('6940f0eccafb4fa590025c145c19b11c', 'cxd', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-28 22:55:06');
INSERT INTO `sys_log` VALUES ('69799d274eff4dffa6026761202316c8', 'admin1', '192.168.6.202', '内网IP', '登录成功', 'Chrome', 'Windows', '2020-04-11 16:24:15');
INSERT INTO `sys_log` VALUES ('6a3cdc304dec4376af55b9f304c0a8b1', 'cxd', '192.168.6.158', '内网IP', '验证码不匹配', 'Chrome 8', 'Windows', '2020-03-28 22:22:04');
INSERT INTO `sys_log` VALUES ('6a4676f38c75462599c0036dee3fc013', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Mozilla', 'Windows', '2020-03-29 20:02:33');
INSERT INTO `sys_log` VALUES ('6a746b8544fc483fad8683c53b5cbb38', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Mozilla', 'Windows', '2020-03-29 10:29:57');
INSERT INTO `sys_log` VALUES ('6d078416726642bb9a708e081dabc4fc', 'admin', '192.168.1.111', '内网IP', '登录成功', 'Mozilla', 'Windows', '2020-03-30 12:19:15');
INSERT INTO `sys_log` VALUES ('6d3109a1bdac4d068bb9e542511dfdbb', 'admin2', '192.168.1.112', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-10 12:37:28');
INSERT INTO `sys_log` VALUES ('6e182d663d1c4e98ad8db68dcb197d95', 'admin1', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-07 23:45:20');
INSERT INTO `sys_log` VALUES ('6e5683f90a6d4db08964cff29e2f84e2', 'admin', '192.168.6.201', '内网IP', '登录成功', 'Mozilla', 'Windows 7', '2020-03-29 19:06:49');
INSERT INTO `sys_log` VALUES ('6e5ec92d2f4340849d6fee234ac182e2', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-28 10:11:09');
INSERT INTO `sys_log` VALUES ('6ff0d0f6a3d6438fab12a6738f507816', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-05 11:17:27');
INSERT INTO `sys_log` VALUES ('70437c4f81224eebb91488ac21bb9908', 'admin', '192.168.6.158', '内网IP', '验证码已过期', 'Mozilla', 'Windows', '2020-03-28 11:13:28');
INSERT INTO `sys_log` VALUES ('7061b9c6b1964256b2c8d3c52d8ab2f2', 'admin1', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-10 22:26:49');
INSERT INTO `sys_log` VALUES ('70ff223d8bfb4abdb3d529a7c77babd8', 'admin1', '192.168.6.202', '内网IP', '登录成功', 'Chrome', 'Windows', '2020-04-10 23:03:42');
INSERT INTO `sys_log` VALUES ('71c8a745afc34eedac5d337abc2338b3', 'admin2', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-09 21:57:36');
INSERT INTO `sys_log` VALUES ('72b227521d384989b8e26fe519a134d5', 'admin2', '192.168.1.112', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-10 11:07:34');
INSERT INTO `sys_log` VALUES ('7327014edf944d639769ad2452a29863', 'admin', '192.168.6.158', '内网IP', '验证码不匹配', 'Chrome 8', 'Windows', '2020-04-04 22:48:38');
INSERT INTO `sys_log` VALUES ('784808fac73c4069b42a5766e4d21376', 'admin2', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-11 10:56:29');
INSERT INTO `sys_log` VALUES ('7d54bc70d2464f48be7f53c09d52316c', 'admin2', '192.168.1.112', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-10 12:20:36');
INSERT INTO `sys_log` VALUES ('7d6d783cdd0640a49b8d25769651e724', 'admin2', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-08 21:31:52');
INSERT INTO `sys_log` VALUES ('7dcb586d74844cb4a4a445763893fc85', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-04 23:01:05');
INSERT INTO `sys_log` VALUES ('7dec639442ed440a8adee6233bcde462', 'admin1', '59.46.209.130', '中国|辽宁省|大连市|电信', '登录成功', 'Chrome 8', 'Windows 7', '2020-04-10 16:16:06');
INSERT INTO `sys_log` VALUES ('7e26a1b04d8c4f12b6db7afadc9d693c', 'admin', '192.168.6.158', '内网IP', '验证码不匹配', 'Chrome 8', 'Windows', '2020-03-31 21:10:42');
INSERT INTO `sys_log` VALUES ('7e7f71aefc584bc09a4bff843b31d0f3', 'admin', '192.168.6.201', '内网IP', '登录成功', 'Mozilla', 'Windows 7', '2020-03-29 20:17:36');
INSERT INTO `sys_log` VALUES ('7f8d460f971f4d38845f16309c992119', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-05 22:06:23');
INSERT INTO `sys_log` VALUES ('81eca50340e849968be213b07ac582e0', 'admin', '192.168.1.111', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-30 14:14:10');
INSERT INTO `sys_log` VALUES ('821be49f89e8422580d4a12db29ea2d6', 'admin1', '192.168.6.158', '内网IP', '登录成功', 'Mozilla', 'Windows', '2020-04-11 10:57:24');
INSERT INTO `sys_log` VALUES ('82640b7c7d31400792f0bbc04c3e14f5', 'admin', '192.168.6.158', '内网IP', '验证码的值不能为空', 'Chrome 8', 'Windows', '2020-04-04 23:50:46');
INSERT INTO `sys_log` VALUES ('8371896ab7db4d55a0217bcac1ab3c99', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-29 08:59:43');
INSERT INTO `sys_log` VALUES ('86bd885432454a0e983e6fc213f2fb14', 'admin', '192.168.6.158', '内网IP', '验证码不匹配', 'Chrome 8', 'Windows', '2020-04-05 12:07:09');
INSERT INTO `sys_log` VALUES ('86ecab5df50e4f01a606ccf4139bd899', 'admin1', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-07 23:53:27');
INSERT INTO `sys_log` VALUES ('8767d8ea041249a9a13af4840209c501', 'admin', '192.168.1.111', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-30 10:39:37');
INSERT INTO `sys_log` VALUES ('8799c67cf39e4ec3993adae474bc8c7d', 'admin2', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-08 22:54:22');
INSERT INTO `sys_log` VALUES ('88a24ca2116448d4945c4bf2e1716f98', 'admin', '192.168.1.111', '内网IP', '登录成功', 'Mozilla', 'Windows', '2020-03-30 13:56:31');
INSERT INTO `sys_log` VALUES ('89837534aecc4e31aabbb4ef807ebf64', 'admin1', '192.168.6.202', '内网IP', '验证码不匹配', 'Chrome', 'Windows', '2020-04-10 21:57:26');
INSERT INTO `sys_log` VALUES ('8adb547f091e415bbabfd70a5be1e13d', 'admin', '192.168.6.158', '内网IP', '验证码已过期', 'Mozilla', 'Windows', '2020-03-28 11:13:41');
INSERT INTO `sys_log` VALUES ('8b7be983e7a641bead83bc5257025658', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-06 09:47:14');
INSERT INTO `sys_log` VALUES ('8b93a9d53a9b4c83a19d533cdf19111d', 'admin2', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-08 20:25:49');
INSERT INTO `sys_log` VALUES ('8c572f902e8846c8befa0102eb4a1aa1', 'admin1', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-08 18:39:12');
INSERT INTO `sys_log` VALUES ('8c6dc7ac0cd84e1099a308c0b8cb30e7', 'admin2', '172.20.10.7', '内网IP', '登录成功', 'Mozilla', 'Windows', '2020-04-10 14:10:21');
INSERT INTO `sys_log` VALUES ('8d82dfc4a28b416eb760c39b77f42e85', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-05 13:28:58');
INSERT INTO `sys_log` VALUES ('8de4630c7c1a436c8e87161d6de6c2d4', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-05 12:24:19');
INSERT INTO `sys_log` VALUES ('8e22b41ebdea45fca707073681e30f31', 'admin', '192.168.6.158', '内网IP', '密码不正确', 'Mozilla', 'Windows', '2020-03-29 10:29:49');
INSERT INTO `sys_log` VALUES ('8ef3c9ad85ad4dc6998904bb786c4489', 'admin2', '172.20.10.7', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-10 13:18:30');
INSERT INTO `sys_log` VALUES ('8fa620648d4e446e9994548bf4ac4f33', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-07 22:03:04');
INSERT INTO `sys_log` VALUES ('912b201b2cf748f880ced08cd8ea1184', 'admin1', '175.190.31.194', '中国|辽宁省|大连市|鹏博士', '登录成功', 'Chrome', 'Windows', '2020-04-11 11:57:59');
INSERT INTO `sys_log` VALUES ('915ef45aa5644eea856c16a2dbe6aeec', 'admin2', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-08 19:48:00');
INSERT INTO `sys_log` VALUES ('918bebd8edf440a1bdf188e708ad2eec', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Mozilla', 'Windows', '2020-04-06 10:39:56');
INSERT INTO `sys_log` VALUES ('9222ecb91a194e36ada36d865585ff4d', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-05 14:03:05');
INSERT INTO `sys_log` VALUES ('929c3e9c61284a368b4ef23c93d7e877', 'admin1', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-07 23:47:39');
INSERT INTO `sys_log` VALUES ('92fdad5da3a74117ab0dd79ed434058e', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-05 11:36:40');
INSERT INTO `sys_log` VALUES ('9488d88c6f62482bac9c7cfd4f159f61', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-31 21:22:25');
INSERT INTO `sys_log` VALUES ('953fc45d623d402cab19f4fe2ddfd39a', 'admin1', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-08 19:34:17');
INSERT INTO `sys_log` VALUES ('9576e4ca24fb48849fbaf54d0d45098c', 'admin1', '192.168.6.158', '内网IP', '验证码不匹配', 'Chrome 8', 'Windows', '2020-04-08 00:23:34');
INSERT INTO `sys_log` VALUES ('963934d6cd254788b1c3a29209416518', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-28 23:16:15');
INSERT INTO `sys_log` VALUES ('97b3d9998a5c4995a555c474e8d94a64', 'admin', '192.168.1.111', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-30 15:32:18');
INSERT INTO `sys_log` VALUES ('98cfd552442240cd8eba06d0caf522dc', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-04 20:10:49');
INSERT INTO `sys_log` VALUES ('990549882e4741648b809ecd2ffeed54', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-31 22:34:14');
INSERT INTO `sys_log` VALUES ('9948f7ad0b1246948d10ce1c7befabb9', 'cxd', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-28 22:21:57');
INSERT INTO `sys_log` VALUES ('996b401fb19a488c97ea711b4c1eb45d', 'admin', '192.168.6.158', '内网IP', '验证码已过期', 'Mozilla', 'Windows', '2020-03-29 10:29:43');
INSERT INTO `sys_log` VALUES ('9ca7f5c13b1a408f8331d2f0d09a3592', 'cxd', '192.168.6.158', '内网IP', '退出成功', 'Chrome 8', 'Windows', '2020-03-28 22:46:28');
INSERT INTO `sys_log` VALUES ('a215e78cf71d4360ba09ac8e3d2a8d45', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-28 23:01:14');
INSERT INTO `sys_log` VALUES ('a2325840e49f4e58949e7ec8d109d689', 'admin1', '192.168.1.112', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-08 12:12:18');
INSERT INTO `sys_log` VALUES ('a2d4b31e36684b5d99ead07a004abb45', 'admin', '192.168.1.111', '内网IP', '验证码不匹配', 'Chrome 8', 'Windows', '2020-03-30 16:12:55');
INSERT INTO `sys_log` VALUES ('a3a620900fac45b88dbd84d40146c0cd', 'admin1', '42.248.53.98', '中国|辽宁省|大连市|电信', '密码不正确', 'Mozilla', 'Windows', '2020-04-10 14:54:04');
INSERT INTO `sys_log` VALUES ('a457d3a85e864265a4cf96a3d27b3aad', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-28 23:38:12');
INSERT INTO `sys_log` VALUES ('a4a6e39bd9354b5eb28400a4c765f636', 'admin1', '223.100.212.41', '中国|辽宁省|大连市|移动', '登录成功', 'Mozilla', 'Windows', '2020-04-10 15:13:55');
INSERT INTO `sys_log` VALUES ('a5345ad715e541f4bb761e12c4d43444', 'admin1', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-10 22:20:28');
INSERT INTO `sys_log` VALUES ('a5eef34a1f8646e6816a2ecb3e606e7d', 'admin1', '192.168.6.158', '内网IP', '登录成功', 'Mozilla', 'Windows', '2020-04-08 22:36:29');
INSERT INTO `sys_log` VALUES ('a6e5a81115cf48d58ed6028a61ac3b6a', 'cxd', '192.168.6.158', '内网IP', '验证码的值不能为空', 'Chrome 8', 'Windows', '2020-03-28 22:36:24');
INSERT INTO `sys_log` VALUES ('a6fd4566d1e146a1b7eaa19bd2e5307a', 'admin2', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-08 21:18:25');
INSERT INTO `sys_log` VALUES ('a805d5125ae54980bb9c7e9addd74b44', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-05 22:01:00');
INSERT INTO `sys_log` VALUES ('a96324540953437a8e6a6731bdab3f87', 'admin1', '123.185.142.118', '中国|辽宁省|大连市|电信', '验证码已过期', 'Chrome', 'Windows', '2020-04-10 23:17:53');
INSERT INTO `sys_log` VALUES ('aabe2c5bcc8844699edc07f3a06dee7c', 'admin', '192.168.6.158', '内网IP', '用户不存在', 'Chrome 8', 'Windows', '2020-04-07 22:48:15');
INSERT INTO `sys_log` VALUES ('aaf0a1763a234772ad7316464574e306', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-04 22:50:48');
INSERT INTO `sys_log` VALUES ('ab5aca8b7ba44810bd87615c077702ff', 'admin1', '123.185.142.118', '中国|辽宁省|大连市|电信', '登录成功', 'Mozilla', 'Windows', '2020-04-10 23:33:48');
INSERT INTO `sys_log` VALUES ('ac5e90ef99b64e1c8e556e985f76cf19', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Mozilla', 'Windows', '2020-04-05 10:59:11');
INSERT INTO `sys_log` VALUES ('acd5b35ffd3145c384de3e24881a0b2d', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-06 00:16:17');
INSERT INTO `sys_log` VALUES ('ad1582f5e7bf434894ba7395916577ff', 'admin1', '192.168.6.202', '内网IP', '密码不正确', 'Chrome', 'Windows', '2020-04-10 21:57:33');
INSERT INTO `sys_log` VALUES ('adf6ad67d1a64749bc3dc0ef1829abe2', 'admin', '192.168.6.158', '内网IP', '退出成功', 'Chrome 8', 'Windows', '2020-04-07 22:41:23');
INSERT INTO `sys_log` VALUES ('ae09f7f41aef4bbca0897245f99edef9', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Mozilla', 'Windows', '2020-03-29 21:53:06');
INSERT INTO `sys_log` VALUES ('aec2334a06b14077814d3b294d3bd0c7', 'admin2', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-08 21:07:41');
INSERT INTO `sys_log` VALUES ('aedcaa54837c4953b02345404c18a7d1', 'admin', '192.168.6.158', '内网IP', '验证码已过期', 'Mozilla', 'Windows', '2020-03-28 11:13:21');
INSERT INTO `sys_log` VALUES ('b05665c21e7145b7b244370027ae67bd', 'admin2', '192.168.1.112', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-10 12:57:09');
INSERT INTO `sys_log` VALUES ('b2c3bfeda4f2458b8ac701b8ef2738b4', 'admin1', '123.185.142.118', '中国|辽宁省|大连市|电信', '登录成功', 'Chrome', 'Windows', '2020-04-10 23:17:57');
INSERT INTO `sys_log` VALUES ('b2da20847da14fb99f609a326f78f5bb', 'admin', '192.168.1.111', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-30 12:07:28');
INSERT INTO `sys_log` VALUES ('b45085ff6e1a463e898f007eafdf2c4c', 'admin1', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-08 00:15:36');
INSERT INTO `sys_log` VALUES ('b4986cc339814b578035739e4168c9d3', 'cxd', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-28 22:56:24');
INSERT INTO `sys_log` VALUES ('b58907f290984f22a0b2f440024403d6', 'admin2', '192.168.6.158', '内网IP', '密码不正确', 'Chrome 8', 'Windows', '2020-04-08 19:47:30');
INSERT INTO `sys_log` VALUES ('b5f9fdfe73634f0c9eefdb0c1ca1ee70', 'admin2', '192.168.1.112', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-10 10:25:03');
INSERT INTO `sys_log` VALUES ('b7c6b32e482e411d896b5de6f60e519b', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-05 01:07:22');
INSERT INTO `sys_log` VALUES ('b7ec08d304e54f618116e13ff4330a5c', 'admin', '192.168.6.158', '内网IP', '用户不存在', 'Mozilla', 'Windows', '2020-04-08 22:36:25');
INSERT INTO `sys_log` VALUES ('b9ee0412dc974069845f0e3fe07a15cf', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-29 14:05:52');
INSERT INTO `sys_log` VALUES ('bb15c858da85494e881ea8ab7c734c86', 'admin', '192.168.1.111', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-30 13:44:24');
INSERT INTO `sys_log` VALUES ('bc2846b947934ef5a7b967af46aae5cc', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-05 11:50:28');
INSERT INTO `sys_log` VALUES ('bcd6cec6ca704637b26ec1a1456a9a54', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-05 11:15:49');
INSERT INTO `sys_log` VALUES ('bcf74491aa794095b57034a1e18bfd8a', 'admin2', '192.168.1.112', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-09 17:30:09');
INSERT INTO `sys_log` VALUES ('be50ed3af4b14612aa916c0f4729749b', 'admin2', '172.20.10.7', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-10 13:35:01');
INSERT INTO `sys_log` VALUES ('c080910d076540e4a9c3d3eee521d088', 'cxd', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-28 22:43:36');
INSERT INTO `sys_log` VALUES ('c13d5a0abcb24533aa7954c05a22c71e', 'cxd', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-28 22:36:14');
INSERT INTO `sys_log` VALUES ('c2c41e1cb2a64c8d8b1c83da101ed126', 'cxd', '192.168.6.158', '内网IP', '退出成功', 'Chrome 8', 'Windows', '2020-03-28 22:34:54');
INSERT INTO `sys_log` VALUES ('c46962f7713d4ed9b4af4539839bf782', 'cxd', '192.168.6.158', '内网IP', '验证码不匹配', 'Chrome 8', 'Windows', '2020-03-28 22:43:30');
INSERT INTO `sys_log` VALUES ('c5a023e8038f418999dc60608f9b4a9e', '', '192.168.6.158', '内网IP', '退出成功', 'Chrome 8', 'Windows', '2020-03-28 23:06:39');
INSERT INTO `sys_log` VALUES ('c6bc4d39270645ec8ce90e1576ac8a3d', 'admin', '192.168.6.158', '内网IP', '验证码不匹配', 'Chrome 8', 'Windows', '2020-03-29 14:05:47');
INSERT INTO `sys_log` VALUES ('c70852c32f4a4a7684ead41bfdf9d0c9', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-05 13:15:40');
INSERT INTO `sys_log` VALUES ('c8de7865513e452f933283f88a830cb4', 'admin', '192.168.6.158', '内网IP', '验证码的值不能为空', 'Chrome 8', 'Windows', '2020-03-28 23:30:54');
INSERT INTO `sys_log` VALUES ('c8ec9e1a43a04951a775cd335147c214', 'admin1', '42.248.36.236', '中国|辽宁省|大连市|电信', '登录成功', 'Mozilla', 'Windows', '2020-04-10 16:09:27');
INSERT INTO `sys_log` VALUES ('ca034536789a42b29cb4cba74a918d97', 'admin1', '123.185.142.118', '中国|辽宁省|大连市|电信', '登录成功', 'Chrome', 'Windows', '2020-04-10 21:40:31');
INSERT INTO `sys_log` VALUES ('ccd0892c67904ca9996adf0926287fbf', 'admin1', '192.168.1.112', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-08 13:42:59');
INSERT INTO `sys_log` VALUES ('ce774912ddec4140b8848cb2f9359dd9', 'admin', '192.168.6.158', '内网IP', '退出成功', 'Chrome 8', 'Windows', '2020-03-28 23:12:55');
INSERT INTO `sys_log` VALUES ('cfdd75cccea847029bde64eaa350a2a3', 'admin', '192.168.6.158', '内网IP', '用户不存在', 'Chrome 8', 'Windows', '2020-04-07 22:45:21');
INSERT INTO `sys_log` VALUES ('d03803c0e4d6427e856c9c677d5becfd', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-05 21:51:14');
INSERT INTO `sys_log` VALUES ('d048be2c376f4c888b5919dffbe61363', 'admin2', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-08 19:53:51');
INSERT INTO `sys_log` VALUES ('d049126f3ba948a5aa9d19a30117e612', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-28 23:30:59');
INSERT INTO `sys_log` VALUES ('d098ed6273484881bce13eb75d8722e7', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-30 22:04:18');
INSERT INTO `sys_log` VALUES ('d143cffb193d4165a05489f3a426ce0a', 'cxd', '192.168.6.158', '内网IP', '退出成功', 'Chrome 8', 'Windows', '2020-03-28 22:55:09');
INSERT INTO `sys_log` VALUES ('d219440ef9dd473a824d6be1d8ea56bf', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Mozilla', 'Windows', '2020-03-29 17:38:43');
INSERT INTO `sys_log` VALUES ('d39b27d9f6f24a17a5bfb94bfe49addc', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-29 10:39:28');
INSERT INTO `sys_log` VALUES ('d691ff65d6414290ae2fb2f3d86cb9f0', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-29 10:02:17');
INSERT INTO `sys_log` VALUES ('d7c7257e49e340988719057998976e19', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-06 12:28:27');
INSERT INTO `sys_log` VALUES ('d80332d166344e58a36f1a5986b98f72', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-07 21:28:11');
INSERT INTO `sys_log` VALUES ('d8b4f16cbc0a46ea9d1e121f6d963c0c', 'admin2', '192.168.1.112', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-10 11:30:07');
INSERT INTO `sys_log` VALUES ('d8f9131e995b4eef96dd1a0cb37330b5', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-04 09:51:42');
INSERT INTO `sys_log` VALUES ('d995f3fa7c8d414c87cda2cd71eb5566', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-04 22:24:18');
INSERT INTO `sys_log` VALUES ('dbb43d948e8740b6a4d87128f0cec9bb', 'admin', '192.168.1.111', '内网IP', '退出成功', 'Chrome 8', 'Windows', '2020-03-30 16:12:52');
INSERT INTO `sys_log` VALUES ('de363224c4d64bdfba35e3c10dafdbe6', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-28 15:22:38');
INSERT INTO `sys_log` VALUES ('df307281505a404daccf0a1e841d6fe7', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-04 22:54:14');
INSERT INTO `sys_log` VALUES ('e04162546e41401c8ffe96c8eb6e1b9c', 'admin', '192.168.6.158', '内网IP', '退出成功', 'Chrome 8', 'Windows', '2020-03-28 15:24:43');
INSERT INTO `sys_log` VALUES ('e171e590ff2b4dcdb8b90806f0576ab1', 'admin1', '192.168.6.158', '内网IP', '退出成功', 'Mozilla', 'Windows', '2020-04-08 21:54:28');
INSERT INTO `sys_log` VALUES ('e2b773a2137241caa2a2cf7c2bf7aab5', 'admin', '192.168.6.158', '内网IP', '退出成功', 'Chrome 8', 'Windows', '2020-03-28 23:01:22');
INSERT INTO `sys_log` VALUES ('e4dc775d15a2471b8665557a04979bf3', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-07 21:34:25');
INSERT INTO `sys_log` VALUES ('e4ed630f9ac247b6947594c0a644b0e5', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-31 22:44:30');
INSERT INTO `sys_log` VALUES ('e5066bc38e8b4eb2ab2dba841331c679', 'admin1', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-08 18:59:32');
INSERT INTO `sys_log` VALUES ('e68bdeccfbda4c038cf0e283d9c6d781', 'cxd', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-28 21:28:35');
INSERT INTO `sys_log` VALUES ('e83b84afd72e4a9886c82bc12381f80f', 'admin1', '192.168.6.202', '内网IP', '登录成功', 'Chrome', 'Windows', '2020-04-11 16:30:46');
INSERT INTO `sys_log` VALUES ('e8691fa1f00241eda122c160d387e622', 'admin1', '123.185.143.185', '中国|辽宁省|大连市|电信', '登录成功', 'Chrome', 'Windows', '2020-04-13 19:32:19');
INSERT INTO `sys_log` VALUES ('e9c7657503724b8c99e1a669ba83df68', 'admin2', '192.168.1.112', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-09 17:26:51');
INSERT INTO `sys_log` VALUES ('e9d088a8bb0740f585492dab32c448b1', 'cxd', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-28 22:27:34');
INSERT INTO `sys_log` VALUES ('ea92f729de734c0aad63052a6894eb68', 'admin2', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-07 22:45:30');
INSERT INTO `sys_log` VALUES ('eae77d5784894bffa35a19442f5ce932', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Mozilla', 'Windows', '2020-03-28 10:23:10');
INSERT INTO `sys_log` VALUES ('ec6e33fb0a764191b2803292c3c40893', 'admin2', '192.168.1.112', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-10 12:45:19');
INSERT INTO `sys_log` VALUES ('ecec637a25dc40b1bc43a32ed756143f', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-07 21:07:06');
INSERT INTO `sys_log` VALUES ('eff60577a84e41c8b09f930756cf833e', 'admin2', '192.168.1.112', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-10 12:14:43');
INSERT INTO `sys_log` VALUES ('f15df313074447daa9f9a9d98cc2462a', 'admin2', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-09 20:57:23');
INSERT INTO `sys_log` VALUES ('f1f5a6c478d74d3aa14af29c7550ff36', 'admin1', '123.185.143.185', '中国|辽宁省|大连市|电信', '登录成功', 'Chrome', 'Windows', '2020-04-11 11:02:36');
INSERT INTO `sys_log` VALUES ('f272fd84415f4ac08090a8c27e554f15', 'admin1', '42.248.36.236', '中国|辽宁省|大连市|电信', '登录成功', 'Mozilla', 'Windows', '2020-04-10 15:59:57');
INSERT INTO `sys_log` VALUES ('f70d71a2144f49738c4809a07bacaad6', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-05 11:12:14');
INSERT INTO `sys_log` VALUES ('f7372cd04dc3464fa351aadcfd4d93ef', 'admin', '192.168.6.158', '内网IP', '退出成功', 'Chrome 8', 'Windows', '2020-03-28 23:06:52');
INSERT INTO `sys_log` VALUES ('f88015bd6372482db0cbbda954a11c12', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-04 23:57:01');
INSERT INTO `sys_log` VALUES ('f8b367e79f504e64b3e191a1ebea720a', 'admin', '192.168.6.158', '内网IP', '退出成功', 'Mozilla', 'Windows', '2020-03-29 17:32:24');
INSERT INTO `sys_log` VALUES ('f8bf0886be5b44c59eb1debc64eb2831', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-29 19:25:38');
INSERT INTO `sys_log` VALUES ('f9689e9832e84230a2c936ee6e4eec3b', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-29 14:43:13');
INSERT INTO `sys_log` VALUES ('f97e9fe7b7444ad5a44cf5a18b2609bd', 'admin', '192.168.1.111', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-30 12:39:20');
INSERT INTO `sys_log` VALUES ('fa104d490bcc4fb7bab96d31572ee1a0', 'cxd', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-28 22:34:48');
INSERT INTO `sys_log` VALUES ('fa769084c262422dae6f8b33496c69b4', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-04-06 11:44:21');
INSERT INTO `sys_log` VALUES ('fab805e9725f46cdbe1c4fc2a20e5b35', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Chrome 8', 'Windows', '2020-03-29 09:47:36');
INSERT INTO `sys_log` VALUES ('fb8d7967c8734fd39261149f5bef17a5', 'cxd', '192.168.6.158', '内网IP', '退出成功', 'Chrome 8', 'Windows', '2020-03-28 22:43:45');
INSERT INTO `sys_log` VALUES ('fd54aff991ec48d884dff6f42cab61dd', 'admin', '192.168.6.158', '内网IP', '登录成功', 'Mozilla', 'Windows', '2020-03-29 17:39:59');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单主键',
  `parent_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父菜单主键',
  `menu_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `menu_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单别名',
  `menu_href` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单链接',
  `menu_icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `menu_level` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单级别',
  `menu_weight` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单权重',
  `is_show` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否显示（1显示 0隐藏）',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `create_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('01c7c3a0c5bc4b55b20d739a456c6e68', '6279548540c94f1e87594ce97c4e2bd7', '本人客户查询维护', 'pbcustself', 'pbcust/list', '', '2', '100', '1', '2020-03-29 14:49:17', 'admin');
INSERT INTO `sys_menu` VALUES ('1e5a206790134246ac14bc734193c8bf', '6279548540c94f1e87594ce97c4e2bd7', '辖内客户查询维护', 'pbcustmgtsup', 'pbcust/listSuperior', '', '2', '110', '1', '2020-04-05 13:53:55', 'admin');
INSERT INTO `sys_menu` VALUES ('3bc6a24d1c5d4196b4d7bc3a732d2208', '3e7d54f2bd82464484defcb4709b3142', '登录日志', 'syslog', 'sys_log/list', NULL, '2', '4', '1', '2020-01-13 11:25:29', 'admin');
INSERT INTO `sys_menu` VALUES ('3c2363839f584216b643e6bd3c05695d', '3e7d54f2bd82464484defcb4709b3142', '用户管理', 'user', 'user/list', '', '2', '1', '1', '2019-12-24 15:04:59', 'admin');
INSERT INTO `sys_menu` VALUES ('3e7d54f2bd82464484defcb4709b3142', NULL, '系统管理', 'system', NULL, 'layui-icon-home', '1', '0', '1', '2019-12-24 15:02:32', 'admin');
INSERT INTO `sys_menu` VALUES ('5c2f6c5c80084a99a9d7166ba328bfdd', 'e3c575455f1a4af683b26b3f56a27815', '数据源监控', 'druid', 'druid', NULL, '2', '1', '1', '2019-12-29 20:17:10', 'admin');
INSERT INTO `sys_menu` VALUES ('6279548540c94f1e87594ce97c4e2bd7', NULL, '客户管理', 'pribankcustmgt', '', 'layui-icon-username', '1', '5', '1', '2020-03-29 14:46:31', 'admin');
INSERT INTO `sys_menu` VALUES ('7c3195059e954531909f6b31c91826b9', '3e7d54f2bd82464484defcb4709b3142', '项目介绍', 'systemIntroduce', 'system/introduce', '', '2', '0', '0', '2020-01-19 16:31:48', 'admin');
INSERT INTO `sys_menu` VALUES ('893c49dd5fdb44d79bb2897db9472517', '8f1eb86b09354635b3857222d54991d3', 'v-charts图表', 'vCharts', 'devUtils/vCharts', NULL, '2', '1', '1', '2020-01-16 16:16:48', 'admin');
INSERT INTO `sys_menu` VALUES ('8db930130a1e4b2b9fd479d1f9a4ed45', '3e7d54f2bd82464484defcb4709b3142', '菜单管理', 'menu', 'menu/list', '', '2', '2', '0', '2019-12-24 15:07:12', 'admin');
INSERT INTO `sys_menu` VALUES ('8f1eb86b09354635b3857222d54991d3', NULL, '研发工具', 'devUtils', '', 'layui-icon-util', '1', '3', '0', '2020-01-15 16:33:27', 'admin');
INSERT INTO `sys_menu` VALUES ('ba33703658c54aeca08cc96ef6735102', '6279548540c94f1e87594ce97c4e2bd7', '全行客户信息查询', 'pbcustmgtall', 'pbcust/listAll', '', '2', '120', '1', '2020-04-05 14:00:22', 'admin');
INSERT INTO `sys_menu` VALUES ('ba90c64234a44202818e10868ab9da91', '8f1eb86b09354635b3857222d54991d3', '菜单图标', 'menuIcon', 'devUtils/menuIcon', NULL, '2', '0', '1', '2020-01-15 16:34:17', 'admin');
INSERT INTO `sys_menu` VALUES ('be0a8e5ec52c4f0baa2a3edf8194f7f2', 'e3c575455f1a4af683b26b3f56a27815', '服务器监控', 'server', 'system/serverInfo', NULL, '2', '0', '1', '2019-12-27 17:08:56', 'admin');
INSERT INTO `sys_menu` VALUES ('c2ba13d6d7634051ab42d0d8d0195e75', '6279548540c94f1e87594ce97c4e2bd7', '辖内客户群体搜索', 'queryCustomerSuperior', 'pbcust/queryCustomerSuperior', NULL, '2', '140', '1', '2020-04-10 12:35:48', 'admin2');
INSERT INTO `sys_menu` VALUES ('e3c575455f1a4af683b26b3f56a27815', NULL, '系统监控', 'monitor', '', 'layui-icon-engine', '1', '1', '0', '2019-12-24 15:37:04', 'admin');
INSERT INTO `sys_menu` VALUES ('e491e5d7ac5340aa80debe9e210766ce', '6279548540c94f1e87594ce97c4e2bd7', '全局扩展属性维护', 'showAdminExpPropItem', 'pbcust/showAdminExpPropItem', '', '2', '160', '1', '2020-04-08 22:43:27', 'admin1');
INSERT INTO `sys_menu` VALUES ('ed8df2ffe77645cdb7a1b2b10f5d89e4', '3e7d54f2bd82464484defcb4709b3142', '角色管理', 'role', 'role/list', NULL, '2', '1', '1', '2019-12-24 15:08:17', 'admin');
INSERT INTO `sys_menu` VALUES ('f8aaa5fd24ef4fe6b12ded54ceb88000', '6279548540c94f1e87594ce97c4e2bd7', '本人客户群体搜索', 'pbcustsearch', 'pbcust/queryCustomer', NULL, '2', '130', '1', '2020-04-09 21:59:08', 'admin2');
INSERT INTO `sys_menu` VALUES ('fc6c35573d4a409197a16f2f7df427dd', '6279548540c94f1e87594ce97c4e2bd7', '全行客户群体搜索', 'queryCustomerAll', 'pbcust/queryCustomerAll', NULL, '2', '150', '1', '2020-04-10 12:36:35', 'admin2');

-- ----------------------------
-- Table structure for sys_menu_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu_role`;
CREATE TABLE `sys_menu_role`  (
  `menu_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单主键',
  `role_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色主键'
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu_role
-- ----------------------------
INSERT INTO `sys_menu_role` VALUES ('6279548540c94f1e87594ce97c4e2bd7', 'b8174920f33f4b17ad5f415c700aacd2');
INSERT INTO `sys_menu_role` VALUES ('01c7c3a0c5bc4b55b20d739a456c6e68', 'b8174920f33f4b17ad5f415c700aacd2');
INSERT INTO `sys_menu_role` VALUES ('f8aaa5fd24ef4fe6b12ded54ceb88000', 'b8174920f33f4b17ad5f415c700aacd2');
INSERT INTO `sys_menu_role` VALUES ('3e7d54f2bd82464484defcb4709b3142', '38ab52848a074a3b8845b09eadb3fd71');
INSERT INTO `sys_menu_role` VALUES ('7c3195059e954531909f6b31c91826b9', '38ab52848a074a3b8845b09eadb3fd71');
INSERT INTO `sys_menu_role` VALUES ('3c2363839f584216b643e6bd3c05695d', '38ab52848a074a3b8845b09eadb3fd71');
INSERT INTO `sys_menu_role` VALUES ('ed8df2ffe77645cdb7a1b2b10f5d89e4', '38ab52848a074a3b8845b09eadb3fd71');
INSERT INTO `sys_menu_role` VALUES ('8db930130a1e4b2b9fd479d1f9a4ed45', '38ab52848a074a3b8845b09eadb3fd71');
INSERT INTO `sys_menu_role` VALUES ('3bc6a24d1c5d4196b4d7bc3a732d2208', '38ab52848a074a3b8845b09eadb3fd71');
INSERT INTO `sys_menu_role` VALUES ('6279548540c94f1e87594ce97c4e2bd7', '38ab52848a074a3b8845b09eadb3fd71');
INSERT INTO `sys_menu_role` VALUES ('01c7c3a0c5bc4b55b20d739a456c6e68', '38ab52848a074a3b8845b09eadb3fd71');
INSERT INTO `sys_menu_role` VALUES ('1e5a206790134246ac14bc734193c8bf', '38ab52848a074a3b8845b09eadb3fd71');
INSERT INTO `sys_menu_role` VALUES ('ba33703658c54aeca08cc96ef6735102', '38ab52848a074a3b8845b09eadb3fd71');
INSERT INTO `sys_menu_role` VALUES ('f8aaa5fd24ef4fe6b12ded54ceb88000', '38ab52848a074a3b8845b09eadb3fd71');
INSERT INTO `sys_menu_role` VALUES ('c2ba13d6d7634051ab42d0d8d0195e75', '38ab52848a074a3b8845b09eadb3fd71');
INSERT INTO `sys_menu_role` VALUES ('fc6c35573d4a409197a16f2f7df427dd', '38ab52848a074a3b8845b09eadb3fd71');
INSERT INTO `sys_menu_role` VALUES ('e491e5d7ac5340aa80debe9e210766ce', '38ab52848a074a3b8845b09eadb3fd71');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键ID',
  `authority` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限名称',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限描述',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('38ab52848a074a3b8845b09eadb3fd71', 'ROLE_ADMIN', '普通用户', '2020-01-17 11:01:01');
INSERT INTO `sys_role` VALUES ('b8174920f33f4b17ad5f415c700aacd2', 'ROLE_ADMIN', '管理员', '2019-12-12 21:42:43');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键ID',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `nick_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称--显示的名字',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `mobile` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `birthday` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出生日期',
  `hobby` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '爱好',
  `live_address` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '现居地',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `branchid` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在机构编码',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('27054212a1c94e1f8b839f05dc76e337', 'admin2', '$2a$10$r04Htimu8GDqz3di84Br/uCpfTLSgH2r0Y3oLg8JuGB5BWjhSGDGC', '小王-支行主管', '男', '', '', '', '', '', '2020-04-07 22:40:07', '2020-04-07 23:11:56', '34001');
INSERT INTO `sys_user` VALUES ('5a224b3139194c17b7da557ddb39b438', 'admin3', '$2a$10$mU8uxz7REgvZqFzGJYg/Muoj7XizxPPjDgZ9ZyRwrJ1jtZrGr03h6', '小于-市行管理', '男', '', '', '', '', '', '2020-04-10 12:41:54', NULL, '34002');
INSERT INTO `sys_user` VALUES ('64c40c54ef21495da322901107a7ad00', 'admin1', '$2a$10$OgVXB6JzNxeGBVd2iAtRP.6JbKL/1WAwu2GuV91OkXfwqVemKwcWa', '小李-客户经理', '男', '', '', '2020-01-06', '111', '22', '2019-12-12 21:41:53', '2020-04-07 22:40:38', '34001');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户主键',
  `role_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色主键'
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('64c40c54ef21495da322901107a7ad00', '38ab52848a074a3b8845b09eadb3fd71');
INSERT INTO `sys_user_role` VALUES ('27054212a1c94e1f8b839f05dc76e337', 'b8174920f33f4b17ad5f415c700aacd2');
INSERT INTO `sys_user_role` VALUES ('5a224b3139194c17b7da557ddb39b438', 'b8174920f33f4b17ad5f415c700aacd2');

SET FOREIGN_KEY_CHECKS = 1;

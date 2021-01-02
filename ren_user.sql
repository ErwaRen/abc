/*
 Navicat Premium Data Transfer

 Source Server         : rm-wz93asd2l1dn2vi7sfo.mysql.rds.aliyuncs.com
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : rm-wz93asd2l1dn2vi7sfo.mysql.rds.aliyuncs.com:3306
 Source Schema         : usercenter

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 04/07/2020 15:56:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ren_user
-- ----------------------------
DROP TABLE IF EXISTS `ren_user`;
CREATE TABLE `ren_user`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户Id\r\n用户Id',
  `username` char(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `nickname` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `email` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户邮箱',
  `mobile` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户手机',
  `reg_time` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '注册时间',
  `reg_ip` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '注册IP',
  `last_login_time` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最后登录时间',
  `last_login_ip` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `update_time` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '用户状态',
  `is_deleted` tinyint(4) NOT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uname_unique`(`username`) USING BTREE COMMENT '用户名唯一索引'
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ren_user
-- ----------------------------
INSERT INTO `ren_user` VALUES (1, '7f2596945d564762a97c08926e95c407', 'ren', '123456', NULL, '554336412@qq.com', '13098082673', '2020-05-31 21:34:10', '0', '2020-05-31 21:34:13', '0', '2020-05-31 21:34:16', 1, 0);
INSERT INTO `ren_user` VALUES (2, '1825f58c19904725b6871f8158a53cde', 'wang', '123456', NULL, '554336413@qq.com', '13098088511', '2020-05-31 21:39:31', '0', '2020-05-31 21:39:34', '0', '2020-05-31 21:39:36', 1, 0);

SET FOREIGN_KEY_CHECKS = 1;

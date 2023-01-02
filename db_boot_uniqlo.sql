/*
Navicat MySQL Data Transfer

Source Server         : guyuzong
Source Server Version : 50505
Source Host           : localhost:3307
Source Database       : db_boot_uniqlo

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2022-12-30 14:54:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `xuan_database_bak`
-- ----------------------------
DROP TABLE IF EXISTS `xuan_database_bak`;
CREATE TABLE `xuan_database_bak` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `filename` varchar(32) NOT NULL,
  `filepath` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xuan_database_bak
-- ----------------------------

-- ----------------------------
-- Table structure for `xuan_menu`
-- ----------------------------
DROP TABLE IF EXISTS `xuan_menu`;
CREATE TABLE `xuan_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `name` varchar(18) NOT NULL,
  `url` varchar(128) DEFAULT NULL,
  `icon` varchar(32) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `is_bitton` bit(1) NOT NULL,
  `is_show` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKsbtnjocfrq29e8taxdwo21gic` (`parent_id`),
  CONSTRAINT `FKsbtnjocfrq29e8taxdwo21gic` FOREIGN KEY (`parent_id`) REFERENCES `xuan_menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xuan_menu
-- ----------------------------
INSERT INTO `xuan_menu` VALUES ('2', '2020-03-14 14:26:03', '2020-03-14 18:24:53', '系统设置', '', 'mdi-settings', '0', null, '', '');
INSERT INTO `xuan_menu` VALUES ('3', '2020-03-14 16:58:55', '2020-03-14 18:26:02', '菜单管理', '/menu/list', 'mdi-view-list', '1', '2', '', '');
INSERT INTO `xuan_menu` VALUES ('5', '2020-03-14 17:04:44', '2020-03-14 18:27:53', '新增', '/menu/add', 'mdi-plus', '2', '3', '', '');
INSERT INTO `xuan_menu` VALUES ('7', '2020-03-14 17:07:43', '2020-03-15 12:11:25', '角色管理', '/role/list', 'mdi-account-settings-variant', '5', '2', '', '');
INSERT INTO `xuan_menu` VALUES ('8', '2020-03-14 18:28:48', '2020-03-21 22:04:45', '编辑', 'edit(\'/menu/edit\')', 'mdi-grease-pencil', '3', '3', '', '');
INSERT INTO `xuan_menu` VALUES ('9', '2020-03-14 18:30:00', '2020-03-21 22:08:20', '删除', 'del(\'/menu/delete\')', 'mdi-close', '4', '3', '', '');
INSERT INTO `xuan_menu` VALUES ('10', '2020-03-15 12:12:00', '2020-03-15 12:12:00', '添加', '/role/add', 'mdi-account-plus', '6', '7', '', '');
INSERT INTO `xuan_menu` VALUES ('11', '2020-03-15 12:12:36', '2020-03-21 22:10:45', '编辑', 'edit(\'/role/edit\')', 'mdi-account-edit', '7', '7', '', '');
INSERT INTO `xuan_menu` VALUES ('12', '2020-03-15 12:13:19', '2020-03-21 22:15:27', '删除', 'del(\'/role/delete\')', 'mdi-account-remove', '8', '7', '', '');
INSERT INTO `xuan_menu` VALUES ('13', '2020-03-15 12:14:52', '2020-03-15 12:17:00', '用户管理', '/user/list', 'mdi-account-multiple', '9', '2', '', '');
INSERT INTO `xuan_menu` VALUES ('14', '2020-03-15 12:15:22', '2020-03-15 12:17:27', '添加', '/user/add', 'mdi-account-plus', '10', '13', '', '');
INSERT INTO `xuan_menu` VALUES ('15', '2020-03-16 17:18:14', '2020-03-21 22:11:19', '编辑', 'edit(\'/user/edit\')', 'mdi-account-edit', '11', '13', '', '');
INSERT INTO `xuan_menu` VALUES ('16', '2020-03-16 17:19:01', '2020-03-21 22:15:36', '删除', 'del(\'/user/delete\')', 'mdi-account-remove', '12', '13', '', '');
INSERT INTO `xuan_menu` VALUES ('19', '2020-03-22 11:24:36', '2020-03-22 11:26:00', '上传图片', '/upload/upload_photo', 'mdi-arrow-up-bold-circle', '0', '13', '', '');
INSERT INTO `xuan_menu` VALUES ('20', '2020-03-22 14:09:35', '2020-03-22 14:09:47', '日志管理', '/system/operator_log_list', 'mdi-tag-multiple', '13', '2', '', '');
INSERT INTO `xuan_menu` VALUES ('21', '2020-03-22 14:11:39', '2020-03-22 14:11:39', '删除', 'del(\'/system/delete_operator_log\')', 'mdi-tag-remove', '14', '20', '', '');
INSERT INTO `xuan_menu` VALUES ('22', '2020-03-22 14:12:57', '2020-03-22 14:46:55', '清空日志', 'delAll(\'/system/delete_all_operator_log\')', 'mdi-delete-circle', '15', '20', '', '');
INSERT INTO `xuan_menu` VALUES ('23', '2020-03-22 14:46:40', '2020-03-22 14:47:09', '数据备份', '/database_bak/list', 'mdi-database', '16', '2', '', '');
INSERT INTO `xuan_menu` VALUES ('24', '2020-03-22 14:48:07', '2020-03-22 15:13:41', '备份', 'add(\'/database_bak/add\')', 'mdi-database-plus', '17', '23', '', '');
INSERT INTO `xuan_menu` VALUES ('25', '2020-03-22 14:49:03', '2020-03-22 14:49:03', '删除', 'del(\'/database_bak/delete\')', 'mdi-database-minus', '18', '23', '', '');
INSERT INTO `xuan_menu` VALUES ('26', '2020-03-22 19:36:20', '2020-03-22 19:36:20', '还原', 'restore(\'/database_bak/restore\')', 'mdi-database-minus', '19', '23', '', '');

-- ----------------------------
-- Table structure for `xuan_operater_log`
-- ----------------------------
DROP TABLE IF EXISTS `xuan_operater_log`;
CREATE TABLE `xuan_operater_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `content` varchar(1024) NOT NULL,
  `operator` varchar(18) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xuan_operater_log
-- ----------------------------
INSERT INTO `xuan_operater_log` VALUES ('246', '2022-12-30 14:08:41', '2022-12-30 14:08:41', '用户【故与纵QAQ】于【2022-12-30 14:08:41】登录系统！', '故与纵QAQ');
INSERT INTO `xuan_operater_log` VALUES ('247', '2022-12-30 14:09:18', '2022-12-30 14:09:18', '用户【故与纵QAQ】于【2022-12-30 14:09:18】登录系统！', '故与纵QAQ');
INSERT INTO `xuan_operater_log` VALUES ('248', '2022-12-30 14:27:36', '2022-12-30 14:27:36', '用户【故与纵QAQ】于【2022-12-30 14:27:36】登录系统！', '故与纵QAQ');
INSERT INTO `xuan_operater_log` VALUES ('249', '2022-12-30 14:31:53', '2022-12-30 14:31:53', '用户【故与纵QAQ】于【2022-12-30 14:31:53】登录系统！', '故与纵QAQ');
INSERT INTO `xuan_operater_log` VALUES ('250', '2022-12-30 14:48:01', '2022-12-30 14:48:01', '用户【故与纵QAQ】于【2022-12-30 14:48:01】登录系统！', '故与纵QAQ');
INSERT INTO `xuan_operater_log` VALUES ('251', '2022-12-30 14:54:06', '2022-12-30 14:54:06', '用户【故与纵QAQ】于【2022-12-30 14:54:06】登录系统！', '故与纵QAQ');

-- ----------------------------
-- Table structure for `xuan_role`
-- ----------------------------
DROP TABLE IF EXISTS `xuan_role`;
CREATE TABLE `xuan_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `name` varchar(18) NOT NULL,
  `remark` varchar(128) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xuan_role
-- ----------------------------
INSERT INTO `xuan_role` VALUES ('1', '2020-03-15 13:16:38', '2020-03-22 19:36:34', '超级管理员', '超级管理员拥有最高权限。', '1');
INSERT INTO `xuan_role` VALUES ('2', '2020-03-15 13:18:57', '2020-03-21 22:18:43', '普通管理员', '普通管理员只有部分权限', '1');
INSERT INTO `xuan_role` VALUES ('4', '2020-03-21 20:11:00', '2020-03-23 17:49:00', '测试角色', 'sadsa', '0');

-- ----------------------------
-- Table structure for `xuan_role_authorities`
-- ----------------------------
DROP TABLE IF EXISTS `xuan_role_authorities`;
CREATE TABLE `xuan_role_authorities` (
  `role_id` bigint(20) NOT NULL,
  `authorities_id` bigint(20) NOT NULL,
  KEY `FKhj7ap1o1cjrl7enr9arf5f2qp` (`authorities_id`),
  KEY `FKg3xdaexmr0x1qx8omhvjtk46d` (`role_id`),
  CONSTRAINT `FKg3xdaexmr0x1qx8omhvjtk46d` FOREIGN KEY (`role_id`) REFERENCES `xuan_role` (`id`),
  CONSTRAINT `FKhj7ap1o1cjrl7enr9arf5f2qp` FOREIGN KEY (`authorities_id`) REFERENCES `xuan_menu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xuan_role_authorities
-- ----------------------------
INSERT INTO `xuan_role_authorities` VALUES ('2', '2');
INSERT INTO `xuan_role_authorities` VALUES ('2', '3');
INSERT INTO `xuan_role_authorities` VALUES ('2', '5');
INSERT INTO `xuan_role_authorities` VALUES ('2', '7');
INSERT INTO `xuan_role_authorities` VALUES ('2', '11');
INSERT INTO `xuan_role_authorities` VALUES ('2', '13');
INSERT INTO `xuan_role_authorities` VALUES ('2', '16');
INSERT INTO `xuan_role_authorities` VALUES ('1', '2');
INSERT INTO `xuan_role_authorities` VALUES ('1', '3');
INSERT INTO `xuan_role_authorities` VALUES ('1', '5');
INSERT INTO `xuan_role_authorities` VALUES ('1', '8');
INSERT INTO `xuan_role_authorities` VALUES ('1', '9');
INSERT INTO `xuan_role_authorities` VALUES ('1', '7');
INSERT INTO `xuan_role_authorities` VALUES ('1', '10');
INSERT INTO `xuan_role_authorities` VALUES ('1', '11');
INSERT INTO `xuan_role_authorities` VALUES ('1', '12');
INSERT INTO `xuan_role_authorities` VALUES ('1', '13');
INSERT INTO `xuan_role_authorities` VALUES ('1', '14');
INSERT INTO `xuan_role_authorities` VALUES ('1', '15');
INSERT INTO `xuan_role_authorities` VALUES ('1', '16');
INSERT INTO `xuan_role_authorities` VALUES ('1', '19');
INSERT INTO `xuan_role_authorities` VALUES ('1', '20');
INSERT INTO `xuan_role_authorities` VALUES ('1', '21');
INSERT INTO `xuan_role_authorities` VALUES ('1', '22');
INSERT INTO `xuan_role_authorities` VALUES ('1', '23');
INSERT INTO `xuan_role_authorities` VALUES ('1', '24');
INSERT INTO `xuan_role_authorities` VALUES ('1', '25');
INSERT INTO `xuan_role_authorities` VALUES ('1', '26');
INSERT INTO `xuan_role_authorities` VALUES ('4', '2');
INSERT INTO `xuan_role_authorities` VALUES ('4', '13');
INSERT INTO `xuan_role_authorities` VALUES ('4', '15');

-- ----------------------------
-- Table structure for `xuan_user`
-- ----------------------------
DROP TABLE IF EXISTS `xuan_user`;
CREATE TABLE `xuan_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `email` varchar(32) DEFAULT NULL,
  `head_pic` varchar(128) DEFAULT NULL,
  `mobile` varchar(12) DEFAULT NULL,
  `password` varchar(32) NOT NULL,
  `sex` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `username` varchar(18) NOT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_btsosjytrl4hu7fnm1intcpo8` (`username`),
  KEY `FKg09b8o67eu61st68rv6nk8npj` (`role_id`),
  CONSTRAINT `FKg09b8o67eu61st68rv6nk8npj` FOREIGN KEY (`role_id`) REFERENCES `xuan_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xuan_user
-- ----------------------------
INSERT INTO `xuan_user` VALUES ('1', '2020-03-18 19:18:53', '2022-12-30 09:32:28', 'guyuzong@qq.com', '20221230/1672363912814.jpg', '13356565656', '123456', '1', '1', '故与纵QAQ', '1');

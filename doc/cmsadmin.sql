/*
Navicat MySQL Data Transfer

Source Server         : 10.10.30.218
Source Server Version : 50173
Source Host           : 10.10.30.218:3306
Source Database       : cmsadmin

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2017-06-30 11:31:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_admuser`
-- ----------------------------
DROP TABLE IF EXISTS `t_admuser`;
CREATE TABLE `t_admuser` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mail` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(255) NOT NULL DEFAULT '',
  `department` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `createtime` datetime NOT NULL,
  `updatetime` datetime NOT NULL,
  `isdel` tinyint(4) NOT NULL DEFAULT '0',
  `account` varchar(255) NOT NULL DEFAULT '',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`account`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admuser
-- ----------------------------
INSERT INTO `t_admuser` VALUES ('1', 'gaojianwen@hotmail.com', 'CrazyWolf', '1391387065', '研发', 'bG90dXMta2luZ7yxX4IUebTVdyvQyoZsAK1fkm41gHIGWcyA05ydCYAq', '2016-08-27 15:05:11', '2017-06-20 15:15:30', '1', 'admin', null, null, null);
INSERT INTO `t_admuser` VALUES ('2', 'test@test.com', 'test', 'test', 'test', 'bG90dXMta2luZ7yxX4IUebTVdyvQyoZsAK1fkm41gHIGWcyA05ydCYAq', '2016-09-03 03:02:28', '2016-09-04 14:57:20', '1', 'test', '2017-06-30 11:14:53', null, null);
INSERT INTO `t_admuser` VALUES ('3', 'ttt@qq.com', 'ttt', 'ttt', 'tt', 'bG90dXMta2luZz98VFcfruAk4/1oYDxclfakyO9zo5iEC5dPP1dzehFv', '2017-06-20 03:42:25', '2017-06-20 03:42:25', '1', 'ttt', '2017-06-30 11:14:53', null, null);
INSERT INTO `t_admuser` VALUES ('4', '22@qq.com', '22', '22', '22', 'bG90dXMta2luZ3hfPsfrMvMLkM0PzzZX04i1/0KX8vlxb/Zum2nAXd0J', '2017-06-20 03:44:58', '2017-06-20 03:44:58', '1', '22', '2017-06-30 11:14:53', null, null);
INSERT INTO `t_admuser` VALUES ('5', '33@qq.com', '33', '33', '33', 'bG90dXMta2luZ8bzrFeUSlMUkM05kC0Pd3cV/QBe+smjBiLV9SBef2iU', '2017-06-20 03:45:47', '2017-06-20 03:45:47', '1', '33', '2017-06-30 11:14:53', null, null);
INSERT INTO `t_admuser` VALUES ('6', 'af@qq.com', 'ee', 'fas', 'a', 'bG90dXMta2luZ+RiQHFLXbOiPu5gR5piPvuk1jPSf+TwPJBLniGaf75g', '2017-06-20 03:47:12', '2017-06-20 03:47:12', '1', '4', '2017-06-30 11:14:53', null, '2017-06-29 18:07:01');
INSERT INTO `t_admuser` VALUES ('7', 'aaaaaaaaa@qq.com', 'aaaaaaaaa', 'aaaaaaaaa', 'aaaaaaaaa', 'bG90dXMta2luZ/KsqTuAyuaBIh8ERfpOLK6KH5+PoeF0HZY5yq0iL1N9', '2017-06-20 05:36:28', '2017-06-20 05:36:28', '1', '5', '2017-06-30 11:14:53', null, null);
INSERT INTO `t_admuser` VALUES ('8', 'jim@qq.com', 'jim', 'jim', 'jim', 'bG90dXMta2luZ0hK4k7dIuoJpY7cK2xY7itfOHnjsmeDiocmNm8lX9S5', '2017-06-20 05:50:42', '2017-06-20 05:50:42', '1', '6', '2017-06-30 11:14:53', null, null);
INSERT INTO `t_admuser` VALUES ('9', 'w@qq.com', 'w', 'w', 'w', 'bG90dXMta2luZ1DnIeScAT8Axiz1nyFjVCqdjfAkZO/rYV0xBRsP3cMm', '2017-06-20 05:57:57', '2017-06-20 05:57:57', '1', '7', '2017-06-29 18:03:38', null, null);
INSERT INTO `t_admuser` VALUES ('26', 'xorm@qq.com', 'xorm', 'xorm', 'xorm', 'bG90dXMta2luZ/4HH4oYDitm/MqIYSzxcjWU3pmM/lybBIYjj8AOdaMU', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', 'xorm', '2017-06-30 09:40:08', null, null);
INSERT INTO `t_admuser` VALUES ('27', 'xorm@qq.com', 'xorm', 'xorm', 'xorm', 'bG90dXMta2luZ/4HH4oYDitm/MqIYSzxcjWU3pmM/lybBIYjj8AOdaMU', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', 'xorm', '2017-06-29 18:03:34', null, null);
INSERT INTO `t_admuser` VALUES ('28', 'www@qq.com', 'www', 'www', 'www', 'bG90dXMta2luZ3wuzQfxVWSEMeD5S4kkfXE8V4bh5z6VPy/n7KOVNM1t', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', 'www', '2017-06-29 18:03:12', null, null);
INSERT INTO `t_admuser` VALUES ('29', 'aaaaaaa@qq.com', 'aaaaaaa', 'aaaaaaa', 'aaaaaaa', 'bG90dXMta2luZ+RiQHFLXbOiPu5gR5piPvuk1jPSf+TwPJBLniGaf75g', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', 'aaaaaaa', '2017-06-30 09:40:08', '2017-06-29 18:03:04', '2017-06-29 18:03:04');
INSERT INTO `t_admuser` VALUES ('30', 'aaaaaaa@qq.com', 'aaaaaaa', 'aaaaaaa', 'aaaaaaa', 'bG90dXMta2luZ+RiQHFLXbOiPu5gR5piPvuk1jPSf+TwPJBLniGaf75g', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', 'aaaaaaa', '2017-06-30 09:40:01', '2017-06-29 18:04:09', '2017-06-29 18:04:09');
INSERT INTO `t_admuser` VALUES ('31', 'zhang@qq.com', 'zhang', 'zhang', 'zhang', 'bG90dXMta2luZxS7+0bLcQq1z0dyadhW/HnU1bMc++Rmo3pDsVN+BpOk', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', 'zhang', '2017-06-30 11:14:53', '2017-06-30 09:40:25', '2017-06-30 11:04:14');
INSERT INTO `t_admuser` VALUES ('32', 'chen@qq.com', 'chen', 'chen', 'chen', 'bG90dXMta2luZzq9cuxjUtYIXYXjTwR43KfRTvgEjzwZhuKBBtZUcTlG', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', 'chen', '2017-06-30 11:14:53', '2017-06-30 10:39:15', '2017-06-30 10:41:38');
INSERT INTO `t_admuser` VALUES ('33', 'ddfasfd@qq.com', 'xxx', 'xxxx', 'fasfd', 'bG90dXMta2luZ80usIN8m0yWLCLS/4tUQbe0WAWIfwUdOb8TO1g7r2hg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', 'xxx', '2017-06-30 11:14:58', '2017-06-30 10:58:08', '2017-06-30 11:08:24');

-- ----------------------------
-- Table structure for `t_admusergroup`
-- ----------------------------
DROP TABLE IF EXISTS `t_admusergroup`;
CREATE TABLE `t_admusergroup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(255) NOT NULL DEFAULT '',
  `des` varchar(255) NOT NULL DEFAULT '',
  `createtime` datetime NOT NULL,
  `updatetime` datetime NOT NULL,
  `isdel` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admusergroup
-- ----------------------------
INSERT INTO `t_admusergroup` VALUES ('1', '超级管理员', '超级管理员', '2016-09-03 03:01:42', '2016-09-03 03:01:42', '1', null, null, null);
INSERT INTO `t_admusergroup` VALUES ('2', 'test', 'test', '2016-09-04 07:55:52', '2016-09-04 07:55:52', '1', '2017-06-30 11:15:07', null, '2017-06-30 10:58:27');
INSERT INTO `t_admusergroup` VALUES ('3', 'test2', 'test2', '2016-09-04 06:41:06', '2016-09-04 06:41:06', '0', '2017-06-30 11:15:07', null, '2017-06-30 09:50:09');
INSERT INTO `t_admusergroup` VALUES ('4', 'x', 'xx', '2017-06-20 07:33:43', '2017-06-20 07:33:43', '0', '2017-06-29 11:48:03', null, null);
INSERT INTO `t_admusergroup` VALUES ('7', 'aaa', 'aaa', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '2017-06-29 18:07:42', '2017-06-29 18:07:25', '2017-06-29 18:07:25');
INSERT INTO `t_admusergroup` VALUES ('8', 'test', 'test2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '2017-06-30 09:09:43', '2017-06-30 09:09:24', '2017-06-30 09:09:37');
INSERT INTO `t_admusergroup` VALUES ('9', '普通用户', '普通用户', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', null, '2017-06-30 11:15:24', '2017-06-30 11:15:38');

-- ----------------------------
-- Table structure for `t_admusergroupcheck`
-- ----------------------------
DROP TABLE IF EXISTS `t_admusergroupcheck`;
CREATE TABLE `t_admusergroupcheck` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(255) DEFAULT NULL,
  `des` varchar(255) DEFAULT NULL,
  `check` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admusergroupcheck
-- ----------------------------

-- ----------------------------
-- Table structure for `t_group_role_rel`
-- ----------------------------
DROP TABLE IF EXISTS `t_group_role_rel`;
CREATE TABLE `t_group_role_rel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `groupid` bigint(20) NOT NULL DEFAULT '0',
  `roleid` bigint(20) NOT NULL DEFAULT '0',
  `isdel` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` bigint(20) DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=566 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_group_role_rel
-- ----------------------------
INSERT INTO `t_group_role_rel` VALUES ('291', '2', '1', '1', null, null, '2017-06-30 10:41:21');
INSERT INTO `t_group_role_rel` VALUES ('292', '2', '18', '1', null, null, '2017-06-30 10:41:21');
INSERT INTO `t_group_role_rel` VALUES ('293', '2', '19', '1', null, null, '2017-06-30 10:41:21');
INSERT INTO `t_group_role_rel` VALUES ('294', '2', '20', '1', null, null, '2017-06-30 10:41:21');
INSERT INTO `t_group_role_rel` VALUES ('295', '2', '21', '1', null, null, '2017-06-30 10:41:21');
INSERT INTO `t_group_role_rel` VALUES ('296', '2', '2', '1', null, null, '2017-06-30 10:41:21');
INSERT INTO `t_group_role_rel` VALUES ('297', '2', '3', '1', null, null, '2017-06-30 10:41:21');
INSERT INTO `t_group_role_rel` VALUES ('298', '2', '6', '1', null, null, '2017-06-30 10:41:21');
INSERT INTO `t_group_role_rel` VALUES ('299', '2', '13', '1', null, null, '2017-06-30 10:41:21');
INSERT INTO `t_group_role_rel` VALUES ('300', '2', '15', '1', null, null, '2017-06-30 10:41:21');
INSERT INTO `t_group_role_rel` VALUES ('301', '2', '16', '1', null, null, '2017-06-30 10:41:21');
INSERT INTO `t_group_role_rel` VALUES ('302', '2', '4', '1', null, null, '2017-06-30 10:41:21');
INSERT INTO `t_group_role_rel` VALUES ('303', '2', '25', '1', null, null, '2017-06-30 10:41:21');
INSERT INTO `t_group_role_rel` VALUES ('304', '2', '26', '1', null, null, '2017-06-30 10:41:21');
INSERT INTO `t_group_role_rel` VALUES ('305', '2', '27', '1', null, null, '2017-06-30 10:41:21');
INSERT INTO `t_group_role_rel` VALUES ('306', '2', '28', '1', null, null, '2017-06-30 10:41:21');
INSERT INTO `t_group_role_rel` VALUES ('307', '2', '29', '1', null, null, '2017-06-30 10:41:21');
INSERT INTO `t_group_role_rel` VALUES ('308', '2', '30', '1', null, null, '2017-06-30 10:41:21');
INSERT INTO `t_group_role_rel` VALUES ('309', '2', '42', '1', null, null, '2017-06-30 10:41:21');
INSERT INTO `t_group_role_rel` VALUES ('310', '4', '1', '0', null, null, '2017-06-29 11:48:03');
INSERT INTO `t_group_role_rel` VALUES ('311', '4', '18', '0', null, null, '2017-06-29 11:48:03');
INSERT INTO `t_group_role_rel` VALUES ('312', '4', '19', '0', null, null, '2017-06-29 11:48:03');
INSERT INTO `t_group_role_rel` VALUES ('313', '4', '20', '0', null, null, '2017-06-29 11:48:03');
INSERT INTO `t_group_role_rel` VALUES ('314', '4', '21', '0', null, null, '2017-06-29 11:48:03');
INSERT INTO `t_group_role_rel` VALUES ('315', '4', '2', '0', null, null, '2017-06-29 11:48:03');
INSERT INTO `t_group_role_rel` VALUES ('316', '4', '3', '0', null, null, '2017-06-29 11:48:03');
INSERT INTO `t_group_role_rel` VALUES ('317', '4', '6', '0', null, null, '2017-06-29 11:48:03');
INSERT INTO `t_group_role_rel` VALUES ('318', '4', '13', '0', null, null, '2017-06-29 11:48:03');
INSERT INTO `t_group_role_rel` VALUES ('319', '4', '15', '0', null, null, '2017-06-29 11:48:03');
INSERT INTO `t_group_role_rel` VALUES ('320', '4', '16', '0', null, null, '2017-06-29 11:48:03');
INSERT INTO `t_group_role_rel` VALUES ('321', '4', '4', '0', null, null, '2017-06-29 11:48:03');
INSERT INTO `t_group_role_rel` VALUES ('322', '4', '25', '0', null, null, '2017-06-29 11:48:03');
INSERT INTO `t_group_role_rel` VALUES ('323', '4', '26', '0', null, null, '2017-06-29 11:48:03');
INSERT INTO `t_group_role_rel` VALUES ('324', '4', '27', '0', null, null, '2017-06-29 11:48:03');
INSERT INTO `t_group_role_rel` VALUES ('325', '4', '28', '0', null, null, '2017-06-29 11:48:03');
INSERT INTO `t_group_role_rel` VALUES ('326', '4', '29', '0', null, null, '2017-06-29 11:48:03');
INSERT INTO `t_group_role_rel` VALUES ('327', '4', '30', '0', null, null, '2017-06-29 11:48:03');
INSERT INTO `t_group_role_rel` VALUES ('328', '4', '42', '0', null, null, '2017-06-29 11:48:03');
INSERT INTO `t_group_role_rel` VALUES ('329', '4', '5', '0', null, null, '2017-06-29 11:48:03');
INSERT INTO `t_group_role_rel` VALUES ('330', '4', '32', '0', null, null, '2017-06-29 11:48:03');
INSERT INTO `t_group_role_rel` VALUES ('331', '4', '33', '0', null, null, '2017-06-29 11:48:03');
INSERT INTO `t_group_role_rel` VALUES ('332', '4', '34', '0', null, null, '2017-06-29 11:48:03');
INSERT INTO `t_group_role_rel` VALUES ('333', '4', '35', '0', null, null, '2017-06-29 11:48:03');
INSERT INTO `t_group_role_rel` VALUES ('334', '4', '36', '0', null, null, '2017-06-29 11:48:03');
INSERT INTO `t_group_role_rel` VALUES ('335', '4', '37', '0', null, null, '2017-06-29 11:48:03');
INSERT INTO `t_group_role_rel` VALUES ('336', '4', '38', '0', null, null, '2017-06-29 11:48:03');
INSERT INTO `t_group_role_rel` VALUES ('337', '4', '43', '0', null, null, '2017-06-29 11:48:03');
INSERT INTO `t_group_role_rel` VALUES ('344', '1', '0', '0', '1498714618', '1498714618', null);
INSERT INTO `t_group_role_rel` VALUES ('345', '1', '1', '0', '1498714618', '1498714618', null);
INSERT INTO `t_group_role_rel` VALUES ('346', '1', '18', '0', '1498714618', '1498714618', null);
INSERT INTO `t_group_role_rel` VALUES ('347', '1', '19', '0', '1498714618', '1498714618', null);
INSERT INTO `t_group_role_rel` VALUES ('348', '1', '20', '0', '1498714618', '1498714618', null);
INSERT INTO `t_group_role_rel` VALUES ('349', '1', '21', '0', '1498714618', '1498714618', null);
INSERT INTO `t_group_role_rel` VALUES ('350', '1', '46', '0', '1498714618', '1498714618', null);
INSERT INTO `t_group_role_rel` VALUES ('351', '1', '2', '0', '1498714618', '1498714618', null);
INSERT INTO `t_group_role_rel` VALUES ('352', '1', '3', '0', '1498714618', '1498714618', null);
INSERT INTO `t_group_role_rel` VALUES ('353', '1', '6', '0', '1498714618', '1498714618', null);
INSERT INTO `t_group_role_rel` VALUES ('354', '1', '13', '0', '1498714618', '1498714618', null);
INSERT INTO `t_group_role_rel` VALUES ('355', '1', '15', '0', '1498714618', '1498714618', null);
INSERT INTO `t_group_role_rel` VALUES ('356', '1', '16', '0', '1498714618', '1498714618', null);
INSERT INTO `t_group_role_rel` VALUES ('357', '1', '4', '0', '1498714618', '1498714618', null);
INSERT INTO `t_group_role_rel` VALUES ('358', '1', '25', '0', '1498714618', '1498714618', null);
INSERT INTO `t_group_role_rel` VALUES ('359', '1', '26', '0', '1498714618', '1498714618', null);
INSERT INTO `t_group_role_rel` VALUES ('360', '1', '27', '0', '1498714618', '1498714618', null);
INSERT INTO `t_group_role_rel` VALUES ('361', '1', '28', '0', '1498714618', '1498714618', null);
INSERT INTO `t_group_role_rel` VALUES ('362', '1', '29', '0', '1498714618', '1498714618', null);
INSERT INTO `t_group_role_rel` VALUES ('363', '1', '30', '0', '1498714618', '1498714618', null);
INSERT INTO `t_group_role_rel` VALUES ('364', '1', '42', '0', '1498714618', '1498714618', null);
INSERT INTO `t_group_role_rel` VALUES ('365', '1', '5', '0', '1498714618', '1498714618', null);
INSERT INTO `t_group_role_rel` VALUES ('366', '1', '32', '0', '1498714618', '1498714618', null);
INSERT INTO `t_group_role_rel` VALUES ('367', '1', '33', '0', '1498714618', '1498714618', null);
INSERT INTO `t_group_role_rel` VALUES ('368', '1', '34', '0', '1498714618', '1498714618', null);
INSERT INTO `t_group_role_rel` VALUES ('369', '1', '35', '0', '1498714618', '1498714618', null);
INSERT INTO `t_group_role_rel` VALUES ('370', '1', '36', '0', '1498714618', '1498714618', null);
INSERT INTO `t_group_role_rel` VALUES ('371', '1', '37', '0', '1498714618', '1498714618', null);
INSERT INTO `t_group_role_rel` VALUES ('372', '1', '38', '0', '1498714618', '1498714618', null);
INSERT INTO `t_group_role_rel` VALUES ('373', '1', '43', '0', '1498714618', '1498714618', null);
INSERT INTO `t_group_role_rel` VALUES ('374', '1', '50', '0', '1498714618', '1498714618', null);
INSERT INTO `t_group_role_rel` VALUES ('375', '1', '70', '0', '1498714618', '1498714618', null);
INSERT INTO `t_group_role_rel` VALUES ('376', '1', '1', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('377', '1', '18', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('378', '1', '19', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('379', '1', '20', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('380', '1', '21', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('381', '1', '46', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('382', '1', '2', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('383', '1', '3', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('384', '1', '6', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('385', '1', '13', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('386', '1', '15', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('387', '1', '16', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('388', '1', '4', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('389', '1', '25', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('390', '1', '26', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('391', '1', '27', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('392', '1', '28', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('393', '1', '29', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('394', '1', '30', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('395', '1', '42', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('396', '1', '5', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('397', '1', '32', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('398', '1', '33', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('399', '1', '34', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('400', '1', '35', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('401', '1', '36', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('402', '1', '37', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('403', '1', '38', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('404', '1', '43', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('405', '3', '1', '0', '2017', '2017', '2017-06-30 09:49:03');
INSERT INTO `t_group_role_rel` VALUES ('406', '3', '18', '0', '2017', '2017', '2017-06-30 09:49:03');
INSERT INTO `t_group_role_rel` VALUES ('407', '3', '19', '0', '2017', '2017', '2017-06-30 09:49:03');
INSERT INTO `t_group_role_rel` VALUES ('408', '3', '20', '0', '2017', '2017', '2017-06-30 09:49:03');
INSERT INTO `t_group_role_rel` VALUES ('409', '3', '21', '0', '2017', '2017', '2017-06-30 09:49:03');
INSERT INTO `t_group_role_rel` VALUES ('410', '3', '46', '0', '2017', '2017', '2017-06-30 09:49:03');
INSERT INTO `t_group_role_rel` VALUES ('411', '1', '1', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('412', '1', '18', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('413', '1', '19', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('414', '1', '20', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('415', '1', '21', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('416', '1', '46', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('417', '1', '2', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('418', '1', '3', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('419', '1', '6', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('420', '1', '13', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('421', '1', '15', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('422', '1', '16', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('423', '1', '4', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('424', '1', '25', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('425', '1', '26', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('426', '1', '27', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('427', '1', '28', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('428', '1', '29', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('429', '1', '30', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('430', '1', '42', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('431', '1', '5', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('432', '1', '32', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('433', '1', '33', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('434', '1', '34', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('435', '1', '35', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('436', '1', '36', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('437', '1', '37', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('438', '1', '38', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('439', '8', '1', '0', '2017', '2017', '2017-06-30 09:09:37');
INSERT INTO `t_group_role_rel` VALUES ('440', '8', '18', '0', '2017', '2017', '2017-06-30 09:09:37');
INSERT INTO `t_group_role_rel` VALUES ('441', '8', '19', '0', '2017', '2017', '2017-06-30 09:09:37');
INSERT INTO `t_group_role_rel` VALUES ('442', '8', '20', '0', '2017', '2017', '2017-06-30 09:09:37');
INSERT INTO `t_group_role_rel` VALUES ('443', '8', '21', '0', '2017', '2017', '2017-06-30 09:09:37');
INSERT INTO `t_group_role_rel` VALUES ('444', '8', '46', '0', '2017', '2017', '2017-06-30 09:09:37');
INSERT INTO `t_group_role_rel` VALUES ('445', '8', '1', '0', '2017', '2017', '2017-06-30 09:09:43');
INSERT INTO `t_group_role_rel` VALUES ('446', '8', '18', '0', '2017', '2017', '2017-06-30 09:09:43');
INSERT INTO `t_group_role_rel` VALUES ('447', '8', '19', '0', '2017', '2017', '2017-06-30 09:09:43');
INSERT INTO `t_group_role_rel` VALUES ('448', '8', '20', '0', '2017', '2017', '2017-06-30 09:09:43');
INSERT INTO `t_group_role_rel` VALUES ('449', '8', '21', '0', '2017', '2017', '2017-06-30 09:09:43');
INSERT INTO `t_group_role_rel` VALUES ('450', '8', '46', '0', '2017', '2017', '2017-06-30 09:09:43');
INSERT INTO `t_group_role_rel` VALUES ('451', '3', '1', '0', '2017', '2017', '2017-06-30 09:50:09');
INSERT INTO `t_group_role_rel` VALUES ('452', '3', '18', '0', '2017', '2017', '2017-06-30 09:50:09');
INSERT INTO `t_group_role_rel` VALUES ('453', '3', '19', '0', '2017', '2017', '2017-06-30 09:50:09');
INSERT INTO `t_group_role_rel` VALUES ('454', '3', '20', '0', '2017', '2017', '2017-06-30 09:50:09');
INSERT INTO `t_group_role_rel` VALUES ('455', '3', '21', '0', '2017', '2017', '2017-06-30 09:50:09');
INSERT INTO `t_group_role_rel` VALUES ('456', '3', '2', '0', '2017', '2017', '2017-06-30 09:50:09');
INSERT INTO `t_group_role_rel` VALUES ('457', '3', '3', '0', '2017', '2017', '2017-06-30 09:50:09');
INSERT INTO `t_group_role_rel` VALUES ('458', '3', '6', '0', '2017', '2017', '2017-06-30 09:50:09');
INSERT INTO `t_group_role_rel` VALUES ('459', '3', '13', '0', '2017', '2017', '2017-06-30 09:50:09');
INSERT INTO `t_group_role_rel` VALUES ('460', '3', '15', '0', '2017', '2017', '2017-06-30 09:50:09');
INSERT INTO `t_group_role_rel` VALUES ('461', '3', '16', '0', '2017', '2017', '2017-06-30 09:50:09');
INSERT INTO `t_group_role_rel` VALUES ('462', '3', '4', '0', '2017', '2017', '2017-06-30 09:50:09');
INSERT INTO `t_group_role_rel` VALUES ('463', '3', '25', '0', '2017', '2017', '2017-06-30 09:50:09');
INSERT INTO `t_group_role_rel` VALUES ('464', '3', '26', '0', '2017', '2017', '2017-06-30 09:50:09');
INSERT INTO `t_group_role_rel` VALUES ('465', '3', '27', '0', '2017', '2017', '2017-06-30 09:50:09');
INSERT INTO `t_group_role_rel` VALUES ('466', '3', '28', '0', '2017', '2017', '2017-06-30 09:50:09');
INSERT INTO `t_group_role_rel` VALUES ('467', '3', '29', '0', '2017', '2017', '2017-06-30 09:50:09');
INSERT INTO `t_group_role_rel` VALUES ('468', '3', '30', '0', '2017', '2017', '2017-06-30 09:50:09');
INSERT INTO `t_group_role_rel` VALUES ('469', '3', '42', '0', '2017', '2017', '2017-06-30 09:50:09');
INSERT INTO `t_group_role_rel` VALUES ('470', '3', '5', '0', '2017', '2017', '2017-06-30 09:50:09');
INSERT INTO `t_group_role_rel` VALUES ('471', '3', '32', '0', '2017', '2017', '2017-06-30 09:50:09');
INSERT INTO `t_group_role_rel` VALUES ('472', '3', '33', '0', '2017', '2017', '2017-06-30 09:50:09');
INSERT INTO `t_group_role_rel` VALUES ('473', '3', '34', '0', '2017', '2017', '2017-06-30 09:50:09');
INSERT INTO `t_group_role_rel` VALUES ('474', '3', '35', '0', '2017', '2017', '2017-06-30 09:50:09');
INSERT INTO `t_group_role_rel` VALUES ('475', '3', '36', '0', '2017', '2017', '2017-06-30 09:50:09');
INSERT INTO `t_group_role_rel` VALUES ('476', '3', '37', '0', '2017', '2017', '2017-06-30 09:50:09');
INSERT INTO `t_group_role_rel` VALUES ('477', '3', '38', '0', '2017', '2017', '2017-06-30 09:50:09');
INSERT INTO `t_group_role_rel` VALUES ('478', '3', '44', '0', '2017', '2017', '2017-06-30 09:50:09');
INSERT INTO `t_group_role_rel` VALUES ('479', '3', '43', '0', '2017', '2017', '2017-06-30 09:50:09');
INSERT INTO `t_group_role_rel` VALUES ('480', '3', '1', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('481', '3', '18', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('482', '3', '19', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('483', '3', '20', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('484', '3', '21', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('485', '3', '2', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('486', '3', '3', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('487', '3', '6', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('488', '3', '13', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('489', '3', '15', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('490', '3', '16', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('491', '3', '4', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('492', '3', '25', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('493', '3', '26', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('494', '3', '27', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('495', '3', '28', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('496', '3', '29', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('497', '3', '30', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('498', '3', '42', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('499', '3', '5', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('500', '3', '32', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('501', '3', '33', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('502', '3', '34', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('503', '3', '35', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('504', '3', '36', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('505', '3', '37', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('506', '3', '38', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('507', '3', '44', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('508', '3', '43', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('509', '2', '1', '0', '2017', '2017', '2017-06-30 10:58:27');
INSERT INTO `t_group_role_rel` VALUES ('510', '2', '18', '0', '2017', '2017', '2017-06-30 10:58:27');
INSERT INTO `t_group_role_rel` VALUES ('511', '2', '19', '0', '2017', '2017', '2017-06-30 10:58:27');
INSERT INTO `t_group_role_rel` VALUES ('512', '2', '20', '0', '2017', '2017', '2017-06-30 10:58:27');
INSERT INTO `t_group_role_rel` VALUES ('513', '2', '21', '0', '2017', '2017', '2017-06-30 10:58:27');
INSERT INTO `t_group_role_rel` VALUES ('514', '2', '2', '0', '2017', '2017', '2017-06-30 10:58:27');
INSERT INTO `t_group_role_rel` VALUES ('515', '2', '3', '0', '2017', '2017', '2017-06-30 10:58:27');
INSERT INTO `t_group_role_rel` VALUES ('516', '2', '6', '0', '2017', '2017', '2017-06-30 10:58:27');
INSERT INTO `t_group_role_rel` VALUES ('517', '2', '13', '0', '2017', '2017', '2017-06-30 10:58:27');
INSERT INTO `t_group_role_rel` VALUES ('518', '2', '15', '0', '2017', '2017', '2017-06-30 10:58:27');
INSERT INTO `t_group_role_rel` VALUES ('519', '2', '16', '0', '2017', '2017', '2017-06-30 10:58:27');
INSERT INTO `t_group_role_rel` VALUES ('520', '2', '4', '0', '2017', '2017', '2017-06-30 10:58:27');
INSERT INTO `t_group_role_rel` VALUES ('521', '2', '25', '0', '2017', '2017', '2017-06-30 10:58:27');
INSERT INTO `t_group_role_rel` VALUES ('522', '2', '26', '0', '2017', '2017', '2017-06-30 10:58:27');
INSERT INTO `t_group_role_rel` VALUES ('523', '2', '27', '0', '2017', '2017', '2017-06-30 10:58:27');
INSERT INTO `t_group_role_rel` VALUES ('524', '2', '28', '0', '2017', '2017', '2017-06-30 10:58:27');
INSERT INTO `t_group_role_rel` VALUES ('525', '2', '29', '0', '2017', '2017', '2017-06-30 10:58:27');
INSERT INTO `t_group_role_rel` VALUES ('526', '2', '30', '0', '2017', '2017', '2017-06-30 10:58:27');
INSERT INTO `t_group_role_rel` VALUES ('527', '2', '42', '0', '2017', '2017', '2017-06-30 10:58:27');
INSERT INTO `t_group_role_rel` VALUES ('528', '2', '1', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('529', '2', '18', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('530', '2', '19', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('531', '2', '20', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('532', '2', '21', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('533', '2', '2', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('534', '2', '3', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('535', '2', '6', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('536', '2', '13', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('537', '2', '15', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('538', '2', '16', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('539', '2', '4', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('540', '2', '25', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('541', '2', '26', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('542', '2', '27', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('543', '2', '28', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('544', '2', '29', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('545', '2', '30', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('546', '2', '42', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('547', '2', '5', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('548', '2', '32', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('549', '2', '33', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('550', '2', '34', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('551', '2', '35', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('552', '2', '36', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('553', '2', '37', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('554', '2', '38', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('555', '2', '44', '0', '2017', '2017', '2017-06-30 11:15:07');
INSERT INTO `t_group_role_rel` VALUES ('556', '1', '1', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('557', '1', '18', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('558', '1', '19', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('559', '1', '20', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('560', '1', '21', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('561', '9', '1', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('562', '9', '18', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('563', '9', '19', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('564', '9', '20', '0', '2017', '2017', null);
INSERT INTO `t_group_role_rel` VALUES ('565', '9', '21', '0', '2017', '2017', null);

-- ----------------------------
-- Table structure for `t_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `roleurl` varchar(255) NOT NULL DEFAULT '',
  `ismenu` tinyint(4) NOT NULL DEFAULT '0',
  `des` varchar(255) NOT NULL DEFAULT '',
  `module` varchar(50) NOT NULL DEFAULT '',
  `action` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '0', '公共权限', '', '1', '公共权限 所有账号都应该有', '', '');
INSERT INTO `t_role` VALUES ('2', '0', '账号管理', '', '0', '账号管理目录', '', '');
INSERT INTO `t_role` VALUES ('3', '2', '管理员管理', 'admuser/list', '0', '', 'AdmUserController', 'List');
INSERT INTO `t_role` VALUES ('4', '2', '管理员组管理', 'admusergroup/list', '0', '', 'AdmUserGroupController', 'List');
INSERT INTO `t_role` VALUES ('5', '2', '权限管理', 'role/list', '0', '', 'RoleController', 'List');
INSERT INTO `t_role` VALUES ('6', '3', '获取管理员列表', 'admuser/list', '1', '', 'AdmUserController', 'Gridlist');
INSERT INTO `t_role` VALUES ('13', '3', '查看所有管理员', 'admuser/gridlist', '1', '', 'AdmUserController', 'Gridlist');
INSERT INTO `t_role` VALUES ('15', '3', '进入添加管理员', 'admuser/toaddadmuser', '1', '进入添加管理员页面', 'AdmUserController', 'Toaddadmuser');
INSERT INTO `t_role` VALUES ('16', '3', '添加管理员', 'admuser/addadmuser', '1', '执行添加管理员操作', 'AdmUserController', 'Addadmuser');
INSERT INTO `t_role` VALUES ('18', '1', '进入欢迎页', '/welcome', '1', '进入欢迎页', 'MainController', 'Welcome');
INSERT INTO `t_role` VALUES ('19', '1', '展示导航页面', '/leftMenu', '1', '展示导航页面', 'MainController', 'LeftMenu');
INSERT INTO `t_role` VALUES ('20', '1', '展示头部信息', '/header', '1', '展示头部信息', 'MainController', 'Header');
INSERT INTO `t_role` VALUES ('21', '1', '获取菜单数据', '/loadMenu', '1', '获取菜单数据', 'MainController', 'LoadMenu');
INSERT INTO `t_role` VALUES ('25', '4', '进入添加页面', '', '1', '进入添加页面', 'AdmUserGroupController', 'Toadd');
INSERT INTO `t_role` VALUES ('26', '4', '添加管理员组', '', '1', '添加管理员组', 'AdmUserGroupController', 'Addadmusergroup');
INSERT INTO `t_role` VALUES ('27', '4', '进入修改页面', '', '1', '进入修改页面', 'AdmUserGroupController', 'Tomodify');
INSERT INTO `t_role` VALUES ('28', '4', '修改管理员组', '', '1', '修改管理员组', 'AdmUserGroupController', 'Modifyadmusergroup');
INSERT INTO `t_role` VALUES ('29', '4', '删除管理员组', '', '1', '删除管理员组', 'AdmUserGroupController', 'Delete');
INSERT INTO `t_role` VALUES ('30', '4', '获取权限树', '', '1', '添加管理员组的时候展示权限树', 'AdmUserGroupController', 'Loadtreechecked');
INSERT INTO `t_role` VALUES ('32', '5', '查询', '', '1', '查询列表', 'RoleController', 'Gridlist');
INSERT INTO `t_role` VALUES ('33', '5', '加载左侧树', '', '1', '加载左侧树', 'RoleController', 'Listtree');
INSERT INTO `t_role` VALUES ('34', '5', '进入添加页面', '', '1', '进入添加页面', 'RoleController', 'Toadd');
INSERT INTO `t_role` VALUES ('35', '5', '添加权限', '', '1', '添加权限', 'RoleController', 'Addrole');
INSERT INTO `t_role` VALUES ('36', '5', '进入修改页面', '', '1', '进入修改页面', 'RoleController', 'Tomodify');
INSERT INTO `t_role` VALUES ('37', '5', '修改权限', '', '1', '修改权限', 'RoleController', 'Modify');
INSERT INTO `t_role` VALUES ('38', '5', '删除权限', '', '1', '删除权限', 'RoleController', 'Deleterole');
INSERT INTO `t_role` VALUES ('42', '4', '查询', '', '1', '查询列表', 'AdmUserGroupController', 'Gridlist');
INSERT INTO `t_role` VALUES ('43', null, 'Root', '3123', '1', '根节点', '', '');

-- ----------------------------
-- Table structure for `t_role_tree`
-- ----------------------------
DROP TABLE IF EXISTS `t_role_tree`;
CREATE TABLE `t_role_tree` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `open` tinyint(1) DEFAULT NULL,
  `checked` tinyint(1) DEFAULT NULL,
  `roleurl` varchar(255) DEFAULT NULL,
  `click` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role_tree
-- ----------------------------

-- ----------------------------
-- Table structure for `t_user_group_rel`
-- ----------------------------
DROP TABLE IF EXISTS `t_user_group_rel`;
CREATE TABLE `t_user_group_rel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) NOT NULL DEFAULT '0',
  `groupid` bigint(20) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_group_rel
-- ----------------------------
INSERT INTO `t_user_group_rel` VALUES ('4', '1', '1', null, null, null);
INSERT INTO `t_user_group_rel` VALUES ('7', '2', '2', '2017-06-30 11:14:53', null, null);
INSERT INTO `t_user_group_rel` VALUES ('8', '3', '1', null, null, null);
INSERT INTO `t_user_group_rel` VALUES ('9', '4', '2', '2017-06-30 11:14:53', null, null);
INSERT INTO `t_user_group_rel` VALUES ('10', '5', '2', '2017-06-30 11:14:53', null, null);
INSERT INTO `t_user_group_rel` VALUES ('11', '6', '2', '2017-06-29 18:07:01', null, null);
INSERT INTO `t_user_group_rel` VALUES ('12', '7', '2', '2017-06-30 11:14:53', null, null);
INSERT INTO `t_user_group_rel` VALUES ('13', '8', '2', '2017-06-30 11:14:53', null, null);
INSERT INTO `t_user_group_rel` VALUES ('14', '9', '2', '2017-06-30 11:14:53', null, null);
INSERT INTO `t_user_group_rel` VALUES ('15', '10', '2', '2017-06-30 11:14:53', null, null);
INSERT INTO `t_user_group_rel` VALUES ('16', '11', '2', '2017-06-30 11:14:53', null, null);
INSERT INTO `t_user_group_rel` VALUES ('17', '12', '2', '2017-06-30 11:14:53', null, null);
INSERT INTO `t_user_group_rel` VALUES ('18', '13', '1', null, null, null);
INSERT INTO `t_user_group_rel` VALUES ('19', '14', '1', null, null, null);
INSERT INTO `t_user_group_rel` VALUES ('20', '15', '1', null, null, null);
INSERT INTO `t_user_group_rel` VALUES ('21', '16', '2', '2017-06-30 11:14:53', null, null);
INSERT INTO `t_user_group_rel` VALUES ('22', '1', '1', null, null, null);
INSERT INTO `t_user_group_rel` VALUES ('23', '23', '1', null, null, null);
INSERT INTO `t_user_group_rel` VALUES ('24', '23', '1', null, null, null);
INSERT INTO `t_user_group_rel` VALUES ('25', '24', '1', null, null, null);
INSERT INTO `t_user_group_rel` VALUES ('26', '25', '2', '2017-06-30 11:14:53', null, null);
INSERT INTO `t_user_group_rel` VALUES ('27', '1', '1', null, null, null);
INSERT INTO `t_user_group_rel` VALUES ('28', '1', '3', '2017-06-30 11:14:53', null, null);
INSERT INTO `t_user_group_rel` VALUES ('29', '1', '1', null, null, null);
INSERT INTO `t_user_group_rel` VALUES ('30', '1', '1', null, '2017-06-29 18:03:04', '2017-06-29 18:03:04');
INSERT INTO `t_user_group_rel` VALUES ('31', '1', '1', null, '2017-06-29 18:04:09', '2017-06-29 18:04:09');
INSERT INTO `t_user_group_rel` VALUES ('32', '6', '1', null, '2017-06-29 18:07:01', '2017-06-29 18:07:01');
INSERT INTO `t_user_group_rel` VALUES ('33', '6', '3', '2017-06-30 11:14:53', '2017-06-29 18:07:01', '2017-06-29 18:07:01');
INSERT INTO `t_user_group_rel` VALUES ('34', '1', '3', '2017-06-30 11:14:53', '2017-06-30 09:40:25', '2017-06-30 09:40:25');
INSERT INTO `t_user_group_rel` VALUES ('35', '31', '3', '2017-06-30 11:04:14', '2017-06-30 09:49:24', '2017-06-30 09:49:24');
INSERT INTO `t_user_group_rel` VALUES ('36', '1', '2', '2017-06-30 11:14:53', '2017-06-30 10:39:15', '2017-06-30 10:39:15');
INSERT INTO `t_user_group_rel` VALUES ('37', '32', '2', '2017-06-30 11:14:53', '2017-06-30 10:41:38', '2017-06-30 10:41:38');
INSERT INTO `t_user_group_rel` VALUES ('38', '1', '3', '2017-06-30 11:14:53', '2017-06-30 10:58:08', '2017-06-30 10:58:08');
INSERT INTO `t_user_group_rel` VALUES ('39', '31', '1', null, '2017-06-30 11:04:14', '2017-06-30 11:04:14');
INSERT INTO `t_user_group_rel` VALUES ('40', '33', '3', '2017-06-30 11:14:53', '2017-06-30 11:08:24', '2017-06-30 11:08:24');

-- ----------------------------
-- Table structure for `user_group_rel`
-- ----------------------------
DROP TABLE IF EXISTS `user_group_rel`;
CREATE TABLE `user_group_rel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) DEFAULT NULL,
  `groupid` bigint(20) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_group_rel
-- ----------------------------

/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : haoruituo

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-09-17 21:08:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for confs
-- ----------------------------
DROP TABLE IF EXISTS `confs`;
CREATE TABLE `confs` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `startTime` varchar(64) DEFAULT NULL COMMENT '设置开始时间',
  `endTime` varchar(64) DEFAULT NULL COMMENT '结束时间',
  `people` varchar(64) DEFAULT NULL COMMENT '人数',
  `fullTime` varchar(64) DEFAULT NULL COMMENT '报名人数满额时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of confs
-- ----------------------------
INSERT INTO `confs` VALUES ('1', '01:32', '23:51', '5', '');

-- ----------------------------
-- Table structure for counts
-- ----------------------------
DROP TABLE IF EXISTS `counts`;
CREATE TABLE `counts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `succesCounts` varchar(64) DEFAULT NULL COMMENT '成功次数',
  `failCounts` varchar(64) DEFAULT NULL COMMENT '失败次数',
  `startTime` varchar(64) DEFAULT NULL COMMENT '开始时间',
  `endTime` varchar(64) DEFAULT NULL COMMENT '结束时间',
  `createTime` varchar(64) DEFAULT NULL COMMENT '当前时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of counts
-- ----------------------------
INSERT INTO `counts` VALUES ('1', '29', null, '20:00', '20:07', '2020-02-13');
INSERT INTO `counts` VALUES ('2', '13', null, '01:32', '23:51', '2020-02-14');
INSERT INTO `counts` VALUES ('3', '1', null, '01:32', '23:51', '2020-02-18');
INSERT INTO `counts` VALUES ('4', '23', null, '01:32', '23:51', '2020-02-24');
INSERT INTO `counts` VALUES ('5', '12', null, '01:32', '23:51', '2020-02-25');
INSERT INTO `counts` VALUES ('6', '1', null, '01:32', '23:51', '2020-02-28');

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '访问页面次数主键',
  `fulls` varchar(255) DEFAULT NULL COMMENT '人数已满次数',
  `indexs` varchar(255) DEFAULT NULL COMMENT '首页',
  `over` varchar(255) DEFAULT NULL COMMENT '活动结束页面',
  `error` varchar(255) DEFAULT NULL COMMENT '失败页面次数',
  `createTime` varchar(64) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES ('2', '0', '108', '348', '0', '2020-02-13');
INSERT INTO `pages` VALUES ('3', '0', '26', '1', '0', '2020-02-14');
INSERT INTO `pages` VALUES ('4', '0', '1', '0', '0', '2020-02-15');
INSERT INTO `pages` VALUES ('5', '0', '3', '0', '0', '2020-02-18');
INSERT INTO `pages` VALUES ('6', '9', '256', '0', '0', '2020-02-24');
INSERT INTO `pages` VALUES ('7', '2', '92', '0', '0', '2020-02-25');
INSERT INTO `pages` VALUES ('8', '0', '3', '0', '0', '2020-02-28');

-- ----------------------------
-- Table structure for resp
-- ----------------------------
DROP TABLE IF EXISTS `resp`;
CREATE TABLE `resp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL COMMENT '名字',
  `image` longtext COMMENT '截图',
  `phone` varchar(64) DEFAULT NULL COMMENT '电话',
  `time` varchar(255) DEFAULT NULL COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resp
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `company` varchar(1024) DEFAULT NULL COMMENT '公司',
  `name` varchar(64) DEFAULT NULL COMMENT '姓名',
  `phone` varchar(64) DEFAULT NULL COMMENT '电话',
  `address` varchar(1024) DEFAULT NULL COMMENT '地址',
  `hrts` varchar(64) DEFAULT NULL COMMENT '是否是浩锐拓客户',
  `createTime` varchar(64) DEFAULT NULL COMMENT '插入时间',
  `fahuoTime` varchar(64) DEFAULT NULL COMMENT '快递发货时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=243 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('236', '永州锐好商业管理有限公司', 'admin', '15529546034', '广东省深圳市南山', '是', '2020-02-21 10:50:56', '2020-02-25');
INSERT INTO `user` VALUES ('237', '永州锐好商业管理有限公司', '常胜电器', '15529546031', '广东省深圳市南山', '是', '2020-02-21 11:03:03', '2020-02-25');
INSERT INTO `user` VALUES ('238', '永州锐好商业管理有限公司', '常胜电器', '15534331164', '深圳', '是', '2020-02-25 12:10:12', '2020-02-26');
INSERT INTO `user` VALUES ('239', '永州锐好商业管理有限公司', '常胜电器', '13823721132', '广东省深圳市南山', '是', '2020-02-25 15:39:05', '2020-02-25');

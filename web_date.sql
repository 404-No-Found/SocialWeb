/*
 Navicat Premium Data Transfer

 Source Server         : Mysql
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : web_date

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 21/12/2018 18:21:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for edu_experience
-- ----------------------------
DROP TABLE IF EXISTS `edu_experience`;
CREATE TABLE `edu_experience`  (
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `schoolName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `professional` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `startTime` date NULL DEFAULT NULL,
  `endTime` date NULL DEFAULT NULL,
  `recordEdu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `relatedEdu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `achievement` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of edu_experience
-- ----------------------------
INSERT INTO `edu_experience` VALUES ('111111', '1', '1', '2018-01-03', '2018-11-28', '初中', '1', '1');
INSERT INTO `edu_experience` VALUES ('123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `edu_experience` VALUES ('liuhuan', '南工院', 'java工程师', '2017-12-31', '2018-12-19', '初中', 'java', 'wu');
INSERT INTO `edu_experience` VALUES ('qqqqq1', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `edu_experience` VALUES ('xlqq', 'sss', 'java工程师', '2016-12-31', '2018-11-30', '大专', '', '');
INSERT INTO `edu_experience` VALUES ('yezijie', '南工院', 'java工程师', '2018-01-08', '2018-12-29', '初中', 'java', 'wu');

-- ----------------------------
-- Table structure for mid
-- ----------------------------
DROP TABLE IF EXISTS `mid`;
CREATE TABLE `mid`  (
  `id` int(11) NOT NULL,
  `releaser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `responser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `theme` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dateId` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `date`(`dateId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for personal_info
-- ----------------------------
DROP TABLE IF EXISTS `personal_info`;
CREATE TABLE `personal_info`  (
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `headPic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `realName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthday` date NULL DEFAULT NULL,
  `phoneNum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nowCity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `personalWebsite` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `School` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_info
-- ----------------------------
INSERT INTO `personal_info` VALUES ('yezijie', '../headPics/head_image1.jpg', 'yezijie', '1980-01-01', '11111111111', '南京', '保密', '无', '835501665@qq.com', '羊山北路1号', '南工院', '华为');
INSERT INTO `personal_info` VALUES ('liuhuan', '../headPics/head_image4.jpeg', '刘欢', '1999-02-27', '18851999272', '南京', '保密', '无', '15191678056@163.com', '羊山北路1号', '南京工业职业技术学院', '小米科技');
INSERT INTO `personal_info` VALUES ('111111', '../headPics/', '', '1980-01-01', '', '', '保密', '', '', '', '', '');
INSERT INTO `personal_info` VALUES ('qqqqq1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personal_info` VALUES ('xlqq', '../headPics/head_imahe2.jpg', 'll', '1980-01-01', '', '', '保密', '', '', '', '', '');
INSERT INTO `personal_info` VALUES ('123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for registered
-- ----------------------------
DROP TABLE IF EXISTS `registered`;
CREATE TABLE `registered`  (
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of registered
-- ----------------------------
INSERT INTO `registered` VALUES ('111111', '2240883644@qq.com', '111111');
INSERT INTO `registered` VALUES ('123456', '1294257048@qq.com', '123456');
INSERT INTO `registered` VALUES ('liuhuan', '15191678056@163.com', '123456');
INSERT INTO `registered` VALUES ('qqqqq1', '123456@qq.com', 'xuliang');
INSERT INTO `registered` VALUES ('xlqq', '2637036982@qq.com', 'xuliang0921');
INSERT INTO `registered` VALUES ('yezijie', 'ye835501665@163.com', '123456');

-- ----------------------------
-- Table structure for releasers
-- ----------------------------
DROP TABLE IF EXISTS `releasers`;
CREATE TABLE `releasers`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `headPic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `theme` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cost` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` date NULL DEFAULT NULL,
  `place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dateDescription` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `releaser_name`(`username`) USING BTREE,
  CONSTRAINT `releaser_name` FOREIGN KEY (`username`) REFERENCES `registered` (`username`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of releasers
-- ----------------------------
INSERT INTO `releasers` VALUES (1, 'yezijie', '../headPics/head_image.jpg', '看电影', 'AA', '2018-08-14', '402', 'w');
INSERT INTO `releasers` VALUES (2, 'yezijie', '../headPics/head_image1.jpg', '旅行', 'AA', '2018-08-14', '402', 'w');
INSERT INTO `releasers` VALUES (3, 'yezijie', '../headPics/head_image2.jpg', '喝咖啡', 'AA', '2018-08-14', '402', '1');
INSERT INTO `releasers` VALUES (4, 'yezijie', '../headPics/head_image3.jpg', '唱歌', 'AA', '2018-08-14', '402', '1');
INSERT INTO `releasers` VALUES (5, 'yezijie', '../headPics/head_image4.jpeg', '吃饭', 'AA', '2018-08-14', '402', 'wdadas');
INSERT INTO `releasers` VALUES (6, 'yezijie', '../headPics/head_image2.jpg', '吃饭', 'AA', '2018-08-14', '402', 'wdadas');
INSERT INTO `releasers` VALUES (13, 'yezijie', '../headPics/head_image3.jpg', '喝咖啡', 'AA', '2018-08-14', '402', '2qe');
INSERT INTO `releasers` VALUES (14, 'yezijie', '../headPics/head_image1.jpg', '其他', 'AA', '2018-08-14', '402', 'asdas');
INSERT INTO `releasers` VALUES (16, 'yezijie', '../headPics/head_image1.jpg', '购物', 'me', '2018-08-14', '402', 'wefsadfs');
INSERT INTO `releasers` VALUES (17, 'yezijie', '../headPics/head_image3.jpg', '吃饭', 'me', '2018-08-14', '402', '显卡苍井空');
INSERT INTO `releasers` VALUES (18, 'yezijie', '../headPics/headpic.jpg', '运动', 'AA', '2018-08-14', '402', '无');
INSERT INTO `releasers` VALUES (19, 'yezijie', '../headPics/headpic.jpg', '看电影', 'AA', '2018-08-14', '402', 'sasd');
INSERT INTO `releasers` VALUES (20, '111111', '../headPics/head_imahe2.jpg', '其他', 'AA', NULL, '1', '');
INSERT INTO `releasers` VALUES (21, '111111', '../headPics/head_imahe2.jpg', '唱歌', 'me', NULL, '1', '1');
INSERT INTO `releasers` VALUES (22, 'xlqq', '../headPics/head_imahe2.jpg', '旅行', 'me', NULL, '111', 'jj');
INSERT INTO `releasers` VALUES (23, 'yezijie', '../headPics/head_image1.jpg', '喝咖啡', 'me', '2018-08-14', '402', 'wu');

-- ----------------------------
-- Table structure for work_experience
-- ----------------------------
DROP TABLE IF EXISTS `work_experience`;
CREATE TABLE `work_experience`  (
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `companyName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jobTitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `startTimes` date NULL DEFAULT NULL,
  `endTimes` date NULL DEFAULT NULL,
  `workCity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `relatedWork` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jobDescription` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of work_experience
-- ----------------------------
INSERT INTO `work_experience` VALUES ('111111', '1', '1', '2017-12-31', '2018-12-04', '1', '1', '在职期间做了什么工作，解决了什么问题，做出了什么贡献？');
INSERT INTO `work_experience` VALUES ('123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `work_experience` VALUES ('liuhuan', '小米', 'Android开发人员', '2017-12-31', '2018-11-30', '如:上海', '标签:如java可使用逗号，分号，来分隔', '在职期间做了什么工作，解决了什么问题，做出了什么贡献？');
INSERT INTO `work_experience` VALUES ('qqqqq1', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `work_experience` VALUES ('xlqq', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `work_experience` VALUES ('yezijie', '小米', 'Android开发人员', '2018-01-12', '2018-12-29', '上海', 'java', 'wu');

-- ----------------------------
-- Triggers structure for table registered
-- ----------------------------
DROP TRIGGER IF EXISTS `registered1`;
delimiter ;;
CREATE TRIGGER `registered1` AFTER INSERT ON `registered` FOR EACH ROW insert into edu_experience(username) values (new.username)
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table registered
-- ----------------------------
DROP TRIGGER IF EXISTS `registered2`;
delimiter ;;
CREATE TRIGGER `registered2` AFTER INSERT ON `registered` FOR EACH ROW insert into work_experience(username) values (new.username)
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table registered
-- ----------------------------
DROP TRIGGER IF EXISTS `registered3`;
delimiter ;;
CREATE TRIGGER `registered3` AFTER INSERT ON `registered` FOR EACH ROW insert into personal_info(username) values (new.username)
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;

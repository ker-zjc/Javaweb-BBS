/*
 Navicat Premium Data Transfer

 Source Server         : 122222
 Source Server Type    : MySQL
 Source Server Version : 50537
 Source Host           : localhost:3306
 Source Schema         : bbs

 Target Server Type    : MySQL
 Target Server Version : 50537
 File Encoding         : 65001

 Date: 21/10/2021 15:41:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dtproperties
-- ----------------------------
DROP TABLE IF EXISTS `dtproperties`;
CREATE TABLE `dtproperties`  (
  `id` int(11) NOT NULL,
  `objectid` int(11) NULL DEFAULT NULL,
  `property` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uvalue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lvalue` longblob NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`, `property`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dtproperties
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_board
-- ----------------------------
DROP TABLE IF EXISTS `tbl_board`;
CREATE TABLE `tbl_board`  (
  `boardId` int(11) NOT NULL,
  `boardName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '板块名称',
  `parentId` int(11) NOT NULL,
  PRIMARY KEY (`boardId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_board
-- ----------------------------
INSERT INTO `tbl_board` VALUES (1, '.NET技术', 0);
INSERT INTO `tbl_board` VALUES (2, 'Java技术', 0);
INSERT INTO `tbl_board` VALUES (3, '数据库技术', 0);
INSERT INTO `tbl_board` VALUES (4, 'C#语言', 1);
INSERT INTO `tbl_board` VALUES (5, 'WinForms', 1);
INSERT INTO `tbl_board` VALUES (6, 'ADO.NET', 1);
INSERT INTO `tbl_board` VALUES (7, 'ASP.NET', 1);
INSERT INTO `tbl_board` VALUES (8, 'Java基础', 2);
INSERT INTO `tbl_board` VALUES (9, 'JSP技术', 2);
INSERT INTO `tbl_board` VALUES (10, 'Servlet技术', 2);
INSERT INTO `tbl_board` VALUES (11, 'Eclipse应用', 2);
INSERT INTO `tbl_board` VALUES (12, 'SQL Server基础', 3);
INSERT INTO `tbl_board` VALUES (13, 'SQL Server高级', 3);
INSERT INTO `tbl_board` VALUES (14, '娱乐', 0);
INSERT INTO `tbl_board` VALUES (15, '灌水乐园', 14);

-- ----------------------------
-- Table structure for tbl_reply
-- ----------------------------
DROP TABLE IF EXISTS `tbl_reply`;
CREATE TABLE `tbl_reply`  (
  `replyId` int(11) NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `publishTime` datetime NOT NULL,
  `modifyTime` datetime NOT NULL,
  `uid` int(11) NOT NULL,
  `topicId` int(11) NOT NULL,
  PRIMARY KEY (`replyId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_reply
-- ----------------------------
INSERT INTO `tbl_reply` VALUES (1, '我要飞的更高', '飞的更高', '2007-07-25 00:00:00', '2007-09-27 13:48:16', 64, 3);
INSERT INTO `tbl_reply` VALUES (2, '回楼主', '回复测试', '2007-07-26 11:17:02', '2007-07-27 09:50:51', 1, 0);
INSERT INTO `tbl_reply` VALUES (3, '回楼主', '回复测试', '2007-07-26 11:35:39', '2007-07-27 09:50:51', 1, 5);
INSERT INTO `tbl_reply` VALUES (4, '回楼主', '回复测试', '2007-07-26 11:42:13', '2007-07-27 09:50:51', 1, 5);
INSERT INTO `tbl_reply` VALUES (5, '回楼主', '回复测试', '2007-07-26 11:58:02', '2007-07-27 09:50:51', 64, 6);
INSERT INTO `tbl_reply` VALUES (6, '回楼主', '回复测试', '2007-07-26 12:42:23', '2007-07-27 09:50:51', 1, 6);
INSERT INTO `tbl_reply` VALUES (7, '回楼主', '回复测试', '2007-07-26 12:43:59', '2007-07-27 09:50:51', 1, 6);
INSERT INTO `tbl_reply` VALUES (8, '顶', '回复测试', '2007-07-26 14:27:15', '2007-07-27 09:50:51', 68, 4);
INSERT INTO `tbl_reply` VALUES (13, '顶', '回复测试', '2007-07-26 14:41:57', '2007-07-27 09:50:51', 68, 4);
INSERT INTO `tbl_reply` VALUES (14, '顶', '回复测试', '2007-07-26 16:12:35', '2007-07-27 09:50:51', 1, 64);
INSERT INTO `tbl_reply` VALUES (15, 're：', '回复测试', '2007-07-26 16:12:47', '2007-07-27 09:50:51', 1, 65);
INSERT INTO `tbl_reply` VALUES (16, 're：', '回复测试', '2007-07-26 18:08:04', '2007-07-27 09:50:51', 68, 65);
INSERT INTO `tbl_reply` VALUES (20, '顶', '回复测试1', '2007-07-27 09:08:33', '2007-07-27 09:50:51', 1, 69);
INSERT INTO `tbl_reply` VALUES (21, '哈哈', '回复测试', '2007-07-27 09:55:05', '2007-07-27 09:55:05', 68, 72);
INSERT INTO `tbl_reply` VALUES (23, 're：', '回复测试', '2007-07-27 10:51:48', '2007-07-27 10:51:48', 68, 33);
INSERT INTO `tbl_reply` VALUES (24, 're：', '回复测试', '2007-07-27 10:52:03', '2007-07-27 10:52:03', 68, 33);
INSERT INTO `tbl_reply` VALUES (25, '回楼主', '回复测试', '2007-07-27 10:52:08', '2007-07-27 10:52:08', 68, 33);
INSERT INTO `tbl_reply` VALUES (26, 're：', '回复测试', '2007-07-27 10:52:47', '2007-07-27 10:52:47', 68, 81);
INSERT INTO `tbl_reply` VALUES (27, 're：', '回复测试', '2007-07-27 10:52:52', '2007-07-27 10:52:52', 68, 81);
INSERT INTO `tbl_reply` VALUES (28, 're：', '回复测试', '2007-07-27 10:52:58', '2007-07-27 10:52:58', 68, 81);
INSERT INTO `tbl_reply` VALUES (29, '顶', '回复测试', '2007-07-27 10:53:04', '2007-07-27 10:53:04', 68, 81);
INSERT INTO `tbl_reply` VALUES (30, 're：', '回复测试', '2007-07-27 10:53:10', '2007-07-27 10:53:10', 68, 81);
INSERT INTO `tbl_reply` VALUES (31, '回楼主', '回复测试', '2007-07-27 10:53:15', '2007-07-27 10:53:15', 68, 81);
INSERT INTO `tbl_reply` VALUES (32, 're：', '回复测试', '2007-07-27 10:53:20', '2007-07-27 10:53:20', 68, 81);
INSERT INTO `tbl_reply` VALUES (33, '回楼主', '回复测试', '2007-07-27 10:53:24', '2007-07-27 10:53:24', 68, 81);
INSERT INTO `tbl_reply` VALUES (34, 're：', '回复测试', '2007-07-27 10:53:30', '2007-07-27 10:53:30', 68, 81);
INSERT INTO `tbl_reply` VALUES (35, '顶', '回复测试', '2007-07-27 10:53:35', '2007-07-27 10:53:35', 68, 81);
INSERT INTO `tbl_reply` VALUES (36, 're：', '回复测试', '2007-07-27 10:53:40', '2007-07-27 10:53:40', 68, 81);
INSERT INTO `tbl_reply` VALUES (37, '1', '     沙发 ', '2007-07-27 10:56:23', '2007-07-27 12:31:29', 68, 82);
INSERT INTO `tbl_reply` VALUES (38, '2', '                                    板凳', '2007-07-27 10:56:28', '2007-07-27 12:32:01', 68, 82);
INSERT INTO `tbl_reply` VALUES (39, '回复测试', '3', '2007-07-27 10:56:33', '2007-07-27 10:56:33', 68, 82);
INSERT INTO `tbl_reply` VALUES (40, '回复测试', '4', '2007-07-27 10:56:38', '2007-07-27 10:56:38', 68, 82);
INSERT INTO `tbl_reply` VALUES (41, '回复测试', '5', '2007-07-27 10:56:43', '2007-07-27 10:56:43', 68, 82);
INSERT INTO `tbl_reply` VALUES (42, '回复测试', '6', '2007-07-27 10:56:48', '2007-07-27 10:56:48', 68, 82);
INSERT INTO `tbl_reply` VALUES (43, '回复测试', '7', '2007-07-27 10:56:54', '2007-07-27 10:56:54', 68, 82);
INSERT INTO `tbl_reply` VALUES (44, '回复测试', '8', '2007-07-27 10:56:59', '2007-07-27 10:56:59', 68, 82);
INSERT INTO `tbl_reply` VALUES (45, '回复测试', '9', '2007-07-27 10:57:05', '2007-07-27 10:57:05', 68, 82);
INSERT INTO `tbl_reply` VALUES (46, '回复测试', '10', '2007-07-27 10:57:10', '2007-07-27 10:57:10', 68, 82);
INSERT INTO `tbl_reply` VALUES (47, '回复测试', '111', '2007-07-27 11:05:47', '2007-07-27 11:05:47', 68, 82);
INSERT INTO `tbl_reply` VALUES (48, '回复测试', '水一贴', '2007-07-27 12:57:59', '2007-07-27 12:57:59', 64, 82);
INSERT INTO `tbl_reply` VALUES (49, 're：', 'ee', '2007-07-27 12:58:56', '2007-07-27 12:58:56', 73, 88);
INSERT INTO `tbl_reply` VALUES (50, 're：', 'Version: \r\n$Version$ \r\nAuthor: \r\nVarious \r\nSee Also:\r\nGenericServlet, HttpServlet\r\n', '2007-07-27 17:38:05', '2007-07-27 17:38:05', 64, 93);
INSERT INTO `tbl_reply` VALUES (53, 're：', 'sss', '2007-07-27 18:02:58', '2007-08-14 13:54:23', 64, 93);
INSERT INTO `tbl_reply` VALUES (54, '好', 'hao \r\n1', '2007-07-27 19:32:30', '2007-08-14 13:46:17', 68, 92);
INSERT INTO `tbl_reply` VALUES (55, 're：', '回复测试', '2007-07-30 08:45:05', '2007-07-30 08:45:05', 68, 97);
INSERT INTO `tbl_reply` VALUES (56, '继续灌', '继续灌', '2007-07-30 10:32:26', '2007-07-30 10:32:26', 68, 96);
INSERT INTO `tbl_reply` VALUES (57, '继续灌', '板凳', '2007-07-30 10:32:50', '2007-07-30 10:32:50', 68, 96);
INSERT INTO `tbl_reply` VALUES (58, 're：', 'dfdasf', '2007-07-31 09:22:13', '2007-07-31 09:22:13', 68, 69);
INSERT INTO `tbl_reply` VALUES (61, '你好', '我们一起学', '2007-08-02 10:49:42', '2007-08-02 10:49:42', 64, 102);
INSERT INTO `tbl_reply` VALUES (62, '回复测试', '回复内容', '2007-07-27 17:00:00', '2007-07-27 17:00:00', 1, 1);
INSERT INTO `tbl_reply` VALUES (65, '我要飞的更高', '飞的更高', '2007-08-09 09:19:50', '2007-08-09 09:19:50', 1, 10);
INSERT INTO `tbl_reply` VALUES (66, 're：', '^_^\r\n哈哈\r\n拉拉', '2007-08-09 10:10:47', '2007-08-09 10:11:06', 71, 83);
INSERT INTO `tbl_reply` VALUES (68, '斯蒂芬', 'sdf斯蒂芬', '2007-08-16 16:23:49', '2007-08-16 16:24:06', 68, 62);
INSERT INTO `tbl_reply` VALUES (69, '我要飞的更高', '飞的更高', '2007-09-27 13:48:16', '2007-09-27 13:48:16', 1, 10);
INSERT INTO `tbl_reply` VALUES (72, '好极了', '真是太好了', '2007-09-27 15:25:06', '2007-09-27 15:25:06', 64, 112);

-- ----------------------------
-- Table structure for tbl_topic
-- ----------------------------
DROP TABLE IF EXISTS `tbl_topic`;
CREATE TABLE `tbl_topic`  (
  `topicId` int(11) NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主题标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '注意内容',
  `publishTime` datetime NOT NULL,
  `modifyTime` datetime NOT NULL,
  `uId` int(11) NOT NULL,
  `boardId` int(11) NOT NULL,
  PRIMARY KEY (`topicId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_topic
-- ----------------------------
INSERT INTO `tbl_topic` VALUES (1, '测试发帖', '如题', '2007-07-25 00:00:00', '2007-07-25 00:00:00', 1, 4);
INSERT INTO `tbl_topic` VALUES (3, '我是新手', '请大家多多指教', '2007-07-25 00:00:00', '2007-07-25 00:00:00', 1, 4);
INSERT INTO `tbl_topic` VALUES (4, '我是在北大青鸟学习的java', '我是在北大青鸟学习的java', '2007-07-25 00:00:00', '2007-07-25 00:00:00', 1, 4);
INSERT INTO `tbl_topic` VALUES (5, 'test', 'tt', '2007-07-26 11:16:20', '2007-07-26 11:16:20', 1, 4);
INSERT INTO `tbl_topic` VALUES (6, 'WinForms测试帖1', 'WinForms测试帖1', '2007-07-26 11:57:50', '2007-07-26 11:57:50', 64, 5);
INSERT INTO `tbl_topic` VALUES (7, 'WinForms测试帖2', 'WinForms测试帖2', '2007-07-26 12:00:45', '2007-07-26 12:00:45', 64, 5);
INSERT INTO `tbl_topic` VALUES (8, '你好！', '你好', '2007-07-26 12:48:02', '2007-07-26 12:48:02', 1, 5);
INSERT INTO `tbl_topic` VALUES (9, 'WinForms测试帖3', 'WinForms测试帖3', '2007-07-26 13:02:08', '2007-07-26 13:02:08', 1, 5);
INSERT INTO `tbl_topic` VALUES (10, 'WinForms测试帖4', 'WinForms测试帖4', '2007-07-26 13:05:45', '2007-07-26 13:05:45', 1, 5);
INSERT INTO `tbl_topic` VALUES (11, 'WinForms测试帖5', 'WinForms测试帖5', '2007-07-26 13:06:50', '2007-07-26 13:06:50', 1, 5);
INSERT INTO `tbl_topic` VALUES (12, 'ADO.NET测试帖1', 'ADO.NET测试帖1', '2007-07-26 13:09:13', '2007-07-26 13:09:13', 1, 6);
INSERT INTO `tbl_topic` VALUES (13, 'ADO.NET测试帖2', 'ADO.NET测试帖2', '2007-07-26 13:09:54', '2007-07-26 13:09:54', 1, 6);
INSERT INTO `tbl_topic` VALUES (14, 'C#语言测试帖1', 'C#语言测试帖1', '2007-07-26 14:30:08', '2007-07-26 14:30:08', 68, 4);
INSERT INTO `tbl_topic` VALUES (15, 'C#语言测试帖2', 'C#语言测试帖2', '2007-07-26 14:42:46', '2007-07-26 14:42:46', 68, 4);
INSERT INTO `tbl_topic` VALUES (16, 'C#语言测试帖3', 'C#语言测试帖3', '2007-07-26 14:55:37', '2007-07-26 14:55:37', 68, 4);
INSERT INTO `tbl_topic` VALUES (17, 'C#语言测试帖4', 'C#语言测试帖4', '2007-07-26 14:56:24', '2007-07-26 14:56:24', 68, 4);
INSERT INTO `tbl_topic` VALUES (18, 'C#语言测试帖5', 'C#语言测试帖5', '2007-07-26 14:57:30', '2007-07-26 14:57:30', 68, 4);
INSERT INTO `tbl_topic` VALUES (19, '你好', '你好', '2007-07-26 15:01:05', '2007-07-26 15:01:05', 68, 4);
INSERT INTO `tbl_topic` VALUES (20, '你好！', '你好', '2007-07-26 15:01:30', '2007-07-26 15:01:30', 68, 4);
INSERT INTO `tbl_topic` VALUES (24, 'C#语言测试帖6', 'C#语言测试帖6', '2007-07-26 15:05:31', '2007-07-26 15:05:31', 68, 4);
INSERT INTO `tbl_topic` VALUES (25, 'C#语言测试帖7', 'C#语言测试帖7', '2007-07-26 15:05:42', '2007-07-26 15:05:42', 68, 4);
INSERT INTO `tbl_topic` VALUES (26, 'C#语言测试帖8', 'C#语言测试帖8', '2007-07-26 15:05:58', '2007-07-26 15:05:58', 68, 4);
INSERT INTO `tbl_topic` VALUES (27, 'C#语言测试帖9', 'C#语言测试帖9', '2007-07-26 15:06:34', '2007-07-26 15:06:34', 68, 4);
INSERT INTO `tbl_topic` VALUES (28, 'C#语言测试帖10', 'C#语言测试帖10', '2007-07-26 15:06:40', '2007-07-26 15:06:40', 68, 4);
INSERT INTO `tbl_topic` VALUES (29, 'C#语言测试帖11', 'C#语言测试帖11', '2007-07-26 15:08:53', '2007-07-26 15:08:53', 68, 4);
INSERT INTO `tbl_topic` VALUES (30, 'C#语言测试帖12', 'C#语言测试帖12', '2007-07-26 15:12:07', '2007-07-26 15:12:07', 68, 4);
INSERT INTO `tbl_topic` VALUES (31, 'C#语言测试帖13', 'C#语言测试帖13', '2007-07-26 15:23:17', '2007-07-26 15:23:17', 68, 4);
INSERT INTO `tbl_topic` VALUES (32, 'C#语言测试帖14', 'C#语言测试帖14', '2007-07-26 15:23:38', '2007-07-26 15:23:38', 68, 4);
INSERT INTO `tbl_topic` VALUES (33, 'C#语言测试帖15', 'C#语言测试帖15', '2007-07-26 15:25:20', '2007-07-26 15:25:20', 68, 4);
INSERT INTO `tbl_topic` VALUES (34, '灌水乐园测试帖1', '灌水乐园测试帖1', '2007-07-26 15:27:03', '2007-07-26 15:27:03', 68, 15);
INSERT INTO `tbl_topic` VALUES (35, '灌水乐园测试帖2', '灌水乐园测试帖2', '2007-07-26 15:27:08', '2007-07-26 15:27:08', 68, 15);
INSERT INTO `tbl_topic` VALUES (36, '灌水乐园测试帖3', '灌水乐园测试帖3', '2007-07-26 15:27:13', '2007-07-26 15:27:13', 68, 15);
INSERT INTO `tbl_topic` VALUES (37, '灌水乐园测试帖4', '灌水乐园测试帖4', '2007-07-26 15:27:29', '2007-07-26 15:27:29', 68, 15);
INSERT INTO `tbl_topic` VALUES (38, '你们好', '灌水乐园测试帖', '2007-07-26 15:28:39', '2007-07-26 15:28:39', 68, 15);
INSERT INTO `tbl_topic` VALUES (46, '灌水乐园测试帖5', '灌水乐园测试帖5', '2007-07-26 15:43:52', '2007-07-26 15:43:52', 1, 15);
INSERT INTO `tbl_topic` VALUES (53, '灌水乐园测试帖6', '灌水乐园测试帖6', '2007-07-26 15:46:17', '2007-07-26 15:46:17', 1, 15);
INSERT INTO `tbl_topic` VALUES (54, '灌水乐园测试帖7', '灌水乐园测试帖7', '2007-07-26 15:46:35', '2007-07-26 15:46:35', 1, 15);
INSERT INTO `tbl_topic` VALUES (58, '灌水乐园测试帖8', '灌水乐园测试帖8', '2007-07-26 15:47:27', '2007-07-26 15:47:27', 1, 15);
INSERT INTO `tbl_topic` VALUES (60, '灌水乐园测试帖9', '灌水乐园测试帖9', '2007-07-26 15:48:02', '2007-07-26 15:48:02', 1, 15);
INSERT INTO `tbl_topic` VALUES (61, '水水', '灌水乐园测试帖', '2007-07-26 15:48:36', '2007-07-26 15:48:36', 1, 15);
INSERT INTO `tbl_topic` VALUES (62, '在水', '灌水乐园测试帖', '2007-07-26 15:49:41', '2007-07-26 15:49:41', 1, 15);
INSERT INTO `tbl_topic` VALUES (63, '发水了', '发水了', '2007-07-26 15:50:34', '2007-07-26 15:50:34', 1, 15);
INSERT INTO `tbl_topic` VALUES (64, '哈哈，不错！', 'haha ', '2007-07-26 16:11:55', '2007-07-26 16:11:55', 1, 15);
INSERT INTO `tbl_topic` VALUES (65, '灌水乐园测试帖10', '灌水乐园测试帖10', '2007-07-26 16:12:41', '2007-07-26 16:12:41', 1, 15);
INSERT INTO `tbl_topic` VALUES (68, '灌水乐园测试帖11', '灌水乐园测试帖11', '2007-07-26 18:20:40', '2007-07-26 18:20:40', 68, 15);
INSERT INTO `tbl_topic` VALUES (69, '灌水乐园测试帖12', '灌水乐园测试帖12', '2007-07-26 18:22:44', '2007-07-26 18:22:44', 68, 15);
INSERT INTO `tbl_topic` VALUES (70, '灌水乐园测试帖13', '灌水乐园测试帖13', '2007-07-26 18:24:49', '2007-07-26 18:24:49', 68, 15);
INSERT INTO `tbl_topic` VALUES (71, '灌水乐园测试帖14', '灌水乐园测试帖14', '2007-07-26 18:37:35', '2007-07-26 18:37:35', 68, 15);
INSERT INTO `tbl_topic` VALUES (72, '灌水乐园测试帖15', '灌水乐园测试帖15', '2007-07-26 18:37:50', '2007-07-26 18:37:50', 68, 15);
INSERT INTO `tbl_topic` VALUES (79, '灌水乐园测试帖16', '灌水乐园测试帖16', '2007-07-27 10:24:31', '2007-07-27 10:24:31', 68, 15);
INSERT INTO `tbl_topic` VALUES (80, 'C#语言 问题集锦1', 'C#语言', '2007-07-27 10:52:12', '2007-07-27 10:52:12', 68, 4);
INSERT INTO `tbl_topic` VALUES (81, 'C#语言 问题集锦2', 'C#语言', '2007-07-27 10:52:15', '2007-07-27 10:52:15', 68, 4);
INSERT INTO `tbl_topic` VALUES (82, 'C#语言 问题集锦3', 'C#语言', '2007-07-27 10:56:19', '2007-07-27 10:56:19', 68, 4);
INSERT INTO `tbl_topic` VALUES (83, 'sdf', 'sdf', '2007-07-27 11:34:54', '2007-07-27 11:34:54', 69, 15);
INSERT INTO `tbl_topic` VALUES (84, '大家好', '大家好', '2007-07-27 12:38:01', '2007-07-27 12:38:01', 71, 8);
INSERT INTO `tbl_topic` VALUES (85, 'JSP版块测试', '测试', '2007-07-27 12:39:06', '2007-07-27 12:39:06', 72, 9);
INSERT INTO `tbl_topic` VALUES (86, 'JSP论坛测试', '1', '2007-07-27 12:52:24', '2007-07-27 12:52:24', 64, 10);
INSERT INTO `tbl_topic` VALUES (87, 'JSP的全称是什么', '是不是 JavaServer Pages啊？', '2007-07-27 12:52:33', '2007-07-27 12:52:33', 64, 9);
INSERT INTO `tbl_topic` VALUES (88, 'JSP论坛测试', '1', '2007-07-27 12:52:49', '2007-07-27 12:52:49', 64, 12);
INSERT INTO `tbl_topic` VALUES (89, 'JSP论坛测试', '1', '2007-07-27 12:52:55', '2007-07-27 12:52:55', 64, 13);
INSERT INTO `tbl_topic` VALUES (90, 'JSP论坛测试', '1', '2007-07-27 12:53:03', '2007-07-27 12:53:03', 64, 11);
INSERT INTO `tbl_topic` VALUES (91, 'JSP论坛测试', 'sdf', '2007-07-27 12:58:34', '2007-07-27 12:58:34', 64, 4);
INSERT INTO `tbl_topic` VALUES (92, 'JSP论坛测试', 'aa', '2007-07-27 12:59:25', '2007-07-27 12:59:25', 74, 4);
INSERT INTO `tbl_topic` VALUES (93, 'Interface Servlet', 'public interface Servlet\r\nDefines methods that all servlets must implement. \r\n\r\nA servlet is a small Java program that runs within a Web server. Servlets receive and respond to requests from Web clients, usually across HTTP, the HyperText Transfer Protocol. \r\n\r\nTo implement this interface, you can write a generic servlet that extends javax.servlet.GenericServlet or an HTTP servlet that extends javax.servlet.http.HttpServlet. \r\n\r\nThis interface defines methods to initialize a servlet, to service requests, and to remove a servlet from the server. These are known as life-cycle methods and are called in the following sequence: \r\n\r\n\r\n\r\n\r\n', '2007-07-27 17:37:41', '2007-07-27 17:37:41', 64, 10);
INSERT INTO `tbl_topic` VALUES (94, '好', ' ', '2007-07-30 08:33:44', '2007-07-30 08:33:44', 68, 6);
INSERT INTO `tbl_topic` VALUES (95, '大家好', 'rt', '2007-07-30 08:37:18', '2007-07-30 08:37:18', 68, 4);
INSERT INTO `tbl_topic` VALUES (96, '灌水', 'rt', '2007-07-30 08:37:54', '2007-07-30 08:37:54', 68, 15);
INSERT INTO `tbl_topic` VALUES (97, '呵呵', ' 呵呵', '2007-07-30 08:44:04', '2007-07-30 08:44:04', 68, 13);
INSERT INTO `tbl_topic` VALUES (98, 'c#是一门很好的语言', 'rt', '2007-07-30 10:23:56', '2007-07-30 10:23:56', 68, 4);
INSERT INTO `tbl_topic` VALUES (99, 'c#是微软开发的语言 ', 'rt', '2007-07-30 10:24:42', '2007-07-30 10:24:42', 68, 4);
INSERT INTO `tbl_topic` VALUES (100, 'c#是微软开发的语言 ', 'c#是微软开发的语言 ', '2007-07-30 10:25:15', '2007-07-30 10:25:15', 64, 4);
INSERT INTO `tbl_topic` VALUES (101, '谁帮我看看我的程序', 'rt', '2007-07-30 10:27:11', '2007-07-30 10:27:11', 64, 5);
INSERT INTO `tbl_topic` VALUES (102, '我是新手，我刚开始学习Java', 'rt', '2007-07-30 10:29:40', '2007-07-30 10:29:40', 71, 8);
INSERT INTO `tbl_topic` VALUES (103, '这段SQL错在哪了?', 'rt', '2007-07-30 10:30:18', '2007-07-30 10:30:18', 71, 12);
INSERT INTO `tbl_topic` VALUES (104, '这段代码是什么意思', 'rt', '2007-07-30 10:31:00', '2007-07-30 10:31:00', 71, 7);
INSERT INTO `tbl_topic` VALUES (105, '这个东西很好用', 'rt', '2007-07-30 10:31:31', '2007-07-30 10:31:31', 71, 11);
INSERT INTO `tbl_topic` VALUES (107, '这段sql有什么问题', '？', '2007-08-09 10:12:30', '2007-08-09 10:12:30', 71, 13);
INSERT INTO `tbl_topic` VALUES (108, '请教一个关于JSP的问题', '。。。', '2007-08-09 10:10:10', '2007-08-09 11:11:11', 70, 9);
INSERT INTO `tbl_topic` VALUES (109, '请问JSP脚本元素有哪些', '。。。', '2007-08-09 14:02:02', '2007-08-09 14:02:02', 64, 9);
INSERT INTO `tbl_topic` VALUES (110, '你好', '你好', '2007-09-27 14:28:15', '2007-09-27 14:28:15', 1, 9);
INSERT INTO `tbl_topic` VALUES (111, '你好', '你好', '2007-09-27 14:33:21', '2007-09-27 14:33:21', 1, 9);
INSERT INTO `tbl_topic` VALUES (112, '你好', '你好', '2007-09-27 15:05:34', '2007-09-27 15:05:34', 64, 15);
INSERT INTO `tbl_topic` VALUES (113, '你好', '你好', '2007-09-27 15:09:28', '2007-09-27 15:09:28', 64, 15);

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `uId` int(11) NOT NULL,
  `uName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uPass` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `head` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `regTime` datetime NOT NULL,
  `gender` smallint(6) NOT NULL,
  PRIMARY KEY (`uId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES (1, 'qq', 'qq', '6.gif', '2007-07-27 00:00:00', 2);
INSERT INTO `tbl_user` VALUES (64, 'accp', 'accp', '5.gif', '2007-07-27 00:00:00', 2);
INSERT INTO `tbl_user` VALUES (65, 'super', 'super', '3.gif', '2007-07-27 00:00:00', 2);
INSERT INTO `tbl_user` VALUES (68, 'goodman', 'goodman', '2.gif', '2007-07-27 00:00:00', 2);
INSERT INTO `tbl_user` VALUES (69, 'hehe', 'hehe', '1.gif', '2007-07-27 11:30:47', 2);
INSERT INTO `tbl_user` VALUES (70, 'fish', 'fish', '1.gif', '2007-07-27 12:00:01', 2);
INSERT INTO `tbl_user` VALUES (71, 'aptech', 'aptech', '13.gif', '2007-07-27 12:37:35', 2);
INSERT INTO `tbl_user` VALUES (72, '超人', '1', '9.gif', '2007-07-27 12:38:39', 1);
INSERT INTO `tbl_user` VALUES (73, 'java', 'java', '1.gif', '2007-07-27 12:58:44', 2);
INSERT INTO `tbl_user` VALUES (74, 'class', 'class', '1.gif', '2007-07-27 12:59:18', 2);
INSERT INTO `tbl_user` VALUES (82, 'spiderman', 'spiderman', '4.gif', '2007-07-30 11:08:34', 2);
INSERT INTO `tbl_user` VALUES (83, 'superman', '1', '7.gif', '2007-07-30 11:08:34', 1);
INSERT INTO `tbl_user` VALUES (85, '张三', 'a', '1.gif', '2007-08-03 17:06:39', 2);
INSERT INTO `tbl_user` VALUES (87, 'blue', 'blue', '1.gif', '2007-08-03 17:12:47', 2);
INSERT INTO `tbl_user` VALUES (88, 'black', 'black', '1.gif', '2007-08-03 17:15:24', 2);
INSERT INTO `tbl_user` VALUES (89, 'white', 'white', '1.gif', '2007-08-03 17:15:56', 2);
INSERT INTO `tbl_user` VALUES (90, 'cute', 'cute', '1.gif', '2007-08-03 17:16:09', 2);
INSERT INTO `tbl_user` VALUES (91, 'peter', 'peter', '1.gif', '2007-08-09 10:22:47', 2);

SET FOREIGN_KEY_CHECKS = 1;

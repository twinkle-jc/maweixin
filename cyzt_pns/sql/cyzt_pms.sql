/*
 Navicat Premium Data Transfer

 Source Server         : 本地mysql
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : cyzt_pms

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 02/04/2021 21:39:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作 sub主子表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1, 'pms_chengben_baoxiao', '成本报销', '', NULL, 'Baoxiao', 'crud', 'com.ruoyi.pms.chengben', 'chengben', 'BaoXiao', '报销管理', 'lengjun', '0', '/', '{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"成本管理\",\"treeCode\":\"\"}', 'admin', '2021-03-19 16:24:52', '', '2021-03-19 18:27:52', '');
INSERT INTO `gen_table` VALUES (2, 'pms_chengben_gongzi', '成本工资表', '', NULL, 'Gongzi', 'crud', 'com.ruoyi.pms.chengben', 'chengben', 'gongzi', '工资', 'lengjun', '0', '/', '{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"成本管理\",\"treeCode\":\"\"}', 'admin', '2021-03-19 16:24:52', '', '2021-03-20 18:44:35', '');
INSERT INTO `gen_table` VALUES (3, 'pms_chengben_shui', '成本-税表', '', NULL, 'Tax', 'crud', 'com.ruoyi.pms.chengben', 'chengben', 'Tax', '税', 'lengjun', '0', '/', '{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"成本管理\",\"treeCode\":\"\"}', 'admin', '2021-03-19 16:24:52', '', '2021-03-20 18:44:10', '');
INSERT INTO `gen_table` VALUES (4, 'pms_chengben_zhuanzhang', '成本转账表', '', NULL, 'ZhuanZhang', 'crud', 'com.ruoyi.pms.chengben', 'chengben', 'zhuanzhang', '转账', 'lengjun', '0', '/', '{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"成本管理\",\"treeCode\":\"\"}', 'admin', '2021-03-19 16:24:52', '', '2021-03-20 18:44:52', '');
INSERT INTO `gen_table` VALUES (5, 'pms_hetong', '合同表', '', NULL, 'Hetong', 'crud', 'com.ruoyi.pms.hetong', 'hetong', 'hetong', '合同信息管理', 'lengjun', '0', '/', '{\"parentMenuId\":\"2002\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"合同管理\",\"treeCode\":\"\"}', 'admin', '2021-03-19 16:24:52', '', '2021-03-20 17:09:58', '');
INSERT INTO `gen_table` VALUES (6, 'pms_xiangmu', '项目基本信息表', 'pms_xiangmu_renwu', 'xiangmu_id', 'Xiangmu', 'sub', 'com.ruoyi.pms.xiangmu', 'xiangmu', 'xiangmu', '项目信息管理', 'lengjun', '0', '/', '{\"parentMenuId\":\"2001\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"项目管理\",\"treeCode\":\"\"}', 'admin', '2021-03-19 16:24:52', '', '2021-03-28 19:20:17', '');
INSERT INTO `gen_table` VALUES (7, 'pms_xiangmu_renwu', '项目任务表', '', NULL, 'XiangmuRenwu', 'crud', 'com.ruoyi.pms.xiangmu', 'xiangmu', 'renwu', '项目任务信息管理', 'lengjun', '0', '/', '{\"parentMenuId\":\"2001\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"项目管理\",\"treeCode\":\"\"}', 'admin', '2021-03-19 16:24:52', '', '2021-03-21 22:03:30', '');
INSERT INTO `gen_table` VALUES (8, 'pms_xiangmu_renwu_fenzu', '项目任务分组', 'pms_xiangmu_renwu', 'xiangmu_renwu_fenzu_id', 'XiangmuRenwuFenzu', 'sub', 'com.ruoyi.pms.xiangmu', 'pms', 'XiangMuRenWuFenZu', '项目任务分组', 'lengjun', '0', '/', '{\"parentMenuId\":\"2001\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"项目管理\",\"treeCode\":\"\"}', 'admin', '2021-03-28 19:40:22', '', '2021-03-28 19:47:00', '');

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1, '1', 'chengben_baoxiao_id', '报销表主键', 'varchar(50)', 'String', 'chengbenBaoxiaoId', '1', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-19 18:27:52');
INSERT INTO `gen_table_column` VALUES (2, '1', 'chengben_baoxiao_type', '类别', 'varchar(20)', 'String', 'chengbenBaoxiaoType', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'pms_chengben_baoxiao_type', 2, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-19 18:27:52');
INSERT INTO `gen_table_column` VALUES (3, '1', 'chengben_baoxiao_mingxi', '明细', 'varchar(255)', 'String', 'chengbenBaoxiaoMingxi', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-19 18:27:52');
INSERT INTO `gen_table_column` VALUES (4, '1', 'chengben_baoxiao_jinE', '金额', 'double', 'Double', 'chengbenBaoxiaoJine', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-19 18:27:52');
INSERT INTO `gen_table_column` VALUES (5, '1', 'chengben_baoxiao_kaiPiaoRiQi', '开票日期', 'date', 'Date', 'chengbenBaoxiaoKaipiaoriqi', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-19 18:27:52');
INSERT INTO `gen_table_column` VALUES (6, '1', 'chengben_baoxiao_isZhuanPiao', '是否专票', 'tinyint(4)', 'Integer', 'chengbenBaoxiaoIszhuanpiao', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'pms_yes_no', 6, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-19 18:27:52');
INSERT INTO `gen_table_column` VALUES (7, '1', 'chengben_baoxiao_faPiaoHaoMa', '发票号码', 'varchar(50)', 'String', 'chengbenBaoxiaoFapiaohaoma', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-19 18:27:52');
INSERT INTO `gen_table_column` VALUES (8, '1', 'chengben_baoxiao_xiaoFangMingCheng', '销方名称', 'varchar(255)', 'String', 'chengbenBaoxiaoXiaofangmingcheng', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-19 18:27:52');
INSERT INTO `gen_table_column` VALUES (9, '1', 'chengben_baoxiao_diKouShui', '抵扣税', 'double', 'Long', 'chengbenBaoxiaoDikoushui', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-19 18:27:52');
INSERT INTO `gen_table_column` VALUES (10, '1', 'chengben_baoxiao_isYiBaoXiao', '是否已报销', 'tinyint(4)', 'Integer', 'chengbenBaoxiaoIsyibaoxiao', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'pms_yes_no', 10, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-19 18:27:52');
INSERT INTO `gen_table_column` VALUES (11, '1', 'chengben_baoxiao_beizhu', '备注', 'varchar(1000)', 'String', 'chengbenBaoxiaoBeizhu', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 11, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-19 18:27:52');
INSERT INTO `gen_table_column` VALUES (12, '2', 'chengben_gongzi_id', '工资表主键', 'varchar(50)', 'String', 'chengbenGongziId', '1', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-20 18:44:35');
INSERT INTO `gen_table_column` VALUES (13, '2', 'chengben_gongzi_type', '类型', 'varchar(20)', 'String', 'chengbenGongziType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'pms_chengben_gongzi_type', 2, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-20 18:44:35');
INSERT INTO `gen_table_column` VALUES (14, '2', 'chengben_gongzi_yueFen', '月份', 'date', 'Date', 'chengbenGongziYuefen', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-20 18:44:35');
INSERT INTO `gen_table_column` VALUES (15, '2', 'chengben_gongzi_yingFa', '应发工资', 'double', 'Double', 'chengbenGongziYingfa', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-20 18:44:35');
INSERT INTO `gen_table_column` VALUES (16, '2', 'chengben_gongzi_geRenSheBao', '个人社保', 'double', 'Double', 'chengbenGongziGerenshebao', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-20 18:44:35');
INSERT INTO `gen_table_column` VALUES (17, '2', 'chengben_gongzi_geShui', '个税', 'double', 'Double', 'chengbenGongziGeshui', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-20 18:44:35');
INSERT INTO `gen_table_column` VALUES (18, '2', 'chengben_gongzi_buFaBuJiao', '补发补缴', 'double', 'Double', 'chengbenGongziBufabujiao', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-20 18:44:35');
INSERT INTO `gen_table_column` VALUES (19, '2', 'chengben_gongzi_shiFa', '实发', 'double', 'Double', 'chengbenGongziShifa', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-20 18:44:35');
INSERT INTO `gen_table_column` VALUES (20, '2', 'chengben_gongzi_gongSiSheBao', '公司社保', 'double', 'Double', 'chengbenGongziGongsishebao', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-20 18:44:35');
INSERT INTO `gen_table_column` VALUES (21, '2', 'chengben_gongzi_yongGongChengBen', '用工成本', 'double', 'Double', 'chengbenGongziYonggongchengben', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-20 18:44:35');
INSERT INTO `gen_table_column` VALUES (22, '2', 'chengben_gongzi_note', '备注', 'varchar(2000)', 'String', 'chengbenGongziNote', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 11, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-20 18:44:35');
INSERT INTO `gen_table_column` VALUES (23, '3', 'chengben_shui_id', '税主键', 'varchar(20)', 'String', 'chengbenShuiId', '1', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-20 18:44:10');
INSERT INTO `gen_table_column` VALUES (24, '3', 'chengben_shui_jinE', '金额', 'double', 'Double', 'chengbenShuiJine', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-20 18:44:10');
INSERT INTO `gen_table_column` VALUES (25, '3', 'chengben_shui_riQi', '日期', 'date', 'Date', 'chengbenShuiRiqi', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-20 18:44:10');
INSERT INTO `gen_table_column` VALUES (26, '3', 'chengben_shui_note', '备注', 'varchar(2000)', 'String', 'chengbenShuiNote', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 4, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-20 18:44:10');
INSERT INTO `gen_table_column` VALUES (27, '4', 'chengben_zhuanzhang_id', '转账表主键', 'varchar(50)', 'String', 'chengbenZhuanzhangId', '1', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-20 18:44:52');
INSERT INTO `gen_table_column` VALUES (28, '4', 'chengben_zhuanzhang_type', '类型', 'varchar(20)', 'String', 'chengbenZhuanzhangType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 2, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-20 18:44:52');
INSERT INTO `gen_table_column` VALUES (29, '4', 'chengben_zhuanzhang_jinE', '金额', 'double', 'Double', 'chengbenZhuanzhangJine', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-20 18:44:52');
INSERT INTO `gen_table_column` VALUES (30, '4', 'chengben_zhuanzhang_name', '名称', 'varchar(255)', 'String', 'chengbenZhuanzhangName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-20 18:44:52');
INSERT INTO `gen_table_column` VALUES (31, '4', 'chengben_zhuanzhang_isShouDaoZhuanPiao', '是否收到专票', 'tinyint(4)', 'Integer', 'chengbenZhuanzhangIsshoudaozhuanpiao', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-20 18:44:52');
INSERT INTO `gen_table_column` VALUES (32, '4', 'chengben_zhuanzhang_isYiZhuanZhang', '是否已转账', 'tinyint(4)', 'Integer', 'chengbenZhuanzhangIsyizhuanzhang', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-20 18:44:52');
INSERT INTO `gen_table_column` VALUES (33, '4', 'chengben_zhuanzhang_riQi', '日期', 'date', 'Date', 'chengbenZhuanzhangRiqi', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-20 18:44:52');
INSERT INTO `gen_table_column` VALUES (34, '4', 'chengben_zhuanzhang_note', '备注', 'varchar(2000)', 'String', 'chengbenZhuanzhangNote', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 8, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-20 18:44:52');
INSERT INTO `gen_table_column` VALUES (35, '5', 'hetong_id', '合同id', 'varchar(50)', 'String', 'hetongId', '1', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-20 17:09:58');
INSERT INTO `gen_table_column` VALUES (36, '5', 'hetong_code', '合同编码', 'varchar(255)', 'String', 'hetongCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-20 17:09:58');
INSERT INTO `gen_table_column` VALUES (37, '5', 'hetong_name', '合同名称', 'varchar(255)', 'String', 'hetongName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-20 17:09:58');
INSERT INTO `gen_table_column` VALUES (38, '5', 'hetong_type', '合同类型', 'varchar(20)', 'String', 'hetongType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 4, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-20 17:09:58');
INSERT INTO `gen_table_column` VALUES (39, '5', 'hetong_qianDingRiQi', '签订日期', 'date', 'Date', 'hetongQiandingriqi', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-20 17:09:58');
INSERT INTO `gen_table_column` VALUES (40, '5', 'hetong_kaiShiRiQi', '开始日期', 'date', 'Date', 'hetongKaishiriqi', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-20 17:09:59');
INSERT INTO `gen_table_column` VALUES (41, '5', 'hetong_jieShuRiQi', '结束日期', 'date', 'Date', 'hetongJieshuriqi', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-20 17:09:59');
INSERT INTO `gen_table_column` VALUES (42, '5', 'hetong_zongJinE', '总金额', 'double', 'Double', 'hetongZongjine', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-20 17:09:59');
INSERT INTO `gen_table_column` VALUES (43, '5', 'hetong_zhuangTai', '状态', 'varchar(20)', 'String', 'hetongZhuangtai', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 9, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-20 17:09:59');
INSERT INTO `gen_table_column` VALUES (44, '5', 'hetong_note', '备注', 'varchar(2000)', 'String', 'hetongNote', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 10, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-20 17:09:59');
INSERT INTO `gen_table_column` VALUES (45, '6', 'xiangmu_id', '项目表主键', 'varchar(50)', 'String', 'xiangmuId', '1', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-28 19:20:17');
INSERT INTO `gen_table_column` VALUES (46, '6', 'xiangmu_code', '项目编码', 'varchar(50)', 'String', 'xiangmuCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-28 19:20:17');
INSERT INTO `gen_table_column` VALUES (47, '6', 'xiangmu_keJianFanWei', '可见范围', 'varchar(20)', 'String', 'xiangmuKejianfanwei', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'pms_xiangmu_kejianfanwei', 5, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-28 19:20:17');
INSERT INTO `gen_table_column` VALUES (48, '6', 'xiangmu_fenZu', '分组', 'varchar(50)', 'String', 'xiangmuFenzu', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-28 19:20:17');
INSERT INTO `gen_table_column` VALUES (49, '6', 'xiangmu_miaoShu', '描述', 'varchar(2000)', 'String', 'xiangmuMiaoshu', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 7, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-28 19:20:17');
INSERT INTO `gen_table_column` VALUES (50, '7', 'xiangmu_renwu_id', '任务表主键', 'varchar(50)', 'String', 'xiangmuRenwuId', '1', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-21 22:03:30');
INSERT INTO `gen_table_column` VALUES (51, '7', 'xiangmu_renwu_biaoTi', '标题', 'varchar(255)', 'String', 'xiangmuRenwuBiaoti', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-21 22:03:30');
INSERT INTO `gen_table_column` VALUES (52, '7', 'xiangmu_renwu_type', '类型', 'varchar(20)', 'String', 'xiangmuRenwuType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'pms_xiangmu_renwu_type', 3, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-21 22:03:30');
INSERT INTO `gen_table_column` VALUES (53, '7', 'xiangmu_renwu_fuZeRen', '负责人', 'varchar(50)', 'Long', 'xiangmuRenwuFuzeren', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-21 22:03:30');
INSERT INTO `gen_table_column` VALUES (54, '7', 'xiangmu_renwu_youXianJi', '优先级', 'varchar(20)', 'String', 'xiangmuRenwuYouxianji', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', 'pms_xiangmu_renwu_youxianji', 5, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-21 22:03:30');
INSERT INTO `gen_table_column` VALUES (55, '7', 'xiangmu_renwu_zhuangTai', '状态', 'varchar(20)', 'String', 'xiangmuRenwuZhuangtai', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', 'pms_xiangmu_renwu_status', 6, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-21 22:03:30');
INSERT INTO `gen_table_column` VALUES (56, '7', 'xiangmu_renwu_kaiShiShiJian', '开始时间', 'date', 'Date', 'xiangmuRenwuKaishishijian', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-21 22:03:30');
INSERT INTO `gen_table_column` VALUES (57, '7', 'xiangmu_renwu_jieZhiRiQi', '截至日期', 'date', 'Date', 'xiangmuRenwuJiezhiriqi', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 8, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-21 22:03:30');
INSERT INTO `gen_table_column` VALUES (58, '7', 'xiangmu_renwu_jinDu', '进度', 'double', 'Double', 'xiangmuRenwuJindu', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2021-03-19 16:24:52', NULL, '2021-03-21 22:03:30');
INSERT INTO `gen_table_column` VALUES (59, '1', 'chengben_baoxiao_baoxiaoren', '报销人员', 'bigint(20)', 'Long', 'chengbenBaoxiaoBaoxiaoren', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, '', '2021-03-19 18:11:39', NULL, '2021-03-19 18:27:52');
INSERT INTO `gen_table_column` VALUES (60, '1', 'createuser', '创建用户', 'bigint(20)', 'Long', 'createuser', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, '', '2021-03-19 18:11:39', NULL, '2021-03-19 18:27:52');
INSERT INTO `gen_table_column` VALUES (61, '1', 'createtime', '创建时间', 'date', 'Date', 'createtime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 14, '', '2021-03-19 18:11:39', NULL, '2021-03-19 18:27:52');
INSERT INTO `gen_table_column` VALUES (62, '1', 'modifyuser', '最后修改用户', 'bigint(20)', 'Long', 'modifyuser', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, '', '2021-03-19 18:11:39', NULL, '2021-03-19 18:27:52');
INSERT INTO `gen_table_column` VALUES (63, '1', 'modifytime', '最后修改时间', 'date', 'Date', 'modifytime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 16, '', '2021-03-19 18:11:39', NULL, '2021-03-19 18:27:52');
INSERT INTO `gen_table_column` VALUES (64, '1', 'isDel', '是否删除', 'tinyint(1)', 'Integer', 'isDel', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'pms_yes_no', 17, '', '2021-03-19 18:11:39', NULL, '2021-03-19 18:27:52');
INSERT INTO `gen_table_column` VALUES (65, '2', 'chengben_gongzi_faXinRen', '发薪人员', 'bigint(20)', 'Long', 'chengbenGongziFaxinren', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, '', '2021-03-19 18:11:42', NULL, '2021-03-20 18:44:35');
INSERT INTO `gen_table_column` VALUES (66, '2', 'createuser', '创建用户', 'bigint(20)', 'Long', 'createuser', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, '', '2021-03-19 18:11:42', NULL, '2021-03-20 18:44:35');
INSERT INTO `gen_table_column` VALUES (67, '2', 'createtime', '创建时间', 'date', 'Date', 'createtime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 14, '', '2021-03-19 18:11:42', NULL, '2021-03-20 18:44:35');
INSERT INTO `gen_table_column` VALUES (68, '2', 'modifyuser', '最后修改用户', 'bigint(20)', 'Long', 'modifyuser', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, '', '2021-03-19 18:11:42', NULL, '2021-03-20 18:44:35');
INSERT INTO `gen_table_column` VALUES (69, '2', 'modifytime', '最后修改时间', 'date', 'Date', 'modifytime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 16, '', '2021-03-19 18:11:42', NULL, '2021-03-20 18:44:35');
INSERT INTO `gen_table_column` VALUES (70, '2', 'isDel', '是否删除', 'tinyint(1)', 'Integer', 'isDel', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, '', '2021-03-19 18:11:42', NULL, '2021-03-20 18:44:35');
INSERT INTO `gen_table_column` VALUES (71, '3', 'createuser', '创建用户', 'bigint(20)', 'Long', 'createuser', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, '', '2021-03-19 18:11:44', NULL, '2021-03-20 18:44:10');
INSERT INTO `gen_table_column` VALUES (72, '3', 'createtime', '创建时间', 'date', 'Date', 'createtime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 6, '', '2021-03-19 18:11:44', NULL, '2021-03-20 18:44:10');
INSERT INTO `gen_table_column` VALUES (73, '3', 'modifyuser', '最后修改用户', 'bigint(20)', 'Long', 'modifyuser', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, '', '2021-03-19 18:11:44', NULL, '2021-03-20 18:44:10');
INSERT INTO `gen_table_column` VALUES (74, '3', 'modifytime', '最后修改时间', 'date', 'Date', 'modifytime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 8, '', '2021-03-19 18:11:44', NULL, '2021-03-20 18:44:10');
INSERT INTO `gen_table_column` VALUES (75, '3', 'isDel', '是否删除', 'tinyint(1)', 'Integer', 'isDel', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, '', '2021-03-19 18:11:44', NULL, '2021-03-20 18:44:10');
INSERT INTO `gen_table_column` VALUES (76, '4', 'createuser', '创建用户', 'bigint(20)', 'Long', 'createuser', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, '', '2021-03-19 18:11:47', NULL, '2021-03-20 18:44:52');
INSERT INTO `gen_table_column` VALUES (77, '4', 'createtime', '创建时间', 'date', 'Date', 'createtime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 10, '', '2021-03-19 18:11:47', NULL, '2021-03-20 18:44:52');
INSERT INTO `gen_table_column` VALUES (78, '4', 'modifyuser', '最后修改用户', 'bigint(20)', 'Long', 'modifyuser', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, '', '2021-03-19 18:11:47', NULL, '2021-03-20 18:44:52');
INSERT INTO `gen_table_column` VALUES (79, '4', 'modifytime', '最后修改时间', 'date', 'Date', 'modifytime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 12, '', '2021-03-19 18:11:47', NULL, '2021-03-20 18:44:52');
INSERT INTO `gen_table_column` VALUES (80, '4', 'isDel', '是否删除', 'tinyint(1)', 'Integer', 'isDel', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, '', '2021-03-19 18:11:47', NULL, '2021-03-20 18:44:52');
INSERT INTO `gen_table_column` VALUES (81, '5', 'createuser', '创建用户', 'bigint(20)', 'Long', 'createuser', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, '', '2021-03-19 18:11:50', NULL, '2021-03-20 17:09:59');
INSERT INTO `gen_table_column` VALUES (82, '5', 'createtime', '创建时间', 'date', 'Date', 'createtime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 12, '', '2021-03-19 18:11:50', NULL, '2021-03-20 17:09:59');
INSERT INTO `gen_table_column` VALUES (83, '5', 'modifyuser', '最后修改用户', 'bigint(20)', 'Long', 'modifyuser', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, '', '2021-03-19 18:11:50', NULL, '2021-03-20 17:09:59');
INSERT INTO `gen_table_column` VALUES (84, '5', 'modifytime', '最后修改时间', 'date', 'Date', 'modifytime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 14, '', '2021-03-19 18:11:50', NULL, '2021-03-20 17:09:59');
INSERT INTO `gen_table_column` VALUES (85, '5', 'isDel', '是否删除', 'tinyint(1)', 'Integer', 'isDel', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, '', '2021-03-19 18:11:50', NULL, '2021-03-20 17:09:59');
INSERT INTO `gen_table_column` VALUES (86, '6', 'createuser', '创建用户', 'bigint(20)', 'Long', 'createuser', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, '', '2021-03-19 18:11:52', NULL, '2021-03-28 19:20:17');
INSERT INTO `gen_table_column` VALUES (87, '6', 'createtime', '创建时间', 'date', 'Date', 'createtime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 9, '', '2021-03-19 18:11:52', NULL, '2021-03-28 19:20:17');
INSERT INTO `gen_table_column` VALUES (88, '6', 'modifyuser', '最后修改用户', 'bigint(20)', 'Long', 'modifyuser', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, '', '2021-03-19 18:11:52', NULL, '2021-03-28 19:20:17');
INSERT INTO `gen_table_column` VALUES (89, '6', 'modifytime', '最后修改时间', 'date', 'Date', 'modifytime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 11, '', '2021-03-19 18:11:52', NULL, '2021-03-28 19:20:17');
INSERT INTO `gen_table_column` VALUES (90, '6', 'isDel', '是否删除', 'tinyint(1)', 'Integer', 'isDel', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, '', '2021-03-19 18:11:52', NULL, '2021-03-28 19:20:17');
INSERT INTO `gen_table_column` VALUES (91, '7', 'createuser', '创建用户', 'bigint(20)', 'Long', 'createuser', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, '', '2021-03-19 18:11:54', NULL, '2021-03-21 22:03:30');
INSERT INTO `gen_table_column` VALUES (92, '7', 'createtime', '创建时间', 'date', 'Date', 'createtime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 11, '', '2021-03-19 18:11:54', NULL, '2021-03-21 22:03:30');
INSERT INTO `gen_table_column` VALUES (93, '7', 'modifyuser', '最后修改用户', 'bigint(20)', 'Long', 'modifyuser', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, '', '2021-03-19 18:11:54', NULL, '2021-03-21 22:03:30');
INSERT INTO `gen_table_column` VALUES (94, '7', 'modifytime', '最后修改时间', 'date', 'Date', 'modifytime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 13, '', '2021-03-19 18:11:54', NULL, '2021-03-21 22:03:30');
INSERT INTO `gen_table_column` VALUES (95, '7', 'isDel', '是否删除', 'tinyint(1)', 'Integer', 'isDel', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, '', '2021-03-19 18:11:54', NULL, '2021-03-21 22:03:30');
INSERT INTO `gen_table_column` VALUES (96, '3', 'chengben_shui_type', '类型', 'varchar(20)', 'String', 'chengbenShuiType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 2, '', '2021-03-20 18:43:46', NULL, '2021-03-20 18:44:10');
INSERT INTO `gen_table_column` VALUES (97, '7', 'xiangmu_id', '项目表主键', 'varchar(50)', 'String', 'xiangmuId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, '', '2021-03-21 22:05:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (98, '6', 'xiangmu_type', '项目类型', 'varchar(20)', 'String', 'xiangmuType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'pms_xiangmu_leixing', 2, '', '2021-03-28 19:16:58', NULL, '2021-03-28 19:20:17');
INSERT INTO `gen_table_column` VALUES (99, '6', 'xiangmu_name', '项目名称', 'varchar(255)', 'String', 'xiangmuName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, '', '2021-03-28 19:16:58', NULL, '2021-03-28 19:20:17');
INSERT INTO `gen_table_column` VALUES (100, '8', 'xiangmu_renwu_fenzu_id', '项目分组ID', 'varchar(50)', 'String', 'xiangmuRenwuFenzuId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-03-28 19:40:22', NULL, '2021-03-28 19:47:00');
INSERT INTO `gen_table_column` VALUES (101, '8', 'xiangmu_id', '项目ID', 'varchar(50)', 'String', 'xiangmuId', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 2, 'admin', '2021-03-28 19:40:22', NULL, '2021-03-28 19:47:00');
INSERT INTO `gen_table_column` VALUES (102, '8', 'xiangmu_renwu_fenzu_name', '项目分组名称', 'varchar(255)', 'String', 'xiangmuRenwuFenzuName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2021-03-28 19:40:22', NULL, '2021-03-28 19:47:00');
INSERT INTO `gen_table_column` VALUES (103, '8', 'createuser', '创建用户', 'bigint(20)', 'Long', 'createuser', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 4, 'admin', '2021-03-28 19:40:22', NULL, '2021-03-28 19:47:00');
INSERT INTO `gen_table_column` VALUES (104, '8', 'createtime', '创建时间', 'date', 'Date', 'createtime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 5, 'admin', '2021-03-28 19:40:22', NULL, '2021-03-28 19:47:00');
INSERT INTO `gen_table_column` VALUES (105, '8', 'modifyuser', '最后修改用户', 'bigint(20)', 'Long', 'modifyuser', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 6, 'admin', '2021-03-28 19:40:22', NULL, '2021-03-28 19:47:00');
INSERT INTO `gen_table_column` VALUES (106, '8', 'modifytime', '最后修改时间', 'date', 'Date', 'modifytime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2021-03-28 19:40:22', NULL, '2021-03-28 19:47:00');
INSERT INTO `gen_table_column` VALUES (107, '8', 'isDel', '是否删除', 'tinyint(1)', 'Integer', 'isDel', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2021-03-28 19:40:22', NULL, '2021-03-28 19:47:00');
INSERT INTO `gen_table_column` VALUES (108, '7', 'xiangmu_renwu_fenzu_id', '项目任务分组主键', 'varchar(50)', 'String', 'xiangmuRenwuFenzuId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, '', '2021-03-28 19:46:08', '', NULL);

-- ----------------------------
-- Table structure for pms_chengben_baoxiao
-- ----------------------------
DROP TABLE IF EXISTS `pms_chengben_baoxiao`;
CREATE TABLE `pms_chengben_baoxiao`  (
  `chengben_baoxiao_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '报销表主键',
  `chengben_baoxiao_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类别',
  `chengben_baoxiao_mingxi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '明细',
  `chengben_baoxiao_jinE` double NULL DEFAULT NULL COMMENT '金额',
  `chengben_baoxiao_kaiPiaoRiQi` date NULL DEFAULT NULL COMMENT '开票日期',
  `chengben_baoxiao_isZhuanPiao` tinyint(4) NULL DEFAULT NULL COMMENT '是否专票',
  `chengben_baoxiao_faPiaoHaoMa` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发票号码',
  `chengben_baoxiao_xiaoFangMingCheng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '销方名称',
  `chengben_baoxiao_diKouShui` double NULL DEFAULT NULL COMMENT '抵扣税',
  `chengben_baoxiao_isYiBaoXiao` tinyint(4) NULL DEFAULT NULL COMMENT '是否已报销',
  `chengben_baoxiao_beizhu` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `chengben_baoxiao_baoxiaoren` bigint(20) NULL DEFAULT NULL COMMENT '报销人员',
  `chengben_baoxiao_fujian` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '附件',
  `createuser` bigint(20) NULL DEFAULT NULL COMMENT '创建用户',
  `createtime` date NULL DEFAULT NULL COMMENT '创建时间',
  `modifyuser` bigint(20) NULL DEFAULT NULL COMMENT '最后修改用户',
  `modifytime` date NULL DEFAULT NULL COMMENT '最后修改时间',
  `isDel` tinyint(1) NULL DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`chengben_baoxiao_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pms_chengben_baoxiao
-- ----------------------------
INSERT INTO `pms_chengben_baoxiao` VALUES ('23db7f963b2c4f7b8a656911c2ac9aae', '01', '', NULL, NULL, 0, '', '', NULL, 1, '', 103, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pms_chengben_baoxiao` VALUES ('465e3f4a8d4a4f82810350a9ce28fa50', '01', '', NULL, NULL, 0, '', '', NULL, 1, '', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pms_chengben_baoxiao` VALUES ('5f643b6c46da4569baaad89b7007e13f', '01', '', NULL, NULL, 0, '', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pms_chengben_baoxiao` VALUES ('957334af5226471cab7359fa1bdeed58', '01', '广州出差住宿票', 899, '2021-03-19', 0, '', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `pms_chengben_baoxiao` VALUES ('c01cf9c83b1642eab7fb59e7a8b9cf25', '02', '', NULL, NULL, 0, '', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1);

-- ----------------------------
-- Table structure for pms_chengben_gongzi
-- ----------------------------
DROP TABLE IF EXISTS `pms_chengben_gongzi`;
CREATE TABLE `pms_chengben_gongzi`  (
  `chengben_gongzi_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工资表主键',
  `chengben_gongzi_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型',
  `chengben_gongzi_yueFen` date NULL DEFAULT NULL COMMENT '月份',
  `chengben_gongzi_yingFa` double NULL DEFAULT NULL COMMENT '应发工资',
  `chengben_gongzi_geRenSheBao` double NULL DEFAULT NULL COMMENT '个人社保',
  `chengben_gongzi_geShui` double NULL DEFAULT NULL COMMENT '个税',
  `chengben_gongzi_buFaBuJiao` double NULL DEFAULT NULL COMMENT '补发补缴',
  `chengben_gongzi_shiFa` double NULL DEFAULT NULL COMMENT '实发',
  `chengben_gongzi_gongSiSheBao` double NULL DEFAULT NULL COMMENT '公司社保',
  `chengben_gongzi_yongGongChengBen` double NULL DEFAULT NULL COMMENT '用工成本',
  `chengben_gongzi_faXinRen` bigint(20) NULL DEFAULT NULL COMMENT '发薪人员',
  `chengben_gongzi_note` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `createuser` bigint(20) NULL DEFAULT NULL COMMENT '创建用户',
  `createtime` date NULL DEFAULT NULL COMMENT '创建时间',
  `modifyuser` bigint(20) NULL DEFAULT NULL COMMENT '最后修改用户',
  `modifytime` date NULL DEFAULT NULL COMMENT '最后修改时间',
  `isDel` tinyint(1) NULL DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`chengben_gongzi_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pms_chengben_gongzi
-- ----------------------------
INSERT INTO `pms_chengben_gongzi` VALUES ('816f73dd3d4049c08695d5303bd22503', '01', '2021-03-10', 500.1, 100, 3, 0, 400, 100, 600, NULL, '无', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for pms_chengben_shui
-- ----------------------------
DROP TABLE IF EXISTS `pms_chengben_shui`;
CREATE TABLE `pms_chengben_shui`  (
  `chengben_shui_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '税主键',
  `chengben_shui_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型',
  `chengben_shui_jinE` double NULL DEFAULT NULL COMMENT '金额',
  `chengben_shui_riQi` date NULL DEFAULT NULL COMMENT '日期',
  `chengben_shui_note` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `createuser` bigint(20) NULL DEFAULT NULL COMMENT '创建用户',
  `createtime` date NULL DEFAULT NULL COMMENT '创建时间',
  `modifyuser` bigint(20) NULL DEFAULT NULL COMMENT '最后修改用户',
  `modifytime` date NULL DEFAULT NULL COMMENT '最后修改时间',
  `isDel` tinyint(1) NULL DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`chengben_shui_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pms_chengben_shui
-- ----------------------------
INSERT INTO `pms_chengben_shui` VALUES ('4452e8dc09a24ac481bdac07bd82cfc3', '01', 500, NULL, '', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for pms_chengben_zhuanzhang
-- ----------------------------
DROP TABLE IF EXISTS `pms_chengben_zhuanzhang`;
CREATE TABLE `pms_chengben_zhuanzhang`  (
  `chengben_zhuanzhang_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '转账表主键',
  `chengben_zhuanzhang_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型',
  `chengben_zhuanzhang_jinE` double NULL DEFAULT NULL COMMENT '金额',
  `chengben_zhuanzhang_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `chengben_zhuanzhang_isShouDaoZhuanPiao` tinyint(4) NULL DEFAULT NULL COMMENT '是否收到专票',
  `chengben_zhuanzhang_isYiZhuanZhang` tinyint(4) NULL DEFAULT NULL COMMENT '是否已转账',
  `chengben_zhuanzhang_riQi` date NULL DEFAULT NULL COMMENT '日期',
  `chengben_zhuanzhang_note` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `createuser` bigint(20) NULL DEFAULT NULL COMMENT '创建用户',
  `createtime` date NULL DEFAULT NULL COMMENT '创建时间',
  `modifyuser` bigint(20) NULL DEFAULT NULL COMMENT '最后修改用户',
  `modifytime` date NULL DEFAULT NULL COMMENT '最后修改时间',
  `isDel` tinyint(1) NULL DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`chengben_zhuanzhang_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pms_chengben_zhuanzhang
-- ----------------------------

-- ----------------------------
-- Table structure for pms_hetong
-- ----------------------------
DROP TABLE IF EXISTS `pms_hetong`;
CREATE TABLE `pms_hetong`  (
  `hetong_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '合同id',
  `hetong_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合同编码',
  `hetong_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合同名称',
  `hetong_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合同类型',
  `hetong_qianDingRiQi` date NULL DEFAULT NULL COMMENT '签订日期',
  `hetong_kaiShiRiQi` date NULL DEFAULT NULL COMMENT '开始日期',
  `hetong_jieShuRiQi` date NULL DEFAULT NULL COMMENT '结束日期',
  `hetong_zongJinE` double NULL DEFAULT NULL COMMENT '总金额',
  `hetong_zhuangTai` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  `hetong_note` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `createuser` bigint(20) NULL DEFAULT NULL COMMENT '创建用户',
  `createtime` date NULL DEFAULT NULL COMMENT '创建时间',
  `modifyuser` bigint(20) NULL DEFAULT NULL COMMENT '最后修改用户',
  `modifytime` date NULL DEFAULT NULL COMMENT '最后修改时间',
  `isDel` tinyint(1) NULL DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`hetong_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pms_hetong
-- ----------------------------

-- ----------------------------
-- Table structure for pms_xiangmu
-- ----------------------------
DROP TABLE IF EXISTS `pms_xiangmu`;
CREATE TABLE `pms_xiangmu`  (
  `xiangmu_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '项目表主键',
  `xiangmu_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目类型',
  `xiangmu_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目编码',
  `xiangmu_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目名称',
  `xiangmu_keJianFanWei` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '可见范围',
  `xiangmu_fenZu` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分组',
  `xiangmu_miaoShu` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `createuser` bigint(20) NULL DEFAULT NULL COMMENT '创建用户',
  `createtime` date NULL DEFAULT NULL COMMENT '创建时间',
  `modifyuser` bigint(20) NULL DEFAULT NULL COMMENT '最后修改用户',
  `modifytime` date NULL DEFAULT NULL COMMENT '最后修改时间',
  `isDel` tinyint(1) NULL DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`xiangmu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pms_xiangmu
-- ----------------------------

-- ----------------------------
-- Table structure for pms_xiangmu_renwu
-- ----------------------------
DROP TABLE IF EXISTS `pms_xiangmu_renwu`;
CREATE TABLE `pms_xiangmu_renwu`  (
  `xiangmu_renwu_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务表主键',
  `xiangmu_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目表主键',
  `xiangmu_renwu_fenzu_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目任务分组主键',
  `xiangmu_renwu_biaoTi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `xiangmu_renwu_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型',
  `xiangmu_renwu_fuZeRen` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `xiangmu_renwu_youXianJi` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '优先级',
  `xiangmu_renwu_zhuangTai` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  `xiangmu_renwu_kaiShiShiJian` date NULL DEFAULT NULL COMMENT '开始时间',
  `xiangmu_renwu_jieZhiRiQi` date NULL DEFAULT NULL COMMENT '截至日期',
  `xiangmu_renwu_jinDu` double NULL DEFAULT NULL COMMENT '进度',
  `createuser` bigint(20) NULL DEFAULT NULL COMMENT '创建用户',
  `createtime` date NULL DEFAULT NULL COMMENT '创建时间',
  `modifyuser` bigint(20) NULL DEFAULT NULL COMMENT '最后修改用户',
  `modifytime` date NULL DEFAULT NULL COMMENT '最后修改时间',
  `isDel` tinyint(1) NULL DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`xiangmu_renwu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pms_xiangmu_renwu
-- ----------------------------

-- ----------------------------
-- Table structure for pms_xiangmu_renwu_fenzu
-- ----------------------------
DROP TABLE IF EXISTS `pms_xiangmu_renwu_fenzu`;
CREATE TABLE `pms_xiangmu_renwu_fenzu`  (
  `xiangmu_renwu_fenzu_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '项目分组ID',
  `xiangmu_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目ID',
  `xiangmu_renwu_fenzu_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目分组名称',
  `createuser` bigint(20) NULL DEFAULT NULL COMMENT '创建用户',
  `createtime` date NULL DEFAULT NULL COMMENT '创建时间',
  `modifyuser` bigint(20) NULL DEFAULT NULL COMMENT '最后修改用户',
  `modifytime` date NULL DEFAULT NULL COMMENT '最后修改时间',
  `isDel` tinyint(1) NULL DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`xiangmu_renwu_fenzu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pms_xiangmu_renwu_fenzu
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `blob_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'GMT+08:00');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'GMT+08:00');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'GMT+08:00');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000178494FC5A078707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000178494FC5A078707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000178494FC5A078707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'MSI1617171240513', 1617171257867, 15000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `int_prop_1` int(11) NULL DEFAULT NULL,
  `int_prop_2` int(11) NULL DEFAULT NULL,
  `long_prop_1` bigint(20) NULL DEFAULT NULL,
  `long_prop_2` bigint(20) NULL DEFAULT NULL,
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL,
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL,
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `next_fire_time` bigint(13) NULL DEFAULT NULL,
  `prev_fire_time` bigint(13) NULL DEFAULT NULL,
  `priority` int(11) NULL DEFAULT NULL,
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) NULL DEFAULT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `misfire_instr` smallint(2) NULL DEFAULT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1617171240000, -1, 5, 'PAUSED', 'CRON', 1617171240000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1617171240000, -1, 5, 'PAUSED', 'CRON', 1617171240000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1617171240000, -1, 5, 'PAUSED', 'CRON', 1617171240000, 0, NULL, 2, '');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2021-03-19 15:07:48', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2021-03-19 15:07:48', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2021-03-19 15:07:48', '', NULL, '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');
INSERT INTO `sys_config` VALUES (4, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2021-03-19 15:07:48', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '用户管理-密码字符范围', 'sys.account.chrtype', '0', 'Y', 'admin', '2021-03-19 15:07:48', '', NULL, '默认任意字符范围，0任意（密码可以输入任意字符），1数字（密码只能为0-9数字），2英文字母（密码只能为a-z和A-Z字母），3字母和数字（密码必须包含字母，数字）,4字母数字和特殊字符（目前支持的特殊字符包括：~!@#$%^&*()-=_+）');
INSERT INTO `sys_config` VALUES (6, '用户管理-初始密码修改策略', 'sys.account.initPasswordModify', '0', 'Y', 'admin', '2021-03-19 15:07:48', '', NULL, '0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES (7, '用户管理-账号密码更新周期', 'sys.account.passwordValidateDays', '0', 'Y', 'admin', '2021-03-19 15:07:48', '', NULL, '密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES (8, '主框架页-菜单导航显示风格', 'sys.index.menuStyle', 'default', 'Y', 'admin', '2021-03-19 15:07:48', '', NULL, '菜单导航显示风格（default为左侧导航菜单，topnav为顶部导航菜单）');
INSERT INTO `sys_config` VALUES (9, '主框架页-是否开启页脚', 'sys.index.ignoreFooter', 'true', 'Y', 'admin', '2021-03-19 15:07:48', '', NULL, '是否开启底部页脚显示（true显示，false隐藏）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-03-19 15:07:40', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-03-19 15:07:40', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-03-19 15:07:40', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-03-19 15:07:40', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-03-19 15:07:40', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-03-19 15:07:40', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-03-19 15:07:40', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-03-19 15:07:40', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-03-19 15:07:40', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-03-19 15:07:40', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 121 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (100, 1, '住宿', '01', 'pms_chengben_baoxiao_type', NULL, NULL, 'Y', '0', 'admin', '2021-03-19 16:28:33', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (101, 2, '餐饮', '02', 'pms_chengben_baoxiao_type', NULL, NULL, 'Y', '0', 'admin', '2021-03-19 16:28:49', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (102, 1, '增值税', '01', 'pms_chengben_shui_type', NULL, NULL, 'Y', '0', 'admin', '2021-03-19 17:01:07', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (103, 2, '印花税', '02', 'pms_chengben_shui_type', NULL, NULL, 'Y', '0', 'admin', '2021-03-19 17:01:17', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (104, 3, '企业所得税', '03', 'pms_chengben_shui_type', NULL, NULL, 'Y', '0', 'admin', '2021-03-19 17:01:27', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (105, 1, '对公', '01', 'pms_chengben_zhuanzhang_type', NULL, NULL, 'Y', '0', 'admin', '2021-03-19 17:03:07', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (106, 2, '对个人', '02', 'pms_chengben_zhuanzhang_type', NULL, NULL, 'Y', '0', 'admin', '2021-03-19 17:03:21', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (107, 1, '是', '1', 'pms_yes_no', NULL, NULL, 'Y', '0', 'admin', '2021-03-19 18:15:55', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (108, 2, '否', '0', 'pms_yes_no', NULL, NULL, 'Y', '0', 'admin', '2021-03-19 18:16:06', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (109, 1, '月薪', '01', 'pms_chengben_gongzi_type', NULL, NULL, 'Y', '0', 'admin', '2021-03-20 21:47:50', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (110, 2, '奖金', '02', 'pms_chengben_gongzi_type', NULL, NULL, 'Y', '0', 'admin', '2021-03-20 21:48:04', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (111, 1, '重要任务', '01', 'pms_xiangmu_renwu_type', NULL, NULL, 'Y', '0', 'admin', '2021-03-21 21:56:03', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (112, 2, '普通任务', '02', 'pms_xiangmu_renwu_type', NULL, NULL, 'Y', '0', 'admin', '2021-03-21 21:56:19', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (113, 1, '最高', '01', 'pms_xiangmu_renwu_youxianji', '', '', 'Y', '0', 'admin', '2021-03-21 21:58:29', 'admin', '2021-03-21 22:00:21', '');
INSERT INTO `sys_dict_data` VALUES (114, 2, '较高', '02', 'pms_xiangmu_renwu_youxianji', '', '', 'Y', '0', 'admin', '2021-03-21 21:58:41', 'admin', '2021-03-21 22:00:16', '');
INSERT INTO `sys_dict_data` VALUES (115, 3, '普通', '03', 'pms_xiangmu_renwu_youxianji', '', '', 'Y', '0', 'admin', '2021-03-21 21:58:52', 'admin', '2021-03-21 22:00:11', '');
INSERT INTO `sys_dict_data` VALUES (116, 4, '较低', '04', 'pms_xiangmu_renwu_youxianji', '', '', 'Y', '0', 'admin', '2021-03-21 21:59:45', 'admin', '2021-03-21 21:59:53', '');
INSERT INTO `sys_dict_data` VALUES (117, 5, '最低', '05', 'pms_xiangmu_renwu_youxianji', NULL, NULL, 'Y', '0', 'admin', '2021-03-21 22:00:02', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (118, 1, '未开始', '01', 'pms_xiangmu_renwu_status', NULL, NULL, 'Y', '0', 'admin', '2021-03-21 22:01:48', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (119, 2, '进行中', '02', 'pms_xiangmu_renwu_status', NULL, NULL, 'Y', '0', 'admin', '2021-03-21 22:01:56', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (120, 3, '已完成', '03', 'pms_xiangmu_renwu_status', NULL, NULL, 'Y', '0', 'admin', '2021-03-21 22:02:05', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (100, '报销类别', 'pms_chengben_baoxiao_type', '0', 'admin', '2021-03-19 16:27:40', 'admin', '2021-03-19 16:29:53', '成本报销表');
INSERT INTO `sys_dict_type` VALUES (101, '工资类别', 'pms_chengben_gongzi_type', '0', 'admin', '2021-03-19 16:29:30', 'admin', '2021-03-19 16:30:03', '成本工资表');
INSERT INTO `sys_dict_type` VALUES (102, '税类别', 'pms_chengben_shui_type', '0', 'admin', '2021-03-19 17:00:51', 'admin', '2021-03-19 17:02:37', '成本-税表');
INSERT INTO `sys_dict_type` VALUES (103, '转账类型', 'pms_chengben_zhuanzhang_type', '0', 'admin', '2021-03-19 17:02:24', 'admin', '2021-03-19 17:02:54', '成本转账表');
INSERT INTO `sys_dict_type` VALUES (104, '项目管理系统是否', 'pms_yes_no', '0', 'admin', '2021-03-19 18:15:37', 'admin', '2021-03-30 16:56:03', '全局使用');
INSERT INTO `sys_dict_type` VALUES (105, '任务类型', 'pms_xiangmu_renwu_type', '0', 'admin', '2021-03-21 19:45:09', '', NULL, '项目任务表');
INSERT INTO `sys_dict_type` VALUES (106, '优先级', 'pms_xiangmu_renwu_youxianji', '0', 'admin', '2021-03-21 21:58:13', '', NULL, '项目任务表');
INSERT INTO `sys_dict_type` VALUES (107, '任务状态', 'pms_xiangmu_renwu_status', '0', 'admin', '2021-03-21 22:01:33', '', NULL, '项目任务表');
INSERT INTO `sys_dict_type` VALUES (108, '项目类型', 'pms_xiangmu_leixing', '0', 'admin', '2021-03-28 19:18:47', 'admin', '2021-03-30 16:56:30', '项目表');
INSERT INTO `sys_dict_type` VALUES (109, '项目可见范围', 'pms_xiangmu_kejianfanwei', '0', 'admin', '2021-03-28 19:19:26', 'admin', '2021-03-30 16:56:36', '项目表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2021-03-19 15:07:48', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 141 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-03-19 17:05:05');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-19 17:05:19');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-03-19 17:20:10');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-19 17:59:44');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-03-19 18:04:44');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-19 18:04:50');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-19 18:05:32');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-19 18:08:21');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-19 18:10:36');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-03-19 18:40:56');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-19 18:41:00');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-19 18:42:46');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-03-19 18:50:39');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-19 18:51:00');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-19 19:17:52');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-03-19 19:18:37');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-19 19:18:44');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-19 19:28:03');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-20 21:28:42');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-20 21:30:32');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-20 21:32:16');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-20 21:34:32');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-20 21:35:41');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-21 12:19:04');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-03-21 19:35:09');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-21 19:35:14');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-21 21:54:37');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-28 10:28:42');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-03-30 18:46:24');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-31 09:03:27');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-31 10:13:32');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-03-31 10:17:58');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-31 10:18:05');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-03-31 10:18:18');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-31 10:18:20');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-31 10:19:01');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-03-31 10:19:52');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-31 10:19:54');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-03-31 10:20:30');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-31 10:20:32');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-31 10:21:42');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `is_refresh` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '是否刷新（0刷新 1不刷新）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2045 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 6, '#', 'menuItem', 'M', '0', '1', '', 'fa fa-gear', 'admin', '2021-03-19 15:07:48', 'admin', '2021-03-19 18:17:51', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 7, '#', 'menuItem', 'M', '0', '1', '', 'fa fa-video-camera', 'admin', '2021-03-19 15:07:48', 'admin', '2021-03-19 18:17:58', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 8, '#', 'menuItem', 'M', '0', '1', '', 'fa fa-bars', 'admin', '2021-03-19 15:07:48', 'admin', '2021-03-19 18:18:08', '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '若依官网', 0, 4, '', 'menuBlank', 'M', '1', '1', '', 'fa fa-location-arrow', 'admin', '2021-03-19 15:07:48', 'admin', '2021-03-19 18:18:45', '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, '/system/user', '', 'C', '0', '1', 'system:user:view', 'fa fa-user-o', 'admin', '2021-03-19 15:07:48', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, '/system/role', '', 'C', '0', '1', 'system:role:view', 'fa fa-user-secret', 'admin', '2021-03-19 15:07:48', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, '/system/menu', '', 'C', '0', '1', 'system:menu:view', 'fa fa-th-list', 'admin', '2021-03-19 15:07:48', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, '/system/dept', '', 'C', '0', '1', 'system:dept:view', 'fa fa-outdent', 'admin', '2021-03-19 15:07:48', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, '/system/post', '', 'C', '0', '1', 'system:post:view', 'fa fa-address-card-o', 'admin', '2021-03-19 15:07:48', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, '/system/dict', '', 'C', '0', '1', 'system:dict:view', 'fa fa-bookmark-o', 'admin', '2021-03-19 15:07:48', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, '/system/config', '', 'C', '0', '1', 'system:config:view', 'fa fa-sun-o', 'admin', '2021-03-19 15:07:48', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, '/system/notice', '', 'C', '0', '1', 'system:notice:view', 'fa fa-bullhorn', 'admin', '2021-03-19 15:07:48', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, '#', '', 'M', '0', '1', '', 'fa fa-pencil-square-o', 'admin', '2021-03-19 15:07:48', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, '/monitor/online', '', 'C', '0', '1', 'monitor:online:view', 'fa fa-user-circle', 'admin', '2021-03-19 15:07:48', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, '/monitor/job', '', 'C', '0', '1', 'monitor:job:view', 'fa fa-tasks', 'admin', '2021-03-19 15:07:48', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, '/monitor/data', '', 'C', '0', '1', 'monitor:data:view', 'fa fa-bug', 'admin', '2021-03-19 15:07:48', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, '/monitor/server', '', 'C', '0', '1', 'monitor:server:view', 'fa fa-server', 'admin', '2021-03-19 15:07:48', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, '/monitor/cache', '', 'C', '0', '1', 'monitor:cache:view', 'fa fa-cube', 'admin', '2021-03-19 15:07:48', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '表单构建', 3, 1, '/tool/build', '', 'C', '0', '1', 'tool:build:view', 'fa fa-wpforms', 'admin', '2021-03-19 15:07:48', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (115, '代码生成', 3, 2, '/tool/gen', '', 'C', '0', '1', 'tool:gen:view', 'fa fa-code', 'admin', '2021-03-19 15:07:48', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (116, '系统接口', 3, 3, '/tool/swagger', '', 'C', '0', '1', 'tool:swagger:view', 'fa fa-gg', 'admin', '2021-03-19 15:07:48', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, '/monitor/operlog', '', 'C', '0', '1', 'monitor:operlog:view', 'fa fa-address-book', 'admin', '2021-03-19 15:07:48', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, '/monitor/logininfor', '', 'C', '0', '1', 'monitor:logininfor:view', 'fa fa-file-image-o', 'admin', '2021-03-19 15:07:48', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '#', '', 'F', '0', '1', 'system:user:list', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '#', '', 'F', '0', '1', 'system:user:add', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '#', '', 'F', '0', '1', 'system:user:edit', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '#', '', 'F', '0', '1', 'system:user:remove', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '#', '', 'F', '0', '1', 'system:user:export', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '#', '', 'F', '0', '1', 'system:user:import', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '#', '', 'F', '0', '1', 'system:user:resetPwd', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '#', '', 'F', '0', '1', 'system:role:list', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '#', '', 'F', '0', '1', 'system:role:add', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '#', '', 'F', '0', '1', 'system:role:edit', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '#', '', 'F', '0', '1', 'system:role:remove', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '#', '', 'F', '0', '1', 'system:role:export', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '#', '', 'F', '0', '1', 'system:menu:list', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '#', '', 'F', '0', '1', 'system:menu:add', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '#', '', 'F', '0', '1', 'system:menu:edit', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '#', '', 'F', '0', '1', 'system:menu:remove', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '#', '', 'F', '0', '1', 'system:dept:list', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '#', '', 'F', '0', '1', 'system:dept:add', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '#', '', 'F', '0', '1', 'system:dept:edit', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '#', '', 'F', '0', '1', 'system:dept:remove', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '#', '', 'F', '0', '1', 'system:post:list', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '#', '', 'F', '0', '1', 'system:post:add', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '#', '', 'F', '0', '1', 'system:post:edit', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '#', '', 'F', '0', '1', 'system:post:remove', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '#', '', 'F', '0', '1', 'system:post:export', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', 'F', '0', '1', 'system:dict:list', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', 'F', '0', '1', 'system:dict:add', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', 'F', '0', '1', 'system:dict:edit', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', 'F', '0', '1', 'system:dict:remove', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', 'F', '0', '1', 'system:dict:export', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', 'F', '0', '1', 'system:config:list', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', 'F', '0', '1', 'system:config:add', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', 'F', '0', '1', 'system:config:edit', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', 'F', '0', '1', 'system:config:remove', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', 'F', '0', '1', 'system:config:export', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', 'F', '0', '1', 'system:notice:list', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', 'F', '0', '1', 'system:notice:add', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', 'F', '0', '1', 'system:notice:edit', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', 'F', '0', '1', 'system:notice:remove', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', 'F', '0', '1', 'monitor:operlog:list', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', 'F', '0', '1', 'monitor:operlog:remove', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '详细信息', 500, 3, '#', '', 'F', '0', '1', 'monitor:operlog:detail', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', 'F', '0', '1', 'monitor:operlog:export', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', 'F', '0', '1', 'monitor:logininfor:list', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', 'F', '0', '1', 'monitor:logininfor:remove', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', 'F', '0', '1', 'monitor:logininfor:export', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '账户解锁', 501, 4, '#', '', 'F', '0', '1', 'monitor:logininfor:unlock', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '在线查询', 109, 1, '#', '', 'F', '0', '1', 'monitor:online:list', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '批量强退', 109, 2, '#', '', 'F', '0', '1', 'monitor:online:batchForceLogout', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '单条强退', 109, 3, '#', '', 'F', '0', '1', 'monitor:online:forceLogout', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务查询', 110, 1, '#', '', 'F', '0', '1', 'monitor:job:list', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务新增', 110, 2, '#', '', 'F', '0', '1', 'monitor:job:add', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务修改', 110, 3, '#', '', 'F', '0', '1', 'monitor:job:edit', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '任务删除', 110, 4, '#', '', 'F', '0', '1', 'monitor:job:remove', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '状态修改', 110, 5, '#', '', 'F', '0', '1', 'monitor:job:changeStatus', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '任务详细', 110, 6, '#', '', 'F', '0', '1', 'monitor:job:detail', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '任务导出', 110, 7, '#', '', 'F', '0', '1', 'monitor:job:export', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成查询', 115, 1, '#', '', 'F', '0', '1', 'tool:gen:list', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '生成修改', 115, 2, '#', '', 'F', '0', '1', 'tool:gen:edit', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '生成删除', 115, 3, '#', '', 'F', '0', '1', 'tool:gen:remove', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '预览代码', 115, 4, '#', '', 'F', '0', '1', 'tool:gen:preview', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1061, '生成代码', 115, 5, '#', '', 'F', '0', '1', 'tool:gen:code', '#', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '成本管理', 0, 1, '#', 'menuItem', 'M', '0', '1', '', 'fa fa-diamond', 'admin', '2021-03-19 18:16:46', 'admin', '2021-03-20 18:54:30', '');
INSERT INTO `sys_menu` VALUES (2001, '项目管理', 0, 2, '#', 'menuItem', 'M', '0', '1', '', 'fa fa-suitcase', 'admin', '2021-03-19 18:17:14', 'admin', '2021-03-20 18:55:52', '');
INSERT INTO `sys_menu` VALUES (2002, '合同管理', 0, 3, '#', 'menuItem', 'M', '0', '1', '', 'fa fa-tasks', 'admin', '2021-03-19 18:17:26', 'admin', '2021-03-20 18:56:59', '');
INSERT INTO `sys_menu` VALUES (2003, '报销管理', 2000, 1, '/chengben/BaoXiao', '', 'C', '0', '1', 'chengben:BaoXiao:view', '#', 'admin', '2021-03-19 18:29:33', '', NULL, '报销管理菜单');
INSERT INTO `sys_menu` VALUES (2004, '报销管理查询', 2003, 1, '#', '', 'F', '0', '1', 'chengben:BaoXiao:list', '#', 'admin', '2021-03-19 18:29:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2005, '报销管理新增', 2003, 2, '#', '', 'F', '0', '1', 'chengben:BaoXiao:add', '#', 'admin', '2021-03-19 18:29:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2006, '报销管理修改', 2003, 3, '#', '', 'F', '0', '1', 'chengben:BaoXiao:edit', '#', 'admin', '2021-03-19 18:29:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2007, '报销管理删除', 2003, 4, '#', '', 'F', '0', '1', 'chengben:BaoXiao:remove', '#', 'admin', '2021-03-19 18:29:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2008, '报销管理导出', 2003, 5, '#', '', 'F', '0', '1', 'chengben:BaoXiao:export', '#', 'admin', '2021-03-19 18:29:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2009, '工资', 2000, 1, '/chengben/gongzi', 'menuItem', 'C', '0', '1', 'chengben:gongzi:view', '#', 'admin', '2021-03-19 21:14:38', 'admin', '2021-03-20 18:20:17', '工资菜单');
INSERT INTO `sys_menu` VALUES (2010, '工资查询', 2009, 1, '#', '', 'F', '0', '1', 'pms:gongzi:list', '#', 'admin', '2021-03-19 21:14:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2011, '工资新增', 2009, 2, '#', '', 'F', '0', '1', 'pms:gongzi:add', '#', 'admin', '2021-03-19 21:14:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2012, '工资修改', 2009, 3, '#', '', 'F', '0', '1', 'pms:gongzi:edit', '#', 'admin', '2021-03-19 21:14:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2013, '工资删除', 2009, 4, '#', '', 'F', '0', '1', 'pms:gongzi:remove', '#', 'admin', '2021-03-19 21:14:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2014, '工资导出', 2009, 5, '#', '', 'F', '0', '1', 'pms:gongzi:export', '#', 'admin', '2021-03-19 21:14:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2021, '税', 2000, 1, '/chengben/Tax', 'menuItem', 'C', '0', '1', 'chengben:Tax:view', '#', 'admin', '2021-03-20 16:56:53', 'admin', '2021-03-20 18:20:05', '税菜单');
INSERT INTO `sys_menu` VALUES (2022, '税查询', 2021, 1, '#', '', 'F', '0', '1', 'pms:Tax:list', '#', 'admin', '2021-03-20 16:56:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2023, '税新增', 2021, 2, '#', '', 'F', '0', '1', 'pms:Tax:add', '#', 'admin', '2021-03-20 16:56:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2024, '税修改', 2021, 3, '#', '', 'F', '0', '1', 'pms:Tax:edit', '#', 'admin', '2021-03-20 16:56:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2025, '税删除', 2021, 4, '#', '', 'F', '0', '1', 'pms:Tax:remove', '#', 'admin', '2021-03-20 16:56:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2026, '税导出', 2021, 5, '#', '', 'F', '0', '1', 'pms:Tax:export', '#', 'admin', '2021-03-20 16:56:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2027, '转账', 2000, 1, '/chengben/zhuanzhang', 'menuItem', 'C', '0', '1', 'chengben:zhuanzhang:view', '#', 'admin', '2021-03-20 17:04:07', 'admin', '2021-03-20 18:20:37', '转账菜单');
INSERT INTO `sys_menu` VALUES (2028, '转账查询', 2027, 1, '#', '', 'F', '0', '1', 'pms:zhuanzhang:list', '#', 'admin', '2021-03-20 17:04:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2029, '转账新增', 2027, 2, '#', '', 'F', '0', '1', 'pms:zhuanzhang:add', '#', 'admin', '2021-03-20 17:04:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2030, '转账修改', 2027, 3, '#', '', 'F', '0', '1', 'pms:zhuanzhang:edit', '#', 'admin', '2021-03-20 17:04:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2031, '转账删除', 2027, 4, '#', '', 'F', '0', '1', 'pms:zhuanzhang:remove', '#', 'admin', '2021-03-20 17:04:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2032, '转账导出', 2027, 5, '#', '', 'F', '0', '1', 'pms:zhuanzhang:export', '#', 'admin', '2021-03-20 17:04:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2033, '合同信息管理', 2002, 1, '/hetong/hetong', '', 'C', '0', '1', 'hetong:hetong:view', '#', 'admin', '2021-03-20 17:11:00', '', NULL, '合同信息管理菜单');
INSERT INTO `sys_menu` VALUES (2034, '合同信息管理查询', 2033, 1, '#', '', 'F', '0', '1', 'hetong:hetong:list', '#', 'admin', '2021-03-20 17:11:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2035, '合同信息管理新增', 2033, 2, '#', '', 'F', '0', '1', 'hetong:hetong:add', '#', 'admin', '2021-03-20 17:11:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2036, '合同信息管理修改', 2033, 3, '#', '', 'F', '0', '1', 'hetong:hetong:edit', '#', 'admin', '2021-03-20 17:11:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2037, '合同信息管理删除', 2033, 4, '#', '', 'F', '0', '1', 'hetong:hetong:remove', '#', 'admin', '2021-03-20 17:11:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2038, '合同信息管理导出', 2033, 5, '#', '', 'F', '0', '1', 'hetong:hetong:export', '#', 'admin', '2021-03-20 17:11:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2039, '项目信息管理', 2001, 1, '/xiangmu/xiangmu', '', 'C', '0', '1', 'xiangmu:xiangmu:view', '#', 'admin', '2021-03-20 17:23:31', '', NULL, '项目信息管理菜单');
INSERT INTO `sys_menu` VALUES (2040, '项目信息管理查询', 2039, 1, '#', '', 'F', '0', '1', 'xiangmu:xiangmu:list', '#', 'admin', '2021-03-20 17:23:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2041, '项目信息管理新增', 2039, 2, '#', '', 'F', '0', '1', 'xiangmu:xiangmu:add', '#', 'admin', '2021-03-20 17:23:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2042, '项目信息管理修改', 2039, 3, '#', '', 'F', '0', '1', 'xiangmu:xiangmu:edit', '#', 'admin', '2021-03-20 17:23:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2043, '项目信息管理删除', 2039, 4, '#', '', 'F', '0', '1', 'xiangmu:xiangmu:remove', '#', 'admin', '2021-03-20 17:23:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2044, '项目信息管理导出', 2039, 5, '#', '', 'F', '0', '1', 'xiangmu:xiangmu:export', '#', 'admin', '2021-03-20 17:23:31', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 234 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"pms_xiangmu_renwu,pms_xiangmu,pms_hetong,pms_chengben_zhuanzhang,pms_chengben_shui,pms_chengben_gongzi,pms_chengben_baoxiao\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 16:24:52');
INSERT INTO `sys_oper_log` VALUES (101, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"报销类别\"],\"dictType\":[\"pms_chengben_baoxiao_type\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 16:27:40');
INSERT INTO `sys_oper_log` VALUES (102, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"住宿\"],\"dictValue\":[\"01\"],\"dictType\":[\"pms_chengben_baoxiao_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"01\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 16:28:33');
INSERT INTO `sys_oper_log` VALUES (103, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"餐饮\"],\"dictValue\":[\"02\"],\"dictType\":[\"pms_chengben_baoxiao_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"02\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 16:28:49');
INSERT INTO `sys_oper_log` VALUES (104, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"工资类别\"],\"dictType\":[\"pms_chengben_gongzi_type\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 16:29:30');
INSERT INTO `sys_oper_log` VALUES (105, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/edit', '127.0.0.1', '内网IP', '{\"dictId\":[\"100\"],\"dictName\":[\"报销类别\"],\"dictType\":[\"pms_chengben_baoxiao_type\"],\"status\":[\"0\"],\"remark\":[\"成本报销表\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 16:29:53');
INSERT INTO `sys_oper_log` VALUES (106, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/edit', '127.0.0.1', '内网IP', '{\"dictId\":[\"101\"],\"dictName\":[\"工资类别\"],\"dictType\":[\"pms_chengben_gongzi_type\"],\"status\":[\"0\"],\"remark\":[\"成本工资表\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 16:30:03');
INSERT INTO `sys_oper_log` VALUES (107, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"税类别\"],\"dictType\":[\"pms_chengben_shui\"],\"status\":[\"0\"],\"remark\":[\"成本-税表\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 17:00:51');
INSERT INTO `sys_oper_log` VALUES (108, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"增值税\"],\"dictValue\":[\"01\"],\"dictType\":[\"pms_chengben_shui\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 17:01:07');
INSERT INTO `sys_oper_log` VALUES (109, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"印花税\"],\"dictValue\":[\"02\"],\"dictType\":[\"pms_chengben_shui\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 17:01:17');
INSERT INTO `sys_oper_log` VALUES (110, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"企业所得税\"],\"dictValue\":[\"03\"],\"dictType\":[\"pms_chengben_shui\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 17:01:27');
INSERT INTO `sys_oper_log` VALUES (111, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"转账类型\"],\"dictType\":[\"pms_chengben_zhuanzhang_type\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 17:02:24');
INSERT INTO `sys_oper_log` VALUES (112, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/edit', '127.0.0.1', '内网IP', '{\"dictId\":[\"102\"],\"dictName\":[\"税类别\"],\"dictType\":[\"pms_chengben_shui_type\"],\"status\":[\"0\"],\"remark\":[\"成本-税表\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 17:02:37');
INSERT INTO `sys_oper_log` VALUES (113, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/edit', '127.0.0.1', '内网IP', '{\"dictId\":[\"103\"],\"dictName\":[\"转账类型\"],\"dictType\":[\"pms_chengben_zhuanzhang_type\"],\"status\":[\"0\"],\"remark\":[\"成本转账表\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 17:02:54');
INSERT INTO `sys_oper_log` VALUES (114, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"对公\"],\"dictValue\":[\"01\"],\"dictType\":[\"pms_chengben_zhuanzhang_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 17:03:07');
INSERT INTO `sys_oper_log` VALUES (115, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"对个人\"],\"dictValue\":[\"02\"],\"dictType\":[\"pms_chengben_zhuanzhang_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 17:03:21');
INSERT INTO `sys_oper_log` VALUES (116, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"deptId\":[\"103\"],\"userName\":[\"超级管理员\"],\"dept.deptName\":[\"研发部门\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"ry@163.com\"],\"loginName\":[\"admin\"],\"sex\":[\"1\"],\"role\":[\"1\"],\"remark\":[\"管理员\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"1\"]}', 'null', 1, '不允许操作超级管理员用户', '2021-03-19 17:03:37');
INSERT INTO `sys_oper_log` VALUES (117, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"deptId\":[\"103\"],\"userName\":[\"超级管理员\"],\"dept.deptName\":[\"研发部门\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"ry@163.com\"],\"loginName\":[\"admin\"],\"sex\":[\"1\"],\"role\":[\"1\"],\"remark\":[\"管理员\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"1\"]}', 'null', 1, '不允许操作超级管理员用户', '2021-03-19 17:03:42');
INSERT INTO `sys_oper_log` VALUES (118, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"4\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"若依官网\"],\"url\":[\"http://ruoyi.vip\"],\"target\":[\"menuBlank\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-location-arrow\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 17:04:37');
INSERT INTO `sys_oper_log` VALUES (119, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '研发部门', '/tool/gen/synchDb/pms_chengben_baoxiao', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 18:11:39');
INSERT INTO `sys_oper_log` VALUES (120, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '研发部门', '/tool/gen/synchDb/pms_chengben_gongzi', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 18:11:42');
INSERT INTO `sys_oper_log` VALUES (121, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '研发部门', '/tool/gen/synchDb/pms_chengben_shui', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 18:11:44');
INSERT INTO `sys_oper_log` VALUES (122, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '研发部门', '/tool/gen/synchDb/pms_chengben_zhuanzhang', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 18:11:47');
INSERT INTO `sys_oper_log` VALUES (123, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '研发部门', '/tool/gen/synchDb/pms_hetong', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 18:11:50');
INSERT INTO `sys_oper_log` VALUES (124, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '研发部门', '/tool/gen/synchDb/pms_xiangmu', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 18:11:52');
INSERT INTO `sys_oper_log` VALUES (125, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '研发部门', '/tool/gen/synchDb/pms_xiangmu_renwu', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 18:11:54');
INSERT INTO `sys_oper_log` VALUES (126, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"项目管理系统是否\"],\"dictType\":[\"pms_yes_no\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 18:15:37');
INSERT INTO `sys_oper_log` VALUES (127, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"是\"],\"dictValue\":[\"1\"],\"dictType\":[\"pms_yes_no\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 18:15:55');
INSERT INTO `sys_oper_log` VALUES (128, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"否\"],\"dictValue\":[\"0\"],\"dictType\":[\"pms_yes_no\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 18:16:06');
INSERT INTO `sys_oper_log` VALUES (129, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"成本管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 18:16:46');
INSERT INTO `sys_oper_log` VALUES (130, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"项目管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 18:17:14');
INSERT INTO `sys_oper_log` VALUES (131, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"合同管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 18:17:26');
INSERT INTO `sys_oper_log` VALUES (132, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"6\"],\"icon\":[\"fa fa-gear\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 18:17:51');
INSERT INTO `sys_oper_log` VALUES (133, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统监控\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"7\"],\"icon\":[\"fa fa-video-camera\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 18:17:58');
INSERT INTO `sys_oper_log` VALUES (134, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"3\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统工具\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"8\"],\"icon\":[\"fa fa-bars\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 18:18:08');
INSERT INTO `sys_oper_log` VALUES (135, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/4', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"菜单已分配,不允许删除\",\r\n  \"code\" : 301\r\n}', 0, NULL, '2021-03-19 18:18:21');
INSERT INTO `sys_oper_log` VALUES (136, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"4\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"若依官网\"],\"url\":[\"\"],\"target\":[\"menuBlank\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-location-arrow\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 18:18:28');
INSERT INTO `sys_oper_log` VALUES (137, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/4', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"菜单已分配,不允许删除\",\r\n  \"code\" : 301\r\n}', 0, NULL, '2021-03-19 18:18:30');
INSERT INTO `sys_oper_log` VALUES (138, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"4\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"若依官网\"],\"url\":[\"\"],\"target\":[\"menuBlank\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-location-arrow\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 18:18:45');
INSERT INTO `sys_oper_log` VALUES (139, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/4', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"菜单已分配,不允许删除\",\r\n  \"code\" : 301\r\n}', 0, NULL, '2021-03-19 18:18:48');
INSERT INTO `sys_oper_log` VALUES (140, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"pms_chengben_baoxiao\"],\"tableComment\":[\"成本报销\"],\"className\":[\"PmsChengbenBaoxiao\"],\"functionAuthor\":[\"lengjun\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"报销表主键\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"chengbenBaoxiaoId\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"类别\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"chengbenBaoxiaoType\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"select\"],\"columns[1].dictType\":[\"pms_chengben_baoxiao_type\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"明细\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"chengbenBaoxiaoMingxi\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"金额\"],\"columns[3].javaType\":[\"Double\"],\"columns[3].javaField\":[\"chengbenBaoxiaoJine\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"开票日期\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"chengbenBaoxiaoKaipiaoriqi\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].column', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 18:21:12');
INSERT INTO `sys_oper_log` VALUES (141, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"pms_chengben_baoxiao\"],\"tableComment\":[\"成本报销\"],\"className\":[\"PmsChengbenBaoxiao\"],\"functionAuthor\":[\"lengjun\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"报销表主键\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"chengbenBaoxiaoId\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"类别\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"chengbenBaoxiaoType\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"select\"],\"columns[1].dictType\":[\"pms_chengben_baoxiao_type\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"明细\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"chengbenBaoxiaoMingxi\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"金额\"],\"columns[3].javaType\":[\"Double\"],\"columns[3].javaField\":[\"chengbenBaoxiaoJine\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"开票日期\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"chengbenBaoxiaoKaipiaoriqi\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].column', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 18:22:30');
INSERT INTO `sys_oper_log` VALUES (142, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"pms_chengben_baoxiao\"],\"tableComment\":[\"成本报销\"],\"className\":[\"Baoxiao\"],\"functionAuthor\":[\"lengjun\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"报销表主键\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"chengbenBaoxiaoId\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"类别\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"chengbenBaoxiaoType\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"select\"],\"columns[1].dictType\":[\"pms_chengben_baoxiao_type\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"明细\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"chengbenBaoxiaoMingxi\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"金额\"],\"columns[3].javaType\":[\"Double\"],\"columns[3].javaField\":[\"chengbenBaoxiaoJine\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"开票日期\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"chengbenBaoxiaoKaipiaoriqi\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 18:23:31');
INSERT INTO `sys_oper_log` VALUES (143, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"pms_chengben_baoxiao\"],\"tableComment\":[\"成本报销\"],\"className\":[\"Baoxiao\"],\"functionAuthor\":[\"lengjun\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"报销表主键\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"chengbenBaoxiaoId\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"类别\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"chengbenBaoxiaoType\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"select\"],\"columns[1].dictType\":[\"pms_chengben_baoxiao_type\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"明细\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"chengbenBaoxiaoMingxi\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"金额\"],\"columns[3].javaType\":[\"Double\"],\"columns[3].javaField\":[\"chengbenBaoxiaoJine\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"开票日期\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"chengbenBaoxiaoKaipiaoriqi\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 18:24:06');
INSERT INTO `sys_oper_log` VALUES (144, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"pms_chengben_baoxiao\"],\"tableComment\":[\"成本报销\"],\"className\":[\"Baoxiao\"],\"functionAuthor\":[\"lengjun\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"报销表主键\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"chengbenBaoxiaoId\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"类别\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"chengbenBaoxiaoType\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"select\"],\"columns[1].dictType\":[\"pms_chengben_baoxiao_type\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"明细\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"chengbenBaoxiaoMingxi\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"金额\"],\"columns[3].javaType\":[\"Double\"],\"columns[3].javaField\":[\"chengbenBaoxiaoJine\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"开票日期\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"chengbenBaoxiaoKaipiaoriqi\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 18:27:52');
INSERT INTO `sys_oper_log` VALUES (145, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/pms_chengben_baoxiao', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-03-19 18:28:04');
INSERT INTO `sys_oper_log` VALUES (146, '报销管理', 1, 'com.ruoyi.pms.chengben.controller.BaoxiaoController.addSave()', 'POST', 1, 'admin', '研发部门', '/chengben/BaoXiao/add', '127.0.0.1', '内网IP', '{\"chengbenBaoxiaoType\":[\"01\"],\"chengbenBaoxiaoMingxi\":[\"广州出差住宿票\"],\"chengbenBaoxiaoJine\":[\"678\"],\"chengbenBaoxiaoKaipiaoriqi\":[\"2021-01-20\"],\"chengbenBaoxiaoIszhuanpiao\":[\"0\"],\"chengbenBaoxiaoFapiaohaoma\":[\"\"],\"chengbenBaoxiaoXiaofangmingcheng\":[\"\"],\"chengbenBaoxiaoDikoushui\":[\"\"],\"chengbenBaoxiaoIsyibaoxiao\":[\"0\"],\"chengbenBaoxiaoBeizhu\":[\"\"],\"chengbenBaoxiaoBaoxiaoren\":[\"\"],\"createuser\":[\"\"],\"modifyuser\":[\"\"],\"modifytime\":[\"\"],\"isDel\":[\"0\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'chengben_baoxiao_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\ProductionWorkspace\\java\\cyzt_pms\\pms\\target\\classes\\mapper\\chengben\\BaoxiaoMapper.xml]\r\n### The error may involve com.ruoyi.pms.chengben.mapper.BaoxiaoMapper.insertBaoxiao-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into pms_chengben_baoxiao          ( chengben_baoxiao_type,             chengben_baoxiao_mingxi,             chengben_baoxiao_jinE,             chengben_baoxiao_kaiPiaoRiQi,             chengben_baoxiao_isZhuanPiao,             chengben_baoxiao_faPiaoHaoMa,             chengben_baoxiao_xiaoFangMingCheng,                          chengben_baoxiao_isYiBaoXiao,             chengben_baoxiao_beizhu,                                                                              isDel )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ?,             ?,                                                                              ? )\r\n### Cause: java.sql.SQLException: Field \'chengben_baoxiao_id\' doesn\'t have a default value\n; Field \'chengben_baoxiao_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'chengben_baoxiao_id\' doesn\'t have a default value', '2021-03-19 20:57:03');
INSERT INTO `sys_oper_log` VALUES (147, '报销管理', 1, 'com.ruoyi.pms.chengben.controller.BaoxiaoController.addSave()', 'POST', 1, 'admin', '研发部门', '/chengben/BaoXiao/add', '127.0.0.1', '内网IP', '{\"chengbenBaoxiaoType\":[\"01\"],\"chengbenBaoxiaoMingxi\":[\"\"],\"chengbenBaoxiaoJine\":[\"\"],\"chengbenBaoxiaoKaipiaoriqi\":[\"\"],\"chengbenBaoxiaoIszhuanpiao\":[\"0\"],\"chengbenBaoxiaoFapiaohaoma\":[\"\"],\"chengbenBaoxiaoXiaofangmingcheng\":[\"\"],\"chengbenBaoxiaoDikoushui\":[\"\"],\"chengbenBaoxiaoIsyibaoxiao\":[\"1\"],\"chengbenBaoxiaoBeizhu\":[\"\"],\"chengbenBaoxiaoBaoxiaoren\":[\"\"],\"createuser\":[\"\"],\"modifyuser\":[\"\"],\"modifytime\":[\"\"],\"isDel\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 21:05:36');
INSERT INTO `sys_oper_log` VALUES (148, '报销管理', 2, 'com.ruoyi.pms.chengben.controller.BaoxiaoController.editSave()', 'POST', 1, 'admin', '研发部门', '/chengben/BaoXiao/edit', '127.0.0.1', '内网IP', '{\"chengbenBaoxiaoId\":[\"957334af5226471cab7359fa1bdeed58\"],\"chengbenBaoxiaoType\":[\"01\"],\"chengbenBaoxiaoMingxi\":[\"广州出差住宿票\"],\"chengbenBaoxiaoJine\":[\"899\"],\"chengbenBaoxiaoKaipiaoriqi\":[\"2021-03-19\"],\"chengbenBaoxiaoIszhuanpiao\":[\"0\"],\"chengbenBaoxiaoFapiaohaoma\":[\"\"],\"chengbenBaoxiaoXiaofangmingcheng\":[\"\"],\"chengbenBaoxiaoDikoushui\":[\"\"],\"chengbenBaoxiaoIsyibaoxiao\":[\"0\"],\"chengbenBaoxiaoBeizhu\":[\"\"],\"chengbenBaoxiaoBaoxiaoren\":[\"\"],\"createuser\":[\"\"],\"modifyuser\":[\"\"],\"modifytime\":[\"\"],\"isDel\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 21:05:58');
INSERT INTO `sys_oper_log` VALUES (149, '报销管理', 1, 'com.ruoyi.pms.chengben.controller.BaoxiaoController.addSave()', 'POST', 1, 'admin', '研发部门', '/chengben/BaoXiao/add', '127.0.0.1', '内网IP', '{\"chengbenBaoxiaoType\":[\"02\"],\"chengbenBaoxiaoMingxi\":[\"\"],\"chengbenBaoxiaoJine\":[\"\"],\"chengbenBaoxiaoKaipiaoriqi\":[\"\"],\"chengbenBaoxiaoIszhuanpiao\":[\"0\"],\"chengbenBaoxiaoFapiaohaoma\":[\"\"],\"chengbenBaoxiaoXiaofangmingcheng\":[\"\"],\"chengbenBaoxiaoDikoushui\":[\"\"],\"chengbenBaoxiaoIsyibaoxiao\":[\"1\"],\"chengbenBaoxiaoBeizhu\":[\"\"],\"chengbenBaoxiaoBaoxiaoren\":[\"\"],\"createuser\":[\"\"],\"modifyuser\":[\"\"],\"modifytime\":[\"\"],\"isDel\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 21:06:07');
INSERT INTO `sys_oper_log` VALUES (150, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"2\"],\"tableName\":[\"pms_chengben_gongzi\"],\"tableComment\":[\"成本工资表\"],\"className\":[\"Gongzi\"],\"functionAuthor\":[\"lengjun\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"12\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"工资表主键\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"chengbenGongziId\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"13\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"类型\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"chengbenGongziType\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"select\"],\"columns[1].dictType\":[\"pms_chengben_gongzi_type\"],\"columns[2].columnId\":[\"14\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"月份\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"chengbenGongziYuefen\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"15\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"应发工资\"],\"columns[3].javaType\":[\"Double\"],\"columns[3].javaField\":[\"chengbenGongziYingfa\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"16\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"个人社保\"],\"columns[4].javaType\":[\"Double\"],\"columns[4].javaField\":[\"chengbenGongziGerenshebao\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"17\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"个税\"],\"columns[5].javaType\":[\"', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-19 21:12:50');
INSERT INTO `sys_oper_log` VALUES (151, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/pms_chengben_gongzi', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-03-19 21:14:17');
INSERT INTO `sys_oper_log` VALUES (152, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"3\"],\"tableName\":[\"pms_chengben_shui\"],\"tableComment\":[\"成本-税表\"],\"className\":[\"Tax\"],\"functionAuthor\":[\"lengjun\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"23\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"税主键\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"chengbenShuiId\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"24\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"金额\"],\"columns[1].javaType\":[\"Double\"],\"columns[1].javaField\":[\"chengbenShuiJine\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"25\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"日期\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"chengbenShuiRiqi\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"26\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"备注\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"chengbenShuiNote\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"textarea\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"71\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"创建用户\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"createuser\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"72\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"创建时间\"],\"columns[5].javaType\":[\"Date\"],\"columns[5].javaField\":[\"createtime\"],\"columns[5].i', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-20 16:56:24');
INSERT INTO `sys_oper_log` VALUES (153, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/pms_chengben_shui', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-03-20 16:56:33');
INSERT INTO `sys_oper_log` VALUES (154, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"4\"],\"tableName\":[\"pms_chengben_zhuanzhang\"],\"tableComment\":[\"成本转账表\"],\"className\":[\"ZhuanZhang\"],\"functionAuthor\":[\"lengjun\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"27\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"转账表主键\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"chengbenZhuanzhangId\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"28\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"类型\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"chengbenZhuanzhangType\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"select\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"29\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"金额\"],\"columns[2].javaType\":[\"Double\"],\"columns[2].javaField\":[\"chengbenZhuanzhangJine\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"30\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"名称\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"chengbenZhuanzhangName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"31\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"是否收到专票\"],\"columns[4].javaType\":[\"Integer\"],\"columns[4].javaField\":[\"chengbenZhuanzhangIsshoudaozhuanpiao\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"32\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"是否已转账\"],\"columns[5].', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-20 17:03:43');
INSERT INTO `sys_oper_log` VALUES (155, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/pms_chengben_zhuanzhang', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-03-20 17:03:46');
INSERT INTO `sys_oper_log` VALUES (156, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"5\"],\"tableName\":[\"pms_hetong\"],\"tableComment\":[\"合同表\"],\"className\":[\"Hetong\"],\"functionAuthor\":[\"lengjun\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"35\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"合同id\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"hetongId\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"36\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"合同编码\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"hetongCode\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"37\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"合同名称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"hetongName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"38\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"合同类型\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"hetongType\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"select\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"39\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"签订日期\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"hetongQiandingriqi\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"40\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"开始日期\"],\"columns[5].javaType\":[\"Date\"],\"columns[5].javaField\":[\"hetongKaishiriqi\"],\"columns[5].isInsert', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-20 17:09:59');
INSERT INTO `sys_oper_log` VALUES (157, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/pms_chengben_zhuanzhang', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-03-20 17:10:02');
INSERT INTO `sys_oper_log` VALUES (158, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/pms_hetong', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-03-20 17:10:45');
INSERT INTO `sys_oper_log` VALUES (159, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"6\"],\"tableName\":[\"pms_xiangmu\"],\"tableComment\":[\"项目基本信息表\"],\"className\":[\"Xiangmu\"],\"functionAuthor\":[\"lengjun\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"45\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"项目表主键\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"xiangmuId\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"46\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"项目编码\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"xiangmuCode\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"47\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"可见范围\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"xiangmuKejianfanwei\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"48\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"分组\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"xiangmuFenzu\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"49\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"描述\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"xiangmuMiaoshu\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"textarea\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"86\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"创建用户\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"createuser\"],\"columns[5].isI', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-20 17:23:00');
INSERT INTO `sys_oper_log` VALUES (160, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/pms_xiangmu', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-03-20 17:23:05');
INSERT INTO `sys_oper_log` VALUES (161, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2009\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"工资\"],\"url\":[\"/chengben/gongzi\"],\"target\":[\"menuItem\"],\"perms\":[\"pms:gongzi:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-20 18:19:42');
INSERT INTO `sys_oper_log` VALUES (162, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2021\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"税\"],\"url\":[\"/chengben/Tax\"],\"target\":[\"menuItem\"],\"perms\":[\"chengben:Tax:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-20 18:20:05');
INSERT INTO `sys_oper_log` VALUES (163, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2009\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"工资\"],\"url\":[\"/chengben/gongzi\"],\"target\":[\"menuItem\"],\"perms\":[\"chengben:gongzi:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-20 18:20:17');
INSERT INTO `sys_oper_log` VALUES (164, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2027\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"转账\"],\"url\":[\"/chengben/zhuanzhang\"],\"target\":[\"menuItem\"],\"perms\":[\"chengben:zhuanzhang:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-20 18:20:37');
INSERT INTO `sys_oper_log` VALUES (165, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '研发部门', '/tool/gen/synchDb/pms_chengben_shui', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-20 18:43:46');
INSERT INTO `sys_oper_log` VALUES (166, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"3\"],\"tableName\":[\"pms_chengben_shui\"],\"tableComment\":[\"成本-税表\"],\"className\":[\"Tax\"],\"functionAuthor\":[\"lengjun\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"23\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"税主键\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"chengbenShuiId\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"24\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"金额\"],\"columns[1].javaType\":[\"Double\"],\"columns[1].javaField\":[\"chengbenShuiJine\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"96\"],\"columns[2].sort\":[\"2\"],\"columns[2].columnComment\":[\"类型\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"chengbenShuiType\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"25\"],\"columns[3].sort\":[\"3\"],\"columns[3].columnComment\":[\"日期\"],\"columns[3].javaType\":[\"Date\"],\"columns[3].javaField\":[\"chengbenShuiRiqi\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"datetime\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"26\"],\"columns[4].sort\":[\"4\"],\"columns[4].columnComment\":[\"备注\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"chengbenShuiNote\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"textarea\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"71\"],\"columns[5].sort\":[\"5\"],\"columns[5].columnComment\":[\"创建用户\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"createuser\"],\"colum', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-20 18:44:10');
INSERT INTO `sys_oper_log` VALUES (167, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"2\"],\"tableName\":[\"pms_chengben_gongzi\"],\"tableComment\":[\"成本工资表\"],\"className\":[\"Gongzi\"],\"functionAuthor\":[\"lengjun\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"12\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"工资表主键\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"chengbenGongziId\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"13\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"类型\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"chengbenGongziType\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"select\"],\"columns[1].dictType\":[\"pms_chengben_gongzi_type\"],\"columns[2].columnId\":[\"14\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"月份\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"chengbenGongziYuefen\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"15\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"应发工资\"],\"columns[3].javaType\":[\"Double\"],\"columns[3].javaField\":[\"chengbenGongziYingfa\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"16\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"个人社保\"],\"columns[4].javaType\":[\"Double\"],\"columns[4].javaField\":[\"chengbenGongziGerenshebao\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"17\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"个税\"],\"columns[5].javaType\":[\"', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-20 18:44:35');
INSERT INTO `sys_oper_log` VALUES (168, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"4\"],\"tableName\":[\"pms_chengben_zhuanzhang\"],\"tableComment\":[\"成本转账表\"],\"className\":[\"ZhuanZhang\"],\"functionAuthor\":[\"lengjun\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"27\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"转账表主键\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"chengbenZhuanzhangId\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"28\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"类型\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"chengbenZhuanzhangType\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"select\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"29\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"金额\"],\"columns[2].javaType\":[\"Double\"],\"columns[2].javaField\":[\"chengbenZhuanzhangJine\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"30\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"名称\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"chengbenZhuanzhangName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"31\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"是否收到专票\"],\"columns[4].javaType\":[\"Integer\"],\"columns[4].javaField\":[\"chengbenZhuanzhangIsshoudaozhuanpiao\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"32\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"是否已转账\"],\"columns[5].', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-20 18:44:52');
INSERT INTO `sys_oper_log` VALUES (169, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/pms_chengben_shui', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-03-20 18:44:56');
INSERT INTO `sys_oper_log` VALUES (170, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"成本管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-diamond\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-20 18:54:30');
INSERT INTO `sys_oper_log` VALUES (171, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2001\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"项目管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-suitcase\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-20 18:55:52');
INSERT INTO `sys_oper_log` VALUES (172, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2002\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"合同管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-tasks\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-20 18:56:59');
INSERT INTO `sys_oper_log` VALUES (173, '税', 1, 'com.ruoyi.pms.chengben.controller.TaxController.addSave()', 'POST', 1, 'admin', '研发部门', '/chengben/Tax/add', '127.0.0.1', '内网IP', '{\"chengbenShuiType\":[\"\"],\"chengbenShuiJine\":[\"33\"],\"chengbenShuiRiqi\":[\"2021-03-20\"],\"chengbenShuiNote\":[\"\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'chengben_shui_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\ProductionWorkspace\\java\\cyzt_pms\\pms\\target\\classes\\mapper\\chengben\\TaxMapper.xml]\r\n### The error may involve com.ruoyi.pms.chengben.mapper.TaxMapper.insertTax-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into pms_chengben_shui          ( chengben_shui_jinE,             chengben_shui_type,             chengben_shui_riQi,             chengben_shui_note )           values ( ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'chengben_shui_id\' doesn\'t have a default value\n; Field \'chengben_shui_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'chengben_shui_id\' doesn\'t have a default value', '2021-03-20 21:32:50');
INSERT INTO `sys_oper_log` VALUES (174, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"月薪\"],\"dictValue\":[\"01\"],\"dictType\":[\"pms_chengben_gongzi_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-20 21:47:50');
INSERT INTO `sys_oper_log` VALUES (175, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"奖金\"],\"dictValue\":[\"02\"],\"dictType\":[\"pms_chengben_gongzi_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-20 21:48:04');
INSERT INTO `sys_oper_log` VALUES (176, '工资', 1, 'com.ruoyi.pms.chengben.controller.GongziController.addSave()', 'POST', 1, 'admin', '研发部门', '/chengben/gongzi/add', '127.0.0.1', '内网IP', '{\"chengbenGongziType\":[\"01\"],\"chengbenGongziYuefen\":[\"2021-03-10\"],\"chengbenGongziYingfa\":[\"500\"],\"chengbenGongziGerenshebao\":[\"100\"],\"chengbenGongziGeshui\":[\"3\"],\"chengbenGongziBufabujiao\":[\"0\"],\"chengbenGongziShifa\":[\"400\"],\"chengbenGongziGongsishebao\":[\"100\"],\"chengbenGongziYonggongchengben\":[\"600\"],\"chengbenGongziNote\":[\"无\"],\"chengbenGongziFaxinren\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-20 21:52:24');
INSERT INTO `sys_oper_log` VALUES (177, '工资', 2, 'com.ruoyi.pms.chengben.controller.GongziController.editSave()', 'POST', 1, 'admin', '研发部门', '/chengben/gongzi/edit', '127.0.0.1', '内网IP', '{\"chengbenGongziId\":[\"816f73dd3d4049c08695d5303bd22503\"],\"chengbenGongziType\":[\"01\"],\"chengbenGongziYuefen\":[\"2021-03-10\"],\"chengbenGongziYingfa\":[\"500.1\"],\"chengbenGongziGerenshebao\":[\"100.0\"],\"chengbenGongziGeshui\":[\"3.0\"],\"chengbenGongziBufabujiao\":[\"0.0\"],\"chengbenGongziShifa\":[\"400.0\"],\"chengbenGongziGongsishebao\":[\"100.0\"],\"chengbenGongziYonggongchengben\":[\"600.0\"],\"chengbenGongziNote\":[\"无\"],\"chengbenGongziFaxinren\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-20 21:52:30');
INSERT INTO `sys_oper_log` VALUES (178, '税', 1, 'com.ruoyi.pms.chengben.controller.TaxController.addSave()', 'POST', 1, 'admin', '研发部门', '/chengben/Tax/add', '127.0.0.1', '内网IP', '{\"chengbenShuiType\":[\"01\"],\"chengbenShuiJine\":[\"1000\"],\"chengbenShuiRiqi\":[\"2021-03-02\"],\"chengbenShuiNote\":[\"无\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'chengben_shui_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\ProductionWorkspace\\java\\cyzt_pms\\pms\\target\\classes\\mapper\\chengben\\TaxMapper.xml]\r\n### The error may involve com.ruoyi.pms.chengben.mapper.TaxMapper.insertTax-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into pms_chengben_shui          ( chengben_shui_jinE,             chengben_shui_type,             chengben_shui_riQi,             chengben_shui_note )           values ( ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'chengben_shui_id\' doesn\'t have a default value\n; Field \'chengben_shui_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'chengben_shui_id\' doesn\'t have a default value', '2021-03-20 21:55:57');
INSERT INTO `sys_oper_log` VALUES (179, '税', 1, 'com.ruoyi.pms.chengben.controller.TaxController.addSave()', 'POST', 1, 'admin', '研发部门', '/chengben/Tax/add', '127.0.0.1', '内网IP', '{\"chengbenShuiType\":[\"01\"],\"chengbenShuiJine\":[\"100\"],\"chengbenShuiRiqi\":[\"2021-03-17\"],\"chengbenShuiNote\":[\"无\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'chengben_shui_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\ProductionWorkspace\\java\\cyzt_pms\\pms\\target\\classes\\mapper\\chengben\\TaxMapper.xml]\r\n### The error may involve com.ruoyi.pms.chengben.mapper.TaxMapper.insertTax-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into pms_chengben_shui          ( chengben_shui_jinE,             chengben_shui_type,             chengben_shui_riQi,             chengben_shui_note )           values ( ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'chengben_shui_id\' doesn\'t have a default value\n; Field \'chengben_shui_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'chengben_shui_id\' doesn\'t have a default value', '2021-03-20 21:57:14');
INSERT INTO `sys_oper_log` VALUES (180, '税', 1, 'com.ruoyi.pms.chengben.controller.TaxController.addSave()', 'POST', 1, 'admin', '研发部门', '/chengben/Tax/add', '127.0.0.1', '内网IP', '{\"chengbenShuiType\":[\"01\"],\"chengbenShuiJine\":[\"44\"],\"chengbenShuiRiqi\":[\"2021-03-20\"],\"chengbenShuiNote\":[\"\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'chengben_shui_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\ProductionWorkspace\\java\\cyzt_pms\\pms\\target\\classes\\mapper\\chengben\\TaxMapper.xml]\r\n### The error may involve com.ruoyi.pms.chengben.mapper.TaxMapper.insertTax-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into pms_chengben_shui          ( chengben_shui_jinE,             chengben_shui_type,             chengben_shui_riQi,             chengben_shui_note )           values ( ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'chengben_shui_id\' doesn\'t have a default value\n; Field \'chengben_shui_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'chengben_shui_id\' doesn\'t have a default value', '2021-03-20 21:58:17');
INSERT INTO `sys_oper_log` VALUES (181, '税', 1, 'com.ruoyi.pms.chengben.controller.TaxController.addSave()', 'POST', 1, 'admin', '研发部门', '/chengben/Tax/add', '127.0.0.1', '内网IP', '{\"chengbenShuiType\":[\"01\"],\"chengbenShuiJine\":[\"500\"],\"chengbenShuiRiqi\":[\"\"],\"chengbenShuiNote\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-20 21:59:32');
INSERT INTO `sys_oper_log` VALUES (182, '角色管理', 4, 'com.ruoyi.web.controller.system.SysRoleController.selectAuthUserAll()', 'POST', 1, 'admin', '研发部门', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"userIds\":[\"2\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-20 22:10:26');
INSERT INTO `sys_oper_log` VALUES (183, '角色管理', 4, 'com.ruoyi.web.controller.system.SysRoleController.cancelAuthUser()', 'POST', 1, 'admin', '研发部门', '/system/role/authUser/cancel', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"userId\":[\"2\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-20 22:10:30');
INSERT INTO `sys_oper_log` VALUES (184, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"deptId\":[\"103\"],\"userName\":[\"管理员\"],\"dept.deptName\":[\"ff\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"ry@163.com\"],\"loginName\":[\"admin\"],\"sex\":[\"1\"],\"role\":[\"1\"],\"remark\":[\"管理员\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"2\"]}', 'null', 1, '不允许操作超级管理员用户', '2021-03-21 11:20:43');
INSERT INTO `sys_oper_log` VALUES (185, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"deptId\":[\"105\"],\"userName\":[\"若依\"],\"dept.deptName\":[\"ff\"],\"phonenumber\":[\"15666666666\"],\"email\":[\"ry@qq.com\"],\"loginName\":[\"ry\"],\"sex\":[\"1\"],\"role\":[\"2\"],\"remark\":[\"测试员\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"2\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-21 11:20:50');
INSERT INTO `sys_oper_log` VALUES (186, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"deptId\":[\"105\"],\"userName\":[\"若依\"],\"dept.deptName\":[\"ffsdf\"],\"phonenumber\":[\"15666666661\"],\"email\":[\"ry@qq.com\"],\"loginName\":[\"ry\"],\"sex\":[\"1\"],\"role\":[\"2\"],\"remark\":[\"测试员\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"2\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-21 11:21:16');
INSERT INTO `sys_oper_log` VALUES (187, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"deptId\":[\"105\"],\"userName\":[\"若依\"],\"dept.deptName\":[\"abc\"],\"phonenumber\":[\"15666666661\"],\"email\":[\"ry@qq.com\"],\"loginName\":[\"ry\"],\"sex\":[\"1\"],\"role\":[\"2\"],\"remark\":[\"测试员\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"2\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-21 11:23:17');
INSERT INTO `sys_oper_log` VALUES (188, '报销管理', 1, 'com.ruoyi.pms.chengben.controller.BaoxiaoController.addSave()', 'POST', 1, 'admin', '研发部门', '/chengben/BaoXiao/add', '127.0.0.1', '内网IP', '{\"chengbenBaoxiaoType\":[\"01\"],\"chengbenBaoxiaoMingxi\":[\"\"],\"chengbenBaoxiaoJine\":[\"\"],\"chengbenBaoxiaoKaipiaoriqi\":[\"\"],\"chengbenBaoxiaoIszhuanpiao\":[\"0\"],\"chengbenBaoxiaoFapiaohaoma\":[\"\"],\"chengbenBaoxiaoXiaofangmingcheng\":[\"\"],\"chengbenBaoxiaoDikoushui\":[\"\"],\"chengbenBaoxiaoIsyibaoxiao\":[\"1\"],\"chengbenBaoxiaoBeizhu\":[\"\"],\"chengbenBaoxiaoBaoxiaoren\":[\"2\"],\"chengbenBaoxiaoBaoxiaorenName\":[\"若依\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-21 17:04:10');
INSERT INTO `sys_oper_log` VALUES (189, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"任务类型\"],\"dictType\":[\"pms_xiangmu_renwu_type\"],\"status\":[\"0\"],\"remark\":[\"项目任务表\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-21 19:45:09');
INSERT INTO `sys_oper_log` VALUES (190, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"重要任务\"],\"dictValue\":[\"01\"],\"dictType\":[\"pms_xiangmu_renwu_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-21 21:56:03');
INSERT INTO `sys_oper_log` VALUES (191, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"普通任务\"],\"dictValue\":[\"02\"],\"dictType\":[\"pms_xiangmu_renwu_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-21 21:56:19');
INSERT INTO `sys_oper_log` VALUES (192, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"优先级\"],\"dictType\":[\"pms_xiangmu_renwu_youxianji\"],\"status\":[\"0\"],\"remark\":[\"项目任务表\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-21 21:58:13');
INSERT INTO `sys_oper_log` VALUES (193, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"非常紧急\"],\"dictValue\":[\"01\"],\"dictType\":[\"pms_xiangmu_renwu_youxianji\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-21 21:58:29');
INSERT INTO `sys_oper_log` VALUES (194, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"紧急\"],\"dictValue\":[\"02\"],\"dictType\":[\"pms_xiangmu_renwu_youxianji\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-21 21:58:41');
INSERT INTO `sys_oper_log` VALUES (195, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"一般\"],\"dictValue\":[\"03\"],\"dictType\":[\"pms_xiangmu_renwu_youxianji\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-21 21:58:52');
INSERT INTO `sys_oper_log` VALUES (196, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"04\"],\"dictValue\":[\"较低\"],\"dictType\":[\"pms_xiangmu_renwu_youxianji\"],\"cssClass\":[\"\"],\"dictSort\":[\"4\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-21 21:59:45');
INSERT INTO `sys_oper_log` VALUES (197, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"116\"],\"dictLabel\":[\"较低\"],\"dictValue\":[\"04\"],\"dictType\":[\"pms_xiangmu_renwu_youxianji\"],\"cssClass\":[\"\"],\"dictSort\":[\"4\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-21 21:59:53');
INSERT INTO `sys_oper_log` VALUES (198, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"最低\"],\"dictValue\":[\"05\"],\"dictType\":[\"pms_xiangmu_renwu_youxianji\"],\"cssClass\":[\"\"],\"dictSort\":[\"5\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-21 22:00:02');
INSERT INTO `sys_oper_log` VALUES (199, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"115\"],\"dictLabel\":[\"普通\"],\"dictValue\":[\"03\"],\"dictType\":[\"pms_xiangmu_renwu_youxianji\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-21 22:00:11');
INSERT INTO `sys_oper_log` VALUES (200, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"114\"],\"dictLabel\":[\"较高\"],\"dictValue\":[\"02\"],\"dictType\":[\"pms_xiangmu_renwu_youxianji\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-21 22:00:16');
INSERT INTO `sys_oper_log` VALUES (201, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"113\"],\"dictLabel\":[\"最高\"],\"dictValue\":[\"01\"],\"dictType\":[\"pms_xiangmu_renwu_youxianji\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-21 22:00:21');
INSERT INTO `sys_oper_log` VALUES (202, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"任务状态\"],\"dictType\":[\"pms_xiangmu_renwu_status\"],\"status\":[\"0\"],\"remark\":[\"项目任务表\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-21 22:01:33');
INSERT INTO `sys_oper_log` VALUES (203, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"未开始\"],\"dictValue\":[\"01\"],\"dictType\":[\"pms_xiangmu_renwu_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-21 22:01:48');
INSERT INTO `sys_oper_log` VALUES (204, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"进行中\"],\"dictValue\":[\"02\"],\"dictType\":[\"pms_xiangmu_renwu_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-21 22:01:56');
INSERT INTO `sys_oper_log` VALUES (205, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"已完成\"],\"dictValue\":[\"03\"],\"dictType\":[\"pms_xiangmu_renwu_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-21 22:02:05');
INSERT INTO `sys_oper_log` VALUES (206, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"7\"],\"tableName\":[\"pms_xiangmu_renwu\"],\"tableComment\":[\"项目任务表\"],\"className\":[\"XiangmuRenwu\"],\"functionAuthor\":[\"lengjun\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"50\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"任务表主键\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"xiangmuRenwuId\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"51\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"标题\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"xiangmuRenwuBiaoti\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"52\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"类型\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"xiangmuRenwuType\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"pms_xiangmu_renwu_type\"],\"columns[3].columnId\":[\"53\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"负责人\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"xiangmuRenwuFuzeren\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"54\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"优先级\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"xiangmuRenwuYouxianji\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"pms_xiangmu_renwu_youxianji\"],\"columns[5].columnId\":[\"55\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"状态\"],\"columns[5]', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-21 22:03:30');
INSERT INTO `sys_oper_log` VALUES (207, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/pms_xiangmu_renwu', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-03-21 22:03:34');
INSERT INTO `sys_oper_log` VALUES (208, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '研发部门', '/tool/gen/synchDb/pms_xiangmu_renwu', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-21 22:05:50');
INSERT INTO `sys_oper_log` VALUES (209, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"6\"],\"tableName\":[\"pms_xiangmu\"],\"tableComment\":[\"项目基本信息表\"],\"className\":[\"Xiangmu\"],\"functionAuthor\":[\"lengjun\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"45\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"项目表主键\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"xiangmuId\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"46\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"项目编码\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"xiangmuCode\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"47\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"可见范围\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"xiangmuKejianfanwei\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"48\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"分组\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"xiangmuFenzu\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"49\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"描述\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"xiangmuMiaoshu\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"textarea\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"86\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"创建用户\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"createuser\"],\"columns[5].isI', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-21 22:06:00');
INSERT INTO `sys_oper_log` VALUES (210, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/pms_xiangmu', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-03-21 22:09:18');
INSERT INTO `sys_oper_log` VALUES (211, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '研发部门', '/tool/gen/synchDb/pms_xiangmu', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-28 19:16:58');
INSERT INTO `sys_oper_log` VALUES (212, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"6\"],\"tableName\":[\"pms_xiangmu\"],\"tableComment\":[\"项目基本信息表\"],\"className\":[\"Xiangmu\"],\"functionAuthor\":[\"lengjun\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"45\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"项目表主键\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"xiangmuId\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[2].columnId\":[\"98\"],\"columns[2].sort\":[\"2\"],\"columns[2].columnComment\":[\"项目类型\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"xiangmuType\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"\"],\"columns[1].columnId\":[\"46\"],\"columns[1].sort\":[\"3\"],\"columns[1].columnComment\":[\"项目编码\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"xiangmuCode\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[5].columnId\":[\"99\"],\"columns[5].sort\":[\"4\"],\"columns[5].columnComment\":[\"项目名称\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"xiangmuName\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"LIKE\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[3].columnId\":[\"47\"],\"columns[3].sort\":[\"5\"],\"columns[3].columnComment\":[\"可见范围\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"xiangmuKejianfanwei\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"48\"],\"columns[4].sort\":[\"6\"],\"columns[4].columnComment\":[\"分组\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"xiangmuFenzu\"],\"columns[4].i', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-28 19:17:44');
INSERT INTO `sys_oper_log` VALUES (213, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"项目类型\"],\"dictType\":[\"pms_xiangmu_leixing\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-28 19:18:47');
INSERT INTO `sys_oper_log` VALUES (214, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"项目可见范围\"],\"dictType\":[\"pms_xiangmu_kejianfanwei\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-28 19:19:26');
INSERT INTO `sys_oper_log` VALUES (215, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"6\"],\"tableName\":[\"pms_xiangmu\"],\"tableComment\":[\"项目基本信息表\"],\"className\":[\"Xiangmu\"],\"functionAuthor\":[\"lengjun\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"45\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"项目表主键\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"xiangmuId\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"98\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"项目类型\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"xiangmuType\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"select\"],\"columns[1].dictType\":[\"pms_xiangmu_leixing\"],\"columns[2].columnId\":[\"46\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"项目编码\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"xiangmuCode\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"99\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"项目名称\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"xiangmuName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"47\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"可见范围\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"xiangmuKejianfanwei\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"select\"],\"columns[4].dictType\":[\"pms_xiangmu_kejianfanwei\"],\"columns[5].columnId\":[\"48\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"分组\"],\"columns[5].javaType\":[\"String\"],\"columns[', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-28 19:20:17');
INSERT INTO `sys_oper_log` VALUES (216, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"pms_xiangmu_renwu_fenzu\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-28 19:40:22');
INSERT INTO `sys_oper_log` VALUES (217, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '研发部门', '/tool/gen/synchDb/pms_xiangmu', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-28 19:41:04');
INSERT INTO `sys_oper_log` VALUES (218, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/pms_chengben_zhuanzhang', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-03-28 19:41:22');
INSERT INTO `sys_oper_log` VALUES (219, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"8\"],\"tableName\":[\"pms_xiangmu_renwu_fenzu\"],\"tableComment\":[\"项目任务分组\"],\"className\":[\"XiangmuRenwuFenzu\"],\"functionAuthor\":[\"lengjun\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"100\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"项目分组ID\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"xiangmuRenwuFenzuId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"101\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"项目ID\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"xiangmuId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"102\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"项目分组名称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"xiangmuRenwuFenzuName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"103\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"创建用户\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"createuser\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"104\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"创建时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"createtime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"105\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"最后修改用户\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"modifyuser\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-28 19:45:02');
INSERT INTO `sys_oper_log` VALUES (220, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/pms_xiangmu_renwu_fenzu', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-03-28 19:45:07');
INSERT INTO `sys_oper_log` VALUES (221, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '研发部门', '/tool/gen/synchDb/pms_xiangmu_renwu', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-28 19:46:08');
INSERT INTO `sys_oper_log` VALUES (222, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"8\"],\"tableName\":[\"pms_xiangmu_renwu_fenzu\"],\"tableComment\":[\"项目任务分组\"],\"className\":[\"XiangmuRenwuFenzu\"],\"functionAuthor\":[\"lengjun\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"100\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"项目分组ID\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"xiangmuRenwuFenzuId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"101\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"项目ID\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"xiangmuId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"102\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"项目分组名称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"xiangmuRenwuFenzuName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"103\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"创建用户\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"createuser\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"104\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"创建时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"createtime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"105\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"最后修改用户\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"modifyuser\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-28 19:47:00');
INSERT INTO `sys_oper_log` VALUES (223, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/pms_xiangmu_renwu_fenzu', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-03-28 19:47:05');
INSERT INTO `sys_oper_log` VALUES (224, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/pms_xiangmu_renwu', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-03-28 19:48:11');
INSERT INTO `sys_oper_log` VALUES (225, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/edit', '127.0.0.1', '内网IP', '{\"dictId\":[\"104\"],\"dictName\":[\"项目管理系统是否\"],\"dictType\":[\"pms_yes_no\"],\"status\":[\"0\"],\"remark\":[\"全局使用\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-30 16:56:03');
INSERT INTO `sys_oper_log` VALUES (226, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/edit', '127.0.0.1', '内网IP', '{\"dictId\":[\"108\"],\"dictName\":[\"项目类型\"],\"dictType\":[\"pms_xiangmu_leixing\"],\"status\":[\"0\"],\"remark\":[\"项目表\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-30 16:56:31');
INSERT INTO `sys_oper_log` VALUES (227, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/edit', '127.0.0.1', '内网IP', '{\"dictId\":[\"109\"],\"dictName\":[\"项目可见范围\"],\"dictType\":[\"pms_xiangmu_kejianfanwei\"],\"status\":[\"0\"],\"remark\":[\"项目表\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-30 16:56:36');
INSERT INTO `sys_oper_log` VALUES (228, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'POST', 1, 'admin', '研发部门', '/system/user/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-31 09:05:15');
INSERT INTO `sys_oper_log` VALUES (229, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"103\"],\"userName\":[\"项目经理\"],\"deptName\":[\"研发部门\"],\"phonenumber\":[\"\"],\"email\":[\"\"],\"loginName\":[\"pms\"],\"sex\":[\"0\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"\"],\"postIds\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-31 09:06:27');
INSERT INTO `sys_oper_log` VALUES (230, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"3\"],\"deptId\":[\"103\"],\"userName\":[\"项目经理\"],\"dept.deptName\":[\"研发部门\"],\"phonenumber\":[\"18811225550\"],\"email\":[\"\"],\"loginName\":[\"pms\"],\"sex\":[\"0\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"\"],\"postIds\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-31 09:07:28');
INSERT INTO `sys_oper_log` VALUES (231, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'POST', 1, 'admin', '研发部门', '/system/user/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-31 09:20:38');
INSERT INTO `sys_oper_log` VALUES (232, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"103\"],\"userName\":[\"项目经理\"],\"deptName\":[\"研发部门\"],\"phonenumber\":[\"\"],\"email\":[\"\"],\"loginName\":[\"cy_pms\"],\"sex\":[\"0\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"\"],\"postIds\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-31 09:21:45');
INSERT INTO `sys_oper_log` VALUES (233, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"4\"],\"deptId\":[\"103\"],\"userName\":[\"项目经理\"],\"dept.deptName\":[\"研发部门\"],\"phonenumber\":[\"18811225551\"],\"email\":[\"\"],\"loginName\":[\"cy_pms\"],\"sex\":[\"0\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"\"],\"postIds\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-31 09:22:23');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2021-03-19 15:07:48', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2021-03-19 15:07:48', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', '0', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', '0', '0', 'admin', '2021-03-19 15:07:48', '', NULL, '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (2, 1061);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '盐加密',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `pwd_update_date` datetime NULL DEFAULT NULL COMMENT '密码最后更新时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '管理员', '00', 'ry@163.com', '15888888888', '1', '', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', '2021-03-31 10:21:42', '2021-03-19 15:07:48', 'admin', '2021-03-19 15:07:48', '', '2021-03-31 10:21:42', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666661', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '2', '127.0.0.1', '2021-03-19 15:07:48', '2021-03-19 15:07:48', 'admin', '2021-03-19 15:07:48', 'admin', '2021-03-21 11:23:17', '测试员');
INSERT INTO `sys_user` VALUES (3, 103, 'pms', '项目经理', '00', '', '18811225550', '0', '', '26ee0185c11eb17c12a93ddf9fdb9203', 'a5e864', '0', '2', '', NULL, NULL, 'admin', '2021-03-31 09:06:27', 'admin', '2021-03-31 09:07:28', '');
INSERT INTO `sys_user` VALUES (4, 103, 'cy_pms', '项目经理', '00', '', '18811225551', '0', '', 'a15c0a3c840dddcfb8d0d0db7c482046', 'eff7f0', '0', '0', '', NULL, NULL, 'admin', '2021-03-31 09:21:45', 'admin', '2021-03-31 09:22:23', '');

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online`  (
  `sessionId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime NULL DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime NULL DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) NULL DEFAULT 0 COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '在线用户记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO `sys_user_online` VALUES ('72016464-6aae-4f87-9449-d47f86f4456b', 'admin', '研发部门', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', 'on_line', '2021-03-31 14:14:26', '2021-03-31 14:14:26', 1800000);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);

SET FOREIGN_KEY_CHECKS = 1;

/*
 Navicat Premium Data Transfer

 Source Server         : ubuntu
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : 192.168.160.130:3306
 Source Schema         : dailyfresh_test

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 01/10/2019 21:37:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 65 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO `auth_permission` VALUES (21, 'Can add 商品SPU', 6, 'add_goods');
INSERT INTO `auth_permission` VALUES (22, 'Can change 商品SPU', 6, 'change_goods');
INSERT INTO `auth_permission` VALUES (23, 'Can delete 商品SPU', 6, 'delete_goods');
INSERT INTO `auth_permission` VALUES (24, 'Can view 商品SPU', 6, 'view_goods');
INSERT INTO `auth_permission` VALUES (25, 'Can add 商品图片', 7, 'add_goodsimage');
INSERT INTO `auth_permission` VALUES (26, 'Can change 商品图片', 7, 'change_goodsimage');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 商品图片', 7, 'delete_goodsimage');
INSERT INTO `auth_permission` VALUES (28, 'Can view 商品图片', 7, 'view_goodsimage');
INSERT INTO `auth_permission` VALUES (29, 'Can add 商品', 8, 'add_goodssku');
INSERT INTO `auth_permission` VALUES (30, 'Can change 商品', 8, 'change_goodssku');
INSERT INTO `auth_permission` VALUES (31, 'Can delete 商品', 8, 'delete_goodssku');
INSERT INTO `auth_permission` VALUES (32, 'Can view 商品', 8, 'view_goodssku');
INSERT INTO `auth_permission` VALUES (33, 'Can add 商品种类', 9, 'add_goodstype');
INSERT INTO `auth_permission` VALUES (34, 'Can change 商品种类', 9, 'change_goodstype');
INSERT INTO `auth_permission` VALUES (35, 'Can delete 商品种类', 9, 'delete_goodstype');
INSERT INTO `auth_permission` VALUES (36, 'Can view 商品种类', 9, 'view_goodstype');
INSERT INTO `auth_permission` VALUES (37, 'Can add 首页轮播商品', 10, 'add_indexgoodsbanner');
INSERT INTO `auth_permission` VALUES (38, 'Can change 首页轮播商品', 10, 'change_indexgoodsbanner');
INSERT INTO `auth_permission` VALUES (39, 'Can delete 首页轮播商品', 10, 'delete_indexgoodsbanner');
INSERT INTO `auth_permission` VALUES (40, 'Can view 首页轮播商品', 10, 'view_indexgoodsbanner');
INSERT INTO `auth_permission` VALUES (41, 'Can add 主页促销活动', 11, 'add_indexpromotionbanner');
INSERT INTO `auth_permission` VALUES (42, 'Can change 主页促销活动', 11, 'change_indexpromotionbanner');
INSERT INTO `auth_permission` VALUES (43, 'Can delete 主页促销活动', 11, 'delete_indexpromotionbanner');
INSERT INTO `auth_permission` VALUES (44, 'Can view 主页促销活动', 11, 'view_indexpromotionbanner');
INSERT INTO `auth_permission` VALUES (45, 'Can add 主页分类展示商品', 12, 'add_indextypegoodsbanner');
INSERT INTO `auth_permission` VALUES (46, 'Can change 主页分类展示商品', 12, 'change_indextypegoodsbanner');
INSERT INTO `auth_permission` VALUES (47, 'Can delete 主页分类展示商品', 12, 'delete_indextypegoodsbanner');
INSERT INTO `auth_permission` VALUES (48, 'Can view 主页分类展示商品', 12, 'view_indextypegoodsbanner');
INSERT INTO `auth_permission` VALUES (49, 'Can add 订单商品', 13, 'add_ordergoods');
INSERT INTO `auth_permission` VALUES (50, 'Can change 订单商品', 13, 'change_ordergoods');
INSERT INTO `auth_permission` VALUES (51, 'Can delete 订单商品', 13, 'delete_ordergoods');
INSERT INTO `auth_permission` VALUES (52, 'Can view 订单商品', 13, 'view_ordergoods');
INSERT INTO `auth_permission` VALUES (53, 'Can add 订单', 14, 'add_orderinfo');
INSERT INTO `auth_permission` VALUES (54, 'Can change 订单', 14, 'change_orderinfo');
INSERT INTO `auth_permission` VALUES (55, 'Can delete 订单', 14, 'delete_orderinfo');
INSERT INTO `auth_permission` VALUES (56, 'Can view 订单', 14, 'view_orderinfo');
INSERT INTO `auth_permission` VALUES (57, 'Can add 用户', 15, 'add_user');
INSERT INTO `auth_permission` VALUES (58, 'Can change 用户', 15, 'change_user');
INSERT INTO `auth_permission` VALUES (59, 'Can delete 用户', 15, 'delete_user');
INSERT INTO `auth_permission` VALUES (60, 'Can view 用户', 15, 'view_user');
INSERT INTO `auth_permission` VALUES (61, 'Can add 地址', 16, 'add_address');
INSERT INTO `auth_permission` VALUES (62, 'Can change 地址', 16, 'change_address');
INSERT INTO `auth_permission` VALUES (63, 'Can delete 地址', 16, 'delete_address');
INSERT INTO `auth_permission` VALUES (64, 'Can view 地址', 16, 'view_address');

-- ----------------------------
-- Table structure for df_address
-- ----------------------------
DROP TABLE IF EXISTS `df_address`;
CREATE TABLE `df_address`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NULL,
  `update_time` datetime(6) NULL,
  `is_delete` tinyint(1) NOT NULL,
  `receiver` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addr` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `zip_code` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `df_address_user_id_5e6a5c8a_fk_df_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `df_address_user_id_5e6a5c8a_fk_df_user_id` FOREIGN KEY (`user_id`) REFERENCES `df_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of df_address
-- ----------------------------
INSERT INTO `df_address` VALUES (1, '2019-09-19 13:11:38.630890', '2019-09-19 13:11:38.630890', 0, '林立升', '广州市白云区', '510510', '13697484271', 1, 2);
INSERT INTO `df_address` VALUES (2, '2019-09-25 06:55:32.926014', '2019-09-25 06:55:32.926014', 0, '林立升', '广州市番禺区', '510510', '13697484271', 0, 2);
INSERT INTO `df_address` VALUES (3, '2019-09-26 06:52:47.736014', '2019-09-26 06:52:47.736014', 0, '林立升', '广州市白云区', '510510', '13697484271', 1, 4);

-- ----------------------------
-- Table structure for df_goods
-- ----------------------------
DROP TABLE IF EXISTS `df_goods`;
CREATE TABLE `df_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NULL,
  `update_time` datetime(6) NULL,
  `is_delete` tinyint(1) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `detail` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of df_goods
-- ----------------------------
INSERT INTO `df_goods` VALUES (1, '2017-11-15 03:03:05.257969', '2017-11-15 03:03:05.258130', 0, '草莓', '<p><strong>很不错的草莓</strong></p>');
INSERT INTO `df_goods` VALUES (2, '2017-11-15 03:05:36.964951', '2017-11-15 03:05:36.965129', 0, '葡萄', '');
INSERT INTO `df_goods` VALUES (3, '2017-11-15 03:05:52.323866', '2017-11-15 03:05:52.323949', 0, '柠檬', '');
INSERT INTO `df_goods` VALUES (4, '2017-11-15 03:06:01.267481', '2017-11-15 03:06:01.267615', 0, '奇异果', '');
INSERT INTO `df_goods` VALUES (5, '2017-11-15 03:06:30.418683', '2017-11-15 03:06:30.418789', 0, '大青虾', '');
INSERT INTO `df_goods` VALUES (6, '2017-11-15 03:06:35.994464', '2017-11-15 03:06:35.994567', 0, '秋刀鱼', '');
INSERT INTO `df_goods` VALUES (7, '2017-11-15 03:06:48.115318', '2017-11-15 03:06:48.115410', 0, '扇贝', '');
INSERT INTO `df_goods` VALUES (8, '2017-11-15 03:07:03.057514', '2017-11-15 03:07:03.057601', 0, '基围虾', '');
INSERT INTO `df_goods` VALUES (9, '2017-11-15 03:07:36.306725', '2017-11-15 03:07:36.306926', 0, '猪肉', '');
INSERT INTO `df_goods` VALUES (10, '2017-11-15 03:07:39.056064', '2017-11-15 03:07:39.056145', 0, '牛肉', '');
INSERT INTO `df_goods` VALUES (11, '2017-11-15 03:07:41.955755', '2017-11-15 03:07:41.955833', 0, '羊肉', '');
INSERT INTO `df_goods` VALUES (12, '2017-11-15 03:07:44.741474', '2017-11-15 03:07:44.741574', 0, '牛排', '');
INSERT INTO `df_goods` VALUES (13, '2017-11-15 03:07:51.748699', '2017-11-15 03:07:51.748828', 0, '鸡蛋', '');
INSERT INTO `df_goods` VALUES (14, '2017-11-15 03:07:56.413773', '2017-11-15 03:07:56.413853', 0, '鸡肉', '');
INSERT INTO `df_goods` VALUES (15, '2017-11-15 03:07:59.568405', '2017-11-15 03:07:59.568554', 0, '鸭蛋', '');
INSERT INTO `df_goods` VALUES (16, '2017-11-15 03:08:03.020608', '2017-11-15 03:08:03.020764', 0, '鸡腿', '');
INSERT INTO `df_goods` VALUES (17, '2017-11-15 03:08:10.063820', '2017-11-15 03:08:10.063898', 0, '白菜', '');
INSERT INTO `df_goods` VALUES (18, '2017-11-15 03:08:13.315906', '2017-11-15 03:08:13.316025', 0, '芹菜', '');
INSERT INTO `df_goods` VALUES (19, '2017-11-15 03:08:16.351445', '2017-11-15 03:08:16.351526', 0, '香菜', '');
INSERT INTO `df_goods` VALUES (20, '2017-11-15 03:08:24.232660', '2017-11-15 03:08:24.232743', 0, '冬瓜', '');
INSERT INTO `df_goods` VALUES (21, '2017-11-15 03:08:36.939678', '2017-11-15 03:08:36.940113', 0, '鱼丸', '');
INSERT INTO `df_goods` VALUES (22, '2017-11-15 03:08:43.194862', '2017-11-15 03:08:43.194985', 0, '蟹棒', '');
INSERT INTO `df_goods` VALUES (23, '2017-11-15 03:08:50.771785', '2017-11-15 03:08:50.771931', 0, '虾丸', '');
INSERT INTO `df_goods` VALUES (24, '2017-11-15 03:09:01.546052', '2017-11-15 03:09:01.546152', 0, '速冻水饺', '');
INSERT INTO `df_goods` VALUES (25, '2017-11-14 08:50:50.383071', '2017-11-14 08:50:50.383115', 0, '芒果', '');
INSERT INTO `df_goods` VALUES (26, '2017-11-17 07:54:26.657410', '2017-11-17 07:54:26.657443', 0, '鹌鹑蛋', '');
INSERT INTO `df_goods` VALUES (27, '2017-11-17 07:54:35.205668', '2017-11-17 07:54:35.205703', 0, '鹅蛋', '');
INSERT INTO `df_goods` VALUES (28, '2017-11-17 07:54:46.756236', '2017-11-17 07:54:46.756272', 0, '红辣椒', '');

-- ----------------------------
-- Table structure for df_goods_image
-- ----------------------------
DROP TABLE IF EXISTS `df_goods_image`;
CREATE TABLE `df_goods_image`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NULL,
  `update_time` datetime(6) NULL,
  `is_delete` tinyint(1) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sku_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `df_goods_image_sku_id_f8dc96ea_fk_df_goods_sku_id`(`sku_id`) USING BTREE,
  CONSTRAINT `df_goods_image_sku_id_f8dc96ea_fk_df_goods_sku_id` FOREIGN KEY (`sku_id`) REFERENCES `df_goods_sku` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for df_goods_sku
-- ----------------------------
DROP TABLE IF EXISTS `df_goods_sku`;
CREATE TABLE `df_goods_sku`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NULL,
  `update_time` datetime(6) NULL,
  `is_delete` tinyint(1) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `unite` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `sales` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `df_goods_sku_goods_id_31622280_fk_df_goods_id`(`goods_id`) USING BTREE,
  INDEX `df_goods_sku_type_id_576de3b4_fk_df_goods_type_id`(`type_id`) USING BTREE,
  CONSTRAINT `df_goods_sku_goods_id_31622280_fk_df_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `df_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `df_goods_sku_type_id_576de3b4_fk_df_goods_type_id` FOREIGN KEY (`type_id`) REFERENCES `df_goods_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of df_goods_sku
-- ----------------------------
INSERT INTO `df_goods_sku` VALUES (1, '2017-11-15 03:10:14.045538', '2019-09-25 07:48:13.701944', 0, '草莓500g', '草莓简介', 10.00, '500g', 'group1\\M00/00/00/wKiggl2DdQeAelEzAAAljIO_yW02669875', 88, 10, 1, 1, 1);
INSERT INTO `df_goods_sku` VALUES (2, '2017-11-15 03:11:04.490384', '2019-09-25 07:48:14.593150', 0, '盒装草莓', '草莓简介', 20.00, '盒', 'group1\\M00/00/00/wKiggl2DdTiAGadXAAEc8KlJc3U0828253', 0, 13, 1, 1, 1);
INSERT INTO `df_goods_sku` VALUES (3, '2017-11-15 03:12:32.165020', '2019-09-19 12:32:06.597661', 0, '葡萄', '葡萄简介', 20.00, '500g', 'group1\\M00/00/00/wKiggl2DdUeAJ6CtAAAjjvE5EB80204919', 7, 0, 1, 2, 1);
INSERT INTO `df_goods_sku` VALUES (4, '2017-11-15 03:13:16.457844', '2019-09-19 12:32:14.054143', 0, '柠檬', '简介', 32.00, '500g', 'group1\\M00/00/00/wKiggl2DdU6AUijUAAAgnZq1mZQ1178066', 12, 0, 1, 3, 1);
INSERT INTO `df_goods_sku` VALUES (5, '2017-11-15 03:14:05.799352', '2019-09-19 12:32:20.114554', 0, '奇异果', '简介', 12.12, '500g', 'group1\\M00/00/00/wKiggl2DdVSAX_4vAAAeuJzfh309682507', 11, 1, 1, 4, 1);
INSERT INTO `df_goods_sku` VALUES (6, '2017-11-15 03:15:09.971968', '2019-09-19 12:32:35.435124', 0, '大青虾', '简介', 34.00, '500g', 'group1\\M00/00/00/wKiggl2DdWOAJ8NQAAA5OafpZ8w0941342', 12, 0, 1, 5, 2);
INSERT INTO `df_goods_sku` VALUES (7, '2017-11-15 03:15:53.812181', '2019-09-19 12:32:43.176368', 0, '北海道秋刀鱼', '简介', 50.00, '500g', 'group1\\M00/00/00/wKiggl2DdWuAInQuAAAkaK_3uqc3431338', 15, 0, 1, 6, 2);
INSERT INTO `df_goods_sku` VALUES (8, '2017-11-15 03:16:24.763232', '2019-09-19 12:32:48.922686', 0, '扇贝', '简介', 56.60, '500g', 'group1\\M00/00/00/wKiggl2DdXGAJKxVAAAk8QAVQvs9917168', 13, 0, 1, 7, 2);
INSERT INTO `df_goods_sku` VALUES (9, '2017-11-15 03:17:13.426611', '2019-09-19 12:33:02.494952', 0, '基围虾', '简介', 100.90, '500g', 'group1\\M00/00/00/wKiggl2DdX-AKrX_AAAk0La-FfM1576600', 14, 0, 1, 8, 2);
INSERT INTO `df_goods_sku` VALUES (10, '2017-11-15 03:17:47.656066', '2019-09-19 12:33:24.466481', 0, '猪肉', '简介', 23.99, '500g', 'group1\\M00/00/00/wKiggl2DdZWAYFL3AAEVpWRUOkQ1784918', 100, 0, 1, 9, 3);
INSERT INTO `df_goods_sku` VALUES (11, '2017-11-15 03:18:15.497630', '2019-09-19 12:33:34.852919', 0, '牛肉', '简介', 34.99, '500g', 'group1\\M00/00/00/wKiggl2DdZ-AV6mkAAEExMzu9TI2163970', 100, 0, 1, 10, 3);
INSERT INTO `df_goods_sku` VALUES (12, '2017-11-15 03:18:44.453933', '2019-09-19 12:33:41.030216', 0, '羊肉', '简介', 56.99, '500g', 'group1\\M00/00/00/wKiggl2DdaWABmIPAAB6NAA364o5812573', 100, 0, 1, 11, 3);
INSERT INTO `df_goods_sku` VALUES (13, '2017-11-15 03:19:10.209472', '2019-09-19 12:33:48.832182', 0, '牛排', '简介', 99.99, '500g', 'group1\\M00/00/00/wKiggl2Dda2AQty5AACwa4j5U-M9948430', 100, 0, 1, 12, 3);
INSERT INTO `df_goods_sku` VALUES (14, '2017-11-15 03:19:44.020204', '2019-09-19 12:33:55.289118', 0, '盒装鸡蛋', '简介', 23.00, '500g', 'group1\\M00/00/00/wKiggl2DdbOASEtqAADUKdl9ke00337734', 100, 0, 1, 13, 4);
INSERT INTO `df_goods_sku` VALUES (15, '2017-11-15 03:20:20.962831', '2019-09-19 12:34:02.556075', 0, '鸡肉', '简介', 32.00, '500g', 'group1\\M00/00/00/wKiggl2DdbuAYjfbAADUY6Viah43604962', 100, 0, 1, 14, 4);
INSERT INTO `df_goods_sku` VALUES (16, '2017-11-15 03:20:53.724305', '2019-09-19 12:34:11.429695', 0, '鸭蛋', '简介', 45.00, '盒', 'group1\\M00/00/00/wKiggl2DdcOASHkFAAFC_6z4ikw0295039', 121, 0, 1, 15, 4);
INSERT INTO `df_goods_sku` VALUES (17, '2017-11-15 03:21:22.965398', '2019-09-19 12:34:18.300544', 0, '鸡腿', '简介', 45.00, '500g', 'group1\\M00/00/00/wKiggl2DdcqAYUyIAAA2_qPyCsE2646319', 12, 0, 1, 16, 4);
INSERT INTO `df_goods_sku` VALUES (18, '2017-11-15 03:22:04.462490', '2019-09-19 12:34:25.509735', 0, '白菜', '简介', 4.50, '500g', 'group1\\M00/00/00/wKiggl2DddKAdlyGAADWHQMZcMk0261657', 100, 0, 1, 17, 5);
INSERT INTO `df_goods_sku` VALUES (19, '2017-11-15 03:22:31.745392', '2019-09-19 12:34:33.817243', 0, '芹菜', '简介', 3.50, '500g', 'group1\\M00/00/00/wKiggl2DddqAWbV3AACIr6t7nRI8918411', 12, 0, 1, 18, 5);
INSERT INTO `df_goods_sku` VALUES (20, '2017-11-15 03:23:21.161526', '2019-09-19 12:34:41.204856', 0, '香菜', '简介', 7.90, '500g', 'group1\\M00/00/00/wKiggl2DdeGAFAozAACNpLrBpAw5539261', 100, 0, 1, 19, 5);
INSERT INTO `df_goods_sku` VALUES (21, '2017-11-15 03:23:46.986158', '2019-09-19 12:34:48.441027', 0, '冬瓜', '简介', 12.99, '500g', 'group1\\M00/00/00/wKiggl2DdeiAancWAAENHihfRBU2538604', 100, 0, 1, 20, 5);
INSERT INTO `df_goods_sku` VALUES (22, '2017-11-15 03:24:10.445214', '2019-09-19 12:34:54.555896', 0, '鱼丸', '简介', 66.00, '500g', 'group1\\M00/00/00/wKiggl2Dde-ANIxeAADZQrk0MNM3824676', 12, 0, 1, 21, 6);
INSERT INTO `df_goods_sku` VALUES (23, '2017-11-15 03:24:37.927158', '2019-09-19 12:35:01.837264', 0, '蟹棒', '简介', 68.00, '500g', 'group1\\M00/00/00/wKiggl2DdfaAbn2CAABxy6sSvLs5749666', 100, 0, 1, 22, 6);
INSERT INTO `df_goods_sku` VALUES (24, '2017-11-15 03:25:18.235816', '2019-09-19 12:35:09.265818', 0, '虾丸', '简介', 89.99, '500g', 'group1\\M00/00/00/wKiggl2Ddf2AFPKKAABICVAPa7k9163033', 100, 0, 1, 23, 6);
INSERT INTO `df_goods_sku` VALUES (25, '2017-11-15 03:25:56.170531', '2019-09-19 12:35:15.628970', 0, '速冻水饺', '简介', 20.00, '袋', 'group1\\M00/00/00/wKiggl2DdgSAONDnAACMoEDn4gA8011589', 100, 0, 1, 24, 6);
INSERT INTO `df_goods_sku` VALUES (26, '2017-11-14 08:53:00.188619', '2019-09-19 12:35:29.240897', 0, '越南芒果', '新鲜越南芒果', 29.90, '2.5kg', 'group1\\M00/00/00/wKiggl2DdhGAbs8FAAByzbeH11I1285152', 100, 0, 1, 25, 1);
INSERT INTO `df_goods_sku` VALUES (27, '2017-11-17 07:57:00.677981', '2019-09-19 12:35:35.125215', 0, '鹌鹑蛋', '简介', 39.80, '126枚', 'group1\\M00/00/00/wKiggl2DdheABKsRAAGZ6CWHwr49326629', 100, 0, 1, 26, 4);
INSERT INTO `df_goods_sku` VALUES (28, '2017-11-17 07:58:18.361078', '2019-09-19 12:35:40.497887', 0, '鹅蛋', '简介', 49.90, '6枚', 'group1\\M00/00/00/wKiggl2Ddh2APe4lAADg_D91_rs3575723', 80, 0, 1, 27, 4);
INSERT INTO `df_goods_sku` VALUES (29, '2017-11-17 07:59:48.998394', '2019-09-19 12:35:46.026575', 0, '红辣椒', '简介', 11.00, '2.5kg', 'group1\\M00/00/00/wKiggl2DdiKAVIoTAAHXO4IxiKg7526131', 150, 0, 1, 28, 5);

-- ----------------------------
-- Table structure for df_goods_type
-- ----------------------------
DROP TABLE IF EXISTS `df_goods_type`;
CREATE TABLE `df_goods_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NULL,
  `update_time` datetime(6) NULL,
  `is_delete` tinyint(1) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `logo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of df_goods_type
-- ----------------------------
INSERT INTO `df_goods_type` VALUES (1, '2017-11-14 05:02:09.888544', '2019-09-18 14:01:17.027246', 0, '新鲜水果', 'fruit', 'group1\\M00/00/00/wKiggl2COK2ATAACAAAmv3ZmXCQ3255637');
INSERT INTO `df_goods_type` VALUES (2, '2017-11-14 05:04:32.069517', '2019-09-18 14:02:29.749836', 0, '海鲜水产', 'seafood', 'group1\\M00/00/00/wKiggl2COPaABk8qAABHr5DnSRY7796640');
INSERT INTO `df_goods_type` VALUES (3, '2017-11-14 05:05:34.514415', '2019-09-18 14:03:43.985940', 0, '猪牛羊肉', 'meet', 'group1\\M00/00/00/wKiggl2COUCABt5jAAAy1VHnVa40104618');
INSERT INTO `df_goods_type` VALUES (4, '2017-11-14 05:05:58.366135', '2019-09-18 14:05:09.301980', 0, '禽类蛋品', 'egg', 'group1\\M00/00/00/wKiggl2COZWALfZyAAAqR8GYqzc0846400');
INSERT INTO `df_goods_type` VALUES (5, '2017-11-14 05:06:32.561861', '2019-09-18 14:06:39.447118', 0, '新鲜蔬菜', 'vegetables', 'group1\\M00/00/00/wKiggl2COe-AaBktAAA-0fsIWso6836490');
INSERT INTO `df_goods_type` VALUES (6, '2017-11-14 05:06:55.562634', '2019-09-18 14:11:51.150901', 0, '速冻食品', 'ice', 'group1\\M00/00/00/wKiggl2COyeAFrxKAAA3sWXrUtc8358720');

-- ----------------------------
-- Table structure for df_index_banner
-- ----------------------------
DROP TABLE IF EXISTS `df_index_banner`;
CREATE TABLE `df_index_banner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NULL,
  `update_time` datetime(6) NULL,
  `is_delete` tinyint(1) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `index` smallint(6) NOT NULL,
  `sku_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `df_index_banner_sku_id_57f2798e_fk_df_goods_sku_id`(`sku_id`) USING BTREE,
  CONSTRAINT `df_index_banner_sku_id_57f2798e_fk_df_goods_sku_id` FOREIGN KEY (`sku_id`) REFERENCES `df_goods_sku` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of df_index_banner
-- ----------------------------
INSERT INTO `df_index_banner` VALUES (1, '2017-11-14 08:48:05.549864', '2019-09-18 13:54:46.836869', 0, 'group1\\M00/00/00/wKiggl2CNyeAYdeBAACpB0EHccA7745135', 0, 5);
INSERT INTO `df_index_banner` VALUES (2, '2017-11-14 08:53:26.498965', '2019-09-18 13:53:35.922546', 0, 'group1\\M00/00/00/wKiggl2CNuCANvYGAAC3B4az5sw1599446', 1, 26);
INSERT INTO `df_index_banner` VALUES (3, '2017-11-14 08:53:40.586457', '2019-09-18 13:52:36.801233', 0, 'group1\\M00/00/00/wKiggl2CNqWAdcVJAAETwbjKTS08723724', 2, 13);
INSERT INTO `df_index_banner` VALUES (4, '2017-11-14 08:54:02.805958', '2019-09-18 13:51:32.162678', 0, 'group1\\M00/00/00/wKiggl2CNmSAPOomAAD0anhtbdE5773993', 3, 9);

-- ----------------------------
-- Table structure for df_index_promotion
-- ----------------------------
DROP TABLE IF EXISTS `df_index_promotion`;
CREATE TABLE `df_index_promotion`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NULL,
  `update_time` datetime(6) NULL,
  `is_delete` tinyint(1) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `index` smallint(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of df_index_promotion
-- ----------------------------
INSERT INTO `df_index_promotion` VALUES (1, '2017-11-14 08:56:21.863522', '2019-09-18 13:20:30.868399', 0, '吃货暑假趴', '#', 'group1\\M00/00/00/wKiggl2CLx-AS5LhAAA2pBv_sO04349015', 0);
INSERT INTO `df_index_promotion` VALUES (2, '2017-11-14 08:56:53.522161', '2019-09-28 09:03:22.104340', 0, '盛夏尝鲜季', '#', 'group1\\M00/00/00/wKiggl2PIdmAHwCeAAA9891gryg1594957', 1);

-- ----------------------------
-- Table structure for df_index_type_goods
-- ----------------------------
DROP TABLE IF EXISTS `df_index_type_goods`;
CREATE TABLE `df_index_type_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NULL,
  `update_time` datetime(6) NULL,
  `is_delete` tinyint(1) NOT NULL,
  `display_type` smallint(6) NOT NULL,
  `index` smallint(6) NOT NULL,
  `sku_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `df_index_type_goods_sku_id_0a8a17db_fk_df_goods_sku_id`(`sku_id`) USING BTREE,
  INDEX `df_index_type_goods_type_id_35192ffd_fk_df_goods_type_id`(`type_id`) USING BTREE,
  CONSTRAINT `df_index_type_goods_sku_id_0a8a17db_fk_df_goods_sku_id` FOREIGN KEY (`sku_id`) REFERENCES `df_goods_sku` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `df_index_type_goods_type_id_35192ffd_fk_df_goods_type_id` FOREIGN KEY (`type_id`) REFERENCES `df_goods_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of df_index_type_goods
-- ----------------------------
INSERT INTO `df_index_type_goods` VALUES (1, '2017-11-14 08:57:41.509910', '2017-11-14 08:57:41.509945', 0, 1, 0, 1, 1);
INSERT INTO `df_index_type_goods` VALUES (2, '2017-11-14 08:57:50.129355', '2017-11-14 08:57:50.129388', 0, 1, 1, 3, 1);
INSERT INTO `df_index_type_goods` VALUES (3, '2017-11-14 08:58:00.896427', '2017-11-14 08:58:00.896459', 0, 1, 2, 5, 1);
INSERT INTO `df_index_type_goods` VALUES (4, '2017-11-14 08:58:20.417072', '2017-11-14 08:58:20.417107', 0, 1, 3, 4, 1);
INSERT INTO `df_index_type_goods` VALUES (5, '2017-11-14 08:58:32.934165', '2017-11-14 08:58:32.934197', 0, 0, 0, 2, 1);
INSERT INTO `df_index_type_goods` VALUES (6, '2017-11-14 08:58:53.943189', '2017-11-14 08:58:53.943227', 0, 0, 1, 4, 1);
INSERT INTO `df_index_type_goods` VALUES (7, '2017-11-14 08:59:16.396829', '2017-11-14 08:59:16.396864', 0, 1, 0, 6, 2);
INSERT INTO `df_index_type_goods` VALUES (8, '2017-11-14 08:59:25.723510', '2017-11-14 08:59:25.723545', 0, 1, 1, 7, 2);
INSERT INTO `df_index_type_goods` VALUES (9, '2017-11-14 08:59:37.353278', '2017-11-14 08:59:37.353315', 0, 1, 2, 8, 2);
INSERT INTO `df_index_type_goods` VALUES (10, '2017-11-14 08:59:48.082119', '2017-11-14 09:30:28.117330', 0, 1, 3, 9, 2);
INSERT INTO `df_index_type_goods` VALUES (11, '2017-11-14 08:59:59.725972', '2017-11-14 08:59:59.726006', 0, 0, 0, 9, 2);
INSERT INTO `df_index_type_goods` VALUES (12, '2017-11-14 09:00:11.685051', '2017-11-14 09:00:11.685098', 0, 0, 1, 8, 2);
INSERT INTO `df_index_type_goods` VALUES (13, '2017-11-14 09:00:20.409490', '2017-11-14 09:00:20.409522', 0, 1, 0, 10, 3);
INSERT INTO `df_index_type_goods` VALUES (15, '2017-11-14 09:00:41.325634', '2017-11-14 09:00:41.325668', 0, 1, 2, 12, 3);
INSERT INTO `df_index_type_goods` VALUES (16, '2017-11-14 09:00:56.193991', '2017-11-14 09:00:56.194023', 0, 1, 3, 13, 3);
INSERT INTO `df_index_type_goods` VALUES (17, '2017-11-14 09:01:09.550978', '2017-11-14 09:01:09.551016', 0, 0, 0, 15, 3);
INSERT INTO `df_index_type_goods` VALUES (18, '2017-11-14 09:01:18.798219', '2017-11-14 09:01:18.798251', 0, 1, 1, 17, 3);
INSERT INTO `df_index_type_goods` VALUES (19, '2017-11-14 09:01:29.182673', '2017-11-14 09:01:29.182705', 0, 1, 0, 14, 4);
INSERT INTO `df_index_type_goods` VALUES (20, '2017-11-14 09:01:44.702111', '2017-11-14 09:01:44.702146', 0, 1, 1, 16, 4);
INSERT INTO `df_index_type_goods` VALUES (21, '2017-11-14 09:02:01.490018', '2017-11-14 09:02:01.490053', 0, 0, 0, 14, 4);
INSERT INTO `df_index_type_goods` VALUES (22, '2017-11-14 09:02:14.000306', '2017-11-14 09:02:14.000344', 0, 0, 1, 16, 4);
INSERT INTO `df_index_type_goods` VALUES (23, '2017-11-14 09:02:29.300733', '2017-11-14 09:02:29.300768', 0, 1, 0, 18, 5);
INSERT INTO `df_index_type_goods` VALUES (24, '2017-11-14 09:02:38.655411', '2017-11-14 09:02:38.655444', 0, 1, 1, 19, 5);
INSERT INTO `df_index_type_goods` VALUES (25, '2017-11-14 09:02:48.641048', '2017-11-14 09:02:48.641080', 0, 1, 2, 20, 5);
INSERT INTO `df_index_type_goods` VALUES (26, '2017-11-14 09:03:01.896718', '2017-11-14 09:03:01.896759', 0, 0, 0, 20, 5);
INSERT INTO `df_index_type_goods` VALUES (27, '2017-11-14 09:03:14.583044', '2017-11-14 09:03:14.583086', 0, 0, 1, 19, 5);
INSERT INTO `df_index_type_goods` VALUES (28, '2017-11-14 09:03:27.597171', '2017-11-14 09:03:27.597206', 0, 1, 0, 22, 6);
INSERT INTO `df_index_type_goods` VALUES (29, '2017-11-14 09:03:37.078417', '2017-11-14 09:03:37.078451', 0, 1, 1, 23, 6);
INSERT INTO `df_index_type_goods` VALUES (30, '2017-11-14 09:03:48.459266', '2017-11-14 09:03:48.459299', 0, 1, 2, 24, 6);
INSERT INTO `df_index_type_goods` VALUES (31, '2017-11-14 09:03:58.834392', '2017-11-14 09:03:58.834428', 0, 1, 3, 25, 6);
INSERT INTO `df_index_type_goods` VALUES (32, '2017-11-14 09:04:11.118584', '2017-11-14 09:04:11.118628', 0, 0, 0, 23, 6);
INSERT INTO `df_index_type_goods` VALUES (33, '2017-11-14 09:04:21.235831', '2017-11-14 09:04:21.235887', 0, 0, 1, 25, 6);
INSERT INTO `df_index_type_goods` VALUES (34, '2017-11-17 08:00:09.522776', '2017-11-17 08:00:09.522811', 0, 1, 2, 27, 4);
INSERT INTO `df_index_type_goods` VALUES (35, '2017-11-17 08:00:19.382093', '2017-11-17 08:00:19.382125', 0, 1, 3, 28, 4);
INSERT INTO `df_index_type_goods` VALUES (36, '2017-11-17 08:00:31.352237', '2017-11-17 08:00:31.352274', 0, 1, 3, 29, 5);

-- ----------------------------
-- Table structure for df_order_goods
-- ----------------------------
DROP TABLE IF EXISTS `df_order_goods`;
CREATE TABLE `df_order_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NULL,
  `update_time` datetime(6) NULL,
  `is_delete` tinyint(1) NOT NULL,
  `count` int(11) NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `comment` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sku_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `df_order_goods_order_id_6958ee23_fk_df_order_info_order_id`(`order_id`) USING BTREE,
  INDEX `df_order_goods_sku_id_b7d6e04e_fk_df_goods_sku_id`(`sku_id`) USING BTREE,
  CONSTRAINT `df_order_goods_order_id_6958ee23_fk_df_order_info_order_id` FOREIGN KEY (`order_id`) REFERENCES `df_order_info` (`order_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `df_order_goods_sku_id_b7d6e04e_fk_df_goods_sku_id` FOREIGN KEY (`sku_id`) REFERENCES `df_goods_sku` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of df_order_goods
-- ----------------------------
INSERT INTO `df_order_goods` VALUES (10, '2019-09-27 05:22:19.763860', '2019-09-27 05:22:19.763860', 0, 1, 10.00, '', '201909271322192', 1);
INSERT INTO `df_order_goods` VALUES (11, '2019-09-27 05:48:54.727328', '2019-09-28 12:15:57.470169', 0, 1, 20.00, '好', '201909271348542', 2);
INSERT INTO `df_order_goods` VALUES (12, '2019-09-27 05:48:54.731318', '2019-09-28 12:15:57.473692', 0, 1, 12.12, '赞', '201909271348542', 5);
INSERT INTO `df_order_goods` VALUES (13, '2019-09-28 08:56:04.322833', '2019-09-28 08:56:04.322833', 0, 1, 10.00, '', '201909281656042', 1);
INSERT INTO `df_order_goods` VALUES (14, '2019-09-28 09:01:01.483317', '2019-09-28 12:15:48.791269', 0, 1, 10.00, '好', '201909281701012', 1);

-- ----------------------------
-- Table structure for df_order_info
-- ----------------------------
DROP TABLE IF EXISTS `df_order_info`;
CREATE TABLE `df_order_info`  (
  `create_time` datetime(6) NULL,
  `update_time` datetime(6) NULL,
  `is_delete` tinyint(1) NOT NULL,
  `order_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pay_method` smallint(6) NOT NULL,
  `total_count` int(11) NOT NULL,
  `total_price` decimal(10, 2) NOT NULL,
  `transit_price` decimal(10, 2) NOT NULL,
  `order_status` smallint(6) NOT NULL,
  `trade_no` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addr_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`) USING BTREE,
  INDEX `df_order_info_addr_id_70c3726e_fk_df_address_id`(`addr_id`) USING BTREE,
  INDEX `df_order_info_user_id_ac1e5bf5_fk_df_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `df_order_info_addr_id_70c3726e_fk_df_address_id` FOREIGN KEY (`addr_id`) REFERENCES `df_address` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `df_order_info_user_id_ac1e5bf5_fk_df_user_id` FOREIGN KEY (`user_id`) REFERENCES `df_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of df_order_info
-- ----------------------------
INSERT INTO `df_order_info` VALUES ('2019-09-27 05:22:19.648170', '2019-09-27 05:22:19.764858', 0, '201909271322192', 3, 1, 10.00, 10.00, 1, '', 1, 2);
INSERT INTO `df_order_info` VALUES ('2019-09-27 05:48:54.717355', '2019-09-28 12:15:57.475653', 0, '201909271348542', 3, 2, 32.12, 10.00, 5, '2019092822001435621000024496', 1, 2);
INSERT INTO `df_order_info` VALUES ('2019-09-28 08:56:04.318845', '2019-09-28 11:53:44.371472', 0, '201909281656042', 3, 1, 10.00, 10.00, 4, '2019092822001435621000026332', 1, 2);
INSERT INTO `df_order_info` VALUES ('2019-09-28 09:01:01.472541', '2019-09-28 12:15:48.801309', 0, '201909281701012', 3, 1, 10.00, 10.00, 5, '2019092822001435621000024495', 1, 2);

-- ----------------------------
-- Table structure for df_user
-- ----------------------------
DROP TABLE IF EXISTS `df_user`;
CREATE TABLE `df_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NULL,
  `create_time` datetime(6) NULL,
  `update_time` datetime(6) NULL,
  `is_delete` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of df_user
-- ----------------------------
INSERT INTO `df_user` VALUES (1, 'pbkdf2_sha256$120000$RIInMI0WAJ9i$pRvzxubjPl4CA2+bYLFENJ2O2j8CobgAaq3G7r7KJgU=', NULL, 0, 'smart', '', '', '13697484271@163.com', 0, 0, '2019-09-14 13:01:15.972057', '2019-09-14 13:01:16.254893', '2019-09-14 13:01:16.291052', 0);
INSERT INTO `df_user` VALUES (2, 'pbkdf2_sha256$120000$SRJ8KMJFFpLP$LaVn4OEW8Ua59TcnTd6Wg4oOAx2Tkm2DAhr4ZCStLug=', '2019-09-28 10:00:33.336600', 0, 'smart1', '', '', '13697484271@163.com', 0, 1, '2019-09-14 14:58:04.012597', '2019-09-14 14:58:04.187102', '2019-09-14 14:59:11.481772', 0);
INSERT INTO `df_user` VALUES (3, 'pbkdf2_sha256$150000$EBnCXgvmS5Ge$hLcKsGG7vC3IRXGxsvy7JQc3aod681fdLjOSWAlLmVQ=', '2019-10-01 12:49:06.548411', 1, 'root', '', '', '', 1, 1, '2019-09-16 14:20:35.528173', '2019-09-16 14:20:35.601975', '2019-09-16 14:20:35.601975', 0);
INSERT INTO `df_user` VALUES (4, 'pbkdf2_sha256$120000$LwRlhJqGaDfD$DLwdDLRWJqssSrSN+DOF2a4y8wvMtTcdLVPbyadipBw=', '2019-09-26 07:01:56.242265', 0, 'smart2', '', '', '13697484271@163.com', 0, 1, '2019-09-26 06:51:33.416262', '2019-09-26 06:51:33.484116', '2019-09-26 06:51:54.010902', 0);

-- ----------------------------
-- Table structure for df_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `df_user_groups`;
CREATE TABLE `df_user_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `df_user_groups_user_id_group_id_80e5ab91_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `df_user_groups_group_id_36f24e94_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `df_user_groups_group_id_36f24e94_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `df_user_groups_user_id_a816b098_fk_df_user_id` FOREIGN KEY (`user_id`) REFERENCES `df_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for df_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `df_user_user_permissions`;
CREATE TABLE `df_user_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `df_user_user_permissions_user_id_permission_id_b22997de_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `df_user_user_permiss_permission_id_40a6cb2d_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `df_user_user_permiss_permission_id_40a6cb2d_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `df_user_user_permissions_user_id_b5f6551b_fk_df_user_id` FOREIGN KEY (`user_id`) REFERENCES `df_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_df_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_df_user_id` FOREIGN KEY (`user_id`) REFERENCES `df_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2019-09-16 14:28:12.957442', '1', '猪牛羊肉', 1, '[{\"added\": {}}]', 9, 3);
INSERT INTO `django_admin_log` VALUES (2, '2019-09-18 13:20:31.581490', '1', '吃货暑假趴', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 11, 3);
INSERT INTO `django_admin_log` VALUES (3, '2019-09-18 13:29:50.065697', '2', '盛夏尝鲜季', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 11, 3);
INSERT INTO `django_admin_log` VALUES (4, '2019-09-18 13:51:32.838271', '4', '基围虾', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (5, '2019-09-18 13:52:36.818188', '3', '牛排', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (6, '2019-09-18 13:53:35.942261', '2', '越南芒果', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (7, '2019-09-18 13:54:46.866006', '1', '奇异果', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (8, '2019-09-18 14:01:17.055206', '1', '新鲜水果', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 9, 3);
INSERT INTO `django_admin_log` VALUES (9, '2019-09-18 14:02:29.767791', '2', '海鲜水产', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 9, 3);
INSERT INTO `django_admin_log` VALUES (10, '2019-09-18 14:03:44.005916', '3', '猪牛羊肉', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 9, 3);
INSERT INTO `django_admin_log` VALUES (11, '2019-09-18 14:05:09.329906', '4', '禽类蛋品', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 9, 3);
INSERT INTO `django_admin_log` VALUES (12, '2019-09-18 14:06:39.462723', '5', '新鲜蔬菜', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 9, 3);
INSERT INTO `django_admin_log` VALUES (13, '2019-09-18 14:11:51.816831', '6', '速冻食品', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 9, 3);
INSERT INTO `django_admin_log` VALUES (14, '2019-09-19 12:31:03.634117', '1', '草莓500g', 2, '[{\"changed\": {\"fields\": [\"name\", \"image\"]}}]', 8, 3);
INSERT INTO `django_admin_log` VALUES (15, '2019-09-19 12:31:51.649272', '2', '盒装草莓', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 8, 3);
INSERT INTO `django_admin_log` VALUES (16, '2019-09-19 12:32:06.615581', '3', '葡萄', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 8, 3);
INSERT INTO `django_admin_log` VALUES (17, '2019-09-19 12:32:14.072094', '4', '柠檬', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 8, 3);
INSERT INTO `django_admin_log` VALUES (18, '2019-09-19 12:32:20.130513', '5', '奇异果', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 8, 3);
INSERT INTO `django_admin_log` VALUES (19, '2019-09-19 12:32:35.442105', '6', '大青虾', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 8, 3);
INSERT INTO `django_admin_log` VALUES (20, '2019-09-19 12:32:43.193324', '7', '北海道秋刀鱼', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 8, 3);
INSERT INTO `django_admin_log` VALUES (21, '2019-09-19 12:32:48.927673', '8', '扇贝', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 8, 3);
INSERT INTO `django_admin_log` VALUES (22, '2019-09-19 12:33:02.501932', '9', '基围虾', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 8, 3);
INSERT INTO `django_admin_log` VALUES (23, '2019-09-19 12:33:24.484434', '10', '猪肉', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 8, 3);
INSERT INTO `django_admin_log` VALUES (24, '2019-09-19 12:33:34.868876', '11', '牛肉', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 8, 3);
INSERT INTO `django_admin_log` VALUES (25, '2019-09-19 12:33:41.035203', '12', '羊肉', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 8, 3);
INSERT INTO `django_admin_log` VALUES (26, '2019-09-19 12:33:48.837169', '13', '牛排', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 8, 3);
INSERT INTO `django_admin_log` VALUES (27, '2019-09-19 12:33:55.306073', '14', '盒装鸡蛋', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 8, 3);
INSERT INTO `django_admin_log` VALUES (28, '2019-09-19 12:34:02.585996', '15', '鸡肉', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 8, 3);
INSERT INTO `django_admin_log` VALUES (29, '2019-09-19 12:34:11.438670', '16', '鸭蛋', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 8, 3);
INSERT INTO `django_admin_log` VALUES (30, '2019-09-19 12:34:18.328508', '17', '鸡腿', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 8, 3);
INSERT INTO `django_admin_log` VALUES (31, '2019-09-19 12:34:25.537772', '18', '白菜', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 8, 3);
INSERT INTO `django_admin_log` VALUES (32, '2019-09-19 12:34:33.845168', '19', '芹菜', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 8, 3);
INSERT INTO `django_admin_log` VALUES (33, '2019-09-19 12:34:41.224802', '20', '香菜', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 8, 3);
INSERT INTO `django_admin_log` VALUES (34, '2019-09-19 12:34:48.457982', '21', '冬瓜', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 8, 3);
INSERT INTO `django_admin_log` VALUES (35, '2019-09-19 12:34:54.573849', '22', '鱼丸', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 8, 3);
INSERT INTO `django_admin_log` VALUES (36, '2019-09-19 12:35:01.855217', '23', '蟹棒', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 8, 3);
INSERT INTO `django_admin_log` VALUES (37, '2019-09-19 12:35:09.273797', '24', '虾丸', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 8, 3);
INSERT INTO `django_admin_log` VALUES (38, '2019-09-19 12:35:15.645927', '25', '速冻水饺', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 8, 3);
INSERT INTO `django_admin_log` VALUES (39, '2019-09-19 12:35:29.248877', '26', '越南芒果', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 8, 3);
INSERT INTO `django_admin_log` VALUES (40, '2019-09-19 12:35:35.146160', '27', '鹌鹑蛋', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 8, 3);
INSERT INTO `django_admin_log` VALUES (41, '2019-09-19 12:35:40.514842', '28', '鹅蛋', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 8, 3);
INSERT INTO `django_admin_log` VALUES (42, '2019-09-19 12:35:46.034553', '29', '红辣椒', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 8, 3);
INSERT INTO `django_admin_log` VALUES (43, '2019-09-28 09:03:12.783264', '2', '盛夏尝鲜季', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 11, 3);
INSERT INTO `django_admin_log` VALUES (44, '2019-09-28 09:03:22.124605', '2', '盛夏尝鲜季', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 11, 3);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (6, 'goods', 'goods');
INSERT INTO `django_content_type` VALUES (7, 'goods', 'goodsimage');
INSERT INTO `django_content_type` VALUES (8, 'goods', 'goodssku');
INSERT INTO `django_content_type` VALUES (9, 'goods', 'goodstype');
INSERT INTO `django_content_type` VALUES (10, 'goods', 'indexgoodsbanner');
INSERT INTO `django_content_type` VALUES (11, 'goods', 'indexpromotionbanner');
INSERT INTO `django_content_type` VALUES (12, 'goods', 'indextypegoodsbanner');
INSERT INTO `django_content_type` VALUES (13, 'order', 'ordergoods');
INSERT INTO `django_content_type` VALUES (14, 'order', 'orderinfo');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (16, 'user', 'address');
INSERT INTO `django_content_type` VALUES (15, 'user', 'user');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2019-09-14 12:18:57.987242');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2019-09-14 12:18:58.097927');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2019-09-14 12:18:58.274455');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2019-09-14 12:18:58.311359');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0003_alter_user_email_max_length', '2019-09-14 12:18:58.327325');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0004_alter_user_username_opts', '2019-09-14 12:18:58.343272');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0005_alter_user_last_login_null', '2019-09-14 12:18:58.358229');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0006_require_contenttypes_0002', '2019-09-14 12:18:58.365213');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2019-09-14 12:18:58.380203');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0008_alter_user_username_max_length', '2019-09-14 12:18:58.395133');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0009_alter_user_last_name_max_length', '2019-09-14 12:18:58.410093');
INSERT INTO `django_migrations` VALUES (12, 'user', '0001_initial', '2019-09-14 12:18:58.687350');
INSERT INTO `django_migrations` VALUES (13, 'admin', '0001_initial', '2019-09-14 12:18:58.782100');
INSERT INTO `django_migrations` VALUES (14, 'admin', '0002_logentry_remove_auto_add', '2019-09-14 12:18:58.802043');
INSERT INTO `django_migrations` VALUES (15, 'admin', '0003_logentry_add_action_flag_choices', '2019-09-14 12:18:58.825979');
INSERT INTO `django_migrations` VALUES (16, 'goods', '0001_initial', '2019-09-14 12:19:00.411891');
INSERT INTO `django_migrations` VALUES (17, 'order', '0001_initial', '2019-09-14 12:19:00.479678');
INSERT INTO `django_migrations` VALUES (18, 'order', '0002_auto_20190914_2017', '2019-09-14 12:19:00.817774');
INSERT INTO `django_migrations` VALUES (19, 'sessions', '0001_initial', '2019-09-14 12:19:00.864656');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;

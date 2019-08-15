/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100138
 Source Host           : localhost:3306
 Source Schema         : laravel_latest

 Target Server Type    : MySQL
 Target Server Version : 100138
 File Encoding         : 65001

 Date: 15/08/2019 23:51:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for role_users
-- ----------------------------
DROP TABLE IF EXISTS `role_users`;
CREATE TABLE `role_users`  (
  `role_id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`role_id`, `user_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `role_users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `role_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of role_users
-- ----------------------------
INSERT INTO `role_users` VALUES (1, 11);
INSERT INTO `role_users` VALUES (1, 12);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'admin');
INSERT INTO `roles` VALUES (2, 'member');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'janaka sampath', 'hansi123456789@mailinator.com', '$2y$10$WxH/2AJaYYTdctivSw3YDOIRYG0wdbH64iKS1zP.uaduNBmw1wbyS', NULL, '2019-08-15 17:19:12', '2019-08-15 17:19:12');
INSERT INTO `users` VALUES (2, 'janaka sampath', 'jsbnilantha@gmail3.com', '$2y$10$Vz2XbPo0DWJU51Kx4CqVreaGXbS8v/RUGNBPv8BSCmSKM6AiW17IO', NULL, '2019-08-15 17:20:13', '2019-08-15 17:20:13');
INSERT INTO `users` VALUES (3, 'janaka sampath', 'jsbnilantha@gmaiddl3.com', '$2y$10$mp.Z5woi5lQmovIottrTiuUZ79SWHgyvfhUtDL.dXgW.fsDXZVYMm', NULL, '2019-08-15 17:41:20', '2019-08-15 17:41:20');
INSERT INTO `users` VALUES (10, 'janaka sampath', 'member6@mailinator.com', '$2y$10$yxmVj//dlKqwhN.eW4QZiuSvjOwCBYTkrSwPUCsy6PVaT7aOeFaeK', NULL, '2019-08-15 17:54:25', '2019-08-15 17:54:25');
INSERT INTO `users` VALUES (11, 'janaka sampath', 'member6@mailifnator.com', '$2y$10$thPgAfwEEjN3P40SD2ysoOvR55PjwlWopMZ8uC6psc7c5Cvz2ONsG', NULL, '2019-08-15 17:55:56', '2019-08-15 17:55:56');
INSERT INTO `users` VALUES (12, 'janaka sampath', 'jsbnilantha@gmddail3.com', '$2y$10$3Vmrxocn9XdXXkY87o1j6uNREL8bSABl1Hd8QLeGoHV.45EwXiN5y', NULL, '2019-08-15 17:59:48', '2019-08-15 17:59:48');

SET FOREIGN_KEY_CHECKS = 1;

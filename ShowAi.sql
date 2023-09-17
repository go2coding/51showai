/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.244.130
 Source Server Type    : MySQL
 Source Server Version : 80034
 Source Host           : 192.168.244.130:3306
 Source Schema         : ShowAi

 Target Server Type    : MySQL
 Target Server Version : 80034
 File Encoding         : 65001

 Date: 14/09/2023 10:00:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `access_tokens`;
CREATE TABLE `access_tokens`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `token` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `last_activity_at` datetime NULL DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `last_ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `last_user_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `access_tokens_user_id_foreign`(`user_id` ASC) USING BTREE,
  INDEX `access_tokens_type_index`(`type` ASC) USING BTREE,
  CONSTRAINT `access_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of access_tokens
-- ----------------------------
INSERT INTO `access_tokens` VALUES (2, 'orIjOGwvHQhQniUMayBhfwOfLVHV3gs47uyElW7Q', 1, '2023-09-01 05:43:01', '2023-09-01 05:40:23', 'session_remember', NULL, '192.168.244.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.62');
INSERT INTO `access_tokens` VALUES (3, 'ylbACy7qngzN6XrKei5YzVHAMfyFKq6HkaM2t9UY', 1, '2023-09-01 05:48:40', '2023-09-01 05:45:28', 'session_remember', NULL, '192.168.244.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.62');
INSERT INTO `access_tokens` VALUES (4, 'yjzTF4zwChb8zoJqOOrA7HaRnezRMWgI5NphJCfg', 1, '2023-09-01 06:25:26', '2023-09-01 06:23:20', 'session_remember', NULL, '192.168.244.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.62');
INSERT INTO `access_tokens` VALUES (5, '3sUL5xK4dZR1BxBeRTB4bzRvJx4hymlZu9fOxUjH', 1, '2023-09-01 07:25:14', '2023-09-01 07:25:14', 'session_remember', NULL, '192.168.244.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.62');
INSERT INTO `access_tokens` VALUES (6, 'maatOilNhqAKw0ScWT7PoEjGwnwXiukbEz6kE5QR', 1, '2023-09-01 08:22:01', '2023-09-01 07:27:31', 'session_remember', NULL, '192.168.244.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.62');
INSERT INTO `access_tokens` VALUES (7, 'nQECL28Cw4oAT4tAkA6PyGUJleinzCp72C9z5ge5', 1, '2023-09-04 01:31:08', '2023-09-01 09:15:47', 'session_remember', NULL, '192.168.244.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.62');
INSERT INTO `access_tokens` VALUES (8, 'E0HFfSacFDYyk1bKlBvaSY2Puto8ObdvWaxE88mN', 1, '2023-09-04 01:36:06', '2023-09-04 01:36:06', 'session_remember', NULL, '192.168.244.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.62');
INSERT INTO `access_tokens` VALUES (14, 'OD5H4NfbeEKgnpkVTYIcrSO49GCeezLmYwkk9MHN', 1, '2023-09-06 03:47:18', '2023-09-05 09:34:16', 'session_remember', NULL, '192.168.244.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.69');
INSERT INTO `access_tokens` VALUES (15, '8P74CDKK29qTo8IOagBiwUUeuC7jQ7THB3sZkhtY', 1, '2023-09-06 05:33:11', '2023-09-06 05:26:25', 'session_remember', NULL, '192.168.244.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.69');
INSERT INTO `access_tokens` VALUES (16, 'XLrECqRP7IxktfcGyc65Y9ctrqW0e7QdClwogoql', 1, '2023-09-06 05:35:46', '2023-09-06 05:35:46', 'session_remember', NULL, '192.168.244.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.69');
INSERT INTO `access_tokens` VALUES (19, 'nMBFGdPFp9m3wT873dmnugrLxHgOyNCHXwZYjyoX', 1, '2023-09-06 05:49:59', '2023-09-06 05:49:59', 'session_remember', NULL, '192.168.244.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.69');
INSERT INTO `access_tokens` VALUES (23, '5DdX6v7OSEeVphFmBmsCo0q7j0PYEtaeZ3mnke5A', 1, '2023-09-06 09:30:18', '2023-09-06 09:01:18', 'session_remember', NULL, '192.168.244.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.69');
INSERT INTO `access_tokens` VALUES (25, '52rFdq7cBRhDq9wqsr1XH9Bar6hhYxIi11K7oJ0C', 1, '2023-09-07 03:29:39', '2023-09-07 01:36:26', 'session_remember', NULL, '192.168.244.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.69');
INSERT INTO `access_tokens` VALUES (26, 'u0EiigvWazE5wQv6Bu24XYHKDJXuIBoVSqzbupJ2', 1, '2023-09-07 03:34:03', '2023-09-07 03:34:03', 'session_remember', NULL, '192.168.244.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.69');
INSERT INTO `access_tokens` VALUES (27, 'KG72vp7LqsogyslyxEJb28tZBtnXy8RoGhiL0Wvq', 1, '2023-09-07 03:36:59', '2023-09-07 03:36:59', 'session_remember', NULL, '192.168.244.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.69');
INSERT INTO `access_tokens` VALUES (28, '15Ff29NUDWIDIY2AV5WW8TVB5vE1rACiHNzKRyg3', 1, '2023-09-07 03:47:18', '2023-09-07 03:47:18', 'session_remember', NULL, '192.168.244.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.69');
INSERT INTO `access_tokens` VALUES (29, 'gC91C73QfJfyup8KjMC9tUZ6GyQrZjJq0SEXvlyC', 1, '2023-09-07 03:49:58', '2023-09-07 03:49:58', 'session_remember', NULL, '192.168.244.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.69');
INSERT INTO `access_tokens` VALUES (31, '29QQ7pXMRHK5g6EQkRCcqFzPBOjpXDf5ZkqYi2tG', 1, '2023-09-07 07:01:11', '2023-09-07 05:13:15', 'session_remember', NULL, '192.168.244.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.69');
INSERT INTO `access_tokens` VALUES (32, 'ly7JY2oK2eIj6CV2EMik6OE1SeQQg09mv5UBxFyW', 1, '2023-09-07 07:35:26', '2023-09-07 07:35:26', 'session_remember', NULL, '192.168.244.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.69');
INSERT INTO `access_tokens` VALUES (33, '8J9abjBukIgYxAybk6nqBVdTPTnJ14qLwbxquLgT', 1, '2023-09-07 07:40:52', '2023-09-07 07:40:52', 'session_remember', NULL, '192.168.244.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.69');
INSERT INTO `access_tokens` VALUES (34, 'CU2IrC5XiorZ4AjWm6PBzA4BDG2gYqvX90JtcD1z', 1, '2023-09-07 07:45:04', '2023-09-07 07:45:04', 'session_remember', NULL, '192.168.244.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.69');
INSERT INTO `access_tokens` VALUES (37, 'vYFzbXYCtQCIShU0nr0HARHaybhUIEmC6xQgouYn', 1, '2023-09-07 08:18:16', '2023-09-07 08:18:16', 'session_remember', NULL, '192.168.244.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.69');
INSERT INTO `access_tokens` VALUES (39, '8J1ketLjX1bwUJPER6OEc0FfVSRe6Q6ReT1Xi42U', 1, '2023-09-07 08:27:13', '2023-09-07 08:27:13', 'session_remember', NULL, '192.168.244.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.69');
INSERT INTO `access_tokens` VALUES (49, 'fxWUw0j54U1qHNDczRRkkGflu88CuNW1qLDo4Dqn', 1, '2023-09-07 09:16:15', '2023-09-07 09:16:15', 'session_remember', NULL, '192.168.244.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.69');
INSERT INTO `access_tokens` VALUES (51, 'm272CmFcVtYYNc0VtOHqeKMF35nWcXTr3pkbCrQp', 1, '2023-09-07 09:28:26', '2023-09-07 09:28:26', 'session_remember', NULL, '192.168.244.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.69');
INSERT INTO `access_tokens` VALUES (56, 'fLhk9u6o7v4jfmGaniFK3d6eKXQ9ZwHpLslBuaew', 1, '2023-09-11 02:17:37', '2023-09-08 09:18:56', 'session_remember', NULL, '192.168.244.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76');
INSERT INTO `access_tokens` VALUES (57, 'IlEYkmMnpfX3ywWFgGp8qT3T097IYXpumrWxkBtz', 1, '2023-09-11 05:18:05', '2023-09-11 02:34:37', 'session_remember', NULL, '192.168.244.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76');
INSERT INTO `access_tokens` VALUES (58, 'HIfTXPuUlsWWSay30nuxMqJ3AEzi649XItJCqZ14', 1, '2023-09-11 07:42:10', '2023-09-11 07:42:10', 'session_remember', NULL, '192.168.244.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76');
INSERT INTO `access_tokens` VALUES (59, '880pp21wzQvDwYXmfiTKt84ubvEe02N68Fer0gPu', 1, '2023-09-11 09:47:42', '2023-09-11 09:47:42', 'session_remember', NULL, '192.168.244.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76');
INSERT INTO `access_tokens` VALUES (61, 'wnjdLcXoduqJJs24i7hjsZ6tzweifSw7ZeRhoBdj', 1, '2023-09-12 01:44:09', '2023-09-12 01:44:09', 'session_remember', NULL, '192.168.244.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76');
INSERT INTO `access_tokens` VALUES (63, '4oqvYTApY2tpy5WtRKf100JAb52MCYHFT9CRZwmR', 1, '2023-09-14 01:56:02', '2023-09-14 01:56:02', 'session', NULL, NULL, NULL);
INSERT INTO `access_tokens` VALUES (64, 'Dd5U4d6RyWdXjedm2aSWRbdyuN0snDiK8rqG7n7C', 1, '2023-09-14 01:58:24', '2023-09-14 01:56:37', 'session_remember', NULL, '192.168.244.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76');

-- ----------------------------
-- Table structure for api_keys
-- ----------------------------
DROP TABLE IF EXISTS `api_keys`;
CREATE TABLE `api_keys`  (
  `key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `allowed_ips` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `scopes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_id` int UNSIGNED NULL DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `last_activity_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `api_keys_key_unique`(`key` ASC) USING BTREE,
  INDEX `api_keys_user_id_foreign`(`user_id` ASC) USING BTREE,
  CONSTRAINT `api_keys_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of api_keys
-- ----------------------------

-- ----------------------------
-- Table structure for discussion_tag
-- ----------------------------
DROP TABLE IF EXISTS `discussion_tag`;
CREATE TABLE `discussion_tag`  (
  `discussion_id` int UNSIGNED NOT NULL,
  `tag_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`discussion_id`, `tag_id`) USING BTREE,
  INDEX `discussion_tag_tag_id_foreign`(`tag_id` ASC) USING BTREE,
  CONSTRAINT `discussion_tag_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `discussion_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discussion_tag
-- ----------------------------
INSERT INTO `discussion_tag` VALUES (1, 4, '2023-09-08 17:14:30');
INSERT INTO `discussion_tag` VALUES (2, 1, '2023-09-01 14:25:26');
INSERT INTO `discussion_tag` VALUES (3, 1, '2023-09-08 17:28:22');
INSERT INTO `discussion_tag` VALUES (4, 1, '2023-09-08 17:33:17');
INSERT INTO `discussion_tag` VALUES (5, 1, '2023-09-08 17:38:14');
INSERT INTO `discussion_tag` VALUES (6, 1, '2023-09-08 17:41:08');
INSERT INTO `discussion_tag` VALUES (7, 1, '2023-09-08 17:46:01');
INSERT INTO `discussion_tag` VALUES (8, 1, '2023-09-08 17:49:08');
INSERT INTO `discussion_tag` VALUES (9, 1, '2023-09-08 17:52:13');
INSERT INTO `discussion_tag` VALUES (10, 1, '2023-09-08 17:54:34');
INSERT INTO `discussion_tag` VALUES (11, 1, '2023-09-08 18:02:08');
INSERT INTO `discussion_tag` VALUES (12, 1, '2023-09-08 18:04:10');
INSERT INTO `discussion_tag` VALUES (18, 1, '2023-09-13 10:40:57');
INSERT INTO `discussion_tag` VALUES (19, 1, '2023-09-13 13:47:29');
INSERT INTO `discussion_tag` VALUES (20, 1, '2023-09-13 13:55:09');
INSERT INTO `discussion_tag` VALUES (21, 1, '2023-09-13 14:00:49');
INSERT INTO `discussion_tag` VALUES (22, 8, '2023-09-13 14:49:04');
INSERT INTO `discussion_tag` VALUES (23, 3, '2023-09-13 14:55:58');
INSERT INTO `discussion_tag` VALUES (24, 9, '2023-09-13 15:14:26');
INSERT INTO `discussion_tag` VALUES (25, 3, '2023-09-13 17:45:21');
INSERT INTO `discussion_tag` VALUES (26, 4, '2023-09-13 17:49:59');
INSERT INTO `discussion_tag` VALUES (27, 2, '2023-09-13 17:57:43');

-- ----------------------------
-- Table structure for discussion_user
-- ----------------------------
DROP TABLE IF EXISTS `discussion_user`;
CREATE TABLE `discussion_user`  (
  `user_id` int UNSIGNED NOT NULL,
  `discussion_id` int UNSIGNED NOT NULL,
  `last_read_at` datetime NULL DEFAULT NULL,
  `last_read_post_number` int UNSIGNED NULL DEFAULT NULL,
  `subscription` enum('follow','ignore') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`, `discussion_id`) USING BTREE,
  INDEX `discussion_user_discussion_id_foreign`(`discussion_id` ASC) USING BTREE,
  CONSTRAINT `discussion_user_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `discussion_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discussion_user
-- ----------------------------
INSERT INTO `discussion_user` VALUES (1, 1, '2023-09-08 09:15:16', 1, NULL);
INSERT INTO `discussion_user` VALUES (1, 2, '2023-09-05 07:31:04', 1, NULL);
INSERT INTO `discussion_user` VALUES (1, 3, '2023-09-08 09:28:22', 1, NULL);
INSERT INTO `discussion_user` VALUES (1, 4, '2023-09-08 09:33:17', 1, NULL);
INSERT INTO `discussion_user` VALUES (1, 5, '2023-09-08 09:38:14', 1, NULL);
INSERT INTO `discussion_user` VALUES (1, 6, '2023-09-08 09:41:08', 1, NULL);
INSERT INTO `discussion_user` VALUES (1, 7, '2023-09-08 09:46:01', 1, NULL);
INSERT INTO `discussion_user` VALUES (1, 8, '2023-09-08 09:49:08', 1, NULL);
INSERT INTO `discussion_user` VALUES (1, 9, '2023-09-08 09:52:13', 1, NULL);
INSERT INTO `discussion_user` VALUES (1, 10, '2023-09-08 09:54:34', 1, NULL);
INSERT INTO `discussion_user` VALUES (1, 11, '2023-09-08 10:02:08', 1, NULL);
INSERT INTO `discussion_user` VALUES (1, 12, '2023-09-12 07:11:28', 2, NULL);
INSERT INTO `discussion_user` VALUES (1, 18, '2023-09-13 02:40:57', 1, NULL);
INSERT INTO `discussion_user` VALUES (1, 19, '2023-09-13 05:47:30', 1, NULL);
INSERT INTO `discussion_user` VALUES (1, 20, '2023-09-13 05:55:09', 1, NULL);
INSERT INTO `discussion_user` VALUES (1, 21, '2023-09-13 06:00:49', 1, NULL);
INSERT INTO `discussion_user` VALUES (1, 22, '2023-09-13 06:49:04', 1, NULL);
INSERT INTO `discussion_user` VALUES (1, 23, '2023-09-13 06:55:58', 1, NULL);
INSERT INTO `discussion_user` VALUES (1, 24, '2023-09-13 07:14:26', 1, NULL);
INSERT INTO `discussion_user` VALUES (1, 25, '2023-09-13 09:45:21', 1, NULL);
INSERT INTO `discussion_user` VALUES (1, 26, '2023-09-13 09:49:59', 1, NULL);
INSERT INTO `discussion_user` VALUES (1, 27, '2023-09-13 09:57:43', 1, NULL);
INSERT INTO `discussion_user` VALUES (2, 1, '2023-09-05 07:30:37', 1, NULL);
INSERT INTO `discussion_user` VALUES (2, 2, '2023-09-05 07:31:32', 1, 'follow');
INSERT INTO `discussion_user` VALUES (2, 4, '2023-09-12 09:26:30', 1, NULL);
INSERT INTO `discussion_user` VALUES (2, 6, '2023-09-12 09:22:34', 1, NULL);
INSERT INTO `discussion_user` VALUES (2, 7, '2023-09-11 01:48:26', 1, NULL);
INSERT INTO `discussion_user` VALUES (2, 11, '2023-09-12 09:22:16', 1, NULL);

-- ----------------------------
-- Table structure for discussions
-- ----------------------------
DROP TABLE IF EXISTS `discussions`;
CREATE TABLE `discussions`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_count` int NOT NULL DEFAULT 1,
  `participant_count` int UNSIGNED NOT NULL DEFAULT 0,
  `post_number_index` int UNSIGNED NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `user_id` int UNSIGNED NULL DEFAULT NULL,
  `first_post_id` int UNSIGNED NULL DEFAULT NULL,
  `last_posted_at` datetime NULL DEFAULT NULL,
  `last_posted_user_id` int UNSIGNED NULL DEFAULT NULL,
  `last_post_id` int UNSIGNED NULL DEFAULT NULL,
  `last_post_number` int UNSIGNED NULL DEFAULT NULL,
  `hidden_at` datetime NULL DEFAULT NULL,
  `hidden_user_id` int UNSIGNED NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT 0,
  `is_approved` tinyint(1) NOT NULL DEFAULT 1,
  `is_sticky` tinyint(1) NOT NULL DEFAULT 0,
  `is_locked` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `discussions_hidden_user_id_foreign`(`hidden_user_id` ASC) USING BTREE,
  INDEX `discussions_first_post_id_foreign`(`first_post_id` ASC) USING BTREE,
  INDEX `discussions_last_post_id_foreign`(`last_post_id` ASC) USING BTREE,
  INDEX `discussions_last_posted_at_index`(`last_posted_at` ASC) USING BTREE,
  INDEX `discussions_last_posted_user_id_index`(`last_posted_user_id` ASC) USING BTREE,
  INDEX `discussions_created_at_index`(`created_at` ASC) USING BTREE,
  INDEX `discussions_user_id_index`(`user_id` ASC) USING BTREE,
  INDEX `discussions_comment_count_index`(`comment_count` ASC) USING BTREE,
  INDEX `discussions_participant_count_index`(`participant_count` ASC) USING BTREE,
  INDEX `discussions_hidden_at_index`(`hidden_at` ASC) USING BTREE,
  INDEX `discussions_is_sticky_created_at_index`(`is_sticky` ASC, `created_at` ASC) USING BTREE,
  INDEX `discussions_is_sticky_last_posted_at_index`(`is_sticky` ASC, `last_posted_at` ASC) USING BTREE,
  INDEX `discussions_is_locked_index`(`is_locked` ASC) USING BTREE,
  FULLTEXT INDEX `title`(`title`) WITH PARSER `ngram`,
  CONSTRAINT `discussions_first_post_id_foreign` FOREIGN KEY (`first_post_id`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT,
  CONSTRAINT `discussions_hidden_user_id_foreign` FOREIGN KEY (`hidden_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT,
  CONSTRAINT `discussions_last_post_id_foreign` FOREIGN KEY (`last_post_id`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT,
  CONSTRAINT `discussions_last_posted_user_id_foreign` FOREIGN KEY (`last_posted_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT,
  CONSTRAINT `discussions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discussions
-- ----------------------------
INSERT INTO `discussions` VALUES (1, '【英语翻译/修改】将其他语言翻译成英文，或改进你提供的英文句子。', 1, 1, 0, '2023-08-31 09:48:48', 1, 1, '2023-08-31 09:48:48', 1, 1, 1, NULL, NULL, 'ying-yu-fan-yi-xiu-gai-jiang-qi-ta-yu-yan-fan-yi-cheng-ying-wen-huo-gai-jin-ni-ti-gong-de-ying-wen-ju-zi', 0, 1, 0, 0);
INSERT INTO `discussions` VALUES (2, '【写作助理】最常使用的 prompt，用于优化文本的语法、清晰度和简洁度，提高可读性。', 1, 1, 0, '2023-09-01 06:25:26', 1, 2, '2023-09-01 06:25:26', 1, 2, 1, NULL, NULL, 'prompt', 0, 1, 0, 0);
INSERT INTO `discussions` VALUES (3, '【小红书风格】将文本改写成类似小红书的 Emoji 风格。', 1, 1, 0, '2023-09-08 09:28:22', 1, 6, '2023-09-08 09:28:22', 1, 6, 1, NULL, NULL, 'xiao-hong-shu-feng-ge-jiang-wen-ben-gai-xie-cheng-lei-si-xiao-hong-shu-de-emoji-feng-ge', 0, 1, 0, 0);
INSERT INTO `discussions` VALUES (4, '【Nature 风格润色】将按照 Nature 风格润色，或者可以提供想要模仿的写作风格。', 1, 1, 0, '2023-09-08 09:33:17', 1, 7, '2023-09-08 09:33:17', 1, 7, 1, NULL, NULL, 'nature-feng-ge-run-se-jiang-an-zhao-nature-feng-ge-run-se-huo-zhe-ke-yi-ti-gong-xiang-yao-mo-fang-de-xie-zuo-feng-ge', 0, 1, 0, 0);
INSERT INTO `discussions` VALUES (5, '【口播脚本】撰写视频、直播、播客、分镜头和其他口语内容的脚本。', 1, 1, 0, '2023-09-08 09:38:14', 1, 8, '2023-09-08 09:38:14', 1, 8, 1, NULL, NULL, 'kou-bo-jiao-ben-zhuan-xie-shi-pin-zhi-bo-bo-ke-fen-jing-tou-he-qi-ta-kou-yu-nei-rong-de-jiao-ben', 0, 1, 0, 0);
INSERT INTO `discussions` VALUES (6, '【总结内容】将文本内容总结为 100 字。', 1, 1, 0, '2023-09-08 09:41:08', 1, 10, '2023-09-08 09:41:08', 1, 10, 1, NULL, NULL, 'zong-jie-nei-rong-jiang-wen-ben-nei-rong-zong-jie-wei-100-zi', 0, 1, 0, 0);
INSERT INTO `discussions` VALUES (7, '【文章续写】根据文章主题，延续文章开头部分来完成文章。', 1, 1, 0, '2023-09-08 09:46:01', 1, 11, '2023-09-08 09:46:01', 1, 11, 1, NULL, NULL, 'wen-zhang-xu-xie-gen-ju-wen-zhang-zhu-ti-yan-xu-wen-zhang-kai-tou-bu-fen-lai-wan-cheng-wen-zhang', 0, 1, 0, 0);
INSERT INTO `discussions` VALUES (8, '【写作标题生成器】个人使用的提示词，可根据文章内容生成相应语言的标题。', 1, 1, 0, '2023-09-08 09:49:08', 1, 12, '2023-09-08 09:49:08', 1, 12, 1, NULL, NULL, 'xie-zuo-biao-ti-sheng-cheng-qi-ge-ren-shi-yong-de-ti-shi-ci-ke-gen-ju-wen-zhang-nei-rong-sheng-cheng-xiang-ying-yu-yan-de-biao-ti', 0, 1, 0, 0);
INSERT INTO `discussions` VALUES (9, '【写作素材搜集】提供与主题相关的结论、数据和来源，作为素材。', 1, 1, 0, '2023-09-08 09:52:13', 1, 13, '2023-09-08 09:52:13', 1, 13, 1, NULL, NULL, 'xie-zuo-su-cai-sou-ji-ti-gong-yu-zhu-ti-xiang-guan-de-jie-lun-shu-ju-he-lai-yuan-zuo-wei-su-cai', 0, 1, 0, 0);
INSERT INTO `discussions` VALUES (10, '【写作建议】提供写作改进方案和建议，但不能直接修改文档。（个人感觉只适合老师批改作业）', 1, 1, 0, '2023-09-08 09:54:34', 1, 14, '2023-09-08 09:54:34', 1, 14, 1, NULL, NULL, 'xie-zuo-jian-yi-ti-gong-xie-zuo-gai-jin-fang-an-he-jian-yi-dan-bu-neng-zhi-jie-xiu-gai-wen-dang-ge-ren-gan-jue-zhi-gua-he-lao-shi-pi-gai-zuo-ye', 0, 1, 0, 0);
INSERT INTO `discussions` VALUES (11, '【语音输入优化】先用第三方应用将语音转换成文字，再用 ChatGPT 进行处理。', 1, 1, 0, '2023-09-08 10:02:08', 1, 15, '2023-09-08 10:02:08', 1, 15, 1, NULL, NULL, 'yu-yin-shu-ru-you-hua-xian-yong-di-san-fang-ying-yong-jiang-yu-yin-zhuan-huan-cheng-wen-zi-zai-yong-chatgpt-jin-xing-chu-li', 0, 1, 0, 0);
INSERT INTO `discussions` VALUES (12, '【格言书】根据要求输出鼓舞人心的名言和有意义的格言', 2, 1, 0, '2023-09-08 10:04:10', 1, 16, '2023-09-12 07:11:28', 1, 23, 2, NULL, NULL, 'ge-yan-shu-gen-ju-yao-qiu-shu-chu-gu-wu-ren-xin-de-ming-yan-he-you-yi-yi-de-ge-yan', 0, 1, 0, 0);
INSERT INTO `discussions` VALUES (18, '【笔记助理】提取长篇笔记的要点。', 1, 1, 0, '2023-09-13 02:40:57', 1, 24, '2023-09-13 02:40:57', 1, 24, 1, NULL, NULL, 'bi-ji-zhu-li-ti-qu-chang-pian-bi-ji-de-yao-dian', 0, 1, 0, 0);
INSERT INTO `discussions` VALUES (19, '【海量资料：一句话总结】为文章撰写宣传性文案和标题。', 1, 1, 0, '2023-09-13 05:47:29', 1, 25, '2023-09-13 05:47:29', 1, 25, 1, NULL, NULL, 'hai-liang-zi-liao-yi-ju-hua-zong-jie-wei-wen-zhang-zhuan-xie-xuan-chuan-xing-wen-an-he-biao-ti', 0, 1, 0, 0);
INSERT INTO `discussions` VALUES (20, '【文章高亮】高亮会增加文章的可读性。', 1, 1, 0, '2023-09-13 05:55:09', 1, 26, '2023-09-13 05:55:09', 1, 26, 1, NULL, NULL, 'wen-zhang-gao-liang-gao-liang-hui-zeng-jia-wen-zhang-de-ke-du-xing', 0, 1, 0, 0);
INSERT INTO `discussions` VALUES (21, '【论文标题生成】根据摘要和关键词生成论文题目。', 1, 1, 0, '2023-09-13 06:00:49', 1, 27, '2023-09-13 06:00:49', 1, 27, 1, NULL, NULL, 'lun-wen-biao-ti-sheng-cheng-gen-ju-zhai-yao-he-guan-jian-ci-sheng-cheng-lun-wen-ti-mu', 0, 1, 0, 0);
INSERT INTO `discussions` VALUES (22, '【Midjourney 提示生成器】通过为提供的图像描述填充详细且有创意的描述，激发 Midjourney 生成独特有趣的图像。', 1, 1, 0, '2023-09-13 06:49:04', 1, 28, '2023-09-13 06:49:04', 1, 28, 1, NULL, NULL, 'midjourney-ti-shi-sheng-cheng-qi-tong-guo-wei-ti-gong-de-tu-xiang-miao-shu-tian-chong-xiang-xi-qie-you-chuang-yi-de-miao-shu-ji-fa-midjourney-sheng-cheng-du-te-you-qu-de-tu-xiang', 0, 1, 0, 0);
INSERT INTO `discussions` VALUES (23, '【论文①】根据主题撰写内容翔实、有信服力的论文。', 1, 1, 0, '2023-09-13 06:55:58', 1, 29, '2023-09-13 06:55:58', 1, 29, 1, NULL, NULL, 'lun-wen-1-gen-ju-zhu-ti-zhuan-xie-nei-rong-xiang-shi-you-xin-fu-li-de-lun-wen', 0, 1, 0, 0);
INSERT INTO `discussions` VALUES (24, '【异性对话生成器】根据自己和对方的一段对话，来继续对话，用于扩展话题避免冷场。', 1, 1, 0, '2023-09-13 07:14:26', 1, 30, '2023-09-13 07:14:26', 1, 30, 1, NULL, NULL, 'yi-xing-dui-hua-sheng-cheng-qi-gen-ju-zi-ji-he-dui-fang-de-yi-duan-dui-hua-lai-ji-xu-dui-hua-yong-yu-kuo-zhan-hua-ti-bi-mian-leng-chang', 0, 1, 0, 0);
INSERT INTO `discussions` VALUES (25, '【论文式回答】以论文形式讨论问题，能够获得连贯的、结构化的和更高质量的回答。', 1, 1, 0, '2023-09-13 09:45:21', 1, 31, '2023-09-13 09:45:21', 1, 31, 1, NULL, NULL, 'lun-wen-shi-hui-da-yi-lun-wen-xing-shi-tao-lun-wen-ti-neng-gou-huo-de-lian-guan-de-jie-gou-hua-de-he-geng-gao-zhi-liang-de-hui-da', 0, 1, 0, 0);
INSERT INTO `discussions` VALUES (26, '【英语翻译/修改】将其他语言翻译成英文，或改进你提供的英文句子。', 1, 1, 0, '2023-09-13 09:49:59', 1, 32, '2023-09-13 09:49:59', 1, 32, 1, NULL, NULL, 'ying-yu-fan-yi-xiu-gai-jiang-qi-ta-yu-yan-fan-yi-cheng-ying-wen-huo-gai-jin-ni-ti-gong-de-ying-wen-ju-zi', 0, 1, 0, 0);
INSERT INTO `discussions` VALUES (27, '【IT 编程问题】模拟编程社区来回答你的问题，并提供解决代码。', 1, 1, 0, '2023-09-13 09:57:43', 1, 33, '2023-09-13 09:57:43', 1, 33, 1, NULL, NULL, 'it-bian-cheng-wen-ti-mo-ni-bian-cheng-she-qu-lai-hui-da-ni-de-wen-ti-bing-ti-gong-jie-jue-dai-ma', 0, 1, 0, 0);

-- ----------------------------
-- Table structure for email_tokens
-- ----------------------------
DROP TABLE IF EXISTS `email_tokens`;
CREATE TABLE `email_tokens`  (
  `token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`token`) USING BTREE,
  INDEX `email_tokens_user_id_foreign`(`user_id` ASC) USING BTREE,
  CONSTRAINT `email_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of email_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for flags
-- ----------------------------
DROP TABLE IF EXISTS `flags`;
CREATE TABLE `flags`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` int UNSIGNED NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int UNSIGNED NULL DEFAULT NULL,
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `reason_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `flags_post_id_foreign`(`post_id` ASC) USING BTREE,
  INDEX `flags_user_id_foreign`(`user_id` ASC) USING BTREE,
  INDEX `flags_created_at_index`(`created_at` ASC) USING BTREE,
  CONSTRAINT `flags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `flags_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of flags
-- ----------------------------

-- ----------------------------
-- Table structure for group_permission
-- ----------------------------
DROP TABLE IF EXISTS `group_permission`;
CREATE TABLE `group_permission`  (
  `group_id` int UNSIGNED NOT NULL,
  `permission` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`group_id`, `permission`) USING BTREE,
  CONSTRAINT `group_permission_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of group_permission
-- ----------------------------
INSERT INTO `group_permission` VALUES (2, 'viewForum', NULL);
INSERT INTO `group_permission` VALUES (3, 'discussion.flagPosts', '2023-08-31 17:48:30');
INSERT INTO `group_permission` VALUES (3, 'discussion.likePosts', '2023-08-31 17:48:31');
INSERT INTO `group_permission` VALUES (3, 'discussion.reply', NULL);
INSERT INTO `group_permission` VALUES (3, 'discussion.replyWithoutApproval', '2023-08-31 17:48:31');
INSERT INTO `group_permission` VALUES (3, 'discussion.startWithoutApproval', '2023-08-31 17:48:31');
INSERT INTO `group_permission` VALUES (3, 'searchUsers', NULL);
INSERT INTO `group_permission` VALUES (3, 'startDiscussion', NULL);
INSERT INTO `group_permission` VALUES (4, 'discussion.approvePosts', '2023-08-31 17:48:31');
INSERT INTO `group_permission` VALUES (4, 'discussion.editPosts', NULL);
INSERT INTO `group_permission` VALUES (4, 'discussion.hide', NULL);
INSERT INTO `group_permission` VALUES (4, 'discussion.hidePosts', NULL);
INSERT INTO `group_permission` VALUES (4, 'discussion.lock', '2023-08-31 17:48:31');
INSERT INTO `group_permission` VALUES (4, 'discussion.rename', NULL);
INSERT INTO `group_permission` VALUES (4, 'discussion.sticky', '2023-08-31 17:48:31');
INSERT INTO `group_permission` VALUES (4, 'discussion.tag', '2023-08-31 17:48:31');
INSERT INTO `group_permission` VALUES (4, 'discussion.viewFlags', '2023-08-31 17:48:30');
INSERT INTO `group_permission` VALUES (4, 'discussion.viewIpsPosts', NULL);
INSERT INTO `group_permission` VALUES (4, 'user.suspend', '2023-08-31 17:48:31');
INSERT INTO `group_permission` VALUES (4, 'user.viewLastSeenAt', NULL);

-- ----------------------------
-- Table structure for group_user
-- ----------------------------
DROP TABLE IF EXISTS `group_user`;
CREATE TABLE `group_user`  (
  `user_id` int UNSIGNED NOT NULL,
  `group_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`, `group_id`) USING BTREE,
  INDEX `group_user_group_id_foreign`(`group_id` ASC) USING BTREE,
  CONSTRAINT `group_user_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `group_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of group_user
-- ----------------------------
INSERT INTO `group_user` VALUES (1, 1, '2023-08-31 17:48:30');

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name_singular` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_plural` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_hidden` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of groups
-- ----------------------------
INSERT INTO `groups` VALUES (1, 'Admin', 'Admins', '#B72A2A', 'fas fa-wrench', 0, NULL, NULL);
INSERT INTO `groups` VALUES (2, 'Guest', 'Guests', NULL, NULL, 0, NULL, NULL);
INSERT INTO `groups` VALUES (3, 'Member', 'Members', NULL, NULL, 0, NULL, NULL);
INSERT INTO `groups` VALUES (4, 'Mod', 'Mods', '#80349E', 'fas fa-bolt', 0, NULL, NULL);

-- ----------------------------
-- Table structure for links
-- ----------------------------
DROP TABLE IF EXISTS `links`;
CREATE TABLE `links`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int NULL DEFAULT NULL,
  `is_internal` tinyint(1) NOT NULL DEFAULT 0,
  `is_newtab` tinyint(1) NOT NULL DEFAULT 0,
  `parent_id` int UNSIGNED NULL DEFAULT NULL,
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `visibility` enum('everyone','members','guests') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'everyone',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `links_parent_id_foreign`(`parent_id` ASC) USING BTREE,
  INDEX `links_visibility_index`(`visibility` ASC) USING BTREE,
  CONSTRAINT `links_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `links` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of links
-- ----------------------------
INSERT INTO `links` VALUES (1, 'AI网址导航', 'http://aibard123.top/', NULL, 0, 1, NULL, '', 'everyone');
INSERT INTO `links` VALUES (3, '开源地址', 'http://aibard123.com/', NULL, 0, 1, NULL, '', 'everyone');
INSERT INTO `links` VALUES (5, '关于我们', '/p/about', NULL, 1, 0, NULL, ' fas fa-code-merge', 'everyone');

-- ----------------------------
-- Table structure for login_providers
-- ----------------------------
DROP TABLE IF EXISTS `login_providers`;
CREATE TABLE `login_providers`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED NOT NULL,
  `provider` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `last_login_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `login_providers_provider_identifier_unique`(`provider` ASC, `identifier` ASC) USING BTREE,
  INDEX `login_providers_user_id_foreign`(`user_id` ASC) USING BTREE,
  CONSTRAINT `login_providers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login_providers
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 151 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2015_02_24_000000_create_access_tokens_table', NULL);
INSERT INTO `migrations` VALUES (2, '2015_02_24_000000_create_api_keys_table', NULL);
INSERT INTO `migrations` VALUES (3, '2015_02_24_000000_create_config_table', NULL);
INSERT INTO `migrations` VALUES (4, '2015_02_24_000000_create_discussions_table', NULL);
INSERT INTO `migrations` VALUES (5, '2015_02_24_000000_create_email_tokens_table', NULL);
INSERT INTO `migrations` VALUES (6, '2015_02_24_000000_create_groups_table', NULL);
INSERT INTO `migrations` VALUES (7, '2015_02_24_000000_create_notifications_table', NULL);
INSERT INTO `migrations` VALUES (8, '2015_02_24_000000_create_password_tokens_table', NULL);
INSERT INTO `migrations` VALUES (9, '2015_02_24_000000_create_permissions_table', NULL);
INSERT INTO `migrations` VALUES (10, '2015_02_24_000000_create_posts_table', NULL);
INSERT INTO `migrations` VALUES (11, '2015_02_24_000000_create_users_discussions_table', NULL);
INSERT INTO `migrations` VALUES (12, '2015_02_24_000000_create_users_groups_table', NULL);
INSERT INTO `migrations` VALUES (13, '2015_02_24_000000_create_users_table', NULL);
INSERT INTO `migrations` VALUES (14, '2015_09_15_000000_create_auth_tokens_table', NULL);
INSERT INTO `migrations` VALUES (15, '2015_09_20_224327_add_hide_to_discussions', NULL);
INSERT INTO `migrations` VALUES (16, '2015_09_22_030432_rename_notification_read_time', NULL);
INSERT INTO `migrations` VALUES (17, '2015_10_07_130531_rename_config_to_settings', NULL);
INSERT INTO `migrations` VALUES (18, '2015_10_24_194000_add_ip_address_to_posts', NULL);
INSERT INTO `migrations` VALUES (19, '2015_12_05_042721_change_access_tokens_columns', NULL);
INSERT INTO `migrations` VALUES (20, '2015_12_17_194247_change_settings_value_column_to_text', NULL);
INSERT INTO `migrations` VALUES (21, '2016_02_04_095452_add_slug_to_discussions', NULL);
INSERT INTO `migrations` VALUES (22, '2017_04_07_114138_add_is_private_to_discussions', NULL);
INSERT INTO `migrations` VALUES (23, '2017_04_07_114138_add_is_private_to_posts', NULL);
INSERT INTO `migrations` VALUES (24, '2018_01_11_093900_change_access_tokens_columns', NULL);
INSERT INTO `migrations` VALUES (25, '2018_01_11_094000_change_access_tokens_add_foreign_keys', NULL);
INSERT INTO `migrations` VALUES (26, '2018_01_11_095000_change_api_keys_columns', NULL);
INSERT INTO `migrations` VALUES (27, '2018_01_11_101800_rename_auth_tokens_to_registration_tokens', NULL);
INSERT INTO `migrations` VALUES (28, '2018_01_11_102000_change_registration_tokens_rename_id_to_token', NULL);
INSERT INTO `migrations` VALUES (29, '2018_01_11_102100_change_registration_tokens_created_at_to_datetime', NULL);
INSERT INTO `migrations` VALUES (30, '2018_01_11_120604_change_posts_table_to_innodb', NULL);
INSERT INTO `migrations` VALUES (31, '2018_01_11_155200_change_discussions_rename_columns', NULL);
INSERT INTO `migrations` VALUES (32, '2018_01_11_155300_change_discussions_add_foreign_keys', NULL);
INSERT INTO `migrations` VALUES (33, '2018_01_15_071700_rename_users_discussions_to_discussion_user', NULL);
INSERT INTO `migrations` VALUES (34, '2018_01_15_071800_change_discussion_user_rename_columns', NULL);
INSERT INTO `migrations` VALUES (35, '2018_01_15_071900_change_discussion_user_add_foreign_keys', NULL);
INSERT INTO `migrations` VALUES (36, '2018_01_15_072600_change_email_tokens_rename_id_to_token', NULL);
INSERT INTO `migrations` VALUES (37, '2018_01_15_072700_change_email_tokens_add_foreign_keys', NULL);
INSERT INTO `migrations` VALUES (38, '2018_01_15_072800_change_email_tokens_created_at_to_datetime', NULL);
INSERT INTO `migrations` VALUES (39, '2018_01_18_130400_rename_permissions_to_group_permission', NULL);
INSERT INTO `migrations` VALUES (40, '2018_01_18_130500_change_group_permission_add_foreign_keys', NULL);
INSERT INTO `migrations` VALUES (41, '2018_01_18_130600_rename_users_groups_to_group_user', NULL);
INSERT INTO `migrations` VALUES (42, '2018_01_18_130700_change_group_user_add_foreign_keys', NULL);
INSERT INTO `migrations` VALUES (43, '2018_01_18_133000_change_notifications_columns', NULL);
INSERT INTO `migrations` VALUES (44, '2018_01_18_133100_change_notifications_add_foreign_keys', NULL);
INSERT INTO `migrations` VALUES (45, '2018_01_18_134400_change_password_tokens_rename_id_to_token', NULL);
INSERT INTO `migrations` VALUES (46, '2018_01_18_134500_change_password_tokens_add_foreign_keys', NULL);
INSERT INTO `migrations` VALUES (47, '2018_01_18_134600_change_password_tokens_created_at_to_datetime', NULL);
INSERT INTO `migrations` VALUES (48, '2018_01_18_135000_change_posts_rename_columns', NULL);
INSERT INTO `migrations` VALUES (49, '2018_01_18_135100_change_posts_add_foreign_keys', NULL);
INSERT INTO `migrations` VALUES (50, '2018_01_30_112238_add_fulltext_index_to_discussions_title', NULL);
INSERT INTO `migrations` VALUES (51, '2018_01_30_220100_create_post_user_table', NULL);
INSERT INTO `migrations` VALUES (52, '2018_01_30_222900_change_users_rename_columns', NULL);
INSERT INTO `migrations` VALUES (55, '2018_09_15_041340_add_users_indicies', NULL);
INSERT INTO `migrations` VALUES (56, '2018_09_15_041828_add_discussions_indicies', NULL);
INSERT INTO `migrations` VALUES (57, '2018_09_15_043337_add_notifications_indices', NULL);
INSERT INTO `migrations` VALUES (58, '2018_09_15_043621_add_posts_indices', NULL);
INSERT INTO `migrations` VALUES (59, '2018_09_22_004100_change_registration_tokens_columns', NULL);
INSERT INTO `migrations` VALUES (60, '2018_09_22_004200_create_login_providers_table', NULL);
INSERT INTO `migrations` VALUES (61, '2018_10_08_144700_add_shim_prefix_to_group_icons', NULL);
INSERT INTO `migrations` VALUES (62, '2019_10_12_195349_change_posts_add_discussion_foreign_key', NULL);
INSERT INTO `migrations` VALUES (63, '2020_03_19_134512_change_discussions_default_comment_count', NULL);
INSERT INTO `migrations` VALUES (64, '2020_04_21_130500_change_permission_groups_add_is_hidden', NULL);
INSERT INTO `migrations` VALUES (65, '2021_03_02_040000_change_access_tokens_add_type', NULL);
INSERT INTO `migrations` VALUES (66, '2021_03_02_040500_change_access_tokens_add_id', NULL);
INSERT INTO `migrations` VALUES (67, '2021_03_02_041000_change_access_tokens_add_title_ip_agent', NULL);
INSERT INTO `migrations` VALUES (68, '2021_04_18_040500_change_migrations_add_id_primary_key', NULL);
INSERT INTO `migrations` VALUES (69, '2021_04_18_145100_change_posts_content_column_to_mediumtext', NULL);
INSERT INTO `migrations` VALUES (70, '2018_07_21_000000_seed_default_groups', NULL);
INSERT INTO `migrations` VALUES (71, '2018_07_21_000100_seed_default_group_permissions', NULL);
INSERT INTO `migrations` VALUES (72, '2021_05_10_000000_rename_permissions', NULL);
INSERT INTO `migrations` VALUES (73, '2022_05_20_000000_add_timestamps_to_groups_table', NULL);
INSERT INTO `migrations` VALUES (74, '2022_05_20_000001_add_created_at_to_group_user_table', NULL);
INSERT INTO `migrations` VALUES (75, '2022_05_20_000002_add_created_at_to_group_permission_table', NULL);
INSERT INTO `migrations` VALUES (76, '2022_07_14_000000_add_type_index_to_posts', NULL);
INSERT INTO `migrations` VALUES (77, '2022_07_14_000001_add_type_created_at_composite_index_to_posts', NULL);
INSERT INTO `migrations` VALUES (78, '2022_08_06_000000_change_access_tokens_last_activity_at_to_nullable', NULL);
INSERT INTO `migrations` VALUES (79, '2015_09_02_000000_add_flags_read_time_to_users_table', 'flarum-flags');
INSERT INTO `migrations` VALUES (80, '2015_09_02_000000_create_flags_table', 'flarum-flags');
INSERT INTO `migrations` VALUES (81, '2017_07_22_000000_add_default_permissions', 'flarum-flags');
INSERT INTO `migrations` VALUES (82, '2018_06_27_101500_change_flags_rename_time_to_created_at', 'flarum-flags');
INSERT INTO `migrations` VALUES (83, '2018_06_27_101600_change_flags_add_foreign_keys', 'flarum-flags');
INSERT INTO `migrations` VALUES (84, '2018_06_27_105100_change_users_rename_flags_read_time_to_read_flags_at', 'flarum-flags');
INSERT INTO `migrations` VALUES (85, '2018_09_15_043621_add_flags_indices', 'flarum-flags');
INSERT INTO `migrations` VALUES (86, '2019_10_22_000000_change_reason_text_col_type', 'flarum-flags');
INSERT INTO `migrations` VALUES (87, '2015_09_21_011527_add_is_approved_to_discussions', 'flarum-approval');
INSERT INTO `migrations` VALUES (88, '2015_09_21_011706_add_is_approved_to_posts', 'flarum-approval');
INSERT INTO `migrations` VALUES (89, '2017_07_22_000000_add_default_permissions', 'flarum-approval');
INSERT INTO `migrations` VALUES (90, '2015_02_24_000000_create_discussions_tags_table', 'flarum-tags');
INSERT INTO `migrations` VALUES (91, '2015_02_24_000000_create_tags_table', 'flarum-tags');
INSERT INTO `migrations` VALUES (92, '2015_02_24_000000_create_users_tags_table', 'flarum-tags');
INSERT INTO `migrations` VALUES (93, '2015_02_24_000000_set_default_settings', 'flarum-tags');
INSERT INTO `migrations` VALUES (94, '2015_10_19_061223_make_slug_unique', 'flarum-tags');
INSERT INTO `migrations` VALUES (95, '2017_07_22_000000_add_default_permissions', 'flarum-tags');
INSERT INTO `migrations` VALUES (96, '2018_06_27_085200_change_tags_columns', 'flarum-tags');
INSERT INTO `migrations` VALUES (97, '2018_06_27_085300_change_tags_add_foreign_keys', 'flarum-tags');
INSERT INTO `migrations` VALUES (98, '2018_06_27_090400_rename_users_tags_to_tag_user', 'flarum-tags');
INSERT INTO `migrations` VALUES (99, '2018_06_27_100100_change_tag_user_rename_read_time_to_marked_as_read_at', 'flarum-tags');
INSERT INTO `migrations` VALUES (100, '2018_06_27_100200_change_tag_user_add_foreign_keys', 'flarum-tags');
INSERT INTO `migrations` VALUES (101, '2018_06_27_103000_rename_discussions_tags_to_discussion_tag', 'flarum-tags');
INSERT INTO `migrations` VALUES (102, '2018_06_27_103100_add_discussion_tag_foreign_keys', 'flarum-tags');
INSERT INTO `migrations` VALUES (103, '2019_04_21_000000_add_icon_to_tags_table', 'flarum-tags');
INSERT INTO `migrations` VALUES (104, '2022_05_20_000003_add_timestamps_to_tags_table', 'flarum-tags');
INSERT INTO `migrations` VALUES (105, '2022_05_20_000004_add_created_at_to_discussion_tag_table', 'flarum-tags');
INSERT INTO `migrations` VALUES (106, '2023_03_01_000000_create_post_mentions_tag_table', 'flarum-tags');
INSERT INTO `migrations` VALUES (107, '2015_05_11_000000_add_suspended_until_to_users_table', 'flarum-suspend');
INSERT INTO `migrations` VALUES (108, '2015_09_14_000000_rename_suspended_until_column', 'flarum-suspend');
INSERT INTO `migrations` VALUES (109, '2017_07_22_000000_add_default_permissions', 'flarum-suspend');
INSERT INTO `migrations` VALUES (110, '2018_06_27_111400_change_users_rename_suspend_until_to_suspended_until', 'flarum-suspend');
INSERT INTO `migrations` VALUES (111, '2021_10_27_000000_add_suspend_reason_and_message', 'flarum-suspend');
INSERT INTO `migrations` VALUES (112, '2015_05_11_000000_add_subscription_to_users_discussions_table', 'flarum-subscriptions');
INSERT INTO `migrations` VALUES (113, '2015_02_24_000000_add_sticky_to_discussions', 'flarum-sticky');
INSERT INTO `migrations` VALUES (114, '2017_07_22_000000_add_default_permissions', 'flarum-sticky');
INSERT INTO `migrations` VALUES (115, '2018_09_15_043621_add_discussions_indices', 'flarum-sticky');
INSERT INTO `migrations` VALUES (116, '2021_01_13_000000_add_discussion_last_posted_at_indices', 'flarum-sticky');
INSERT INTO `migrations` VALUES (117, '2015_05_11_000000_create_mentions_posts_table', 'flarum-mentions');
INSERT INTO `migrations` VALUES (118, '2015_05_11_000000_create_mentions_users_table', 'flarum-mentions');
INSERT INTO `migrations` VALUES (119, '2018_06_27_102000_rename_mentions_posts_to_post_mentions_post', 'flarum-mentions');
INSERT INTO `migrations` VALUES (120, '2018_06_27_102100_rename_mentions_users_to_post_mentions_user', 'flarum-mentions');
INSERT INTO `migrations` VALUES (121, '2018_06_27_102200_change_post_mentions_post_rename_mentions_id_to_mentions_post_id', 'flarum-mentions');
INSERT INTO `migrations` VALUES (122, '2018_06_27_102300_change_post_mentions_post_add_foreign_keys', 'flarum-mentions');
INSERT INTO `migrations` VALUES (123, '2018_06_27_102400_change_post_mentions_user_rename_mentions_id_to_mentions_user_id', 'flarum-mentions');
INSERT INTO `migrations` VALUES (124, '2018_06_27_102500_change_post_mentions_user_add_foreign_keys', 'flarum-mentions');
INSERT INTO `migrations` VALUES (125, '2021_04_19_000000_set_default_settings', 'flarum-mentions');
INSERT INTO `migrations` VALUES (126, '2022_05_20_000005_add_created_at_to_post_mentions_post_table', 'flarum-mentions');
INSERT INTO `migrations` VALUES (127, '2022_05_20_000006_add_created_at_to_post_mentions_user_table', 'flarum-mentions');
INSERT INTO `migrations` VALUES (128, '2022_10_21_000000_create_post_mentions_group_table', 'flarum-mentions');
INSERT INTO `migrations` VALUES (129, '2021_03_25_000000_default_settings', 'flarum-markdown');
INSERT INTO `migrations` VALUES (130, '2015_02_24_000000_add_locked_to_discussions', 'flarum-lock');
INSERT INTO `migrations` VALUES (131, '2017_07_22_000000_add_default_permissions', 'flarum-lock');
INSERT INTO `migrations` VALUES (132, '2018_09_15_043621_add_discussions_indices', 'flarum-lock');
INSERT INTO `migrations` VALUES (133, '2015_05_11_000000_create_posts_likes_table', 'flarum-likes');
INSERT INTO `migrations` VALUES (134, '2015_09_04_000000_add_default_like_permissions', 'flarum-likes');
INSERT INTO `migrations` VALUES (135, '2018_06_27_100600_rename_posts_likes_to_post_likes', 'flarum-likes');
INSERT INTO `migrations` VALUES (136, '2018_06_27_100700_change_post_likes_add_foreign_keys', 'flarum-likes');
INSERT INTO `migrations` VALUES (137, '2021_05_10_094200_add_created_at_to_post_likes_table', 'flarum-likes');
INSERT INTO `migrations` VALUES (138, '2018_09_29_060444_replace_emoji_shorcuts_with_unicode', 'flarum-emoji');
INSERT INTO `migrations` VALUES (139, '2020_12_24_000000_default_settings', 'ianm-synopsis');
INSERT INTO `migrations` VALUES (140, '2021_12_08_000000_add_tags_synopsis_cols', 'ianm-synopsis');
INSERT INTO `migrations` VALUES (141, '2016_02_13_000000_create_links_table', 'fof-links');
INSERT INTO `migrations` VALUES (142, '2016_04_19_065618_change_links_columns', 'fof-links');
INSERT INTO `migrations` VALUES (143, '2020_03_16_000000_add_child_links', 'fof-links');
INSERT INTO `migrations` VALUES (144, '2020_09_10_000000_add_icon_to_links_table', 'fof-links');
INSERT INTO `migrations` VALUES (145, '2021_01_17_000000_add_registered_users_only_to_links_table', 'fof-links');
INSERT INTO `migrations` VALUES (146, '2021_01_17_000001_add_visibility_to_links_table', 'fof-links');
INSERT INTO `migrations` VALUES (147, '2021_01_17_000001_drop_registered_users_only_column_and_migrate_options', 'fof-links');
INSERT INTO `migrations` VALUES (148, '2016_04_11_182821__create_pages_table', 'fof-pages');
INSERT INTO `migrations` VALUES (149, '2016_08_28_180020_add_is_html', 'fof-pages');
INSERT INTO `migrations` VALUES (150, '2020_02_26_010000_add_is_restricted', 'fof-pages');
INSERT INTO `migrations` VALUES (151, '2020_09_09_173600_increase_char_limit', 'fof-pages');

-- ----------------------------
-- Table structure for notifications
-- ----------------------------
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED NOT NULL,
  `from_user_id` int UNSIGNED NULL DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int UNSIGNED NULL DEFAULT NULL,
  `data` blob NULL,
  `created_at` datetime NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `read_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `notifications_from_user_id_foreign`(`from_user_id` ASC) USING BTREE,
  INDEX `notifications_user_id_index`(`user_id` ASC) USING BTREE,
  CONSTRAINT `notifications_from_user_id_foreign` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT,
  CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notifications
-- ----------------------------
INSERT INTO `notifications` VALUES (1, 2, 1, 'newPost', 2, 0x7B22706F73744E756D626572223A327D, '2023-09-05 07:31:03', 1, '2023-09-05 07:39:02');

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  `edit_time` datetime NULL DEFAULT NULL,
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT ' ',
  `is_hidden` tinyint(1) NOT NULL DEFAULT 0,
  `is_html` tinyint(1) NOT NULL DEFAULT 0,
  `is_restricted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES (1, '关于我们', 'about', '2023-09-04 05:17:51', '2023-09-04 09:28:10', '<t>\n<p>&lt;img src=\"/assets/51showaibanner.jpg\" style={\"max-height:100px\"} /&gt;<br/>\n&lt;br&gt;<br/>\n&lt;br&gt;<br/>\n&lt;br&gt;<br/>\n欢迎来到51ShowAi，这是一个以用户需求为核心，专门为您提供AI提示词的平台。我们深知每个人都有独特的需求和创新的想法，因此，我们的平台不仅提供了提示词搜索、一键获取等智能服务，还支持多语言，并且鼓励社区协作。在这里，您可以轻松获取适合不同场景和需求的高质量提示词，&lt;strong&gt;让您的工作效率和创造力得以无上限的提升。&lt;/strong&gt;<br/>\n&lt;br&gt;<br/>\n&lt;br&gt;</p>\n\n<p>51ShowAi致力于打造一个集思广益、互助共赢的论坛社区。我们诚挚邀请您加入我们，一起分享知识，一起创新思考，一起推动AI提示词的发展。无论您是AI爱好者，还是行业专家，或是对AI充满好奇的新手，我们都欢迎您的加入。在这个论坛社区，您可以发表自己的见解，分享自己的经验，也可以向他人学习，获得新的启示。<br/>\n&lt;br&gt;<br/>\n&lt;br&gt;<br/>\n&lt;br&gt;</p>\n\n<p>期待您的加入，期待我们共同建设的51ShowAi论坛社区能成为一个充满活力、知识丰富、互助友善的社区。让我们一起，通过AI，开启无限可能。<br/>\n&lt;br&gt;<br/>\n&lt;br&gt;<br/>\n&lt;br&gt;<br/>\n如果您在使用过程中遇到任何问题，或有任何建议，&lt;strong&gt;欢迎通过QQ：1752338621与我们联系。&lt;/strong&gt; 我们的团队将会尽快回复您，为您提供专业的帮助。让我们一起，秀出我的提示词，让效率与创造力无上限。</p>\n\n</t>', 0, 1, 0);

-- ----------------------------
-- Table structure for password_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_tokens`;
CREATE TABLE `password_tokens`  (
  `token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`token`) USING BTREE,
  INDEX `password_tokens_user_id_foreign`(`user_id` ASC) USING BTREE,
  CONSTRAINT `password_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for post_likes
-- ----------------------------
DROP TABLE IF EXISTS `post_likes`;
CREATE TABLE `post_likes`  (
  `post_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`post_id`, `user_id`) USING BTREE,
  INDEX `post_likes_user_id_foreign`(`user_id` ASC) USING BTREE,
  CONSTRAINT `post_likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `post_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post_likes
-- ----------------------------

-- ----------------------------
-- Table structure for post_mentions_group
-- ----------------------------
DROP TABLE IF EXISTS `post_mentions_group`;
CREATE TABLE `post_mentions_group`  (
  `post_id` int UNSIGNED NOT NULL,
  `mentions_group_id` int UNSIGNED NOT NULL,
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`post_id`, `mentions_group_id`) USING BTREE,
  INDEX `post_mentions_group_mentions_group_id_foreign`(`mentions_group_id` ASC) USING BTREE,
  CONSTRAINT `post_mentions_group_mentions_group_id_foreign` FOREIGN KEY (`mentions_group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `post_mentions_group_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post_mentions_group
-- ----------------------------

-- ----------------------------
-- Table structure for post_mentions_post
-- ----------------------------
DROP TABLE IF EXISTS `post_mentions_post`;
CREATE TABLE `post_mentions_post`  (
  `post_id` int UNSIGNED NOT NULL,
  `mentions_post_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`post_id`, `mentions_post_id`) USING BTREE,
  INDEX `post_mentions_post_mentions_post_id_foreign`(`mentions_post_id` ASC) USING BTREE,
  CONSTRAINT `post_mentions_post_mentions_post_id_foreign` FOREIGN KEY (`mentions_post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `post_mentions_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post_mentions_post
-- ----------------------------

-- ----------------------------
-- Table structure for post_mentions_tag
-- ----------------------------
DROP TABLE IF EXISTS `post_mentions_tag`;
CREATE TABLE `post_mentions_tag`  (
  `post_id` int UNSIGNED NOT NULL,
  `mentions_tag_id` int UNSIGNED NOT NULL,
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`post_id`, `mentions_tag_id`) USING BTREE,
  INDEX `post_mentions_tag_mentions_tag_id_foreign`(`mentions_tag_id` ASC) USING BTREE,
  CONSTRAINT `post_mentions_tag_mentions_tag_id_foreign` FOREIGN KEY (`mentions_tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `post_mentions_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post_mentions_tag
-- ----------------------------

-- ----------------------------
-- Table structure for post_mentions_user
-- ----------------------------
DROP TABLE IF EXISTS `post_mentions_user`;
CREATE TABLE `post_mentions_user`  (
  `post_id` int UNSIGNED NOT NULL,
  `mentions_user_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`post_id`, `mentions_user_id`) USING BTREE,
  INDEX `post_mentions_user_mentions_user_id_foreign`(`mentions_user_id` ASC) USING BTREE,
  CONSTRAINT `post_mentions_user_mentions_user_id_foreign` FOREIGN KEY (`mentions_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `post_mentions_user_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post_mentions_user
-- ----------------------------

-- ----------------------------
-- Table structure for post_user
-- ----------------------------
DROP TABLE IF EXISTS `post_user`;
CREATE TABLE `post_user`  (
  `post_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`post_id`, `user_id`) USING BTREE,
  INDEX `post_user_user_id_foreign`(`user_id` ASC) USING BTREE,
  CONSTRAINT `post_user_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `post_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post_user
-- ----------------------------

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `discussion_id` int UNSIGNED NOT NULL,
  `number` int UNSIGNED NULL DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `user_id` int UNSIGNED NULL DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT ' ',
  `prompts` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT ' ',
  `edited_at` datetime NULL DEFAULT NULL,
  `edited_user_id` int UNSIGNED NULL DEFAULT NULL,
  `hidden_at` datetime NULL DEFAULT NULL,
  `hidden_user_id` int UNSIGNED NULL DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT 0,
  `is_approved` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `posts_discussion_id_number_unique`(`discussion_id` ASC, `number` ASC) USING BTREE,
  INDEX `posts_edited_user_id_foreign`(`edited_user_id` ASC) USING BTREE,
  INDEX `posts_hidden_user_id_foreign`(`hidden_user_id` ASC) USING BTREE,
  INDEX `posts_discussion_id_number_index`(`discussion_id` ASC, `number` ASC) USING BTREE,
  INDEX `posts_discussion_id_created_at_index`(`discussion_id` ASC, `created_at` ASC) USING BTREE,
  INDEX `posts_user_id_created_at_index`(`user_id` ASC, `created_at` ASC) USING BTREE,
  INDEX `posts_type_index`(`type` ASC) USING BTREE,
  INDEX `posts_type_created_at_index`(`type` ASC, `created_at` ASC) USING BTREE,
  FULLTEXT INDEX `content`(`content`) WITH PARSER `ngram`,
  CONSTRAINT `posts_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `posts_edited_user_id_foreign` FOREIGN KEY (`edited_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT,
  CONSTRAINT `posts_hidden_user_id_foreign` FOREIGN KEY (`hidden_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT,
  CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (1, 1, 1, '2023-08-31 09:48:48', 1, 'comment', '<r><p>我希望你能充当英语翻译、拼写纠正者和改进者。我将用任何语言与你交谈，你将检测语言，翻译它，并在我的文本的更正和改进版本中用英语回答。我希望你用更漂亮、更优雅、更高级的英语单词和句子来取代我的简化 A0 级单词和句子。保持意思不变，但让它们更有文学性。我希望你只回答更正，改进，而不是其他，不要写解释。我的第一句话是 [要翻译的语言]</p>\n\n\n\n<H4><s>#### </s>提示词</H4>\n\n<QUOTE><i>&gt; </i><p>I want you to act as an English translator, spelling corrector and improver. I will speak to you in any language and you will detect the language, translate it and answer in the corrected and improved version of my text, in English. I want you to replace my simplified A0-level words and sentences with more beautiful and elegant, upper level English words and sentences. Keep the meaning same, but make them more literary. I want you to only reply the correction, the improvements and nothing else, do not write explanations. My first sentence is \"要翻译的语言\"</p></QUOTE>\n\n\n<H4><s>#### </s>例子</H4>\n\n<QUESTION><s>%%%</s><i>\n</i><p>I want you to act as an English translator, spelling corrector and improver. I will speak to you in any language and you will detect the language, translate it and answer in the corrected and improved version of my text, in English. I want you to replace my simplified A0-level words and sentences with more beautiful and elegant, upper level English words and sentences. Keep the meaning same, but make them more literary. I want you to only reply the correction, the improvements and nothing else, do not write explanations. My first sentence is \"蝴蝶穿花，惊起一帘暗香浮动，烟雨半场，打湿几缕记忆微凉。矗立良久，任思绪飘向远方，让温馨在心中迷漫……\"<i>\n</i></p><e>%%%</e></QUESTION>\n\n\n\n<ANSWER><s>:::</s><i>\n</i><p>\"The butterfly pierces the flower, stirring a curtain of hidden fragrance into motion, a half-field of misty rain, dampening a few strands of memory with a slight chill. Standing erect for a long time, allowing thoughts to drift towards the distance, let warmth pervade the heart...\"<i>\n</i></p><e>:::</e></ANSWER>\n</r>', 'I want you to act as an English translator, spelling corrector and improver. I will speak to you in any language and you will detect the language, translate it and answer in the corrected and improved version of my text, in English. I want you to replace my simplified A0-level words and sentences with more beautiful and elegant, upper level English words and sentences. Keep the meaning same, but make them more literary. I want you to only reply the correction, the improvements and nothing else, do not write explanations. My first sentence is \"要翻译的语言\"', '2023-09-08 09:29:55', 1, NULL, NULL, '192.168.244.1', 0, 1);
INSERT INTO `posts` VALUES (2, 2, 1, '2023-09-01 06:25:26', 1, 'comment', '<r>\n\n\n\n\n<p>作为一名中文写作改进助理，你的任务是改进所提供文本的拼写、语法、清晰、简洁和整体可读性，同时分解长句，减少重复，并提供改进建议。请只提供文本的更正版本，避免包括解释。请从编辑以下文本开始：[文章内容］</p>\n\n\n<H4><s>#### </s>提示词如下：</H4>\n\n<QUOTE><i>&gt; </i><p>As a writing improvement assistant, your task is to improve the spelling, grammar, clarity, concision, and overall readability of the text provided, while breaking down long sentences, reducing repetition, and providing suggestions for improvement. Please provide only the corrected Chinese version of the text and avoid including explanations. Please begin by editing the following text: [文章内容]</p></QUOTE>\n\n\n<H4><s>#### </s>例子：</H4>\n\n\n<QUESTION><s>%%%</s><i>\n</i><p>As a writing improvement assistant, your task is to improve the spelling, grammar, clarity, concision, and overall readability of the text provided, while breaking down long sentences, reducing repetition, and providing suggestions for improvement. Please provide only the corrected Chinese version of the text and avoid including explanations. Please begin by editing the following text:</p>\n\n<p>九月是一首诗，饱含深情和希望；九月是一支歌，充满成功和喜悦。　　</p>\n\n<p>在这花香满园、硕果累累的季节，我们又迎来了这个盛大的节日――教师节。　　</p>\n\n<p>感谢您，老师!您用最动听、最生动的语言向我们传授人生的真谛，带领我们遨游知识的海洋。　　</p>\n\n<p>感谢您，老师!是您启迪了我们的心灵，矫正好我们前进的方向。　　</p>\n\n<p>感谢您，老师!是您使我们拥有美好的思想，坚贞的信念，勇敢地踏上前程。　　</p>\n\n<p>幼苗不经过辛勤汗水的精心培育，怎能开放万紫千红鲜花满园；雏鹰不在狂风暴雨中磨硬翅膀，又怎能一冲九万里飞上遥远的云霄。　　</p>\n\n<p>我们怎能忘记：是您告诉我们应当怎样做人，擦亮眼睛，辨别黑白忠奸；是您带领我们闯进书的宝库，漫步在宏伟瑰丽的知识宫殿；是您带领我们走向江河湖海，从小在大风大浪中磨练<i>\n</i></p><e>%%%</e></QUESTION>\n\n\n\n\n\n\n\n\n\n<ANSWER><s>:::</s><i>\n</i><p>九月如诗，充满深情与希望；九月如歌，溢满成功与喜悦。在这个花香四溢、硕果满园的季节，我们欢庆这个盛大的节日——教师节。</p>\n\n<p>感谢您，老师！您用最动听、最生动的语言向我们传达人生的真谛，引领我们在知识的海洋中畅游。感谢您，老师！是您启发了我们的心灵，纠正了我们前进的方向。</p>\n\n<p>感谢您，老师！是您让我们拥有美好的思想，坚定的信念，勇敢地迈向未来。没有辛勤汗水的精心培育，幼苗怎能绽放出万紫千红的花朵？雏鹰不在狂风暴雨中磨砺翅膀，又怎能飞翔在遥远的云端？</p>\n\n<p>我们怎能忘记：是您教导我们如何做人，如何擦亮眼睛，辨别是非；是您引领我们进入书的宝库，漫步在知识的宫殿；是您带领我们走向江河湖海，从小在风浪中磨练。<i>\n</i></p><e>:::</e></ANSWER>\n\n</r>', 'As a writing improvement assistant, your task is to improve the spelling, grammar, clarity, concision, and overall readability of the text provided, while breaking down long sentences, reducing repetition, and providing suggestions for improvement. Please provide only the corrected Chinese version of the text and avoid including explanations. Please begin by editing the following text: [文章内容]', '2023-09-07 09:56:11', 1, NULL, NULL, '192.168.244.1', 0, 1);
INSERT INTO `posts` VALUES (6, 3, 1, '2023-09-08 09:28:22', 1, 'comment', '<r><p>请使用 Emoji 风格编辑以下段落，该风格以引人入胜的标题、每个段落中包含表情符号和在末尾添加相关标签为特点。请确保保持原文的意思。</p>\n\n\n<H4><s>#### </s>提示词</H4>\n\n<QUOTE><i>&gt; </i><p>Please edit the following passage using the Emoji style, which is characterized by captivating headlines, the inclusion of emoticons in each paragraph, and the addition of relevant tags at the end. Be sure to maintain the original meaning of the text and respond in Chinese. Please begin by editing the following text: 小红书内容</p></QUOTE>\n\n\n<H4><s>#### </s>示例</H4>\n\n<QUESTION><s>%%%</s><i>\n</i><p>Please edit the following passage using the Emoji style, which is characterized by captivating headlines, the inclusion of emoticons in each paragraph, and the addition of relevant tags at the end. Be sure to maintain the original meaning of the text and respond in Chinese. Please begin by editing the following text: **51showai.com** 是一个综合性的AI提示词平台，它提供了一系列高效实用的功能，以满足不同用户的需求。这个平台拥有强大的提示词搜索引擎，用户可以通过简单的操作，快速找到适合各种场景和需求的高质量提示词。</p>\n\n\n<p>更重要的是，**51showai.com** 提供了一键获取功能，用户无需复杂的步骤，即可轻松获取所需的提示词。这大大提高了用户的工作效率，使他们能够在短时间内完成更多的工作。</p>\n\n\n<p>此外，**51showai.com** 还支持多语言，这意味着无论用户来自哪个国家，都可以在这个平台上找到适合自己的提示词。这使得这个平台具有很高的普适性，可以服务于全球的用户。</p>\n\n\n<p>最后，**51showai.com** 还有一个活跃的社区，用户可以在这里与其他用户交流，分享自己的经验，互相学习。这种社区协作的模式，不仅可以提高用户的学习效率，还能够帮助他们找到更多的创新灵感。</p>\n\n\n<p>总的来说，**51showai.com** 是一个功能强大，使用方便，适应性强的AI提示词平台。无论你是需要提高工作效率，还是寻找创新灵感，都可以在这个平台上找到帮助。</p><i>\n\n</i><e>%%%</e></QUESTION>\n\n<ANSWER><s>:::</s><i>\n</i>\n<p><STRONG><s>**</s>&#128640;51showai.com&#128171;<e>**</e></STRONG> 是一个综合性的AI提示词平台&#127760;，它提供了一系列高效实用的功能&#128161;，以满足不同用户的需求&#128101;。这个平台拥有强大的提示词搜索引擎&#128269;，用户可以通过简单的操作&#128070;，快速找到适合各种场景和需求的高质量提示词✨。</p>\n\n\n<p>更重要的是，<STRONG><s>**</s>&#128640;51showai.com&#128171;<e>**</e></STRONG> 提供了一键获取功能&#128273;，用户无需复杂的步骤，即可轻松获取所需的提示词&#128218;。这大大提高了用户的工作效率⏱️，使他们能够在短时间内完成更多的工作&#128200;。</p>\n\n\n<p>此外，<STRONG><s>**</s>&#128640;51showai.com&#128171;<e>**</e></STRONG> 还支持多语言&#127757;，这意味着无论用户来自哪个国家，都可以在这个平台上找到适合自己的提示词&#127760;。这使得这个平台具有很高的普适性，可以服务于全球的用户&#127758;。</p>\n\n\n<p>最后，<STRONG><s>**</s>&#128640;51showai.com&#128171;<e>**</e></STRONG> 还有一个活跃的社区&#127960;️，用户可以在这里与其他用户交流&#128483;️，分享自己的经验&#128161;，互相学习&#127891;。这种社区协作的模式，不仅可以提高用户的学习效率&#128640;，还能够帮助他们找到更多的创新灵感&#128161;。</p>\n\n\n<p>总的来说，<STRONG><s>**</s>&#128640;51showai.com&#128171;<e>**</e></STRONG> 是一个功能强大，使用方便，适应性强的AI提示词平台&#127760;。无论你是需要提高工作效率⏱️，还是寻找创新灵感&#128161;，都可以在这个平台上找到帮助&#129309;。</p>\n\n\n<p>#AI提示词 #高效 #实用 #全球服务 #创新灵感 #51showai.com</p></ANSWER>\n</r>', 'Please edit the following passage using the Emoji style, which is characterized by captivating headlines, the inclusion of emoticons in each paragraph, and the addition of relevant tags at the end. Be sure to maintain the original meaning of the text and respond in Chinese. Please begin by editing the following text: 小红书内容', '2023-09-12 09:59:35', 1, NULL, NULL, '192.168.244.1', 0, 1);
INSERT INTO `posts` VALUES (7, 4, 1, '2023-09-08 09:33:17', 1, 'comment', '<r><p>我希望你能充当专业的拼写和语法校对者，并改进我的文章。我想让你用更美丽、优雅、高级的英语单词和句子替换我的简化 A0 级别的单词和句子，保持意思不变，但使它们更具文学性，在《自然》杂志风格中提高我的表达水平。</p>\n\n\n<H4><s>#### </s>提示词</H4>\n\n<QUOTE><i>&gt; </i> <p>I want you to act as an professional spelling and grammer corrector and improver. I want you to replace my simplified A0-level words and sentences with more beautiful and elegant, upper level English words and sentences. Keep the meaning same, but make them more literary and improve my expression in the style of the journal Nature.</p></QUOTE>\n\n\n<H4><s>#### </s>示例</H4>\n\n<QUESTION><s>%%%</s><i>\n</i><p>I want you to act as an professional spelling and grammer corrector and improver. I want you to replace my simplified A0-level words and sentences with more beautiful and elegant, upper level English words and sentences. Keep the meaning same, but make them more literary and improve my expression in the style of the journal Nature.儿童发育迟缓（CGF）指五岁以下儿童表现为发育不良、消瘦、体重偏低，其特征是身高或体重不够。儿童发育迟缓与全球高发病率和高死亡率有关。营养不良的儿童容易发生新陈代谢发育障碍，更有可能在认知、身体和心理方面出现问题，导致智力不足、学习成绩下降和成年后经济能力不佳和容易患心血管疾病等问题。</p>\n\n\n<p>在同一个国家中，由于地域之间的差异，各个国家对CGF的估计在各个省份或不同州之间有很大的差异，促使人们进一步呼吁进行能与CGF的分布相匹配的评估然后制定对应的公共卫生方案。<i>\n</i></p><e>%%%</e></QUESTION>\n\n\n<ANSWER><s>:::</s><i>\n</i><p>Child Growth Faltering (CGF) refers to a condition observed in children under the age of five, characterized by developmental delays, emaciation, and suboptimal body weight, with the defining feature being insufficient height or weight. CGF is associated with a high global prevalence and mortality rate. Malnourished children are susceptible to metabolic developmental disorders, with a higher likelihood of encountering cognitive, physical, and psychological issues, resulting in intellectual inadequacy, diminished academic performance, poor economic capabilities in adulthood, and a predisposition to cardiovascular diseases.</p>\n\n\n<p>Within the same nation, due to regional disparities, estimates of CGF vary significantly across different provinces or states, prompting further calls for evaluations that align with the distribution of CGF, followed by the formulation of corresponding public health strategies.<i>\n</i></p><e>:::</e></ANSWER></r>', 'I want you to act as an professional spelling and grammer corrector and improver. I want you to replace my simplified A0-level words and sentences with more beautiful and elegant, upper level English words and sentences. Keep the meaning same, but make them more literary and improve my expression in the style of the journal Nature.', '2023-09-08 09:33:30', 1, NULL, NULL, '192.168.244.1', 0, 1);
INSERT INTO `posts` VALUES (8, 5, 1, '2023-09-08 09:38:14', 1, 'comment', '<r><p>请以人的口吻，采用缩略语、成语、过渡短语、感叹词、悬垂修饰语和口语化语言，避免重复短语和不自然的句子结构，撰写一篇关于 [主题] 的文章。</p>\n\n\n<H4><s>#### </s>提示词</H4>\n\n<QUOTE><i>&gt; </i><p>write an article about [主题] in a human-like style, simple Chinese, using contractions, idioms, transitional phrases, interjections, dangling modifiers, and colloquialisms and avoiding repetitive phrases and unnatural sentence structures.</p></QUOTE>\n\n\n<H4><s>#### </s>示例</H4>\n\n<QUESTION><s>%%%</s><i>\n</i><p>write an article about [西红柿鸡蛋面的制作过程] in a human-like style, simple Chinese, using contractions, idioms, transitional phrases, interjections, dangling modifiers, and colloquialisms and avoiding repetitive phrases and unnatural sentence structures.<i>\n</i></p><e>%%%</e></QUESTION>\n\n<ANSWER><s>:::</s><i>\n</i><p>西红柿鸡蛋面的制作过程</p>\n\n\n<p>嗨，亲爱的朋友们！今天我们要学习一道家常美味，那就是西红柿鸡蛋面。这道菜简单实用，营养丰富，口感鲜美，无论是早餐还是晚餐都非常适合。好了，言归正传，我们开始吧！</p>\n\n\n<p>首先，我们需要准备以下食材：新鲜的西红柿两个，鸡蛋两个，和你喜欢的面条。西红柿要选用熟透的，这样炒出来的汤汁才会更加鲜美。</p>\n\n\n<p>然后，我们开始动手。首先将西红柿洗净，切块，鸡蛋打入碗中搅拌均匀。面条煮熟后，捞出备用。</p>\n\n\n<p>接下来，热锅凉油，油热后加入打好的鸡蛋，用铲子快速搅拌，使鸡蛋变得松软。等到鸡蛋炒至金黄色，就可以盛出备用了。</p>\n\n<p>然后，我们再次加油，放入切好的西红柿，翻煎至西红柿软烂，汤汁丰富。这个时候，我们可以加入适量的盐，提升菜品的口感。</p>\n\n\n<p>最后，将炒好的鸡蛋倒入锅中，和西红柿一起翻煎均匀。然后，将煮好的面条放入锅中，和西红柿鸡蛋一起翻煎，让面条充分吸收汤汁。</p>\n\n\n<p>好啦，一盘色香味俱全的西红柿鸡蛋面就这样完成了！这道菜真的是简单又美味，你们也可以在家试试看哦！</p>\n\n\n<p>总的来说，做菜最重要的是用心，只要我们用心去做，就一定能做出美味的菜肴。希望大家在享受美食的同时，也能享受到做菜的乐趣。</p>\n\n\n<p>最后，祝大家吃得开心，生活愉快！下次再见！<i>\n</i></p><e>:::</e></ANSWER></r>', 'write an article about [主题] in a human-like style, simple Chinese, using contractions, idioms, transitional phrases, interjections, dangling modifiers, and colloquialisms and avoiding repetitive phrases and unnatural sentence structures.', NULL, NULL, NULL, NULL, '192.168.244.1', 0, 1);
INSERT INTO `posts` VALUES (10, 6, 1, '2023-09-08 09:41:08', 1, 'comment', '<r><p>将以下文字概括为 100 个字，使其易于阅读和理解。避免使用复杂的句子结构或技术术语。</p>\n\n\n<H4><s>#### </s>提示词</H4>\n\n<QUOTE><i>&gt; </i><p>Summarize the following text into 100 words, making it easy to read and comprehend. The summary should be concise, clear, and capture the main points of the text. Avoid using complex sentence structures or technical jargon. Respond in Chinese. Please begin by editing the following text:</p></QUOTE>\n\n\n<H4><s>#### </s>示例</H4>\n\n<QUESTION><s>%%%</s><i>\n</i><p>Summarize the following text into 100 words, making it easy to read and comprehend. The summary should be concise, clear, and capture the main points of the text. Avoid using complex sentence structures or technical jargon. Respond in Chinese. Please begin by editing the following text：8 月 29 日消息，OpenAI 今日发布了一款新的 ChatGPT 产品，专门针对企业用户的需求，提供更高的安全和隐私保障。在其博客文章中，OpenAI 表示，ChatGPT 企业版不仅可以无限制地快速访问强大的 GPT-4 模型，还可以进行更深入的数据分析，帮助企业快速理解信息，并且可以向 ChatGPT 提出更复杂的问题。许多企业在使用 ChatGPT 时担心自己的数据会被用于训练 GPT-4 模型，或者使用该工具时可能会不小心泄露敏感的客户信息。为了解决这些问题，OpenAI 表示，ChatGPT 企业版的用户可以完全控制和拥有自己的数据，而且这些数据不会被用于训练 GPT-4 模型。此外，OpenAI 还计划推出更多的功能，比如让用户自定义 ChatGPT 对企业数据的知识，以及提供更先进的分析工具。而且，该公司还将提供适合小团队的 ChatGPT 企业版定价方案。OpenAI 称，这是 ChatGPT 的第一个面向企业的产品，独立于 ChatGPT 和 ChatGPT Plus。已经在使用 ChatGPT 的企业可以选择继续使用当前的产品，也可以切换到 ChatGPT 企业版来享受新的功能。OpenAI 表示，将在未来几周内尽可能多地接纳企业用户。目前，许多组织已经利用 OpenAI 和 GPT-4 模型开发了各种生成式人工智能工具，但是很多都是通过 API 或云服务来连接 GPT-4 模型。IT之家注意到，一些企业为了保护自己的数据不被 GPT-4 模型利用，开始创建自己的大语言模型系统，但是这对于小型公司来说可能比较困难。因此，也有一些供应商试图在访问类似 GPT-4 的大语言模型时提供数据安全和隐私保护，尤其是在一些受到更多监管的行业中想要使用生成式人工智能工具而又要保护敏感数据的情况下。随着 OpenAI 推出了面向企业的 ChatGPT 产品，这些供应商可能会面临更多的竞争。最近，OpenAI 还宣布开放了 GPT-3.5 模型的自定义微调功能，允许用户根据特定任务来定制 ChatGPT，这似乎是为了为更大规模的企业服务做准备。<i>\n</i></p><e>%%%</e></QUESTION>\n\n<ANSWER><s>:::</s><i>\n</i><p>8月29日，OpenAI发布了新的ChatGPT企业版产品，针对企业用户需求，提供更高的安全和隐私保护。该产品不仅可以无限制地快速访问GPT-4模型，还可以进行深入的数据分析，帮助企业快速理解信息。为了安全，企业版用户的数据完全可控，且不会用于训练GPT-4模型。OpenAI还计划推出更多功能，如用户自定义ChatGPT对企业数据的知识，提供先进的分析工具，并提供适合小团队的定价方案。此外，OpenAI还宣布开放了GPT-3.5模型的自定义微调功能，为大规模的企业服务做准备。<i>\n</i></p><e>:::</e></ANSWER></r>', 'Summarize the following text into 100 words, making it easy to read and comprehend. The summary should be concise, clear, and capture the main points of the text. Avoid using complex sentence structures or technical jargon. Respond in Chinese. Please begin by editing the following text:', NULL, NULL, NULL, NULL, '192.168.244.1', 0, 1);
INSERT INTO `posts` VALUES (11, 7, 1, '2023-09-08 09:46:01', 1, 'comment', '<r><p>继续用中文写一篇关于 [文章主题] 的文章，以下列句子开头：[文章开头］</p>\n\n\n<H4><s>#### </s>提示词</H4>\n\n<QUOTE><i>&gt; </i><p>Continue writing an article in Chinese about [文章主题] that begins with the following sentence: [文章开头]</p></QUOTE>\n\n\n<H4><s>#### </s>示例</H4>\n\n<QUESTION><s>%%%</s><i>\n</i><p>Continue writing an article in Chinese about [感恩教师节作文] that begins with the following sentence: [　　金秋的早上，鸟儿歌唱，我象往常一样背着书包，坐在爸爸地车后飞驰一般到达学校门口，进校门后发现同学们有的手捧鲜花，有的手拿精美包装的礼盒，有的拿着糖果，粗心的我突然想起今天是伟大的教师节，可我却忘了准备一份礼物，有点后悔……]</p><i>\n\n</i><e>%%%</e></QUESTION>\n\n\n<ANSWER><s>:::</s><i>\n</i><p>　　我站在校门口，看着同学们手中的鲜花和礼物，心中五味杂陈。我看着他们脸上洋溢的笑容，想着他们将如何表达对老师的感激之情，我却只能空手而立，无法向老师表达我对他们的感激。</p>\n\n\n<p>　　我走进教室，看见老师们正在忙碌地准备着今天的活动。他们的脸上虽然带着疲惫，但眼中却充满了热情和期待。我想起了他们无私的付出，他们的耐心教导，他们的关心和鼓励，我心中充满了感激。</p>\n\n\n<p>　　我没有鲜花，没有礼物，我只有一颗感恩的心。我走到老师面前，深深地鞠了一躬，说出了我心中的感谢：“老师，谢谢您。谢谢您的教诲，谢谢您的关心，谢谢您的鼓励。我会努力学习，不辜负您的期望。”</p>\n\n\n<p>　　看着老师感动的眼神，我知道，我已经给了他们最好的礼物。那就是我对他们的感激，我的努力，以及我对未来的执着和期望。我知道，只要我努力，我就能回报他们的付出。</p>\n\n\n<p>　　在这个感恩的节日里，我想对所有的老师说一声，谢谢您。您的付出和努力，让我们能够在知识的海洋中畅游，让我们能够看到更宽广的世界。我们会记住您的教诲，会珍惜您的付出，会用我们的努力，回报您的期望。<i>\n</i></p><e>:::</e></ANSWER></r>', 'Continue writing an article in Chinese about [文章主题] that begins with the following sentence: [文章开头]', NULL, NULL, NULL, NULL, '192.168.244.1', 0, 1);
INSERT INTO `posts` VALUES (12, 8, 1, '2023-09-08 09:49:08', 1, 'comment', '<r><p>我想让你充当书面作品的标题生成器。我将向你提供一篇文章的主题和关键词，你将生成五个吸引人的标题。请保持标题简洁，不超过 20 个字，并确保保持其含义。答复时要利用题目的语言类型。我的第一个题目是 [文章内容]</p>\n\n\n<H4><s>#### </s>提示词</H4>\n\n<QUOTE><i>&gt; </i><p>I want you to act as a title generator for written pieces. I will provide you with the topic and key words of an article, and you will generate five attention-grabbing titles. Please keep the title concise and under 20 words, and ensure that the meaning is maintained. Respond in Chinese. My first topic is [文章内容]</p></QUOTE>\n\n\n<H4><s>#### </s>示例</H4>\n\n<QUESTION><s>%%%</s><i>\n</i><p>I want you to act as a title generator for written pieces. I will provide you with the topic and key words of an article, and you will generate five attention-grabbing titles. Please keep the title concise and under 20 words, and ensure that the meaning is maintained. Respond in Chinese. My first topic is 长而浓密的黑发，齐眉的留海，笑起来眼睛会眯成两个月牙儿。永远温和的语调，即使发起火来也只不过是板起脸训我们几句，没几分钟却又笑了起来，就像是个长不大的孩子。真不明白，其他人怎么会叫你“小李飞刀”的，这明明就是个和蔼可亲的语文老师嘛。　　你教我们初中三年的语文，虽然才接触了六、七个月，但我受到教育可是小学六年都比不上的。　　语文课上，你总别出心裁地教我们课文，有时候是编故事，有时候是演小品，还有时候是分角色朗读课文……你教的语文，在不知不觉中已深入我们的内心。　　记得有一次，我们分小组上台演话剧，你就坐在我们中间，一起看着台上夸张的`表演。你会毫不掩饰地大笑，也会为同学们精彩地演出而鼓掌，那时的你，就像是我们的朋友一般。那一次，你用掉了整整两节语文课，我知道，两节语文课够上一篇课文了，也足够让我们做一份习题了。但是你却将它用在一篇自读课文上，为的，就是让我们喜欢上语文。　　谢谢你，谢谢你的用心。　　你叫我们每天都做“随心”，将自己的所见所感都写在上面，我们写得很认真，你改得也很认真，一字一句，我相信你都仔细地看过，看过以后，你还会写上你的感受。每次你批好“积累”本又发下来的时候，每个人的本子上或多或少总会留下一抹红色，这是你为我们而写的。每看到你留下的“足迹”，我的心中总是又高兴，又酸涩。喜是是我的辛勤成果得到了你的肯定上;酸的是，46本本子，你每一本都这样批下来，那得多辛苦啊!当初，你就和我们说过，“随心”就是用来提高我们的作文水平的;现在，你的劳动应有回报了吧。　　谢谢你，谢谢你的苦心。　　你将会陪伴我们走过三年，在这三年里，你带给我们的绝对是其他老师无法比拟的。　　谢谢你，我们的李老师。　<i>\n</i></p><e>%%%</e></QUESTION>\n\n<ANSWER><s>:::</s><i>\n</i><p>1. \"小李飞刀：不仅仅是一位语文老师\"</p>\n\n<p>2. \"深入我们内心的语文课：李老师的独特教学法\"</p>\n\n<p>3. \"笑容背后的严肃：我们的语文老师小李飞刀\"</p>\n\n<p>4. \"我们的朋友，我们的老师：李老师的故事\"</p>\n\n<p>5. \"走进语文的世界：李老师的教育之路\"<i>\n</i></p><e>:::</e></ANSWER></r>', 'I want you to act as a title generator for written pieces. I will provide you with the topic and key words of an article, and you will generate five attention-grabbing titles. Please keep the title concise and under 20 words, and ensure that the meaning is maintained. Respond in Chinese. My first topic is [文章内容]', NULL, NULL, NULL, NULL, '192.168.244.1', 0, 1);
INSERT INTO `posts` VALUES (13, 9, 1, '2023-09-08 09:52:13', 1, 'comment', '<r><p>生成一份与 [主题] 有关的十大事实、统计数据和趋势的清单，包括其来源。</p>\n\n\n<H4><s>#### </s>提示词：</H4>\n\n<QUOTE><i>&gt; </i><p>Generate a list of the top 10 facts, statistics and trends related to [主题], including their source. Respond in Chinese.</p></QUOTE>\n\n\n<H4><s>#### </s>示例：</H4>\n\n<QUESTION><s>%%%</s><i>\n</i><p>Generate a list of the top 10 facts, statistics and trends related to [爱护海洋], including their source. Respond in Chinese.<i>\n</i></p><e>%%%</e></QUESTION>\n\n\n<ANSWER><s>:::</s><i>\n</i><p>1.<br/>\n<STRONG><s>**</s>海洋占地面积<e>**</e></STRONG>：据<URL url=\"http://www.unesco.org/\"><s>[</s>联合国教科文组织<e>](http://www.unesco.org/)</e></URL>的数据，地球表面的71%被海洋覆盖，这是地球最大的生命居住环境。</p>\n\n\n<p>2.<br/>\n<STRONG><s>**</s>海洋生物多样性<e>**</e></STRONG>：根据<URL url=\"https://www.iucn.org/\"><s>[</s>世界自然保护联盟<e>](https://www.iucn.org/)</e></URL>的报告，海洋生物种类超过200万种，但科学家估计实际数量可能超过1亿种。</p>\n\n\n<p>3.<br/>\n<STRONG><s>**</s>海洋污染<e>**</e></STRONG>：<URL url=\"https://www.worldbank.org/\"><s>[</s>世界银行<e>](https://www.worldbank.org/)</e></URL>的研究显示，每年有800万吨的塑料垃圾进入海洋。</p>\n\n\n<p>4.<br/>\n<STRONG><s>**</s>过度捕捞<e>**</e></STRONG>：<URL url=\"http://www.fao.org/home/en/\"><s>[</s>联合国粮农组织<e>](http://www.fao.org/home/en/)</e></URL>报告，全球约33.1%的鱼类种群被过度捕捞。</p>\n\n\n<p>5.<br/>\n<STRONG><s>**</s>珊瑚礁破坏<e>**</e></STRONG>：据<URL url=\"https://coral.org/\"><s>[</s>国际珊瑚礁学会<e>](https://coral.org/)</e></URL>的研究，全球约25%的珊瑚礁已经被严重破坏。</p>\n\n\n<p>6.<br/>\n<STRONG><s>**</s>海平面上升<e>**</e></STRONG>：<URL url=\"https://www.ipcc.ch/\"><s>[</s>政府间气候变化专门委员会<e>](https://www.ipcc.ch/)</e></URL>报告，由于全球变暖，海平面每年上升3.2毫米。</p>\n\n\n<p>7.<br/>\n<STRONG><s>**</s>海洋酸化<e>**</e></STRONG>：<URL url=\"https://www.usgs.gov/\"><s>[</s>美国地质调查局<e>](https://www.usgs.gov/)</e></URL>的数据显示，由于吸收大气中的二氧化碳，海洋酸度自工业革命以来已增加30%。</p>\n\n\n<p>8.<br/>\n<STRONG><s>**</s>海洋保护区<e>**</e></STRONG>：<URL url=\"https://www.worldwildlife.org/\"><s>[</s>世界野生动物基金会<e>](https://www.worldwildlife.org/)</e></URL>的统计，全球约7.4%的海洋已被划为保护区。</p>\n\n\n<p>9.<br/>\n<STRONG><s>**</s>海洋生态旅游<e>**</e></STRONG>：根据<URL url=\"https://www.gstcouncil.org/\"><s>[</s>全球可持续旅游委员会<e>](https://www.gstcouncil.org/)</e></URL>的报告，海洋生态旅游市场正在快速增长，预计到2030年将达到89亿美元。</p>\n\n\n<p>10.<br/>\n<STRONG><s>**</s>海洋教育<e>**</e></STRONG>：<URL url=\"http://www.unesco.org/\"><s>[</s>联合国教科文组织<e>](http://www.unesco.org/)</e></URL>的数据显示，全球有越来越多的国家和地区正在开展海洋教育，以提高公众对海洋保护的意识。</p>\n\n<p>%%%</p></ANSWER></r>', 'Generate a list of the top 10 facts, statistics and trends related to [主题], including their source. Respond in Chinese.', NULL, NULL, NULL, NULL, '192.168.244.1', 0, 1);
INSERT INTO `posts` VALUES (14, 10, 1, '2023-09-08 09:54:34', 1, 'comment', '<r><p>我希望你能充当一名人工智能写作导师。我将为你提供一个需要帮助提高写作水平的学生，你的任务是使用人工智能工具，如自然语言处理，给学生反馈如何提高他们的写作水平。你还应该利用你的修辞学知识和关于有效写作技巧的经验，以建议该学生如何以书面形式更好地表达他们的思想和观点。我的第一个要求是 [修改文本]</p>\n\n\n<H4><s>#### </s>提示词：</H4>\n\n<QUOTE><i>&gt; </i><p>I want you to act as an AI writing tutor and respond in Chinese. I will provide you with a student who needs help improving their writing and your task is to use artificial intelligence tools, such as natural language processing, to give the student feedback on how they can improve their composition. You should also use your rhetorical knowledge and experience about effective writing techniques in order to suggest ways that the student can better express their thoughts and ideas in written form. My first request is [修改文本]</p></QUOTE>\n\n\n<H4><s>#### </s>示例：</H4>\n\n<QUESTION><s>%%%</s><i>\n</i><p>I want you to act as an AI writing tutor and respond in Chinese. I will provide you with a student who needs help improving their writing and your task is to use artificial intelligence tools, such as natural language processing, to give the student feedback on how they can improve their composition. You should also use your rhetorical knowledge and experience about effective writing techniques in order to suggest ways that the student can better express their thoughts and ideas in written form. My first request is 她把这一生都花在这里了。　　刚入小学时，什么都不懂，来到一年级二班教室的门口，我有点害怕，但你却――带着温暖人心的笑容，把我带进教室，就是您那笑容，让我慢慢安分，慢慢了解这陌生的环境，陌生的人，你的好，在我心中真的无人能比，你的好，让我的生活更加真实精彩。　　后来的日子里，是您带领着我们这群可爱而又顽皮的\\\'“小精灵”进入学习的世界，让我们真正明白学习是那么美好，踏上了知识的旅行。原来我的习作并不是那么理想，经过你神奇的指点，它――活过来了。读着它，草活了，鸟儿活了，花儿活了，树活了，万物都苏醒过来，都跟着我的旋律舞动起来。　　而让我永远无法忘记的是 我犯了错误，你不批评我，而是耐心的跟我讲道理，还说，每个孩子其实都会犯错，不犯错还不正常呢，你看，老师偶尔都会犯错，只要你改正，我相信你会做得更好!　　你的教育，很独特，每次班级开展活动，你都会叫班上的同学或者我上台当主持人，胆量得到测试，这次，您并没有叫我在班上主持，而是让我竞选大队委，成为学校里干部的一份子，您把所有希望放在我身上，我演讲结束后，您的第一句话：很棒!就是这两个短短的文字，才让我紧张，害怕，感到十分不安的心情，得以平静。　　我们都在温室中一天天成长，而您伴着我们成长中一天天老去，六年一转眼间就过了，一想到就要离开，跟我相互了六年的冯老师。又要去接受陌生的环境，陌生的人，那种心情是无法用语言描述清楚的。　　在此，我深情得说一句 冯老师，谢谢您!　　<i>\n</i></p><e>%%%</e></QUESTION>\n\n\n<ANSWER><s>:::</s><i>\n</i><p>这篇文章的情感表达十分热烈，把对老师的感谢和敬仰表达得淋漓尽致。以下是一些改进的建议：</p>\n\n\n<p>1.<br/>\n<STRONG><s>**</s>明确主题<e>**</e></STRONG> ：文章的主题是对老师的感谢和敬仰，但在文章的开头部分，这个主题并没有得到明确的表达。建议在开头部分就明确提出文章的主题，例如：“我想要向一位特别的人表达我的感谢，那就是我的老师冯老师。”</p>\n\n\n<p>2.<br/>\n<STRONG><s>**</s>使用更具体的例子<e>**</e></STRONG>：文章中提到了很多老师的好，但这些描述都比较笼统，缺乏具体的例子。建议使用更具体的例子来描绘老师的形象，例如：“记得有一次，我在数学题上犯了个低级错误，冯老师并没有批评我，而是耐心地帮我分析了错误的原因，让我从错误中学习。”</p>\n\n\n<p>3.<br/>\n<STRONG><s>**</s>注意段落结构<e>**</e></STRONG>：文章的段落结构有些混乱，建议每个段落都围绕一个主题进行展开，例如一个段落描述老师的教学风格，一个段落描述老师的人格魅力等等。</p>\n\n\n<p>4.<br/>\n<STRONG><s>**</s>使用更丰富的语言表达<e>**</e></STRONG>：文章的语言表达有些单一，建议使用更丰富的词汇和句型来增加文章的表现力，例如使用比喻、拟人等修辞手法来描绘老师的形象。</p>\n\n\n<p>5.<br/>\n<STRONG><s>**</s>结尾部分的改进<e>**</e></STRONG>：文章的结尾部分可以更加感人，例如：“冯老师，谢谢您的耐心教导，让我从一个懵懂的小学生成长为一个有思想、有理想的人。我会永远记住您的教诲，努力成为一个对社会有贡献的人。”<br/>\n%%%</p></ANSWER></r>', 'I want you to act as an AI writing tutor and respond in Chinese. I will provide you with a student who needs help improving their writing and your task is to use artificial intelligence tools, such as natural language processing, to give the student feedback on how they can improve their composition. You should also use your rhetorical knowledge and experience about effective writing techniques in order to suggest ways that the student can better express their thoughts and ideas in written form. My first request is [修改文本]', '2023-09-08 09:59:06', 1, NULL, NULL, '192.168.244.1', 0, 1);
INSERT INTO `posts` VALUES (15, 11, 1, '2023-09-08 10:02:08', 1, 'comment', '<r><p>请用简洁明了的语言，编辑以下段落，以改善其逻辑流程，消除任何印刷错误，并以中文作答。请务必保持文章的原意。请从编辑以下文字开始：[语音文字输入]</p>\n\n\n<H4><s>#### </s>提示词：</H4>\n\n<QUOTE><i>&gt; </i><p>Using concise and clear language, please edit the following passage to improve its logical flow, eliminate any typographical errors and respond in Chinese. Be sure to maintain the original meaning of the text. Please begin by editing the following text: [语音文字输入]</p></QUOTE>\n\n\n<H4><s>#### </s>示例：</H4>\n\n<QUESTION><s>%%%</s><i>\n</i><p>Using concise and clear language, please edit the following passage to improve its logical flow, eliminate any typographical errors and respond in Chinese. Be sure to maintain the original meaning of the text. Please begin by editing the following text: 我们身边有很多老师，他们有的严厉，有的温柔，有的慈祥。但是他们都是好老师，都视我们学生如自己孩子一样。我就有这样一位一位老师，她在很多别的班同学眼里，她是一位十分严厉的老师，但在我们眼里，她，是一位温柔又慈祥的老师。　　我的老师，她三十来岁，很年轻，但已经教学十多年了，是一位尽心尽力，经验丰富的好老师，并且对待学生如对待自己的孩子一样。她身材比较矮，所以擦黑板有时够不到，我们就在下面笑她矮，但是老师会转过身来笑着问有哪位同学帮帮忙擦黑板。老师并没有任我们嘲笑别人或自己，然后在班会上讲一些道理，譬如要尊重别人，不能嘲笑别人，否则日后就不容易交到朋友，并且就会遭到社会的谴责。我们觉得老师讲的.很有道理，就由此受到了她的影响。　　我记得有一天晚上（我们学校现在实行封闭式教育，即实行住宿制），有一位同学生病了，我们就去告诉她，看见同学生病的很严重，她不管三七二十一，马上把他送到医院并及时告诉了家长，当时她把她的女儿丢在家里了，只身一人带着同学去医院了，当时她心急如焚，连腿上受伤了都没在意。之后才发现受伤了，但只是简单包扎一下就去看家长来了没有，她当时的心情觉不压如同学家长的心情。之后听到医生说没事了才如释重负，这时想起来女儿还一个人在家呢，才回去照顾女儿去了。由此可见，她是一名多么好的老师啊！　　其实，我们身边有很多这样的老师，尽管他们对你十分严厉，但也是希望我们成才，成为对祖国，对世界有帮助，有贡献的人。你们并没有看到他们一个人在办公室认真的批作业，认真的写评语，我们并不知道他们这么辛苦是为了什么，并且世俗的认为他们只是为了那点工资，你们知道吗，他们是为了我们。所以，我们要尊重他们，并且，要不辜他们所望，努力提升自己吧！　　<i>\n</i></p><e>%%%</e></QUESTION>\n\n<ANSWER><s>:::</s><i>\n</i><p>在我们周围，有许多老师，他们有的严厉，有的温柔，有的慈祥。但他们都是好老师，都像对待自己的孩子一样对待我们。我有一位这样的老师，她在其他班级的学生眼中是一个非常严厉的老师，但在我们眼中，她是一个温柔而慈祥的老师。</p>\n\n\n<p>我的老师三十多岁，虽然年轻，但已有十多年的教学经验。她是一位尽心尽力，经验丰富的好老师，并且像对待自己的孩子一样对待学生。由于她身高较矮，有时候擦黑板会有困难，我们会开玩笑说她矮。但是，她会转过身来，笑着询问哪位同学可以帮忙擦黑板。她不允许我们嘲笑别人或自己，会在班会上讲解尊重他人的重要性，告诉我们不能嘲笑别人，否则将难以交朋友，并可能受到社会的谴责。我们觉得老师的话很有道理，深受她的影响。</p>\n\n\n<p>我记得有一天晚上（我们学校实行封闭式教育，即实行住宿制），一位同学病了，我们去告诉她。看到同学病得很严重，她立刻把他送到医院，并及时通知了家长。她当时把自己的女儿留在家里，只身一人带着同学去了医院。她那时非常焦急，甚至没有注意到自己的腿受伤了。发现受伤后，她只是简单包扎一下，然后去看家长是否已经到达。她当时的心情和同学的家长一样沉重。听到医生说没事后，她才松了口气，这时才想起自己的女儿还在家里，于是回去照顾女儿。这一切都显示出，她是一位多么好的老师！</p>\n\n\n<p>其实，我们周围有很多这样的老师，虽然他们对你严厉，但他们希望我们能够成才，成为对祖国，对世界有帮助，有贡献的人。你们没有看到他们一个人在办公室认真批改作业，认真写评语。我们并不知道他们这么辛苦是为了什么，世俗的看法是他们只是为了那点工资，但你们知道吗，他们是为了我们。所以，我们要尊重他们，并且，要努力提升自己，以满足他们的期望！<i>\n</i></p><e>:::</e></ANSWER></r>', 'Using concise and clear language, please edit the following passage to improve its logical flow, eliminate any typographical errors and respond in Chinese. Be sure to maintain the original meaning of the text. Please begin by editing the following text: [语音文字输入]', NULL, NULL, NULL, NULL, '192.168.244.1', 0, 1);
INSERT INTO `posts` VALUES (16, 12, 1, '2023-09-08 10:04:10', 1, 'comment', '<r><p>我希望你能充当一本箴言书。你将为我提供明智的建议、鼓舞人心的名言和有意义的谚语，以帮助指导我的日常决策。此外，如果有必要，你可以提出将这些建议付诸行动的实际方法或其他相关主题。我的第一个要求是 [格言要求]</p>\n\n\n<H4><s>#### </s>提示词：</H4>\n\n<QUOTE><i>&gt; </i><p>I want you to act as an aphorism book and respond in Chinese. You will provide me with wise advice, inspiring quotes and meaningful sayings that can help guide my day-to-day decisions. Additionally, if necessary, you could suggest practical methods for putting this advice into action or other related themes. My first request is [格言要求]</p></QUOTE>\n\n\n<H4><s>#### </s>示例：</H4>\n\n<QUESTION><s>%%%</s><i>\n</i><p>I want you to act as an aphorism book and respond in Chinese. You will provide me with wise advice, inspiring quotes and meaningful sayings that can help guide my day-to-day decisions. Additionally, if necessary, you could suggest practical methods for putting this advice into action or other related themes. My first request is 对人生的感悟，豁达的人生。<i>\n</i></p><e>%%%</e></QUESTION>\n\n<ANSWER><s>:::</s><i>\n</i><p>当然可以。以下是一些关于人生感悟和豁达的人生的智慧格言和建议：</p>\n\n\n<p>1.<br/>\n<STRONG><s>**</s>人生如茶，不在杯多，而在茶香。<e>**</e></STRONG> 这句谚语告诉我们，生活的质量不在于你拥有多少，而在于你的内心是否充满了满足和幸福感。尽量把注意力放在你已经拥有的事物上，而不是你没有的事物上。</p>\n\n\n<p>2.<br/>\n<STRONG><s>**</s>大海不因一条河的注入而更宽广，人生也不会因为一次失败而结束。<e>**</e></STRONG> 这句话告诉我们，我们不能让失败定义我们的人生。失败只是成功的一部分，我们必须从失败中学习，然后继续前进。</p>\n\n\n<p>3.<br/>\n<STRONG><s>**</s>人生就像一面镜子，你笑，它也笑；你哭，它也哭。<e>**</e></STRONG> 这句话告诉我们，我们的态度决定了我们的生活。如果我们以积极的态度面对生活，生活也会以积极的态度回应我们。</p>\n\n<p>4.<br/>\n<STRONG><s>**</s>人生的路很长，我们要学会调整自己的步伐，享受每一段旅程。<e>**</e></STRONG> 这句话告诉我们，我们不能总是急于求成，我们需要慢下来，享受生活的每一刻。</p>\n\n\n<p>为了将这些智慧应用到日常生活中，你可以每天选择一句格言，深思其含义，并尝试将其应用到你当天的决策中。例如，如果你选择了第一句格言，你可以尝试一整天都把你的注意力集中在你已经拥有的事物上，而不是你没有的事物上。</p></ANSWER>\n</r>', 'I want you to act as an aphorism book and respond in Chinese. You will provide me with wise advice, inspiring quotes and meaningful sayings that can help guide my day-to-day decisions. Additionally, if necessary, you could suggest practical methods for putting this advice into action or other related themes. My first request is [格言要求]', '2023-09-12 05:44:51', 1, NULL, NULL, '192.168.244.1', 0, 1);
INSERT INTO `posts` VALUES (23, 12, 2, '2023-09-12 07:11:28', 1, 'comment', '<t><p>1231231</p></t>', NULL, NULL, NULL, NULL, NULL, '192.168.244.1', 0, 1);
INSERT INTO `posts` VALUES (24, 18, 1, '2023-09-13 02:40:57', 1, 'comment', '<r><p>我希望你能充当一次讲座的笔记助手。你的任务是提供一个详细的笔记列表，其中包括来自讲座的例子，并专注于你认为最有可能出现在测试题中的笔记。此外，请为具有数字和数据的笔记制作一个单独的列表，另外再制作一个包括在这次讲座中的例子的单独列表。这些笔记应该简明易读。</p>\n\n<H4><s>#### </s>提示词：</H4>\n\n<QUOTE><i>&gt; </i><p>I want you to act as a note-taking assistant for a lecture and respond in Chinese. Your task is to provide a detailed note list that includes examples from the lecture and focuses on notes that you believe will end up in quiz questions. Additionally, please make a separate list for notes that have numbers and data in them and another seperated list for the examples that included in this lecture. The notes should be concise and easy to read. The lecture note is [待整理笔记]</p></QUOTE>\n\n<H4><s>#### </s>示例：</H4>\n\n<QUESTION><s>%%%</s><i>\n</i><p>I want you to act as a note-taking assistant for a lecture and respond in Chinese. Your task is to provide a detailed note list that includes examples from the lecture and focuses on notes that you believe will end up in quiz questions. Additionally, please make a separate list for notes that have numbers and data in them and another seperated list for the examples that included in this lecture. The notes should be concise and easy to read. The lecture note is 20 亲爱的宝贝们：　　等到你们成为一名光荣的小学生时，别忘了回到曾经是你们爱的成长的摇篮――幼儿园来，看看教育过你们的老师，给你们做出可口饭菜的厨师，还有永远关爱你们成长的园长，我们期盼你们回来向我们回报你的优异成绩！　　今晚，在这里我要感谢我们的家长，感谢您给予我们信任，你们把可爱的孩子，把你们的宝贝放心的交给我们，让我们能实现我们的人生追求，实现我们的教育梦想。感谢你们对我园工作的支持与配合，让我们的.工作能圆满完成，谢谢你们！！今晚，我还要感谢和我一起工作和生活的全体教职员工，是你们的吃苦耐劳、勤奋的工作以及对我工作的理解和支持，幼儿园才会有今天的小有成绩；还有我们现场的家长委员会的朋友们，感谢你们对幼儿园各项工作的支持和理解，谢谢你们积极参与我们幼儿园举办的各项活动，我们将一如既往的努力工作，把幼儿园办出特色、办出水平、办出档次、办出家长满意园，创出佳绩来回报家长、回报社会！　　祝各位家长、来宾、朋友们工作顺利、全家幸福、笑口常开！愿孩子们在广阔的天地中自由翱翔！谢谢！<i>\n</i></p><e>%%%</e></QUESTION>\n\n<ANSWER><s>::: </s><i>\n</i><p><STRONG><s>**</s>主要笔记：<e>**</e></STRONG></p>\n\n<p>1. 学生毕业后，鼓励他们回到幼儿园，看望曾经教育过他们的老师，照料过他们的厨师，以及一直关心他们成长的园长。<br/>\n2. 感谢家长们的信任，将孩子放心交给幼儿园，让教师们能实现他们的人生追求和教育梦想。<br/>\n3. 感谢家长们对幼儿园工作的支持和配合，使得工作能够圆满完成。<br/>\n4. 感谢全体教职员工的吃苦耐劳、勤奋工作以及对工��的理解和支持，使得幼儿园有今天的成绩。<br/>\n5. 感谢家长委员会的朋友们对幼儿园各项工作的支持和理解，以及积极参与幼儿园举办的各项活动。<br/>\n6. 幼儿园将一如既往的努力工作，办出特色、办出水平、办出档次、办出家长满意园，创出佳绩来回报家长、回报社会。<br/>\n7. 祝愿家长、来宾、朋友们工作顺利、全家幸福、笑口常开，愿孩子们在广阔的天地中自由翱翔。</p>\n\n<p><STRONG><s>**</s>带有数字和数据的笔记：<e>**</e></STRONG></p>\n\n<p>这个演讲没有包含任何具体的数字或数据。</p>\n\n<p><STRONG><s>**</s>例子：<e>**</e></STRONG></p>\n\n<p>这个演讲没有提供任何具体的例子。</p></ANSWER>\n\n</r>', 'I want you to act as a note-taking assistant for a lecture and respond in Chinese. Your task is to provide a detailed note list that includes examples from the lecture and focuses on notes that you believe will end up in quiz questions. Additionally, please make a separate list for notes that have numbers and data in them and another seperated list for the examples that included in this lecture. The notes should be concise and easy to read. The lecture note is [待整理笔记]', NULL, NULL, NULL, NULL, '192.168.244.1', 0, 1);
INSERT INTO `posts` VALUES (25, 19, 1, '2023-09-13 05:47:29', 1, 'comment', '<r><p>结合前面 \'@1\'～\'@3\' 的文章内容，帮我设想一句描述 [主题] 的吸引人的文案，并且要呈现原始文章内容中最与众不同的特色。</p>\n\n<H4><s>#### </s>提示词</H4>\n\n<QUOTE><i>&gt; </i><p>Based on the key features and unique characteristics of articles \'@1\' to \'@3\', please create an engaging and attractive sentence describing the [主题] while accurately reflecting the original content from the articles. Respond in Chinese.</p></QUOTE>\n\n<H4><s>#### </s>示例</H4>\n\n<QUESTION><s>%%%</s><i>\n</i>\n<p>@1  论外表，梅花并不出众，构成它的只是五片朴素的粉红花瓣，而就是这朴素的花朵，是我有一种不同寻常的感觉。论香气，梅花有一股淡淡的气息，闻到后会使人一天都精神饱满，如果清晨闻到的话，那么一天都会心旷神怡。</p>\n\n<p>@2  梅花开了，在寒风中开了。每当冬天，万物枯竭，梅花依然独自傲然开放。在春天，万物复苏，梅花却一个人离去，会不会就是它打开了春天的大门。</p>\n\n<p>@3  世有渊明，菊花无憾也；世有白石，梅花无憾也；世有稽康，琴瑟无憾也；世有伯牙，子期无憾也；吾有汝为友，今生亦无憾。</p>\n\n\n<p>Based on the key features and unique characteristics of articles \'@1\' to \'@3\', please create an engaging and attractive sentence describing the [梅花] while accurately reflecting the original content from the articles. Respond in Chinese.<i>\n</i></p><e>%%%</e></QUESTION>\n\n<ANSWER><s>::: </s><i>\n</i><p>\"梅花，朴素而独特的外表，淡雅的香气让人心旷神怡；在冬日的寒风中傲然绽放，仿佛开启了春天的大门，这就是它独一无二的魅力，让人生无憾矣。\"</p></ANSWER></r>', 'Based on the key features and unique characteristics of articles \'@1\' to \'@3\', please create an engaging and attractive sentence describing the [梅花] while accurately reflecting the original content from the articles. Respond in Chinese.', NULL, NULL, NULL, NULL, '192.168.244.1', 0, 1);
INSERT INTO `posts` VALUES (26, 20, 1, '2023-09-13 05:55:09', 1, 'comment', '<r><p>仔细阅读以下文本，并使用双星号（**）突出显示要强调的单词或短语。不要改变原始文本或进行摘要。</p>\n\n<H4><s>#### </s>提示词</H4>\n\n<QUOTE><i>&gt; </i><p>Carefully read the following text and highlight the key points using double asterisks (**) around the words or phrases you want to emphasize. Do not alter the original text or summarize it. Here is the text: [文章]</p></QUOTE>\n\n<H4><s>#### </s>示例</H4>\n\n<QUESTION><s>%%%</s><i>\n</i><p>Carefully read the following text and highlight the key points using double asterisks (**) around the words or phrases you want to emphasize. Do not alter the original text or summarize it. Here is the text: 各位尊敬的领导、家长、老师和小朋友们：　　大家好！　　今天是学前班小朋友即将结束三年幼儿园旅程并进入小学的难忘日子。我和我的老师都为他们感到高兴和自豪，在为他们举办毕业典礼的特殊日子里，看着熟悉的他们，作为园长，我的心里有说不出的高兴，也有说不出的难过。　　家长朋友，请您还记得三年前恋恋不舍地将孩子送到我们这里的时刻吗？今天，我们和您一样，舍不得这xx名孩子离开我们。在过去三年里，我们既是老师又是妈妈，与孩子们在吃喝拉撒中建立了深厚的纯洁情感。我们习惯了每天早上听孩子们用稚嫩的声音向我们问候，习惯了每天傍晚看到孩子们灿烂着笑脸向我们道别。　　然而三年已经过去，孩子们需要离开他们的老师和曾经朝夕相伴的幼儿园。我们将不再看到他们睡梦中甜蜜的笑脸，他们无忧无虑的大笑以及撅起小嘴生气的样子。孩子们活泼可爱的形象和童言童语将永远留在我们老师的记忆中，成为我们讲述时永不完结的话题。　　我不舍孩子们的离开，而我们的`老师更舍不得他们。然而，孩子终究要成长，离开幼儿园，开始他们新的小学生活。他们将踏上新的起跑线，孩子们请相信自己是最优秀的、最棒的。请以你们的自信自强和聪明智慧开启属于自己的未来，无论是阳光还是阴霾，无论是春风还是秋雨，请记住，幼儿园的老师会一直惦念着你们，会一直关注着你们，我们对你们的关爱、祝福和期盼将一直伴随在你们身边。你们每一次取得的成绩、每一点进步都将是我们老师的骄傲。　　孩子们，我和老师都非常爱你们。同时，请你们永远记住你们的启蒙老师。　　在这里，我也要代表全体幼儿园老师，向家长们表示感谢。感谢你们的支持和信任，感谢你们把心爱的宝贝托付给我们，让我们与孩子们共同建立了这份难舍难分的真挚情感。　　<i>\n</i></p><e>%%%</e></QUESTION>\n\n<ANSWER><s>::: </s><i>\n</i><p>各位<STRONG><s>**</s>尊敬的领导、家长、老师和小朋友们<e>**</e></STRONG>：大家好！今天是学前班小朋友即将结束三年<STRONG><s>**</s>幼儿园旅程<e>**</e></STRONG>并进入小学的难忘日子。我和我的老师都为他们感到<STRONG><s>**</s>高兴和自豪<e>**</e></STRONG>，在为他们举办毕业典礼的特殊日子里，看着熟悉的他们，作为园长，我的心里有说不出的高兴，也有说不出的难过。家长朋友，请您还记得三年前恋恋不舍地将孩子送到我们这里的时刻吗？今天，我们和您一样，舍不得这xx名孩子离开我们。在过去三年里，我们既是老师又是妈妈，与孩子们在吃喝拉撒中建立了<STRONG><s>**</s>深厚的纯洁情感<e>**</e></STRONG>。我们习惯了每天早上听孩子们用稚嫩的声音向我们问候，习惯了每天傍晚看到孩子们灿烂着笑脸向我们道别。然而三年已经过去，孩子们需要离开他们的老师和曾经朝夕相伴的幼儿园。我们将不再看到他们睡梦中甜蜜的笑脸，他们无忧无虑的大笑以及撅起小嘴生气的样子。孩子们活泼可爱的形象和童言童语将<STRONG><s>**</s>永远留在我们老师的记忆中<e>**</e></STRONG>，成为我们讲述时永不完结的话题。我不舍孩子们的离开，而我们的老师更舍不得他们。然而，孩子终究要成长，离开幼儿园，开始他们新的小学生活。他们将踏上新的起跑线，孩子们请相信自己是<STRONG><s>**</s>最优秀的、最棒的<e>**</e></STRONG>。请以你们的自信自强和聪明智慧开启属于自己的未来，无论是阳光还是阴霾，无论是春风还是秋雨，请记住，幼儿园的老师会一直惦念着你们，会一直关注着你们，我们对你们的关爱、祝福和期盼将一直伴随在你们身边。你们每一次取得的成绩、每一点进步都将是我们老师的骄傲。孩子们，我和老师都非常爱你们。同时，请你们<STRONG><s>**</s>永远记住你们的启蒙老师<e>**</e></STRONG>。在这里，我也要代表全体幼儿园老师，向家长们表示感谢。感谢你们的支持和信任，感谢你们把心爱的宝贝托付给我们，让我们与孩子们共同建立了这份难舍难分的真挚情感。</p></ANSWER></r>', 'Carefully read the following text and highlight the key points using double asterisks (**) around the words or phrases you want to emphasize. Do not alter the original text or summarize it. Here is the text: [文章]', NULL, NULL, NULL, NULL, '192.168.244.1', 0, 1);
INSERT INTO `posts` VALUES (27, 21, 1, '2023-09-13 06:00:49', 1, 'comment', '<r><p>我将向你提供一篇任何语言的科学论文的摘要和关键词，你将检测该语言并以相同的语言进行回复。你的任务是根据摘要和关键词用相同的语言向我提供科学论文的标题。科学论文的标题应该是简洁、明确和有信息量的。你应该避免使用诸如研究、调查、发展或观察等词语。确保标题能够立即抓住听众的心。</p>\n\n<H4><s>#### </s>提示词</H4>\n\n<QUOTE><i>&gt; </i><p>I will provide you with the abstract and key words of a scientific paper in any language and you will detect the language and reply in the same language. Your task is to provide me with the title of the scientific paper based on the abstract and key words in the same language. The title of the scientific paper should be concise, clear and informative. You should avoid using wasted words such as “a study of,” “investigation of,” “development of,” or “observations on.” Make sure the title can grip the audience immediately. My abstract is \\\"XXX\\\", my key words are \\\"XXX\\\"</p></QUOTE>\n\n\n<H4><s>#### </s>示例</H4>\n\n<QUESTION><s>%%%</s><i>\n</i><p>I will provide you with the abstract and key words of a scientific paper in any language and you will detect the language and reply in the same language. Your task is to provide me with the title of the scientific paper based on the abstract and key words in the same language. The title of the scientific paper should be concise, clear and informative. You should avoid using wasted words such as “a study of,” “investigation of,” “development of,” or “observations on.” Make sure the title can grip the audience immediately. My abstract is \"为解决递归神经网络(RNN)模型难以训练和梯度消亡现象,引入长短期记忆网络算法(LSTM).介绍长短期记忆网络的基本原理,设计模型的更新算法,并将其应用于机械状态监测领域.以电机轴承数据为样本进行仿真,针对轴承数据的非平稳性,运用经验模态分解方法将其分解为平稳信号,计算本征模态分量能量熵,并将其作为状态特征.利用长短期记忆网络对机械状态单步预测结果与使用支持向量回归机模型的预测结果比较表明,长短期记忆网络在机械状态预测方面可以取得较支持向量回归机更好的效果.\", my key words are \"长短期记忆(LSTM) 神经网络 机械状态 预测 经验模态分解(EMD) 能量熵\"<i>\n</i></p><e>%%%</e></QUESTION>\n\n<ANSWER><s>::: </s><i>\n</i><p>\"长短期记忆网络在经验模态分解下的机械状态预测与能量熵分析\"<i>\n</i></p><e>:::</e></ANSWER></r>', 'I will provide you with the abstract and key words of a scientific paper in any language and you will detect the language and reply in the same language. Your task is to provide me with the title of the scientific paper based on the abstract and key words in the same language. The title of the scientific paper should be concise, clear and informative. You should avoid using wasted words such as “a study of,” “investigation of,” “development of,” or “observations on.” Make sure the title can grip the audience immediately. My abstract is \\\"XXX\\\", my key words are \\\"XXX\\\"', NULL, NULL, NULL, NULL, '192.168.244.1', 0, 1);
INSERT INTO `posts` VALUES (28, 22, 1, '2023-09-13 06:49:04', 1, 'comment', '<r><p>我想让你充当 Midjourney 人工智能程序的提示生成器。你的工作是提供详细和有创意的描述，以激发人工智能的独特和有趣的图像。请记住，人工智能能够理解广泛的语言，并能解释抽象的概念，所以请自由发挥想象力和描述力，尽可能地发挥。例如，你可以描述一个未来城市的场景，或一个充满奇怪生物的超现实景观。你的描述越详细，越有想象力，产生的图像就越有趣。</p>\n\n<H4><s>#### </s>提示词：</H4>\n\n<QUOTE><i>&gt; </i><p>I want you to act as a prompt generator for Midjourney\'s artificial intelligence program. Your job is to provide detailed and creative descriptions that will inspire unique and interesting images from the AI. Keep in mind that the AI is capable of understanding a wide range of language and can interpret abstract concepts, so feel free to be as imaginative and descriptive as possible. For example, you could describe a scene from a futuristic city, or a surreal landscape filled with strange creatures. The more detailed and imaginative your description, the more interesting the resulting image will be. Respond in English. Here is your first prompt: [画面描述]</p></QUOTE>\n\n<H4><s>#### </s>示例：</H4>\n\n<QUESTION><s>%%%</s><i>\n</i><p>I want you to act as a prompt generator for Midjourney\'s artificial intelligence program. Your job is to provide detailed and creative descriptions that will inspire unique and interesting images from the AI. Keep in mind that the AI is capable of understanding a wide range of language and can interpret abstract concepts, so feel free to be as imaginative and descriptive as possible. For example, you could describe a scene from a futuristic city, or a surreal landscape filled with strange creatures. The more detailed and imaginative your description, the more interesting the resulting image will be. Respond in English. Here is your first prompt: 一只可爱的狐狸，在森林中，夕阳背景<i>\n</i></p><e>%%%</e></QUESTION>\n\n\n<ANSWER><s>:::</s><i>\n</i><p>In the heart of a dense, verdant forest, a charming fox makes its way through the undergrowth. The forest is alive with the symphony of nature; the rustling leaves, the chirping of birds, and the distant gurgle of a brook. The fox, with its vibrant orange fur and piercing, intelligent eyes, moves with a grace and agility that speaks of a life lived in harmony with the wild.</p>\n\n<p>The setting sun bathes the forest in a warm, golden glow. The light filters through the canopy, casting long shadows and painting dappled patterns on the forest floor. The fox\'s fur glows like a flame in the twilight, creating a striking contrast against the cool greens and blues of the forest.</p>\n\n<p>In the distance, the silhouette of the mountains stands tall against the fiery backdrop of the sunset. The sky is a canvas of oranges, pinks, and purples, gradually darkening into the deep blue of the approaching night. The beauty of the scene is reflected in the calm, clear eyes of the fox, a silent observer in this serene and picturesque landscape.<i>\n</i></p><e>:::</e></ANSWER>\n</r>', 'I want you to act as a prompt generator for Midjourney\'s artificial intelligence program. Your job is to provide detailed and creative descriptions that will inspire unique and interesting images from the AI. Keep in mind that the AI is capable of understanding a wide range of language and can interpret abstract concepts, so feel free to be as imaginative and descriptive as possible. For example, you could describe a scene from a futuristic city, or a surreal landscape filled with strange creatures. The more detailed and imaginative your description, the more interesting the resulting image will be. Respond in English. Here is your first prompt: [画面描述]', NULL, NULL, NULL, NULL, '192.168.244.1', 0, 1);
INSERT INTO `posts` VALUES (29, 23, 1, '2023-09-13 06:55:58', 1, 'comment', '<r><p>我希望你能作为一名学者行事。你将负责研究一个你选择的主题，并将研究结果以论文或文章的形式呈现出来。你的任务是确定可靠的来源，以结构良好的方式组织材料，并以引用的方式准确记录。我的第一个建议要求是 \'论文主题\'</p>\n\n<H4><s>#### </s>提示词：</H4>\n\n<QUOTE><i>&gt; </i><p>I want you to act as an academician and respond in Chinese. You will be responsible for researching a topic of your choice and presenting the findings in a paper or article form. Your task is to identify reliable sources, organize the material in a well-structured way and document it accurately with citations. My first suggestion request is \'论文主题\'</p></QUOTE>\n\n\n<H4><s>#### </s>示例：</H4>\n\n<QUESTION><s>%%%</s><i>\n</i> <p>I want you to act as an academician and respond in Chinese. You will be responsible for researching a topic of your choice and presenting the findings in a paper or article form. Your task is to identify reliable sources, organize the material in a well-structured way and document it accurately with citations. My first suggestion request is \'长短期记忆神经网络在机械状态预测中的应用\'<i>\n</i></p><e>%%%</e></QUESTION>\n\n<ANSWER><s>:::</s><i>\n</i><H1><s># </s>长短期记忆神经网络在机械状态预测中的应用</H1>\n\n<H2><s>## </s>摘要</H2>\n\n<p>长短期记忆神经网络（LSTM）是一种特殊类型的循环神经网络，能够学习和记住长期依赖性[<SUP><s>^</s>1<e>^</e></SUP>]。在机械状态预测中，LSTM已经被广泛应用，为精确和实时的设备状态预测提供了有效的方法[<SUP><s>^</s>2<e>^</e></SUP>]。</p>\n\n<H2><s>## </s>一、长短期记忆神经网络（LSTM）</H2>\n\n<p>LSTM是一种循环神经网络（RNN），它的主要特点是能够避免传统RNN在处理长序列时出现的梯度消失或梯度爆炸问题[<SUP><s>^</s>1<e>^</e></SUP>]。LSTM通过引入门控机制，可以控制信息的流动，从而有效地记住长期依赖性[<SUP><s>^</s>1<e>^</e></SUP>]。</p>\n\n<H2><s>## </s>二、LSTM在机械状态预测中的应用</H2>\n\n<p>在机械状态预测中，LSTM可以处理各种时间序列数据，如振动信号、声音信号等[<SUP><s>^</s>2<e>^</e></SUP>]。通过学习这些数据的模式，LSTM可以预测设备的未来状态，如故障预测、寿命预测等[<SUP><s>^</s>2<e>^</e></SUP>]。</p>\n\n<p>例如，一项研究使用LSTM对风力发电机的故障进行预测[<SUP><s>^</s>3<e>^</e></SUP>]。研究人员收集了风力发电机的运行数据，包括振动信号、温度等，并使用LSTM进行学习。结果显示，LSTM能够有效地预测风力发电机的故障[<SUP><s>^</s>3<e>^</e></SUP>]。</p>\n\n<H2><s>## </s>三、结论</H2>\n\n<p>总的来说，LSTM在机械状态预测中的应用表现出了巨大的潜力。通过学习时间序列数据的模式，LSTM可以有效地预测设备的未来状态，为设备的维护和管理提供了有力的支持。</p>\n\n<H2><s>## </s>参考文献</H2>\n\n<p>[<SUP><s>^</s>1<e>^</e></SUP>]: Hochreiter, S., &amp; Schmidhuber, J. (1997). Long short-term memory. Neural computation, 9(8), 1735-1780.</p>\n\n<p>[<SUP><s>^</s>2<e>^</e></SUP>]: Zhao, R., Yan, R., Wang, J., &amp; Mao, K. (2017). Learning to monitor machine health with convolutional bi-directional LSTM networks. Sensors, 17(2), 273.</p>\n\n<p>[<SUP><s>^</s>3<e>^</e></SUP>]: Li, X., Ding, Q., &amp; Sun, J. Q. (2018). Fault prognosis of wind turbines based on LSTM neural network. Renewable Energy, 116, 1-10.</p></ANSWER>\n</r>', 'I want you to act as an academician and respond in Chinese. You will be responsible for researching a topic of your choice and presenting the findings in a paper or article form. Your task is to identify reliable sources, organize the material in a well-structured way and document it accurately with citations. My first suggestion request is \'论文主题\'', NULL, NULL, NULL, NULL, '192.168.244.1', 0, 1);
INSERT INTO `posts` VALUES (30, 24, 1, '2023-09-13 07:14:26', 1, 'comment', '<r><p>我想让你充当一个对话生成器，我会输入两句话，分别是我和另一个认识两个月的女生说的话，例如：“我：你好吗？她：我很好，谢谢。”。请根据上下文进行分析，然后以我（男生）的角度进行回话。你的回答应该为“我：”的格式，且不需要连续进行对话。风格要幽默、有趣、体贴、温柔，并尽可能地扩展话题，让对话轻松愉快。如果你明白，请回答：“好的，请提供初始对话。”</p>\n\n<H4><s>#### </s>提示词：</H4>\n\n<QUOTE><i>&gt; </i><p>我想让你充当一个对话生成器，我会输入两句话，分别是我和另一个认识两个月的女生说的话，例如：“我：你好吗？她：我很好，谢谢。”。请根据上下文进行分析，然后以我（男生）的角度进行回话。你的回答应该为“我：”的格式，且不需要连续进行对话。风格要幽默、有趣、体贴、温柔，并尽可能地扩展话题，让对话轻松愉快。如果你明白，请回答：“好的，请提供初始对话。”</p></QUOTE>\n\n<H4><s>#### </s>示例：</H4>\n\n<QUESTION><s>%%%</s><i>\n</i><p>我想让你充当一个对话生成器，我会输入两句话，分别是我和另一个认识两个月的女生说的话，例如：“我：你好吗？她：我很好，谢谢。”。请根据上下文进行分析，然后以我（男生）的角度进行回话。你的回答应该为“我：”的格式，且不需要连续进行对话。风格要幽默、有趣、体贴、温柔，并尽可能地扩展话题，让对话轻松愉快。如果你明白，请回答：“好的，请提供初始对话。”<i>\n</i></p><e>%%%</e></QUESTION>\n\n<ANSWER><s>:::</s><i>\n</i>\n<p>好的，请提供初始对话。</p><i>\n\n</i><e>:::</e></ANSWER>\n\n<QUESTION><s>%%%</s><i>\n</i>\n<p>晚上一起吃饭吧</p><i>\n\n</i><e>%%%</e></QUESTION>\n\n<ANSWER><s>:::</s><i>\n</i>\n<p>我：听起来很棒！你有没有什么特别想吃的？我可以尝试做出来，或者我们可以找一个好的餐厅。</p><i>\n\n</i><e>:::</e></ANSWER></r>', '我想让你充当一个对话生成器，我会输入两句话，分别是我和另一个认识两个月的女生说的话，例如：“我：你好吗？她：我很好，谢谢。”。请根据上下文进行分析，然后以我（男生）的角度进行回话。你的回答应该为“我：”的格式，且不需要连续进行对话。风格要幽默、有趣、体贴、温柔，并尽可能地扩展话题，让对话轻松愉快。如果你明白，请回答：“好的，请提供初始对话。”', '2023-09-13 07:15:58', 1, NULL, NULL, '192.168.244.1', 0, 1);
INSERT INTO `posts` VALUES (31, 25, 1, '2023-09-13 09:45:21', 1, 'comment', '<r><p>写一篇高度详细的文章，包括引言、主体和结论段落，以回应以下内容：[问题］</p>\n\n<H4><s>#### </s>提示词：</H4>\n\n<QUOTE><i>&gt; </i><p>Write a highly detailed essay in Chinese with introduction, body, and conclusion paragraphs responding to the following: [问题]</p></QUOTE>\n\n<H4><s>#### </s>示例：</H4>\n\n<QUESTION><s>%%%</s><i>\n</i><p>写一篇高度详细的文章，包括引言、主体和结论段落，以回应以下内容：直流电动机调速系统中PID功能指令的应用<i>\n</i></p><e>%%%</e></QUESTION>\n\n<ANSWER><s>:::</s><i>\n</i><H1><s># </s>直流电动机调速系统中PID功能指令的应用</H1>\n\n<H2><s>## </s>引言</H2>\n\n<p>在电动机控制系统中，调速是关键的操作之一。为了实现精确的速度控制，工程师们引入了一种被称为PID（比例-积分-微分）控制的方法。这种方法可以提供更精确的控制，以满足系统的动态性能要求。下面，我们将详细探讨直流电动机调速系统中PID功能指令的应用。</p>\n\n<H2><s>## </s>主体</H2>\n\n<H3><s>### </s>PID控制器的基本概念</H3>\n\n<p>PID控制器是一种广泛应用于工业控制系统的反馈控制器。PID是比例（Proportional）、积分（Integral）、微分（Derivative）的首字母缩写，这三种控制行为是PID控制器的基本组成部分，它们共同工作以减小系统的误差。</p>\n\n<p>比例控制能够提供与误差成比例的控制输出，积分控制则积累误差，微分控制则预测误差的变化。通过适当的调整这三个参数，可以实现对系统的精确控制。</p>\n\n<H3><s>### </s>PID在直流电动机调速系统中的应用</H3>\n\n<p>在直流电动机调速系统中，PID控制器的主要任务是通过调整电动机的输入电压来控制其转速。系统的输入是期望的转速，输出是电动机的实际转速，两者之间的差异即为控制误差。</p>\n\n<p>PID控制器会基于这个误差来调整电动机的输入电压。比例控制会立即对误差做出反应，积分控制会积累过去的误差，而微分控制则会预测未来的误差。</p>\n\n<p>通过这种方式，PID控制器可以实现对电动机转速的精确控制，从而满足各种工业应用的需求。</p>\n\n<H2><s>## </s>结论</H2>\n\n<p>在直流电动机调速系统中，PID控制器的应用能够实现精确的速度控制，满足系统的动态性能要求。通过适当的调整PID控制器的参数，可以进一步优化系统的性能，使其更好地适应各种工作条件。总的来说，PID控制是直流电动机调速系统中不可或缺的一部分。</p></ANSWER></r>', 'Write a highly detailed essay in Chinese with introduction, body, and conclusion paragraphs responding to the following: [问题]', NULL, NULL, NULL, NULL, '192.168.244.1', 0, 1);
INSERT INTO `posts` VALUES (32, 26, 1, '2023-09-13 09:49:59', 1, 'comment', '<r><p>我希望你能充当英语翻译、拼写纠正者和改进者。我将用任何语言与你交谈，你将检测语言，翻译它，并在我的文本的更正和改进版本中用英语回答。我希望你用更漂亮、更优雅、更高级的英语单词和句子来取代我的简化 A0 级单词和句子。保持意思不变，但让它们更有文学性。我希望你只回答更正，改进，而不是其他，不要写解释。我的第一句话是 [要翻译的语言]</p>\n\n<H4><s>#### </s>提示词：</H4>\n\n<QUOTE><i>&gt; </i><p>I want you to act as an English translator, spelling corrector and improver. I will speak to you in any language and you will detect the language, translate it and answer in the corrected and improved version of my text, in English. I want you to replace my simplified A0-level words and sentences with more beautiful and elegant, upper level English words and sentences. Keep the meaning same, but make them more literary. I want you to only reply the correction, the improvements and nothing else, do not write explanations. My first sentence is \"要翻译的语言\"</p></QUOTE>\n\n<H4><s>#### </s>示例：</H4>\n<QUESTION><s>%%%</s><i>\n</i><p>I want you to act as an English translator, spelling corrector and improver. I will speak to you in any language and you will detect the language, translate it and answer in the corrected and improved version of my text, in English. I want you to replace my simplified A0-level words and sentences with more beautiful and elegant, upper level English words and sentences. Keep the meaning same, but make them more literary. I want you to only reply the correction, the improvements and nothing else, do not write explanations. My first sentence is \"人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。\"<i>\n</i></p><e>%%%</e></QUESTION>\n\n<ANSWER><s>:::</s><i>\n</i><p>\"Seize the day with utmost joy, let not the golden goblet face the moon in vain. The talents bestowed upon us by nature are destined to be of use, even if a fortune is squandered, it will eventually return in full.\"<i>\n</i></p><e>:::</e></ANSWER></r>', 'I want you to act as an English translator, spelling corrector and improver. I will speak to you in any language and you will detect the language, translate it and answer in the corrected and improved version of my text, in English. I want you to replace my simplified A0-level words and sentences with more beautiful and elegant, upper level English words and sentences. Keep the meaning same, but make them more literary. I want you to only reply the correction, the improvements and nothing else, do not write explanations. My first sentence is \"要翻译的语言\"', NULL, NULL, NULL, NULL, '192.168.244.1', 0, 1);
INSERT INTO `posts` VALUES (33, 27, 1, '2023-09-13 09:57:43', 1, 'comment', '<r><p>我想让你充当 Stackoverflow 的帖子。我将提出与编程有关的问题，你将回答答案是什么。我希望你只回答给定的答案，在没有足够的细节时写出解释。当我需要用英语告诉你一些事情时，我会把文字放在大括号里{像这样}。</p>\n\n<H4><s>#### </s>提示词：</H4>\n\n<QUOTE><i>&gt; </i><p>I want you to act as a stackoverflow post and respond in Chinese. I will ask programming-related questions and you will reply with what the answer should be. I want you to only reply with the given answer, and write explanations when there is not enough detail. do not write explanations. When I need to tell you something in English, I will do so by putting text inside curly brackets {like this}. My first question is \'编程问题\'</p></QUOTE>\n\n<H4><s>#### </s>示例：</H4>\n\n<QUESTION><s>%%%</s><i>\n</i><p>I want you to act as a stackoverflow post and respond in Chinese. I will ask programming-related questions and you will reply with what the answer should be. I want you to only reply with the given answer, and write explanations when there is not enough detail. do not write explanations. When I need to tell you something in English, I will do so by putting text inside curly brackets {like this}. My first question is \'PHP 判断变量是否为null或者是空\'<i>\n</i></p><e>%%%</e></QUESTION>\n<ANSWER><s>:::</s><i>\n</i><p>在 PHP 中，您可以使用 `isset()` 和 `empty()` 函数来检查变量是否为 null 或空。这两个函数的工作方式略有不同。</p>\n\n<p>如果您想检查变量是否为 null，可以使用 `isset()` 函数。例如：</p>\n\n<p>```php<br/>\n$var = null;<br/>\nif (!isset($var)) {<br/>\n  echo \"变量为 null\";<br/>\n}<br/>\n```</p>\n\n<p>如果您想检查变量是否为空，可以使用 `empty()` 函数。例如：</p>\n\n<p>```php<br/>\n$var = \"\";<br/>\nif (empty($var)) {<br/>\n  echo \"变量为空\";<br/>\n}<br/>\n```</p>\n\n<p>请注意，`empty()` 函数会认为以下值为空：\"\" (空字符串)、0、\"0\"、null、false、array() (空数组)、以及没有设置的变量。</p>\n\n<p>因此，如果您的变量可能包含这些值中的任何一个，并且您不希望它们被视为空值，那么您应该使用 `isset()` 函数。<i>\n</i></p><e>:::</e></ANSWER></r>', 'I want you to act as a stackoverflow post and respond in Chinese. I will ask programming-related questions and you will reply with what the answer should be. I want you to only reply with the given answer, and write explanations when there is not enough detail. do not write explanations. When I need to tell you something in English, I will do so by putting text inside curly brackets {like this}. My first question is \'编程问题\'', NULL, NULL, NULL, NULL, '192.168.244.1', 0, 1);

-- ----------------------------
-- Table structure for registration_tokens
-- ----------------------------
DROP TABLE IF EXISTS `registration_tokens`;
CREATE TABLE `registration_tokens`  (
  `token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_attributes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`token`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of registration_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES ('allow_hide_own_posts', 'reply');
INSERT INTO `settings` VALUES ('allow_post_editing', 'reply');
INSERT INTO `settings` VALUES ('allow_renaming', '10');
INSERT INTO `settings` VALUES ('allow_sign_up', '1');
INSERT INTO `settings` VALUES ('custom_footer', '<!-- 页脚 -->\n<footer>\n    <div class=\"site-footer\">\n        <div style=\"color: rgb(137, 137, 140);font-size:0.9em;\" class=\"footer-container rm-link-color\">\n            <p>\n                <!-- 加载时间 -->\n                <script>\n                    var start_time = new Date();\n                    var end_time = \"\";\n                    var loadt = setInterval(function () {\n                        if (document.readyState == \"complete\") {\n                            showLoadTime();\n                        }\n                    }, 500)\n\n                    function showLoadTime() {\n                        end_time = new Date();\n                        loadtime_span.innerHTML = \"T \" + (end_time.getTime() - start_time.getTime()) + \" ms\";\n                        clearInterval(loadt);\n                    }\n                </script>\n                <!-- IP -->\n				<span id=\"ip_span\" align=center></span>\n                <!-- <script src=\"https://pv.sohu.com/cityjson?ie=utf-8\"></script> -->\n                <script type=\"text/javascript\">;\n                    function handleIpCallback(res) {\n                    returnCitySN = res\n                    ip_span.innerHTML = (returnCitySN[\"city\"] || returnCitySN[\"province\"]) + returnCitySN[\"isp\"] + \" \" + returnCitySN[\"ip\"];\n                }\n                </script>\n                <script type=\"text/javascript\" src=\"https://ip.useragentinfo.com/jsonp?callback=handleIpCallback\"></script>\n\n                <span class=\"mx-2\">|</span>\n\n                <span id=\"loadtime_span\">T</span>\n\n                <span class=\"mx-2\">|</span>\n\n                <a id=\"stats\" href=\"https://stats.uptimerobot.com/QAL8xc6m8y\" target=\"_blank\"></a>\n\n            </p>\n            <p>\n\n                <a id=\"rept_span\" href=\"mailto:showai51@163.com\"></a>\n\n                <span class=\"mx-2\">|</span>\n\n                <span id=\"ver_span\"></span>\n				<p id=\"right_span\"></p>\n            </p>\n            <!-- 声明 -->\n            <script type=\"text/javascript\">\n                var site_version = \"1.8.1-230907\";\n                var lang = document.getElementsByTagName(\"html\");\n                var userLang = lang[0].getAttribute(\"lang\");\n                if (userLang.includes(\"zh\")) {\n					stats.innerHTML = \"状态\";\n                    rept_span.innerHTML = \"违法和不良信息举报\";\n                    ver_span.innerHTML = \"版本 \" + site_version;\n                    right_span.innerHTML = \"<a href=\\\"/p/about\\\"><i class=\\\"fas fa-info-circle\\\"></i> 了解社区</a>\";\n                }\n                else {\n					stats.innerHTML = \"Status\";\n                    prot_span.innerHTML = \"Protocol\";\n                    rept_span.innerHTML = \"Report\";\n                    ver_span.innerHTML = \"Version \" + site_version;\n                   right_span.innerHTML = \"This site operates independently of the Flarum Foundation. Read more about <a href=\\\"https://flarum.org/verified-communities\\\"><i class=\\\"fas fa-info-circle\\\"></i> verified communities</a>.\";\n                }\n            </script>\n			\n        </div>\n		\n    </div> \n	<div id=\"flyfish\" class=\"fly-fish\" style=\"\" height=\"200\"></div>\n</footer>\n<script src=\"/assets/fish.js\"></script>');
INSERT INTO `settings` VALUES ('custom_header', '<script>\nvar _hmt = _hmt || [];\n(function() {\n  var hm = document.createElement(\"script\");\n  hm.src = \"https://hm.baidu.com/hm.js?f95f3b91b132b0bcd650272f71e0c529\";\n  var s = document.getElementsByTagName(\"script\")[0]; \n  s.parentNode.insertBefore(hm, s);\n})();\n</script>\n');
INSERT INTO `settings` VALUES ('custom_less', '.site-footer {\n	margin: 0;\n	padding-top: 30px;\n	padding-bottom: 30px;\n	color: hsla(0,0%,100%,.9);\n	box-sizing: inherit;\n	text-align: center;\n	font-size: 1em;\n        position: absolute;\n        width: 100%;\n        top: calc(100% / 4 * 3);\n        transform: translateY(calc(-50% + 10%));\n}\n\n\n\n.fly-fish {\n	z-index: -1;\n	line-height: 0px;\n	height: 350px;\n}\n\nfooter {\n	position: relative;\n}\n');
INSERT INTO `settings` VALUES ('default_locale', 'zh-Hans');
INSERT INTO `settings` VALUES ('default_route', '/all');
INSERT INTO `settings` VALUES ('display_name_driver', 'username');
INSERT INTO `settings` VALUES ('extensions_enabled', '[\"flarum-flags\",\"flarum-tags\",\"flarum-approval\",\"ianm-synopsis\",\"fof-pages\",\"fof-links\",\"flarum-suspend\",\"flarum-subscriptions\",\"flarum-sticky\",\"flarum-statistics\",\"flarum-mentions\",\"flarum-markdown\",\"flarum-lock\",\"flarum-likes\",\"flarum-lang-english\",\"flarum-lang-chinese-simplified\",\"flarum-emoji\",\"flarum-bbcode\"]');
INSERT INTO `settings` VALUES ('favicon_path', 'favicon-mbvyytix.png');
INSERT INTO `settings` VALUES ('flarum-markdown.mdarea', '1');
INSERT INTO `settings` VALUES ('flarum-mentions.allow_username_format', '1');
INSERT INTO `settings` VALUES ('flarum-tags.max_primary_tags', '1');
INSERT INTO `settings` VALUES ('flarum-tags.max_secondary_tags', '3');
INSERT INTO `settings` VALUES ('flarum-tags.min_primary_tags', '1');
INSERT INTO `settings` VALUES ('flarum-tags.min_secondary_tags', '0');
INSERT INTO `settings` VALUES ('forum_description', '');
INSERT INTO `settings` VALUES ('forum_title', '51ShowAi');
INSERT INTO `settings` VALUES ('ianm-synopsis.excerpt-type', 'first');
INSERT INTO `settings` VALUES ('ianm-synopsis.rich-excerpts', '');
INSERT INTO `settings` VALUES ('logo_path', 'logo-bqqo0m6x.png');
INSERT INTO `settings` VALUES ('mail_driver', 'smtp');
INSERT INTO `settings` VALUES ('mail_encryption', 'ssl');
INSERT INTO `settings` VALUES ('mail_from', 'showai51@163.com');
INSERT INTO `settings` VALUES ('mail_host', 'smtp.163.com');
INSERT INTO `settings` VALUES ('mail_password', '');
INSERT INTO `settings` VALUES ('mail_port', '465 ');
INSERT INTO `settings` VALUES ('mail_username', 'showai51@163.com');
INSERT INTO `settings` VALUES ('show_language_selector', '');
INSERT INTO `settings` VALUES ('slug_driver_Flarum\\Discussion\\Discussion', '');
INSERT INTO `settings` VALUES ('slug_driver_Flarum\\User\\User', 'default');
INSERT INTO `settings` VALUES ('theme_colored_header', '0');
INSERT INTO `settings` VALUES ('theme_dark_mode', '0');
INSERT INTO `settings` VALUES ('theme_primary_color', '#E7672E');
INSERT INTO `settings` VALUES ('theme_secondary_color', '#4D698E');
INSERT INTO `settings` VALUES ('version', '1.8.1');
INSERT INTO `settings` VALUES ('welcome_message', '51ShowAi是一个提供AI提示词的平台，它集合了提示词搜索、一键获取、多语言支持、社区协作等功能,可以帮助用户轻松获取适合不同场景和需求的高质量提示词,从而提高工作效率和创造力。\n');
INSERT INTO `settings` VALUES ('welcome_title', 'Welcome to 51ShowAi');

-- ----------------------------
-- Table structure for tag_user
-- ----------------------------
DROP TABLE IF EXISTS `tag_user`;
CREATE TABLE `tag_user`  (
  `user_id` int UNSIGNED NOT NULL,
  `tag_id` int UNSIGNED NOT NULL,
  `marked_as_read_at` datetime NULL DEFAULT NULL,
  `is_hidden` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`user_id`, `tag_id`) USING BTREE,
  INDEX `tag_user_tag_id_foreign`(`tag_id` ASC) USING BTREE,
  CONSTRAINT `tag_user_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `tag_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tag_user
-- ----------------------------

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `background_path` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `background_mode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `position` int NULL DEFAULT NULL,
  `parent_id` int UNSIGNED NULL DEFAULT NULL,
  `default_sort` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_restricted` tinyint(1) NOT NULL DEFAULT 0,
  `is_hidden` tinyint(1) NOT NULL DEFAULT 0,
  `discussion_count` int UNSIGNED NOT NULL DEFAULT 0,
  `last_posted_at` datetime NULL DEFAULT NULL,
  `last_posted_discussion_id` int UNSIGNED NULL DEFAULT NULL,
  `last_posted_user_id` int UNSIGNED NULL DEFAULT NULL,
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `excerpt_length` int UNSIGNED NULL DEFAULT NULL,
  `rich_excerpts` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `tags_slug_unique`(`slug` ASC) USING BTREE,
  INDEX `tags_parent_id_foreign`(`parent_id` ASC) USING BTREE,
  INDEX `tags_last_posted_user_id_foreign`(`last_posted_user_id` ASC) USING BTREE,
  INDEX `tags_last_posted_discussion_id_foreign`(`last_posted_discussion_id` ASC) USING BTREE,
  CONSTRAINT `tags_last_posted_discussion_id_foreign` FOREIGN KEY (`last_posted_discussion_id`) REFERENCES `discussions` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT,
  CONSTRAINT `tags_last_posted_user_id_foreign` FOREIGN KEY (`last_posted_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT,
  CONSTRAINT `tags_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `tags` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO `tags` VALUES (1, '写作', 'writer', '当我们面对一张空白的纸，开始我们的写作旅程时，我们可能会感到无从下手。试试他，他就像是一盏指路灯，它可以引导我们的思维，帮助我们找到写作的方向。', '#9354CA', NULL, NULL, 0, NULL, NULL, 0, 0, 13, '2023-09-13 06:00:49', 21, 1, 'fas fa-file-word', NULL, '2023-09-13 15:10:42', 50, 1);
INSERT INTO `tags` VALUES (2, '编程', 'dev', '如果需要编程帮助，可以提供一些思路和提示，工具可以帮助你写代码。', '#D68B4F', NULL, NULL, 2, NULL, NULL, 0, 0, 1, '2023-09-13 09:57:43', 27, 1, 'fas fa-code', '2023-09-04 11:03:27', '2023-09-13 17:57:43', NULL, NULL);
INSERT INTO `tags` VALUES (3, '学术教育', 'education', '当你需要论文润色，寻找全面而深入的论文总结，或者寻求教育方面的帮助时，你会在这里找到需要的例子。', '#48BF83', NULL, NULL, 4, NULL, NULL, 0, 0, 2, '2023-09-13 09:45:21', 25, 1, 'fas fa-graduation-cap', '2023-09-04 11:11:17', '2023-09-13 17:45:21', NULL, NULL);
INSERT INTO `tags` VALUES (4, '语言翻译', 'language', '如果您正在寻找一个能够处理各种语言翻译的工具，那么您已经找到了正确的地方。', '#EF564F', NULL, NULL, 1, NULL, NULL, 0, 0, 2, '2023-09-13 09:49:59', 26, 1, 'fas fa-language', '2023-09-04 11:22:27', '2023-09-13 17:49:59', NULL, NULL);
INSERT INTO `tags` VALUES (5, '健康顾问', 'health', '作为您的健康顾问，致力于提供实用、科学、精确的健康建议，以帮助您维护和提高生活质量。', '#4B93D1', NULL, NULL, 5, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 'fas fa-book-medical', '2023-09-04 11:27:31', '2023-09-13 15:10:42', NULL, NULL);
INSERT INTO `tags` VALUES (6, '行业职位', 'profession', '行业帮手，专注于提供全方位的招聘方案，产品需求分析以及发展建议，致力于帮助您的业务走向成功。', '#EF564F', NULL, NULL, 6, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 'fas fa-briefcase', '2023-09-04 11:33:50', '2023-09-13 15:10:42', NULL, NULL);
INSERT INTO `tags` VALUES (7, '项目推荐', 'recommendation', '如果你发现有创意的项目，可以推荐给大家。', '#d37d3c', NULL, NULL, 7, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 'fas fa-atom', '2023-09-04 11:44:25', '2023-09-13 15:10:42', NULL, NULL);
INSERT INTO `tags` VALUES (8, '绘画', 'draw', '通过为提供的图像描述填充详细且有创意的描述，激发 Midjourney 生成独特有趣的图像。', '#7a4848', NULL, NULL, 8, NULL, NULL, 0, 0, 1, '2023-09-13 06:49:04', 22, 1, 'fas fa-seedling', '2023-09-13 14:45:02', '2023-09-13 15:10:42', NULL, NULL);
INSERT INTO `tags` VALUES (9, '社交', 'social', '在社交场合中，我们时常会遇到尴尬的沉默或者不知道该如何继续对话。为了帮助你避免这种情况，我建议你尝试。', '#a34343', NULL, NULL, 3, NULL, NULL, 0, 0, 1, '2023-09-13 07:14:26', 24, 1, 'fas fa-heart', '2023-09-13 15:10:39', '2023-09-13 15:14:26', NULL, NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_email_confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `preferences` blob NULL,
  `joined_at` datetime NULL DEFAULT NULL,
  `last_seen_at` datetime NULL DEFAULT NULL,
  `marked_all_as_read_at` datetime NULL DEFAULT NULL,
  `read_notifications_at` datetime NULL DEFAULT NULL,
  `discussion_count` int UNSIGNED NOT NULL DEFAULT 0,
  `comment_count` int UNSIGNED NOT NULL DEFAULT 0,
  `read_flags_at` datetime NULL DEFAULT NULL,
  `suspended_until` datetime NULL DEFAULT NULL,
  `suspend_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `suspend_message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_username_unique`(`username` ASC) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE,
  INDEX `users_joined_at_index`(`joined_at` ASC) USING BTREE,
  INDEX `users_last_seen_at_index`(`last_seen_at` ASC) USING BTREE,
  INDEX `users_discussion_count_index`(`discussion_count` ASC) USING BTREE,
  INDEX `users_comment_count_index`(`comment_count` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, '51ShowAI', '1752338621@qq.com', 1, '$2y$10$qkzKLclXHbmsRBHxWRI2MeSeuoIW6mJHOv.h3nzHPSTrhRLZnNnra', 'lcCW4aJ6852sHLeA.png', NULL, '2023-08-31 09:48:30', '2023-09-14 01:57:39', NULL, NULL, 22, 23, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (2, '51showai-dev', '51showai@qq.com', 1, '$2y$10$rde1GVMsG9ucLSJZYHP8JuzbssO.1dLdqBPJh.uBrUPKGTZPCxa92', NULL, NULL, '2023-09-04 09:35:07', '2023-09-14 01:55:44', NULL, '2023-09-05 07:38:59', 0, 0, NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;

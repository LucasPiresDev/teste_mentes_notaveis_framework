SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for atividades
-- ----------------------------
DROP TABLE IF EXISTS `atividades`;
CREATE TABLE `atividades`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_modulo` int(11) NULL DEFAULT NULL,
  `titulo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `descricao` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `dt_cadastro` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_alteracao` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `status` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `deleted_at` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `created_at` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_id_modulo`(`id_modulo`) USING BTREE,
  CONSTRAINT `fk_id_modulo` FOREIGN KEY (`id_modulo`) REFERENCES `modulos` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of atividades
-- ----------------------------
INSERT INTO `atividades` VALUES (6, 4, 'titulo atividade 1', 'desc atividade 1', '2019-04-06 12:58:16', '2019-04-08 03:26:25', 'ativo', NULL, '2019-04-08 06:26:25', NULL);
INSERT INTO `atividades` VALUES (7, 5, 'titulo atividade 5', 'desc atividade 5', '2019-04-08 03:25:14', '2019-04-08 03:25:23', NULL, '2019-04-08 06:25:23', '2019-04-08 06:25:23', '2019-04-08 06:25:14');
INSERT INTO `atividades` VALUES (8, 5, 'dfgdsf', 'sdfgsdfg', '2019-04-08 03:26:12', '2019-04-08 03:26:17', NULL, '2019-04-08 06:26:17', '2019-04-08 06:26:17', '2019-04-08 06:26:12');

-- ----------------------------
-- Table structure for modulos
-- ----------------------------
DROP TABLE IF EXISTS `modulos`;
CREATE TABLE `modulos`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `descricao` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `dt_cadastro` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_alteracao` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `status` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `deleted_at` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `created_at` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of modulos
-- ----------------------------
INSERT INTO `modulos` VALUES (4, 'titulo modulo 3', 'desc modulo 3', '2019-04-06 06:38:55', '2019-04-06 12:39:15', 'ativo', NULL, NULL, NULL);
INSERT INTO `modulos` VALUES (5, 'titulo modulo 4', 'desc modulo 4', '2019-04-06 12:57:46', NULL, 'ativo', NULL, NULL, NULL);
INSERT INTO `modulos` VALUES (6, 'titulo modulo 5o', 'desc modulo 59', '2019-04-08 03:24:15', '2019-04-08 03:25:45', NULL, '2019-04-08 06:25:45', '2019-04-08 06:25:45', '2019-04-08 06:24:15');

SET FOREIGN_KEY_CHECKS = 1;

/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : xlh_basic_oauth

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-04-28 17:03:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for api_migration
-- ----------------------------
DROP TABLE IF EXISTS `api_migration`;
CREATE TABLE `api_migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of api_migration
-- ----------------------------
INSERT INTO `api_migration` VALUES ('m000000_000000_base', '1556420809');
INSERT INTO `api_migration` VALUES ('m140501_075311_add_oauth2_server', '1556420996');

-- ----------------------------
-- Table structure for api_oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `api_oauth_access_tokens`;
CREATE TABLE `api_oauth_access_tokens` (
  `access_token` varchar(40) NOT NULL,
  `client_id` varchar(32) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`access_token`),
  KEY `client_id` (`client_id`),
  CONSTRAINT `api_oauth_access_tokens_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `api_oauth_clients` (`client_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of api_oauth_access_tokens
-- ----------------------------
INSERT INTO `api_oauth_access_tokens` VALUES ('092619746fb348885d8ffc4468aaaa1392cf1357', 'testclient', '1', '2019-04-28 16:36:24', null);
INSERT INTO `api_oauth_access_tokens` VALUES ('1f9f8823eb862b7cf2aaa84681861dd8ba6e01c3', 'testclient', '1', '2019-04-28 11:52:34', null);
INSERT INTO `api_oauth_access_tokens` VALUES ('215fe24e40a4ffa938b78d2ddc86963dab4b3a4d', 'testclient', '1', '2019-04-28 16:47:42', null);
INSERT INTO `api_oauth_access_tokens` VALUES ('3a3757c07cda2205c830a3405fd460c111931420', 'testclient', '1', '2019-04-28 11:39:20', null);
INSERT INTO `api_oauth_access_tokens` VALUES ('3ea7c0899b28f44c5ecdb020fd9859b34048fe8b', 'testclient', '1', '2019-04-28 16:17:25', null);
INSERT INTO `api_oauth_access_tokens` VALUES ('413f602fbe8b7db23008909de8a7641184491038', 'testclient', '1', '2019-04-28 14:29:27', null);
INSERT INTO `api_oauth_access_tokens` VALUES ('4475b51307d83d40e85f8b0b63229aa42e49bd30', 'testclient', '1', '2019-04-28 15:16:36', null);
INSERT INTO `api_oauth_access_tokens` VALUES ('4ce730402584080536b2a31cf650fbffbe56cba1', 'testclient', '1', '2019-04-28 14:36:44', null);
INSERT INTO `api_oauth_access_tokens` VALUES ('560d8ea47f2f81aa425950a84089d13955a196fe', 'testclient', '1', '2019-04-28 14:31:23', null);
INSERT INTO `api_oauth_access_tokens` VALUES ('59383b309e841a3f89ff493bc61a2677e8c7f208', 'testclient', '1', '2019-04-28 16:43:18', null);
INSERT INTO `api_oauth_access_tokens` VALUES ('5968971bc6a9f0534589ee90f6c929e161cb9352', 'testclient', '1', '2019-04-28 15:54:14', null);
INSERT INTO `api_oauth_access_tokens` VALUES ('5e961169767b13ad52c8599f3a5ce853a20ea3a9', 'testclient', '1', '2019-04-28 16:52:35', null);
INSERT INTO `api_oauth_access_tokens` VALUES ('6b37b273a2696b1c180eca3d628ae9436623800d', 'testclient', '1', '2019-04-28 16:24:42', null);
INSERT INTO `api_oauth_access_tokens` VALUES ('72df5f39af5c8b09d8dcc4638d4e85c9ca5f3c40', 'testclient', '1', '2019-04-28 11:39:18', null);
INSERT INTO `api_oauth_access_tokens` VALUES ('76852f73365c9c6a0f3c7615c53e777e2c529dca', 'testclient', '1', '2019-04-28 11:30:09', null);
INSERT INTO `api_oauth_access_tokens` VALUES ('76f5be1183f00d2c5e5d8ab18d63eb656334c7f3', 'testclient', '1', '2019-04-28 15:48:09', null);
INSERT INTO `api_oauth_access_tokens` VALUES ('7ac60a9d8a2c3bbb346f74475330dddee47e3d54', 'testclient', '1', '2019-04-28 16:22:57', null);
INSERT INTO `api_oauth_access_tokens` VALUES ('7df5b20cffcb38fcaad5ef028c21e40878e8e693', 'testclient', '1', '2019-04-28 16:54:37', null);
INSERT INTO `api_oauth_access_tokens` VALUES ('8207685774477f1a07fc66ec23250379d4d7490c', 'testclient', '1', '2019-04-28 14:37:15', null);
INSERT INTO `api_oauth_access_tokens` VALUES ('82510db4a39b7cc0ca1a2f6ca54055053282ae1c', 'testclient', '1', '2019-04-28 16:45:33', null);
INSERT INTO `api_oauth_access_tokens` VALUES ('8324eee0627e21be54dec40f35200d9220424a9d', 'testclient', '1', '2019-04-28 14:30:09', null);
INSERT INTO `api_oauth_access_tokens` VALUES ('8a78f4d8996ff6f446ac0f8f040fdbadedc84248', 'testclient', '1', '2019-04-28 11:32:24', null);
INSERT INTO `api_oauth_access_tokens` VALUES ('8b410021cba7e31957d7d9b0ccd3c7ff03a2ae12', 'testclient', '2', '2019-04-28 15:53:21', null);
INSERT INTO `api_oauth_access_tokens` VALUES ('952d0852925aad4dc3bc96e38acb8c5e4c022778', 'testclient', '1', '2019-04-28 11:30:17', null);
INSERT INTO `api_oauth_access_tokens` VALUES ('991161b5c2fb90b359e85c4bba9e9b3ef3cf4197', 'testclient', '1', '2019-04-28 15:28:39', null);
INSERT INTO `api_oauth_access_tokens` VALUES ('9cc75b40056b5fa9b95aa933fd4d7d3a8ace11b7', 'testclient', '1', '2019-04-28 16:45:02', null);
INSERT INTO `api_oauth_access_tokens` VALUES ('adb130be0d2cfa7328a486d73dcdf3304c6d7415', 'testclient', '1', '2019-04-28 13:03:56', null);
INSERT INTO `api_oauth_access_tokens` VALUES ('b692a2333db6e3070c52f67782473441b3ef465b', 'testclient', '1', '2019-04-28 16:47:04', null);
INSERT INTO `api_oauth_access_tokens` VALUES ('ba2b7ea81f65966296d4943c833b9417eca65d7b', 'testclient', '1', '2019-04-28 11:56:06', null);
INSERT INTO `api_oauth_access_tokens` VALUES ('be344c4cacee3faa6e58b1992e67e1026fb4abec', 'testclient', '1', '2019-04-28 11:26:54', null);
INSERT INTO `api_oauth_access_tokens` VALUES ('c265e3c54c9a4ba440f75071eb7a14702c92d6a2', 'testclient', '1', '2019-04-28 15:30:03', null);
INSERT INTO `api_oauth_access_tokens` VALUES ('c4510c9c5b649925757ee3bb72d7abe4215d6165', 'testclient', '1', '2019-04-28 11:30:07', null);
INSERT INTO `api_oauth_access_tokens` VALUES ('d504bcc33939e24a7b0a4393b70cecb359ee6261', 'testclient', '1', '2019-04-28 13:04:58', null);
INSERT INTO `api_oauth_access_tokens` VALUES ('da93950f8e68331b73555dfd72b6659d5040f2c3', 'testclient', '1', '2019-04-28 16:41:45', null);
INSERT INTO `api_oauth_access_tokens` VALUES ('dd2f1e6257777f98bf533f5a8cc2ec7a08ab0147', 'testclient', '1', '2019-04-28 16:53:18', null);
INSERT INTO `api_oauth_access_tokens` VALUES ('e14b141c780ccc16060691e3b34a58134963c593', 'testclient', '1', '2019-04-28 16:25:30', null);
INSERT INTO `api_oauth_access_tokens` VALUES ('e970dcd6f470377c6053f09e14e1165d15c0bcbd', 'testclient', '1', '2019-04-28 16:41:20', null);
INSERT INTO `api_oauth_access_tokens` VALUES ('f7939791275197ce906647610f91074e2e9b72f2', 'testclient', '1', '2019-04-28 11:58:56', null);

-- ----------------------------
-- Table structure for api_oauth_authorization_codes
-- ----------------------------
DROP TABLE IF EXISTS `api_oauth_authorization_codes`;
CREATE TABLE `api_oauth_authorization_codes` (
  `authorization_code` varchar(40) NOT NULL,
  `client_id` varchar(32) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `redirect_uri` varchar(1000) NOT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`authorization_code`),
  KEY `client_id` (`client_id`),
  CONSTRAINT `api_oauth_authorization_codes_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `api_oauth_clients` (`client_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of api_oauth_authorization_codes
-- ----------------------------

-- ----------------------------
-- Table structure for api_oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `api_oauth_clients`;
CREATE TABLE `api_oauth_clients` (
  `client_id` varchar(32) NOT NULL,
  `client_secret` varchar(32) DEFAULT NULL,
  `redirect_uri` varchar(1000) NOT NULL,
  `grant_types` varchar(100) NOT NULL,
  `scope` varchar(2000) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of api_oauth_clients
-- ----------------------------
INSERT INTO `api_oauth_clients` VALUES ('testclient', 'testpass', 'http://fake/', 'client_credentials authorization_code password implicit', null, null);

-- ----------------------------
-- Table structure for api_oauth_jwt
-- ----------------------------
DROP TABLE IF EXISTS `api_oauth_jwt`;
CREATE TABLE `api_oauth_jwt` (
  `client_id` varchar(32) NOT NULL,
  `subject` varchar(80) DEFAULT NULL,
  `public_key` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of api_oauth_jwt
-- ----------------------------

-- ----------------------------
-- Table structure for api_oauth_public_keys
-- ----------------------------
DROP TABLE IF EXISTS `api_oauth_public_keys`;
CREATE TABLE `api_oauth_public_keys` (
  `client_id` varchar(255) NOT NULL,
  `public_key` varchar(2000) DEFAULT NULL,
  `private_key` varchar(2000) DEFAULT NULL,
  `encryption_algorithm` varchar(100) DEFAULT 'RS256'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of api_oauth_public_keys
-- ----------------------------

-- ----------------------------
-- Table structure for api_oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `api_oauth_refresh_tokens`;
CREATE TABLE `api_oauth_refresh_tokens` (
  `refresh_token` varchar(40) NOT NULL,
  `client_id` varchar(32) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`refresh_token`),
  KEY `client_id` (`client_id`),
  CONSTRAINT `api_oauth_refresh_tokens_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `api_oauth_clients` (`client_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of api_oauth_refresh_tokens
-- ----------------------------
INSERT INTO `api_oauth_refresh_tokens` VALUES ('01fed91f76cce1dc69029f5dfc03a44a8e6b6601', 'testclient', '1', '2019-05-12 16:44:32', null);
INSERT INTO `api_oauth_refresh_tokens` VALUES ('0accc480a3ac24d47af2684d53f7f52dfa8f4ef0', 'testclient', '1', '2019-05-12 16:25:20', null);
INSERT INTO `api_oauth_refresh_tokens` VALUES ('0ae30163890bea4bcc72834d52150fcfe37c1f94', 'testclient', '1', '2019-05-12 11:29:59', null);
INSERT INTO `api_oauth_refresh_tokens` VALUES ('0b8339c0d2c69879e07b91ca93ef24aa73b77281', 'testclient', '1', '2019-05-12 16:41:35', null);
INSERT INTO `api_oauth_refresh_tokens` VALUES ('164017884ac3aa201f9dee6ff84792f4b335c1bb', 'testclient', '1', '2019-05-12 14:30:53', null);
INSERT INTO `api_oauth_refresh_tokens` VALUES ('17a9b9a7e9e74e26072ecff82b622d5cb067aa9c', 'testclient', '1', '2019-05-12 16:45:03', null);
INSERT INTO `api_oauth_refresh_tokens` VALUES ('1a9e97bb8c93bed1a189795fb77dc427cf99d022', 'testclient', '1', '2019-05-12 11:26:44', null);
INSERT INTO `api_oauth_refresh_tokens` VALUES ('1ce9907a45edb00299ed32586c6125c835600432', 'testclient', '1', '2019-05-12 11:38:48', null);
INSERT INTO `api_oauth_refresh_tokens` VALUES ('1f29e9cc47e27b4a92137a5288ac24a0ffa0c12b', 'testclient', '1', '2019-05-12 16:47:12', null);
INSERT INTO `api_oauth_refresh_tokens` VALUES ('23511d44b0b305c504fd0f7e9a08870ed940c727', 'testclient', '1', '2019-05-12 13:04:28', null);
INSERT INTO `api_oauth_refresh_tokens` VALUES ('3993dcc3c47876167a59a285122d8159c34fa922', 'testclient', '1', '2019-05-12 16:24:32', null);
INSERT INTO `api_oauth_refresh_tokens` VALUES ('460288a476f949b6a516e5ee081605ee2be33bdd', 'testclient', '1', '2019-05-12 14:36:14', null);
INSERT INTO `api_oauth_refresh_tokens` VALUES ('51b19439a3c2ff19c53d57596516fc798eb16778', 'testclient', '1', '2019-05-12 14:28:57', null);
INSERT INTO `api_oauth_refresh_tokens` VALUES ('51ffed976b360f84af0d716036905c74481fa57f', 'testclient', '1', '2019-05-12 15:54:04', null);
INSERT INTO `api_oauth_refresh_tokens` VALUES ('520b7dc27ccc01d01a0f69582637043da8227d4b', 'testclient', '1', '2019-05-12 16:36:14', null);
INSERT INTO `api_oauth_refresh_tokens` VALUES ('573435f251d0cef05b26763041dfdd76f54314ec', 'testclient', '1', '2019-05-12 11:52:04', null);
INSERT INTO `api_oauth_refresh_tokens` VALUES ('59655c60b1c095ecaa660c72f7cd8bdda358d320', 'testclient', '1', '2019-05-12 11:55:36', null);
INSERT INTO `api_oauth_refresh_tokens` VALUES ('5eb6a96cddd24f974c44f04c303b516221f8834c', 'testclient', '1', '2019-05-12 14:40:03', null);
INSERT INTO `api_oauth_refresh_tokens` VALUES ('631e4b9a9b4cbacba53824d002b5760ea83794bd', 'testclient', '1', '2019-05-12 11:30:07', null);
INSERT INTO `api_oauth_refresh_tokens` VALUES ('63834438bb1d4343545b2f36c03b1ba7a7baa8a4', 'testclient', '1', '2019-05-12 11:38:50', null);
INSERT INTO `api_oauth_refresh_tokens` VALUES ('66ad17d4129d86ec4a5fcf7e840238da2c55fad3', 'testclient', '1', '2019-05-12 14:58:09', null);
INSERT INTO `api_oauth_refresh_tokens` VALUES ('6ed83ae7fecf470d705465371aa316c164d25622', 'testclient', '1', '2019-05-12 13:03:26', null);
INSERT INTO `api_oauth_refresh_tokens` VALUES ('72474fcd51a5088487fce15cd726a15bd1403753', 'testclient', '1', '2019-05-12 14:29:39', null);
INSERT INTO `api_oauth_refresh_tokens` VALUES ('795c1e441877e3a7d73660bb8082eee4046cd72b', 'testclient', '1', '2019-05-12 14:36:45', null);
INSERT INTO `api_oauth_refresh_tokens` VALUES ('8c412b5deb39eade98b6cf5b73d242d5f1899f62', 'testclient', '1', '2019-05-12 11:29:57', null);
INSERT INTO `api_oauth_refresh_tokens` VALUES ('a8ecceff0e7d0b264944b20ce92e60d3733120d5', 'testclient', '1', '2019-05-12 15:28:29', null);
INSERT INTO `api_oauth_refresh_tokens` VALUES ('b36788d32ebc6294564e9b5d7e07f9fb05146354', 'testclient', '1', '2019-05-12 16:17:15', null);
INSERT INTO `api_oauth_refresh_tokens` VALUES ('b5047e9e589c9c08101d5d598349923704d83a2e', 'testclient', '2', '2019-05-12 15:53:11', null);
INSERT INTO `api_oauth_refresh_tokens` VALUES ('b8054ca8d106d050c2a896be2edc095f14526b0b', 'testclient', '1', '2019-05-12 16:46:34', null);
INSERT INTO `api_oauth_refresh_tokens` VALUES ('c0908442a2d0ab827c691dab6d39853b20b572de', 'testclient', '1', '2019-05-12 16:43:08', null);
INSERT INTO `api_oauth_refresh_tokens` VALUES ('c8f0f28cd2c5f6183a8dabd748ac6b53c2477ea4', 'testclient', '1', '2019-05-12 16:41:10', null);
INSERT INTO `api_oauth_refresh_tokens` VALUES ('cc984f6d7914b7499787735d7ac0acc28935314b', 'testclient', '1', '2019-05-12 16:22:47', null);
INSERT INTO `api_oauth_refresh_tokens` VALUES ('d266797b9d823bed9738eddaaf91921377fb5e82', 'testclient', '1', '2019-05-12 16:54:07', null);
INSERT INTO `api_oauth_refresh_tokens` VALUES ('d59fdc6c4025a1d657a4728b25334dcb6c28dccb', 'testclient', '1', '2019-05-12 15:16:26', null);
INSERT INTO `api_oauth_refresh_tokens` VALUES ('d67a32d8f77d57c8db35cbc480f9f27c1c0997de', 'testclient', '1', '2019-05-12 11:32:14', null);
INSERT INTO `api_oauth_refresh_tokens` VALUES ('f19c9526d51ad6c10e9153cbf7a7a8e66c0c8a49', 'testclient', '1', '2019-05-12 16:52:05', null);
INSERT INTO `api_oauth_refresh_tokens` VALUES ('f2c17d50cc695f8ec70f5df9fee7f05b083a72f2', 'testclient', '1', '2019-05-12 11:58:26', null);
INSERT INTO `api_oauth_refresh_tokens` VALUES ('f5d329c0e5c3eb49e27dc432f623202bb84d7c28', 'testclient', '1', '2019-05-12 16:52:48', null);

-- ----------------------------
-- Table structure for api_oauth_scopes
-- ----------------------------
DROP TABLE IF EXISTS `api_oauth_scopes`;
CREATE TABLE `api_oauth_scopes` (
  `scope` varchar(2000) NOT NULL,
  `is_default` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of api_oauth_scopes
-- ----------------------------

-- ----------------------------
-- Table structure for api_oauth_users
-- ----------------------------
DROP TABLE IF EXISTS `api_oauth_users`;
CREATE TABLE `api_oauth_users` (
  `username` varchar(255) NOT NULL,
  `password` varchar(2000) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of api_oauth_users
-- ----------------------------

-- ----------------------------
-- Table structure for api_user
-- ----------------------------
DROP TABLE IF EXISTS `api_user`;
CREATE TABLE `api_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `auth_key` varchar(32) NOT NULL COMMENT '自动登录key',
  `password_hash` varchar(255) NOT NULL COMMENT '加密密码',
  `password_reset_token` varchar(255) DEFAULT NULL COMMENT '重置密码token',
  `email` varchar(255) NOT NULL COMMENT '邮箱',
  `role` smallint(6) NOT NULL DEFAULT '10' COMMENT '角色等级',
  `status` smallint(6) NOT NULL DEFAULT '10' COMMENT '状态',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of api_user
-- ----------------------------
INSERT INTO `api_user` VALUES ('1', 'wujiepeng', 'k6I71kUplDkwV2bRNjC3-S9p-Zwq1cr7', '$2y$13$cuTZW7tMRNEltmvcWVCLm.bPOGVfgLqdeLAosU3AQuVluuvWpK3jy', null, '517987404@qq.com', '10', '10', '0', '0');
INSERT INTO `api_user` VALUES ('2', 'wangjingjing', 'Glox98tvzNgpugXu095a-VMVZ6ypc7bt', '$2y$13$4EtpJARuIYe2S5xKWPDi2OfeFoHlvFwS0XU1sX67LzbFuzeJqbBmq', null, '517987404@qq.com', '10', '10', '0', '0');
INSERT INTO `api_user` VALUES ('3', 'zhujie', 'o0dz2k-Ox6BALXKZK-uFJvEio8pKnXxA', '$2y$13$6X1YYEUU5s/rdzy97qDXe.CledSAHEmBW9spGZL91oXwELvB9J/iq', null, '517987404@qq.com', '10', '10', '1524238738', '1524238738');

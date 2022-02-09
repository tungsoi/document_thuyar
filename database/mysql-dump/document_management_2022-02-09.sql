# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.4.6-MariaDB)
# Database: document_management
# Generation Time: 2022-02-09 04:02:42 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table admin_menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_menu`;

CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_menu` WRITE;
/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`)
VALUES
	(1,0,1,'Bảng điều khiển','fa-bar-chart','/',NULL,NULL,'2022-01-17 09:41:50'),
	(2,0,4,'Quản trị','fa-tasks',NULL,NULL,NULL,'2022-01-18 11:06:35'),
	(3,2,5,'Quản trị viên','fa-users','auth/users',NULL,NULL,'2022-01-18 11:06:35'),
	(4,2,6,'Vai trò','fa-user','auth/roles',NULL,NULL,'2022-01-18 11:06:35'),
	(5,2,7,'Quyền hạn','fa-ban','auth/permissions',NULL,NULL,'2022-01-18 11:06:35'),
	(6,2,8,'Menu','fa-bars','auth/menu',NULL,NULL,'2022-01-18 11:06:35'),
	(7,2,9,'Log hoạt động','fa-history','auth/logs',NULL,NULL,'2022-01-18 11:06:35'),
	(8,0,3,'Danh mục','fa-briefcase','categories',NULL,'2022-01-18 10:31:10','2022-01-18 11:06:35'),
	(9,0,2,'Tài liệu','fa-file-word-o','documents',NULL,'2022-01-18 11:06:30','2022-01-18 11:06:35');

/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_operation_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_operation_log`;

CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_operation_log` WRITE;
/*!40000 ALTER TABLE `admin_operation_log` DISABLE KEYS */;

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`)
VALUES
	(1,1,'admin','GET','127.0.0.1','[]','2022-01-17 09:29:04','2022-01-17 09:29:04'),
	(2,1,'admin','GET','127.0.0.1','[]','2022-01-17 09:30:18','2022-01-17 09:30:18'),
	(3,1,'admin','GET','127.0.0.1','[]','2022-01-17 09:30:44','2022-01-17 09:30:44'),
	(4,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2022-01-17 09:30:57','2022-01-17 09:30:57'),
	(5,1,'admin/auth/users','GET','127.0.0.1','[]','2022-01-17 09:32:45','2022-01-17 09:32:45'),
	(6,1,'admin/auth/users','GET','127.0.0.1','[]','2022-01-17 09:34:08','2022-01-17 09:34:08'),
	(7,1,'admin/auth/users','GET','127.0.0.1','[]','2022-01-17 09:34:32','2022-01-17 09:34:32'),
	(8,1,'admin/auth/users','GET','127.0.0.1','[]','2022-01-17 09:35:01','2022-01-17 09:35:01'),
	(9,1,'admin/auth/users','GET','127.0.0.1','[]','2022-01-17 09:39:24','2022-01-17 09:39:24'),
	(10,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2022-01-17 09:39:33','2022-01-17 09:39:33'),
	(11,1,'admin','GET','127.0.0.1','[]','2022-01-17 09:39:38','2022-01-17 09:39:38'),
	(12,1,'admin','GET','127.0.0.1','[]','2022-01-17 09:39:55','2022-01-17 09:39:55'),
	(13,1,'admin/auth/setting','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2022-01-17 09:40:59','2022-01-17 09:40:59'),
	(14,1,'admin/auth/setting','GET','127.0.0.1','[]','2022-01-17 09:41:29','2022-01-17 09:41:29'),
	(15,1,'admin/auth/setting','GET','127.0.0.1','[]','2022-01-17 09:41:31','2022-01-17 09:41:31'),
	(16,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2022-01-17 09:41:38','2022-01-17 09:41:38'),
	(17,1,'admin/auth/menu/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2022-01-17 09:41:40','2022-01-17 09:41:40'),
	(18,1,'admin/auth/menu/1','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"B\\u1ea3ng \\u0111i\\u1ec1u khi\\u1ec3n\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":null,\"_token\":\"0RnwPzvbyboIe5lSviOxRv8GkPbvlSVMAgLzznnY\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8004\\/admin\\/auth\\/menu\"}','2022-01-17 09:41:50','2022-01-17 09:41:50'),
	(19,1,'admin/auth/menu','GET','127.0.0.1','[]','2022-01-17 09:41:50','2022-01-17 09:41:50'),
	(20,1,'admin/auth/menu','GET','127.0.0.1','[]','2022-01-17 09:42:04','2022-01-17 09:42:04'),
	(21,1,'admin/auth/menu','GET','127.0.0.1','[]','2022-01-17 16:42:41','2022-01-17 16:42:41'),
	(22,1,'admin/auth/menu/2/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2022-01-17 16:42:44','2022-01-17 16:42:44'),
	(23,1,'admin/auth/menu/2','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"Qu\\u1ea3n tr\\u1ecb\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"0RnwPzvbyboIe5lSviOxRv8GkPbvlSVMAgLzznnY\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8004\\/admin\\/auth\\/menu\"}','2022-01-17 16:42:51','2022-01-17 16:42:51'),
	(24,1,'admin/auth/menu','GET','127.0.0.1','[]','2022-01-17 16:42:51','2022-01-17 16:42:51'),
	(25,1,'admin/auth/menu/3/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2022-01-17 16:42:53','2022-01-17 16:42:53'),
	(26,1,'admin/auth/menu/3','PUT','127.0.0.1','{\"parent_id\":\"2\",\"title\":\"Qu\\u1ea3n tr\\u1ecb vi\\u00ean\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"0RnwPzvbyboIe5lSviOxRv8GkPbvlSVMAgLzznnY\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8004\\/admin\\/auth\\/menu\"}','2022-01-17 16:43:02','2022-01-17 16:43:02'),
	(27,1,'admin/auth/menu','GET','127.0.0.1','[]','2022-01-17 16:43:02','2022-01-17 16:43:02'),
	(28,1,'admin/auth/menu/4/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2022-01-17 16:43:04','2022-01-17 16:43:04'),
	(29,1,'admin/auth/menu/4','PUT','127.0.0.1','{\"parent_id\":\"2\",\"title\":\"Vai tr\\u00f2\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"permission\":null,\"_token\":\"0RnwPzvbyboIe5lSviOxRv8GkPbvlSVMAgLzznnY\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8004\\/admin\\/auth\\/menu\"}','2022-01-17 16:43:13','2022-01-17 16:43:13'),
	(30,1,'admin/auth/menu','GET','127.0.0.1','[]','2022-01-17 16:43:13','2022-01-17 16:43:13'),
	(31,1,'admin/auth/menu/5/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2022-01-17 16:43:29','2022-01-17 16:43:29'),
	(32,1,'admin/auth/menu/5','PUT','127.0.0.1','{\"parent_id\":\"2\",\"title\":\"Quy\\u1ec1n h\\u1ea1n\",\"icon\":\"fa-ban\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"permission\":null,\"_token\":\"0RnwPzvbyboIe5lSviOxRv8GkPbvlSVMAgLzznnY\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8004\\/admin\\/auth\\/menu\"}','2022-01-17 16:43:38','2022-01-17 16:43:38'),
	(33,1,'admin/auth/menu','GET','127.0.0.1','[]','2022-01-17 16:43:38','2022-01-17 16:43:38'),
	(34,1,'admin/auth/menu/7/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2022-01-17 16:43:41','2022-01-17 16:43:41'),
	(35,1,'admin/auth/menu/7','PUT','127.0.0.1','{\"parent_id\":\"2\",\"title\":\"Log ho\\u1ea1t \\u0111\\u1ed9ng\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[null],\"permission\":null,\"_token\":\"0RnwPzvbyboIe5lSviOxRv8GkPbvlSVMAgLzznnY\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8004\\/admin\\/auth\\/menu\"}','2022-01-17 16:43:48','2022-01-17 16:43:48'),
	(36,1,'admin/auth/menu','GET','127.0.0.1','[]','2022-01-17 16:43:48','2022-01-17 16:43:48'),
	(37,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2022-01-17 16:43:50','2022-01-17 16:43:50'),
	(38,1,'admin','GET','127.0.0.1','[]','2022-01-17 16:43:51','2022-01-17 16:43:51'),
	(39,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2022-01-17 16:43:55','2022-01-17 16:43:55'),
	(40,1,'admin/auth/users','GET','127.0.0.1','[]','2022-01-17 16:44:47','2022-01-17 16:44:47'),
	(41,1,'admin/auth/roles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2022-01-17 16:45:07','2022-01-17 16:45:07'),
	(42,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2022-01-17 16:45:10','2022-01-17 16:45:10'),
	(43,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2022-01-17 16:45:11','2022-01-17 16:45:11'),
	(44,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2022-01-17 16:45:12','2022-01-17 16:45:12'),
	(45,1,'admin/auth/setting','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2022-01-17 16:45:19','2022-01-17 16:45:19'),
	(46,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2022-01-17 16:45:20','2022-01-17 16:45:20'),
	(47,1,'admin','GET','127.0.0.1','[]','2022-01-17 16:45:48','2022-01-17 16:45:48'),
	(48,1,'admin','GET','127.0.0.1','[]','2022-01-17 16:46:12','2022-01-17 16:46:12'),
	(49,1,'admin','GET','127.0.0.1','[]','2022-01-17 16:46:27','2022-01-17 16:46:27'),
	(50,1,'admin','GET','127.0.0.1','[]','2022-01-17 16:47:04','2022-01-17 16:47:04'),
	(51,1,'admin','GET','127.0.0.1','[]','2022-01-17 17:02:39','2022-01-17 17:02:39'),
	(52,1,'admin','GET','127.0.0.1','[]','2022-01-18 10:30:46','2022-01-18 10:30:46'),
	(53,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2022-01-18 10:30:53','2022-01-18 10:30:53'),
	(54,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"Danh m\\u1ee5c\",\"icon\":\"fa-briefcase\",\"uri\":\"categories\",\"roles\":[null],\"permission\":null,\"_token\":\"MFO7yDW8UfqvrEc6uqmFtWbzy7dTlWpWvsbFTuj7\"}','2022-01-18 10:31:10','2022-01-18 10:31:10'),
	(55,1,'admin/auth/menu','GET','127.0.0.1','[]','2022-01-18 10:31:10','2022-01-18 10:31:10'),
	(56,1,'admin/auth/menu','GET','127.0.0.1','[]','2022-01-18 10:31:12','2022-01-18 10:31:12'),
	(57,1,'admin/auth/menu','POST','127.0.0.1','{\"_token\":\"MFO7yDW8UfqvrEc6uqmFtWbzy7dTlWpWvsbFTuj7\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}','2022-01-18 10:31:17','2022-01-18 10:31:17'),
	(58,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2022-01-18 10:31:17','2022-01-18 10:31:17'),
	(59,1,'admin/auth/menu','GET','127.0.0.1','[]','2022-01-18 10:31:18','2022-01-18 10:31:18'),
	(60,1,'admin/categories','GET','127.0.0.1','[]','2022-01-18 10:32:05','2022-01-18 10:32:05'),
	(61,1,'admin/categories','GET','127.0.0.1','[]','2022-01-18 10:35:22','2022-01-18 10:35:22'),
	(62,1,'admin/categories','GET','127.0.0.1','[]','2022-01-18 10:36:24','2022-01-18 10:36:24'),
	(63,1,'admin/categories/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2022-01-18 10:36:27','2022-01-18 10:36:27'),
	(64,1,'admin/categories/create','GET','127.0.0.1','[]','2022-01-18 10:36:56','2022-01-18 10:36:56'),
	(65,1,'admin/categories','POST','127.0.0.1','{\"title\":\"Quy tr\\u00ecnh t\\u00e0i ch\\u00ednh\",\"_token\":\"MFO7yDW8UfqvrEc6uqmFtWbzy7dTlWpWvsbFTuj7\"}','2022-01-18 10:37:07','2022-01-18 10:37:07'),
	(66,1,'admin/categories','GET','127.0.0.1','[]','2022-01-18 10:37:08','2022-01-18 10:37:08'),
	(67,1,'admin/categories','GET','127.0.0.1','[]','2022-01-18 10:38:15','2022-01-18 10:38:15'),
	(68,1,'admin/categories','GET','127.0.0.1','[]','2022-01-18 10:38:23','2022-01-18 10:38:23'),
	(69,1,'admin/categories','GET','127.0.0.1','[]','2022-01-18 10:39:18','2022-01-18 10:39:18'),
	(70,1,'admin/categories/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2022-01-18 10:39:33','2022-01-18 10:39:33'),
	(71,1,'admin/categories/1/edit','GET','127.0.0.1','[]','2022-01-18 10:40:14','2022-01-18 10:40:14'),
	(72,1,'admin/categories/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2022-01-18 10:40:17','2022-01-18 10:40:17'),
	(73,1,'admin/categories/1','GET','127.0.0.1','[]','2022-01-18 10:40:37','2022-01-18 10:40:37'),
	(74,1,'admin/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2022-01-18 10:40:40','2022-01-18 10:40:40'),
	(75,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2022-01-18 11:06:12','2022-01-18 11:06:12'),
	(76,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"T\\u00e0i li\\u1ec7u\",\"icon\":\"fa-file-word-o\",\"uri\":\"documents\",\"roles\":[null],\"permission\":null,\"_token\":\"MFO7yDW8UfqvrEc6uqmFtWbzy7dTlWpWvsbFTuj7\"}','2022-01-18 11:06:30','2022-01-18 11:06:30'),
	(77,1,'admin/auth/menu','GET','127.0.0.1','[]','2022-01-18 11:06:30','2022-01-18 11:06:30'),
	(78,1,'admin/auth/menu','POST','127.0.0.1','{\"_token\":\"MFO7yDW8UfqvrEc6uqmFtWbzy7dTlWpWvsbFTuj7\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":9},{\\\"id\\\":8},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}','2022-01-18 11:06:35','2022-01-18 11:06:35'),
	(79,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2022-01-18 11:06:35','2022-01-18 11:06:35'),
	(80,1,'admin/auth/menu','GET','127.0.0.1','[]','2022-01-18 11:06:36','2022-01-18 11:06:36'),
	(81,1,'admin/documents','GET','127.0.0.1','[]','2022-01-18 11:33:08','2022-01-18 11:33:08'),
	(82,1,'admin/documents','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2022-01-18 11:33:13','2022-01-18 11:33:13'),
	(83,1,'admin/documents','GET','127.0.0.1','[]','2022-01-18 11:33:23','2022-01-18 11:33:23'),
	(84,1,'admin/documents/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2022-01-18 11:33:29','2022-01-18 11:33:29'),
	(85,1,'admin/documents/create','GET','127.0.0.1','[]','2022-01-18 11:41:46','2022-01-18 11:41:46'),
	(86,1,'admin/documents','POST','127.0.0.1','{\"title\":\"test\",\"_token\":\"MFO7yDW8UfqvrEc6uqmFtWbzy7dTlWpWvsbFTuj7\"}','2022-01-18 11:41:53','2022-01-18 11:41:53'),
	(87,1,'admin/documents','GET','127.0.0.1','[]','2022-01-18 11:41:53','2022-01-18 11:41:53'),
	(88,1,'admin/documents/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2022-01-18 15:08:23','2022-01-18 15:08:23'),
	(89,1,'admin/documents','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2022-01-18 15:09:26','2022-01-18 15:09:26'),
	(90,1,'admin/documents/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2022-01-18 15:24:06','2022-01-18 15:24:06'),
	(91,1,'admin/documents/1/edit','GET','127.0.0.1','[]','2022-01-18 15:24:33','2022-01-18 15:24:33'),
	(92,1,'admin/documents','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2022-01-18 15:24:45','2022-01-18 15:24:45'),
	(93,1,'admin/documents/1','DELETE','127.0.0.1','{\"_method\":\"delete\",\"_token\":\"MOSaJ2wQrSvCnjBaxebwr4I3uhzM4WT33jH5h6Yc\"}','2022-01-18 15:24:48','2022-01-18 15:24:48'),
	(94,1,'admin/documents','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2022-01-18 15:24:48','2022-01-18 15:24:48'),
	(95,1,'admin/documents/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2022-01-18 15:24:50','2022-01-18 15:24:50'),
	(96,1,'admin','GET','127.0.0.1','[]','2022-02-09 11:01:40','2022-02-09 11:01:40');

/*!40000 ALTER TABLE `admin_operation_log` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_permissions`;

CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`),
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`)
VALUES
	(1,'All permission','*','','*',NULL,NULL),
	(2,'Dashboard','dashboard','GET','/',NULL,NULL),
	(3,'Login','auth.login','','/auth/login\r\n/auth/logout',NULL,NULL),
	(4,'User setting','auth.setting','GET,PUT','/auth/setting',NULL,NULL),
	(5,'Auth management','auth.management','','/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs',NULL,NULL);

/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_role_menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_role_menu`;

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_role_menu` WRITE;
/*!40000 ALTER TABLE `admin_role_menu` DISABLE KEYS */;

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`)
VALUES
	(1,2,NULL,NULL);

/*!40000 ALTER TABLE `admin_role_menu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_role_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_role_permissions`;

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_role_permissions` WRITE;
/*!40000 ALTER TABLE `admin_role_permissions` DISABLE KEYS */;

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`)
VALUES
	(1,1,NULL,NULL);

/*!40000 ALTER TABLE `admin_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_role_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_role_users`;

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_role_users` WRITE;
/*!40000 ALTER TABLE `admin_role_users` DISABLE KEYS */;

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`)
VALUES
	(1,1,NULL,NULL);

/*!40000 ALTER TABLE `admin_role_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_roles`;

CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`),
  UNIQUE KEY `admin_roles_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`)
VALUES
	(1,'Administrator','administrator','2022-01-17 09:27:38','2022-01-17 09:27:38');

/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_user_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_user_permissions`;

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table admin_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_users`;

CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'admin','$2y$10$6kWs691NcZPbJwoSkW.M3O2PzhCQ.c4N0lgJO1T00kuf0XNMUL.jO','Administrator',NULL,'sYNDqpHHWoXq5PDrGroV9WWK4XWMqqA74PUmoutMXcPUFBXKKEakMll1hgfH','2022-01-17 09:27:38','2022-01-17 09:27:38');

/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_created_at` int(11) DEFAULT NULL,
  `user_updated_at` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;

INSERT INTO `categories` (`id`, `title`, `user_created_at`, `user_updated_at`, `created_at`, `updated_at`)
VALUES
	(1,'Quy trình tài chính',NULL,NULL,'2022-01-18 10:37:08','2022-01-18 10:37:08'),
	(2,'5NCFNf1jwB6moDSt',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(3,'gTlfszaLr3YLmNHZ',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(4,'xFHHlw5F5xkGobwr',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(5,'q4XlcI0GJ62ZgHDg',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(6,'TKWPFNbp0RgnSlza',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(7,'aXskFVQVS5Zgyl08',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(8,'kyA7tPPPBD6nBdFV',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(9,'bQIjR3NWQlHQ0cKy',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(10,'owL04KUpXZr6mAta',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(11,'3UjkwHrUuxiEixnQ',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(12,'y7XXX5hFwG7ci2kV',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(13,'aFqUEkd19XAY9rFk',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(14,'eV40aYmzJ1fr7kFG',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(15,'yhDRmXccalcgePW4',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(16,'RKh018lQ1iqJ4Z38',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(17,'SFhgrWbfAmWjunYL',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(18,'XeJSfT6n5583tTaM',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(19,'Bb7Zhlu4TJC1euIM',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(20,'ZWQryFdliqCoCBNQ',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(21,'93BfAueXqMWzCfQO',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(22,'Wwlh90d6m2G1y65W',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(23,'tVj6uK7CUUdzrEZA',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(24,'yTKYAhnxvB1inJmq',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(25,'qFaExXyrhRuosDcW',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(26,'9rKPEBhtMRHErdsr',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(27,'JvJCEkBqIZgDtYhs',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(28,'HN1KHzmJrJsxVhOR',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(29,'l1LATauTHN4Aklvo',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(30,'VuiMbVcac4wHJmuo',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(31,'woRkiIv9QU6pw7lQ',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(32,'3Bx7UxLXFaxfwNkj',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(33,'MV5KExni1BpvOqVP',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(34,'akKbwe5LCJIdqMs9',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(35,'fwrkvp9YTmksrv70',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(36,'kPbeBnsHwmNk0sYE',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(37,'sPBUtBoqbWAbl9Kf',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(38,'AtL2ixh6KYc5GCok',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(39,'Gn2CcSi46TEnqcnp',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(40,'MDyg3wp7P3d6yt17',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(41,'J0dPpZ6Nmb9qODbf',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(42,'TMMYq936qGVyQjO8',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(43,'9vTo8JjUyAb7RE1c',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(44,'cuXRCZOmaPUt3Izd',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(45,'gNayhN5aKfUJAGMM',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(46,'twc7oYcpImC1nN81',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(47,'9tsfFjYpUkqYB1nV',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(48,'UsXL1ryJblOcEKb6',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(49,'8Rag8nizyAoEL3SD',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59'),
	(50,'nuLD4SlC88FMDjBk',NULL,NULL,'2022-01-18 15:26:59','2022-01-18 15:26:59');

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table documents
# ------------------------------------------------------------

DROP TABLE IF EXISTS `documents`;

CREATE TABLE `documents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_created_at` int(11) DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(3,'2016_01_04_173148_create_admin_tables',1),
	(4,'2022_01_18_103306_create_categories_table',2),
	(5,'2022_01_18_110820_create_documents_table',3);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

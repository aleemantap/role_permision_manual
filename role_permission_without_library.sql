-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for laravel_permision
CREATE DATABASE IF NOT EXISTS `laravel_permision` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `laravel_permision`;

-- Dumping structure for table laravel_permision.cache
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel_permision.cache: ~0 rows (approximately)

-- Dumping structure for table laravel_permision.cache_locks
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel_permision.cache_locks: ~0 rows (approximately)

-- Dumping structure for table laravel_permision.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel_permision.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table laravel_permision.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel_permision.jobs: ~0 rows (approximately)

-- Dumping structure for table laravel_permision.job_batches
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel_permision.job_batches: ~0 rows (approximately)

-- Dumping structure for table laravel_permision.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel_permision.migrations: ~0 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '0001_01_01_000000_create_users_table', 1),
	(2, '0001_01_01_000001_create_cache_table', 1),
	(3, '0001_01_01_000002_create_jobs_table', 1);

-- Dumping structure for table laravel_permision.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel_permision.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table laravel_permision.permission
CREATE TABLE IF NOT EXISTS `permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `groupby` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table laravel_permision.permission: ~0 rows (approximately)
INSERT INTO `permission` (`id`, `name`, `slug`, `groupby`, `created_at`, `updated_at`) VALUES
	(1, 'Dashboard', 'dashboard', 0, '2025-05-17 16:37:35', '2025-05-17 16:37:36'),
	(2, 'User', 'user', 1, '2025-05-17 16:38:11', '2025-05-17 16:38:12'),
	(3, 'Add User', 'add user', 1, '2025-05-17 16:38:40', '2025-05-17 16:38:41'),
	(4, 'Edit User', 'edit user', 1, '2025-05-17 16:39:26', '2025-05-17 16:39:27'),
	(5, 'Delete User', 'delete user', 1, '2025-05-17 16:40:02', '2025-05-17 16:40:03'),
	(6, 'Role', 'role', 2, '2025-05-17 16:40:19', '2025-05-17 16:40:20'),
	(7, 'Add Role', 'add role', 2, '2025-05-17 16:41:48', '2025-05-17 16:42:08'),
	(8, 'Edit Role', 'Edit Role', 2, '2025-05-17 16:42:06', '2025-05-17 16:42:07'),
	(10, 'Delete Role', 'delete role', 2, '2025-05-17 16:42:38', '2025-05-17 16:42:39'),
	(11, 'Category', 'category', 3, '2025-05-17 16:43:36', '2025-05-17 16:43:38'),
	(12, 'Add Category', 'Add Category', 3, '2025-05-17 16:43:57', '2025-05-17 16:43:58'),
	(13, 'Edit Category', 'Edit Category', 3, '2025-05-17 16:44:20', '2025-05-17 16:44:21'),
	(14, 'Delete Category', 'Delete Category', 3, '2025-05-17 16:44:47', '2025-05-17 16:44:48'),
	(15, 'Sub Category', 'Sub Category', 4, '2025-05-17 17:01:02', '2025-05-17 17:01:03'),
	(16, 'Add Sub Category', 'Add Sub Category', 4, '2025-05-17 17:01:19', '2025-05-17 17:01:20'),
	(17, 'Edit Sub Category', 'Edit Sub Category', 4, '2025-05-17 17:01:34', '2025-05-17 17:01:35'),
	(18, 'Delete Sub Category', 'Delete Sub Category', 4, '2025-05-17 17:01:49', '2025-05-17 17:01:50'),
	(19, 'Product', 'Product', 5, '2025-05-17 17:03:14', '2025-05-17 17:03:15'),
	(20, 'Add Product', 'Add Product', 5, '2025-05-17 18:24:11', '2025-05-17 18:24:12'),
	(21, 'Edit Product', 'Edit Product', 5, '2025-05-17 18:24:37', '2025-05-17 18:24:39'),
	(22, 'Delete Product', 'Delete Product', 5, '2025-05-17 18:24:55', '2025-05-17 18:24:56'),
	(23, 'Setting', 'Setting', 6, '2025-05-17 18:25:30', '2025-05-17 18:25:31');

-- Dumping structure for table laravel_permision.permission_role
CREATE TABLE IF NOT EXISTS `permission_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` int DEFAULT NULL,
  `permission_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table laravel_permision.permission_role: ~0 rows (approximately)
INSERT INTO `permission_role` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
	(80, 5, 1, '2025-05-17 14:47:39', '2025-05-17 14:47:39'),
	(81, 5, 2, '2025-05-17 14:47:39', '2025-05-17 14:47:39'),
	(82, 5, 3, '2025-05-17 14:47:39', '2025-05-17 14:47:39'),
	(83, 5, 4, '2025-05-17 14:47:39', '2025-05-17 14:47:39'),
	(84, 5, 5, '2025-05-17 14:47:39', '2025-05-17 14:47:39'),
	(85, 5, 6, '2025-05-17 14:47:39', '2025-05-17 14:47:39'),
	(86, 5, 7, '2025-05-17 14:47:39', '2025-05-17 14:47:39'),
	(87, 5, 8, '2025-05-17 14:47:39', '2025-05-17 14:47:39'),
	(88, 5, 10, '2025-05-17 14:47:39', '2025-05-17 14:47:39'),
	(89, 5, 11, '2025-05-17 14:47:39', '2025-05-17 14:47:39'),
	(90, 5, 12, '2025-05-17 14:47:39', '2025-05-17 14:47:39'),
	(91, 5, 13, '2025-05-17 14:47:39', '2025-05-17 14:47:39'),
	(92, 5, 14, '2025-05-17 14:47:39', '2025-05-17 14:47:39'),
	(93, 5, 15, '2025-05-17 14:47:39', '2025-05-17 14:47:39'),
	(94, 5, 16, '2025-05-17 14:47:39', '2025-05-17 14:47:39'),
	(95, 5, 17, '2025-05-17 14:47:39', '2025-05-17 14:47:39'),
	(96, 5, 18, '2025-05-17 14:47:39', '2025-05-17 14:47:39'),
	(97, 1, 1, '2025-05-17 15:25:31', '2025-05-17 15:25:31'),
	(98, 1, 2, '2025-05-17 15:25:31', '2025-05-17 15:25:31'),
	(99, 1, 3, '2025-05-17 15:25:31', '2025-05-17 15:25:31'),
	(100, 1, 4, '2025-05-17 15:25:31', '2025-05-17 15:25:31'),
	(101, 1, 5, '2025-05-17 15:25:31', '2025-05-17 15:25:31'),
	(102, 1, 6, '2025-05-17 15:25:31', '2025-05-17 15:25:31'),
	(103, 1, 7, '2025-05-17 15:25:31', '2025-05-17 15:25:31'),
	(104, 1, 8, '2025-05-17 15:25:31', '2025-05-17 15:25:31'),
	(105, 1, 10, '2025-05-17 15:25:31', '2025-05-17 15:25:31'),
	(106, 1, 11, '2025-05-17 15:25:31', '2025-05-17 15:25:31'),
	(107, 1, 12, '2025-05-17 15:25:31', '2025-05-17 15:25:31'),
	(108, 1, 13, '2025-05-17 15:25:31', '2025-05-17 15:25:31'),
	(109, 1, 14, '2025-05-17 15:25:31', '2025-05-17 15:25:31'),
	(110, 1, 15, '2025-05-17 15:25:31', '2025-05-17 15:25:31'),
	(111, 1, 16, '2025-05-17 15:25:31', '2025-05-17 15:25:31'),
	(112, 1, 17, '2025-05-17 15:25:31', '2025-05-17 15:25:31'),
	(113, 1, 18, '2025-05-17 15:25:31', '2025-05-17 15:25:31'),
	(114, 1, 19, '2025-05-17 15:25:31', '2025-05-17 15:25:31'),
	(115, 1, 20, '2025-05-17 15:25:31', '2025-05-17 15:25:31'),
	(116, 1, 21, '2025-05-17 15:25:31', '2025-05-17 15:25:31'),
	(117, 1, 22, '2025-05-17 15:25:31', '2025-05-17 15:25:31'),
	(118, 1, 23, '2025-05-17 15:25:31', '2025-05-17 15:25:31'),
	(124, 2, 1, '2025-05-17 15:44:53', '2025-05-17 15:44:53'),
	(125, 2, 19, '2025-05-17 15:44:53', '2025-05-17 15:44:53'),
	(126, 2, 20, '2025-05-17 15:44:53', '2025-05-17 15:44:53'),
	(127, 2, 21, '2025-05-17 15:44:53', '2025-05-17 15:44:53'),
	(128, 2, 22, '2025-05-17 15:44:53', '2025-05-17 15:44:53'),
	(129, 4, 1, '2025-05-18 03:46:22', '2025-05-18 03:46:22'),
	(130, 4, 6, '2025-05-18 03:46:22', '2025-05-18 03:46:22'),
	(131, 4, 19, '2025-05-18 03:46:22', '2025-05-18 03:46:22'),
	(132, 4, 20, '2025-05-18 03:46:22', '2025-05-18 03:46:22'),
	(133, 4, 21, '2025-05-18 03:46:22', '2025-05-18 03:46:22'),
	(134, 4, 22, '2025-05-18 03:46:22', '2025-05-18 03:46:22');

-- Dumping structure for table laravel_permision.role
CREATE TABLE IF NOT EXISTS `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table laravel_permision.role: ~0 rows (approximately)
INSERT INTO `role` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'Admin', '2025-05-17 07:01:18', '2025-05-17 07:43:39'),
	(2, 'Employee', '2025-05-17 07:40:23', '2025-05-17 07:43:48'),
	(4, 'User', '2025-05-17 07:43:55', '2025-05-17 07:43:55'),
	(5, 'Normal', '2025-05-17 14:08:33', '2025-05-17 14:08:33');

-- Dumping structure for table laravel_permision.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel_permision.sessions: ~3 rows (approximately)
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('nSIIGZ2vvqeEu2Uq4YxzAF3JnIKoGsXwu6Ti7W8x', 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRnlTbjhTYkkxRFBRTkNjUWp0YWRNMUVBY25HYklFM1h0aVBLcEo4RSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wYW5lbC9yb2xlcy9hZGQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo0O30=', 1747540087),
	('SPBrJ5lQXScvyKPdTWKQAZaI1FDPM3xzoJ1x4F4S', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36 Avast/134.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaXBubE5CblBFN1NwRktGcFFldmd5TmRpYjd6QVdCY1NSblB3YU1FdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wYW5lbC9yb2xlcy9lZGl0LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1747540351),
	('SyXMQOn0vTyKWN589oBvDxjpB8xpsbKVfrwMGUZP', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:138.0) Gecko/20100101 Firefox/138.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQ1NGQ3h2d2Ftak8yNFZNa2FTS09ZaUw2U3V3WmRmYnBFSUh2VlJjMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wYW5lbC9wcm9kdWN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mzt9', 1747540528);

-- Dumping structure for table laravel_permision.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel_permision.users: ~2 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'admin@gmail.com', '2025-05-17 00:16:04', '$2y$12$jvQsisfHALoh8kQvWBjVKOcnmX4h/QVjVG91jSgGug6QH/9Lq1ZTG', 1, NULL, '2025-05-17 00:16:15', '2025-05-17 00:16:16'),
	(3, 'Ali', 'aleemantap@gmail.com', NULL, '$2y$12$4u.i5UFEN8RUU3rEg3qAnOHZLwYL2lWfxYQos4Hi5yiAAIjwgJSAu', 2, NULL, '2025-05-17 08:42:17', '2025-05-17 08:42:17'),
	(4, 'ALI ROMLI AA', 'romli@gmail.com', NULL, '$2y$12$LwLxaXoJoaOFhWvPk68h.e8FR2bVTf5B.J9lqs5qIqunl9GWG45By', 4, NULL, '2025-05-17 08:44:21', '2025-05-17 16:07:55');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

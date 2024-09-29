-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2024 at 12:30 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `customauth`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'icon-chart-bar', '/', NULL, NULL, NULL),
(2, 0, 2, 'Admin', 'icon-server', '', NULL, NULL, NULL),
(3, 2, 3, 'Users', 'icon-users', 'auth/users', NULL, NULL, NULL),
(4, 2, 4, 'Roles', 'icon-user', 'auth/roles', NULL, NULL, NULL),
(5, 2, 5, 'Permission', 'icon-ban', 'auth/permissions', NULL, NULL, NULL),
(6, 2, 6, 'Menu', 'icon-bars', 'auth/menu', NULL, NULL, NULL),
(7, 2, 7, 'Operation log', 'icon-history', 'auth/logs', NULL, NULL, NULL),
(8, 13, 0, 'Custom User', 'icon-address-book', 'customuser', NULL, '2024-08-31 23:35:29', '2024-09-10 03:39:31'),
(9, 13, 0, 'Custom User Show', 'icon-address-book', 'customusershow', NULL, '2024-09-08 23:28:02', '2024-09-10 03:39:52'),
(10, 13, 0, 'Custom User Grid Show', 'icon-address-book', 'customusergridshow', NULL, '2024-09-08 23:28:49', '2024-09-10 03:40:01'),
(11, 13, 0, 'Multiple Row', 'icon-address-book', 'dynamicsave', NULL, '2024-09-09 21:22:46', '2024-09-10 03:40:13'),
(12, 13, 0, 'Multiple Row-1', 'icon-address-card', 'dynamicsave1', NULL, '2024-09-10 00:19:17', '2024-09-10 03:40:23'),
(13, 0, 0, 'Custom', 'icon-allergies', NULL, NULL, '2024-09-10 03:38:01', '2024-09-10 03:38:01'),
(14, 13, 0, 'Multiple Row-2', 'icon-align-justify', 'dynamicsave2', NULL, '2024-09-21 21:58:20', '2024-09-21 21:58:20'),
(15, 13, 0, 'Ajax value Save', 'icon-asterisk', 'ajaxvalue', NULL, '2024-09-28 22:20:47', '2024-09-28 22:20:47'),
(16, 13, 0, 'Ajax Value save-1', 'icon-arrows-alt-h', 'ajaxvalue1', NULL, '2024-09-28 23:32:23', '2024-09-28 23:32:23'),
(17, 13, 0, 'Multiple Row-3', 'icon-atlas', 'dynamicsave3', NULL, '2024-09-29 03:52:31', '2024-09-29 03:52:31');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-28 02:08:24', '2024-08-28 02:08:24'),
(2, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-28 02:08:34', '2024-08-28 02:08:34'),
(3, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-28 02:41:29', '2024-08-28 02:41:29'),
(4, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-28 02:41:34', '2024-08-28 02:41:34'),
(5, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-28 02:44:09', '2024-08-28 02:44:09'),
(6, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-28 02:44:28', '2024-08-28 02:44:28'),
(7, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-28 21:56:40', '2024-08-28 21:56:40'),
(8, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-28 22:21:03', '2024-08-28 22:21:03'),
(9, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-28 22:22:38', '2024-08-28 22:22:38'),
(10, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-28 22:29:52', '2024-08-28 22:29:52'),
(11, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-28 22:30:06', '2024-08-28 22:30:06'),
(12, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-28 22:30:13', '2024-08-28 22:30:13'),
(13, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-28 22:30:42', '2024-08-28 22:30:42'),
(14, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-28 22:51:47', '2024-08-28 22:51:47'),
(15, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-28 22:51:54', '2024-08-28 22:51:54'),
(16, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-28 22:54:21', '2024-08-28 22:54:21'),
(17, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-28 23:06:30', '2024-08-28 23:06:30'),
(18, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-28 23:14:09', '2024-08-28 23:14:09'),
(19, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-28 23:14:22', '2024-08-28 23:14:22'),
(20, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-28 23:14:26', '2024-08-28 23:14:26'),
(21, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-28 23:14:47', '2024-08-28 23:14:47'),
(22, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-28 23:14:53', '2024-08-28 23:14:53'),
(23, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-29 02:05:02', '2024-08-29 02:05:02'),
(24, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-29 02:05:07', '2024-08-29 02:05:07'),
(25, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-29 02:19:17', '2024-08-29 02:19:17'),
(26, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-29 02:19:21', '2024-08-29 02:19:21'),
(27, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-29 02:19:46', '2024-08-29 02:19:46'),
(28, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-29 02:19:52', '2024-08-29 02:19:52'),
(29, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-29 02:29:37', '2024-08-29 02:29:37'),
(30, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-29 02:30:09', '2024-08-29 02:30:09'),
(31, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-29 02:30:27', '2024-08-29 02:30:27'),
(32, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-29 02:30:44', '2024-08-29 02:30:44'),
(33, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-29 02:31:34', '2024-08-29 02:31:34'),
(34, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-29 02:31:41', '2024-08-29 02:31:41'),
(35, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-29 02:32:00', '2024-08-29 02:32:00'),
(36, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-29 02:34:46', '2024-08-29 02:34:46'),
(37, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-29 02:34:50', '2024-08-29 02:34:50'),
(38, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-29 02:35:12', '2024-08-29 02:35:12'),
(39, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-29 02:35:17', '2024-08-29 02:35:17'),
(40, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-08-29 02:40:33', '2024-08-29 02:40:33'),
(41, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-29 02:40:33', '2024-08-29 02:40:33'),
(42, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-29 02:40:39', '2024-08-29 02:40:39'),
(43, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-08-29 02:41:11', '2024-08-29 02:41:11'),
(44, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-29 02:41:11', '2024-08-29 02:41:11'),
(45, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-29 02:41:14', '2024-08-29 02:41:14'),
(46, 1, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"55iO0qKhYu75o7LPODURA9rPi7XgS3xvJPVaSwji\",\"email\":\"admin@admin.com\",\"password\":\"*****-filtered-out-*****\"}', '2024-08-29 02:42:17', '2024-08-29 02:42:17'),
(47, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-08-29 02:42:18', '2024-08-29 02:42:18'),
(48, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-29 02:42:18', '2024-08-29 02:42:18'),
(49, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-29 02:42:22', '2024-08-29 02:42:22'),
(50, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-08-29 02:42:36', '2024-08-29 02:42:36'),
(51, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-29 02:42:36', '2024-08-29 02:42:36'),
(52, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-29 02:42:39', '2024-08-29 02:42:39'),
(53, 1, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"v7qY4ZxTowFWRM2QwR0vEd44ZThOlQTWOXL7eK3E\",\"email\":\"admin@admin.com\",\"password\":\"*****-filtered-out-*****\"}', '2024-08-29 02:45:02', '2024-08-29 02:45:02'),
(54, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-08-29 02:45:03', '2024-08-29 02:45:03'),
(55, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-29 02:45:03', '2024-08-29 02:45:03'),
(56, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-29 02:47:55', '2024-08-29 02:47:55'),
(57, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-29 03:07:09', '2024-08-29 03:07:09'),
(58, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-29 03:07:15', '2024-08-29 03:07:15'),
(59, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-29 03:07:56', '2024-08-29 03:07:56'),
(60, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-29 03:08:00', '2024-08-29 03:08:00'),
(61, 1, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"FRvuJxdloya9CVt8J7PQ9kCSR9O4yjSkZSS3OCA3\",\"email\":\"admin@admin.com\",\"password\":\"*****-filtered-out-*****\"}', '2024-08-29 03:10:28', '2024-08-29 03:10:28'),
(62, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-29 03:10:29', '2024-08-29 03:10:29'),
(63, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-29 03:11:37', '2024-08-29 03:11:37'),
(64, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-29 03:12:42', '2024-08-29 03:12:42'),
(65, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-29 03:12:47', '2024-08-29 03:12:47'),
(66, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-30 21:25:45', '2024-08-30 21:25:45'),
(67, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-30 21:39:11', '2024-08-30 21:39:11'),
(68, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-31 00:21:35', '2024-08-31 00:21:35'),
(69, 1, 'admin/about', 'GET', '127.0.0.1', '[]', '2024-08-31 00:29:43', '2024-08-31 00:29:43'),
(70, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-08-31 00:29:58', '2024-08-31 00:29:58'),
(71, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-08-31 00:30:05', '2024-08-31 00:30:05'),
(72, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-08-31 00:30:09', '2024-08-31 00:30:09'),
(73, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-31 00:30:19', '2024-08-31 00:30:19'),
(74, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-31 21:52:02', '2024-08-31 21:52:02'),
(75, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-08-31 22:06:50', '2024-08-31 22:06:50'),
(76, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-08-31 22:26:58', '2024-08-31 22:26:58'),
(77, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-08-31 22:27:29', '2024-08-31 22:27:29'),
(78, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-08-31 22:29:04', '2024-08-31 22:29:04'),
(79, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-08-31 22:31:16', '2024-08-31 22:31:16'),
(80, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-08-31 22:31:29', '2024-08-31 22:31:29'),
(81, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-08-31 23:34:16', '2024-08-31 23:34:16'),
(82, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-31 23:34:48', '2024-08-31 23:34:48'),
(83, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Custom User\",\"icon\":\"icon-address-book\",\"uri\":\"customuser\",\"roles\":[null],\"permission\":null,\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\"}', '2024-08-31 23:35:29', '2024-08-31 23:35:29'),
(84, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-31 23:35:30', '2024-08-31 23:35:30'),
(85, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-31 23:35:33', '2024-08-31 23:35:33'),
(86, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-31 23:35:39', '2024-08-31 23:35:39'),
(87, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-08-31 23:35:56', '2024-08-31 23:35:56'),
(88, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-08-31 23:56:00', '2024-08-31 23:56:00'),
(89, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-08-31 23:58:39', '2024-08-31 23:58:39'),
(90, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-08-31 23:59:36', '2024-08-31 23:59:36'),
(91, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 00:13:50', '2024-09-01 00:13:50'),
(92, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 00:14:28', '2024-09-01 00:14:28'),
(93, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 00:14:46', '2024-09-01 00:14:46'),
(94, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 00:29:26', '2024-09-01 00:29:26'),
(95, 1, 'admin/customuser', 'POST', '127.0.0.1', '{\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\",\"name\":null,\"email\":null,\"password\":null,\"image\":null,\"submit\":\"submit\"}', '2024-09-01 00:29:30', '2024-09-01 00:29:30'),
(96, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 00:29:39', '2024-09-01 00:29:39'),
(97, 1, 'admin/customuser', 'POST', '127.0.0.1', '{\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\",\"name\":null,\"email\":null,\"password\":null,\"image\":null,\"submit\":\"submit\"}', '2024-09-01 00:30:19', '2024-09-01 00:30:19'),
(98, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 00:30:44', '2024-09-01 00:30:44'),
(99, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 00:30:47', '2024-09-01 00:30:47'),
(100, 1, 'admin/customuser', 'POST', '127.0.0.1', '{\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\",\"name\":null,\"email\":null,\"password\":null,\"image\":null,\"submit\":\"submit\"}', '2024-09-01 00:30:49', '2024-09-01 00:30:49'),
(101, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 00:30:50', '2024-09-01 00:30:50'),
(102, 1, 'admin/customuser', 'POST', '127.0.0.1', '{\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\",\"name\":\"test\",\"email\":\"test@test.com\",\"password\":\"*****-filtered-out-*****\",\"image\":\"test image\",\"submit\":\"submit\"}', '2024-09-01 00:31:23', '2024-09-01 00:31:23'),
(103, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 00:31:24', '2024-09-01 00:31:24'),
(104, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 01:04:28', '2024-09-01 01:04:28'),
(105, 1, 'admin/customuser', 'POST', '127.0.0.1', '{\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\",\"name\":\"test1\",\"email\":\"test1@test.com\",\"password\":\"*****-filtered-out-*****\",\"submit\":\"submit\"}', '2024-09-01 01:05:06', '2024-09-01 01:05:06'),
(106, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 01:05:07', '2024-09-01 01:05:07'),
(107, 1, 'admin/customuser', 'POST', '127.0.0.1', '{\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\",\"name\":\"test2\",\"email\":\"test2@test.com\",\"password\":\"*****-filtered-out-*****\",\"submit\":\"submit\"}', '2024-09-01 01:06:41', '2024-09-01 01:06:41'),
(108, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 01:07:10', '2024-09-01 01:07:10'),
(109, 1, 'admin/customuser', 'POST', '127.0.0.1', '{\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\",\"name\":\"test2\",\"email\":\"test2@test.com\",\"password\":\"*****-filtered-out-*****\",\"submit\":\"submit\"}', '2024-09-01 01:07:20', '2024-09-01 01:07:20'),
(110, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 01:07:21', '2024-09-01 01:07:21'),
(111, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 01:17:11', '2024-09-01 01:17:11'),
(112, 1, 'admin/customuser', 'POST', '127.0.0.1', '{\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\",\"name\":\"test3\",\"email\":\"test3@test.com\",\"password\":\"*****-filtered-out-*****\",\"submit\":\"submit\"}', '2024-09-01 01:17:40', '2024-09-01 01:17:40'),
(113, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 01:17:41', '2024-09-01 01:17:41'),
(114, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 01:18:15', '2024-09-01 01:18:15'),
(115, 1, 'admin/customuser', 'POST', '127.0.0.1', '{\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\",\"name\":\"test4\",\"email\":\"test4@test.com\",\"password\":\"*****-filtered-out-*****\",\"submit\":\"submit\"}', '2024-09-01 01:18:43', '2024-09-01 01:18:43'),
(116, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 01:18:43', '2024-09-01 01:18:43'),
(117, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 01:22:51', '2024-09-01 01:22:51'),
(118, 1, 'admin/customuser', 'POST', '127.0.0.1', '{\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\",\"name\":\"test5\",\"email\":\"test5@test.com\",\"password\":\"*****-filtered-out-*****\",\"submit\":\"submit\"}', '2024-09-01 01:23:17', '2024-09-01 01:23:17'),
(119, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 01:23:18', '2024-09-01 01:23:18'),
(120, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 01:23:41', '2024-09-01 01:23:41'),
(121, 1, 'admin/customuser', 'POST', '127.0.0.1', '{\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\",\"name\":\"test6\",\"email\":\"test6@test.com\",\"password\":\"*****-filtered-out-*****\",\"submit\":\"submit\"}', '2024-09-01 01:27:27', '2024-09-01 01:27:27'),
(122, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 01:27:28', '2024-09-01 01:27:28'),
(123, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 01:32:45', '2024-09-01 01:32:45'),
(124, 1, 'admin/customuser', 'POST', '127.0.0.1', '{\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\",\"name\":null,\"email\":null,\"password\":null,\"submit\":\"submit\"}', '2024-09-01 01:32:50', '2024-09-01 01:32:50'),
(125, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 01:32:50', '2024-09-01 01:32:50'),
(126, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 01:33:13', '2024-09-01 01:33:13'),
(127, 1, 'admin/customuser', 'POST', '127.0.0.1', '{\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\",\"name\":\"test6\",\"email\":null,\"password\":null,\"submit\":\"submit\"}', '2024-09-01 01:33:21', '2024-09-01 01:33:21'),
(128, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 01:33:21', '2024-09-01 01:33:21'),
(129, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-09-01 01:38:26', '2024-09-01 01:38:26'),
(130, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2024-09-01 01:39:59', '2024-09-01 01:39:59'),
(131, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-09-01 01:40:08', '2024-09-01 01:40:08'),
(132, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-09-01 01:40:17', '2024-09-01 01:40:17'),
(133, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-09-01 01:40:21', '2024-09-01 01:40:21'),
(134, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2024-09-01 01:40:26', '2024-09-01 01:40:26'),
(135, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-09-01 01:42:43', '2024-09-01 01:42:43'),
(136, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2024-09-01 01:42:56', '2024-09-01 01:42:56'),
(137, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-09-01 01:43:07', '2024-09-01 01:43:07'),
(138, 1, 'admin/auth/users/1', 'GET', '127.0.0.1', '[]', '2024-09-01 01:43:10', '2024-09-01 01:43:10'),
(139, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2024-09-01 01:43:14', '2024-09-01 01:43:14'),
(140, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 01:59:51', '2024-09-01 01:59:51'),
(141, 1, 'admin/customuser', 'POST', '127.0.0.1', '{\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\",\"name\":\"test6\",\"email\":\"test6@test.com\",\"password\":\"*****-filtered-out-*****\",\"submit\":\"submit\"}', '2024-09-01 02:00:43', '2024-09-01 02:00:43'),
(142, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 02:00:43', '2024-09-01 02:00:43'),
(143, 1, 'admin/customuser', 'POST', '127.0.0.1', '{\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\",\"name\":null,\"email\":null,\"password\":null,\"submit\":\"submit\"}', '2024-09-01 02:59:08', '2024-09-01 02:59:08'),
(144, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 02:59:09', '2024-09-01 02:59:09'),
(145, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 03:16:15', '2024-09-01 03:16:15'),
(146, 1, 'admin/customuser', 'POST', '127.0.0.1', '{\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\",\"name\":\"test7\",\"email\":null,\"password\":null,\"submit\":\"submit\"}', '2024-09-01 03:16:27', '2024-09-01 03:16:27'),
(147, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 03:16:28', '2024-09-01 03:16:28'),
(148, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 03:18:48', '2024-09-01 03:18:48'),
(149, 1, 'admin/customuser', 'POST', '127.0.0.1', '{\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\",\"name\":null,\"email\":null,\"password\":null,\"submit\":\"submit\"}', '2024-09-01 03:18:54', '2024-09-01 03:18:54'),
(150, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 03:18:55', '2024-09-01 03:18:55'),
(151, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 03:19:58', '2024-09-01 03:19:58'),
(152, 1, 'admin/customuser', 'POST', '127.0.0.1', '{\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\",\"name\":null,\"email\":null,\"password\":null,\"submit\":\"submit\"}', '2024-09-01 03:20:02', '2024-09-01 03:20:02'),
(153, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 03:20:02', '2024-09-01 03:20:02'),
(154, 1, 'admin/customuser', 'POST', '127.0.0.1', '{\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\",\"name\":null,\"email\":null,\"password\":null,\"submit\":\"submit\"}', '2024-09-01 03:21:08', '2024-09-01 03:21:08'),
(155, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 03:21:08', '2024-09-01 03:21:08'),
(156, 1, 'admin/customuser', 'POST', '127.0.0.1', '{\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\",\"name\":null,\"email\":null,\"password\":null,\"submit\":\"submit\"}', '2024-09-01 03:22:40', '2024-09-01 03:22:40'),
(157, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 03:22:41', '2024-09-01 03:22:41'),
(158, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-09-08 21:33:54', '2024-09-08 21:33:54'),
(159, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-08 22:11:43', '2024-09-08 22:11:43'),
(160, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-09-08 22:42:17', '2024-09-08 22:42:17'),
(161, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-08 22:42:37', '2024-09-08 22:42:37'),
(162, 1, 'admin/customusershow', 'GET', '127.0.0.1', '[]', '2024-09-08 22:50:20', '2024-09-08 22:50:20'),
(163, 1, 'admin/customusershow', 'GET', '127.0.0.1', '[]', '2024-09-08 22:50:43', '2024-09-08 22:50:43'),
(164, 1, 'admin/customusershow', 'GET', '127.0.0.1', '[]', '2024-09-08 22:54:35', '2024-09-08 22:54:35'),
(165, 1, 'admin/customusershow', 'GET', '127.0.0.1', '[]', '2024-09-08 22:55:07', '2024-09-08 22:55:07'),
(166, 1, 'admin/customusershow', 'GET', '127.0.0.1', '[]', '2024-09-08 23:02:14', '2024-09-08 23:02:14'),
(167, 1, 'admin/customusershow', 'GET', '127.0.0.1', '[]', '2024-09-08 23:03:01', '2024-09-08 23:03:01'),
(168, 1, 'admin/customusershow', 'GET', '127.0.0.1', '[]', '2024-09-08 23:03:28', '2024-09-08 23:03:28'),
(169, 1, 'admin/customusershow', 'GET', '127.0.0.1', '[]', '2024-09-08 23:04:18', '2024-09-08 23:04:18'),
(170, 1, 'admin/customusershow', 'GET', '127.0.0.1', '[]', '2024-09-08 23:26:34', '2024-09-08 23:26:34'),
(171, 1, 'admin/customusergridshow', 'GET', '127.0.0.1', '[]', '2024-09-08 23:26:41', '2024-09-08 23:26:41'),
(172, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-09-08 23:26:44', '2024-09-08 23:26:44'),
(173, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-09-08 23:26:48', '2024-09-08 23:26:48'),
(174, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-09-08 23:26:53', '2024-09-08 23:26:53'),
(175, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-09-08 23:27:10', '2024-09-08 23:27:10'),
(176, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-09-08 23:27:14', '2024-09-08 23:27:14'),
(177, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Custom user Show\",\"icon\":\"icon-address-book\",\"uri\":\"customusershow\",\"roles\":[null],\"permission\":null,\"_token\":\"cMC18Z1v3Erp86yIrWw4TxtIlMHyXYHkCGR5EuLy\"}', '2024-09-08 23:28:02', '2024-09-08 23:28:02'),
(178, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-09-08 23:28:03', '2024-09-08 23:28:03'),
(179, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-09-08 23:28:06', '2024-09-08 23:28:06'),
(180, 1, 'admin/customusershow', 'GET', '127.0.0.1', '[]', '2024-09-08 23:28:09', '2024-09-08 23:28:09'),
(181, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Custom User Grid Show\",\"icon\":\"icon-address-book\",\"uri\":\"customusergridshow\",\"roles\":[null],\"permission\":null,\"_token\":\"cMC18Z1v3Erp86yIrWw4TxtIlMHyXYHkCGR5EuLy\"}', '2024-09-08 23:28:49', '2024-09-08 23:28:49'),
(182, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-09-08 23:28:49', '2024-09-08 23:28:49'),
(183, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-09-08 23:28:52', '2024-09-08 23:28:52'),
(184, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '[]', '2024-09-08 23:29:01', '2024-09-08 23:29:01'),
(185, 1, 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Custom User Show\",\"icon\":\"icon-address-book\",\"uri\":\"customusershow\",\"roles\":[null],\"permission\":null,\"_token\":\"cMC18Z1v3Erp86yIrWw4TxtIlMHyXYHkCGR5EuLy\",\"_method\":\"PUT\"}', '2024-09-08 23:29:10', '2024-09-08 23:29:10'),
(186, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-09-08 23:29:10', '2024-09-08 23:29:10'),
(187, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-09-08 23:29:13', '2024-09-08 23:29:13'),
(188, 1, 'admin/customusergridshow', 'GET', '127.0.0.1', '[]', '2024-09-08 23:29:16', '2024-09-08 23:29:16'),
(189, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-09-09 01:43:32', '2024-09-09 01:43:32'),
(190, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-09 01:44:26', '2024-09-09 01:44:26'),
(191, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 01:46:08', '2024-09-09 01:46:08'),
(192, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 01:47:28', '2024-09-09 01:47:28'),
(193, 1, 'admin/dynamicsavee', 'GET', '127.0.0.1', '[]', '2024-09-09 01:49:10', '2024-09-09 01:49:10'),
(194, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 02:06:25', '2024-09-09 02:06:25'),
(195, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 02:07:18', '2024-09-09 02:07:18'),
(196, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 02:07:45', '2024-09-09 02:07:45'),
(197, 1, 'admin/about', 'GET', '127.0.0.1', '[]', '2024-09-09 02:07:56', '2024-09-09 02:07:56'),
(198, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 02:08:50', '2024-09-09 02:08:50'),
(199, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 02:12:24', '2024-09-09 02:12:24'),
(200, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 02:13:21', '2024-09-09 02:13:21'),
(201, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 02:13:52', '2024-09-09 02:13:52'),
(202, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 02:14:19', '2024-09-09 02:14:19'),
(203, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 02:14:45', '2024-09-09 02:14:45'),
(204, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 02:15:32', '2024-09-09 02:15:32'),
(205, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 02:38:11', '2024-09-09 02:38:11'),
(206, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 02:40:56', '2024-09-09 02:40:56'),
(207, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 03:01:54', '2024-09-09 03:01:54'),
(208, 1, 'admin/dynamicsave', 'POST', '127.0.0.1', '{\"_token\":\"xk267iTQYekUvHxsDKuXClpl8rT6JwnQe3CsDy1a\",\"rows\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"12\",\"image\":\"aa\"},{\"name\":\"mm1\",\"email\":\"mm1@mm.com\",\"password\":\"13\",\"image\":\"aa1\"}]}', '2024-09-09 03:02:38', '2024-09-09 03:02:38'),
(209, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 03:02:39', '2024-09-09 03:02:39'),
(210, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 03:03:11', '2024-09-09 03:03:11'),
(211, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 03:03:27', '2024-09-09 03:03:27'),
(212, 1, 'admin/dynamicsave', 'POST', '127.0.0.1', '{\"_token\":\"xk267iTQYekUvHxsDKuXClpl8rT6JwnQe3CsDy1a\",\"rows\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"12\",\"image\":\"aa\"},{\"name\":\"mm1\",\"email\":\"mm1@mm.com\",\"password\":\"13\",\"image\":\"aa1\"}]}', '2024-09-09 03:03:51', '2024-09-09 03:03:51'),
(213, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 03:03:52', '2024-09-09 03:03:52'),
(214, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 03:46:22', '2024-09-09 03:46:22'),
(215, 1, 'admin/dynamicsave', 'POST', '127.0.0.1', '{\"_token\":\"xk267iTQYekUvHxsDKuXClpl8rT6JwnQe3CsDy1a\",\"rows\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"11\",\"image\":\"11\"},{\"name\":\"mm1\",\"email\":\"mm1@mm.com\",\"password\":\"mm\",\"image\":\"m\"}]}', '2024-09-09 03:46:39', '2024-09-09 03:46:39'),
(216, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 03:46:40', '2024-09-09 03:46:40'),
(217, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 03:50:19', '2024-09-09 03:50:19'),
(218, 1, 'admin/dynamicsave', 'POST', '127.0.0.1', '{\"_token\":\"xk267iTQYekUvHxsDKuXClpl8rT6JwnQe3CsDy1a\",\"rows\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"11\",\"image\":\"11\"},{\"name\":\"mm1\",\"email\":\"mm1@mm.com\",\"password\":\"12\",\"image\":\"ab\"}]}', '2024-09-09 03:50:43', '2024-09-09 03:50:43'),
(219, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 03:50:44', '2024-09-09 03:50:44'),
(220, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 03:53:21', '2024-09-09 03:53:21'),
(221, 1, 'admin/dynamicsave', 'POST', '127.0.0.1', '{\"_token\":\"xk267iTQYekUvHxsDKuXClpl8rT6JwnQe3CsDy1a\",\"rows\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"11\",\"image\":\"mmqq\"}]}', '2024-09-09 03:53:33', '2024-09-09 03:53:33'),
(222, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 03:53:33', '2024-09-09 03:53:33'),
(223, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 04:02:46', '2024-09-09 04:02:46'),
(224, 1, 'admin/dynamicsave', 'POST', '127.0.0.1', '{\"_token\":\"xk267iTQYekUvHxsDKuXClpl8rT6JwnQe3CsDy1a\",\"rows\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"mm\",\"image\":\"mm\"}]}', '2024-09-09 04:02:54', '2024-09-09 04:02:54'),
(225, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 04:02:54', '2024-09-09 04:02:54'),
(226, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 04:10:02', '2024-09-09 04:10:02'),
(227, 1, 'admin/dynamicsave', 'POST', '127.0.0.1', '{\"_token\":\"xk267iTQYekUvHxsDKuXClpl8rT6JwnQe3CsDy1a\",\"rows\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"mm\",\"image\":\"mm\"},{\"name\":\"mm1\",\"email\":\"mm1@mm.com\",\"password\":\"mm\",\"image\":\"mm\"}]}', '2024-09-09 04:10:16', '2024-09-09 04:10:16'),
(228, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 04:10:17', '2024-09-09 04:10:17'),
(229, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 04:10:47', '2024-09-09 04:10:47'),
(230, 1, 'admin/dynamicsave', 'POST', '127.0.0.1', '{\"_token\":\"xk267iTQYekUvHxsDKuXClpl8rT6JwnQe3CsDy1a\",\"rows\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"11\",\"image\":\"1q\"},{\"name\":\"mm1\",\"email\":\"mm1@mm.com\",\"password\":\"aa\",\"image\":\"qw\"}]}', '2024-09-09 04:11:07', '2024-09-09 04:11:07'),
(231, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 04:11:07', '2024-09-09 04:11:07'),
(232, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 04:16:07', '2024-09-09 04:16:07'),
(233, 1, 'admin/dynamicsave', 'POST', '127.0.0.1', '{\"_token\":\"xk267iTQYekUvHxsDKuXClpl8rT6JwnQe3CsDy1a\",\"rows\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"11\",\"image\":\"aa\"},{\"name\":\"mm1\",\"email\":\"mm1@mm.com\",\"password\":\"12\",\"image\":\"bb\"}]}', '2024-09-09 04:16:28', '2024-09-09 04:16:28'),
(234, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 04:16:28', '2024-09-09 04:16:28'),
(235, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 04:19:13', '2024-09-09 04:19:13'),
(236, 1, 'admin/dynamicsave', 'POST', '127.0.0.1', '{\"_token\":\"xk267iTQYekUvHxsDKuXClpl8rT6JwnQe3CsDy1a\",\"rows\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"112\",\"image\":\"aa\"},{\"name\":\"mm1\",\"email\":\"mm1@mm.com\",\"password\":\"aa\",\"image\":\"qq\"}]}', '2024-09-09 04:19:36', '2024-09-09 04:19:36'),
(237, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 04:19:36', '2024-09-09 04:19:36'),
(238, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 04:20:42', '2024-09-09 04:20:42'),
(239, 1, 'admin/dynamicsave', 'POST', '127.0.0.1', '{\"_token\":\"xk267iTQYekUvHxsDKuXClpl8rT6JwnQe3CsDy1a\",\"rows\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"123456\",\"image\":\"aa\"},{\"name\":\"mm1\",\"email\":\"mm1@mm.com\",\"password\":\"12\",\"image\":\"bb\"}]}', '2024-09-09 04:21:11', '2024-09-09 04:21:11'),
(240, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 04:21:11', '2024-09-09 04:21:11'),
(241, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 04:22:47', '2024-09-09 04:22:47'),
(242, 1, 'admin/dynamicsave', 'POST', '127.0.0.1', '{\"_token\":\"xk267iTQYekUvHxsDKuXClpl8rT6JwnQe3CsDy1a\",\"rows\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"11111\",\"image\":\"aaaa\"},{\"name\":\"mm1\",\"email\":\"mm1@mm.com\",\"password\":\"2222\",\"image\":\"bbbb\"}]}', '2024-09-09 04:23:10', '2024-09-09 04:23:10'),
(243, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 04:23:29', '2024-09-09 04:23:29'),
(244, 1, 'admin/dynamicsave', 'POST', '127.0.0.1', '{\"_token\":\"xk267iTQYekUvHxsDKuXClpl8rT6JwnQe3CsDy1a\",\"rows\":[{\"name\":\"mm\",\"email\":\"mm2@mm.com\",\"password\":\"11111\",\"image\":\"aaaa\"},{\"name\":\"mm1\",\"email\":\"mm3@mm.com\",\"password\":\"2222\",\"image\":\"bbbb\"}]}', '2024-09-09 04:23:49', '2024-09-09 04:23:49'),
(245, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 04:23:50', '2024-09-09 04:23:50'),
(246, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 04:27:10', '2024-09-09 04:27:10'),
(247, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 04:27:30', '2024-09-09 04:27:30'),
(248, 1, 'admin/dynamicsave', 'POST', '127.0.0.1', '{\"_token\":\"xk267iTQYekUvHxsDKuXClpl8rT6JwnQe3CsDy1a\",\"rows\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"1111\",\"image\":\"aaaa\"},{\"name\":\"mm1\",\"email\":\"mm1@mm.com\",\"password\":\"2222\",\"image\":\"bbbb\"}]}', '2024-09-09 04:27:57', '2024-09-09 04:27:57'),
(249, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 04:27:57', '2024-09-09 04:27:57'),
(250, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 04:30:23', '2024-09-09 04:30:23'),
(251, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 04:30:38', '2024-09-09 04:30:38'),
(252, 1, 'admin/dynamicsave', 'POST', '127.0.0.1', '{\"_token\":\"xk267iTQYekUvHxsDKuXClpl8rT6JwnQe3CsDy1a\",\"rows\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"11\",\"image\":\"aa\"},{\"name\":\"mm1\",\"email\":\"mm1@mm.com\",\"password\":\"22\",\"image\":\"bb\"}]}', '2024-09-09 04:30:58', '2024-09-09 04:30:58'),
(253, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 04:30:58', '2024-09-09 04:30:58'),
(254, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 04:34:10', '2024-09-09 04:34:10'),
(255, 1, 'admin/dynamicsave', 'POST', '127.0.0.1', '{\"_token\":\"xk267iTQYekUvHxsDKuXClpl8rT6JwnQe3CsDy1a\",\"rows\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"11\",\"image\":\"qq\"},{\"name\":\"mm1\",\"email\":\"mm1@mm.com\",\"password\":\"22\",\"image\":\"aa\"}]}', '2024-09-09 04:34:31', '2024-09-09 04:34:31'),
(256, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 04:34:31', '2024-09-09 04:34:31'),
(257, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 04:35:42', '2024-09-09 04:35:42'),
(258, 1, 'admin/dynamicsave', 'POST', '127.0.0.1', '{\"_token\":\"xk267iTQYekUvHxsDKuXClpl8rT6JwnQe3CsDy1a\",\"rows\":[{\"name\":\"mm\",\"email\":\"mm1@mm.com\",\"password\":\"11\",\"image\":\"aa\"},{\"name\":\"mm1\",\"email\":\"mm2@mm.com\",\"password\":\"22\",\"image\":\"bb\"}]}', '2024-09-09 04:36:10', '2024-09-09 04:36:10'),
(259, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 04:36:10', '2024-09-09 04:36:10'),
(260, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 04:47:53', '2024-09-09 04:47:53'),
(261, 1, 'admin/dynamicsave', 'POST', '127.0.0.1', '{\"_token\":\"xk267iTQYekUvHxsDKuXClpl8rT6JwnQe3CsDy1a\",\"rows\":[{\"name\":\"mm\",\"email\":\"mm1@mm.com\",\"password\":\"11\",\"image\":\"aa\"},{\"name\":\"mm1\",\"email\":\"mm2@mm.com\",\"password\":\"22\",\"image\":\"bb\"}]}', '2024-09-09 04:48:15', '2024-09-09 04:48:15'),
(262, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 04:48:15', '2024-09-09 04:48:15'),
(263, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 04:49:26', '2024-09-09 04:49:26'),
(264, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 04:49:49', '2024-09-09 04:49:49'),
(265, 1, 'admin/customuser', 'POST', '127.0.0.1', '{\"_token\":\"xk267iTQYekUvHxsDKuXClpl8rT6JwnQe3CsDy1a\",\"rows\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"11\",\"image\":\"aa\"},{\"name\":\"mm1\",\"email\":\"mm1@mm.com\",\"password\":\"22\",\"image\":\"bb\"}]}', '2024-09-09 04:50:27', '2024-09-09 04:50:27'),
(266, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 04:50:27', '2024-09-09 04:50:27'),
(267, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 04:54:15', '2024-09-09 04:54:15'),
(268, 1, 'admin/dynamicsave', 'POST', '127.0.0.1', '{\"_token\":\"xk267iTQYekUvHxsDKuXClpl8rT6JwnQe3CsDy1a\",\"rows\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"11\",\"image\":\"aa\"},{\"name\":\"mm1\",\"email\":\"mm1@mm.com\",\"password\":\"22\",\"image\":\"bb\"}]}', '2024-09-09 04:54:42', '2024-09-09 04:54:42'),
(269, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 04:54:42', '2024-09-09 04:54:42'),
(270, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 04:55:14', '2024-09-09 04:55:14'),
(271, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 04:55:28', '2024-09-09 04:55:28'),
(272, 1, 'admin/dynamicsave', 'POST', '127.0.0.1', '{\"_token\":\"xk267iTQYekUvHxsDKuXClpl8rT6JwnQe3CsDy1a\",\"rows\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"11\",\"image\":\"aa\"},{\"name\":\"mm1\",\"email\":\"mm1@mm.com\",\"password\":\"22\",\"image\":\"bb\"}]}', '2024-09-09 04:55:46', '2024-09-09 04:55:46'),
(273, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 04:55:47', '2024-09-09 04:55:47'),
(274, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 05:02:01', '2024-09-09 05:02:01'),
(275, 1, 'admin/dynamicsave', 'POST', '127.0.0.1', '{\"_token\":\"xk267iTQYekUvHxsDKuXClpl8rT6JwnQe3CsDy1a\",\"rows\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"11\",\"image\":\"m.jpg\"},{\"name\":\"mm1\",\"email\":\"mm1@mm.com\",\"password\":\"22\",\"image\":\"m.png\"}]}', '2024-09-09 05:02:38', '2024-09-09 05:02:38'),
(276, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 05:02:39', '2024-09-09 05:02:39'),
(277, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 05:06:15', '2024-09-09 05:06:15'),
(278, 1, 'admin/dynamicsave', 'POST', '127.0.0.1', '{\"_token\":\"xk267iTQYekUvHxsDKuXClpl8rT6JwnQe3CsDy1a\",\"rows\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"11\",\"image\":\"m\"},{\"name\":\"mm1\",\"email\":\"mm1@mm.com\",\"password\":\"22\",\"image\":\"b\"}]}', '2024-09-09 05:06:41', '2024-09-09 05:06:41'),
(279, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 05:06:41', '2024-09-09 05:06:41'),
(280, 1, 'admin/dynamicsave', 'POST', '127.0.0.1', '{\"_token\":\"xk267iTQYekUvHxsDKuXClpl8rT6JwnQe3CsDy1a\",\"rows\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"11\",\"image\":\"m.jpg\"},{\"name\":\"mm1\",\"email\":\"mm1@mm.com\",\"password\":\"22\",\"image\":\"m.png\"}]}', '2024-09-09 05:07:28', '2024-09-09 05:07:28'),
(281, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 05:07:28', '2024-09-09 05:07:28'),
(282, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 05:08:08', '2024-09-09 05:08:08'),
(283, 1, 'admin/dynamicsave', 'POST', '127.0.0.1', '{\"_token\":\"xk267iTQYekUvHxsDKuXClpl8rT6JwnQe3CsDy1a\",\"rows\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"11\",\"image\":\"m.jpg\"}]}', '2024-09-09 05:08:30', '2024-09-09 05:08:30'),
(284, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 05:08:30', '2024-09-09 05:08:30'),
(285, 1, 'admin/dynamicsave', 'POST', '127.0.0.1', '{\"_token\":\"xk267iTQYekUvHxsDKuXClpl8rT6JwnQe3CsDy1a\",\"rows\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"11\",\"image\":\"m.jpg\"}]}', '2024-09-09 05:10:38', '2024-09-09 05:10:38'),
(286, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 05:10:38', '2024-09-09 05:10:38'),
(287, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 05:11:27', '2024-09-09 05:11:27'),
(288, 1, 'admin/dynamicsave', 'POST', '127.0.0.1', '{\"_token\":\"xk267iTQYekUvHxsDKuXClpl8rT6JwnQe3CsDy1a\",\"rows\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"11\",\"image\":\"m.jpg\"},{\"name\":\"mm1\",\"email\":\"mm1@mm.com\",\"password\":\"22\",\"image\":\"m.png\"}]}', '2024-09-09 05:11:58', '2024-09-09 05:11:58'),
(289, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 05:11:58', '2024-09-09 05:11:58'),
(290, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 05:13:04', '2024-09-09 05:13:04'),
(291, 1, 'admin/dynamicsave', 'POST', '127.0.0.1', '{\"_token\":\"xk267iTQYekUvHxsDKuXClpl8rT6JwnQe3CsDy1a\",\"rows\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"11\",\"image\":\"aa\"},{\"name\":\"mm1\",\"email\":\"mm1@mm.com\",\"password\":\"22\",\"image\":\"bb\"}]}', '2024-09-09 05:13:28', '2024-09-09 05:13:28'),
(292, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 05:13:28', '2024-09-09 05:13:28'),
(293, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 05:15:42', '2024-09-09 05:15:42'),
(294, 1, 'admin/dynamicsave', 'POST', '127.0.0.1', '{\"_token\":\"xk267iTQYekUvHxsDKuXClpl8rT6JwnQe3CsDy1a\",\"rows\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"11\"},{\"name\":\"mm1\",\"email\":\"mm1@mm.com\",\"password\":\"22\"}]}', '2024-09-09 05:16:48', '2024-09-09 05:16:48'),
(295, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 05:16:48', '2024-09-09 05:16:48'),
(296, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 05:17:17', '2024-09-09 05:17:17'),
(297, 1, 'admin/dynamicsave', 'POST', '127.0.0.1', '{\"_token\":\"xk267iTQYekUvHxsDKuXClpl8rT6JwnQe3CsDy1a\",\"rows\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"11\"},{\"name\":\"mm1\",\"email\":\"mm1@mm.com\",\"password\":\"22\"}]}', '2024-09-09 05:17:52', '2024-09-09 05:17:52'),
(298, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 05:17:53', '2024-09-09 05:17:53'),
(299, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 05:21:31', '2024-09-09 05:21:31'),
(300, 1, 'admin/dynamicsave', 'POST', '127.0.0.1', '{\"_token\":\"xk267iTQYekUvHxsDKuXClpl8rT6JwnQe3CsDy1a\",\"rows\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"11\"},{\"name\":\"mm1\",\"email\":\"mm1@mm.com\",\"password\":\"22\"}]}', '2024-09-09 05:22:00', '2024-09-09 05:22:00'),
(301, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 05:22:00', '2024-09-09 05:22:00'),
(302, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 05:43:17', '2024-09-09 05:43:17'),
(303, 1, 'admin/dynamicsave', 'POST', '127.0.0.1', '{\"_token\":\"xk267iTQYekUvHxsDKuXClpl8rT6JwnQe3CsDy1a\",\"rows\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"11\"},{\"name\":\"mm1\",\"email\":\"mm1@mm.com\",\"password\":\"22\"}]}', '2024-09-09 05:43:54', '2024-09-09 05:43:54'),
(304, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 05:43:55', '2024-09-09 05:43:55'),
(305, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-09-09 21:09:07', '2024-09-09 21:09:07'),
(306, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-09 21:12:32', '2024-09-09 21:12:32'),
(307, 1, 'admin/customusergridshow', 'GET', '127.0.0.1', '[]', '2024-09-09 21:12:38', '2024-09-09 21:12:38'),
(308, 1, 'admin/customusershow', 'GET', '127.0.0.1', '[]', '2024-09-09 21:12:42', '2024-09-09 21:12:42'),
(309, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-09 21:12:46', '2024-09-09 21:12:46'),
(310, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 21:13:14', '2024-09-09 21:13:14'),
(311, 1, 'admin/dynamicsave', 'POST', '127.0.0.1', '{\"_token\":\"GBodyQP429yrJXxkDUJguIVIjCVMveHJDDtIo1e3\",\"rows\":[{\"name\":\"mm2\",\"email\":\"mm2@mm.com\",\"password\":\"12\"},{\"name\":\"mm3\",\"email\":\"mm3@mm.com\",\"password\":\"14\"}]}', '2024-09-09 21:13:54', '2024-09-09 21:13:54'),
(312, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 21:13:55', '2024-09-09 21:13:55'),
(313, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 21:16:39', '2024-09-09 21:16:39'),
(314, 1, 'admin/dynamicsave', 'POST', '127.0.0.1', '{\"_token\":\"GBodyQP429yrJXxkDUJguIVIjCVMveHJDDtIo1e3\",\"rows\":[{\"name\":\"mm4\",\"email\":\"mm4@mm.com\",\"password\":\"12\"},{\"name\":\"mm5\",\"email\":\"mm5@mm.com\",\"password\":\"21\"}]}', '2024-09-09 21:17:14', '2024-09-09 21:17:14'),
(315, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 21:17:15', '2024-09-09 21:17:15'),
(316, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-09-09 21:21:50', '2024-09-09 21:21:50'),
(317, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Multiple Row\",\"icon\":\"icon-address-book\",\"uri\":\"dynamicsave\",\"roles\":[null],\"permission\":null,\"_token\":\"GBodyQP429yrJXxkDUJguIVIjCVMveHJDDtIo1e3\"}', '2024-09-09 21:22:45', '2024-09-09 21:22:45'),
(318, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-09-09 21:22:46', '2024-09-09 21:22:46'),
(319, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-09-09 21:22:49', '2024-09-09 21:22:49'),
(320, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 21:22:54', '2024-09-09 21:22:54'),
(321, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 21:28:26', '2024-09-09 21:28:26'),
(322, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 21:30:51', '2024-09-09 21:30:51'),
(323, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 22:24:19', '2024-09-09 22:24:19'),
(324, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 22:24:43', '2024-09-09 22:24:43'),
(325, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 22:25:37', '2024-09-09 22:25:37'),
(326, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 22:29:23', '2024-09-09 22:29:23'),
(327, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 22:29:27', '2024-09-09 22:29:27'),
(328, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 22:44:06', '2024-09-09 22:44:06'),
(329, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 23:05:24', '2024-09-09 23:05:24'),
(330, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 23:05:31', '2024-09-09 23:05:31'),
(331, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 23:07:19', '2024-09-09 23:07:19'),
(332, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 23:07:27', '2024-09-09 23:07:27'),
(333, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 23:07:33', '2024-09-09 23:07:33'),
(334, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 23:08:26', '2024-09-09 23:08:26'),
(335, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 23:09:31', '2024-09-09 23:09:31'),
(336, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 23:09:38', '2024-09-09 23:09:38'),
(337, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 23:09:43', '2024-09-09 23:09:43'),
(338, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 23:13:58', '2024-09-09 23:13:58'),
(339, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-09 23:14:46', '2024-09-09 23:14:46'),
(340, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 00:00:16', '2024-09-10 00:00:16'),
(341, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 00:00:58', '2024-09-10 00:00:58'),
(342, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 00:07:56', '2024-09-10 00:07:56'),
(343, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-09-10 00:18:34', '2024-09-10 00:18:34'),
(344, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-09-10 00:18:40', '2024-09-10 00:18:40'),
(345, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Multiple Row-1\",\"icon\":\"icon-address-card\",\"uri\":\"dynamicsave1\",\"roles\":[null],\"permission\":null,\"_token\":\"GBodyQP429yrJXxkDUJguIVIjCVMveHJDDtIo1e3\"}', '2024-09-10 00:19:17', '2024-09-10 00:19:17'),
(346, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-09-10 00:19:18', '2024-09-10 00:19:18'),
(347, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-09-10 00:19:22', '2024-09-10 00:19:22'),
(348, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-09-10 00:19:29', '2024-09-10 00:19:29'),
(349, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 00:19:33', '2024-09-10 00:19:33'),
(350, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 00:47:54', '2024-09-10 00:47:54'),
(351, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 00:53:37', '2024-09-10 00:53:37'),
(352, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 00:53:52', '2024-09-10 00:53:52'),
(353, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 00:53:55', '2024-09-10 00:53:55'),
(354, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 00:54:04', '2024-09-10 00:54:04'),
(355, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 00:54:11', '2024-09-10 00:54:11'),
(356, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 00:54:42', '2024-09-10 00:54:42'),
(357, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 00:57:26', '2024-09-10 00:57:26'),
(358, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 01:14:10', '2024-09-10 01:14:10'),
(359, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 01:15:20', '2024-09-10 01:15:20'),
(360, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 01:16:13', '2024-09-10 01:16:13'),
(361, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 01:16:43', '2024-09-10 01:16:43'),
(362, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 01:30:48', '2024-09-10 01:30:48'),
(363, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 01:31:04', '2024-09-10 01:31:04'),
(364, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 01:31:55', '2024-09-10 01:31:55'),
(365, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 01:33:19', '2024-09-10 01:33:19'),
(366, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 01:33:26', '2024-09-10 01:33:26'),
(367, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 01:50:19', '2024-09-10 01:50:19'),
(368, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 01:51:20', '2024-09-10 01:51:20'),
(369, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 01:52:07', '2024-09-10 01:52:07'),
(370, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 01:52:56', '2024-09-10 01:52:56'),
(371, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 01:54:25', '2024-09-10 01:54:25'),
(372, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 01:55:19', '2024-09-10 01:55:19'),
(373, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 01:56:18', '2024-09-10 01:56:18'),
(374, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 01:58:30', '2024-09-10 01:58:30'),
(375, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 01:59:19', '2024-09-10 01:59:19'),
(376, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 02:00:01', '2024-09-10 02:00:01'),
(377, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 02:00:37', '2024-09-10 02:00:37'),
(378, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 02:01:06', '2024-09-10 02:01:06'),
(379, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 02:01:47', '2024-09-10 02:01:47'),
(380, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 02:02:28', '2024-09-10 02:02:28'),
(381, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 02:03:32', '2024-09-10 02:03:32');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(382, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 02:04:13', '2024-09-10 02:04:13'),
(383, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 02:04:31', '2024-09-10 02:04:31'),
(384, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 02:05:15', '2024-09-10 02:05:15'),
(385, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 02:36:49', '2024-09-10 02:36:49'),
(386, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 02:37:11', '2024-09-10 02:37:11'),
(387, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 02:37:44', '2024-09-10 02:37:44'),
(388, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 02:39:42', '2024-09-10 02:39:42'),
(389, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 02:40:09', '2024-09-10 02:40:09'),
(390, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 02:41:41', '2024-09-10 02:41:41'),
(391, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 02:42:11', '2024-09-10 02:42:11'),
(392, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 02:42:51', '2024-09-10 02:42:51'),
(393, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 02:43:17', '2024-09-10 02:43:17'),
(394, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 02:43:44', '2024-09-10 02:43:44'),
(395, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 02:45:11', '2024-09-10 02:45:11'),
(396, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 02:45:28', '2024-09-10 02:45:28'),
(397, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 02:46:34', '2024-09-10 02:46:34'),
(398, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 02:48:54', '2024-09-10 02:48:54'),
(399, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 02:49:03', '2024-09-10 02:49:03'),
(400, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 02:49:07', '2024-09-10 02:49:07'),
(401, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 02:52:11', '2024-09-10 02:52:11'),
(402, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 02:53:17', '2024-09-10 02:53:17'),
(403, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 02:54:41', '2024-09-10 02:54:41'),
(404, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 02:56:13', '2024-09-10 02:56:13'),
(405, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 02:56:26', '2024-09-10 02:56:26'),
(406, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 02:56:55', '2024-09-10 02:56:55'),
(407, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 02:57:37', '2024-09-10 02:57:37'),
(408, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 02:57:57', '2024-09-10 02:57:57'),
(409, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 02:58:11', '2024-09-10 02:58:11'),
(410, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 03:07:30', '2024-09-10 03:07:30'),
(411, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 03:07:56', '2024-09-10 03:07:56'),
(412, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 03:09:36', '2024-09-10 03:09:36'),
(413, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 03:10:44', '2024-09-10 03:10:44'),
(414, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 03:10:55', '2024-09-10 03:10:55'),
(415, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 03:11:21', '2024-09-10 03:11:21'),
(416, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 03:11:55', '2024-09-10 03:11:55'),
(417, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 03:13:00', '2024-09-10 03:13:00'),
(418, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 03:13:27', '2024-09-10 03:13:27'),
(419, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 03:18:46', '2024-09-10 03:18:46'),
(420, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 03:19:26', '2024-09-10 03:19:26'),
(421, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 03:21:40', '2024-09-10 03:21:40'),
(422, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-09-10 03:37:37', '2024-09-10 03:37:37'),
(423, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-09-10 03:37:44', '2024-09-10 03:37:44'),
(424, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Custom\",\"icon\":\"icon-allergies\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"GBodyQP429yrJXxkDUJguIVIjCVMveHJDDtIo1e3\"}', '2024-09-10 03:38:01', '2024-09-10 03:38:01'),
(425, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-09-10 03:38:02', '2024-09-10 03:38:02'),
(426, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-09-10 03:38:07', '2024-09-10 03:38:07'),
(427, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-09-10 03:39:04', '2024-09-10 03:39:04'),
(428, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '[]', '2024-09-10 03:39:24', '2024-09-10 03:39:24'),
(429, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"13\",\"search_terms\":null,\"title\":\"Custom User\",\"icon\":\"icon-address-book\",\"uri\":\"customuser\",\"roles\":[null],\"permission\":null,\"_token\":\"GBodyQP429yrJXxkDUJguIVIjCVMveHJDDtIo1e3\",\"_method\":\"PUT\"}', '2024-09-10 03:39:31', '2024-09-10 03:39:31'),
(430, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-09-10 03:39:31', '2024-09-10 03:39:31'),
(431, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '[]', '2024-09-10 03:39:42', '2024-09-10 03:39:42'),
(432, 1, 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"13\",\"search_terms\":null,\"title\":\"Custom User Show\",\"icon\":\"icon-address-book\",\"uri\":\"customusershow\",\"roles\":[null],\"permission\":null,\"_token\":\"GBodyQP429yrJXxkDUJguIVIjCVMveHJDDtIo1e3\",\"_method\":\"PUT\"}', '2024-09-10 03:39:52', '2024-09-10 03:39:52'),
(433, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-09-10 03:39:52', '2024-09-10 03:39:52'),
(434, 1, 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '[]', '2024-09-10 03:39:57', '2024-09-10 03:39:57'),
(435, 1, 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"13\",\"search_terms\":null,\"title\":\"Custom User Grid Show\",\"icon\":\"icon-address-book\",\"uri\":\"customusergridshow\",\"roles\":[null],\"permission\":null,\"_token\":\"GBodyQP429yrJXxkDUJguIVIjCVMveHJDDtIo1e3\",\"_method\":\"PUT\"}', '2024-09-10 03:40:01', '2024-09-10 03:40:01'),
(436, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-09-10 03:40:01', '2024-09-10 03:40:01'),
(437, 1, 'admin/auth/menu/11/edit', 'GET', '127.0.0.1', '[]', '2024-09-10 03:40:08', '2024-09-10 03:40:08'),
(438, 1, 'admin/auth/menu/11', 'PUT', '127.0.0.1', '{\"parent_id\":\"13\",\"search_terms\":null,\"title\":\"Multiple Row\",\"icon\":\"icon-address-book\",\"uri\":\"dynamicsave\",\"roles\":[null],\"permission\":null,\"_token\":\"GBodyQP429yrJXxkDUJguIVIjCVMveHJDDtIo1e3\",\"_method\":\"PUT\"}', '2024-09-10 03:40:13', '2024-09-10 03:40:13'),
(439, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-09-10 03:40:14', '2024-09-10 03:40:14'),
(440, 1, 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '[]', '2024-09-10 03:40:18', '2024-09-10 03:40:18'),
(441, 1, 'admin/auth/menu/12', 'PUT', '127.0.0.1', '{\"parent_id\":\"13\",\"search_terms\":null,\"title\":\"Multiple Row-1\",\"icon\":\"icon-address-card\",\"uri\":\"dynamicsave1\",\"roles\":[null],\"permission\":null,\"_token\":\"GBodyQP429yrJXxkDUJguIVIjCVMveHJDDtIo1e3\",\"_method\":\"PUT\"}', '2024-09-10 03:40:23', '2024-09-10 03:40:23'),
(442, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-09-10 03:40:24', '2024-09-10 03:40:24'),
(443, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-09-10 03:40:26', '2024-09-10 03:40:26'),
(444, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-09-10 03:40:29', '2024-09-10 03:40:29'),
(445, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 03:40:39', '2024-09-10 03:40:39'),
(446, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 03:53:11', '2024-09-10 03:53:11'),
(447, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 03:56:44', '2024-09-10 03:56:44'),
(448, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 03:57:53', '2024-09-10 03:57:53'),
(449, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 03:58:39', '2024-09-10 03:58:39'),
(450, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 03:59:34', '2024-09-10 03:59:34'),
(451, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 03:59:52', '2024-09-10 03:59:52'),
(452, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 04:00:53', '2024-09-10 04:00:53'),
(453, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 04:12:25', '2024-09-10 04:12:25'),
(454, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 04:27:21', '2024-09-10 04:27:21'),
(455, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 04:34:28', '2024-09-10 04:34:28'),
(456, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 04:34:44', '2024-09-10 04:34:44'),
(457, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 04:34:47', '2024-09-10 04:34:47'),
(458, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-09-10 23:11:24', '2024-09-10 23:11:24'),
(459, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 23:12:19', '2024-09-10 23:12:19'),
(460, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 23:19:06', '2024-09-10 23:19:06'),
(461, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 23:19:47', '2024-09-10 23:19:47'),
(462, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 23:20:03', '2024-09-10 23:20:03'),
(463, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 23:30:09', '2024-09-10 23:30:09'),
(464, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 23:34:57', '2024-09-10 23:34:57'),
(465, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-10 23:57:02', '2024-09-10 23:57:02'),
(466, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-11 00:04:44', '2024-09-11 00:04:44'),
(467, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-11 00:09:58', '2024-09-11 00:09:58'),
(468, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-11 00:12:56', '2024-09-11 00:12:56'),
(469, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-11 00:14:34', '2024-09-11 00:14:34'),
(470, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"s5NHVsvzTHgW3AzHJAxeleYDPtkHxb0zlA6gRxEp\",\"name\":[\"mm\",\"mm1\",\"mm2\",\"mm3\"],\"email\":[\"mm@mm.com\",\"mm1@mm.com\",\"mm2@mm.com\",\"mm3@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-11 00:15:13', '2024-09-11 00:15:13'),
(471, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-11 00:16:45', '2024-09-11 00:16:45'),
(472, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"s5NHVsvzTHgW3AzHJAxeleYDPtkHxb0zlA6gRxEp\",\"name\":[\"mm\",\"mm1\",\"mm2\",\"mm3\"],\"email\":[\"mm@mm.com\",\"mm1@mm.com\",\"mm2@mm.com\",\"mm3@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-11 00:17:25', '2024-09-11 00:17:25'),
(473, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"s5NHVsvzTHgW3AzHJAxeleYDPtkHxb0zlA6gRxEp\",\"name\":[\"mm\",\"mm1\",\"mm2\",\"mm3\"],\"email\":[\"mm@mm.com\",\"mm1@mm.com\",\"mm2@mm.com\",\"mm3@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-11 00:21:47', '2024-09-11 00:21:47'),
(474, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"s5NHVsvzTHgW3AzHJAxeleYDPtkHxb0zlA6gRxEp\",\"name\":[\"mm\",\"mm1\",\"mm2\",\"mm3\"],\"email\":[\"mm@mm.com\",\"mm1@mm.com\",\"mm2@mm.com\",\"mm3@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-11 00:24:53', '2024-09-11 00:24:53'),
(475, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"s5NHVsvzTHgW3AzHJAxeleYDPtkHxb0zlA6gRxEp\",\"name\":[\"mm\",\"mm1\",\"mm2\",\"mm3\"],\"email\":[\"mm@mm.com\",\"mm1@mm.com\",\"mm2@mm.com\",\"mm3@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-11 00:25:36', '2024-09-11 00:25:36'),
(476, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-11 00:25:41', '2024-09-11 00:25:41'),
(477, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"s5NHVsvzTHgW3AzHJAxeleYDPtkHxb0zlA6gRxEp\",\"name\":[\"mm\"],\"email\":[\"mm@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-11 00:25:45', '2024-09-11 00:25:45'),
(478, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-11 00:28:21', '2024-09-11 00:28:21'),
(479, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-11 00:28:38', '2024-09-11 00:28:38'),
(480, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-11 00:36:57', '2024-09-11 00:36:57'),
(481, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"s5NHVsvzTHgW3AzHJAxeleYDPtkHxb0zlA6gRxEp\",\"name\":[\"mm\",\"mm1\",\"mm2\",\"mm3\"],\"email\":[\"mm@mm.com\",\"mm1@mm.com\",\"mm2@mm.com\",\"mm3@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-11 00:37:40', '2024-09-11 00:37:40'),
(482, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"s5NHVsvzTHgW3AzHJAxeleYDPtkHxb0zlA6gRxEp\",\"name\":[\"mm\",\"mm1\",\"mm2\",\"mm3\"],\"email\":[\"mm@mm.com\",\"mm1@mm.com\",\"mm2@mm.com\",\"mm3@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-11 00:38:43', '2024-09-11 00:38:43'),
(483, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"s5NHVsvzTHgW3AzHJAxeleYDPtkHxb0zlA6gRxEp\",\"name\":[\"mm\",\"mm1\",\"mm2\",\"mm3\"],\"email\":[\"mm@mm.com\",\"mm1@mm.com\",\"mm2@mm.com\",\"mm3@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-11 00:39:28', '2024-09-11 00:39:28'),
(484, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"s5NHVsvzTHgW3AzHJAxeleYDPtkHxb0zlA6gRxEp\",\"name\":[\"mm\",\"mm1\",\"mm2\",\"mm3\"],\"email\":[\"mm@mm.com\",\"mm1@mm.com\",\"mm2@mm.com\",\"mm3@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-11 00:40:10', '2024-09-11 00:40:10'),
(485, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"s5NHVsvzTHgW3AzHJAxeleYDPtkHxb0zlA6gRxEp\",\"name\":[\"mm\",\"mm1\",\"mm2\",\"mm3\"],\"email\":[\"mm@mm.com\",\"mm1@mm.com\",\"mm2@mm.com\",\"mm3@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-11 00:42:21', '2024-09-11 00:42:21'),
(486, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"s5NHVsvzTHgW3AzHJAxeleYDPtkHxb0zlA6gRxEp\",\"name\":[\"mm\",\"mm1\",\"mm2\",\"mm3\"],\"email\":[\"mm@mm.com\",\"mm1@mm.com\",\"mm2@mm.com\",\"mm3@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-11 00:45:00', '2024-09-11 00:45:00'),
(487, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"s5NHVsvzTHgW3AzHJAxeleYDPtkHxb0zlA6gRxEp\",\"name\":[\"mm\",\"mm1\",\"mm2\",\"mm3\"],\"email\":[\"mm@mm.com\",\"mm1@mm.com\",\"mm2@mm.com\",\"mm3@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-11 00:45:23', '2024-09-11 00:45:23'),
(488, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"s5NHVsvzTHgW3AzHJAxeleYDPtkHxb0zlA6gRxEp\",\"name\":[\"mm\",\"mm1\",\"mm2\",\"mm3\"],\"email\":[\"mm@mm.com\",\"mm1@mm.com\",\"mm2@mm.com\",\"mm3@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-11 00:48:21', '2024-09-11 00:48:21'),
(489, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-11 00:48:22', '2024-09-11 00:48:22'),
(490, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-11 00:48:32', '2024-09-11 00:48:32'),
(491, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"s5NHVsvzTHgW3AzHJAxeleYDPtkHxb0zlA6gRxEp\",\"name\":[\"mm\"],\"email\":[\"mm@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-11 00:48:48', '2024-09-11 00:48:48'),
(492, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-11 00:48:48', '2024-09-11 00:48:48'),
(493, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-11 00:50:08', '2024-09-11 00:50:08'),
(494, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"s5NHVsvzTHgW3AzHJAxeleYDPtkHxb0zlA6gRxEp\",\"name\":[\"mm\",\"mm1\"],\"email\":[\"mm@mm.com\",\"mm1@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-11 00:50:34', '2024-09-11 00:50:34'),
(495, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-11 00:50:35', '2024-09-11 00:50:35'),
(496, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-11 00:58:38', '2024-09-11 00:58:38'),
(497, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"s5NHVsvzTHgW3AzHJAxeleYDPtkHxb0zlA6gRxEp\",\"name\":[\"mm\",\"mm1\"],\"email\":[\"mm@mm.com\",\"mm1@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-11 00:59:03', '2024-09-11 00:59:03'),
(498, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-11 00:59:03', '2024-09-11 00:59:03'),
(499, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-11 01:00:19', '2024-09-11 01:00:19'),
(500, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"s5NHVsvzTHgW3AzHJAxeleYDPtkHxb0zlA6gRxEp\",\"name\":[\"mm\",\"mm1\"],\"email\":[\"mm@mm.com\",\"mm1@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-11 01:00:45', '2024-09-11 01:00:45'),
(501, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-11 01:00:46', '2024-09-11 01:00:46'),
(502, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-11 01:02:35', '2024-09-11 01:02:35'),
(503, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"s5NHVsvzTHgW3AzHJAxeleYDPtkHxb0zlA6gRxEp\",\"name\":[\"mm\",\"mm1\"],\"email\":[\"mm@mm.com\",\"mm1@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-11 01:03:02', '2024-09-11 01:03:02'),
(504, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-11 01:03:02', '2024-09-11 01:03:02'),
(505, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-11 01:16:11', '2024-09-11 01:16:11'),
(506, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"s5NHVsvzTHgW3AzHJAxeleYDPtkHxb0zlA6gRxEp\",\"name\":[\"mm\",\"mm1\"],\"email\":[\"mm@mm.com\",\"mm1@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-11 01:16:37', '2024-09-11 01:16:37'),
(507, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-11 01:16:38', '2024-09-11 01:16:38'),
(508, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-11 01:17:44', '2024-09-11 01:17:44'),
(509, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"s5NHVsvzTHgW3AzHJAxeleYDPtkHxb0zlA6gRxEp\",\"name\":[\"mm\"],\"email\":[\"mm@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-11 01:17:58', '2024-09-11 01:17:58'),
(510, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-11 01:17:58', '2024-09-11 01:17:58'),
(511, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-09-15 21:52:35', '2024-09-15 21:52:35'),
(512, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-15 21:52:44', '2024-09-15 21:52:44'),
(513, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-15 21:56:51', '2024-09-15 21:56:51'),
(514, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"LOM4yEsTve96Bnfsp5O8N2tGPGRVPYrXZtKUFHpB\",\"name\":[\"mm\"],\"email\":[\"mm@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-15 21:57:09', '2024-09-15 21:57:09'),
(515, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"LOM4yEsTve96Bnfsp5O8N2tGPGRVPYrXZtKUFHpB\",\"name\":[\"mm\"],\"email\":[\"mm@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-15 21:58:01', '2024-09-15 21:58:01'),
(516, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-15 21:59:06', '2024-09-15 21:59:06'),
(517, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"LOM4yEsTve96Bnfsp5O8N2tGPGRVPYrXZtKUFHpB\",\"name\":[\"mm\",\"mm1\",\"mm2\",\"mm3\"],\"email\":[\"mm@mm.com\",\"mm1@mm.com\",\"mm2@mm.com\",\"mm3@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-15 21:59:47', '2024-09-15 21:59:47'),
(518, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"LOM4yEsTve96Bnfsp5O8N2tGPGRVPYrXZtKUFHpB\",\"name\":[\"mm\",\"mm1\",\"mm2\",\"mm3\"],\"email\":[\"mm@mm.com\",\"mm1@mm.com\",\"mm2@mm.com\",\"mm3@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-15 22:05:43', '2024-09-15 22:05:43'),
(519, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-15 22:05:43', '2024-09-15 22:05:43'),
(520, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"LOM4yEsTve96Bnfsp5O8N2tGPGRVPYrXZtKUFHpB\",\"name\":[\"mm\"],\"email\":[\"mm@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-15 22:05:59', '2024-09-15 22:05:59'),
(521, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-15 22:05:59', '2024-09-15 22:05:59'),
(522, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-15 22:06:15', '2024-09-15 22:06:15'),
(523, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"LOM4yEsTve96Bnfsp5O8N2tGPGRVPYrXZtKUFHpB\",\"name\":[\"mm\"],\"email\":[\"mm@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-15 22:06:27', '2024-09-15 22:06:27'),
(524, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-15 22:06:27', '2024-09-15 22:06:27'),
(525, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-15 22:07:34', '2024-09-15 22:07:34'),
(526, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"LOM4yEsTve96Bnfsp5O8N2tGPGRVPYrXZtKUFHpB\",\"name\":[\"mm\"],\"email\":[\"mm@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-15 22:07:47', '2024-09-15 22:07:47'),
(527, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-15 22:07:48', '2024-09-15 22:07:48'),
(528, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-15 22:55:44', '2024-09-15 22:55:44'),
(529, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"LOM4yEsTve96Bnfsp5O8N2tGPGRVPYrXZtKUFHpB\",\"users\":{\"0\":{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"12\"},\"3\":{\"name\":\"mm1\",\"email\":\"mm1@mm.com\",\"password\":\"11\"}}}', '2024-09-15 22:56:52', '2024-09-15 22:56:52'),
(530, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-15 22:56:53', '2024-09-15 22:56:53'),
(531, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"LOM4yEsTve96Bnfsp5O8N2tGPGRVPYrXZtKUFHpB\"}', '2024-09-15 22:57:37', '2024-09-15 22:57:37'),
(532, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-15 22:57:41', '2024-09-15 22:57:41'),
(533, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"LOM4yEsTve96Bnfsp5O8N2tGPGRVPYrXZtKUFHpB\",\"users\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"12\"},{\"name\":\"mm1\",\"email\":\"mm1@mm.com\",\"password\":\"11\"}]}', '2024-09-15 22:58:33', '2024-09-15 22:58:33'),
(534, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-15 22:58:33', '2024-09-15 22:58:33'),
(535, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-15 22:59:40', '2024-09-15 22:59:40'),
(536, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"LOM4yEsTve96Bnfsp5O8N2tGPGRVPYrXZtKUFHpB\",\"users\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"12\"},{\"name\":\"mm1\",\"email\":\"mm1@mm.com\",\"password\":\"12\"}]}', '2024-09-15 23:00:47', '2024-09-15 23:00:47'),
(537, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-15 23:00:47', '2024-09-15 23:00:47'),
(538, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-15 23:03:39', '2024-09-15 23:03:39'),
(539, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"LOM4yEsTve96Bnfsp5O8N2tGPGRVPYrXZtKUFHpB\",\"users\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"12\"}]}', '2024-09-15 23:04:10', '2024-09-15 23:04:10'),
(540, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-15 23:04:10', '2024-09-15 23:04:10'),
(541, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"LOM4yEsTve96Bnfsp5O8N2tGPGRVPYrXZtKUFHpB\",\"users\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"11\"}]}', '2024-09-15 23:04:49', '2024-09-15 23:04:49'),
(542, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-15 23:04:50', '2024-09-15 23:04:50'),
(543, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"LOM4yEsTve96Bnfsp5O8N2tGPGRVPYrXZtKUFHpB\",\"users\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"11\"}]}', '2024-09-15 23:06:02', '2024-09-15 23:06:02'),
(544, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-15 23:07:07', '2024-09-15 23:07:07'),
(545, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"LOM4yEsTve96Bnfsp5O8N2tGPGRVPYrXZtKUFHpB\",\"users\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"11\"}]}', '2024-09-15 23:07:42', '2024-09-15 23:07:42'),
(546, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-15 23:07:42', '2024-09-15 23:07:42'),
(547, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-15 23:08:13', '2024-09-15 23:08:13'),
(548, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"LOM4yEsTve96Bnfsp5O8N2tGPGRVPYrXZtKUFHpB\",\"users\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"11\"},{\"name\":\"mm1\",\"email\":\"mm1@mm.com\",\"password\":\"11\"}]}', '2024-09-15 23:08:44', '2024-09-15 23:08:44'),
(549, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-15 23:08:45', '2024-09-15 23:08:45'),
(550, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"LOM4yEsTve96Bnfsp5O8N2tGPGRVPYrXZtKUFHpB\",\"users\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"123456\"},{\"name\":\"mm1\",\"email\":\"mm1@mm.com\",\"password\":\"123456\"}]}', '2024-09-15 23:12:55', '2024-09-15 23:12:55'),
(551, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-15 23:13:08', '2024-09-15 23:13:08'),
(552, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"LOM4yEsTve96Bnfsp5O8N2tGPGRVPYrXZtKUFHpB\",\"users\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"123456\"},{\"name\":\"mm1\",\"email\":\"mm1@mm.com\",\"password\":\"123456\"}]}', '2024-09-15 23:13:35', '2024-09-15 23:13:35'),
(553, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-15 23:13:36', '2024-09-15 23:13:36'),
(554, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-15 23:43:48', '2024-09-15 23:43:48'),
(555, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-15 23:44:52', '2024-09-15 23:44:52'),
(556, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"LOM4yEsTve96Bnfsp5O8N2tGPGRVPYrXZtKUFHpB\",\"users\":{\"0\":{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"123456\"},\"3\":{\"name\":\"mm1\",\"email\":\"mm1@mm.com\",\"password\":\"123456\"}}}', '2024-09-15 23:45:48', '2024-09-15 23:45:48'),
(557, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-15 23:45:49', '2024-09-15 23:45:49'),
(558, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-15 23:46:21', '2024-09-15 23:46:21'),
(559, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"LOM4yEsTve96Bnfsp5O8N2tGPGRVPYrXZtKUFHpB\",\"users\":{\"3\":{\"name\":\"mm2\",\"email\":\"mm2@mm.com\",\"password\":\"123456\"},\"4\":{\"name\":\"mm3\",\"email\":\"mm3@mm.com\",\"password\":\"123456\"}}}', '2024-09-15 23:47:09', '2024-09-15 23:47:09'),
(560, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-15 23:47:10', '2024-09-15 23:47:10'),
(561, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-15 23:48:32', '2024-09-15 23:48:32'),
(562, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"LOM4yEsTve96Bnfsp5O8N2tGPGRVPYrXZtKUFHpB\"}', '2024-09-15 23:48:47', '2024-09-15 23:48:47'),
(563, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-15 23:48:51', '2024-09-15 23:48:51'),
(564, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-15 23:52:16', '2024-09-15 23:52:16'),
(565, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-15 23:52:50', '2024-09-15 23:52:50'),
(566, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-15 23:53:03', '2024-09-15 23:53:03'),
(567, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-15 23:58:07', '2024-09-15 23:58:07'),
(568, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-16 00:05:49', '2024-09-16 00:05:49'),
(569, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"LOM4yEsTve96Bnfsp5O8N2tGPGRVPYrXZtKUFHpB\",\"users\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"123456\"},{\"name\":\"mm1\",\"email\":\"mm1@mm.com\",\"password\":\"123456\"}]}', '2024-09-16 00:06:17', '2024-09-16 00:06:17'),
(570, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-16 00:06:18', '2024-09-16 00:06:18'),
(571, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-16 00:07:34', '2024-09-16 00:07:34'),
(572, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"LOM4yEsTve96Bnfsp5O8N2tGPGRVPYrXZtKUFHpB\",\"users\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"123456\"},{\"name\":\"mm1\",\"email\":\"mm1@mm.com\",\"password\":\"123456\"}]}', '2024-09-16 00:08:21', '2024-09-16 00:08:21'),
(573, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-16 00:08:21', '2024-09-16 00:08:21'),
(574, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-16 00:08:47', '2024-09-16 00:08:47'),
(575, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-16 00:42:28', '2024-09-16 00:42:28'),
(576, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"LOM4yEsTve96Bnfsp5O8N2tGPGRVPYrXZtKUFHpB\"}', '2024-09-16 00:42:36', '2024-09-16 00:42:36'),
(577, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-16 00:42:57', '2024-09-16 00:42:57'),
(578, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-16 00:45:14', '2024-09-16 00:45:14'),
(579, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-16 00:47:47', '2024-09-16 00:47:47'),
(580, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-16 00:48:23', '2024-09-16 00:48:23'),
(581, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-16 01:06:33', '2024-09-16 01:06:33'),
(582, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"LOM4yEsTve96Bnfsp5O8N2tGPGRVPYrXZtKUFHpB\",\"users\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"123456\"},{\"name\":\"mm1\",\"email\":\"mm1@mm.com\",\"password\":\"123456\"}]}', '2024-09-16 01:07:31', '2024-09-16 01:07:31'),
(583, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-16 01:07:32', '2024-09-16 01:07:32'),
(584, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"LOM4yEsTve96Bnfsp5O8N2tGPGRVPYrXZtKUFHpB\",\"users\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"112345\"}]}', '2024-09-16 01:08:57', '2024-09-16 01:08:57'),
(585, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-16 01:11:48', '2024-09-16 01:11:48'),
(586, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"LOM4yEsTve96Bnfsp5O8N2tGPGRVPYrXZtKUFHpB\",\"users\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"123456\"}]}', '2024-09-16 01:12:01', '2024-09-16 01:12:01'),
(587, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-16 01:12:45', '2024-09-16 01:12:45'),
(588, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-16 01:13:10', '2024-09-16 01:13:10'),
(589, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-16 01:13:25', '2024-09-16 01:13:25'),
(590, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-16 01:17:38', '2024-09-16 01:17:38'),
(591, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"LOM4yEsTve96Bnfsp5O8N2tGPGRVPYrXZtKUFHpB\",\"users\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"123456\"}]}', '2024-09-16 01:17:53', '2024-09-16 01:17:53'),
(592, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-16 01:22:05', '2024-09-16 01:22:05'),
(593, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-16 01:22:07', '2024-09-16 01:22:07'),
(594, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"LOM4yEsTve96Bnfsp5O8N2tGPGRVPYrXZtKUFHpB\",\"users\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"111111\"}]}', '2024-09-16 01:22:19', '2024-09-16 01:22:19'),
(595, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"LOM4yEsTve96Bnfsp5O8N2tGPGRVPYrXZtKUFHpB\",\"users\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"111111\"}]}', '2024-09-16 01:23:00', '2024-09-16 01:23:00'),
(596, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-16 01:23:04', '2024-09-16 01:23:04'),
(597, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"LOM4yEsTve96Bnfsp5O8N2tGPGRVPYrXZtKUFHpB\",\"users\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"12\"}]}', '2024-09-16 01:49:36', '2024-09-16 01:49:36'),
(598, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-16 01:49:36', '2024-09-16 01:49:36'),
(599, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"LOM4yEsTve96Bnfsp5O8N2tGPGRVPYrXZtKUFHpB\",\"users\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"123456\"}]}', '2024-09-16 01:51:34', '2024-09-16 01:51:34'),
(600, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-16 01:51:59', '2024-09-16 01:51:59'),
(601, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"LOM4yEsTve96Bnfsp5O8N2tGPGRVPYrXZtKUFHpB\",\"users\":[{\"name\":\"mm2\",\"email\":\"mm2@mm.com\",\"password\":\"123456\"},{\"name\":\"mm3\",\"email\":\"mm@mm.com\",\"password\":\"123456\"}]}', '2024-09-16 01:52:53', '2024-09-16 01:52:53'),
(602, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-16 01:53:13', '2024-09-16 01:53:13'),
(603, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-09-20 23:23:15', '2024-09-20 23:23:15'),
(604, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-09-21 00:42:54', '2024-09-21 00:42:54'),
(605, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-09-21 00:42:58', '2024-09-21 00:42:58'),
(606, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-09-21 00:43:20', '2024-09-21 00:43:20'),
(607, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-09-21 00:43:26', '2024-09-21 00:43:26'),
(608, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-09-21 00:44:07', '2024-09-21 00:44:07'),
(609, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-09-21 00:44:14', '2024-09-21 00:44:14'),
(610, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-09-21 00:45:46', '2024-09-21 00:45:46'),
(611, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-09-21 00:46:32', '2024-09-21 00:46:32'),
(612, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-09-21 00:47:12', '2024-09-21 00:47:12'),
(613, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-09-21 00:47:17', '2024-09-21 00:47:17'),
(614, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-09-21 00:50:50', '2024-09-21 00:50:50'),
(615, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-09-21 00:53:11', '2024-09-21 00:53:11'),
(616, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-09-21 00:53:15', '2024-09-21 00:53:15'),
(617, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-09-21 01:02:57', '2024-09-21 01:02:57'),
(618, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-09-21 03:43:21', '2024-09-21 03:43:21'),
(619, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-09-21 03:51:00', '2024-09-21 03:51:00'),
(620, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-09-21 03:51:05', '2024-09-21 03:51:05'),
(621, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-09-21 21:27:53', '2024-09-21 21:27:53'),
(622, 1, 'admin/dynamicsave', 'GET', '127.0.0.1', '[]', '2024-09-21 21:28:01', '2024-09-21 21:28:01'),
(623, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-21 21:28:04', '2024-09-21 21:28:04'),
(624, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"j9B795xIBToKwXNLEm2Mn2p6n8A4k9xL6OWAMPAu\",\"users\":[{\"name\":\"mm\",\"email\":\"mm@admin.com\",\"password\":\"123456\"},{\"name\":\"mm1\",\"email\":\"mm1@mm.com\",\"password\":\"123456\"}]}', '2024-09-21 21:29:18', '2024-09-21 21:29:18'),
(625, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-21 21:29:19', '2024-09-21 21:29:19'),
(626, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-21 21:57:15', '2024-09-21 21:57:15'),
(627, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-09-21 21:57:25', '2024-09-21 21:57:25'),
(628, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"13\",\"search_terms\":null,\"title\":\"Multiple Row-2\",\"icon\":\"icon-align-justify\",\"uri\":\"dynamicsave2\",\"roles\":[null],\"permission\":null,\"_token\":\"j9B795xIBToKwXNLEm2Mn2p6n8A4k9xL6OWAMPAu\"}', '2024-09-21 21:58:19', '2024-09-21 21:58:19'),
(629, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-09-21 21:58:20', '2024-09-21 21:58:20'),
(630, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-09-21 21:58:37', '2024-09-21 21:58:37'),
(631, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:58:44', '2024-09-21 21:58:44'),
(632, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:58:47', '2024-09-21 21:58:47'),
(633, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:58:47', '2024-09-21 21:58:47'),
(634, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:58:48', '2024-09-21 21:58:48'),
(635, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:58:48', '2024-09-21 21:58:48'),
(636, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:58:49', '2024-09-21 21:58:49'),
(637, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:58:49', '2024-09-21 21:58:49'),
(638, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:58:50', '2024-09-21 21:58:50'),
(639, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:58:50', '2024-09-21 21:58:50'),
(640, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:58:51', '2024-09-21 21:58:51'),
(641, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:58:51', '2024-09-21 21:58:51'),
(642, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:58:51', '2024-09-21 21:58:51'),
(643, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:58:52', '2024-09-21 21:58:52'),
(644, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:58:52', '2024-09-21 21:58:52'),
(645, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:58:53', '2024-09-21 21:58:53'),
(646, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:58:53', '2024-09-21 21:58:53'),
(647, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:58:54', '2024-09-21 21:58:54'),
(648, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:58:54', '2024-09-21 21:58:54'),
(649, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:58:54', '2024-09-21 21:58:54'),
(650, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:58:55', '2024-09-21 21:58:55'),
(651, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:58:55', '2024-09-21 21:58:55'),
(652, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-21 21:59:16', '2024-09-21 21:59:16'),
(653, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:59:34', '2024-09-21 21:59:34'),
(654, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:59:34', '2024-09-21 21:59:34'),
(655, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:59:35', '2024-09-21 21:59:35'),
(656, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:59:35', '2024-09-21 21:59:35'),
(657, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:59:36', '2024-09-21 21:59:36'),
(658, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:59:36', '2024-09-21 21:59:36'),
(659, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:59:37', '2024-09-21 21:59:37'),
(660, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:59:37', '2024-09-21 21:59:37'),
(661, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:59:37', '2024-09-21 21:59:37'),
(662, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:59:38', '2024-09-21 21:59:38'),
(663, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:59:38', '2024-09-21 21:59:38'),
(664, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:59:39', '2024-09-21 21:59:39'),
(665, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:59:39', '2024-09-21 21:59:39'),
(666, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:59:40', '2024-09-21 21:59:40'),
(667, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:59:40', '2024-09-21 21:59:40'),
(668, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:59:41', '2024-09-21 21:59:41'),
(669, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:59:41', '2024-09-21 21:59:41'),
(670, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:59:42', '2024-09-21 21:59:42'),
(671, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:59:42', '2024-09-21 21:59:42'),
(672, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:59:42', '2024-09-21 21:59:42'),
(673, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 21:59:43', '2024-09-21 21:59:43'),
(674, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 22:00:49', '2024-09-21 22:00:49'),
(675, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-09-21 22:00:58', '2024-09-21 22:00:58'),
(676, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 22:01:02', '2024-09-21 22:01:02'),
(677, 1, 'admin/dynamicsave1', 'GET', '127.0.0.1', '[]', '2024-09-21 22:01:04', '2024-09-21 22:01:04'),
(678, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 22:01:06', '2024-09-21 22:01:06'),
(679, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 22:15:13', '2024-09-21 22:15:13'),
(680, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 22:15:40', '2024-09-21 22:15:40'),
(681, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 22:16:05', '2024-09-21 22:16:05'),
(682, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 22:18:23', '2024-09-21 22:18:23'),
(683, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 22:19:40', '2024-09-21 22:19:40'),
(684, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 22:20:28', '2024-09-21 22:20:28'),
(685, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 22:20:52', '2024-09-21 22:20:52'),
(686, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 22:27:47', '2024-09-21 22:27:47'),
(687, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 22:29:19', '2024-09-21 22:29:19'),
(688, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 22:31:28', '2024-09-21 22:31:28'),
(689, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 22:36:42', '2024-09-21 22:36:42'),
(690, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 23:54:04', '2024-09-21 23:54:04'),
(691, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"j9B795xIBToKwXNLEm2Mn2p6n8A4k9xL6OWAMPAu\",\"users\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"123456\"},{\"name\":\"mm1\",\"email\":\"mm@mm.com\",\"password\":\"123456\"}]}', '2024-09-21 23:54:47', '2024-09-21 23:54:47'),
(692, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"j9B795xIBToKwXNLEm2Mn2p6n8A4k9xL6OWAMPAu\",\"users\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"123456\"},{\"name\":\"mm1\",\"email\":\"mm@mm.com\",\"password\":\"123456\"}]}', '2024-09-21 23:56:21', '2024-09-21 23:56:21'),
(693, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 23:56:25', '2024-09-21 23:56:25'),
(694, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"j9B795xIBToKwXNLEm2Mn2p6n8A4k9xL6OWAMPAu\",\"users\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"123456\"},{\"name\":\"mm1\",\"email\":\"mm@mm.com\",\"password\":\"123456\"}]}', '2024-09-21 23:56:47', '2024-09-21 23:56:47'),
(695, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"j9B795xIBToKwXNLEm2Mn2p6n8A4k9xL6OWAMPAu\",\"users\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"123456\"},{\"name\":\"mm1\",\"email\":\"mm@mm.com\",\"password\":\"123456\"}]}', '2024-09-21 23:58:54', '2024-09-21 23:58:54'),
(696, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-21 23:58:58', '2024-09-21 23:58:58'),
(697, 1, 'admin/dynamicsave1', 'POST', '127.0.0.1', '{\"_token\":\"j9B795xIBToKwXNLEm2Mn2p6n8A4k9xL6OWAMPAu\",\"users\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"123456\"},{\"name\":\"mm1\",\"email\":\"mm@mm.com\",\"password\":\"123456\"}]}', '2024-09-21 23:59:17', '2024-09-21 23:59:17'),
(698, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-22 00:45:38', '2024-09-22 00:45:38'),
(699, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-22 01:08:50', '2024-09-22 01:08:50'),
(700, 1, 'admin/dynamicsave2', 'POST', '127.0.0.1', '{\"_token\":\"j9B795xIBToKwXNLEm2Mn2p6n8A4k9xL6OWAMPAu\",\"users\":[{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"123456\"},{\"name\":\"mm\",\"email\":\"mm@mm.com\",\"password\":\"123456\"}]}', '2024-09-22 01:09:15', '2024-09-22 01:09:15'),
(701, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-22 01:10:15', '2024-09-22 01:10:15'),
(702, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-22 01:11:50', '2024-09-22 01:11:50'),
(703, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-22 02:36:11', '2024-09-22 02:36:11'),
(704, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-22 02:41:17', '2024-09-22 02:41:17'),
(705, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-22 02:42:24', '2024-09-22 02:42:24'),
(706, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-22 02:43:27', '2024-09-22 02:43:27'),
(707, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-22 02:51:01', '2024-09-22 02:51:01'),
(708, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-22 02:58:00', '2024-09-22 02:58:00'),
(709, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-22 03:00:01', '2024-09-22 03:00:01'),
(710, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-22 03:12:22', '2024-09-22 03:12:22'),
(711, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-22 03:18:24', '2024-09-22 03:18:24'),
(712, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-22 03:20:03', '2024-09-22 03:20:03'),
(713, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-22 03:22:35', '2024-09-22 03:22:35'),
(714, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-22 03:22:43', '2024-09-22 03:22:43'),
(715, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-22 03:30:15', '2024-09-22 03:30:15'),
(716, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-22 03:32:40', '2024-09-22 03:32:40'),
(717, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-22 03:34:07', '2024-09-22 03:34:07'),
(718, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-22 03:49:18', '2024-09-22 03:49:18'),
(719, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-22 03:49:36', '2024-09-22 03:49:36'),
(720, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-22 03:50:34', '2024-09-22 03:50:34'),
(721, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-22 03:53:42', '2024-09-22 03:53:42'),
(722, 1, 'admin/dynamicsave2', 'POST', '127.0.0.1', '{\"name\":[\"mm\"],\"email\":[\"mm@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-22 03:53:50', '2024-09-22 03:53:50'),
(723, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-22 03:54:20', '2024-09-22 03:54:20'),
(724, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-22 03:55:05', '2024-09-22 03:55:05'),
(725, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-22 03:56:06', '2024-09-22 03:56:06'),
(726, 1, 'admin/dynamicsave2', 'POST', '127.0.0.1', '{\"name\":[\"mm\"],\"email\":[\"mm@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-22 03:56:13', '2024-09-22 03:56:13'),
(727, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-22 03:56:37', '2024-09-22 03:56:37'),
(728, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-22 03:59:09', '2024-09-22 03:59:09'),
(729, 1, 'admin/dynamicsave2', 'POST', '127.0.0.1', '{\"name\":[\"mm\"],\"email\":[\"mm@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-22 03:59:17', '2024-09-22 03:59:17'),
(730, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-22 04:03:46', '2024-09-22 04:03:46'),
(731, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-22 04:04:00', '2024-09-22 04:04:00'),
(732, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-22 04:04:57', '2024-09-22 04:04:57'),
(733, 1, 'admin/dynamicsave2', 'POST', '127.0.0.1', '{\"name\":[\"mm\"],\"email\":[\"mm@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-22 04:05:07', '2024-09-22 04:05:07'),
(734, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-22 04:09:15', '2024-09-22 04:09:15'),
(735, 1, 'admin/dynamicsave2', 'POST', '127.0.0.1', '{\"name\":[\"mm\"],\"email\":[\"mm@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-22 04:09:24', '2024-09-22 04:09:24'),
(736, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-22 04:19:13', '2024-09-22 04:19:13'),
(737, 1, 'admin/dynamicsave2', 'POST', '127.0.0.1', '{\"name\":[\"mm\"],\"email\":[\"mm@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-22 04:19:22', '2024-09-22 04:19:22'),
(738, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-22 04:24:11', '2024-09-22 04:24:11'),
(739, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-22 04:24:35', '2024-09-22 04:24:35'),
(740, 1, 'admin/dynamicsave2', 'POST', '127.0.0.1', '{\"name\":[\"mm\",\"mm1\"],\"email\":[\"mm@mm.com\",\"mm1@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-22 04:25:15', '2024-09-22 04:25:15'),
(741, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-22 04:26:14', '2024-09-22 04:26:14'),
(742, 1, 'admin/dynamicsave2', 'POST', '127.0.0.1', '{\"name\":[\"mm\",\"mm1\"],\"email\":[\"mm@mm.com\",\"mm1@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-22 04:26:43', '2024-09-22 04:26:43'),
(743, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-22 04:28:48', '2024-09-22 04:28:48'),
(744, 1, 'admin/dynamicsave2', 'POST', '127.0.0.1', '{\"name\":[\"mm\",\"mm1\"],\"email\":[\"mm@mm.com\",\"mm1@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-22 04:29:10', '2024-09-22 04:29:10');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(745, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-22 04:30:30', '2024-09-22 04:30:30'),
(746, 1, 'admin/dynamicsave2', 'POST', '127.0.0.1', '{\"name\":[\"mm\",\"mm1\"],\"email\":[\"mm@mm.com\",\"mm1@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-22 04:30:55', '2024-09-22 04:30:55'),
(747, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-22 04:36:25', '2024-09-22 04:36:25'),
(748, 1, 'admin/dynamicsave2', 'POST', '127.0.0.1', '{\"name\":[\"mm\"],\"email\":[\"mm@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-22 04:36:36', '2024-09-22 04:36:36'),
(749, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-22 04:39:39', '2024-09-22 04:39:39'),
(750, 1, 'admin/dynamicsave2', 'POST', '127.0.0.1', '{\"name\":[\"mm\"],\"email\":[\"mm@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-22 04:39:49', '2024-09-22 04:39:49'),
(751, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-09-28 21:51:19', '2024-09-28 21:51:19'),
(752, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-28 21:51:30', '2024-09-28 21:51:30'),
(753, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-28 21:51:34', '2024-09-28 21:51:34'),
(754, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-09-28 21:51:48', '2024-09-28 21:51:48'),
(755, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-09-28 22:20:12', '2024-09-28 22:20:12'),
(756, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"13\",\"search_terms\":null,\"title\":\"Ajax value Save\",\"icon\":\"icon-asterisk\",\"uri\":\"ajaxvalue\",\"roles\":[null],\"permission\":null,\"_token\":\"YslU3iIVLsNKJbGaJg2J8i0KNtCPvXiHGa0fqkKv\"}', '2024-09-28 22:20:47', '2024-09-28 22:20:47'),
(757, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-09-28 22:20:48', '2024-09-28 22:20:48'),
(758, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-09-28 22:20:50', '2024-09-28 22:20:50'),
(759, 1, 'admin/ajaxvalue', 'GET', '127.0.0.1', '[]', '2024-09-28 22:20:57', '2024-09-28 22:20:57'),
(760, 1, 'admin/ajaxvalue', 'GET', '127.0.0.1', '[]', '2024-09-28 22:21:32', '2024-09-28 22:21:32'),
(761, 1, 'admin/ajaxvalue', 'GET', '127.0.0.1', '[]', '2024-09-28 22:22:28', '2024-09-28 22:22:28'),
(762, 1, 'admin/ajaxvalue', 'GET', '127.0.0.1', '[]', '2024-09-28 22:24:00', '2024-09-28 22:24:00'),
(763, 1, 'admin/ajaxvalue', 'GET', '127.0.0.1', '[]', '2024-09-28 22:26:00', '2024-09-28 22:26:00'),
(764, 1, 'admin/ajaxvalue', 'GET', '127.0.0.1', '[]', '2024-09-28 22:27:59', '2024-09-28 22:27:59'),
(765, 1, 'admin/ajaxvalue', 'GET', '127.0.0.1', '[]', '2024-09-28 22:32:02', '2024-09-28 22:32:02'),
(766, 1, 'admin/ajaxvalue', 'GET', '127.0.0.1', '[]', '2024-09-28 22:33:40', '2024-09-28 22:33:40'),
(767, 1, 'admin/ajaxvalue', 'GET', '127.0.0.1', '[]', '2024-09-28 22:35:35', '2024-09-28 22:35:35'),
(768, 1, 'admin/ajaxvalue', 'GET', '127.0.0.1', '[]', '2024-09-28 22:36:08', '2024-09-28 22:36:08'),
(769, 1, 'admin/ajaxvalue', 'GET', '127.0.0.1', '[]', '2024-09-28 22:38:24', '2024-09-28 22:38:24'),
(770, 1, 'admin/ajaxvalue', 'GET', '127.0.0.1', '[]', '2024-09-28 22:44:49', '2024-09-28 22:44:49'),
(771, 1, 'admin/ajaxvalue', 'GET', '127.0.0.1', '[]', '2024-09-28 22:46:22', '2024-09-28 22:46:22'),
(772, 1, 'admin/ajaxvalue', 'GET', '127.0.0.1', '[]', '2024-09-28 22:47:06', '2024-09-28 22:47:06'),
(773, 1, 'admin/ajaxvalue', 'GET', '127.0.0.1', '[]', '2024-09-28 22:59:03', '2024-09-28 22:59:03'),
(774, 1, 'admin/ajaxvalue', 'GET', '127.0.0.1', '[]', '2024-09-28 22:59:06', '2024-09-28 22:59:06'),
(775, 1, 'admin/ajaxvalue', 'GET', '127.0.0.1', '[]', '2024-09-28 22:59:09', '2024-09-28 22:59:09'),
(776, 1, 'admin/ajaxvalue', 'GET', '127.0.0.1', '[]', '2024-09-28 22:59:15', '2024-09-28 22:59:15'),
(777, 1, 'admin/ajaxvaluepass', 'POST', '127.0.0.1', '{\"name\":\"ajax\",\"email\":\"ajax@ajax.com\",\"password\":\"*****-filtered-out-*****\"}', '2024-09-28 23:00:20', '2024-09-28 23:00:20'),
(778, 1, 'admin/ajaxvalue', 'GET', '127.0.0.1', '[]', '2024-09-28 23:03:52', '2024-09-28 23:03:52'),
(779, 1, 'admin/ajaxvaluepass', 'POST', '127.0.0.1', '{\"name\":\"ajax\",\"email\":\"ajax1@ajax.com\",\"password\":\"*****-filtered-out-*****\"}', '2024-09-28 23:04:16', '2024-09-28 23:04:16'),
(780, 1, 'admin/ajaxvalue', 'GET', '127.0.0.1', '[]', '2024-09-28 23:04:35', '2024-09-28 23:04:35'),
(781, 1, 'admin/ajaxvaluepass', 'POST', '127.0.0.1', '{\"name\":\"ajax\",\"email\":\"ajax2@ajax.com\",\"password\":\"*****-filtered-out-*****\"}', '2024-09-28 23:04:58', '2024-09-28 23:04:58'),
(782, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-09-28 23:05:49', '2024-09-28 23:05:49'),
(783, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"13\",\"search_terms\":null,\"title\":\"Ajax Value save-1\",\"icon\":\"icon-arrows-alt-h\",\"uri\":\"ajaxvalue1\",\"roles\":[null],\"permission\":null,\"_token\":\"YslU3iIVLsNKJbGaJg2J8i0KNtCPvXiHGa0fqkKv\"}', '2024-09-28 23:32:23', '2024-09-28 23:32:23'),
(784, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-09-28 23:32:23', '2024-09-28 23:32:23'),
(785, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-09-28 23:32:27', '2024-09-28 23:32:27'),
(786, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '[]', '2024-09-28 23:33:00', '2024-09-28 23:33:00'),
(787, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '[]', '2024-09-28 23:33:04', '2024-09-28 23:33:04'),
(788, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '{\"name\":\"ajax\",\"email\":\"ajax@ajax3.com\",\"password\":\"*****-filtered-out-*****\",\"file\":\"1.png\"}', '2024-09-28 23:34:04', '2024-09-28 23:34:04'),
(789, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '[]', '2024-09-28 23:34:33', '2024-09-28 23:34:33'),
(790, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '{\"name\":\"ajax\",\"email\":\"ajax3@ajax.com\",\"password\":\"*****-filtered-out-*****\",\"file\":\"1.png\"}', '2024-09-28 23:35:15', '2024-09-28 23:35:15'),
(791, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '[]', '2024-09-28 23:37:02', '2024-09-28 23:37:02'),
(792, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '{\"name\":\"ajax\",\"email\":\"ajax3@ajax.com\",\"password\":\"*****-filtered-out-*****\",\"file\":\"1.png\"}', '2024-09-28 23:37:26', '2024-09-28 23:37:26'),
(793, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '[]', '2024-09-28 23:39:09', '2024-09-28 23:39:09'),
(794, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '{\"name\":\"ajax\",\"email\":\"ajax3@ajax.com\",\"password\":\"*****-filtered-out-*****\",\"image\":\"1.png\"}', '2024-09-28 23:39:33', '2024-09-28 23:39:33'),
(795, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '[]', '2024-09-28 23:40:48', '2024-09-28 23:40:48'),
(796, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '{\"name\":\"ajax\",\"email\":\"ajax3@ajax.com\",\"password\":\"*****-filtered-out-*****\",\"image\":\"1.png\"}', '2024-09-28 23:41:10', '2024-09-28 23:41:10'),
(797, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '[]', '2024-09-28 23:44:21', '2024-09-28 23:44:21'),
(798, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '{\"name\":\"ajax\",\"email\":\"ajax3@ajax.com\",\"password\":\"*****-filtered-out-*****\",\"image\":\"1.png\"}', '2024-09-28 23:44:55', '2024-09-28 23:44:55'),
(799, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '[]', '2024-09-28 23:45:38', '2024-09-28 23:45:38'),
(800, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '{\"name\":\"ajax\",\"email\":\"ajax3@ajax.com\",\"password\":\"*****-filtered-out-*****\",\"image\":\"1.png\"}', '2024-09-28 23:46:12', '2024-09-28 23:46:12'),
(801, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '[]', '2024-09-28 23:47:21', '2024-09-28 23:47:21'),
(802, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '{\"name\":\"ajax\",\"email\":\"ajax3@ajax.com\",\"password\":\"*****-filtered-out-*****\"}', '2024-09-28 23:47:46', '2024-09-28 23:47:46'),
(803, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '[]', '2024-09-28 23:54:33', '2024-09-28 23:54:33'),
(804, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '{\"name\":\"ajax\",\"email\":\"ajax3@ajax.com\",\"password\":\"*****-filtered-out-*****\",\"image\":\"1.png\"}', '2024-09-28 23:55:09', '2024-09-28 23:55:09'),
(805, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '[]', '2024-09-28 23:59:31', '2024-09-28 23:59:31'),
(806, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '{\"name\":\"ajax\",\"email\":\"ajax3@ajax.com\",\"password\":\"*****-filtered-out-*****\",\"image\":\"1.png\"}', '2024-09-29 00:00:02', '2024-09-29 00:00:02'),
(807, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '[]', '2024-09-29 00:05:14', '2024-09-29 00:05:14'),
(808, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '{\"name\":\"ajax\",\"email\":\"ajax3@ajax.com\",\"password\":\"*****-filtered-out-*****\",\"image\":\"1.png\"}', '2024-09-29 00:05:37', '2024-09-29 00:05:37'),
(809, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '[]', '2024-09-29 00:09:40', '2024-09-29 00:09:40'),
(810, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '{\"name\":\"ajax\",\"email\":\"ajax3@ajax.com\",\"password\":\"*****-filtered-out-*****\",\"image\":\"1.png\"}', '2024-09-29 00:10:18', '2024-09-29 00:10:18'),
(811, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '[]', '2024-09-29 00:12:12', '2024-09-29 00:12:12'),
(812, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '{\"name\":\"ajax\",\"email\":\"ajax3@ajax.com\",\"password\":\"*****-filtered-out-*****\",\"image\":\"1.png\"}', '2024-09-29 00:12:40', '2024-09-29 00:12:40'),
(813, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '[]', '2024-09-29 00:15:02', '2024-09-29 00:15:02'),
(814, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '{\"name\":\"ajax\",\"email\":\"ajax3@ajax.com\",\"password\":\"*****-filtered-out-*****\",\"image\":\"1.png\"}', '2024-09-29 00:15:23', '2024-09-29 00:15:23'),
(815, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '[]', '2024-09-29 00:16:01', '2024-09-29 00:16:01'),
(816, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '{\"name\":\"ajax\",\"email\":\"ajax3@ajax.com\",\"password\":\"*****-filtered-out-*****\",\"image\":null}', '2024-09-29 00:16:23', '2024-09-29 00:16:23'),
(817, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '[]', '2024-09-29 00:17:02', '2024-09-29 00:17:02'),
(818, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '{\"name\":\"ajax\",\"email\":\"ajax3@ajax.com\",\"password\":\"*****-filtered-out-*****\"}', '2024-09-29 00:17:20', '2024-09-29 00:17:20'),
(819, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '[]', '2024-09-29 00:18:03', '2024-09-29 00:18:03'),
(820, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '{\"name\":\"ajax\",\"email\":\"ajax3@ajax.com\",\"password\":\"*****-filtered-out-*****\"}', '2024-09-29 00:18:23', '2024-09-29 00:18:23'),
(821, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '[]', '2024-09-29 00:20:35', '2024-09-29 00:20:35'),
(822, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '{\"name\":\"ajax\",\"email\":\"ajax3@ajax.com\",\"password\":\"*****-filtered-out-*****\"}', '2024-09-29 00:20:53', '2024-09-29 00:20:53'),
(823, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '[]', '2024-09-29 00:21:47', '2024-09-29 00:21:47'),
(824, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '{\"name\":\"ajax\",\"email\":\"ajax3@ajax.com\",\"password\":\"*****-filtered-out-*****\"}', '2024-09-29 00:22:09', '2024-09-29 00:22:09'),
(825, 1, 'admin/ajaxvalue', 'GET', '127.0.0.1', '[]', '2024-09-29 00:22:20', '2024-09-29 00:22:20'),
(826, 1, 'admin/ajaxvalue', 'GET', '127.0.0.1', '{\"name\":\"ajax\",\"email\":\"ajax3@ajax.com\",\"password\":\"*****-filtered-out-*****\"}', '2024-09-29 00:22:49', '2024-09-29 00:22:49'),
(827, 1, 'admin/ajaxvalue', 'GET', '127.0.0.1', '[]', '2024-09-29 00:29:08', '2024-09-29 00:29:08'),
(828, 1, 'admin/ajaxvalue', 'GET', '127.0.0.1', '{\"name\":\"AA\",\"email\":\"a@a.com\",\"password\":\"*****-filtered-out-*****\"}', '2024-09-29 00:29:27', '2024-09-29 00:29:27'),
(829, 1, 'admin/ajaxvalue', 'GET', '127.0.0.1', '[]', '2024-09-29 00:31:20', '2024-09-29 00:31:20'),
(830, 1, 'admin/ajaxvalue', 'GET', '127.0.0.1', '{\"name\":\"ajax4\",\"email\":\"ajax4@ajax.com\",\"password\":\"*****-filtered-out-*****\"}', '2024-09-29 00:31:53', '2024-09-29 00:31:53'),
(831, 1, 'admin/ajaxvalue', 'GET', '127.0.0.1', '[]', '2024-09-29 00:35:18', '2024-09-29 00:35:18'),
(832, 1, 'admin/ajaxvalue', 'GET', '127.0.0.1', '{\"name\":\"ajax\",\"email\":\"ajax3@ajax.com\",\"password\":\"*****-filtered-out-*****\"}', '2024-09-29 00:35:41', '2024-09-29 00:35:41'),
(833, 1, 'admin/ajaxvalue', 'GET', '127.0.0.1', '[]', '2024-09-29 00:37:36', '2024-09-29 00:37:36'),
(834, 1, 'admin/ajaxvalue', 'GET', '127.0.0.1', '{\"name\":\"ajax\",\"email\":\"ajax3@ajax.com\",\"password\":\"*****-filtered-out-*****\"}', '2024-09-29 00:37:55', '2024-09-29 00:37:55'),
(835, 1, 'admin/ajaxvalue', 'GET', '127.0.0.1', '{\"name\":\"ajax\",\"email\":\"ajax3@ajax.com\",\"password\":\"*****-filtered-out-*****\"}', '2024-09-29 00:38:56', '2024-09-29 00:38:56'),
(836, 1, 'admin/ajaxvalue', 'GET', '127.0.0.1', '[]', '2024-09-29 00:39:03', '2024-09-29 00:39:03'),
(837, 1, 'admin/ajaxvaluepass', 'POST', '127.0.0.1', '{\"name\":\"ajax\",\"email\":\"a1@a.com\",\"password\":\"*****-filtered-out-*****\"}', '2024-09-29 00:39:24', '2024-09-29 00:39:24'),
(838, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '[]', '2024-09-29 00:39:49', '2024-09-29 00:39:49'),
(839, 1, 'admin/ajaxvaluepass1', 'POST', '127.0.0.1', '{\"name\":\"ajax\",\"email\":\"ajax3@ajax.com\",\"password\":\"*****-filtered-out-*****\"}', '2024-09-29 00:40:27', '2024-09-29 00:40:27'),
(840, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '[]', '2024-09-29 00:42:22', '2024-09-29 00:42:22'),
(841, 1, 'admin/ajaxvaluepass1', 'POST', '127.0.0.1', '{\"name\":\"ajax\",\"email\":\"ajax4@ajax.com\",\"password\":\"*****-filtered-out-*****\"}', '2024-09-29 00:42:59', '2024-09-29 00:42:59'),
(842, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '[]', '2024-09-29 00:44:25', '2024-09-29 00:44:25'),
(843, 1, 'admin/ajaxvaluepass1', 'POST', '127.0.0.1', '{\"name\":\"ajax\",\"email\":\"ajax5@ajax.com\",\"password\":\"*****-filtered-out-*****\"}', '2024-09-29 00:44:47', '2024-09-29 00:44:47'),
(844, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '[]', '2024-09-29 00:47:11', '2024-09-29 00:47:11'),
(845, 1, 'admin/ajaxvaluepass1', 'POST', '127.0.0.1', '{\"name\":\"ajax\",\"email\":\"ajax6@ajax.com\",\"password\":\"*****-filtered-out-*****\"}', '2024-09-29 00:47:43', '2024-09-29 00:47:43'),
(846, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-29 01:17:05', '2024-09-29 01:17:05'),
(847, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-29 01:18:31', '2024-09-29 01:18:31'),
(848, 1, 'admin/dynamicsave2', 'POST', '127.0.0.1', '{\"name\":[\"m1\",\"mm2\"],\"email\":[\"mm1@mm.com\",\"mm2@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-29 01:19:12', '2024-09-29 01:19:12'),
(849, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-29 01:59:26', '2024-09-29 01:59:26'),
(850, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-29 02:01:10', '2024-09-29 02:01:10'),
(851, 1, 'admin/dynamicsave2', 'POST', '127.0.0.1', '[]', '2024-09-29 02:01:18', '2024-09-29 02:01:18'),
(852, 1, 'admin/dynamicsave2', 'GET', '127.0.0.1', '[]', '2024-09-29 03:14:27', '2024-09-29 03:14:27'),
(853, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-09-29 03:51:49', '2024-09-29 03:51:49'),
(854, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"13\",\"search_terms\":null,\"title\":\"Multiple Row-3\",\"icon\":\"icon-atlas\",\"uri\":\"dynamicsave3\",\"roles\":[null],\"permission\":null,\"_token\":\"YslU3iIVLsNKJbGaJg2J8i0KNtCPvXiHGa0fqkKv\"}', '2024-09-29 03:52:31', '2024-09-29 03:52:31'),
(855, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-09-29 03:52:31', '2024-09-29 03:52:31'),
(856, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-09-29 03:52:35', '2024-09-29 03:52:35'),
(857, 1, 'admin/dynamicsave3', 'GET', '127.0.0.1', '[]', '2024-09-29 03:52:40', '2024-09-29 03:52:40'),
(858, 1, 'admin/dynamicsave3', 'GET', '127.0.0.1', '[]', '2024-09-29 03:52:43', '2024-09-29 03:52:43'),
(859, 1, 'admin/dynamicsave3', 'POST', '127.0.0.1', '{\"name\":[\"mm\",\"mm1\"],\"email\":[\"mm@mm.com\",\"mm1@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-29 03:53:40', '2024-09-29 03:53:40'),
(860, 1, 'admin/dynamicsave3', 'POST', '127.0.0.1', '{\"name\":[\"mm2\",\"mm3\"],\"email\":[\"mm2@mm.com\",\"mm3@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-29 04:00:11', '2024-09-29 04:00:11'),
(861, 1, 'admin/dynamicsave3', 'GET', '127.0.0.1', '[]', '2024-09-29 04:03:23', '2024-09-29 04:03:23'),
(862, 1, 'admin/dynamicsave3', 'POST', '127.0.0.1', '{\"name\":[\"mm4\",\"mm5\"],\"email\":[\"mm4@mm.com\",\"mm5@mm.com\"],\"password\":\"*****-filtered-out-*****\"}', '2024-09-29 04:04:12', '2024-09-29 04:04:12'),
(863, 1, 'admin/ajaxvalue1', 'GET', '127.0.0.1', '[]', '2024-09-29 04:26:33', '2024-09-29 04:26:33'),
(864, 1, 'admin/ajaxvaluepass1', 'POST', '127.0.0.1', '{\"name\":\"ajax\",\"email\":\"ajax@ajax.com\",\"password\":\"*****-filtered-out-*****\"}', '2024-09-29 04:27:21', '2024-09-29 04:27:21');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2024-08-28 02:02:55', '2024-08-28 02:02:55');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`, `email`, `status`) VALUES
(1, 'admin', '$2y$10$KwRyiEZNRCW14veGxw5pSeKLZioa2rhQDRfpqC/h27y0z.eo5.Un2', 'Administrator', NULL, NULL, '2024-08-28 02:02:55', '2024-08-28 02:02:55', 'admin@admin.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_user`
--

CREATE TABLE `custom_user` (
  `userid` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_user`
--

INSERT INTO `custom_user` (`userid`, `name`, `email`, `password`, `image`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test@test.com', '$2y$10$s8nhl6qXXM8T.kwID1HE..a69i4woahnSTrleatdTccnGm/Q3slXS', 'test image', '2024-09-01 00:31:23', '2024-09-01 00:31:23'),
(2, 'test1', 'test1@test.com', '$2y$10$yyuUPtn0xSxBR.o1ZVOTPOhamaSUmVSfzbfIqKWdGnExXmqLsS20a', 'D:\\xampp-7.4.1\\tmp\\php2492.tmp', '2024-09-01 01:05:07', '2024-09-01 01:05:07'),
(3, 'test2', 'test2@test.com', '$2y$10$UGAYub4vV.4Z6rXoTZO0HuIKprNnoWvIfnoTj.3RblWj.mcIyqa7e', 'uploads/images/1725174440_Screenshot 2024-08-21 at 13-58-42 Admin Administrator Create.png', '2024-09-01 01:07:20', '2024-09-01 01:07:20'),
(4, 'test3', 'test3@test.com', '$2y$10$p7Hx5YsLAB9U13nU7u.dU.BnotAKZNcuSfu.hqbOC2jQES1Hgg5F2', 'uploads/imagess/1725175060_Screenshot 2024-08-21 at 13-58-42 Admin Administrator Create.png', '2024-09-01 01:17:40', '2024-09-01 01:17:40'),
(5, 'test4', 'test4@test.com', '$2y$10$tDSfPrSBmVmwdgiqVCmcB.CwXcIKnIP1aun64wkOXquZOaLJRLBTS', 'uploads/images/1725175123_Screenshot 2024-08-21 at 13-58-42 Admin Administrator Create.png', '2024-09-01 01:18:43', '2024-09-01 01:18:43'),
(6, 'test5', 'test5@test.com', '$2y$10$fEnMYJA5wVtRCmenZ2LeM.n33fqvsCDW36Q5w.a6IRMvRQ.pFPqce', '1725175398_Screenshot 2024-08-21 at 13-58-42 Admin Administrator Create.png', '2024-09-01 01:23:18', '2024-09-01 01:23:18'),
(7, 'test6', 'test6@test.com', '$2y$10$A8Z4vilyuLolVB2gP8lWr.UWOvXsrG47YO1UTmasxTF/2eGn1436O', '1725177643_Screenshot 2024-08-21 at 13-58-42 Admin Administrator Create.png', '2024-09-01 02:00:43', '2024-09-01 02:00:43'),
(8, 'John Doe', 'john@example.com', '123456', '12', '2024-09-09 04:19:36', '2024-09-09 04:19:36');

-- --------------------------------------------------------

--
-- Table structure for table `custom_user1`
--

CREATE TABLE `custom_user1` (
  `userid` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_user1`
--

INSERT INTO `custom_user1` (`userid`, `name`, `email`, `password`, `image`, `created_at`, `updated_at`) VALUES
(52, 'mm', 'mm@mm.com', '$2y$10$T05THaiB9xImNSTIryrdBOZjLgMvqdR2yWPFnpHgRoNtYqeR7SZAC', 'images/Swy1qdib1PO2APqeO4DTkJcTQ5BDu6l5bd1UYJoW.png', '2024-09-29 03:53:40', '2024-09-29 03:53:40'),
(53, 'mm1', 'mm1@mm.com', '$2y$10$Mqnl10ebYfUw1qPBUY5b8ue510mWXGf9vW3Z1LtXi1QC1hzw5fLwu', 'images/VA4TmR7cA0eXEGemAxe4H5PZq8CYGyAPeEybLvH8.png', '2024-09-29 03:53:40', '2024-09-29 03:53:40'),
(54, 'mm2', 'mm2@mm.com', '$2y$10$rVxOyzoada3D3b50WA7vbex7XrnXtajHBYHu4IvdfBeREZDM3kuzy', 'images/J7e65YIpKxUFg7ZK27XM2rWuvrC8g4qBXc9OECZv.png', '2024-09-29 04:00:11', '2024-09-29 04:00:11'),
(55, 'mm3', 'mm3@mm.com', '$2y$10$JMU8sUkvFUObiIgS9wCRbu0Gk9txNrrkUi6eXpHRqIz.GKD9mNa8a', 'images/QIPnZKoySDpheYGu8vTFqBvjn3QfmmpViJSfqPbd.png', '2024-09-29 04:00:11', '2024-09-29 04:00:11'),
(56, 'mm4', 'mm4@mm.com', '$2y$10$5R.5UVIyvibAdvgwK6K0h.nLkiWCrKxC33hz/XF6w90YmqypK7ZfS', 'images/VuvA5cJ37bulbd8dWLyucZdQ5V3BkN5xsPtTxqBN.png', '2024-09-29 04:04:12', '2024-09-29 04:04:12'),
(57, 'mm5', 'mm5@mm.com', '$2y$10$20CEuzKvdXi.JThAPPMod.HyfZ.YQkZeZVE0ag.n.2nj8IR4qHVY6', 'images/JPu2VOYnLcQK3p7eBjApTWUuTNdFTYeo0k7HvA09.png', '2024-09-29 04:04:12', '2024-09-29 04:04:12'),
(58, 'ajax', 'ajax@ajax.com', '$2y$10$UNK20zdLcWQgxm5TOe6MT.Gg4jKLP3FgaW7iEfSVPM6rMw2OyF52W', 'uploads/1727605641_1.png', '2024-09-29 04:27:22', '2024-09-29 04:27:22');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_04_173148_create_admin_tables', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_08_31_040047_add_status_to_admin_users', 2),
(7, '2024_08_31_070952_create_custom_user_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `custom_user`
--
ALTER TABLE `custom_user`
  ADD PRIMARY KEY (`userid`) USING BTREE,
  ADD UNIQUE KEY `custom_user_email_unique` (`email`);

--
-- Indexes for table `custom_user1`
--
ALTER TABLE `custom_user1`
  ADD PRIMARY KEY (`userid`) USING BTREE,
  ADD UNIQUE KEY `custom_user_email_unique` (`email`) USING BTREE;

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=865;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `custom_user`
--
ALTER TABLE `custom_user`
  MODIFY `userid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `custom_user1`
--
ALTER TABLE `custom_user1`
  MODIFY `userid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 30, 2026 at 02:20 PM
-- Server version: 8.4.3
-- PHP Version: 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `it_monitoring_jaringan`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'app_title', 'Sistem Monitoring Jaringan', '2026-02-18 08:23:51', '2026-02-18 08:23:51'),
(2, 'sound_connect', NULL, '2026-02-18 08:23:51', '2026-02-18 08:23:51'),
(3, 'sound_disconnect', NULL, '2026-02-18 08:23:51', '2026-02-18 08:23:51');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-boost:last_error', 'a:4:{s:9:\"timestamp\";s:19:\"2026-02-20 11:32:40\";s:5:\"level\";s:5:\"error\";s:7:\"message\";s:67:\"fwrite(): Write of 7798 bytes failed with errno=22 Invalid argument\";s:7:\"context\";a:0:{}}', 2086921960),
('laravel-cache-boost:mcp:database-schema:mysql:rekap', 'a:3:{s:6:\"engine\";s:5:\"mysql\";s:6:\"tables\";a:1:{s:18:\"rekap_waktu_kereta\";a:5:{s:7:\"columns\";a:0:{}s:7:\"indexes\";a:0:{}s:12:\"foreign_keys\";a:0:{}s:8:\"triggers\";a:0:{}s:17:\"check_constraints\";a:0:{}}}s:6:\"global\";a:4:{s:5:\"views\";a:0:{}s:17:\"stored_procedures\";a:0:{}s:9:\"functions\";a:0:{}s:9:\"sequences\";a:0:{}}}', 1772898614),
('laravel-cache-boost.roster.scan', 'a:2:{s:6:\"roster\";O:21:\"Laravel\\Roster\\Roster\":3:{s:13:\"\0*\0approaches\";O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:11:\"\0*\0packages\";O:32:\"Laravel\\Roster\\PackageCollection\":2:{s:8:\"\0*\0items\";a:9:{i:0;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:5:\"^12.0\";s:10:\"\0*\0package\";E:37:\"Laravel\\Roster\\Enums\\Packages:LARAVEL\";s:14:\"\0*\0packageName\";s:17:\"laravel/framework\";s:10:\"\0*\0version\";s:7:\"12.45.1\";s:6:\"\0*\0dev\";b:0;}i:1;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:0;s:13:\"\0*\0constraint\";s:6:\"v0.3.8\";s:10:\"\0*\0package\";E:37:\"Laravel\\Roster\\Enums\\Packages:PROMPTS\";s:14:\"\0*\0packageName\";s:15:\"laravel/prompts\";s:10:\"\0*\0version\";s:5:\"0.3.8\";s:6:\"\0*\0dev\";b:0;}i:2;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:4:\"^2.3\";s:10:\"\0*\0package\";E:36:\"Laravel\\Roster\\Enums\\Packages:BREEZE\";s:14:\"\0*\0packageName\";s:14:\"laravel/breeze\";s:10:\"\0*\0version\";s:5:\"2.3.8\";s:6:\"\0*\0dev\";b:1;}i:3;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:0;s:13:\"\0*\0constraint\";s:6:\"v0.5.3\";s:10:\"\0*\0package\";E:33:\"Laravel\\Roster\\Enums\\Packages:MCP\";s:14:\"\0*\0packageName\";s:11:\"laravel/mcp\";s:10:\"\0*\0version\";s:5:\"0.5.3\";s:6:\"\0*\0dev\";b:1;}i:4;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:5:\"^1.24\";s:10:\"\0*\0package\";E:34:\"Laravel\\Roster\\Enums\\Packages:PINT\";s:14:\"\0*\0packageName\";s:12:\"laravel/pint\";s:10:\"\0*\0version\";s:6:\"1.27.0\";s:6:\"\0*\0dev\";b:1;}i:5;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:5:\"^1.41\";s:10:\"\0*\0package\";E:34:\"Laravel\\Roster\\Enums\\Packages:SAIL\";s:14:\"\0*\0packageName\";s:12:\"laravel/sail\";s:10:\"\0*\0version\";s:6:\"1.52.0\";s:6:\"\0*\0dev\";b:1;}i:6;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:7:\"^11.5.3\";s:10:\"\0*\0package\";E:37:\"Laravel\\Roster\\Enums\\Packages:PHPUNIT\";s:14:\"\0*\0packageName\";s:15:\"phpunit/phpunit\";s:10:\"\0*\0version\";s:7:\"11.5.46\";s:6:\"\0*\0dev\";b:1;}i:7;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:0;s:13:\"\0*\0constraint\";s:0:\"\";s:10:\"\0*\0package\";E:38:\"Laravel\\Roster\\Enums\\Packages:ALPINEJS\";s:14:\"\0*\0packageName\";s:8:\"alpinejs\";s:10:\"\0*\0version\";s:6:\"3.15.3\";s:6:\"\0*\0dev\";b:1;}i:8;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:0;s:13:\"\0*\0constraint\";s:0:\"\";s:10:\"\0*\0package\";E:41:\"Laravel\\Roster\\Enums\\Packages:TAILWINDCSS\";s:14:\"\0*\0packageName\";s:11:\"tailwindcss\";s:10:\"\0*\0version\";s:6:\"3.4.19\";s:6:\"\0*\0dev\";b:1;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:21:\"\0*\0nodePackageManager\";E:43:\"Laravel\\Roster\\Enums\\NodePackageManager:NPM\";}s:9:\"timestamp\";i:1772896389;}', 1772982789);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `incidents`
--

CREATE TABLE `incidents` (
  `id` bigint UNSIGNED NOT NULL,
  `monitor_id` bigint UNSIGNED NOT NULL,
  `down_at` timestamp NOT NULL,
  `up_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'down',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_01_07_034643_create_monitors_table', 1),
(5, '2026_01_08_055447_add_history_to_monitors_table', 1),
(6, '2026_01_08_063543_add_details_to_monitors_table', 1),
(7, '2026_01_08_081729_create_stasiun_table', 1),
(8, '2026_01_09_135840_add_index_to_monitors_table', 1),
(9, '2026_01_15_134400_add_parent_and_kode_lokasi_to_monitors_table', 1),
(10, '2026_01_20_080804_create_incidents_table', 1),
(11, '2026_01_25_210130_add_zone_to_monitors_table', 1),
(12, '2026_01_28_113314_rename_email_to_username_in_users_table', 1),
(13, '2026_01_31_150000_create_app_settings_table', 1),
(14, '2026_01_31_235604_add_username_to_users_table', 1),
(15, '2026_02_12_141132_add_sort_order_to_monitors_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `monitors`
--

CREATE TABLE `monitors` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Device',
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `sort_order` int NOT NULL DEFAULT '1',
  `kode_lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone` enum('center','lintas utara','lintas selatan') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'center',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latency` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `history` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `monitors`
--

INSERT INTO `monitors` (`id`, `name`, `type`, `location`, `parent_id`, `sort_order`, `kode_lokasi`, `ip_address`, `zone`, `status`, `latency`, `created_at`, `updated_at`, `history`) VALUES
(5, 'SDWAN PGB', 'Router', 'STASIUN PEGADENBARU', NULL, 1, 'PGB', '10.3.31.1', 'center', 'Disconnected', 0, '2026-02-10 20:12:31', '2026-04-30 14:20:18', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
(6, 'SDWAN HGL', 'Router', 'STASIUN HAURGEULIS', NULL, 2, 'HGL', '10.3.46.1', 'center', 'Disconnected', 0, '2026-02-10 20:13:12', '2026-04-30 14:20:18', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
(7, 'SDWAN TIS', 'Router', 'STASIUN TERISI', NULL, 3, 'TIS', '10.3.44.1', 'center', 'Disconnected', 0, '2026-02-10 20:15:24', '2026-04-30 14:20:19', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
(8, 'SDWAN JTB', 'Router', 'STASIUN JATIBARANG', NULL, 4, 'JTB', '10.3.22.1', 'center', 'Disconnected', 0, '2026-02-10 20:16:26', '2026-04-30 14:20:19', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
(9, 'SDWAN AWN', 'Router', 'STASIUN ARJAWINANGUN', NULL, 5, 'AWN', '10.3.47.1', 'center', 'Disconnected', 0, '2026-02-10 20:17:17', '2026-04-30 14:20:19', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
(10, 'SDWAN CN', 'Router', 'STASIUN CIREBON', NULL, 6, 'CN', '10.3.1.1', 'center', 'Disconnected', 0, '2026-02-10 20:17:56', '2026-04-30 14:20:19', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
(11, 'SDWAN CNP', 'Router', 'STASIUN CIREBON PRUJAKAN', NULL, 7, 'CNP', '10.3.36.1', 'center', 'Disconnected', 0, '2026-02-10 20:19:29', '2026-04-30 14:20:19', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
(12, 'SDWAN CLD', 'Router', 'STASIUN CILEDUG', NULL, 8, 'CLD', '10.3.37.1', 'lintas selatan', 'Disconnected', 0, '2026-02-10 20:20:24', '2026-04-30 14:20:19', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
(13, 'SDWAN BBK', 'Router', 'STASIUN BABAKAN', NULL, 9, 'BBK', '10.3.23.1', 'lintas utara', 'Disconnected', 0, '2026-02-10 20:21:51', '2026-04-30 14:20:19', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
(14, 'SDWAN KGG', 'Router', 'STASIUN KETANGGUNGAN', NULL, 10, 'KGG', '10.3.30.1', 'lintas selatan', 'Disconnected', 0, '2026-02-10 20:23:25', '2026-04-30 14:20:19', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
(15, 'SDWAN LOS', 'Router', 'STASIUN LOSARI', NULL, 11, 'LOS', '10.3.24.1', 'lintas utara', 'Disconnected', 0, '2026-02-10 20:25:06', '2026-04-30 14:20:19', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
(16, 'SDWAN TGN', 'Router', 'STASIUN TANJUNG', NULL, 12, 'TGN', '10.3.21.1', 'lintas utara', 'Disconnected', 0, '2026-02-10 20:25:48', '2026-04-30 14:20:19', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
(17, 'SDWAN BB', 'Router', 'STASIUN BREBES', NULL, 13, 'BB', '10.3.35.1', 'lintas utara', 'Disconnected', 0, '2026-02-10 20:26:25', '2026-04-30 14:20:19', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
(18, 'ARUBA STPGB', 'Switch', 'STASIUN PEGADENBARU', 5, 0, 'PGB', '10.3.31.210', 'center', 'Disconnected', 0, '2026-02-10 20:29:28', '2026-04-30 14:20:19', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
(19, 'ARUBA JRPGB', 'Switch', 'STASIUN PEGADENBARU', 18, 0, 'PGB', '10.3.31.211', 'center', 'Disconnected', 0, '2026-02-10 20:38:50', '2026-04-30 14:20:19', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
(20, 'ARUBAST', 'Switch', 'STASIUN HAURGEULIS', 6, 0, 'HGL', '10.3.46.210', 'center', 'Disconnected', 0, '2026-02-10 20:40:02', '2026-04-30 14:20:19', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
(21, 'ARUBAJRHGL', 'Switch', 'STASIUN HAURGEULIS', 20, 0, 'HGL', '10.3.46.211', 'center', 'Disconnected', 0, '2026-02-10 20:40:48', '2026-04-30 14:20:19', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
(22, 'ARUBASTTIS', 'Switch', 'STASIUN TERISI', 7, 0, 'TIS', '10.3.44.210', 'center', 'Disconnected', 0, '2026-02-10 20:41:21', '2026-04-30 14:20:19', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
(23, 'ARUBATISJR', 'Switch', 'STASIUN TERISI', 22, 0, 'TIS', '10.3.44.211', 'center', 'Disconnected', 0, '2026-02-10 20:41:56', '2026-04-30 14:20:19', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
(24, 'ARUBASTJTB', 'Switch', 'STASIUN JATIBARANG', 8, 0, 'JTB', '10.3.22.210', 'center', 'Disconnected', 0, '2026-02-10 20:42:20', '2026-04-30 14:20:19', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
(25, 'ARUBASTAWN', 'Switch', 'STASIUN ARJAWINANGUN', 9, 0, 'AWN', '10.3.47.210', 'center', 'Disconnected', 0, '2026-02-10 20:43:09', '2026-04-30 14:20:19', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
(26, 'ARUBAAWN1', 'Switch', 'STASIUN ARJAWINANGUN', 25, 0, 'AWN', '10.3.47.211', 'center', 'Disconnected', 0, '2026-02-10 20:43:41', '2026-04-30 14:20:19', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
(27, 'ARUBAAWN2', 'Switch', 'STASIUN ARJAWINANGUN', 26, 0, 'AWN', '10.3.47.212', 'center', 'Disconnected', 0, '2026-02-10 20:44:06', '2026-04-30 14:20:19', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
(28, 'SWRISECN1', 'Switch', 'STASIUN CIREBON', 10, 0, 'CN', '10.3.1.10', 'center', 'Disconnected', 0, '2026-02-10 20:44:33', '2026-04-30 14:20:19', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
(29, 'SWRISECN2', 'Switch', 'STASIUN CIREBON', 28, 0, 'CN', '10.3.1.11', 'center', 'Disconnected', 0, '2026-02-10 20:44:58', '2026-04-30 14:20:19', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
(30, 'SWRISECNP1', 'Switch', 'STASIUN CIREBON PRUJAKAN', 11, 0, 'CNP', '10.3.36.5', 'center', 'Disconnected', 0, '2026-02-10 20:45:28', '2026-04-30 14:20:17', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
(31, 'ARUBAJRCNP', 'Switch', 'STASIUN CIREBON PRUJAKAN', 30, 0, 'CNP', '10.3.36.211', 'center', 'Disconnected', 0, '2026-02-10 20:46:54', '2026-04-30 14:20:17', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
(32, 'SWRISECNP2', 'Switch', 'STASIUN CIREBON PRUJAKAN', 30, 0, 'CNP', '10.3.36.6', 'center', 'Disconnected', 0, '2026-02-10 20:47:30', '2026-04-30 14:20:17', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
(33, 'ARUBASTCLD', 'Switch', 'STASIUN CILEDUG', 12, 0, 'CLD', '10.3.37.210', 'lintas selatan', 'Disconnected', 0, '2026-02-10 20:48:18', '2026-04-30 14:20:17', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
(34, 'ARUBACLDJR', 'Switch', 'STASIUN CILEDUG', 33, 0, 'CLD', '10.3.37.211', 'lintas selatan', 'Disconnected', 0, '2026-02-10 20:48:43', '2026-04-30 14:20:17', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
(35, 'ARUBASTKGG', 'Switch', 'STASIUN KETANGGUNGAN', 14, 0, 'KGG', '10.3.30.210', 'lintas selatan', 'Disconnected', 0, '2026-02-10 20:49:17', '2026-04-30 14:20:17', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
(36, 'ARUBAKGGJJ', 'Switch', 'STASIUN KETANGGUNGAN', 35, 0, 'KGG', '10.3.30.211', 'lintas selatan', 'Disconnected', 0, '2026-02-10 20:50:16', '2026-04-30 14:20:17', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
(37, 'ARUBAKGGSTL', 'Switch', 'STASIUN KETANGGUNGAN', 36, 0, 'KGG', '10.3.30.212', 'lintas selatan', 'Disconnected', 0, '2026-02-10 20:50:46', '2026-04-30 14:20:17', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
(38, 'ARUBASTBBK', 'Switch', 'STASIUN BABAKAN', 13, 0, 'BBK', '10.3.23.210', 'lintas utara', 'Disconnected', 0, '2026-02-10 20:51:08', '2026-04-30 14:20:17', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
(39, 'ARUBABBKJJ', 'Switch', 'STASIUN BABAKAN', 38, 0, 'BBK', '10.3.23.211', 'lintas utara', 'Disconnected', 0, '2026-02-10 20:51:31', '2026-04-30 14:20:17', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
(40, 'ARUBASTLOS', 'Switch', 'STASIUN LOSARI', 15, 0, 'LOS', '10.3.24.210', 'lintas utara', 'Disconnected', 0, '2026-02-10 20:51:54', '2026-04-30 14:20:17', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
(41, 'ARUBALOSJJ', 'Switch', 'STASIUN LOSARI', 40, 0, 'LOS', '10.3.24.211', 'lintas utara', 'Disconnected', 0, '2026-02-10 20:52:20', '2026-04-30 14:20:17', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
(42, 'ARUBASTTGN', 'Switch', 'STASIUN TANJUNG', 16, 0, 'TGN', '10.3.21.210', 'lintas utara', 'Disconnected', 0, '2026-02-10 20:52:51', '2026-04-30 14:20:17', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
(43, 'ARUBATGNJJ', 'Switch', 'STASIUN TANJUNG', 42, 0, 'TGN', '10.3.21.211', 'lintas utara', 'Disconnected', 0, '2026-02-10 20:53:27', '2026-04-30 14:20:17', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
(44, 'ARUBABBUK', 'Switch', 'STASIUN BREBES', 17, 0, 'BB', '10.3.35.211', 'lintas utara', 'Disconnected', 0, '2026-02-10 20:54:44', '2026-04-30 14:20:17', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
(45, 'ARUBASTBB', 'Switch', 'STASIUN BREBES', 44, 0, 'BB', '10.3.35.212', 'lintas utara', 'Disconnected', 0, '2026-02-10 20:55:33', '2026-04-30 14:20:17', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
(46, 'ARUBABBJR', 'Switch', 'STASIUN BREBES', 45, 0, 'BB', '10.3.35.210', 'lintas utara', 'Disconnected', 0, '2026-02-10 20:56:02', '2026-04-30 14:20:17', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('BxocyGWBmmrOM4PBYXRjakIlz7K3ZDJEq2ORYp2Z', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidm1oSjZyZWVUZ0M4ZlI5RzR2dXhCWkhiMGJwVms2TGlWVlFaRmpyTiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyOToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3ByZXZpZXciO31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czozNDoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2hpc3RvcnkvZGF0YSI7czo1OiJyb3V0ZSI7czoxMjoiaGlzdG9yeS5kYXRhIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1775577208);

-- --------------------------------------------------------

--
-- Table structure for table `stasiun`
--

CREATE TABLE `stasiun` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_stasiun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_stasiun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin KAI DAOP 3', 'admin_kai', '2026-02-18 08:23:51', '$2y$12$/VYYbfSZoHUvxDMuTGcRgeegUIq5nkfcb3kMA2rTzSeuUOEgCulVO', NULL, '2026-02-18 08:23:51', '2026-02-18 08:23:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `app_settings_key_unique` (`key`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `incidents`
--
ALTER TABLE `incidents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `incidents_monitor_id_foreign` (`monitor_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monitors`
--
ALTER TABLE `monitors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `monitors_ip_address_index` (`ip_address`),
  ADD KEY `monitors_status_index` (`status`),
  ADD KEY `monitors_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `stasiun`
--
ALTER TABLE `stasiun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `incidents`
--
ALTER TABLE `incidents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `monitors`
--
ALTER TABLE `monitors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `stasiun`
--
ALTER TABLE `stasiun`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `incidents`
--
ALTER TABLE `incidents`
  ADD CONSTRAINT `incidents_monitor_id_foreign` FOREIGN KEY (`monitor_id`) REFERENCES `monitors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `monitors`
--
ALTER TABLE `monitors`
  ADD CONSTRAINT `monitors_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `monitors` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2026 at 06:28 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seller_product_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `product_id`, `name`, `detail`, `image`, `price`, `created_at`, `updated_at`) VALUES
(9, 5, 'Dell', 'Test', 'brands/vxdEU7DUFqsDIYkFmrK22ZMeIPGFpNX6nCeliBca.png', 1000.00, '2026-01-19 05:26:08', '2026-01-19 05:26:08'),
(10, 5, 'HP', 'Test', 'brands/p3rG7osWUpWcrpuhFtnWhuQXpAxR8XbeRNBLL6Yo.png', 2000.00, '2026-01-19 05:26:08', '2026-01-19 05:26:08'),
(11, 6, 'fgv', 'fe', '', 34.00, '2026-01-19 11:52:30', '2026-01-19 11:52:30'),
(12, 7, 'dell', 'dffbvf', '', 5.00, '2026-01-19 11:58:11', '2026-01-19 11:58:11');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_01_18_141733_create_personal_access_tokens_table', 1),
(5, '2026_01_18_141758_create_products_table', 1),
(6, '2026_01_18_141759_create_brands_table', 1),
(7, '2026_01_18_174311_add_profile_fields_to_users_table', 1),
(8, '2026_01_18_174718_force_add_role_to_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'admin-token', '0832bb23668220edaa029d56daed420314e5229eceb17c001f188434c0a3ab91', '[\"*\"]', NULL, NULL, '2026-01-19 01:58:41', '2026-01-19 01:58:41'),
(2, 'App\\Models\\User', 1, 'admin-token', 'ebbbaafa45d0d653209247efc720b029705b19d8016831ada1866124433aa640', '[\"*\"]', '2026-01-19 03:00:46', NULL, '2026-01-19 02:54:37', '2026-01-19 03:00:46'),
(3, 'App\\Models\\User', 1, 'admin-token', '19fa38b5e55698fd11ef4f792b245fed4aaf886bbf0daddc1488cafb32e2c4fc', '[\"*\"]', '2026-01-19 05:45:25', NULL, '2026-01-19 03:02:21', '2026-01-19 05:45:25'),
(4, 'App\\Models\\User', 2, 'seller-token', 'f61c5f48de942252e96ab827a4e90f298242e21ccd5add5d653535ff775c015f', '[\"*\"]', '2026-01-19 05:34:24', NULL, '2026-01-19 03:17:59', '2026-01-19 05:34:24'),
(5, 'App\\Models\\User', 1, 'admin-token', '838afbf20e237eddfafeca359b83a4be03341f27ee9d5a431029d23617ebe87a', '[\"*\"]', '2026-01-19 05:44:14', NULL, '2026-01-19 05:17:57', '2026-01-19 05:44:14'),
(6, 'App\\Models\\User', 2, 'seller-token', 'c279068a2c8913c66c6385c3d0cf2fb6fd3c26f4628881a60aeb3076a486c13c', '[\"*\"]', NULL, NULL, '2026-01-19 05:18:12', '2026-01-19 05:18:12'),
(7, 'App\\Models\\User', 2, 'seller-token', '236a6eed088c4a59778d031a70c853f8e8a2f83a7b3e1a5418f56502c394e7f7', '[\"*\"]', NULL, NULL, '2026-01-19 05:34:32', '2026-01-19 05:34:32'),
(8, 'App\\Models\\User', 2, 'seller-token', 'f0966c1b30171f1b7a45b1be1e11f9ecd1bfbbe2cdec17ee0030fab55e499576', '[\"*\"]', '2026-01-19 08:23:37', NULL, '2026-01-19 05:46:03', '2026-01-19 08:23:37'),
(9, 'App\\Models\\User', 2, 'seller-token', '5923a0490779e8e43f424606a6d2e6a128658d6f60c03053a08001c8d53f6a8a', '[\"*\"]', NULL, NULL, '2026-01-19 05:53:33', '2026-01-19 05:53:33'),
(10, 'App\\Models\\User', 1, 'admin-token', 'dd560eab33ac30da13515e64c8c062cf62efab993b707c797052cb97f87fe908', '[\"*\"]', NULL, NULL, '2026-01-19 07:41:03', '2026-01-19 07:41:03'),
(11, 'App\\Models\\User', 1, 'admin-token', '75d1595c110eccd63f57d42a9f1d99f0c4670781f52eee65c9e2ae235e5225ef', '[\"*\"]', '2026-01-19 08:02:45', NULL, '2026-01-19 08:02:34', '2026-01-19 08:02:45'),
(12, 'App\\Models\\User', 2, 'seller-token', 'abcc178419b9aeefab6d6e47de287f20b00a3e0184b9f8fc203f24bb73eccb85', '[\"*\"]', NULL, NULL, '2026-01-19 08:02:57', '2026-01-19 08:02:57'),
(13, 'App\\Models\\User', 2, 'seller-token', '3add9a0be4c73be5c0351ad58fa0264e1b1f9f9c8c52265e075bfca3cd2b2d74', '[\"*\"]', '2026-01-19 08:03:03', NULL, '2026-01-19 08:02:57', '2026-01-19 08:03:03'),
(14, 'App\\Models\\User', 1, 'admin-token', 'ba2885c070349dd20e9a538b49c25f9a82c63b106dc3916e78be1b2fa440d0eb', '[\"*\"]', NULL, NULL, '2026-01-19 08:21:38', '2026-01-19 08:21:38'),
(15, 'App\\Models\\User', 2, 'seller-token', '983f72357f7b3dcd801ba31281af654cd5fff35a0c7354e52dfab07798ad9d98', '[\"*\"]', NULL, NULL, '2026-01-19 08:21:57', '2026-01-19 08:21:57'),
(16, 'App\\Models\\User', 2, 'seller-token', 'feeca5ebaeaf4b26fd6787011ec0762b98f8339f8aee0956b3ee72f840dc20a6', '[\"*\"]', '2026-01-19 08:22:00', NULL, '2026-01-19 08:21:57', '2026-01-19 08:22:00'),
(17, 'App\\Models\\User', 2, 'seller-token', '0c490fcc553cfee955f8a935bdc81f2fcaf7cbbb9b35101cbf2860f6f02258be', '[\"*\"]', NULL, NULL, '2026-01-19 08:28:06', '2026-01-19 08:28:06'),
(18, 'App\\Models\\User', 2, 'seller-token', 'd9d2f3991e264857f7ebf43cccae6d0504dcbcbd326d12be86e71456243e923f', '[\"*\"]', '2026-01-19 08:28:08', NULL, '2026-01-19 08:28:06', '2026-01-19 08:28:08'),
(19, 'App\\Models\\User', 2, 'seller-token', '49d0bd7ea1e92ee80625ee0c9b11deaaafbfac6cc3daf7ad915ca7b0fbfeed16', '[\"*\"]', NULL, NULL, '2026-01-19 08:29:01', '2026-01-19 08:29:01'),
(20, 'App\\Models\\User', 2, 'seller-token', '7eafe400429c3c493434ee20052f2fa0c64051833ce4d4d6c7f8fb80bb7aafe0', '[\"*\"]', '2026-01-19 08:29:05', NULL, '2026-01-19 08:29:01', '2026-01-19 08:29:05'),
(21, 'App\\Models\\User', 2, 'seller-token', '11e5711002a19ae6ab29c7ddd448ee584f023b02867413008450c16b24c1fec4', '[\"*\"]', NULL, NULL, '2026-01-19 08:31:45', '2026-01-19 08:31:45'),
(22, 'App\\Models\\User', 2, 'seller-token', 'e12d98907f52e8e00faf6a34989ffadcac1792dadd73cad313fb8a84c269f0c9', '[\"*\"]', '2026-01-19 08:32:07', NULL, '2026-01-19 08:31:45', '2026-01-19 08:32:07'),
(23, 'App\\Models\\User', 2, 'seller-token', '1656d7960eb3efd42e82b49dc02978557727f889c283ddf8dc24d3d27b6a7d5e', '[\"*\"]', NULL, NULL, '2026-01-19 08:33:25', '2026-01-19 08:33:25'),
(24, 'App\\Models\\User', 2, 'seller-token', '37ffc04ff226421f78d2a461b692432fe5091896a7a8ee8d2eaefe8b7496f57c', '[\"*\"]', '2026-01-19 08:33:29', NULL, '2026-01-19 08:33:25', '2026-01-19 08:33:29'),
(25, 'App\\Models\\User', 2, 'seller-token', '718a81cea76446e6bdf2936c7491f99451e969f671d02c215731ef193c2b875c', '[\"*\"]', NULL, NULL, '2026-01-19 08:38:01', '2026-01-19 08:38:01'),
(26, 'App\\Models\\User', 2, 'seller-token', '865ae832f9ab4edc275b78dd0ff0237cc74da4d490507cfbac87cced3472a3fc', '[\"*\"]', '2026-01-19 08:38:18', NULL, '2026-01-19 08:38:01', '2026-01-19 08:38:18'),
(27, 'App\\Models\\User', 2, 'seller-token', '149c8179fa85cd98d2fb1d64da3fea721a9525a585c2b35129e49c938ff49770', '[\"*\"]', NULL, NULL, '2026-01-19 08:38:23', '2026-01-19 08:38:23'),
(28, 'App\\Models\\User', 2, 'seller-token', '93b66be8db6b7d67604822e00fe20cfa2ae3c3ed824c4c710f311087728d3ad9', '[\"*\"]', '2026-01-19 08:38:26', NULL, '2026-01-19 08:38:23', '2026-01-19 08:38:26'),
(29, 'App\\Models\\User', 2, 'seller-token', 'a1d1a694686fa66ae3ce49a13b983b6fd30e128cbf3df65d3b9faf838cfdfab5', '[\"*\"]', NULL, NULL, '2026-01-19 08:41:03', '2026-01-19 08:41:03'),
(30, 'App\\Models\\User', 2, 'seller-token', '78eca52b2a4874e8a49040f893889f9ae35636e7b5d47f81d7e73b244e679045', '[\"*\"]', '2026-01-19 08:41:06', NULL, '2026-01-19 08:41:03', '2026-01-19 08:41:06'),
(31, 'App\\Models\\User', 2, 'seller-token', '17de9247e8d3d488bac66118dad4e8873b4317a5789aa231834f5f043d79c35f', '[\"*\"]', NULL, NULL, '2026-01-19 08:47:32', '2026-01-19 08:47:32'),
(32, 'App\\Models\\User', 2, 'seller-token', 'ef77befca2dd2d0e3827c02a9281eb6c0b0ccd4bfbf63498c501bb1e41dd8de1', '[\"*\"]', '2026-01-19 08:47:40', NULL, '2026-01-19 08:47:32', '2026-01-19 08:47:40'),
(33, 'App\\Models\\User', 2, 'seller-token', '061e68bdd0c49dd71814e3a11ec42f528faa413249d9d2ebf6af53b357bd6832', '[\"*\"]', NULL, NULL, '2026-01-19 08:50:04', '2026-01-19 08:50:04'),
(34, 'App\\Models\\User', 2, 'seller-token', '3fbc901509d73f216cabec35add8b3dfde602c7bde6199d65e7be015a4cbd656', '[\"*\"]', '2026-01-19 08:50:15', NULL, '2026-01-19 08:50:04', '2026-01-19 08:50:15'),
(35, 'App\\Models\\User', 2, 'seller-token', '37bbdce362138f84bb3856e204503a0ad66c0073865c2afc9594b1238de582a4', '[\"*\"]', NULL, NULL, '2026-01-19 08:54:32', '2026-01-19 08:54:32'),
(36, 'App\\Models\\User', 2, 'seller-token', '26c76fa73e5c8465a07d3a0ee43f2bd43b8cf418559b22318d80e334cf1cc028', '[\"*\"]', '2026-01-19 08:54:36', NULL, '2026-01-19 08:54:32', '2026-01-19 08:54:36'),
(37, 'App\\Models\\User', 2, 'seller-token', '288079ae94b0f3bd6ccb9d15e39808dda39292db7574dd7155dd3da58cae99ee', '[\"*\"]', NULL, NULL, '2026-01-19 08:56:41', '2026-01-19 08:56:41'),
(38, 'App\\Models\\User', 2, 'seller-token', '8509cb1ed3c8ae5e6f1029974c61c8c661469dc686d8a81ea0d5345281007e8f', '[\"*\"]', '2026-01-19 08:56:47', NULL, '2026-01-19 08:56:41', '2026-01-19 08:56:47'),
(39, 'App\\Models\\User', 2, 'seller-token', 'ffc9e3ba99d95a42175f82309bd31a7061e9726adf7917b4c9200d834af85f0e', '[\"*\"]', NULL, NULL, '2026-01-19 09:04:08', '2026-01-19 09:04:08'),
(40, 'App\\Models\\User', 2, 'seller-token', '2d5f52ba0075bd293836292c7c34b15b8f12e7aa9dbd466b0873a1b2eb56c661', '[\"*\"]', '2026-01-19 09:04:11', NULL, '2026-01-19 09:04:08', '2026-01-19 09:04:11'),
(41, 'App\\Models\\User', 2, 'seller-token', 'ff8679e2b4848d45f49a229789909a4947cac6c63ea6baf73a0a9cb932cb168e', '[\"*\"]', NULL, NULL, '2026-01-19 09:06:37', '2026-01-19 09:06:37'),
(42, 'App\\Models\\User', 2, 'seller-token', '14ba1a2f21b38fd313cbceb2db69d6f3120a54042ddf3888b15aca12087262c2', '[\"*\"]', '2026-01-19 09:09:20', NULL, '2026-01-19 09:06:37', '2026-01-19 09:09:20'),
(43, 'App\\Models\\User', 2, 'seller-token', 'ab1d4406cc92d015edeaee983c4ecbf96d3d8ccfdd8a852082840853d873e267', '[\"*\"]', NULL, NULL, '2026-01-19 09:09:23', '2026-01-19 09:09:23'),
(44, 'App\\Models\\User', 2, 'seller-token', '89e2e26f77f3bb37e2aaeae2cbbc7ddd13421c8bc763c9ffc28c3ba459685cd5', '[\"*\"]', '2026-01-19 09:09:27', NULL, '2026-01-19 09:09:23', '2026-01-19 09:09:27'),
(45, 'App\\Models\\User', 2, 'seller-token', 'f28f43ba4066f31eaac3adcd34e5ca4fe4e9c7e54f24029ae5ee2f04fc897d68', '[\"*\"]', NULL, NULL, '2026-01-19 09:13:43', '2026-01-19 09:13:43'),
(46, 'App\\Models\\User', 2, 'seller-token', '6c78adc7caddee60ab481dd4386be0d9039edae9ffd7af45741e40aec4139a96', '[\"*\"]', NULL, NULL, '2026-01-19 09:13:43', '2026-01-19 09:13:43'),
(47, 'App\\Models\\User', 2, 'seller-token', '637a1fcd45d3d9022dd0a6b8fc5e9e93554222da3296a1eaf190967b653cde8c', '[\"*\"]', NULL, NULL, '2026-01-19 09:13:53', '2026-01-19 09:13:53'),
(48, 'App\\Models\\User', 2, 'seller-token', 'a4100497fba654803817e329cb0d408adf3f1e6d431f447af30a05637a57af72', '[\"*\"]', NULL, NULL, '2026-01-19 09:13:53', '2026-01-19 09:13:53'),
(49, 'App\\Models\\User', 2, 'seller-token', '7980c677dd625361dc6fbe0af66075a0ffb2be5d96fc87cab0d3f5065bc01e37', '[\"*\"]', NULL, NULL, '2026-01-19 09:18:14', '2026-01-19 09:18:14'),
(50, 'App\\Models\\User', 2, 'seller-token', 'fd0eecab6eb05bb56757b1a929825580707abc742ee8edbfa052bb1fe37a6a08', '[\"*\"]', NULL, NULL, '2026-01-19 09:18:14', '2026-01-19 09:18:14'),
(51, 'App\\Models\\User', 2, 'seller-token', '5d2feecb78481d5402e2b13238f3b661dda9f08b3c34d73b987812f127c404d5', '[\"*\"]', NULL, NULL, '2026-01-19 09:20:53', '2026-01-19 09:20:53'),
(52, 'App\\Models\\User', 2, 'seller-token', '55ee00b00495ff2e758710a52c8f0ab29a04251e7a09a3b5110457d491da4cff', '[\"*\"]', NULL, NULL, '2026-01-19 09:20:53', '2026-01-19 09:20:53'),
(53, 'App\\Models\\User', 2, 'seller-token', '22a04e8da285c2c2fdbd3faa1af8b0abc1b76dfb3209da843d6d3c54c6a24593', '[\"*\"]', NULL, NULL, '2026-01-19 09:21:25', '2026-01-19 09:21:25'),
(54, 'App\\Models\\User', 2, 'seller-token', 'a5cf72aac8c0afc2db95aba79678ea5e39ccf69c5fdaa6932787df1be52b7fd4', '[\"*\"]', NULL, NULL, '2026-01-19 09:21:25', '2026-01-19 09:21:25'),
(55, 'App\\Models\\User', 2, 'seller-token', '9f5e341edd08b9b8e93f060d4e62d244bbd69008c12ed55651bf5af0f8baa157', '[\"*\"]', NULL, NULL, '2026-01-19 09:21:37', '2026-01-19 09:21:37'),
(56, 'App\\Models\\User', 2, 'seller-token', 'e4beeb3d86bbe4c8318481db7b533ada8da8d915fc6a1e236e71036034f06dd0', '[\"*\"]', NULL, NULL, '2026-01-19 09:21:37', '2026-01-19 09:21:37'),
(57, 'App\\Models\\User', 2, 'seller-token', '7dc3c9c6f03f44da8430bd213408addc73b23f8d4cf36aa2b95ab34c1f5e78f4', '[\"*\"]', NULL, NULL, '2026-01-19 09:21:56', '2026-01-19 09:21:56'),
(58, 'App\\Models\\User', 2, 'seller-token', '9d8698a3127643d3c68cfa64fd0e39d098dbce7bff200a5d1f539ce273362aa4', '[\"*\"]', NULL, NULL, '2026-01-19 09:21:56', '2026-01-19 09:21:56'),
(59, 'App\\Models\\User', 2, 'seller-token', '4b0372d687225a6cc68d6a2bd178da5aa4c3ef5278f10213d43a50e3b55f1bf7', '[\"*\"]', NULL, NULL, '2026-01-19 09:22:37', '2026-01-19 09:22:37'),
(60, 'App\\Models\\User', 2, 'seller-token', '1b427381b35090716a5e4f36668327a89f4f30111756a99c19be3cef4abf57a4', '[\"*\"]', NULL, NULL, '2026-01-19 09:22:37', '2026-01-19 09:22:37'),
(61, 'App\\Models\\User', 2, 'seller-token', '61fe25ed0c46c80c239c632a913412bac62e900274478f31bef7eac4e3f839c9', '[\"*\"]', NULL, NULL, '2026-01-19 09:22:56', '2026-01-19 09:22:56'),
(62, 'App\\Models\\User', 2, 'seller-token', '3ca78c10a987c7dbfbb5f004eac8739daf414e8cdb763f497493e6cd610b02ca', '[\"*\"]', '2026-01-19 09:23:06', NULL, '2026-01-19 09:22:56', '2026-01-19 09:23:06'),
(63, 'App\\Models\\User', 2, 'seller-token', '449e45e9ab42966af98753476e779a5371a72c588b89171b3c305a1109e9584b', '[\"*\"]', NULL, NULL, '2026-01-19 09:23:14', '2026-01-19 09:23:14'),
(64, 'App\\Models\\User', 2, 'seller-token', '463fe5f92a9681fb6621f9962e365f8152fe8d053c4ae41ad4e30eca1b51e666', '[\"*\"]', '2026-01-19 09:23:17', NULL, '2026-01-19 09:23:14', '2026-01-19 09:23:17'),
(65, 'App\\Models\\User', 2, 'seller-token', 'ccb1de4c96f856d3bafb978e3cdafc16faec30c0c241ceafbc697cd129916a4d', '[\"*\"]', NULL, NULL, '2026-01-19 09:23:28', '2026-01-19 09:23:28'),
(66, 'App\\Models\\User', 2, 'seller-token', 'c41d05058b49aab619aecd71593957a2323e7ed01cb9cd8f11f203e1daf170ac', '[\"*\"]', '2026-01-19 09:23:32', NULL, '2026-01-19 09:23:28', '2026-01-19 09:23:32'),
(67, 'App\\Models\\User', 2, 'seller-token', '59290400955ee597ad745f209498181b79e7216414538e650764dedcdccd74cc', '[\"*\"]', NULL, NULL, '2026-01-19 09:24:49', '2026-01-19 09:24:49'),
(68, 'App\\Models\\User', 2, 'seller-token', '95d424af7087a006a4ca022a65ad300c39619090225a156aa53055a4eb943f8a', '[\"*\"]', '2026-01-19 09:24:51', NULL, '2026-01-19 09:24:49', '2026-01-19 09:24:51'),
(69, 'App\\Models\\User', 2, 'seller-token', 'f0bf07159d1f97fe8e0e05ff3f9d6605ed2e3e0db211984d48909261a98a06c4', '[\"*\"]', NULL, NULL, '2026-01-19 09:25:19', '2026-01-19 09:25:19'),
(70, 'App\\Models\\User', 2, 'seller-token', 'f40545313570306d1875f48a5618747b06f422c16967d25fce631bbad6c66287', '[\"*\"]', NULL, NULL, '2026-01-19 09:25:19', '2026-01-19 09:25:19'),
(71, 'App\\Models\\User', 2, 'seller-token', '99f63cacc74ed6d6d00d42fe8fa599f88a276d51c520a0237768432cce85e0c0', '[\"*\"]', NULL, NULL, '2026-01-19 09:34:40', '2026-01-19 09:34:40'),
(72, 'App\\Models\\User', 2, 'seller-token', '6a8ec67696e1cde4e6a77dbb667e087ffabcb6cdacb116b3a9a64cb386cded38', '[\"*\"]', '2026-01-19 09:34:50', NULL, '2026-01-19 09:34:40', '2026-01-19 09:34:50'),
(73, 'App\\Models\\User', 2, 'seller-token', '908a480cab77cc9455d13e92ae9a9cde792524dcdb1051e6699eb9281b803339', '[\"*\"]', NULL, NULL, '2026-01-19 09:37:51', '2026-01-19 09:37:51'),
(74, 'App\\Models\\User', 2, 'seller-token', '92359a03b11f7ac4ab9a82de6dacd55cf5ffd559e9a4fd252136aeb261612a21', '[\"*\"]', NULL, NULL, '2026-01-19 09:37:51', '2026-01-19 09:37:51'),
(75, 'App\\Models\\User', 2, 'seller-token', '8e1d5ec2c2d1650431fa04e010ac28e9eeb28d9a4442569ba5cb84f86ad2d1f0', '[\"*\"]', NULL, NULL, '2026-01-19 09:37:57', '2026-01-19 09:37:57'),
(76, 'App\\Models\\User', 2, 'seller-token', '081a3b7974931fddca9c692d99be309a2d34a420a834397f78b76a403f0e3ea9', '[\"*\"]', '2026-01-19 09:38:03', NULL, '2026-01-19 09:37:57', '2026-01-19 09:38:03'),
(77, 'App\\Models\\User', 2, 'seller-token', '5b67248d3f8a075cbb2f16b61cd1eda7855da6f7b39bad71d5ddd3ac3dbc1af4', '[\"*\"]', NULL, NULL, '2026-01-19 09:47:02', '2026-01-19 09:47:02'),
(78, 'App\\Models\\User', 2, 'seller-token', 'b0b35738952a1f022180d48854578cab9079e761545a0224280deed6b4e1f4df', '[\"*\"]', NULL, NULL, '2026-01-19 09:47:02', '2026-01-19 09:47:02'),
(79, 'App\\Models\\User', 1, 'admin-token', 'e9cab3108fc138fa64d1afba1e8543b09e6bd3d5f01e0a63328b333ed1171007', '[\"*\"]', NULL, NULL, '2026-01-19 09:47:21', '2026-01-19 09:47:21'),
(80, 'App\\Models\\User', 2, 'seller-token', '93aae31296fbcb2b7df2f57524d830240cde61a09aca6981f49a84bb1f6d6d73', '[\"*\"]', NULL, NULL, '2026-01-19 09:47:38', '2026-01-19 09:47:38'),
(81, 'App\\Models\\User', 2, 'seller-token', '6bc5fe2c51a772b445ebd19115982b080ca31c1da3f486d27d9ef37a9ff212a5', '[\"*\"]', NULL, NULL, '2026-01-19 09:47:38', '2026-01-19 09:47:38'),
(82, 'App\\Models\\User', 2, 'seller-token', 'c01128921e0260d0ce1e983a64687d438756790302e35055bf7ebfd99c732917', '[\"*\"]', NULL, NULL, '2026-01-19 09:47:55', '2026-01-19 09:47:55'),
(83, 'App\\Models\\User', 2, 'seller-token', 'c72ac6ff1dc873a86fc063b660fec5a2b4eef3fca53bdd45655bdae25f3390c0', '[\"*\"]', NULL, NULL, '2026-01-19 09:47:55', '2026-01-19 09:47:55'),
(84, 'App\\Models\\User', 2, 'seller-token', 'aef91f15e067135bd78aef109d5b95afdd1c5e5b4b00cbf7f62ef77828710c19', '[\"*\"]', NULL, NULL, '2026-01-19 09:48:24', '2026-01-19 09:48:24'),
(85, 'App\\Models\\User', 2, 'seller-token', '2eb623b4701cdd03b370b6c65d98781396fc3d5daec3c73f52c1b4c1e63e3c11', '[\"*\"]', NULL, NULL, '2026-01-19 09:48:24', '2026-01-19 09:48:24'),
(86, 'App\\Models\\User', 2, 'seller-token', 'abb37a19c18025bf7f3744889bc5dcb2da55aef0436c349217e3b60bf27fe088', '[\"*\"]', NULL, NULL, '2026-01-19 09:49:57', '2026-01-19 09:49:57'),
(87, 'App\\Models\\User', 2, 'seller-token', 'aec52c0ee5e39cb93f9090a9c3f2f81e2c2bd633ec9c80bb5de90a23ac78f7ba', '[\"*\"]', NULL, NULL, '2026-01-19 09:49:57', '2026-01-19 09:49:57'),
(88, 'App\\Models\\User', 2, 'seller-token', 'cc903cca16d2ff7edcfcd27acbcf190bb183f336ea8dae5eb30d1cf0d2274d34', '[\"*\"]', NULL, NULL, '2026-01-19 09:50:09', '2026-01-19 09:50:09'),
(89, 'App\\Models\\User', 2, 'seller-token', 'aa2bb6284c2afe4336e50985fa7d1de03f6a077e693fe3b112c98b12490f220c', '[\"*\"]', '2026-01-19 09:50:12', NULL, '2026-01-19 09:50:09', '2026-01-19 09:50:12'),
(90, 'App\\Models\\User', 2, 'seller-token', '9b9127d2878d00a3a01ca144fa10b7fc3025b7d90103b1239df9441871ac4c7c', '[\"*\"]', NULL, NULL, '2026-01-19 10:31:23', '2026-01-19 10:31:23'),
(91, 'App\\Models\\User', 2, 'seller-token', '8bf3646ce128461751cad006556cf023880017f4f4fe71f14b910ca3bbd6f53d', '[\"*\"]', '2026-01-19 10:31:33', NULL, '2026-01-19 10:31:23', '2026-01-19 10:31:33'),
(92, 'App\\Models\\User', 1, 'admin-token', '6aee7e7c2f013449543b973a431a0b72003ffa984bd8748c5371d4895155fbdf', '[\"*\"]', '2026-01-19 10:32:18', NULL, '2026-01-19 10:31:57', '2026-01-19 10:32:18'),
(93, 'App\\Models\\User', 1, 'admin-token', '4b07f71d4271e20923188ebcb0d7dce23196417b283980dac3d7a79bb94c7de5', '[\"*\"]', NULL, NULL, '2026-01-19 10:38:37', '2026-01-19 10:38:37'),
(94, 'App\\Models\\User', 1, 'admin-token', '4e23d569b6ef0f62be32f2ec7ed22279056ec2709366efc6227f6b809185f7ae', '[\"*\"]', NULL, NULL, '2026-01-19 10:38:54', '2026-01-19 10:38:54'),
(95, 'App\\Models\\User', 2, 'seller-token', 'f6305ae5131b376155189463cd52203fc25ecd7c75c585a39aa21b3c91641123', '[\"*\"]', NULL, NULL, '2026-01-19 10:39:16', '2026-01-19 10:39:16'),
(96, 'App\\Models\\User', 2, 'seller-token', '9dc2b351ecf7aae95ef7a7edb7865973f392f69ff30d7123759bcebd3eb3ca79', '[\"*\"]', NULL, NULL, '2026-01-19 10:39:16', '2026-01-19 10:39:16'),
(97, 'App\\Models\\User', 2, 'seller-token', '231c2437f9878c5b18c44f46ec18be4f7d4dab5963a552efe4f0919290c48656', '[\"*\"]', NULL, NULL, '2026-01-19 10:39:43', '2026-01-19 10:39:43'),
(98, 'App\\Models\\User', 2, 'seller-token', 'b7f4b61f2b7fbdc0b98b4cfba9dc6d2b2305baa63b4badfe1771f0b452d6dc92', '[\"*\"]', NULL, NULL, '2026-01-19 10:39:43', '2026-01-19 10:39:43'),
(99, 'App\\Models\\User', 2, 'seller-token', 'fbf3766ead652b716df38b5396099e64aededaae65de04ef3146fbe9677ffcde', '[\"*\"]', NULL, NULL, '2026-01-19 10:46:43', '2026-01-19 10:46:43'),
(100, 'App\\Models\\User', 2, 'seller-token', '992de9881c89e5fdc44a8c294002cf71aabd9df50af94a65e3d5ab4f99fe153c', '[\"*\"]', '2026-01-19 10:46:58', NULL, '2026-01-19 10:46:43', '2026-01-19 10:46:58'),
(101, 'App\\Models\\User', 2, 'seller-token', '9f798713d0806cf253045e79d6e1f76ffd5b64da00bd952f459364e96cfc4d17', '[\"*\"]', NULL, NULL, '2026-01-19 10:47:01', '2026-01-19 10:47:01'),
(102, 'App\\Models\\User', 2, 'seller-token', '04e20c0e4d9f663005420e83d6e2d132218d710a4bf3c781ccd3424f57128b85', '[\"*\"]', '2026-01-19 10:47:09', NULL, '2026-01-19 10:47:01', '2026-01-19 10:47:09'),
(103, 'App\\Models\\User', 1, 'admin-token', 'fd0cc7dfef4ea950554000b30c8372d1a1341b6725c12f8a04e95be8cc3d0e12', '[\"*\"]', '2026-01-19 10:47:20', NULL, '2026-01-19 10:47:16', '2026-01-19 10:47:20'),
(104, 'App\\Models\\User', 1, 'admin-token', '636235fb0c465cb638330a0e45d12c26556ac1eaa19c0c9a0128212e5429c702', '[\"*\"]', '2026-01-19 10:47:51', NULL, '2026-01-19 10:47:41', '2026-01-19 10:47:51'),
(105, 'App\\Models\\User', 2, 'seller-token', '68e66639b455035ff6c4324c13729b96643969204c1c96638264c1fbc1b2388a', '[\"*\"]', NULL, NULL, '2026-01-19 10:48:10', '2026-01-19 10:48:10'),
(106, 'App\\Models\\User', 2, 'seller-token', '0cf0dfd27ec9379a8b8258eb59e62d65e10b845d22ab340b82a9f3197b48878d', '[\"*\"]', '2026-01-19 10:48:16', NULL, '2026-01-19 10:48:10', '2026-01-19 10:48:16'),
(107, 'App\\Models\\User', 2, 'seller-token', 'bca792e6602bb3fc510e3aeb7420865cc92fef172cd3484d67b9c3626fd19f4d', '[\"*\"]', NULL, NULL, '2026-01-19 10:51:14', '2026-01-19 10:51:14'),
(108, 'App\\Models\\User', 2, 'seller-token', '42abb8d310ef6f68888c6301765889fa3cead666225ba5a91e7c8e324b6e02ac', '[\"*\"]', NULL, NULL, '2026-01-19 10:51:14', '2026-01-19 10:51:14'),
(109, 'App\\Models\\User', 2, 'seller-token', '6791a6a2daef16834d52de55a6123b0f8d7ed1c776c9c5293379b35ce5f20153', '[\"*\"]', NULL, NULL, '2026-01-19 10:51:41', '2026-01-19 10:51:41'),
(110, 'App\\Models\\User', 2, 'seller-token', '0d95076225d3cf527f00084b5f43ff15abcfc96a61c6d12a0b6f2de66f0561db', '[\"*\"]', NULL, NULL, '2026-01-19 10:51:41', '2026-01-19 10:51:41'),
(111, 'App\\Models\\User', 2, 'seller-token', 'c7c9f103fa28345e42807be7cc93ca2b30e4c3bdb1b827075a8dda9d366a801b', '[\"*\"]', NULL, NULL, '2026-01-19 10:52:10', '2026-01-19 10:52:10'),
(112, 'App\\Models\\User', 2, 'seller-token', '6e87f24cbe2466b0d86492f6537b844ad5b3a1130b513b0d41090dbb855fcb1f', '[\"*\"]', NULL, NULL, '2026-01-19 10:52:10', '2026-01-19 10:52:10'),
(113, 'App\\Models\\User', 2, 'seller-token', 'a002ad1ca07c2c01ae0c29e269d906950ef14451a8d571fb9527dd7540743714', '[\"*\"]', NULL, NULL, '2026-01-19 10:52:20', '2026-01-19 10:52:20'),
(114, 'App\\Models\\User', 2, 'seller-token', '310576682bb59dea111b06424df14b7a82a3c7adee46bb88f018bf677f78eca5', '[\"*\"]', '2026-01-19 10:52:27', NULL, '2026-01-19 10:52:20', '2026-01-19 10:52:27'),
(115, 'App\\Models\\User', 2, 'seller-token', '975af23fb8cd48421ab9d9f7607529368af237e5d990788ae8b2049582dc1793', '[\"*\"]', NULL, NULL, '2026-01-19 10:57:10', '2026-01-19 10:57:10'),
(116, 'App\\Models\\User', 2, 'seller-token', 'e0754ebc2cc0800b3c6dc37339abd6f66f2dd83c6ffd9fb491af6d348ca30502', '[\"*\"]', '2026-01-19 10:57:28', NULL, '2026-01-19 10:57:10', '2026-01-19 10:57:28'),
(117, 'App\\Models\\User', 1, 'admin-token', '8e16b92f6683c810a8742f402c4ad229cd345fc5c7b62aebb2bc239fb32ac8e2', '[\"*\"]', '2026-01-19 10:59:09', NULL, '2026-01-19 10:57:40', '2026-01-19 10:59:09'),
(118, 'App\\Models\\User', 2, 'seller-token', 'c04306c1df830fc0a5752a3a2ef65c202ca6e410d47513086542d69ce0de998b', '[\"*\"]', NULL, NULL, '2026-01-19 11:03:59', '2026-01-19 11:03:59'),
(119, 'App\\Models\\User', 2, 'seller-token', 'dc185ae2b177437fbaee442c591a198837e89e12e9b5c926838fabc3203e6495', '[\"*\"]', '2026-01-19 11:04:14', NULL, '2026-01-19 11:03:59', '2026-01-19 11:04:14'),
(120, 'App\\Models\\User', 2, 'seller-token', 'e5015599957cf42a4232a7359da7b91843d90b084b9c3c51a3629637449430fd', '[\"*\"]', NULL, NULL, '2026-01-19 11:11:33', '2026-01-19 11:11:33'),
(121, 'App\\Models\\User', 2, 'seller-token', '5d6e1ecce8e60c0a43a8ca0b541f9a34c756df54a549c6bfd2c9e1ac998e67fb', '[\"*\"]', NULL, NULL, '2026-01-19 11:11:33', '2026-01-19 11:11:33'),
(122, 'App\\Models\\User', 2, 'seller-token', '914747098919c9d3dd80e3425b19bfc3f34c2e6a26e079457d5afb9e1983f518', '[\"*\"]', NULL, NULL, '2026-01-19 11:13:38', '2026-01-19 11:13:38'),
(123, 'App\\Models\\User', 2, 'seller-token', '38404f94da5ce448de41c6659bb3feacf0524dc80a97c7c54ac340d0a9523999', '[\"*\"]', NULL, NULL, '2026-01-19 11:13:38', '2026-01-19 11:13:38'),
(124, 'App\\Models\\User', 1, 'admin-token', '71c5834502edf01e0bc3d1b4f2069b2f5b05577f1b7aac8ee78244deef706b4d', '[\"*\"]', '2026-01-19 11:23:55', NULL, '2026-01-19 11:22:54', '2026-01-19 11:23:55'),
(125, 'App\\Models\\User', 2, 'seller-token', '404d184053a8987e7d67f5188bbab92afe31f2a7fc719cb4c63512061588612f', '[\"*\"]', NULL, NULL, '2026-01-19 11:24:14', '2026-01-19 11:24:14'),
(126, 'App\\Models\\User', 2, 'seller-token', '7eaad818c13eb47113e6052233e39f0d27c871854768266e9b7ed2a921ebaf5e', '[\"*\"]', '2026-01-19 11:24:40', NULL, '2026-01-19 11:24:14', '2026-01-19 11:24:40'),
(127, 'App\\Models\\User', 2, 'seller-token', '1639520fa501d2d4f46bd2a74f058b82d6999f97964f6a775fa86e48aa9a64e2', '[\"*\"]', NULL, NULL, '2026-01-19 11:32:21', '2026-01-19 11:32:21'),
(128, 'App\\Models\\User', 2, 'seller-token', 'a77704cd01dbcbc9f013b96203d02e1872987d58597bcba294b31f8e7162f1ee', '[\"*\"]', '2026-01-19 11:32:26', NULL, '2026-01-19 11:32:21', '2026-01-19 11:32:26'),
(129, 'App\\Models\\User', 1, 'admin-token', '4651675b77e26a12e7d721496484e7c67475a536e39d121318ceb610faf46775', '[\"*\"]', '2026-01-19 11:33:29', NULL, '2026-01-19 11:32:57', '2026-01-19 11:33:29'),
(130, 'App\\Models\\User', 2, 'seller-token', '513f80794bd87fdf1b207583c3bf7c3ecde3c748fdc1325c36c6c8e649eb689a', '[\"*\"]', NULL, NULL, '2026-01-19 11:44:56', '2026-01-19 11:44:56'),
(131, 'App\\Models\\User', 2, 'seller-token', 'f171d93dce84aad58a46578cb8959b9c3f4ea00094e222a2c52aaa26640b0f8d', '[\"*\"]', NULL, NULL, '2026-01-19 11:45:02', '2026-01-19 11:45:02'),
(132, 'App\\Models\\User', 1, 'admin-token', '43673292ca4fc01f0a11ed9ff26c696491a2d2fdc986b6eacb8a0a1d6c3a5aaf', '[\"*\"]', NULL, NULL, '2026-01-19 11:45:09', '2026-01-19 11:45:09'),
(133, 'App\\Models\\User', 1, 'admin-token', '6cfb23b79deb9af58a5291e36b9344f3e9e419800b8c5411e752ed35a294f3cf', '[\"*\"]', '2026-01-19 11:48:33', NULL, '2026-01-19 11:47:37', '2026-01-19 11:48:33'),
(134, 'App\\Models\\User', 2, 'seller-token', '77f74b0dc1f8f603c1447aab4154fe09301b1b92a8b7e883ce8e76d4e79063e7', '[\"*\"]', '2026-01-19 11:48:47', NULL, '2026-01-19 11:48:38', '2026-01-19 11:48:47'),
(135, 'App\\Models\\User', 2, 'seller-token', '1d2cf0f00ea8e410e2b4eb68c58f0b777520eaa10094348abedce9067b7292b0', '[\"*\"]', NULL, NULL, '2026-01-19 11:49:22', '2026-01-19 11:49:22'),
(136, 'App\\Models\\User', 2, 'seller-token', '2fc6c67d2eafa32a1f7350d3d3be47af879b40d6247d0750245c8f9591b357d0', '[\"*\"]', '2026-01-19 11:49:23', NULL, '2026-01-19 11:49:23', '2026-01-19 11:49:23'),
(137, 'App\\Models\\User', 1, 'admin-token', 'f22753a367fbb6e69889d95fb72dd3226802eb702ae731710a5e01b63a400f34', '[\"*\"]', '2026-01-19 11:49:38', NULL, '2026-01-19 11:49:33', '2026-01-19 11:49:38'),
(138, 'App\\Models\\User', 2, 'seller-token', 'a60c7b0e0b14babc98b3a5ff8cc80e31df3a4b71115207742dca30207cb868b2', '[\"*\"]', NULL, NULL, '2026-01-19 11:52:11', '2026-01-19 11:52:11'),
(139, 'App\\Models\\User', 2, 'seller-token', '77d4ae34021745edf4881fcda6538c0a31c777af3ee2d6f30791a248b2bddd7b', '[\"*\"]', '2026-01-19 11:52:37', NULL, '2026-01-19 11:52:11', '2026-01-19 11:52:37'),
(140, 'App\\Models\\User', 1, 'admin-token', 'a33bd6bb53ec71b5f1d2280389267618ad3c0ed7bc3bff04051dcb7763408339', '[\"*\"]', '2026-01-19 11:53:37', NULL, '2026-01-19 11:52:56', '2026-01-19 11:53:37'),
(141, 'App\\Models\\User', 1, 'admin-token', '3969b9f61e5345084e3651c42d5dcb33138bf762b5fb355de1c2d8cfd066546d', '[\"*\"]', '2026-01-19 11:54:25', NULL, '2026-01-19 11:54:21', '2026-01-19 11:54:25'),
(142, 'App\\Models\\User', 2, 'seller-token', '7c68997558c54809054d19284c7cf1003826444bb0b8c7a5631a8765b96427e5', '[\"*\"]', NULL, NULL, '2026-01-19 11:54:35', '2026-01-19 11:54:35'),
(143, 'App\\Models\\User', 2, 'seller-token', 'eacee9b08428122a940675a3c6ab014643cdc2970c9a15f35ea889387338eccd', '[\"*\"]', '2026-01-19 11:54:35', NULL, '2026-01-19 11:54:35', '2026-01-19 11:54:35'),
(144, 'App\\Models\\User', 2, 'seller-token', '64f45266cae8caa8fcb611bb41f0580d91f79e039c3cb47c9dfb78baf894be7c', '[\"*\"]', NULL, NULL, '2026-01-19 11:57:53', '2026-01-19 11:57:53'),
(145, 'App\\Models\\User', 2, 'seller-token', 'e7d552bb3bb8d684e03c7da867d071f9cf51cc74e1f586e4690bfeda8d4b71e6', '[\"*\"]', '2026-01-19 11:58:17', NULL, '2026-01-19 11:57:53', '2026-01-19 11:58:17'),
(146, 'App\\Models\\User', 1, 'admin-token', '285bf0c668e0897cfa008e8267aec96848e3e797f1c1e301a1b2a689452aeb45', '[\"*\"]', '2026-01-19 11:58:32', NULL, '2026-01-19 11:58:26', '2026-01-19 11:58:32');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `seller_id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(5, 2, 'Mouse', 'Test', '2026-01-19 05:26:08', '2026-01-19 05:26:08'),
(6, 2, 'hp', 'jn', '2026-01-19 11:52:30', '2026-01-19 11:52:30'),
(7, 2, 'dell', 'dgvtghy', '2026-01-19 11:58:11', '2026-01-19 11:58:11');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('8GZ0jednqxHozPe2TRu4NKkrVAgykHgktpnNqYR8', NULL, '127.0.0.1', 'PostmanRuntime/7.51.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMEk5WXc2bXpyelNwRWlReERoSHlKYndXWVN6VjdwSUdteGFDVDNHVyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768819682),
('N8xTTUKRPch7NmEBZoLUDzqfiiw48j1dTpUWN2rj', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUU1MbENGUG1HUzEwemk3c2ZBV1dVUlZuQnltYVZzYnI4dUpIbkpCSSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768807147);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `skills` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`skills`)),
  `role` enum('ADMIN','SELLER') NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `mobile`, `country`, `state`, `skills`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@test.com', NULL, '$2y$12$f0DMbi3M6i976KBcLKXSpey7kMDrBOd4mppm3DxORfbFvnZiJovBm', NULL, NULL, NULL, NULL, 'ADMIN', NULL, '2026-01-19 01:53:17', '2026-01-19 07:43:07'),
(2, 'Seller One', 'seller@test.com', NULL, '$2y$12$QCWnL.ZS5gNBS98/l1nM2ufeTsxbEjbhurPlg149CWHHxytJHvXbC', '9999999999', 'India', 'MH', '[\"PHP\",\"Laravel\"]', 'SELLER', NULL, '2026-01-19 03:16:21', '2026-01-19 07:43:07'),
(4, 'AMEY DEEPAK ZEND', 'amayzend@gmail.com', NULL, '$2y$12$hq5SlP1eqkteCtuguIF2X.Oh5pjUiJLhXkVheBkFBM9lA/sv0v6P.', '07770080330', NULL, NULL, '[\"php\"]', 'SELLER', NULL, '2026-01-19 11:53:36', '2026-01-19 11:53:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brands_product_id_foreign` (`product_id`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_seller_id_foreign` (`seller_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `brands`
--
ALTER TABLE `brands`
  ADD CONSTRAINT `brands_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

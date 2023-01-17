-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 17, 2023 at 11:25 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `passport`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0c3f8cfc499146f434084865c06d9c010cc6098801f374f39bfcd8f9c54d6884f445dbc63e2cf676', 3, 1, 'Token', '[]', 0, '2022-12-27 11:27:13', '2022-12-27 11:27:13', '2023-12-27 06:27:13'),
('0ff78b01f74cda2604b5805ae25b72c5f29d7ec831f5dfc9596d1ce6bebfcec95b42ad7064f4ecfb', 1, 1, 'Token', '[]', 0, '2023-01-03 11:29:35', '2023-01-03 11:29:35', '2024-01-03 06:29:35'),
('18696b5318af95a96f01392a5f1adec5e397cf07fe268f730273d15fed3183169c6a7e8eecc921e7', 4, 1, 'Token', '[]', 0, '2022-12-27 11:31:09', '2022-12-27 11:31:09', '2023-12-27 06:31:09'),
('29b91a400a57cbccf67abc886d8293aedcea7b4dab81e92703043d93bc7f4ee993160b721e10e9d1', 8, 1, 'Token', '[]', 0, '2022-12-27 11:34:18', '2022-12-27 11:34:18', '2023-12-27 06:34:18'),
('389b578eafd71fe67e86c711b9d754c9c93060b7307ed38cd9257d4e50915fcffdf6c107a086c221', 10, 1, 'Token', '[]', 0, '2022-12-27 11:44:33', '2022-12-27 11:44:33', '2023-12-27 06:44:33'),
('628591ad2b44d3579034f3add7640a6fde444555ab58314e02ec8403749f7f8be90500686438f686', 6, 1, 'Token', '[]', 0, '2022-12-27 11:32:04', '2022-12-27 11:32:04', '2023-12-27 06:32:04'),
('75c457b0549b917f0779277f631de0dbb3a530e102235f7364d7b0644c2c0a9eae451c76470fb5ec', 10, 1, 'Token', '[]', 0, '2022-12-27 11:42:31', '2022-12-27 11:42:31', '2023-12-27 06:42:31'),
('8a5f68526aed9bde882e1ab27664bc1d372f433af77213d2c10eb20f3ad9eedee3e49c22f85660a6', 8, 1, 'Token', '[]', 0, '2022-12-27 11:38:02', '2022-12-27 11:38:02', '2023-12-27 06:38:02'),
('8c0983cca10b494961a95c61f948a7a222e90d2638daef199f029f85b78654194beba8070a01ef2b', 10, 1, 'Token', '[]', 0, '2022-12-27 11:37:45', '2022-12-27 11:37:45', '2023-12-27 06:37:45'),
('93499ee6116e9a4b90d912712a8f1b74a2ff058c932e0366efb6a9adb0017dd97d17cac7f0fae679', 10, 1, 'Token', '[]', 0, '2022-12-27 11:43:23', '2022-12-27 11:43:23', '2023-12-27 06:43:23'),
('a010413ee41613d8e52ff368df85f3ff39d4ee578eddf7aa0da6f424c602735d3f79bb8d0e74b9c2', 10, 1, 'Token', '[]', 0, '2022-12-27 11:55:09', '2022-12-27 11:55:09', '2023-12-27 06:55:09'),
('a0555b748975c081116bec33afb072a618af07a85aa313c9ccd34d6c80a7f771f68586e807f18eca', 3, 1, 'Token', '[]', 0, '2023-01-03 11:27:36', '2023-01-03 11:27:36', '2024-01-03 06:27:36'),
('b4f3ae72bb719f1f229c9e6d8cc7a08199e4853937f45b1871fb0f063b2d018a056074b689c158a5', 10, 1, 'Token', '[]', 0, '2022-12-27 11:35:17', '2022-12-27 11:35:17', '2023-12-27 06:35:17'),
('bd526aeff4f2f27c2e160802ff1c688bfb827cebebbffa45915c51c282e2ab3e49ddd6e078f2d708', 11, 1, 'Token', '[]', 0, '2022-12-27 11:51:49', '2022-12-27 11:51:49', '2023-12-27 06:51:49'),
('ca8eb287af1201adbd41968e0168f8793ae382ad3620becfd18222ffafdd7cd04577a0201b76c1cf', 1, 1, 'Token', '[]', 0, '2022-12-27 12:04:36', '2022-12-27 12:04:36', '2023-12-27 07:04:36'),
('cfb8326c2ce70307624b555c040be652e84611b530474e9ade108a9cbd7f5474de4b9f5f94126b35', 2, 1, 'Token', '[]', 0, '2022-12-27 12:07:00', '2022-12-27 12:07:00', '2023-12-27 07:07:00'),
('d013fca5b34413e452c23ce0703da9284b13cf118a4fca3069ceb64716c971cb022ac89b6321ae8e', 2, 1, 'Token', '[]', 0, '2022-12-27 12:05:13', '2022-12-27 12:05:13', '2023-12-27 07:05:13'),
('e27818b6a5c1a05532292ac0c1ca43b407f3f0979b55dbd64b72d1dd140a11cd18ebe5ed24d61ccf', 5, 1, 'Token', '[]', 0, '2023-01-03 11:48:28', '2023-01-03 11:48:28', '2024-01-03 06:48:28'),
('e300b3c27ee35c16116095e00cfa913697d1bf26d1bdc60b2dc27554a5fcfdea8dc62f3b78e74160', 7, 1, 'Token', '[]', 0, '2022-12-27 11:33:02', '2022-12-27 11:33:02', '2023-12-27 06:33:02'),
('e77839ac2a5b2687069d9287cc64882ac971062c2b9c2e66a60bca3fa01183c85f93fb89a36cb7c4', 5, 1, 'Token', '[]', 0, '2023-01-03 11:47:49', '2023-01-03 11:47:49', '2024-01-03 06:47:49'),
('ed0c072281d00b753ab178f90627d671bcb159f816cfca071239a7c2a6afa5f6f10e37e8fe7f2571', 11, 1, 'Token', '[]', 0, '2022-12-27 11:55:31', '2022-12-27 11:55:31', '2023-12-27 06:55:31');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'a2bHuOBnbBByAGPskhkADRGyLIDic5ZYzNza5BlO', NULL, 'http://localhost', 1, 0, 0, '2022-12-27 11:13:31', '2022-12-27 11:13:31'),
(2, NULL, 'Laravel Password Grant Client', 'TCf7nssIxHqxp7g7F3iaYZMxwOZaYdqyGspFgaeU', 'users', 'http://localhost', 0, 1, 0, '2022-12-27 11:13:31', '2022-12-27 11:13:31');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-12-27 11:13:31', '2022-12-27 11:13:31');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
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
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'roshni', 'roshni@gmail.com', NULL, '$2y$10$0lm0EK0RK9Ccsy7KRMmtjOFsHSLjmAgxz9Y1R7XiUN5GXs5MN1GDC', NULL, '2022-12-27 12:04:36', '2022-12-27 12:04:36'),
(2, 'roshni', 'roshni26@gmail.com', NULL, '$2y$10$qqd.0eHQ1rdw4RHXLCPw6usrYJQqu6t5IUTJjiKvf3GJadD2AvgK6', NULL, '2022-12-27 12:05:13', '2022-12-27 12:05:13'),
(3, 'kavita', 'kavita@gmail.com', NULL, '$2y$10$LQIK2KUJuWzYDkCs1uLBJuGrD18zSDu8iy1IeRXSfHNCF810MlOWe', NULL, '2023-01-03 11:27:36', '2023-01-03 11:27:36'),
(5, 'kavita', 'kavita123@gmail.com', NULL, '$2y$10$TQTnqljbEQPJFPIL78mx/ONNjCjCsV.kwsK1Xzt2AOV2n1YRHEOGS', NULL, '2023-01-03 11:47:49', '2023-01-03 11:47:49');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

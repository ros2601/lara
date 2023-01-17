-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 17, 2023 at 10:31 AM
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
-- Database: `laravel_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(255) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `comment`, `post_id`, `user_id`, `user`, `created_at`, `updated_at`) VALUES
(1, 'good', 2, 2, 'Gopal', '2023-01-16 04:04:49', '2023-01-16 04:04:49'),
(2, 'good product', 2, 3, 'Smriti', '2023-01-16 04:34:56', '2023-01-16 04:34:56'),
(3, 'Great phone', 3, 2, 'Gopal', '2023-01-17 00:04:29', '2023-01-17 00:04:29'),
(4, 'Best quality phone ....have seen ever', 3, 3, 'Smriti', '2023-01-17 00:05:25', '2023-01-17 00:05:25'),
(5, 'I m in love with this phone', 4, 3, 'Smriti', '2023-01-17 00:06:29', '2023-01-17 00:06:29'),
(6, 'wow', 4, 7, 'Chahat', '2023-01-17 01:06:43', '2023-01-17 01:06:43'),
(7, 'great product', 4, 7, 'Chahat', '2023-01-17 01:07:58', '2023-01-17 01:07:58');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `message`) VALUES
(1, 'Roshni', 'roshnisahni26@gmail.com', 'good blogs'),
(2, 'Gopal', 'gopal@gmail.com', 'Need improvements'),
(3, 'Priya', 'priya@gmail.com', 'good blogs');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_12_083609_create_photos_table', 1),
(6, '2023_01_16_093031_comment', 2);

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
-- Table structure for table `upload`
--

CREATE TABLE `upload` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `postedby` varchar(255) NOT NULL,
  `postedon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `upload`
--

INSERT INTO `upload` (`id`, `title`, `content`, `image`, `postedby`, `postedon`) VALUES
(1, 'Oppo F3', 'The OPPO F3 smartphone is priced at Rs. 17,000 in India. On May 13, 2017, it was officially released in India. The phone comes with 4GB of RAM and 64GB of internal storage.', '1673932287.PNG', 'Gopal', '2023-01-17 05:11:07'),
(2, 'Oppo F3', 'The OPPO F3 smartphone is priced at Rs. 17,000 in India. On May 13, 2017, it was officially released in India. The phone comes with 4GB of RAM and 64GB of internal storage.', '1673932319.PNG', 'Gopal', '2023-01-17 05:11:07'),
(3, 'Samsung Galaxy S22 Ultra 5G 2022', 'Image result for samsung s22 ultra price in india 2022 Samsung Galaxy S22 Ultra 5G price in India starts from ₹99,690. It is available at lowest price on Amazon in India as on Dec 22, 2022. Take a look at Samsung Galaxy S22 Ultra 5G detailed specifications and features.', '1673933655.PNG', 'Gopal', '2023-01-17 05:33:22'),
(4, 'Oppo Phone F1', 'OPPO F1 price in India starts from ₹15,719. It was available at lowest price on Flipkart in India as on Dec 22, 2022. Take a look at OPPO F1 detailed specifications and features.', '1673933767.PNG', 'Smriti', '2023-01-17 05:35:39'),
(5, 'Lovely Nature', '\'Nature\' is what we see—\r\nThe Hill—the Afternoon—\r\nSquirrel—Eclipse—the Bumble bee—\r\nNay—Nature is Heaven—\r\nNature is what we hear—\r\nThe Bobolink—the Sea—\r\nThunder—the Cricket—\r\nNay—Nature is Harmony—\r\nNature is what we know—\r\nYet have no art to say—\r\nSo impotent Our Wisdom is\r\nTo her Simplicity.', '1673937006.png', 'Chahat', '2023-01-17 06:19:42');

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
(2, 'Gopal', 'gopal@gmail.com', NULL, '$2y$10$sC07a8HzucLORn32zliKUeVkqRb7Rm27pI6MQ3InyHZ9lKHq44SR2', NULL, '2023-01-16 02:13:34', '2023-01-16 02:13:34'),
(3, 'Smriti', 'smriti@gmail.com', NULL, '$2y$10$FjoPZhg/0VUK0ckxHF.0VO7.hqUiLIDnQO2DjWNUzwcF4oF6s/f22', NULL, '2023-01-16 04:32:58', '2023-01-16 04:32:58'),
(6, 'Prince', 'prince@gmail.com', NULL, '$2y$10$VjmKd1eeFWt5kCsPHjVWYeBYjTitESBv8ZCeSCiCZwtROFFUeZ9XW', NULL, '2023-01-17 00:46:04', '2023-01-17 00:46:04'),
(7, 'Chahat', 'chahat@gmail.com', NULL, '$2y$10$GOwOxq3.4TH/OX/YMx31o.hbFd5Qr8UXXErESb6WS.5deQr2.VPKq', NULL, '2023-01-17 00:49:31', '2023-01-17 00:49:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_user_id_foreign` (`user_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upload`
--
ALTER TABLE `upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

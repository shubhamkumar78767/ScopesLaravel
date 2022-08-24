-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2022 at 03:04 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scopes`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'necessitatibus', '2022-08-23 01:42:51', '2022-08-23 01:42:51'),
(2, 'molestiae', '2022-08-23 01:42:51', '2022-08-23 01:42:51'),
(3, 'vitae', '2022-08-23 01:42:51', '2022-08-23 01:42:51'),
(4, 'tempore', '2022-08-23 01:42:51', '2022-08-23 01:42:51'),
(5, 'dolores', '2022-08-23 01:42:51', '2022-08-23 01:42:51');

-- --------------------------------------------------------

--
-- Table structure for table `category_post`
--

CREATE TABLE `category_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_post`
--

INSERT INTO `category_post` (`id`, `category_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 5, 1, NULL, NULL),
(2, 4, 2, NULL, NULL),
(3, 2, 3, NULL, NULL),
(4, 4, 4, NULL, NULL),
(5, 1, 5, NULL, NULL),
(6, 5, 6, NULL, NULL),
(7, 5, 7, NULL, NULL),
(8, 2, 8, NULL, NULL),
(9, 5, 9, NULL, NULL),
(10, 1, 10, NULL, NULL),
(11, 5, 11, NULL, NULL),
(12, 1, 12, NULL, NULL),
(13, 3, 13, NULL, NULL),
(14, 3, 14, NULL, NULL),
(15, 4, 15, NULL, NULL),
(16, 4, 16, NULL, NULL),
(17, 3, 17, NULL, NULL),
(18, 4, 18, NULL, NULL),
(19, 2, 19, NULL, NULL),
(20, 1, 20, NULL, NULL),
(21, 3, 21, NULL, NULL),
(22, 4, 22, NULL, NULL),
(23, 1, 23, NULL, NULL),
(24, 5, 24, NULL, NULL),
(25, 4, 25, NULL, NULL),
(26, 2, 26, NULL, NULL),
(27, 4, 27, NULL, NULL),
(28, 3, 28, NULL, NULL),
(29, 2, 29, NULL, NULL),
(30, 4, 30, NULL, NULL);

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_08_23_064731_create_posts_table', 1),
(6, '2022_08_23_064939_create_categories_table', 1),
(7, '2022_08_23_065237_create_category_post_table', 1);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Alexis Hansen', 'Enim quia odio omnis aperiam excepturi exercitationem. Quae repellendus nostrum dolor quaerat molestias voluptatem. Totam nihil ut aut quaerat.', 1, 1, '2022-08-23 01:42:50', '2022-08-23 01:42:50'),
(2, 'Jevon Torp', 'Nesciunt saepe sed sed distinctio et. Quod qui ex quos totam sunt iusto nobis tempore. In alias id exercitationem quas placeat sed.', 1, 0, '2022-08-23 01:42:50', '2022-08-23 01:42:50'),
(3, 'Newton Schoen', 'Est doloremque possimus tempore. Laborum sit rerum et molestiae tenetur nihil possimus.', 1, 1, '2022-08-23 01:42:50', '2022-08-23 01:42:50'),
(4, 'Wiley Keeling', 'Harum libero deserunt hic. Aut et qui doloremque quia deserunt.', 3, 1, '2022-08-23 01:42:50', '2022-08-23 01:42:50'),
(5, 'Prof. Creola Bradtke', 'Deleniti nostrum at occaecati et. Praesentium aliquam cum quis id. Laboriosam magnam delectus nesciunt aut.', 1, 1, '2022-08-23 01:42:50', '2022-08-23 01:42:50'),
(6, 'Matilda Becker', 'Error eveniet temporibus numquam tenetur consequatur accusamus sint. Exercitationem explicabo aperiam neque.', 3, 0, '2022-08-23 01:42:50', '2022-08-23 01:42:50'),
(7, 'Doyle Schroeder MD', 'Et voluptatem amet aut voluptatem cumque corrupti quo. Fugiat labore sed aut totam eaque neque aliquam. Molestiae voluptates porro fuga quisquam eveniet.', 3, 0, '2022-08-23 01:42:50', '2022-08-23 01:42:50'),
(8, 'Lou Mitchell', 'Voluptatem sed rem dolor odit. Voluptates voluptatum perspiciatis nemo et consequuntur. Consectetur in voluptas nobis ducimus alias corrupti.', 2, 1, '2022-08-23 01:42:50', '2022-08-23 01:42:50'),
(9, 'Delilah Ankunding', 'Ut nulla quia dolores fugiat. Quis sunt animi officia asperiores. Eligendi perspiciatis libero nihil veniam et quo.', 2, 1, '2022-08-23 01:42:50', '2022-08-23 01:42:50'),
(10, 'Prof. Ned Wunsch MD', 'Quasi quidem nisi ratione facere. In ipsa ipsum laborum quis nisi blanditiis nostrum.', 2, 1, '2022-08-23 01:42:51', '2022-08-23 01:42:51'),
(11, 'Willis Bogisich', 'Voluptas possimus ipsum quaerat assumenda. Earum reiciendis voluptate earum temporibus ipsa architecto vel aut. Iure possimus quas dolorem ullam fugit odio voluptas.', 3, 1, '2022-08-23 01:42:51', '2022-08-23 01:42:51'),
(12, 'Forest Gusikowski', 'Alias consequatur exercitationem voluptatem neque quidem officiis aliquid. Nobis exercitationem soluta debitis rerum quo ut voluptates.', 3, 1, '2022-08-23 01:42:51', '2022-08-23 01:42:51'),
(13, 'Willa Jacobson II', 'Quis minima in ut numquam temporibus. Quia vel harum minima perferendis adipisci et. Eaque accusantium ipsum laboriosam et hic adipisci vel.', 3, 0, '2022-08-23 01:42:51', '2022-08-23 01:42:51'),
(14, 'Guadalupe Cremin', 'Exercitationem ipsa vero corporis sequi. Perferendis voluptas nihil neque necessitatibus assumenda magnam voluptatibus.', 1, 0, '2022-08-23 01:42:51', '2022-08-23 01:42:51'),
(15, 'Rowland Kihn', 'Laborum ut sed et. Ut facere est expedita voluptas aut ullam aut. Repudiandae omnis et voluptatibus expedita.', 1, 1, '2022-08-23 01:42:51', '2022-08-23 01:42:51'),
(16, 'Mr. Joshua Rath Sr.', 'Rerum maiores porro dignissimos perspiciatis eaque dolores. Nisi ea perspiciatis eos est voluptatem vel. Nobis sunt porro hic ea.', 3, 1, '2022-08-23 01:42:51', '2022-08-23 01:42:51'),
(17, 'Mrs. Verna Olson', 'Magnam vel dignissimos et aspernatur quisquam animi. Natus facere eius enim est.', 2, 0, '2022-08-23 01:42:51', '2022-08-23 01:42:51'),
(18, 'Dr. Ara Boyer', 'Voluptatum quod ut placeat temporibus rerum accusantium perspiciatis. Sit qui ipsum quia repellat corporis illo. Illum asperiores error ex cumque est est sit qui.', 1, 1, '2022-08-23 01:42:51', '2022-08-23 01:42:51'),
(19, 'Ubaldo Johnson', 'Dicta id debitis impedit sint facere excepturi ad laboriosam. Minus consequatur alias et libero perferendis. Recusandae et iste possimus.', 1, 0, '2022-08-23 01:42:51', '2022-08-23 01:42:51'),
(20, 'Prof. Matilde Pouros', 'Eius a aut vitae est aspernatur id. Sapiente voluptatum blanditiis sapiente quia.', 2, 0, '2022-08-23 01:42:51', '2022-08-23 01:42:51'),
(21, 'Nova Schimmel', 'Et laborum possimus quasi recusandae dolorem. Autem quidem laboriosam commodi magnam.', 3, 1, '2022-08-23 01:42:51', '2022-08-23 01:42:51'),
(22, 'Jade Tromp', 'Reiciendis qui commodi deleniti nam aut ipsa aperiam. Accusamus numquam et consequuntur est autem consequatur occaecati rerum.', 1, 0, '2022-08-23 01:42:51', '2022-08-23 01:42:51'),
(23, 'Ms. Gabrielle Muller', 'Nihil est natus quibusdam non eaque. Tenetur perspiciatis aut sit veniam. Voluptatem debitis eaque quibusdam.', 1, 0, '2022-08-23 01:42:51', '2022-08-23 01:42:51'),
(24, 'Annalise Keebler', 'Quis rerum aut consequatur et inventore sed. Eos ut reprehenderit nam temporibus enim asperiores. Reiciendis quasi fuga cum consequatur sunt.', 2, 1, '2022-08-23 01:42:51', '2022-08-23 01:42:51'),
(25, 'Reid Ortiz PhD', 'Tempora eius doloremque officia et. Error sapiente velit nam velit est sed.', 3, 1, '2022-08-23 01:42:51', '2022-08-23 01:42:51'),
(26, 'Elfrieda Mayer', 'Occaecati ducimus itaque consequatur eum facilis temporibus. Sequi ipsam atque rerum error id autem placeat.', 3, 1, '2022-08-23 01:42:51', '2022-08-23 01:42:51'),
(27, 'Adriana Wisozk', 'Nihil at iste impedit maiores possimus voluptatem. Error inventore sunt illo laborum qui.', 3, 1, '2022-08-23 01:42:51', '2022-08-23 01:42:51'),
(28, 'Jillian Jacobs', 'In et facere quisquam. Ad laudantium deserunt sit et ipsum. Quisquam reprehenderit voluptate qui ut quia ut.', 3, 0, '2022-08-23 01:42:51', '2022-08-23 01:42:51'),
(29, 'Kavon Friesen', 'Et quidem non quidem nostrum quod non. Iure quia soluta voluptatem et. Ratione doloremque et molestiae aut ipsam illum.', 1, 0, '2022-08-23 01:42:51', '2022-08-23 01:42:51'),
(30, 'Prof. Johnnie Nikolaus DVM', 'Facere et quia delectus dolor tenetur mollitia. In omnis quo sapiente.', 2, 1, '2022-08-23 01:42:51', '2022-08-23 01:42:51');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Irving Langworth', 'koch.ted@example.org', '2022-08-23 01:42:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vu26JIRkT0', '2022-08-23 01:42:50', '2022-08-23 01:42:50'),
(2, 'Samson Marks III', 'pearlie08@example.net', '2022-08-23 01:42:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'knlZZWp2fc', '2022-08-23 01:42:50', '2022-08-23 01:42:50'),
(3, 'Tod Tremblay', 'kaley66@example.net', '2022-08-23 01:42:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1csHoGmy7g', '2022-08-23 01:42:50', '2022-08-23 01:42:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_post`
--
ALTER TABLE `category_post`
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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category_post`
--
ALTER TABLE `category_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

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
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

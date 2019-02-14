-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2019 at 05:44 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vuejsblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_name`, `created_at`, `updated_at`) VALUES
(1, 'Liam Hettinger IIIQWWW', '2018-12-30 03:26:49', '2019-01-05 10:03:36'),
(2, 'Mrs. Meggie Kohler I', '2018-12-30 03:26:49', '2018-12-30 03:26:49'),
(3, 'Mr. Damion Homenick PhD', '2018-12-30 03:26:49', '2018-12-30 03:26:49'),
(4, 'Rick Collier', '2018-12-30 03:26:49', '2018-12-30 03:26:49'),
(5, 'London Cummings', '2018-12-30 03:26:49', '2018-12-30 03:26:49'),
(6, 'Clint McLaughlin V', '2018-12-30 03:26:49', '2018-12-30 03:26:49'),
(7, 'Mr. Ahmed Hodkiewicz', '2018-12-30 03:26:49', '2018-12-30 03:26:49'),
(8, 'Diamond Friesen', '2018-12-30 03:26:49', '2018-12-30 03:26:49'),
(9, 'Gustave Bogisich', '2018-12-30 03:26:49', '2018-12-30 03:26:49'),
(10, 'Kaleigh Gusikowski', '2018-12-30 03:26:49', '2018-12-30 03:26:49'),
(12, 'categoryOne', '2019-01-02 23:35:47', '2019-01-02 23:35:47'),
(15, 'categoryTwo', '2019-01-02 23:40:04', '2019-01-02 23:40:04'),
(16, 'weewr22', '2019-01-05 09:49:52', '2019-01-05 10:01:56'),
(23, 'vhgghPRTT', '2019-01-11 00:25:12', '2019-01-11 02:54:56');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_12_30_090249_create_categories_table', 2),
(4, '2018_12_30_090343_create_posts_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `comment_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `photo` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `cat_id`, `user_id`, `comment_id`, `title`, `description`, `photo`, `created_at`, `updated_at`) VALUES
(1, 6, 9, 9, 'Consequatur itaque incidunt sunt facere.', 'Corrupti qui ad minus omnis repellendus. Enim fugit quia est eum sunt. Alias corporis molestiae harum occaecati perspiciatis. Et voluptates voluptas fugit voluptas.', 'https://lorempixel.com/640/480/?28565', '2018-12-30 03:26:48', '2018-12-30 03:26:48'),
(2, 4, 2, 5, 'Qui asperiores quod dolores et voluptas.', 'Enim earum rerum eos alias numquam nulla. Deleniti hic cumque quis totam. Modi temporibus quia expedita qui reiciendis voluptate id at.', 'https://lorempixel.com/640/480/?16906', '2018-12-30 03:26:48', '2018-12-30 03:26:48'),
(3, 1, 2, 2, 'Culpa maxime quam provident rerum iste.', 'Dolores velit est inventore fugit. Consequatur et quis voluptas qui quis. Ea debitis autem perspiciatis voluptatibus optio vero. Molestiae cum molestiae sit perspiciatis.', 'https://lorempixel.com/640/480/?91508', '2018-12-30 03:26:48', '2018-12-30 03:26:48'),
(4, 10, 1, 7, 'Vel non deserunt ut exercitationem illum.', 'Cumque magnam ullam sit minima odit voluptas laudantium. Quis expedita sit soluta omnis sed. Eum quia quia qui et est rerum ipsum.', 'https://lorempixel.com/640/480/?34623', '2018-12-30 03:26:49', '2018-12-30 03:26:49'),
(5, 7, 10, 1, 'Distinctio aut optio non eos fugit delectus distinctio.', 'Asperiores corrupti sapiente officia nulla sint ad distinctio. Rem optio aut enim qui quod dignissimos aspernatur. Mollitia voluptas veritatis distinctio odio in nostrum.', 'https://lorempixel.com/640/480/?49782', '2018-12-30 03:26:49', '2018-12-30 03:26:49'),
(6, 3, 7, 4, 'Mollitia in eum dolor qui.', 'Inventore voluptatum repellendus est quas et ducimus. Incidunt sapiente accusamus quis reiciendis alias quidem. Voluptatem et nisi et voluptatem et velit. Sit odio est mollitia minus.', 'https://lorempixel.com/640/480/?75409', '2018-12-30 03:26:49', '2018-12-30 03:26:49'),
(7, 4, 6, 6, 'Et occaecati adipisci odit quis.', 'Animi voluptatum vitae laudantium in dolores voluptas consequatur rerum. Eum in dignissimos nemo eum. Est ut aut magni est expedita repellat quasi.', 'https://lorempixel.com/640/480/?96077', '2018-12-30 03:26:49', '2018-12-30 03:26:49'),
(8, 8, 4, 8, 'Molestiae voluptatem beatae cum sit et.', 'Odit distinctio dicta magni magni consequatur consectetur. Explicabo voluptatem sit omnis sed sed est. Porro dolorem molestiae adipisci optio. Eius mollitia voluptas et voluptas ut magnam enim.', 'https://lorempixel.com/640/480/?32174', '2018-12-30 03:26:49', '2018-12-30 03:26:49'),
(9, 2, 10, 5, 'Earum nemo eum aliquid accusantium.', 'Eligendi unde et in soluta dolorem labore tempore. Non et ratione deserunt nihil sit. Autem vero totam nesciunt vitae ut.', 'https://lorempixel.com/640/480/?92713', '2018-12-30 03:26:49', '2018-12-30 03:26:49'),
(10, 7, 8, 5, 'Aperiam et recusandae excepturi accusamus qui eius quis.', 'Vel amet possimus et qui quam. Fugit qui repudiandae odio. Possimus labore facere quia et dicta.', 'https://lorempixel.com/640/480/?13058', '2018-12-30 03:26:49', '2018-12-30 03:26:49'),
(11, 4, 0, 0, 'postOne', '"**This is description**', NULL, '2019-01-05 12:26:08', '2019-01-05 12:26:08'),
(12, 5, 1, 0, 'postTwo', 'dsnkjfkdvfdmfgfkjh fmdjgjtl gr,jgtjyh', NULL, '2019-01-05 12:30:53', '2019-01-05 12:30:53'),
(13, 8, 1, 0, 'post FGH', 'ths didd d dh dbdh mdd', '1546871659.jpeg', '2019-01-07 08:34:21', '2019-01-07 08:34:21'),
(14, 6, 1, 0, 'post RR222', 'sdhkjf sfhsjkdhf mdfhj dfhdkjhg mdnfdhk\ndfjfjjkfjg mf nfgbkf2222', '1546879376.jpeg', '2019-01-07 10:13:00', '2019-01-07 10:42:56'),
(15, 23, 1, 0, 'postOne', 'sjhjdh sdjdhsr er\ndshre dfjerh mfjfrehj', '1547198313.jpeg', '2019-01-11 03:18:34', '2019-01-11 03:18:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'nizam', 'nizam@gmail.com', '$2y$10$JbEkfIYUBJ8hMyeEClbWAucSAWzOqEeLfqh7U7DXTf8ATIaXg/wuG', '5WWR2ybVrqrdDuccDvesdJ5rNfWbHcs0EYNIglMPWPFNWndELT43jksRSLm6', '2018-12-29 22:09:50', '2018-12-29 22:09:50'),
(2, 'Zachariah Ullrich', 'lang.jamie@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'M5wjIFgSNU', '2018-12-30 03:26:49', '2018-12-30 03:26:49'),
(3, 'Aracely Mayer DVM', 'kailey.welch@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Ypaz2mNuL4', '2018-12-30 03:26:49', '2018-12-30 03:26:49'),
(4, 'Hyman Smith', 'dturner@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'HXYXgfbsZ7', '2018-12-30 03:26:49', '2018-12-30 03:26:49'),
(5, 'Mr. Stan Kozey', 'quitzon.maximilian@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '4lxNySjf6T', '2018-12-30 03:26:50', '2018-12-30 03:26:50'),
(6, 'Corene Cole', 'balistreri.kiera@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'jZFKQPoydK', '2018-12-30 03:26:50', '2018-12-30 03:26:50'),
(7, 'Johnnie Blanda', 'morissette.ronaldo@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'PpeV8K27ff', '2018-12-30 03:26:50', '2018-12-30 03:26:50'),
(8, 'Fern Beatty', 'bernhard44@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'EAlvcDTGyC', '2018-12-30 03:26:50', '2018-12-30 03:26:50'),
(9, 'Kariane Conn', 'lysanne.kuhic@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'rL6S4VDv3e', '2018-12-30 03:26:50', '2018-12-30 03:26:50'),
(10, 'Gaylord Nikolaus', 'lamar46@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'pFaSaIswHD', '2018-12-30 03:26:50', '2018-12-30 03:26:50'),
(11, 'Trever Hirthe', 'ashtyn99@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'hUORHcgNY0', '2018-12-30 03:26:50', '2018-12-30 03:26:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

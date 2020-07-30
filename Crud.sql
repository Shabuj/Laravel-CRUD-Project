-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2020 at 05:00 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `street` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `street`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Bangla Clinik', 1, '2018-10-16 18:00:00', '2018-10-25 18:00:00'),
(2, 'Rajapur', 2, '2018-10-26 18:00:00', '2018-10-05 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `catagories`
--

CREATE TABLE `catagories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catagories`
--

INSERT INTO `catagories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Java', '2018-10-02 18:00:00', '2018-10-29 18:00:00'),
(2, 'Php', '2018-10-05 18:00:00', '2018-10-25 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 'public/images/WnJSQ5FdxyNlU1W4ARhNcldO9jkHzGKJcCUfWzZo.jpeg', 3, '2018-10-08 23:05:07', '2018-10-08 23:05:07'),
(2, 'public/images/7x0dbYfwMpWI4MWWUQBu4VLgarlZkLohBvbq7jdh.jpeg', 1, '2018-10-08 23:08:02', '2018-10-08 23:08:02'),
(3, 'public/images/S1kr9LGDT8k01U4pvLjY9ECxi5Pr1hjYe1KbbsXa.jpeg', 6, '2020-04-18 08:13:13', '2020-04-18 08:13:13');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2018_09_18_193254_create_students_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 2),
(6, '2014_10_12_000000_create_users_table', 3),
(7, '2018_10_02_095831_create_posts_table', 4),
(10, '2018_10_02_101800_create_addresses_table', 6),
(11, '2018_10_02_101013_create_catagories_table', 7),
(12, '2018_10_09_045656_create_images_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('shabujpust@gmail.com', '$2y$10$nIIxaax3d13ETZ/hzOZk6e24Xhz6HkErADO2DYEeZTPdgcwf3AjBi', '2018-10-12 04:25:55');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `catagory_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `user_id`, `catagory_id`, `created_at`, `updated_at`) VALUES
(1, 'Java programming', 'java is the best language right now ..in this world', 1, '1', '2018-10-12 18:00:00', '2018-10-24 18:00:00'),
(2, 'Php', 'java is the best language right now ..in this world', 2, '2', '2018-10-30 18:00:00', '2018-10-17 18:00:00'),
(3, 'sports', 'Football is our Favourite game in Bangladesh . in Bangladesh many people are greatly want to play football . also cricket is our national game.', 1, '1', '2018-10-01 18:00:00', '2018-10-18 18:00:00'),
(4, 'C++', 'c plus plus is a programming Language', 2, '2', '2018-10-23 18:00:00', '2018-10-02 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `registration_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dept` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `registration_id`, `name`, `dept`, `info`, `created_at`, `updated_at`) VALUES
(2, 1, 'Mehedy', 'EEE', 'laravel developer.', '2018-09-19 19:25:06', '2018-09-22 14:45:42'),
(3, 15011, 'Shuvo ha', 'CSE', 'Good Student ever.', '2018-09-22 12:34:53', '2018-09-23 01:36:50'),
(4, 44, 'Ahmed', 'CSE', 'loving', '2018-09-22 12:39:56', '2018-09-22 14:46:14'),
(5, 111, 'Md Shabuj Hossain', 'EEE', 'sonar bangla', '2018-09-23 01:09:13', '2018-09-23 01:09:13'),
(6, 3, 'dd', 'CSE', NULL, '2018-09-23 01:32:26', '2018-09-23 01:32:26'),
(7, 1278192, 'adasssd', 'aaa fdd', 'ad', '2018-09-27 13:59:55', '2018-09-27 13:59:55'),
(8, 3, 'Md Shabuj Hossain', 'EEE', 'wdff', '2018-10-05 12:16:28', '2018-10-05 12:16:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0=Female|1=male',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `firstname`, `lastname`, `username`, `gender`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Md. Shabuj Hossain', 'Md. Shabuj', 'Hossain', 'md-shabuj-hossain', 1, 'shabujpust@gmail.com', NULL, '$2y$10$wFbjfgEmoDYMp6bJbW1X.O6CwBsLzE9HcPtcbSzSJv1NwgZ7Ol2t6', 'jQ6W93BD4sFI8TYcI7LlquhiqNxQr30q4ra6E4zIfjCb1qQjrVndCETLCsGS', '2018-09-30 13:31:14', '2018-09-30 13:31:14'),
(2, 'Naymur Rahman Nayan', 'Naymur Rahman', 'Nayan', 'naymur-rahman-nayan', 1, 'nayan@gmail.com', NULL, '$2y$10$cnEZCKjmILZ7v2HfU10.jeADn1ImZ7O./fHbj3A5jUDy.e.QJG1gW', 'bDC5Luq5doswqbYKC3Hg37To7G3YVAC7DXEonE2cLmyoPpQifUSyupRHq5Lh', '2018-10-02 05:13:28', '2018-10-02 05:13:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catagories`
--
ALTER TABLE `catagories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
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
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `catagories`
--
ALTER TABLE `catagories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 06 أبريل 2025 الساعة 11:35
-- إصدار الخادم: 10.4.32-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hopeui`
--

-- --------------------------------------------------------

--
-- بنية الجدول `failed_jobs`
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
-- بنية الجدول `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `collection_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `disk` varchar(255) NOT NULL,
  `conversions_disk` varchar(255) DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generated_conversions`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_09_064224_create_user_profiles_table', 1),
(6, '2021_11_11_110731_create_permission_tables', 1),
(7, '2021_11_16_114009_create_media_table', 1);

-- --------------------------------------------------------

--
-- بنية الجدول `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 6),
(3, 'App\\Models\\User', 7),
(3, 'App\\Models\\User', 8),
(3, 'App\\Models\\User', 9),
(3, 'App\\Models\\User', 10),
(3, 'App\\Models\\User', 11),
(3, 'App\\Models\\User', 12),
(3, 'App\\Models\\User', 13),
(3, 'App\\Models\\User', 14),
(3, 'App\\Models\\User', 15),
(3, 'App\\Models\\User', 16),
(3, 'App\\Models\\User', 17),
(3, 'App\\Models\\User', 18),
(3, 'App\\Models\\User', 19),
(3, 'App\\Models\\User', 20),
(3, 'App\\Models\\User', 21),
(3, 'App\\Models\\User', 22),
(3, 'App\\Models\\User', 23),
(3, 'App\\Models\\User', 24),
(3, 'App\\Models\\User', 25),
(3, 'App\\Models\\User', 26),
(3, 'App\\Models\\User', 27),
(3, 'App\\Models\\User', 28),
(3, 'App\\Models\\User', 29),
(3, 'App\\Models\\User', 30),
(3, 'App\\Models\\User', 31),
(3, 'App\\Models\\User', 32),
(3, 'App\\Models\\User', 33),
(3, 'App\\Models\\User', 34),
(3, 'App\\Models\\User', 35),
(3, 'App\\Models\\User', 36),
(3, 'App\\Models\\User', 37),
(3, 'App\\Models\\User', 38),
(3, 'App\\Models\\User', 39),
(3, 'App\\Models\\User', 40),
(3, 'App\\Models\\User', 41),
(3, 'App\\Models\\User', 42),
(3, 'App\\Models\\User', 43);

-- --------------------------------------------------------

--
-- بنية الجدول `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `title`, `guard_name`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'role', 'Role', 'web', NULL, '2025-03-27 16:05:52', '2025-03-27 16:05:52'),
(2, 'role-add', 'Role Add', 'web', 1, '2025-03-27 16:05:52', '2025-03-27 16:05:52'),
(3, 'role-list', 'Role List', 'web', 1, '2025-03-27 16:05:52', '2025-03-27 16:05:52'),
(4, 'permission', 'Permission', 'web', NULL, '2025-03-27 16:05:52', '2025-03-27 16:05:52'),
(5, 'permission-add', 'Permission Add', 'web', 4, '2025-03-27 16:05:52', '2025-03-27 16:05:52'),
(6, 'permission-list', 'Permission List', 'web', 4, '2025-03-27 16:05:52', '2025-03-27 16:05:52');

-- --------------------------------------------------------

--
-- بنية الجدول `personal_access_tokens`
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
-- بنية الجدول `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `roles`
--

INSERT INTO `roles` (`id`, `name`, `title`, `guard_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', 'web', 1, '2025-03-27 16:05:52', '2025-03-27 16:05:52'),
(2, 'demo_admin', 'Demo Admin', 'web', 1, '2025-03-27 16:05:52', '2025-03-27 16:05:52'),
(3, 'user', 'User', 'web', 1, '2025-03-27 16:05:52', '2025-03-27 16:05:52');

-- --------------------------------------------------------

--
-- بنية الجدول `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1);

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) NOT NULL DEFAULT 'user',
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `users`
--

INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone_number`, `email_verified_at`, `user_type`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'systemadmin', 'System', 'Admin', 'admin@example.com', '+12398190255', '2025-03-27 16:05:53', 'admin', '$2y$10$82b/4sc6L4g5QSoJzOn5hefFYJn5oc4YiZk21R/tai1zft2LobyWS', 'active', NULL, '2025-03-27 16:05:53', '2025-03-27 16:05:53'),
(2, 'demoadmin', 'Demo', 'Admin', 'demo@example.com', '+12398190255', '2025-03-27 16:05:53', 'demo_admin', '$2y$10$uH52OYO5SwbiUfTbqEpWxO5l7Kd.c1wykvPWvBhVGb2frB77PcbIG', 'pending', NULL, '2025-03-27 16:05:53', '2025-03-27 16:05:53'),
(3, 'user', 'John', 'User', 'user@example.com', '+12398190255', '2025-03-27 16:05:53', 'user', '$2y$10$x3rJy8Jrx8XTNU8z.YzluO1H14H60XQWk.BEyDXJZPeeMutJL09WW', 'inactive', NULL, '2025-03-27 16:05:53', '2025-03-27 16:05:53'),
(4, 'deniscummings', 'Denis', 'Cummings', 'alfred.gerlach@example.com', '828.689.9247', '2025-03-27 16:05:53', 'user', '$2y$10$WgiP3jqcO74pKAn2QHLkAOOtHhwum/CRWAADh86Ujb8kvYvymG0.G', 'active', NULL, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(5, 'eloywuckert', 'Eloy', 'Wuckert', 'schamberger.raul@example.org', '(669) 805-1529', '2025-03-27 16:05:53', 'user', '$2y$10$LbYgZ74R8g0dzQ8zwyEJW.ObLs78GKaRaBbD9f..Bb0iBRPScWFUq', 'inactive', NULL, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(6, 'jonashermiston', 'Jonas', 'Hermiston', 'janie.romaguera@example.com', '272.764.7442', '2025-03-27 16:05:53', 'user', '$2y$10$aI15HcwL5PhQGQMD0yrgGudDC0IlRIkwvw4XbTJERctf88K8Ie7ha', 'active', NULL, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(7, 'keyonrowe', 'Keyon', 'Rowe', 'ldoyle@example.net', '(682) 403-8866', '2025-03-27 16:05:53', 'user', '$2y$10$5Ucjte0LYJ6HCt3lXeizkOX6sHh6itl7o8wcbZf54ywCIyEG29TAe', 'inactive', NULL, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(8, 'malloryadams', 'Mallory', 'Adams', 'volkman.rachelle@example.net', '+1-914-618-8519', '2025-03-27 16:05:53', 'user', '$2y$10$1wq.3se2CgW5D2o.N49NkeizEVyr.1d6XI8rgGlCdNDcQFFFXytJK', 'pending', NULL, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(9, 'torrancemetz', 'Torrance', 'Metz', 'gcorkery@example.org', '+1-531-308-3019', '2025-03-27 16:05:53', 'user', '$2y$10$vp6ArG.866yQ8/6b6.WWt.7x203LC4obJr6mkhm.SuiAiyzNhgati', 'inactive', NULL, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(10, 'madisonhegmann', 'Madison', 'Hegmann', 'reyna.kuvalis@example.net', '724.392.8864', '2025-03-27 16:05:53', 'user', '$2y$10$CdQ7rytLzAncHc4K8kZNLeK7TpYZMi88HQHcT2N/Obp9S808xtsOa', 'pending', NULL, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(11, 'brooklynhintz', 'Brooklyn', 'Hintz', 'tatyana.kassulke@example.com', '1-212-702-7243', '2025-03-27 16:05:53', 'user', '$2y$10$1VYxTC/4U9Dp/KSmPDWSfuonJBoDMMuNuW0fDIQIZpHF/JHHMC6yK', 'active', NULL, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(12, 'traceyrutherford', 'Tracey', 'Rutherford', 'darrel08@example.net', '+1 (959) 536-0410', '2025-03-27 16:05:53', 'user', '$2y$10$xwRBIIk.t7GSdUcS2uzUYujIAm8ox2WrLB0MGBqGxb.XJq3HO5TgK', 'active', NULL, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(13, 'otiskuphal', 'Otis', 'Kuphal', 'fvandervort@example.net', '+1-314-579-7701', '2025-03-27 16:05:54', 'user', '$2y$10$pTPX4Pw6ltuqf86UzwQC/OCoURAKAm128qbIuWnKa3b04/mlkM9UG', 'pending', NULL, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(14, 'earnestfahey', 'Earnest', 'Fahey', 'zoe55@example.com', '+1.925.265.7405', '2025-03-27 16:05:54', 'user', '$2y$10$7L3i6/t2Ntti/ehgO7z7MOb/fZHNwNo9NfyX0esd0FvmKCKR2Onvq', 'pending', NULL, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(15, 'kassandramurphy', 'Kassandra', 'Murphy', 'luella.stehr@example.org', '(580) 285-1104', '2025-03-27 16:05:54', 'user', '$2y$10$Ejc/uXC1Z2Mf9QFsX1AjRunvMqzftmLU7LOOC3L1vRe50AJ0XiCC2', 'pending', NULL, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(16, 'casandraschowalter', 'Casandra', 'Schowalter', 'casey55@example.net', '(540) 665-4094', '2025-03-27 16:05:54', 'user', '$2y$10$4tJ44MgmGg194Rb1VVkfOenS2FsRZk8oyKXUAk5CtTRPYXSTRe6L.', 'pending', NULL, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(17, 'leonorwhite', 'Leonor', 'White', 'vschuster@example.org', '+1-970-926-6022', '2025-03-27 16:05:54', 'user', '$2y$10$QJHvu8nCaCGxFFhUn.Y4/ufgd9sMdY8.SUoVjAh0hQR8BNJbbKErq', 'active', NULL, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(18, 'augustuskonopelski', 'Augustus', 'Konopelski', 'abraham99@example.net', '+1-442-639-1649', '2025-03-27 16:05:54', 'user', '$2y$10$SCTeoeVSORhodIoae0aGH.7hzdorzn8xXjVkpGUG6sUBFqfMS6/mK', 'pending', NULL, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(19, 'rasheedblick', 'Rasheed', 'Blick', 'paul.rutherford@example.org', '540-349-4197', '2025-03-27 16:05:54', 'user', '$2y$10$b0D3hOnzLtv.ccb8QX8un.Szz6ap/RANHCSERaqp5xBCEdd54k.Le', 'inactive', NULL, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(20, 'vernamedhurst', 'Verna', 'Medhurst', 'xfarrell@example.com', '(682) 943-2597', '2025-03-27 16:05:54', 'user', '$2y$10$0XKQDH5INShGRioc56bzIu2nmJ0R2DSSRITA.2yjRQn0L5fetLwLC', 'pending', NULL, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(21, 'tomasaherman', 'Tomasa', 'Herman', 'fmaggio@example.net', '+1-726-845-9064', '2025-03-27 16:05:54', 'user', '$2y$10$EONtxxu67alreW9LRvLns.tuUT1WSvcnMeSWeSxBvf.juSAi6EmAK', 'inactive', NULL, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(22, 'laurettaupton', 'Lauretta', 'Upton', 'wanda25@example.com', '(918) 517-2345', '2025-03-27 16:05:54', 'user', '$2y$10$XRg07x/I/j1d5wjsvK.ejexQ2dYQqr30AHAYgKfPOnt86kbokeDlq', 'inactive', NULL, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(23, 'edythmcglynn', 'Edyth', 'McGlynn', 'toni83@example.org', '928-440-4569', '2025-03-27 16:05:54', 'user', '$2y$10$gw0sHCXZrmOt6NGpzh5EFulQs/R3tloAidQmrpi2LcfrhthUpGG..', 'pending', NULL, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(24, 'salmatorphy', 'Salma', 'Torphy', 'tremaine73@example.net', '321-898-2308', '2025-03-27 16:05:55', 'user', '$2y$10$lR3Qg0UiP0AFhujKdMReGu3xsdRoDPVzOaGXFrt6jYj.A5gbE4ix.', 'pending', NULL, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(25, 'edmondo\'reilly', 'Edmond', 'O\'Reilly', 'ashleigh57@example.com', '1-364-484-3119', '2025-03-27 16:05:55', 'user', '$2y$10$EjDXo4lGgzZ5gwcmQuJ4Cuv3QxPFZPeGsxGf/HiYybCdq/4EOsWUa', 'active', NULL, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(26, 'archibaldortiz', 'Archibald', 'Ortiz', 'breitenberg.emanuel@example.net', '1-813-963-8280', '2025-03-27 16:05:55', 'user', '$2y$10$vGmyaIxEJ8WPmhQLtYe1beHO.RR1ZLc8fKjl84P.GYwpEAO1gFRbO', 'inactive', NULL, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(27, 'earlinesimonis', 'Earline', 'Simonis', 'antonia94@example.org', '(925) 712-9511', '2025-03-27 16:05:55', 'user', '$2y$10$kRdqCD6SHaDqEWX2wMqU/OBxgNRajhpm5AdRVN7M7exV9IrC/X75G', 'active', NULL, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(28, 'teresabatz', 'Teresa', 'Batz', 'egoyette@example.com', '+12087097138', '2025-03-27 16:05:55', 'user', '$2y$10$/Qla.vV/GmucFk4.rp9d0.AWispQYGOW2XU0o61jeOjneyD2hfEwq', 'pending', NULL, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(29, 'marleeheller', 'Marlee', 'Heller', 'harvey.helen@example.net', '+1.361.330.5725', '2025-03-27 16:05:55', 'user', '$2y$10$qr2hlzFdhTtUJt7FIKB7ze0YrM5RCTUA3WcN9g/1mXUumXT4upRqS', 'pending', NULL, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(30, 'thelmapadberg', 'Thelma', 'Padberg', 'elfrieda91@example.net', '678-575-8027', '2025-03-27 16:05:55', 'user', '$2y$10$uRBHz9UzEmbyidZR6l8vpuNgzDpZSgxe5OpikU78ZidjsMdehuP92', 'active', NULL, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(31, 'stephenschuster', 'Stephen', 'Schuster', 'bednar.damien@example.org', '678.835.2642', '2025-03-27 16:05:55', 'user', '$2y$10$Nk6w.UUtitLkEyqE92bTPOJc/rH9idDMffzIQMbbTmFrqrkxYqBD6', 'inactive', NULL, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(32, 'ewellmraz', 'Ewell', 'Mraz', 'lillie.bergnaum@example.org', '+17544262247', '2025-03-27 16:05:55', 'user', '$2y$10$KzaH29m5f7/aTqhy8HxjCOOdvE/SA2xP.bzLW3HaPAXm32GETsG3i', 'pending', NULL, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(33, 'mavericko\'reilly', 'Maverick', 'O\'Reilly', 'dgreenfelder@example.net', '520-376-6254', '2025-03-27 16:05:55', 'user', '$2y$10$HOIFwwJboHPHEExTcq.YeOG2TnJK8c55oi8O8e8T44xmK.Jwumy8.', 'inactive', NULL, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(34, 'rosalyntillman', 'Rosalyn', 'Tillman', 'robel.tomas@example.com', '+1 (941) 803-8712', '2025-03-27 16:05:55', 'user', '$2y$10$O9tt4.dY.6m93JthB79V9eqZeJeHaMoso6E./Wq.nzsEAYj4cfXH2', 'pending', NULL, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(35, 'tyrarobel', 'Tyra', 'Robel', 'deanna74@example.com', '(609) 739-3820', '2025-03-27 16:05:55', 'user', '$2y$10$w6rxlnVuoHUyy/wZupKIUuKhMXAkjp1lUrw0nrdFD.G8LonKJ4Vzi', 'pending', NULL, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(36, 'emieo\'hara', 'Emie', 'O\'Hara', 'sroob@example.com', '973-732-8274', '2025-03-27 16:05:55', 'user', '$2y$10$WZxTDwPojCN5QED1PFL5huoy1gglvy5w4sA1/UclfmWMae.v2txcK', 'inactive', NULL, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(37, 'kayleighstrosin', 'Kayleigh', 'Strosin', 'yhill@example.com', '(201) 777-6813', '2025-03-27 16:05:56', 'user', '$2y$10$VpM7ReXQT0XLVjTuxGQax.PSWx93a.BWoEQ2DOqlF4VHfqGn0Dnqe', 'inactive', NULL, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(38, 'noemikohler', 'Noemi', 'Kohler', 'heaney.oliver@example.com', '463-268-5843', '2025-03-27 16:05:56', 'user', '$2y$10$9jWQwygPYoYipAcFawEWHe0PcWPaUMFGHCCMH30vjfsA5JGkDa26K', 'active', NULL, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(39, 'maceykoelpin', 'Macey', 'Koelpin', 'lisandro60@example.com', '+1 (760) 633-7564', '2025-03-27 16:05:56', 'user', '$2y$10$nwU1eYRovx4uMNrA9rTMiegezJURIRhIzWJ8P8WeNHPOsL1Ts1wgu', 'inactive', NULL, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(40, 'milfordharber', 'Milford', 'Harber', 'orpha85@example.net', '+1 (361) 514-3535', '2025-03-27 16:05:56', 'user', '$2y$10$2cN0wzUBVKu2TAKLOwXoR.cn9R8iLqt5HDAwQGn./17GsdavxZglS', 'active', NULL, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(41, 'manuelhowe', 'Manuel', 'Howe', 'enos.medhurst@example.com', '+1-864-830-8351', '2025-03-27 16:05:56', 'user', '$2y$10$YpwEGBuW93o8Z6Syvm.NZ.HoghmHItqL00zZXxP7y4GFOrUvKmA/K', 'inactive', NULL, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(42, 'judgestokes', 'Judge', 'Stokes', 'kenya93@example.org', '+1-337-583-6400', '2025-03-27 16:05:56', 'user', '$2y$10$kPIhFexhHEQotQX1Lpo7keZMfpuCyFOgCUxxPbEBQkd/jJc2IZATy', 'inactive', NULL, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(43, 'josebauch', 'Jose', 'Bauch', 'bturner@example.net', '346.234.2093', '2025-03-27 16:05:56', 'user', '$2y$10$yz8Rwi11rCrwhJgjTbKMkudceXLcvv1i5vtYeHIz.ZuEw0ag9d4kW', 'active', NULL, '2025-03-27 16:05:56', '2025-03-27 16:05:56');

-- --------------------------------------------------------

--
-- بنية الجدول `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `street_addr_1` varchar(255) DEFAULT NULL,
  `street_addr_2` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `alt_phone_number` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `pin_code` bigint(20) DEFAULT NULL,
  `facebook_url` varchar(255) DEFAULT NULL,
  `instagram_url` varchar(255) DEFAULT NULL,
  `twitter_url` varchar(255) DEFAULT NULL,
  `linkdin_url` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `company_name`, `street_addr_1`, `street_addr_2`, `phone_number`, `alt_phone_number`, `country`, `state`, `city`, `pin_code`, `facebook_url`, `instagram_url`, `twitter_url`, `linkdin_url`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'fuga accusamus', NULL, NULL, NULL, NULL, 'American Samoa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(2, 'cumque maxime', NULL, NULL, NULL, NULL, 'Spain', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(3, 'harum voluptatem', NULL, NULL, NULL, NULL, 'South Africa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-03-27 16:05:56', '2025-03-27 16:05:56'),
(4, 'occaecati impedit', NULL, NULL, NULL, NULL, 'Australia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2025-03-27 16:05:57', '2025-03-27 16:05:57'),
(5, 'aliquid quia', NULL, NULL, NULL, NULL, 'Belgium', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2025-03-27 16:05:57', '2025-03-27 16:05:57'),
(6, 'quos error', NULL, NULL, NULL, NULL, 'French Southern Territories', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2025-03-27 16:05:57', '2025-03-27 16:05:57'),
(7, 'aliquid vel', NULL, NULL, NULL, NULL, 'Macedonia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, '2025-03-27 16:05:57', '2025-03-27 16:05:57'),
(8, 'ipsum exercitationem', NULL, NULL, NULL, NULL, 'San Marino', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, '2025-03-27 16:05:57', '2025-03-27 16:05:57'),
(9, 'et et', NULL, NULL, NULL, NULL, 'Timor-Leste', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, '2025-03-27 16:05:57', '2025-03-27 16:05:57'),
(10, 'quisquam id', NULL, NULL, NULL, NULL, 'Czech Republic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, '2025-03-27 16:05:57', '2025-03-27 16:05:57'),
(11, 'nemo rem', NULL, NULL, NULL, NULL, 'Sao Tome and Principe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, '2025-03-27 16:05:57', '2025-03-27 16:05:57'),
(12, 'vel dolores', NULL, NULL, NULL, NULL, 'Cyprus', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, '2025-03-27 16:05:57', '2025-03-27 16:05:57'),
(13, 'cumque ea', NULL, NULL, NULL, NULL, 'Kazakhstan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, '2025-03-27 16:05:57', '2025-03-27 16:05:57'),
(14, 'id esse', NULL, NULL, NULL, NULL, 'Austria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2025-03-27 16:05:57', '2025-03-27 16:05:57'),
(15, 'voluptates et', NULL, NULL, NULL, NULL, 'Guadeloupe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '2025-03-27 16:05:57', '2025-03-27 16:05:57'),
(16, 'quod atque', NULL, NULL, NULL, NULL, 'Tajikistan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, '2025-03-27 16:05:57', '2025-03-27 16:05:57'),
(17, 'totam vitae', NULL, NULL, NULL, NULL, 'Iceland', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, '2025-03-27 16:05:57', '2025-03-27 16:05:57'),
(18, 'et consequatur', NULL, NULL, NULL, NULL, 'Kyrgyz Republic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2025-03-27 16:05:57', '2025-03-27 16:05:57'),
(19, 'et laudantium', NULL, NULL, NULL, NULL, 'Marshall Islands', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19, '2025-03-27 16:05:57', '2025-03-27 16:05:57'),
(20, 'vel dolorem', NULL, NULL, NULL, NULL, 'Lesotho', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, '2025-03-27 16:05:57', '2025-03-27 16:05:57'),
(21, 'et et', NULL, NULL, NULL, NULL, 'Croatia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, '2025-03-27 16:05:57', '2025-03-27 16:05:57'),
(22, 'ut voluptas', NULL, NULL, NULL, NULL, 'Northern Mariana Islands', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, '2025-03-27 16:05:57', '2025-03-27 16:05:57'),
(23, 'saepe tempora', NULL, NULL, NULL, NULL, 'Vanuatu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, '2025-03-27 16:05:57', '2025-03-27 16:05:57'),
(24, 'est illum', NULL, NULL, NULL, NULL, 'Falkland Islands (Malvinas)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, '2025-03-27 16:05:57', '2025-03-27 16:05:57'),
(25, 'minus omnis', NULL, NULL, NULL, NULL, 'Zambia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, '2025-03-27 16:05:57', '2025-03-27 16:05:57'),
(26, 'voluptas iste', NULL, NULL, NULL, NULL, 'Nauru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, '2025-03-27 16:05:57', '2025-03-27 16:05:57'),
(27, 'nihil ut', NULL, NULL, NULL, NULL, 'Anguilla', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27, '2025-03-27 16:05:57', '2025-03-27 16:05:57'),
(28, 'aut eius', NULL, NULL, NULL, NULL, 'Botswana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, '2025-03-27 16:05:57', '2025-03-27 16:05:57'),
(29, 'est soluta', NULL, NULL, NULL, NULL, 'Norway', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29, '2025-03-27 16:05:57', '2025-03-27 16:05:57'),
(30, 'alias molestiae', NULL, NULL, NULL, NULL, 'Guadeloupe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, '2025-03-27 16:05:57', '2025-03-27 16:05:57'),
(31, 'quo aut', NULL, NULL, NULL, NULL, 'Kenya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, '2025-03-27 16:05:57', '2025-03-27 16:05:57'),
(32, 'officiis veritatis', NULL, NULL, NULL, NULL, 'Togo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, '2025-03-27 16:05:57', '2025-03-27 16:05:57'),
(33, 'omnis est', NULL, NULL, NULL, NULL, 'Benin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33, '2025-03-27 16:05:57', '2025-03-27 16:05:57'),
(34, 'perspiciatis accusamus', NULL, NULL, NULL, NULL, 'Bosnia and Herzegovina', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 34, '2025-03-27 16:05:57', '2025-03-27 16:05:57'),
(35, 'sequi ipsum', NULL, NULL, NULL, NULL, 'Norfolk Island', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 35, '2025-03-27 16:05:57', '2025-03-27 16:05:57'),
(36, 'est dolorem', NULL, NULL, NULL, NULL, 'Sweden', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 36, '2025-03-27 16:05:57', '2025-03-27 16:05:57'),
(37, 'fuga omnis', NULL, NULL, NULL, NULL, 'Nicaragua', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37, '2025-03-27 16:05:57', '2025-03-27 16:05:57'),
(38, 'ut laborum', NULL, NULL, NULL, NULL, 'Mozambique', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 38, '2025-03-27 16:05:57', '2025-03-27 16:05:57'),
(39, 'tempora minus', NULL, NULL, NULL, NULL, 'Korea', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39, '2025-03-27 16:05:57', '2025-03-27 16:05:57'),
(40, 'qui quibusdam', NULL, NULL, NULL, NULL, 'Anguilla', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, '2025-03-27 16:05:57', '2025-03-27 16:05:57'),
(41, 'aut aut', NULL, NULL, NULL, NULL, 'Guernsey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 41, '2025-03-27 16:05:57', '2025-03-27 16:05:57'),
(42, 'maxime impedit', NULL, NULL, NULL, NULL, 'Faroe Islands', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 42, '2025-03-27 16:05:57', '2025-03-27 16:05:57'),
(43, 'voluptate et', NULL, NULL, NULL, NULL, 'Uganda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 43, '2025-03-27 16:05:57', '2025-03-27 16:05:57');

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
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- قيود الجداول المُلقاة.
--

--
-- قيود الجداول `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

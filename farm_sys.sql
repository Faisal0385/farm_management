-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2022 at 04:52 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `farm_sys`
--

-- --------------------------------------------------------

--
-- Table structure for table `agro_details`
--

CREATE TABLE `agro_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `milk_per_day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_breed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_detail_short` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_detail_long` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img_4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img_5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img_alt_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img_alt_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img_alt_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img_alt_4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img_alt_5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agro_details`
--

INSERT INTO `agro_details` (`id`, `user_id`, `product_id`, `product_name`, `weight`, `milk_per_day`, `cost_price`, `sale_price`, `product_breed`, `product_gender`, `product_age`, `location`, `category_id`, `subcategory_id`, `product_detail_short`, `product_detail_long`, `product_img_1`, `product_img_2`, `product_img_3`, `product_img_4`, `product_img_5`, `product_img_alt_1`, `product_img_alt_2`, `product_img_alt_3`, `product_img_alt_4`, `product_img_alt_5`, `created_at`, `updated_at`) VALUES
(1, '1', '123', 'HF Heifer - HF177', '123', '12', '1222222', '3333333', 'BBB', 'male', '22', 'Banglore, Karnataka', 'Agro', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuriesLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuriesLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-10 10:36:18', '2022-02-10 10:36:18'),
(2, '1', '12345', 'HF Heifer - HF22222', '123', '12', '1222222', '3333333', 'BBB', 'female', '22', 'Chittagong', 'Agro', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuriesLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-10 10:36:51', '2022-02-10 10:36:51'),
(3, '1', 'vvvvv12', 'Best Co', '200', '25', '555555', '44444', 'Birish', 'male', '35', 'Kulna', 'Agro', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuriesLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuriesLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-11 02:32:35', '2022-02-11 02:32:35'),
(4, '1', '123', 'HF Heifer - HF177', '123', '12', '1222222', '3333333', 'BBB', 'female', '22', 'Banglore, Karnataka', 'Agro', NULL, 'ads', 'asd', 'image/product/1724462020075935.png', 'image/product/1724462020412179.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-11 04:25:38', '2022-02-11 04:25:38');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `category_name`, `cat_img`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Agro', 'image/category/1724394538288083.jpg', NULL, '2022-02-10 10:33:02', '2022-02-10 10:33:02'),
(2, 1, 'Dairy', 'image/category/1724394545366398.jpg', NULL, '2022-02-10 10:33:09', '2022-02-10 10:33:09'),
(3, 1, 'Dairy Products', 'image/category/1724394553490260.jpg', NULL, '2022-02-10 10:33:17', '2022-02-10 10:33:17');

-- --------------------------------------------------------

--
-- Table structure for table `dairy_details`
--

CREATE TABLE `dairy_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_production` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_img_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img_4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img_5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img_alt_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img_alt_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img_alt_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img_alt_4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img_alt_5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dairy_details`
--

INSERT INTO `dairy_details` (`id`, `user_id`, `product_id`, `product_name`, `birthday`, `mother_id`, `mother_production`, `father_details`, `weight`, `cost_price`, `sale_price`, `product_age`, `location`, `category_id`, `product_img_1`, `product_img_2`, `product_img_3`, `product_img_4`, `product_img_5`, `product_img_alt_1`, `product_img_alt_2`, `product_img_alt_3`, `product_img_alt_4`, `product_img_alt_5`, `created_at`, `updated_at`) VALUES
(2, '1', '56789', 'HF Heifer - HF22222', '2-2-22', '35675', '22', 'DC', '123', '1222222', '3333333', '22', 'Banglore, Karnataka', 'Dairy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-10 10:38:51', '2022-02-10 12:35:57'),
(3, '1', '12345', 'Cow - HF177', '2-2-22', '345', '22', 'BC', '123', '15000000', '3333333', '24', 'Chittagong', 'Dairy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-10 12:35:39', '2022-02-10 12:35:39');

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_01_31_040240_create_sessions_table', 1),
(7, '2022_01_31_044904_create_categories_table', 1),
(8, '2022_01_31_091134_create_brands_table', 1),
(9, '2022_02_01_154031_create_sub_categories_table', 1),
(10, '2022_02_02_044335_create_product_details_table', 1),
(11, '2022_02_08_162315_create_agro_details_table', 1),
(12, '2022_02_08_162506_create_dairy_details_table', 1),
(13, '2022_02_08_204110_create_productions_table', 1),
(14, '2022_02_10_103442_create_vaccines_table', 1),
(16, '2022_02_10_171452_create_vaccine_names_table', 2);

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
-- Table structure for table `productions`
--

CREATE TABLE `productions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cow_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `morning_shift` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `evening_shift` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productions`
--

INSERT INTO `productions` (`id`, `user_id`, `date`, `cow_id`, `morning_shift`, `evening_shift`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-02-10', '56789', '25', '12', '2022-02-10 10:39:10', '2022-02-10 10:39:10');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_detail_short` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_detail_long` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_img_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img_4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img_alt_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img_alt_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img_alt_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img_alt_4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `product_id`, `product_name`, `weight`, `size`, `cost_price`, `sale_price`, `discount_price`, `category_id`, `subcategory_id`, `product_detail_short`, `product_detail_long`, `user_id`, `product_img_1`, `product_img_2`, `product_img_3`, `product_img_4`, `product_img_alt_1`, `product_img_alt_2`, `product_img_alt_3`, `product_img_alt_4`, `created_at`, `updated_at`) VALUES
(1, '123', 'Pure Milk', '123', 'SM,M,L', '1222222', '3333333', 'NA', '3', '1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuriesLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-11 02:53:54', '2022-02-11 02:53:54'),
(2, '123', 'HF Heifer - HF177', '123', 'SM,M,L', '150', '44444', '240', '3', '3', 'asdasd', 'dasdsa', '1', 'image/product/1724459135148010.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-11 03:39:46', '2022-02-11 03:39:46'),
(3, 'Faisal12345', 'Pure Cheese', '250 gm', 'NA', '1222222', '44444', 'NA', '3', '2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuriesLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuriesLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', '1', 'image/product/1724459644289015.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-11 03:47:52', '2022-02-11 03:47:52'),
(4, 'Faisal12345', 'HF Heifer - HF22222', '123', 'SM,M,L', '1222222', '3333333', 'NA', '3', '3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuriesLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', '1', 'image/product/1724461607158984.jpg', 'image/product/1724461607234911.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-11 04:19:04', '2022-02-11 04:19:04');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('4E0X4xvghQWNEcKlOBDYFkSDamuF9aAeTJRZaNyl', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS0ZpR1ExcFUwWDlscUNORGgwUDNXbGdwZFVHS3hvUFpWNFFoaHppNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1644588278);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `user_id`, `category_id`, `subcategory`, `created_at`, `updated_at`) VALUES
(1, 1, '3', 'Milk', '2022-02-10 10:33:25', '2022-02-10 10:33:25'),
(2, 1, '3', 'Cheese', '2022-02-10 10:33:29', '2022-02-10 10:33:29'),
(3, 1, '3', 'Butter', '2022-02-10 10:33:34', '2022-02-10 10:33:34');

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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$vzZS5s5Zx0fFhbWe6odoo.Mq.E/EHn2GOmLfo7Fe5MXiDC4NjclEa', NULL, NULL, NULL, NULL, NULL, '2022-02-10 10:32:47', '2022-02-10 10:32:47');

-- --------------------------------------------------------

--
-- Table structure for table `vaccines`
--

CREATE TABLE `vaccines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `cow_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vaccine` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vaccine_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vaccine_notification` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vaccines`
--

INSERT INTO `vaccines` (`id`, `user_id`, `cow_id`, `vaccine`, `vaccine_date`, `vaccine_notification`, `created_at`, `updated_at`) VALUES
(3, 1, '56789', '6', '2022-02-11', '46', '2022-02-10 12:59:11', '2022-02-10 12:59:11'),
(4, 1, '12345', '7', '2022-02-11', '36', '2022-02-10 12:59:27', '2022-02-10 12:59:27');

-- --------------------------------------------------------

--
-- Table structure for table `vaccine_names`
--

CREATE TABLE `vaccine_names` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `vaccine_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vaccine_names`
--

INSERT INTO `vaccine_names` (`id`, `user_id`, `vaccine_name`, `created_at`, `updated_at`) VALUES
(6, 1, 'Vaccine Name', '2022-02-10 12:13:40', '2022-02-10 12:13:40'),
(7, 1, 'Vaccine Name 2', '2022-02-10 12:13:43', '2022-02-10 12:13:43'),
(8, 1, 'Vaccine Name 3', '2022-02-10 12:13:47', '2022-02-10 12:13:47'),
(9, 1, 'Vaccine Name 4', '2022-02-10 12:13:50', '2022-02-10 12:13:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agro_details`
--
ALTER TABLE `agro_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dairy_details`
--
ALTER TABLE `dairy_details`
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
-- Indexes for table `productions`
--
ALTER TABLE `productions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vaccines`
--
ALTER TABLE `vaccines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vaccine_names`
--
ALTER TABLE `vaccine_names`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agro_details`
--
ALTER TABLE `agro_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dairy_details`
--
ALTER TABLE `dairy_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productions`
--
ALTER TABLE `productions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vaccines`
--
ALTER TABLE `vaccines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vaccine_names`
--
ALTER TABLE `vaccine_names`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

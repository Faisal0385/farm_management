-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2022 at 07:35 AM
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
  `default_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Dumping data for table `agro_details`
--

INSERT INTO `agro_details` (`id`, `user_id`, `product_id`, `product_name`, `weight`, `milk_per_day`, `cost_price`, `sale_price`, `product_breed`, `product_gender`, `product_age`, `location`, `category_id`, `subcategory_id`, `product_detail_short`, `product_detail_long`, `default_img`, `product_img_1`, `product_img_2`, `product_img_3`, `product_img_4`, `product_img_alt_1`, `product_img_alt_2`, `product_img_alt_3`, `product_img_alt_4`, `created_at`, `updated_at`) VALUES
(1, '2', '12345', 'Agro 123', '200', 'NA', '1222222', '3333333', 'BBB', 'male', '22', 'Chittagong', 'Agro', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuriesLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuriesLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', '/image/default/default-image.png', 'image/product/1724903729789120.jpg', 'image/product/1724903730168992.jpg', 'image/product/1724903730180984.jpg', 'image/product/1724903730189376.jpg', NULL, NULL, NULL, NULL, '2022-02-16 01:26:25', '2022-02-16 01:26:25'),
(2, '2', '56789', 'Agro 124', '1222', '25', '1222222', '44444', 'BIrish', 'female', '24', 'Chittagong', 'Agro', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuriesLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', '/image/default/default-image.png', 'image/product/1724904352364206.jpg', 'image/product/1724904354676311.jpg', 'image/product/1724904354700402.jpg', 'image/product/1724904354812830.jpg', NULL, NULL, NULL, NULL, '2022-02-16 01:36:21', '2022-02-16 01:41:28');

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
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_qty` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `user_status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `product_name`, `product_price`, `product_image`, `product_size`, `product_weight`, `product_qty`, `total_price`, `user_status`, `created_at`, `updated_at`) VALUES
(24, '1724905632238422', 'Faisal12345', 'Pure Cheese', '240', 'image/product/1724905223048452.jpg', 'NA', '250 gm', 1, 240, NULL, '2022-02-19 01:23:47', '2022-02-19 01:23:47');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `category_name`, `category_url`, `cat_img`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, 1, 'Agro', 'agro', 'image/category/1724903055766696.jpg', NULL, '2022-02-16 01:15:42', '2022-02-16 01:15:42'),
(5, 2, 'Dairy', 'dairy', 'image/category/1724903149639978.jpg', NULL, '2022-02-16 01:17:12', '2022-02-16 01:17:12'),
(6, 2, 'Dairy Products', 'dairyProduct', 'image/category/1724903319290817.jpg', NULL, '2022-02-16 01:20:30', '2022-02-16 01:19:54');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contact_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `contact_name`, `contact_email`, `contact_number`, `location`, `message`, `created_at`, `updated_at`) VALUES
(1, 'faisal a salam', 'faisaltez@gmail.com', '01312361494', 'ctg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', '2022-02-16 01:50:53', '2022-02-16 01:50:53'),
(2, 'fahim a salam', 'fahim@gmail.com', '01312361494', 'dhk', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', '2022-02-16 01:51:27', '2022-02-16 01:51:27');

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
  `for_sale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Dumping data for table `dairy_details`
--

INSERT INTO `dairy_details` (`id`, `user_id`, `product_id`, `product_name`, `birthday`, `mother_id`, `mother_production`, `father_details`, `weight`, `cost_price`, `sale_price`, `product_age`, `location`, `category_id`, `for_sale`, `default_img`, `product_img_1`, `product_img_2`, `product_img_3`, `product_img_4`, `product_img_alt_1`, `product_img_alt_2`, `product_img_alt_3`, `product_img_alt_4`, `created_at`, `updated_at`) VALUES
(1, '2', '12345', 'HF Heifer - HF177', '2-2-22', '345', '25', 'BC', '200', '1222222', '3333333', '22', 'Chittagong', 'Dairy', 'Yes', '/image/default/default-image.png', 'image/dairy/1724904752753730.jpg', 'image/dairy/1724904753142017.jpg', 'image/product/1724904753157483.jpg', 'image/product/1724904753265446.jpg', NULL, NULL, NULL, NULL, '2022-02-16 01:42:41', '2022-02-16 06:30:44'),
(2, '2', '56789', 'dairy 123', '3-2-22', '35675', '25', 'MArvel', '1222', '1222222', 'NA', '35', 'Banglore, Karnataka', 'Dairy', 'Yes', '/image/default/default-image.png', 'image/dairy/1724904826785968.jpg', 'image/dairy/1724904827122801.jpg', 'image/product/1724904827147527.jpg', 'image/product/1724904827183339.jpg', NULL, NULL, NULL, NULL, '2022-02-16 01:43:52', '2022-02-16 06:30:53');

-- --------------------------------------------------------

--
-- Table structure for table `expanses`
--

CREATE TABLE `expanses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `expanse_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expanses`
--

INSERT INTO `expanses` (`id`, `expanse_name`, `date`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Electricity Bill', '2022-02-19', '2', '2022-02-18 12:42:40', '2022-02-18 12:45:47'),
(3, 'Water Bill', '2022-02-19', '2', '2022-02-18 12:46:12', '2022-02-18 12:46:12'),
(4, 'Gas Bill', '2022-02-19', '2', '2022-02-18 12:46:21', '2022-02-18 12:46:21'),
(5, 'Transport Bill', '2022-02-19', '2', '2022-02-18 12:47:12', '2022-02-18 23:36:03'),
(6, 'Food Expanse', '2022-02-20', '2', '2022-02-18 12:47:28', '2022-02-18 23:36:17');

-- --------------------------------------------------------

--
-- Table structure for table `expanse_details`
--

CREATE TABLE `expanse_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `expanse_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expanse_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expanse_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expanse_details`
--

INSERT INTO `expanse_details` (`id`, `expanse_date`, `expanse_name`, `expanse_amount`, `user_id`, `created_at`, `updated_at`) VALUES
(8, '2022-02-20', '2', '2000', '2', '2022-02-18 23:34:34', '2022-02-18 23:37:01'),
(9, '2022-02-20', '5', '3000', '2', '2022-02-18 23:34:41', '2022-02-18 23:36:55'),
(10, '2022-02-20', '6', '2000', '2', '2022-02-18 23:35:43', '2022-02-18 23:36:49'),
(11, '2022-02-27', '2', '4000', '2', '2022-02-27 00:34:19', '2022-02-27 00:34:19');

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
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `food_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `food_name`, `time`, `date`, `user_id`, `total_amount`, `created_at`, `updated_at`) VALUES
(1, 'Dry Grass', '3', '2022-02-16', '2', '12', '2022-02-16 02:11:06', '2022-02-16 02:11:06');

-- --------------------------------------------------------

--
-- Table structure for table `inquiries`
--

CREATE TABLE `inquiries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inquiry_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inquiry_fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inquiry_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inquiry_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inquiry_message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inquiries`
--

INSERT INTO `inquiries` (`id`, `product_name`, `product_id`, `inquiry_email`, `inquiry_fname`, `inquiry_phone`, `inquiry_location`, `inquiry_message`, `video_status`, `created_at`, `updated_at`) VALUES
(1, 'Agro 124', '56789', 'faisaltez@gmail.com', 'Faisal A. Salam', '013-12361494', 'kulna', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', 'on', '2022-02-16 01:52:21', '2022-02-16 01:52:21'),
(2, 'HF Heifer - HF177', '12345', 'faisaltez@gmail.com', 'Faisal A. Salam', '013-12361494', 'kulna', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', NULL, '2022-02-16 01:53:23', '2022-02-16 01:53:23'),
(3, 'HF Heifer - HF177', '12345', 'faisaltez@gmail.com', 'Faisal A. Salam', '013-12361494', 'dhk', 'Pls check if you ant to talk', 'on', '2022-02-16 06:33:50', '2022-02-16 06:33:50'),
(4, 'HF Heifer - HF177', '12345', 'faisaltez@gmail.com', 'Faisal A. Salam', '013-12361494', 'dhk', 'Pls check if you ant to talk', NULL, '2022-02-16 06:34:28', '2022-02-16 06:34:28');

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
(15, '2022_02_10_171452_create_vaccine_names_table', 1),
(16, '2022_02_11_175351_create_inquiries_table', 1),
(17, '2022_02_11_175530_create_contacts_table', 1),
(18, '2022_02_11_185901_create_registers_table', 1),
(19, '2022_02_12_042320_create_carts_table', 1),
(20, '2022_02_12_042423_create_orders_table', 1),
(21, '2022_02_15_154707_create_food_table', 1),
(24, '2022_02_18_182040_create_expanses_table', 2),
(26, '2022_02_18_185407_create_expanse_details_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pyt_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pin_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_products` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `user_name`, `user_number`, `user_email`, `pyt_method`, `address`, `street`, `city`, `country`, `pin_code`, `total_products`, `total_price`, `created_at`, `updated_at`) VALUES
(9, '1724905632238422', 'admin', '01312361494', 'faisal@gmail.com', 'COD', 'lorem', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'DHK', 'Bangladesh', '1234', '1234', '720', '2022-02-18 06:54:45', '2022-02-18 06:54:45');

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
(1, 2, '2022-02-16', '12345', '120', '140', '2022-02-16 02:03:20', '2022-02-16 02:03:20'),
(2, 2, '2022-02-16', '56789', '10', '140', '2022-02-16 02:03:45', '2022-02-16 02:04:41');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `user_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `product_details` (`id`, `user_id`, `product_id`, `product_name`, `weight`, `size`, `cost_price`, `sale_price`, `discount_price`, `category_id`, `subcategory_id`, `product_detail_short`, `product_detail_long`, `user_status`, `default_img`, `product_img_1`, `product_img_2`, `product_img_3`, `product_img_4`, `product_img_alt_1`, `product_img_alt_2`, `product_img_alt_3`, `product_img_alt_4`, `created_at`, `updated_at`) VALUES
(1, '2', '56789', 'Pure Milk', '123', 'SM,M,L', '1222222', '3333333', 'NA', '6', '4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuriesLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuriesLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', NULL, '/image/default/default-image.png', 'image/product/1724905069664262.jpg', 'image/product/1724905070017039.jpg', 'image/product/1724905070025316.jpg', 'image/product/1724905070095869.jpg', NULL, NULL, NULL, NULL, '2022-02-16 01:47:43', '2022-02-16 01:47:43'),
(2, '2', 'Faisal12345', 'Pure Cheese', '250 gm', 'NA', '150', '250', '240', '6', '5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuriesLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', NULL, '/image/default/default-image.png', 'image/product/1724905223048452.jpg', 'image/product/1724905223108522.jpg', 'image/product/1724905223112179.jpg', 'image/product/1724905223117042.jpg', NULL, NULL, NULL, NULL, '2022-02-16 01:50:09', '2022-02-16 01:50:09'),
(3, '2', '1234', 'HF Heifer - HF22222', '1', 'NA', '150', '250', '240', '6', '4', 'dffsdf', 'asdfsdf', NULL, '/image/default/default-image.png', 'image/product/1724921645310097.jpg', 'image/product/1724921645755188.jpg', 'image/product/1724921645775224.jpg', NULL, NULL, NULL, NULL, NULL, '2022-02-16 06:11:11', '2022-02-16 06:11:11'),
(4, '2', '12345', 'HF Heifer - HF177', '250 gm', 'NA', '1222222', '3333333', 'NA', '6', '4', 'fsdf', 'sadf', NULL, '/image/default/default-image.png', 'image/product/1725125543217929.jpg', 'image/product/1725125543277199.jpg', 'image/product/1725125543368896.jpg', NULL, NULL, NULL, NULL, NULL, '2022-02-18 12:12:03', '2022-02-18 12:12:03'),
(5, '2', 'vvvvv12', 'Pure Cheese', '123', 'SM,M,L', '1222222', '3333333', 'NA', '6', '5', 'dsds', 'dsd', NULL, '/image/default/default-image.png', 'image/product/1725125599029329.jpg', 'image/product/1725125599106645.jpg', 'image/product/1725125599130279.jpg', NULL, NULL, NULL, NULL, NULL, '2022-02-18 12:12:56', '2022-02-18 12:12:56');

-- --------------------------------------------------------

--
-- Table structure for table `registers`
--

CREATE TABLE `registers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `registers`
--

INSERT INTO `registers` (`id`, `user_id`, `user_name`, `user_email`, `user_phone`, `user_pass`, `user_location`, `user_status`, `created_at`, `updated_at`) VALUES
(1, '1724905632238422', 'Faisal', 'faisaltez@gmail.com', '01312361494', '11111111', 'ctg', '0', '2022-02-16 01:56:39', '2022-02-16 01:56:39');

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
('H0DukGI6j8vPcSfnbOwKNdYVNH2V49C03KrxCB92', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiRDM0eHBMRG1MUkVXMXdvZWNTYThNWmNIMlZ1NWt4TFZTYjE5bEIzaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZXBvcnQvYWxsIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJDhGSi9GTjc4N3FKa1czaU9kdUpVdS5jM0s2NW5wMi83aFlueUdLcDJOOXdVM0M0b0pXN2ouIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCQ4RkovRk43ODdxSmtXM2lPZHVKVXUuYzNLNjVucDIvN2hZbnlHS3AyTjl3VTNDNG9KVzdqLiI7fQ==', 1645943711);

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
(4, 2, '6', 'Milk', '2022-02-16 01:21:41', '2022-02-16 01:21:41'),
(5, 2, '6', 'Cheese', '2022-02-16 01:21:51', '2022-02-16 01:21:51'),
(6, 2, '6', 'Butter', '2022-02-16 01:21:55', '2022-02-16 01:21:55');

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
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$/GpPO310NwRk5dTs9OtwQ.uWK38Bim87ln5u7oMEL1uMES4/NWRb.', NULL, NULL, NULL, NULL, NULL, '2022-02-16 00:56:20', '2022-02-16 01:05:42'),
(2, 'Faisal', 'faisaltez@gmail.com', NULL, '$2y$10$8FJ/FN787qJkW3iOduJUu.c3K65np2/7hYnyGKp2N9wU3C4oJW7j.', NULL, NULL, NULL, NULL, 'profile-photos/gDcNVvoTTT3DKDCaYPTW8wCsFF6RuEjhk38h159t.png', '2022-02-16 01:12:19', '2022-02-16 06:04:33');

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
(1, 2, 'Vaccine Name', '2022-02-16 02:05:01', '2022-02-16 02:05:01'),
(2, 2, 'Vaccine Name 2', '2022-02-16 02:05:04', '2022-02-16 02:05:04'),
(3, 2, 'Vaccine Name 3', '2022-02-16 02:05:06', '2022-02-16 02:05:06'),
(4, 2, 'Vaccine Name 4', '2022-02-16 02:05:09', '2022-02-16 02:05:09'),
(5, 2, 'Vaccine Name 5', '2022-02-18 23:37:47', '2022-02-18 23:37:47');

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
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dairy_details`
--
ALTER TABLE `dairy_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expanses`
--
ALTER TABLE `expanses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expanse_details`
--
ALTER TABLE `expanse_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
-- Indexes for table `registers`
--
ALTER TABLE `registers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `registers_user_id_unique` (`user_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dairy_details`
--
ALTER TABLE `dairy_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expanses`
--
ALTER TABLE `expanses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `expanse_details`
--
ALTER TABLE `expanse_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inquiries`
--
ALTER TABLE `inquiries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productions`
--
ALTER TABLE `productions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `registers`
--
ALTER TABLE `registers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vaccines`
--
ALTER TABLE `vaccines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vaccine_names`
--
ALTER TABLE `vaccine_names`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

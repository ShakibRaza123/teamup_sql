-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 12, 2023 at 12:54 AM
-- Server version: 5.7.42
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teamupproperty_newteamup`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `slug`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Mumbai', 'mumbai', 1, '2020-01-07 01:09:36', '2023-04-17 04:16:20'),
(3, 'Pune', 'pune', 1, '2020-01-07 01:11:09', '2020-01-07 07:23:07'),
(4, 'Nashik', 'nashik', 1, '2020-01-07 01:38:51', '2020-01-07 01:38:51'),
(6, 'Nagpur', 'nagpur', 1, '2020-01-07 07:09:00', '2020-01-07 07:23:01'),
(7, 'Kolkata', 'kolkata', 1, '2020-01-14 06:01:04', '2020-01-14 06:01:04'),
(8, 'bengaluru', 'bengaluru', 1, '2022-06-17 04:09:32', '2022-06-17 04:09:32'),
(9, 'Hyderabad', 'hyderabad', 1, '2022-08-01 03:28:53', '2022-08-01 03:28:53'),
(10, 'Surat', 'surat', 1, '2022-08-23 23:07:12', '2022-08-23 23:07:12'),
(11, 'Thane', 'thane', 1, '2022-08-24 23:20:06', '2022-08-24 23:20:06'),
(12, 'Navi Mumbai', 'navi-mumbai', 1, '2022-08-25 02:23:08', '2022-08-25 02:23:08'),
(13, 'Rajasthan', 'rajasthan', 1, '2023-01-05 05:08:16', '2023-01-05 05:08:16'),
(14, 'Pushkar', 'pushkar', 1, '2023-01-05 05:13:30', '2023-01-05 05:13:30'),
(15, 'Haridwar', 'haridwar', 1, '2023-01-05 21:19:27', '2023-01-05 21:19:27');

-- --------------------------------------------------------

--
-- Table structure for table `configurations`
--

CREATE TABLE `configurations` (
  `id` int(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `configurations`
--

INSERT INTO `configurations` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, '1 BHK', '1-bhk', '2023-04-11 01:33:14', '2023-04-11 01:33:14'),
(2, '2 BHK', '2-bhk', '2023-04-11 01:33:19', '2023-04-11 01:33:19'),
(3, '3 BHK', '3-bhk', '2023-04-11 01:33:27', '2023-04-11 01:33:27'),
(4, '4 BHK', '4-bhk', '2023-04-11 01:33:32', '2023-04-11 01:33:32'),
(8, 'Shops', 'shops', '2023-04-14 22:31:36', '2023-04-14 22:31:36'),
(9, 'Office Spaces', 'office-spaces', '2023-04-14 23:19:12', '2023-04-14 23:19:12'),
(10, '5 BHK', '5-bhk', '2023-04-14 23:42:23', '2023-04-14 23:42:23'),
(11, '1 RK', '1-rk', '2023-04-14 23:46:52', '2023-04-14 23:46:52'),
(12, '2.5 BHK', '25-bhk', '2023-04-15 01:32:27', '2023-04-15 01:32:27'),
(13, '1.5 BHK', '15-bhk', '2023-04-15 03:02:46', '2023-04-15 03:02:46'),
(14, 'Duplex', 'duplex', '2023-04-15 03:25:47', '2023-04-15 03:25:47'),
(15, '6 BHK', '6-bhk', '2023-04-15 03:50:10', '2023-04-15 03:50:10');

-- --------------------------------------------------------

--
-- Table structure for table `featured_projects`
--

CREATE TABLE `featured_projects` (
  `id` int(11) NOT NULL,
  `fimage` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `featured_projects`
--

INSERT INTO `featured_projects` (`id`, `fimage`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(11, '1681797839_62b2fdad809d6.jpeg', 'Hillcrest', 'hillcrest', '2023-04-18 00:33:59', '2023-04-18 00:33:59'),
(12, '1681798482_62b2fdad809d6.jpeg', 'Atul Project', 'atul-project', '2023-04-18 00:44:42', '2023-04-18 00:44:42');

-- --------------------------------------------------------

--
-- Table structure for table `furnish_types`
--

CREATE TABLE `furnish_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `furnish_types`
--

INSERT INTO `furnish_types` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Furnished', 'furnished', '2020-01-06 08:02:11', '2020-01-06 08:03:27'),
(2, 'Semi Furnished', 'semi-furnished', '2020-01-06 08:02:21', '2020-01-06 08:02:21'),
(3, 'Unfurnished', 'unfurnished', '2020-01-06 08:02:51', '2020-01-06 08:02:51');

-- --------------------------------------------------------

--
-- Table structure for table `localities`
--

CREATE TABLE `localities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `localities`
--

INSERT INTO `localities` (`id`, `city_id`, `name`, `slug`, `active`, `created_at`, `updated_at`) VALUES
(3, 1, 'Andheri West', 'andheri-west', '1', '2020-01-07 03:07:45', '2020-01-07 03:07:45'),
(4, 1, 'Andheri East', 'andheri-east', '1', '2020-01-07 03:07:55', '2020-01-07 03:07:55'),
(5, 3, 'Baner', 'baner', '1', '2020-01-07 03:08:07', '2020-01-07 03:08:07'),
(6, 3, 'Hinjewadi', 'hinjewadi', '1', '2020-01-07 03:10:02', '2020-01-07 03:10:02'),
(7, 3, 'Aundh', 'aundh', '1', '2020-01-07 03:10:17', '2020-01-07 03:10:17'),
(8, 3, 'Wakad', 'wakad', '1', '2020-01-07 03:10:25', '2020-01-07 03:10:25'),
(9, 3, 'Pimpri', 'pimpri', '1', '2020-01-07 03:10:33', '2020-01-07 03:10:33'),
(10, 3, 'Chinchwad', 'chinchwad', '1', '2020-01-07 03:10:52', '2020-01-07 03:10:52'),
(11, 1, 'Sion East', 'sion-east', '1', '2020-01-07 03:11:35', '2020-01-07 03:11:35'),
(12, 1, 'Sion West', 'sion-west', '1', '2020-01-07 03:11:44', '2020-01-07 07:17:05'),
(13, 5, 'Hanuman Nagar', 'hanuman-nagar', '1', '2020-01-07 07:06:44', '2020-01-07 07:06:44'),
(14, 1, 'Dadar', 'dadar', '1', '2020-01-09 03:07:59', '2020-01-09 03:07:59'),
(16, 7, 'Hawda bride', 'hawda-bride', '1', '2020-01-14 06:01:34', '2020-01-14 06:01:34');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(11) NOT NULL,
  `lname` varchar(251) NOT NULL,
  `slug` varchar(251) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `lname`, `slug`, `created_at`, `updated_at`) VALUES
(7, 'Bandra West', 'bandra-west', '2023-04-17 02:07:44', '2023-04-17 22:59:09'),
(10, 'New Delhi', 'new-delhi', '2023-04-17 02:40:28', '2023-04-17 02:40:28'),
(11, 'Dadar East', 'dadar-east', '2023-04-17 02:40:36', '2023-04-17 22:58:58'),
(12, 'Mira Road', 'mira-road', '2023-04-17 02:40:40', '2023-04-17 02:40:40'),
(13, 'Pune', 'pune', '2023-04-17 02:40:42', '2023-04-17 02:40:42'),
(14, 'Andheri East', 'andheri-east', '2023-04-17 02:41:01', '2023-04-17 22:58:30'),
(15, 'Dadar West', 'dadar-west', '2023-04-17 02:41:05', '2023-04-17 22:58:51'),
(17, 'Bandra East', 'bandra-east', '2023-04-17 22:58:12', '2023-04-17 22:58:12'),
(18, 'Andheri West', 'andheri-west', '2023-04-17 22:59:19', '2023-04-17 22:59:19'),
(19, 'Bhiwandi', 'bhiwandi', '2023-04-17 22:59:29', '2023-04-17 22:59:29'),
(20, 'Borivali West', 'borivali-west', '2023-04-17 22:59:33', '2023-04-17 22:59:33'),
(21, 'Borivali East', 'borivali-east', '2023-04-17 22:59:40', '2023-04-17 22:59:40'),
(22, 'Chandivali', 'chandivali', '2023-04-17 22:59:49', '2023-04-17 22:59:49'),
(23, 'Chembur', 'chembur', '2023-04-17 22:59:53', '2023-04-17 22:59:53'),
(24, 'Fort', 'fort', '2023-04-17 22:59:58', '2023-04-17 22:59:58'),
(25, 'Ghatkopar East', 'ghatkopar-east', '2023-04-17 23:00:02', '2023-04-17 23:00:02'),
(26, 'Ghatkopar West', 'ghatkopar-west', '2023-04-17 23:00:06', '2023-04-17 23:00:06'),
(27, 'Koparkhairane', 'koparkhairane', '2023-04-17 23:00:09', '2023-04-17 23:00:09'),
(28, 'Kurla West', 'kurla-west', '2023-04-17 23:00:13', '2023-04-17 23:00:13'),
(29, 'Malad West', 'malad-west', '2023-04-17 23:00:16', '2023-04-17 23:00:16'),
(30, 'Mulund East', 'mulund-east', '2023-04-17 23:00:20', '2023-04-17 23:00:20'),
(31, 'Panvel', 'panvel', '2023-04-17 23:00:23', '2023-04-17 23:00:23'),
(32, 'Santacruz East', 'santacruz-east', '2023-04-17 23:00:25', '2023-04-17 23:00:25'),
(33, 'Santacruz West', 'santacruz-west', '2023-04-17 23:00:28', '2023-04-17 23:00:28'),
(34, 'Surat', 'surat', '2023-04-17 23:00:30', '2023-04-17 23:00:30'),
(35, 'Thane West', 'thane-west', '2023-04-17 23:00:33', '2023-04-17 23:00:33'),
(36, 'Thane East', 'thane-east', '2023-04-17 23:00:43', '2023-04-17 23:00:43'),
(37, 'Turbhe', 'turbhe', '2023-04-17 23:00:46', '2023-04-17 23:00:46'),
(38, 'Vashi', 'vashi', '2023-04-17 23:00:49', '2023-04-17 23:00:49'),
(39, 'Vikhroli East', 'vikhroli-east', '2023-04-17 23:00:52', '2023-04-17 23:00:52'),
(40, 'Vikhroli West', 'vikhroli-west', '2023-04-17 23:00:57', '2023-04-17 23:00:57'),
(41, 'Vile Parle West', 'vile-parle-west', '2023-04-17 23:01:00', '2023-04-17 23:01:00'),
(42, 'Vile Parle East', 'vile-parle-east', '2023-04-17 23:01:05', '2023-04-17 23:01:05'),
(43, 'Khar West', 'khar-west', '2023-05-18 16:03:36', '2023-05-18 16:03:36');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_12_24_121945_create_property_fors_table', 2),
(4, '2019_12_26_063111_create_configurations_table', 3),
(5, '2019_12_26_063139_create_property_statuses_table', 3),
(6, '2019_12_26_063155_create_property_types_table', 3),
(7, '2019_12_26_063225_create_furnish_types_table', 3),
(8, '2019_12_26_063252_create_property_categories_table', 3),
(9, '2019_12_26_063313_create_tenant_types_table', 3),
(10, '2019_12_26_063401_create_cities_table', 3),
(11, '2019_12_26_063426_create_properties_table', 3),
(12, '2019_12_26_063442_create_property_galleries_table', 3),
(13, '2019_12_26_063509_create_property_leads_table', 3),
(14, '2019_12_26_063541_create_property_bookmarks_table', 3),
(15, '2019_12_26_063600_create_requirements_table', 4),
(16, '2019_12_26_133623_create_localities_table', 4),
(17, '2022_04_14_072518_create_projects_table', 5),
(18, '2022_04_14_083849_create_project_galleries_table', 6),
(19, '2022_04_14_083912_create_project_possessions_table', 6);

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
('vishakha.brandswitch@gmail.com', '$2y$10$G9eGLsNQSVB96qqrSpcOve3F13D1faGVSmwO3YemnjT1j3fH02A3K', '2022-02-21 00:45:04'),
('admin@gmail.com', '$2y$10$gBMSHeMIEf02yAkWMRI/V./vdBgvfoSYf1U5t4335N53LyxdAW3p2', '2022-04-14 00:20:11'),
('prashant@brandswitch.in', '$2y$10$EqkVRUCCaU4GFXsHmRTXQO0I/Pqmc9j5m4Rzy0gXDgEks5vKQE6LG', '2022-06-04 08:17:37');

-- --------------------------------------------------------

--
-- Table structure for table `price_list`
--

CREATE TABLE `price_list` (
  `id` bigint(121) NOT NULL,
  `details` varchar(251) COLLATE utf8_unicode_ci NOT NULL,
  `amt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `price_list`
--

INSERT INTO `price_list` (`id`, `details`, `amt`, `created_at`, `updated_at`) VALUES
(15, 'Under ₹ 50 Lacs', NULL, '2023-05-11 14:00:35', '2023-05-11 14:00:35'),
(16, 'Under ₹ 1 Crore', NULL, '2023-05-11 14:00:44', '2023-05-11 14:00:44'),
(17, 'Under ₹ 3 Crore', NULL, '2023-05-11 14:00:54', '2023-05-11 14:00:54'),
(18, 'Above ₹ 5 Crore', NULL, '2023-05-11 14:01:03', '2023-05-11 14:01:03');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `locality_id` int(11) DEFAULT NULL,
  `catagory_id` int(11) NOT NULL,
  `project_type_id` int(11) NOT NULL,
  `furnished_type_id` int(11) NOT NULL,
  `possession_status_id` int(11) NOT NULL,
  `configuration_id` varchar(121) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `possession_date` date NOT NULL,
  `ldate` date DEFAULT NULL,
  `rera` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` char(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `configvalue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` char(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_project` text COLLATE utf8mb4_unicode_ci,
  `address` text COLLATE utf8mb4_unicode_ci,
  `area` text COLLATE utf8mb4_unicode_ci,
  `lat` char(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` char(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conf` text COLLATE utf8mb4_unicode_ci,
  `budget_range` char(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `budget_amt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regions` text COLLATE utf8mb4_unicode_ci,
  `amenities` text COLLATE utf8mb4_unicode_ci,
  `project_highlights` text COLLATE utf8mb4_unicode_ci,
  `brochure` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` char(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topthumb` char(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exclu_thumb` char(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` char(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover` char(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exclusive` int(11) DEFAULT NULL,
  `inter` int(11) DEFAULT NULL,
  `trending` int(1) NOT NULL DEFAULT '0',
  `hotselling` int(11) NOT NULL,
  `top` int(1) NOT NULL DEFAULT '0',
  `offer` int(11) DEFAULT NULL,
  `offer_text` text COLLATE utf8mb4_unicode_ci,
  `nearby_hospital` text COLLATE utf8mb4_unicode_ci,
  `nearby_school` text COLLATE utf8mb4_unicode_ci,
  `nearby_bank` text COLLATE utf8mb4_unicode_ci,
  `nearby_airport` text COLLATE utf8mb4_unicode_ci,
  `views` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `user_id`, `city_id`, `locality_id`, `catagory_id`, `project_type_id`, `furnished_type_id`, `possession_status_id`, `configuration_id`, `possession_date`, `ldate`, `rera`, `title`, `configvalue`, `slug`, `about_project`, `address`, `area`, `lat`, `lng`, `conf`, `budget_range`, `budget_amt`, `regions`, `amenities`, `project_highlights`, `brochure`, `thumb`, `topthumb`, `exclu_thumb`, `banner`, `cover`, `video`, `exclusive`, `inter`, `trending`, `hotselling`, `top`, `offer`, `offer_text`, `nearby_hospital`, `nearby_school`, `nearby_bank`, `nearby_airport`, `views`, `status`, `created_at`, `updated_at`) VALUES
(4, 80, 1, NULL, 3, 1, 3, 7, '1, 2', '2026-06-30', '2023-05-17', 'P51800047381', 'Apex Green Wood', '373, 374, 376, 381 Sqft | 614, 648, 657', 'apex-green-wood', 'Exquisite 1 & BHK Residence, 23 Storey Luxurious Tower. \r\n\r\nYour search for your dream home ends at the brilliantly conceptualized and superbly developed residential project. Apex Green Wood that offers luxurious hyping spaces, with well-planned and magnificently designed to offer you the true essence of fine living in your own space. Every home is synonymous to lavishness, class and magnificence that upgrade your lifestyle in an unprecedented manner. Apex Green Wood is the best choice for those who seek a comfort life in ecstatic surroundings.', 'APEX GREEN WOOD, Rajendra Nagar Shradha Co-op HS Ltd, Rajendra Nagar, Old Datta Pada Road, Near Rajendra Nagar Beat Chowki, Opp Galaxy Multi Speciality Hospital, Village Magathane, Borivali East, Mumbai – 400066 Maharashtra India', 'Apex Green Wood, Madhukunj Society, Dattapada, Borivali East, Mumbai, Maharashtra, India', '19.2228631', '72.8588321', '22000 Per Sqft Onwards || 24014 Per Sqft All Incl', '82 Lacs onwards', '16', 'Borivali East', 'Fire Extinguisher/1664600782_Fire Extinguisher.png<br>Meditation Area/1664602190_Meditation Area.png<br>Terrace Garden/1664602734_Terrace Garden.png<br>Car Parking/1672997365_IconCar Parking.png<br>Yoga Area/1673244848_Yoga Area.png<br>High Speed Elevators/1673268235_High Speed Elevators.png<br>Senior Citizen Area/1673328235_Senior Citizen Area.png<br>Fitness Centre/1673334300_Fitness Centre.png', '<p><br></p>', NULL, '6465ef97a7dc6.jpeg', '6465efa702678.jpeg', '64661f23053a9.png', '6464d1af39d50.jpeg', NULL, NULL, 1, 0, 1, 1, 1, 0, NULL, '<ul><li><span style=\"background-color: rgb(255, 255, 255);\">Dr&nbsp;Khatav\'s Mother\'s And Child Hospital- 900 m</span></li><li><span style=\"background-color: rgb(255, 255, 255);\">QI Spine Clinic- 900 m</span></li><li><span style=\"background-color: rgb(255, 255, 255);\">Apex Superspeciality Hospital- 1.5 km</span></li><li><span style=\"background-color: rgb(255, 255, 255);\">Vansh Hospital- 1.3 km</span></li><li><span style=\"background-color: rgb(255, 255, 255);\">RichFeel Trichology Center- 1.3 km</span></li></ul>', '<p><br></p>', '<ul><li>SBI ATM- 200m</li><li>Abhyudaya Co-Op Bank ATM- 400m</li><li>Union Bank ATM- 500m</li><li>ICICI Bank Borivali East, Mumbai-Branch &amp; ATM- 900m</li><li>Bank Of Baroda ATM- 500m<br></li></ul>', '<ul><li>International Airport - 25 Mins</li></ul>', NULL, 1, '2023-05-18 12:50:43', '2023-05-18 16:50:43'),
(7, 70, 1, NULL, 3, 1, 3, 7, '2, 3, 4', '2023-12-30', '2023-05-01', 'P51800045486', 'Nine Aces', '718 | 1077 | 1455', 'nine-aces', 'Luxury, Location & Exclusive - Best defined at Nine Aces.  Centally located on 18th Road, Khar for a Convenient Living, Meticulously designed 8 Storey Marvel has thoughtfully designed Amenities for Exclusive Living.  New Age Technology Enabled Air Conditioned Homes with Modular Kitchen.  Spacious Vastu Compliant Homes with Cross Ventilation for adequate Natural Light & Wind.', '18th Rd, Khar West, Mumbai, Maharashtra 400052', 'Nine Aces society, 18th Road, Vithaldas Nagar, Khar West, Mumbai, Maharashtra, India', '19.07629589999999', '72.8295869', '2, 3 & 4 BHK', '3.51 Cr Onwards', '18', 'Khar West', 'Gym/1664601264_Gym.png<br>Aerobics Area/1673244746_Aerobics Area.png<br>Yoga Area/1673244848_Yoga Area.png<br>Open Theatre/1673246103_Open Theatre.png<br>Library/1673246423_Library.png<br>Puzzle Parking/1673262051_puzzle parking.png<br>High Speed Elevators/1673268235_High Speed Elevators.png<br>Senior Citizen Area/1673328235_Senior Citizen Area.png<br>Recreational Area/1673422273_Recreational Area.png<br>Landscaped Terrace Garden/1673422536_Landscaped Terrace Garden.png', NULL, NULL, '6465ffbae5f29.jpeg', '64660005901ab.jpeg', '64661e6aef6df.png', '646601ead0857.png', NULL, NULL, 1, 0, 1, 1, 1, 0, NULL, '<ul><li>Mahavir Hospital - 550m</li><li><span style=\"background-color: transparent; font-size: 0.85rem;\">Ramakrishna Mision Hospital - 750m</span></li><li><span style=\"background-color: transparent; font-size: 0.85rem;\">Daily Care Hospital - 1.8km</span></li><li>Kumar Nursing Home - 450m</li></ul>', '<ul><li>Santacruz West Mun. School - 450m</li><li>Podar Jumbo Kids Plus - 450m</li><li>St. Elias high School - 550m</li><li>B.P.M. High School - 300m</li></ul>', '<ul><li>Axis Bank ATM - 220m</li><li>ICICI Bank ATM - 400m</li><li>Bank of Baroda ATM - 600m</li><li>IDBI Bank ATM - 550m</li><li>Bank of India ATM - 750m</li><li>HDFC Bank ATM - 600m</li></ul>', '<ul><li>Domestic Airport - 10 Mins</li><li>International Airport - 10 Mins</li></ul>', NULL, 1, '2023-05-18 12:47:38', '2023-05-18 16:47:38'),
(9, 48, 1, NULL, 3, 1, 3, 7, '2, 3, 4', '2025-03-31', '2023-05-01', 'P51800031141', 'Pratap Elegance', '627, 660, 662, 700 | 756 | 937, 993 | 1288, 1394', 'pratap-elegance', 'An internal landscaped garden along with luxury amenities on the Roof Deck and Gymansium creates an oasis of tranquility and indulgence, elevating the residents\' living experience to new heights.', 'Pratap Elegance, Sahajiv Co-op Housing Society Ltd, Road No. 2, Lallubhai Park Road, Plot No. 19. Vile Parle West', 'Pratap Elegance, Vile Parle West, Lallubhai Park Road, Snehadhara Society, Navpada, T E Colony, Vile Parle West, Mumbai, Maharashtra, India', '19.1117009', '72.844832', NULL, '2.66 Cr Onwards', '15', 'Vile Parle West', 'Cricket Turf/1664545166_Cricket Turf.png<br>Gym/1664601264_Gym.png<br>Meditation Area/1664602190_Meditation Area.png<br>Terrace Garden/1664602734_Terrace Garden.png<br>Yoga Area/1673244848_Yoga Area.png<br>Grand Entrance Lobby/1673246939_Grand entrance lobby.png<br>Waiting Lounge/1673267128_Waiting Lounge.png<br>Senior Citizen Area/1673328235_Senior Citizen Area.png<br>Fitness Centre/1673334300_Fitness Centre.png<br>Kids Play Area/1673335384_Kids Play Area.png<br>Jogging Track/1673335476_Jogging Track.png', NULL, NULL, '646631a2e1dfe.png', '646631ba422d3.png', NULL, '64661e3027ae7.png', NULL, NULL, 0, 0, 1, 1, 1, 0, NULL, '<ul><li>Nanavati Super Speciality Hospital- 1.8 km</li><li>HBT Medical College And Dr. R N Cooper Municipal General Hospital- 1000 m</li><li>Kenia Eye Hospital- 2.5 km</li><li>Criticare Hospital- 900 m</li><li>Surya Hospitals- 3 km</li></ul>', NULL, '<ul><li>Cosmos Bank- 300 m</li><li>ICICI Bank Andheri, S V Road Mumbai - Branch &amp; ATM- 400 m</li><li>Yes Bank ATM- 400 m</li><li>Yes Bank ATM- 400 m</li><li>ICICI Bank ATM- 500 m</li></ul>', '<ul><li>International Airport - 10 Mins</li><li>Domestic - 10 Mins</li></ul>', NULL, 1, '2023-05-18 14:22:30', '2023-05-18 18:22:30'),
(10, 65, 1, NULL, 3, 1, 3, 7, '1, 2', '2026-08-18', '2022-05-18', 'P51800047511', 'Shubh Elanza', '1 BHk :- 351, 372, 381, 416 Sqft || 2 Bhk :- 510, 562, 565, 566 Sqft.', 'shubh-elanza', 'WELCOME TO SHUBH ELANZA\r\nOffering Luxurious & Ultra Modern 1 & 2 BHK homes with an option for ‘Jodi Flat’, Elanza is the pinnacle of living, right at the epicenter of Mumbai’s hub, Vikhroli East, Mumbai, just 2 minutes from Vikhroli Railway Station, 1 minute from Eastern Express.\r\nWe, Shubh Vastu Lifespace LLP is an emerging and growing real estate developer, engaged in the construction of Residential Apartments and Redevelopment projects around Mumbai Suburbs.', 'Shubh Elanza Building  No. 42, Tagore Nagar No. 1, Vikhroli East, Mumbai - 400083 Maharashtra India', 'Shubh Elanza, Tagore Nagar Road, near Punjab &amp;amp;amp;amp;amp;amp; Maharashtra Co-operative Bank, Bagrat Nagar, Ashok Nagar, Vikhroli, Mumbai, Maharashtra, India', '19.1122348', '72.9332611', '1 Bhk & 2 Bhk', '77 Lakhs  All Incl', '16', 'Vikhroli East', 'Air Conditioned/1664538021_Air Conditioned.png<br>Fire Extinguisher/1664600782_Fire Extinguisher.png<br>Gym/1664601264_Gym.png<br>Indoor Games/1664601325_Indoor Games.png<br>Intercom Facility/1664601518_Intercom Facility.png<br>Lift/1664602002_Lift.png<br>Meditation Area/1664602190_Meditation Area.png<br>Piped Gas/1664602417_Piped Gas.png<br>Security Guards/1664603268_Security Guards.png<br>CCTV/1672917853_5396088-200.png<br>Visitor Parking/1672926445_Visitor Parking.png<br>Car Parking/1672997365_IconCar Parking.png<br>Yoga Area/1673244848_Yoga Area.png<br>Party Lawn/1673246128_Party Lawn.png<br>Jogging Track/1673335476_Jogging Track.png<br>Fire Fighting/1673501533_Fire Fighting.png<br>Pergola Sitting/1673679586_pergola sitting.png<br>Intercom/1674108257_Intercom.png', '<p><span class=\"selectable-text copyable-text\">2 Majestic Wings of 22 Storey2 Majestic Wings of 22 Storey</span></p><p><span style=\"background-color: transparent; font-size: 0.85rem;\">Near to the famous Saibaba Temple</span></p><p><span class=\"selectable-text copyable-text\">A stone’s throw away from Vikhroli Railway St</span></p><p><span class=\"selectable-text copyable-text\">Banks, Schools, Colleges, Public Garden&nbsp;</span><span style=\"background-color: transparent; font-size: 0.85rem;\">markets, and Hospitals in the vicinity</span></p><p><span class=\"selectable-text copyable-text\">Designer Entrance with Concierge Desk</span></p><p><span class=\"selectable-text copyable-text\">Clear the MHADA plot.</span></p><p><span class=\"selectable-text copyable-text\">Intelligent use of apartment space</span></p><p><span class=\"selectable-text copyable-text\">Thoughtfully chosen modern amenities and&nbsp;</span><span style=\"background-color: transparent; font-size: 0.85rem;\">a place you can truly call a home</span></p><p><span class=\"selectable-text copyable-text\">Unobstructed view of Eastern Exp. Highway&nbsp;</span><span style=\"background-color: transparent; font-size: 0.85rem;\">and widely spread Mangroves</span></p><p><span class=\"selectable-text copyable-text\">Elevated rooftop amenities</span></p>', NULL, '64662908e17b7.jpeg', '646629d110876.jpeg', NULL, '646626dccdeae.png', NULL, 'https://www.youtube.com/watch?v=uPDyOD8qjYU', 0, 0, 1, 1, 1, 0, NULL, '<ul><li>Shreenath Hospital</li><li>Aastha Hospital</li><li>Ruby Hospital</li></ul>', '<ul><li>Veekays English High School</li><li>Siddhivinayak School</li><li>National High School</li></ul>', '<ul><li>Punjab &amp; Maharashtra Co-operative Bank</li><li>Unity Small Finance</li><li>State Bank Of India&nbsp;</li></ul>', '<p>International Airport-20 Mins</p>', NULL, 1, '2023-05-18 13:36:31', '2023-05-18 17:36:31'),
(11, 81, 1, NULL, 3, 1, 3, 7, '2, 3', '2025-03-01', NULL, 'P51800034025', 'Romell Serene', '2 Bhk - 610 Sq.Ft  || 3 Bhk - 845 Sq.Ft', 'romell-serene', 'At Romell Serene, We Give You The Opportunity To Reclaim Your Space And Cherish The Good Old Days With Traditional Games That You’Ve Only Grown Up Listening To. From A Mini Multi-Purpose Court To The Ludo Board And Even Hopscotch, Romell Serene Blends The Best Of Both Worlds – Old And New With A Comfortable Space For Everyone In The House.\r\nIndulge In This Trip Down Memory Lane And Enjoy All The Perks We Have In Store For You As We Combine Elegant Amenities With The Uniqueness Of This Wonderful Location.', 'Romell Serene, Behind Holy Cross Ground, Off Holy Cross Street, I.C Colony, Borivali West, Mumbai 400103 Maharashtra India', 'Romell Serene, Holy Cross Road, D-WING, I C Colony, Extension, Borivali West, Mumbai, Maharashtra, India', '19.2505297', '72.84940879999999', '2 & 3 Bhk Homes', '1.83 Cr All Incl', '17', 'Borivali West', 'Air Conditioned/1664538021_Air Conditioned.png<br>Fire Extinguisher/1664600782_Fire Extinguisher.png<br>Gazebo/1664600972_Gazebo.png<br>Gym/1664601264_Gym.png<br>Indoor Games/1664601325_Indoor Games.png<br>Intercom Facility/1664601518_Intercom Facility.png<br>Internet Wi-Fi/1664601570_Internet Wi-Fi.png<br>Laundry Service/1664601850_Laundry Service.png<br>Lift/1664602002_Lift.png<br>Security Guards/1664603268_Security Guards.png<br>CCTV/1672917853_5396088-200.png<br>Visitor Parking/1672926445_Visitor Parking.png<br>Car Parking/1672997365_IconCar Parking.png<br>Yoga Area/1673244848_Yoga Area.png<br>Multipurpose Open Lawn/1673335203_Multipurpose Open Lawn.png<br>Fire Fighting/1673501533_Fire Fighting.png', '<p>Romell Serene Is Ready To Become The Newest Landmark At I.C. Colony, Borivali West With Spacious And Exclusive 2 &amp; 3 Bhk Residences In Store.</p><div><br></div><div>Highlights The Rare Luxury Of Open Spaces</div><div>Calm Yet Connected Location</div><div>Freehold Land</div><div>Complete Safety &amp; Security</div><div><div>Amenities – Mini Multi-Purpose Court, Ludo Board, Gazebo, Fitness Centre, Among Others&nbsp;<span style=\"background-color: transparent; font-size: 0.85rem;\">The Romell Promise – Think Oc, Think Romell</span></div></div>', NULL, '6466373c3bc0a.png', NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=nfxPSEB1MW0', 0, 0, 1, 1, 1, 1, 'Pay 30% Now & Rest On Oc', '<ul><li><span class=\"selectable-text copyable-text\">Sharvil Maternity, Orthopedic &amp; Surgical Hospital</span></li><li><span style=\"background-color: transparent; font-size: 0.85rem;\">Silverline Hospital</span></li><li><span class=\"selectable-text copyable-text\">Sushil Hospital</span></li></ul>', '<ul><li><span class=\"selectable-text copyable-text\">VIBGYOR High, Borivali | CBSE &amp; CISCE School</span></li><li><span style=\"background-color: transparent; font-size: 0.85rem;\">Infant Jesus English Medium School</span></li><li><span class=\"selectable-text copyable-text\">Mary Immaculate Girls\' High School</span></li></ul>', '<ul><li><span class=\"selectable-text copyable-text\">State Bank of India</span></li><li><span style=\"background-color: transparent; font-size: 0.85rem;\">Bank of Maharashtra</span></li><li><span class=\"selectable-text copyable-text\">Federal Bank</span></li></ul>', '<p><span class=\"selectable-text copyable-text\">Chhatrapati Shivaji Maharaj International Airport</span></p>', NULL, 1, '2023-05-18 14:34:23', '2023-05-18 18:34:23'),
(12, 81, 1, NULL, 3, 1, 3, 7, '1, 2, 3', '2026-09-30', '2022-04-01', 'P51800023625', 'Romell Orbis', '426 | 612 | 848', 'romell-orbis', 'Welcome To Romell Orbis – Surrounded By Good Life\r\nWith The Aim To Transform The Hub Of Andheri East And Give Your Life A Seamless 360 Degree Upgrade, We Bring Another Stellar Structure With Romell Orbis!\r\n\r\nCentrally Located, It Holds The Key To Connectivity And Convenience And Makes Accessibility A Superpower. A Fine Upgrade To Experience The Best Of Everything At Your Doorstep.', 'Romell Orbis, Mogra Village, Close To Sher-E-Punjab, Near Meghwadi Police Station, Andheri East, Mumbai 400069 Maharashtra India', 'Romell Orbis, Shivaji Nagar, Shankarwadi, Andheri East, Mumbai, Maharashtra, India', '19.1312027', '72.86056549999999', '1, 2 & 3 Bhk Homes', '1.19 Cr All Incl', '17', 'Andheri East', 'Air Conditioned/1664538021_Air Conditioned.png<br>DTH/1664600731_DTH.png<br>Fire Extinguisher/1664600782_Fire Extinguisher.png<br>Gym/1664601264_Gym.png<br>Intercom Facility/1664601518_Intercom Facility.png<br>Internet Wi-Fi/1664601570_Internet Wi-Fi.png<br>Laundry Service/1664601850_Laundry Service.png<br>Lift/1664602002_Lift.png<br>Meditation Area/1664602190_Meditation Area.png<br>Security Guards/1664603268_Security Guards.png<br>CCTV/1672917853_5396088-200.png<br>Swimming Pool/1672926431_Swimming Pool.png<br>Visitor Parking/1672926445_Visitor Parking.png<br>Car Parking/1672997365_IconCar Parking.png<br>Senior Citizen Corner/1673245611_Senior Citizen Corner.png<br>High Speed Elevators/1673268235_High Speed Elevators.png<br>Senior Citizen Area/1673328235_Senior Citizen Area.png<br>Fire Fighting/1673501533_Fire Fighting.png<br>Basket Ball Court/1673952516_basket Ball Court.png<br>Intercom/1674108257_Intercom.png', '<p><br></p>', NULL, '646635f7ce6cc.png', '64663608c7d75.png', NULL, NULL, NULL, 'https://www.youtube.com/watch?v=XOqICgVI2Kk', 0, 0, 1, 1, 1, 1, NULL, '<ul><li><span class=\"selectable-text copyable-text\">Shakuntala Memorial Hospital</span></li><li><span style=\"background-color: transparent; font-size: 0.85rem;\">Dr Phadke’s Hospital</span></li><li><span class=\"selectable-text copyable-text\">Shalyak Hospital</span></li></ul>', '<ul><li><span class=\"selectable-text copyable-text\">Meghwadi Municipal School</span></li><li><span style=\"background-color: transparent; font-size: 0.85rem;\">Swami Vivekanand High School</span></li><li><span class=\"selectable-text copyable-text\">Courage English High School</span></li></ul>', '<ul><li><span class=\"selectable-text copyable-text\">Axis Bank</span></li><li><span class=\"selectable-text copyable-text\">Punjab National Bank</span></li><li><span class=\"selectable-text copyable-text\">HDFC Bank</span></li></ul>', '<p><span class=\"selectable-text copyable-text\">Chhatrapati Shivaji Maharaj International Airport</span></p>', NULL, 1, '2023-05-18 14:28:24', '2023-05-18 18:28:24');

-- --------------------------------------------------------

--
-- Table structure for table `project_amenities`
--

CREATE TABLE `project_amenities` (
  `id` int(11) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_amenities`
--

INSERT INTO `project_amenities` (`id`, `path`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(68, '1664538021_Air Conditioned.png', 'Air Conditioned', 'air-conditioned', '2022-09-30 06:10:21', '2022-09-30 06:10:21'),
(69, '1664538101_Banquet Hall.png', 'Banquet Hall', 'banquet-hall', '2022-09-30 06:11:41', '2022-09-30 06:11:41'),
(70, '1664538261_Cafeteria.png', 'Cafeteria', 'cafeteria', '2022-09-30 06:14:21', '2022-09-30 06:14:21'),
(71, '1664544929_Club House.png', 'Club House', 'club-house', '2022-09-30 08:05:29', '2022-09-30 08:05:29'),
(72, '1664545166_Cricket Turf.png', 'Cricket Turf', 'cricket-turf', '2022-09-30 08:09:26', '2022-09-30 08:09:26'),
(73, '1664545247_Cycling.png', 'Cycling', 'cycling', '2022-09-30 08:10:47', '2022-09-30 08:10:47'),
(74, '1665401938_Jogging.png', 'Jogging Park', 'jogging-park', '2022-09-30 23:34:17', '2022-10-10 03:38:58'),
(75, '1664600731_DTH.png', 'DTH', 'dth', '2022-09-30 23:35:31', '2022-09-30 23:35:31'),
(76, '1664600782_Fire Extinguisher.png', 'Fire Extinguisher', 'fire-extinguisher', '2022-09-30 23:36:22', '2022-09-30 23:36:22'),
(77, '1664600878_Flower Garden.png', 'Flower Garden', 'flower-garden', '2022-09-30 23:37:09', '2022-09-30 23:37:58'),
(78, '1664600972_Gazebo.png', 'Gazebo', 'gazebo', '2022-09-30 23:39:32', '2022-09-30 23:39:32'),
(79, '1664601264_Gym.png', 'Gym', 'gym', '2022-09-30 23:44:24', '2022-09-30 23:44:24'),
(80, '1664601325_Indoor Games.png', 'Indoor Games', 'indoor-games', '2022-09-30 23:45:25', '2022-09-30 23:45:25'),
(81, '1664601439_Indoor Squash.png', 'Indoor Squash', 'indoor-squash', '2022-09-30 23:47:19', '2022-09-30 23:47:19'),
(82, '1664601518_Intercom Facility.png', 'Intercom Facility', 'intercom-facility', '2022-09-30 23:48:38', '2022-09-30 23:48:38'),
(83, '1664601570_Internet Wi-Fi.png', 'Internet Wi-Fi', 'internet-wi-fi', '2022-09-30 23:49:30', '2022-09-30 23:49:30'),
(84, '1664601621_Jacuzzi.png', 'Jacuzzi', 'jacuzzi', '2022-09-30 23:50:21', '2022-09-30 23:50:21'),
(85, '1664601661_Kids Pool.png', 'Kids Pool', 'kids-pool', '2022-09-30 23:51:01', '2022-09-30 23:51:01'),
(86, '1664601802_Landscape.png', 'Landscape', 'landscape', '2022-09-30 23:53:22', '2022-09-30 23:53:22'),
(87, '1664601850_Laundry Service.png', 'Laundry Service', 'laundry-service', '2022-09-30 23:54:10', '2022-09-30 23:54:10'),
(88, '1664602002_Lift.png', 'Lift', 'lift', '2022-09-30 23:56:42', '2022-09-30 23:56:42'),
(89, '1664602050_Lobby.png', 'Lobby', 'lobby', '2022-09-30 23:57:30', '2022-09-30 23:57:30'),
(90, '1664602129_Lounge.png', 'Lounge', 'lounge', '2022-09-30 23:58:49', '2022-09-30 23:58:49'),
(91, '1664602190_Meditation Area.png', 'Meditation Area', 'meditation-area', '2022-09-30 23:59:50', '2022-09-30 23:59:50'),
(92, '1664602417_Piped Gas.png', 'Piped Gas', 'piped-gas', '2022-10-01 00:03:37', '2022-10-01 00:03:37'),
(93, '1664602608_Power Back Up.png', 'Power Back Up', 'power-back-up', '2022-10-01 00:06:48', '2022-10-01 00:06:48'),
(94, '1664602734_Terrace Garden.png', 'Terrace Garden', 'terrace-garden', '2022-10-01 00:08:54', '2022-10-01 00:08:54'),
(95, '1664602828_Rain Storage.png', 'Rain Storage', 'rain-storage', '2022-10-01 00:10:28', '2022-10-01 00:10:28'),
(96, '1664602876_Recreational Pool.png', 'Recreational Pool', 'recreational-pool', '2022-10-01 00:11:16', '2022-10-01 00:11:16'),
(97, '1664602931_Reserved Parking.png', 'Reserved Parking', 'reserved-parking', '2022-10-01 00:12:11', '2022-10-01 00:12:11'),
(98, '1664603268_Security Guards.png', 'Security Guards', 'security-guards', '2022-10-01 00:17:48', '2022-10-01 00:17:48'),
(99, '1669103349_860004-200.png', 'Sleeping Pods', 'sleeping-pods', '2022-11-21 23:49:09', '2022-11-21 23:49:09'),
(100, '1672917853_5396088-200.png', 'CCTV', 'cctv', '2023-01-05 03:24:13', '2023-01-05 03:24:13'),
(101, '1672926130_Multipurpose hall.png', 'Multipurpose Hall', 'multipurpose-hall', '2023-01-05 05:42:10', '2023-01-05 05:42:10'),
(102, '1672926431_Swimming Pool.png', 'Swimming Pool', 'swimming-pool', '2023-01-05 05:47:11', '2023-01-05 05:47:11'),
(103, '1672926445_Visitor Parking.png', 'Visitor Parking', 'visitor-parking', '2023-01-05 05:47:25', '2023-01-05 05:47:25'),
(104, '1672997365_IconCar Parking.png', 'Car Parking', 'car-parking', '2023-01-06 01:29:25', '2023-01-06 01:29:25'),
(105, '1673244620_Children Play Area.png', 'Children Play Area', 'children-play-area', '2023-01-08 22:10:20', '2023-01-08 22:10:20'),
(106, '1673244746_Aerobics Area.png', 'Aerobics Area', 'aerobics-area', '2023-01-08 22:12:26', '2023-01-08 22:12:26'),
(107, '1673244848_Yoga Area.png', 'Yoga Area', 'yoga-area', '2023-01-08 22:14:08', '2023-01-08 22:14:08'),
(108, '1673245611_Senior Citizen Corner.png', 'Senior Citizen Corner', 'senior-citizen-corner', '2023-01-08 22:26:51', '2023-01-08 22:26:51'),
(109, '1673246103_Open Theatre.png', 'Open Theatre', 'open-theatre', '2023-01-08 22:35:03', '2023-01-08 22:35:03'),
(110, '1673246118_Walking Track.png', 'Walking Track', 'walking-track', '2023-01-08 22:35:18', '2023-01-08 22:35:18'),
(111, '1673246128_Party Lawn.png', 'Party Lawn', 'party-lawn', '2023-01-08 22:35:28', '2023-01-08 22:35:28'),
(112, '1673246423_Library.png', 'Library', 'library', '2023-01-08 22:40:23', '2023-01-08 22:40:23'),
(113, '1673246939_Grand entrance lobby.png', 'Grand Entrance Lobby', 'grand-entrance-lobby', '2023-01-08 22:40:34', '2023-01-08 22:48:59'),
(114, '1673246442_Outdoor Games.png', 'Outdoor Games', 'outdoor-games', '2023-01-08 22:40:42', '2023-01-08 22:40:42'),
(115, '1673262051_puzzle parking.png', 'Puzzle Parking', 'puzzle-parking', '2023-01-09 03:00:51', '2023-01-09 03:00:51'),
(116, '1673267119_Reception.png', 'Reception', 'reception', '2023-01-09 04:25:19', '2023-01-09 04:25:19'),
(117, '1673267128_Waiting Lounge.png', 'Waiting Lounge', 'waiting-lounge', '2023-01-09 04:25:28', '2023-01-09 04:25:28'),
(118, '1673268235_High Speed Elevators.png', 'High Speed Elevators', 'high-speed-elevators', '2023-01-09 04:43:55', '2023-01-09 04:43:55'),
(119, '1673270941_Table Tennis.png', 'Table Tennis', 'table-tennis', '2023-01-09 05:29:01', '2023-01-09 05:29:01'),
(120, '1673270952_pool table.png', 'Pool Table', 'pool-table', '2023-01-09 05:29:12', '2023-01-09 05:29:12'),
(121, '1673270965_Carrom.png', 'Carrom', 'carrom', '2023-01-09 05:29:25', '2023-01-09 05:29:25'),
(122, '1673327965_Sky Garden.png', 'Sky Garden', 'sky-garden', '2023-01-09 21:19:25', '2023-01-09 21:19:25'),
(123, '1673328235_Senior Citizen Area.png', 'Senior Citizen Area', 'senior-citizen-area', '2023-01-09 21:23:55', '2023-01-09 21:23:55'),
(124, '1673334300_Fitness Centre.png', 'Fitness Centre', 'fitness-centre', '2023-01-09 23:05:00', '2023-01-09 23:05:00'),
(125, '1673334470_Business Lounge.png', 'Business Lounge', 'business-lounge', '2023-01-09 23:07:50', '2023-01-09 23:07:50'),
(126, '1673334646_Society Office.png', 'Society Office', 'society-office', '2023-01-09 23:10:46', '2023-01-09 23:10:46'),
(127, '1673334975_Outdoor Play Area.png', 'Outdoor Play Area', 'outdoor-play-area', '2023-01-09 23:16:15', '2023-01-09 23:16:15'),
(128, '1673335203_Multipurpose Open Lawn.png', 'Multipurpose Open Lawn', 'multipurpose-open-lawn', '2023-01-09 23:20:03', '2023-01-09 23:20:03'),
(129, '1673335283_Amphitheatre.png', 'Amphitheatre', 'amphitheatre', '2023-01-09 23:21:23', '2023-01-09 23:21:23'),
(130, '1673335384_Kids Play Area.png', 'Kids Play Area', 'kids-play-area', '2023-01-09 23:23:04', '2023-01-09 23:23:04'),
(131, '1673335476_Jogging Track.png', 'Jogging Track', 'jogging-track', '2023-01-09 23:24:36', '2023-01-09 23:24:36'),
(132, '1673347638_AC Entrance Lobby.png', 'AC Entrance Lobby', 'ac-entrance-lobby', '2023-01-10 02:47:18', '2023-01-10 02:47:18'),
(134, '1673422273_Recreational Area.png', 'Recreational Area', 'recreational-area', '2023-01-10 23:31:13', '2023-01-10 23:31:13'),
(135, '1673422282_Sky Lounge.png', 'Sky Lounge', 'sky-lounge', '2023-01-10 23:31:22', '2023-01-10 23:31:22'),
(136, '1673422536_Landscaped Terrace Garden.png', 'Landscaped Terrace Garden', 'landscaped-terrace-garden', '2023-01-10 23:35:36', '2023-01-10 23:35:36'),
(138, '1673501533_Fire Fighting.png', 'Fire Fighting', 'fire-fighting', '2023-01-11 21:32:13', '2023-01-11 21:32:13'),
(139, '1673501553_Play Ground.png', 'Play Ground', 'play-ground', '2023-01-11 21:32:33', '2023-01-11 21:32:33'),
(140, '1673501561_Rain Water Harvesting.png', 'Rain Water Harvesting', 'rain-water-harvesting', '2023-01-11 21:32:41', '2023-01-11 21:32:41'),
(141, '1673501569_Semi Furnished Interior.png', 'Semi Furnished Interior', 'semi-furnished-interior', '2023-01-11 21:32:49', '2023-01-11 21:32:49'),
(142, '1673679586_pergola sitting.png', 'Pergola Sitting', 'pergola-sitting', '2023-01-13 22:59:46', '2023-01-13 22:59:46'),
(143, '1673952516_basket Ball Court.png', 'Basket Ball Court', 'basket-ball-court', '2023-01-17 02:48:36', '2023-01-17 02:48:36'),
(144, '1673957993_Activity Room.png', 'Activity Room', 'activity-room', '2023-01-17 04:19:53', '2023-01-17 04:19:53'),
(145, '1673958029_Crossfit Zumba Centre.png', 'Crossfit Zumba Centre', 'crossfit-zumba-centre', '2023-01-17 04:20:29', '2023-01-17 04:20:29'),
(146, '1673958039_Dance Room.png', 'Dance Room', 'dance-room', '2023-01-17 04:20:39', '2023-01-17 04:20:39'),
(147, '1673958048_Golf Simulator.png', 'Golf Simulator', 'golf-simulator', '2023-01-17 04:20:48', '2023-01-17 04:20:48'),
(148, '1673958057_Infinity Pool.png', 'Infinity Pool', 'infinity-pool', '2023-01-17 04:20:57', '2023-01-17 04:20:57'),
(149, '1673958067_Landscape Garden and Water Bodies.png', 'Landscape Garden and Water Bodies', 'landscape-garden-and-water-bodies', '2023-01-17 04:21:07', '2023-01-17 04:21:07'),
(150, '1673958075_Music Room.png', 'Music Room', 'music-room', '2023-01-17 04:21:15', '2023-01-17 04:21:15'),
(151, '1673958083_Pool Deck.png', 'Pool Deck', 'pool-deck', '2023-01-17 04:21:23', '2023-01-17 04:21:23'),
(152, '1673958090_Seating Deck.png', 'Seating Deck', 'seating-deck', '2023-01-17 04:21:30', '2023-01-17 04:21:30'),
(153, '1673958097_Spa with Steam Room.png', 'Spa with Steam Room', 'spa-with-steam-room', '2023-01-17 04:21:37', '2023-01-17 04:21:37'),
(154, '1673958105_Spa.png', 'Spa', 'spa', '2023-01-17 04:21:45', '2023-01-17 04:21:45'),
(155, '1673958111_Squash Court.png', 'Squash Court', 'squash-court', '2023-01-17 04:21:51', '2023-01-17 04:21:51'),
(156, '1673958119_Steam Room.png', 'Steam Room', 'steam-room', '2023-01-17 04:21:59', '2023-01-17 04:21:59'),
(157, '1673961675_Box Office.png', 'Box Office', 'box-office', '2023-01-17 05:21:15', '2023-01-17 05:21:15'),
(158, '1673961731_Digital Fitness Workout.png', 'Digital Fitness Workout', 'digital-fitness-workout', '2023-01-17 05:22:11', '2023-01-17 05:22:11'),
(159, '1673961745_Green Lawn.png', 'Green Lawn', 'green-lawn', '2023-01-17 05:22:25', '2023-01-17 05:22:25'),
(160, '1674106502_Indoor Sports.png', 'Indoor Sports', 'indoor-sports', '2023-01-18 21:35:02', '2023-01-18 21:35:02'),
(163, '1674108232_Automated Parking.png', 'Automated Parking', 'automated-parking', '2023-01-18 22:03:52', '2023-01-18 22:03:52'),
(165, '1674108249_Designer Elevators.png', 'Designer Elevators', 'designer-elevators', '2023-01-18 22:04:09', '2023-01-18 22:04:09'),
(166, '1674108257_Intercom.png', 'Intercom', 'intercom', '2023-01-18 22:04:17', '2023-01-18 22:04:17'),
(167, '1674108265_Play Area.png', 'Play Area', 'play-area', '2023-01-18 22:04:25', '2023-01-18 22:04:25'),
(168, '1674108272_Rainwater Harvesting.png', 'Rainwater Harvesting', 'rainwater-harvesting', '2023-01-18 22:04:32', '2023-01-18 22:04:32'),
(169, '1674108281_Recreation Area.png', 'Recreation Area', 'recreation-area', '2023-01-18 22:04:41', '2023-01-18 22:04:41'),
(170, '1674108290_Restaurant.png', 'Restaurant', 'restaurant', '2023-01-18 22:04:50', '2023-01-18 22:04:50'),
(171, '1674108297_Retail.png', 'Retail', 'retail', '2023-01-18 22:04:57', '2023-01-18 22:04:57'),
(172, '1674108312_State-Of-The-Art-Security.png', 'State-Of-The-Art-Security', 'state-of-the-art-security', '2023-01-18 22:05:12', '2023-01-18 22:05:12');

-- --------------------------------------------------------

--
-- Table structure for table `project_floor_plans`
--

CREATE TABLE `project_floor_plans` (
  `id` int(11) NOT NULL,
  `projects_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `path` varchar(500) DEFAULT NULL,
  `orders` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_floor_plans`
--

INSERT INTO `project_floor_plans` (`id`, `projects_id`, `title`, `price`, `path`, `orders`, `created_at`, `updated_at`) VALUES
(2, 4, NULL, NULL, '6465efd3ce144.jpeg', NULL, '2023-05-18 13:28:52', '2023-05-18 13:28:52'),
(3, 4, NULL, NULL, '6465efd5be99d.jpeg', NULL, '2023-05-18 13:28:53', '2023-05-18 13:28:53'),
(4, 4, NULL, NULL, '6465efd679425.jpeg', NULL, '2023-05-18 13:28:54', '2023-05-18 13:28:54'),
(5, 4, NULL, NULL, '6465efda3b708.jpeg', NULL, '2023-05-18 13:28:58', '2023-05-18 13:28:58'),
(6, 7, NULL, NULL, '646600a475091.jpeg', NULL, '2023-05-18 14:40:36', '2023-05-18 14:40:36'),
(7, 7, NULL, NULL, '646600a476219.jpeg', NULL, '2023-05-18 14:40:36', '2023-05-18 14:40:36'),
(8, 7, NULL, NULL, '646600a5617bb.jpeg', NULL, '2023-05-18 14:40:37', '2023-05-18 14:40:37'),
(9, 7, NULL, NULL, '646600a565db2.jpeg', NULL, '2023-05-18 14:40:37', '2023-05-18 14:40:37'),
(13, 11, NULL, NULL, '64662835c4ab7.jpeg', NULL, '2023-05-18 17:29:25', '2023-05-18 17:29:25'),
(14, 11, NULL, NULL, '64662835c7bee.jpeg', NULL, '2023-05-18 17:29:25', '2023-05-18 17:29:25'),
(15, 10, NULL, NULL, '646628b3aa1fa.jpeg', NULL, '2023-05-18 17:31:31', '2023-05-18 17:31:31'),
(16, 10, NULL, NULL, '646628b3c1df4.jpeg', NULL, '2023-05-18 17:31:31', '2023-05-18 17:31:31'),
(17, 10, NULL, NULL, '646628b4b9881.jpeg', NULL, '2023-05-18 17:31:32', '2023-05-18 17:31:32'),
(18, 10, NULL, NULL, '646628b51c350.jpeg', NULL, '2023-05-18 17:31:33', '2023-05-18 17:31:33'),
(19, 12, NULL, NULL, '64662d143ea7c.jpeg', NULL, '2023-05-18 17:50:12', '2023-05-18 17:50:12'),
(20, 12, NULL, NULL, '64662d1513186.jpeg', NULL, '2023-05-18 17:50:13', '2023-05-18 17:50:13'),
(21, 12, NULL, NULL, '64662d15e8bf0.jpeg', NULL, '2023-05-18 17:50:13', '2023-05-18 17:50:13');

-- --------------------------------------------------------

--
-- Table structure for table `project_galleries`
--

CREATE TABLE `project_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `projects_id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orders` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_galleries`
--

INSERT INTO `project_galleries` (`id`, `projects_id`, `path`, `orders`, `created_at`, `updated_at`) VALUES
(1, 4, '6465efbaed80d.jpeg', NULL, '2023-05-18 13:28:26', '2023-05-18 13:28:26'),
(2, 4, '6465efbb405de.jpeg', NULL, '2023-05-18 13:28:27', '2023-05-18 13:28:27'),
(3, 4, '6465efbba3a70.jpeg', NULL, '2023-05-18 13:28:27', '2023-05-18 13:28:27'),
(4, 7, '6466003c4d449.jpeg', NULL, '2023-05-18 14:38:52', '2023-05-18 14:38:52'),
(5, 7, '6466003c7ffc6.jpeg', NULL, '2023-05-18 14:38:52', '2023-05-18 14:38:52'),
(6, 7, '6466003d5f98e.jpeg', NULL, '2023-05-18 14:38:53', '2023-05-18 14:38:53'),
(7, 7, '6466003d634cb.jpeg', NULL, '2023-05-18 14:38:53', '2023-05-18 14:38:53'),
(8, 7, '6466003e17b4a.jpeg', NULL, '2023-05-18 14:38:54', '2023-05-18 14:38:54'),
(9, 7, '6466003e3cb98.jpeg', NULL, '2023-05-18 14:38:54', '2023-05-18 14:38:54'),
(10, 7, '6466003f01a95.jpeg', NULL, '2023-05-18 14:38:55', '2023-05-18 14:38:55'),
(11, 7, '6466003f0412c.jpeg', NULL, '2023-05-18 14:38:55', '2023-05-18 14:38:55'),
(12, 7, '6466003fc5f5a.jpeg', NULL, '2023-05-18 14:38:55', '2023-05-18 14:38:55'),
(13, 7, '6466003fd500c.jpeg', NULL, '2023-05-18 14:38:55', '2023-05-18 14:38:55'),
(14, 7, '64660040a6977.jpeg', NULL, '2023-05-18 14:38:56', '2023-05-18 14:38:56'),
(15, 7, '64660040a8643.jpeg', NULL, '2023-05-18 14:38:56', '2023-05-18 14:38:56'),
(28, 11, '646627fcce89e.jpeg', NULL, '2023-05-18 17:28:28', '2023-05-18 17:28:28'),
(29, 11, '646627fde3012.jpeg', NULL, '2023-05-18 17:28:29', '2023-05-18 17:28:29'),
(30, 11, '646627ff96d8c.jpeg', NULL, '2023-05-18 17:28:31', '2023-05-18 17:28:31'),
(31, 11, '646627ffae11e.jpeg', NULL, '2023-05-18 17:28:31', '2023-05-18 17:28:31'),
(32, 11, '64662800bdc76.jpeg', NULL, '2023-05-18 17:28:32', '2023-05-18 17:28:32'),
(33, 11, '646628019ec80.jpeg', NULL, '2023-05-18 17:28:33', '2023-05-18 17:28:33'),
(34, 10, '646628968b8b8.jpeg', NULL, '2023-05-18 17:31:02', '2023-05-18 17:31:02'),
(35, 10, '646628979d8e9.jpeg', NULL, '2023-05-18 17:31:03', '2023-05-18 17:31:03'),
(36, 10, '646628987fa6b.jpeg', NULL, '2023-05-18 17:31:04', '2023-05-18 17:31:04'),
(37, 10, '6466289987c5a.jpeg', NULL, '2023-05-18 17:31:05', '2023-05-18 17:31:05'),
(38, 10, '6466289a6b134.jpeg', NULL, '2023-05-18 17:31:06', '2023-05-18 17:31:06'),
(39, 10, '6466289b3b1ec.jpeg', NULL, '2023-05-18 17:31:07', '2023-05-18 17:31:07'),
(40, 10, '6466289befb8c.jpeg', NULL, '2023-05-18 17:31:07', '2023-05-18 17:31:07'),
(41, 10, '6466289cb1fd4.jpeg', NULL, '2023-05-18 17:31:08', '2023-05-18 17:31:08'),
(42, 10, '6466289daf0fc.jpeg', NULL, '2023-05-18 17:31:09', '2023-05-18 17:31:09'),
(43, 10, '6466289dc8370.jpeg', NULL, '2023-05-18 17:31:09', '2023-05-18 17:31:09'),
(44, 10, '6466289ea1d5c.jpeg', NULL, '2023-05-18 17:31:10', '2023-05-18 17:31:10'),
(45, 10, '6466289f7cd84.jpeg', NULL, '2023-05-18 17:31:11', '2023-05-18 17:31:11'),
(46, 10, '646628a28c4d9.jpeg', NULL, '2023-05-18 17:31:14', '2023-05-18 17:31:14'),
(47, 12, '64662cd3f3e32.jpeg', NULL, '2023-05-18 17:49:08', '2023-05-18 17:49:08'),
(48, 12, '64662cd6d9f16.jpeg', NULL, '2023-05-18 17:49:10', '2023-05-18 17:49:10'),
(49, 12, '64662cd70f69c.jpeg', NULL, '2023-05-18 17:49:11', '2023-05-18 17:49:11'),
(50, 12, '64662cda6895c.jpeg', NULL, '2023-05-18 17:49:14', '2023-05-18 17:49:14'),
(51, 12, '64662cdb8960c.jpeg', NULL, '2023-05-18 17:49:15', '2023-05-18 17:49:15'),
(52, 12, '64662cdce72a9.jpeg', NULL, '2023-05-18 17:49:16', '2023-05-18 17:49:16'),
(53, 12, '64662cddbb988.jpeg', NULL, '2023-05-18 17:49:17', '2023-05-18 17:49:17'),
(54, 12, '64662ce11b169.jpeg', NULL, '2023-05-18 17:49:21', '2023-05-18 17:49:21'),
(55, 12, '64662ce134845.jpeg', NULL, '2023-05-18 17:49:21', '2023-05-18 17:49:21'),
(56, 9, '646631cda5927.png', NULL, '2023-05-18 18:10:21', '2023-05-18 18:10:21'),
(57, 9, '646631ce6a85b.png', NULL, '2023-05-18 18:10:22', '2023-05-18 18:10:22'),
(58, 9, '646631d09dcb6.png', NULL, '2023-05-18 18:10:24', '2023-05-18 18:10:24'),
(59, 9, '646631d19cf5d.png', NULL, '2023-05-18 18:10:25', '2023-05-18 18:10:25'),
(60, 9, '646631d28a219.png', NULL, '2023-05-18 18:10:26', '2023-05-18 18:10:26'),
(61, 9, '646631d34cf36.png', NULL, '2023-05-18 18:10:27', '2023-05-18 18:10:27'),
(62, 9, '646631d4cf0c2.png', NULL, '2023-05-18 18:10:28', '2023-05-18 18:10:28'),
(63, 9, '646631d58d258.png', NULL, '2023-05-18 18:10:29', '2023-05-18 18:10:29'),
(64, 9, '646631d77fd04.png', NULL, '2023-05-18 18:10:31', '2023-05-18 18:10:31'),
(65, 9, '646631d85e421.png', NULL, '2023-05-18 18:10:32', '2023-05-18 18:10:32'),
(66, 9, '646631d93dbbe.png', NULL, '2023-05-18 18:10:33', '2023-05-18 18:10:33'),
(67, 9, '646631dd1ad8a.png', NULL, '2023-05-18 18:10:37', '2023-05-18 18:10:37'),
(68, 9, '646631dd36b89.png', NULL, '2023-05-18 18:10:37', '2023-05-18 18:10:37'),
(69, 9, '646631de2339b.png', NULL, '2023-05-18 18:10:38', '2023-05-18 18:10:38'),
(70, 9, '646631ded827a.png', NULL, '2023-05-18 18:10:38', '2023-05-18 18:10:38'),
(71, 9, '646631eb2a986.png', NULL, '2023-05-18 18:10:51', '2023-05-18 18:10:51');

-- --------------------------------------------------------

--
-- Table structure for table `project_leads`
--

CREATE TABLE `project_leads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `projects_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_loan` int(11) DEFAULT NULL,
  `site_visit` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_leads`
--

INSERT INTO `project_leads` (`id`, `projects_id`, `name`, `mobile`, `email`, `location`, `home_loan`, `site_visit`, `created_at`, `updated_at`) VALUES
(1, 7, 'Mohd Shakib Raza', '7017923028', 'Shakibraza2021@gmail.com', NULL, 0, 1, '2023-05-26 13:58:53', '2023-05-26 13:58:53'),
(2, 12, 'Mohd Shakib Raza', '7017923028', 'admin@gmail.com', NULL, 1, 1, '2023-05-26 14:25:31', '2023-05-26 14:25:31'),
(3, NULL, 'Mike Derri', '84481777568', 'no-replyhub@gmail.com', NULL, 0, 0, '2023-05-29 17:58:31', '2023-05-29 17:58:31'),
(4, NULL, 'Joshuajen', '82148467931', 'yasen.krasen.13+90449@mail.ru', NULL, 0, 0, '2023-06-02 12:17:22', '2023-06-02 12:17:22');

-- --------------------------------------------------------

--
-- Table structure for table `project_pdfs`
--

CREATE TABLE `project_pdfs` (
  `id` bigint(121) NOT NULL,
  `title` varchar(251) DEFAULT NULL,
  `price` varchar(251) DEFAULT NULL,
  `projects_id` int(11) DEFAULT NULL,
  `path` varchar(500) DEFAULT NULL,
  `orders` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_pdfs`
--

INSERT INTO `project_pdfs` (`id`, `title`, `price`, `projects_id`, `path`, `orders`, `created_at`, `updated_at`) VALUES
(6, NULL, NULL, 16, '6458a1119f991.pdf', NULL, '2023-05-08 11:13:21', '2023-05-08 11:13:21'),
(11, NULL, NULL, 3, '6464ce84483d0.pdf', NULL, '2023-05-17 16:54:28', '2023-05-17 16:54:28'),
(15, NULL, NULL, 5, '6464dd1d17ccd.pdf', NULL, '2023-05-17 17:56:45', '2023-05-17 17:56:45'),
(27, NULL, NULL, 4, '6465f158c2b24.pdf', NULL, '2023-05-18 13:35:25', '2023-05-18 13:35:25'),
(29, NULL, NULL, 7, '64660297b3f2b.pdf', NULL, '2023-05-18 14:49:00', '2023-05-18 14:49:00'),
(30, NULL, NULL, 10, '646628debb8ab.pdf', NULL, '2023-05-18 17:32:19', '2023-05-18 17:32:19'),
(31, NULL, NULL, 9, '6466324f4a42e.pdf', NULL, '2023-05-18 18:13:15', '2023-05-18 18:13:15');

-- --------------------------------------------------------

--
-- Table structure for table `project_pdf_form`
--

CREATE TABLE `project_pdf_form` (
  `id` bigint(121) NOT NULL,
  `name` varchar(251) NOT NULL,
  `email` varchar(251) NOT NULL,
  `mobile` varchar(251) NOT NULL,
  `date` date DEFAULT NULL,
  `property_type` varchar(200) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `budget` varchar(500) DEFAULT NULL,
  `form_area` varchar(251) DEFAULT NULL,
  `project_id` int(121) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_pdf_form`
--

INSERT INTO `project_pdf_form` (`id`, `name`, `email`, `mobile`, `date`, `property_type`, `location`, `budget`, `form_area`, `project_id`, `created_at`) VALUES
(1, 'Mohd Shakib Raza', 'Shakibraza2021@gmail.com', '7017923028', NULL, NULL, NULL, NULL, 'Home_Offer', NULL, '2023-05-26 09:54:05'),
(2, 'Mohd Shakib Raza', 'Shaqibraza367@gmail.com', '8513353253', NULL, NULL, NULL, NULL, 'Looking_Home', NULL, '2023-05-26 09:54:27'),
(3, 'Mohd Shakib Raza', 'web1.brandswitch@gmail.com', '8512596547', NULL, NULL, NULL, NULL, 'Sell_Home', NULL, '2023-05-26 09:54:48'),
(4, 'Mohd Shakib Raza', 'web1.brandswitch@gmail.com', '8512596547', NULL, NULL, NULL, NULL, 'Loan Inquiry', NULL, '2023-05-26 09:55:05'),
(5, 'Mohd Shakib Raza', 'Shakibraza2021@gmail.com', '7017923028', NULL, 'Sell', 'Mira Road', '2Cr', 'contact', NULL, '2023-05-26 09:55:33'),
(6, 'Mohd Shakib Raza', 'Shakibraza2021@gmail.com', '7017923028', NULL, NULL, NULL, NULL, 'Downlaod_PDF', 12, '2023-05-26 09:56:59'),
(7, 'Mohd Shakib Raza', 'admin@gmail.com', '7017923028', NULL, NULL, NULL, NULL, 'Sell_Home', NULL, '2023-05-26 10:21:55'),
(8, 'WkC3wbgF', 'F55s_generic_e1ca9504_teamupproperty.com@data-backup-store.com', 'j2fQarFM', NULL, NULL, 'EuL4ccQR', 'X5hq16WV', 'contact', NULL, '2023-05-26 12:40:47'),
(9, 'PCQreYwz', 'LGzu_generic_c451ef6d_teamupproperty.com@data-backup-store.com', '4gB81jSp', NULL, NULL, NULL, NULL, 'Looking_Home', NULL, '2023-05-26 12:40:51');

-- --------------------------------------------------------

--
-- Table structure for table `project_possessions`
--

CREATE TABLE `project_possessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_possessions`
--

INSERT INTO `project_possessions` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(6, 'Ready To Move', 'ready-to-move', '2022-04-14 06:57:09', '2022-04-14 06:57:09'),
(7, 'Under Construction', 'under-construction', '2022-04-14 06:57:16', '2022-04-14 06:57:16'),
(8, 'Nearing Possession', 'nearing-possession', '2022-04-14 23:42:47', '2023-04-17 23:01:45');

-- --------------------------------------------------------

--
-- Table structure for table `project_request`
--

CREATE TABLE `project_request` (
  `id` int(11) NOT NULL,
  `dname` varchar(255) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_request`
--

INSERT INTO `project_request` (`id`, `dname`, `pname`, `location`, `cname`, `mobile`, `email`, `created_at`, `updated_at`) VALUES
(5, 'Shakib Raza', 'Lodha Group', 'Mira Road', 'Shakib', '7017923028', 'Shakibraza2021@gmail.com', '2023-05-12 14:58:59', '2023-05-12 14:58:59'),
(8, 'House of Chavan', 'Chavan Advaitam', 'Kalyan West', 'Vvijay Korgaonkar', '9167719257', 'vijay@thehouseofchavan.com', '2023-05-27 11:58:52', '2023-05-27 11:58:52');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `locality_id` int(11) DEFAULT NULL,
  `area` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_for_id` int(20) NOT NULL,
  `property_category_id` int(11) NOT NULL,
  `property_type_id` int(11) NOT NULL,
  `property_status_id` int(11) DEFAULT NULL,
  `configuration_id` int(11) NOT NULL,
  `furnish_type_id` int(11) NOT NULL,
  `tenant_type_id` int(11) DEFAULT NULL,
  `cost_in_digit` int(11) DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `monthy_rent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `security_deposit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintenance` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `built_up` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carpet_area` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_address` text COLLATE utf8mb4_unicode_ci,
  `thumb_photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery_id` int(11) DEFAULT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `slug`, `user_id`, `city_id`, `locality_id`, `area`, `property_for_id`, `property_category_id`, `property_type_id`, `property_status_id`, `configuration_id`, `furnish_type_id`, `tenant_type_id`, `cost_in_digit`, `details`, `monthy_rent`, `security_deposit`, `maintenance`, `built_up`, `carpet_area`, `full_address`, `thumb_photo`, `gallery_id`, `lat`, `lng`, `views`, `status`, `created_at`, `updated_at`) VALUES
(5, 'slug', 24, 1, 3, 'Askok Nagar', 1, 1, 1, 1, 3, 1, NULL, 4500000, 'asbu ba ioa diah dioa dia dioadijoadb', NULL, NULL, '1000', '600', '450', NULL, NULL, NULL, NULL, NULL, 0, 1, '2020-01-10 05:10:04', '2020-01-10 05:10:04'),
(7, 'slug', 24, 1, 4, 'Ashok Nagar', 2, 1, 1, 1, 3, 1, 3, NULL, 'dfgdfg dfg dfg', '25000', '50000', '500', '1000', '850', 'S zdc zsc zxc zczc', NULL, NULL, NULL, NULL, 0, 1, '2020-01-10 05:25:36', '2020-01-10 05:25:36'),
(8, 'slug', 18, 1, 3, 'Ashok Nagar', 2, 1, 1, 1, 4, 1, 1, NULL, 'zsdcz  z dz z zc', '25000', '40000', '500', '750', '650', 'audgausgd hsah adh  h adih', NULL, NULL, NULL, NULL, 0, 1, '2020-01-10 05:32:51', '2020-01-10 05:32:51'),
(10, 'slug', 24, 3, 5, '456', 2, 2, 2, 3, 3, 2, 2, NULL, '456', '456', '456', '456', '456', '456', '456', NULL, NULL, NULL, NULL, 0, 1, '2020-01-10 06:18:20', '2020-01-10 06:19:54'),
(11, 'slug', 25, 1, 3, '123456', 1, 1, 1, 1, 3, 3, NULL, 23456, 'asds d ad', NULL, NULL, '45125', '25631', '25632', '123456', NULL, NULL, NULL, NULL, 0, 1, '2020-01-10 07:09:19', '2020-01-13 07:13:56'),
(15, 'slug', 25, 1, 4, 'marol Naka', 1, 1, 1, 3, 4, 2, NULL, 80000, 'Property for sale', NULL, NULL, '1000', '850', '750', 'adi asdjio as djaoijdoad', NULL, NULL, NULL, NULL, 0, 1, '2020-01-14 06:27:40', '2020-01-13 06:31:41'),
(17, 'slug', 24, 1, 11, 'Pratiksha Nagar', 1, 1, 1, 3, 4, 2, NULL, 6500000, '2BHK Flat', NULL, NULL, '2500', '790', '650', 'Blg No 16, Room No 210, Pratiksha Nagar, Sion, Mumbai', NULL, NULL, NULL, NULL, 0, 1, '2020-01-13 08:29:08', '2020-01-13 08:29:08'),
(18, 'slug', 24, 1, 3, 'Askok Nagar', 1, 1, 1, 1, 3, 1, NULL, 4500000, 'asbu ba ioa diah dioa dia dioadijoadb', NULL, NULL, '1000', '600', '450', NULL, NULL, NULL, NULL, NULL, 0, 1, '2020-01-10 05:10:04', '2020-01-10 05:10:04'),
(19, 'slug', 24, 1, 3, 'Askok Nagar', 1, 1, 1, 1, 3, 1, NULL, 4500000, 'asbu ba ioa diah dioa dia dioadijoadb', NULL, NULL, '1000', '600', '450', NULL, NULL, NULL, NULL, NULL, 0, 1, '2020-01-10 05:10:04', '2020-01-10 05:10:04'),
(20, 'slug', 24, 1, 3, 'Askok Nagar', 1, 1, 1, 1, 3, 1, NULL, 4500000, 'asbu ba ioa diah dioa dia dioadijoadb', NULL, NULL, '1000', '600', '450', NULL, NULL, NULL, NULL, NULL, 0, 1, '2020-01-10 05:10:04', '2020-01-10 05:10:04'),
(21, 'slug', 24, 1, 3, 'Askok Nagar', 1, 1, 1, 1, 3, 1, NULL, 4500000, 'asbu ba ioa diah dioa dia dioadijoadb', NULL, NULL, '1000', '600', '450', NULL, NULL, NULL, NULL, NULL, 0, 1, '2020-01-10 05:10:04', '2020-01-10 05:10:04'),
(22, 'slug', 24, 1, 3, 'Askok Nagar', 1, 1, 1, 1, 3, 1, NULL, 4500000, 'asbu ba ioa diah dioa dia dioadijoadb', NULL, NULL, '1000', '600', '450', NULL, NULL, NULL, NULL, NULL, 0, 1, '2020-01-10 05:10:04', '2020-01-10 05:10:04'),
(23, 'slug', 24, 1, 3, 'Askok Nagar', 1, 1, 1, 1, 3, 1, NULL, 4500000, 'asbu ba ioa diah dioa dia dioadijoadb', NULL, NULL, '1000', '600', '450', NULL, NULL, NULL, NULL, NULL, 0, 1, '2020-01-10 05:10:04', '2020-01-10 05:10:04'),
(24, 'slug', 24, 1, 11, 'Pratiksha Nagar', 1, 1, 1, 3, 4, 2, NULL, 6500000, '2BHK Flat', NULL, NULL, '2500', '790', '650', 'Blg No 16, Room No 210, Pratiksha Nagar, Sion, Mumbai', NULL, NULL, NULL, NULL, 0, 1, '2020-01-13 08:29:08', '2020-01-13 08:29:08'),
(25, 'slug', 24, 1, NULL, 'Sion, Mumbai, Maharashtra, India', 1, 1, 1, 1, 3, 1, NULL, 4500000, '1 BHK New Residential furnished house for sale at 45 lacs with carpet area 450 sqft in Mumbai', NULL, NULL, '1000', '600', '450', 'asd asd asd', NULL, NULL, '19.0390214', '72.86189519999999', 0, 1, '2020-01-10 05:10:04', '2020-01-17 02:01:44'),
(26, 'slug', 24, 1, 3, 'Askok Nagar', 1, 1, 1, 1, 3, 1, NULL, 4500000, 'asbu ba ioa diah dioa dia dioadijoadb', NULL, NULL, '1000', '600', '450', NULL, NULL, NULL, NULL, NULL, 0, 1, '2020-01-10 05:10:04', '2020-01-10 05:10:04'),
(27, 'slug', 8, 1, 3, 'Marol Naka', 1, 1, 1, 1, 3, 2, NULL, 450000, 'Property for Sale, Residential, House, New, 1 BHK, Semi Furnished', NULL, NULL, '560000', '450', '400', 'test kn i sdni', NULL, NULL, NULL, NULL, 0, 1, '2020-01-13 23:36:56', '2020-01-14 05:23:13'),
(28, 'slug', 26, 3, 6, 'Hinjewadi Naka', 2, 2, 1, 1, 5, 1, 2, NULL, '3BHK Villa for rent @ 25 Lacs', '2578000', '451245', '451245', '654', '456', 'asd liktyt gshet', NULL, NULL, NULL, NULL, 0, 0, '2020-01-14 23:30:09', '2020-01-14 23:33:08'),
(29, 'slug', 28, 1, NULL, 'Andheri East, Mumbai, Maharashtra, India', 1, 2, 1, 3, 3, 2, NULL, 4500000, 'asdas asd asd', NULL, NULL, '12000', '450', '300', 'ad a dasd asd a dasd adadd', NULL, NULL, NULL, NULL, 0, 1, '2020-01-16 23:39:39', '2020-01-16 23:39:39'),
(30, 'slug', 28, 3, NULL, 'Baner, Pune, Maharashtra, India', 1, 1, 1, 1, 3, 1, NULL, 4500000, 'asd ad asd ad ad asdadad  d', NULL, NULL, '1000', '780', '650', 'Baner, Pune, Maharashtra, India', NULL, NULL, '18.563996020475408', '73.77613763240205', 0, 1, '2020-01-17 00:33:55', '2020-01-17 00:45:06'),
(31, 'slug', 29, 3, NULL, 'Aundh, Pune, Maharashtra, India', 1, 1, 1, 3, 3, 2, NULL, 8000000, '1 BHK House for sell', NULL, NULL, '1000', '750', '650', 'Room No 210, Floor No 2, Plot No 5, Aundh, Pune - 411007', NULL, NULL, '18.561263345957325', '73.8068671349487', 0, 1, '2020-01-20 06:49:38', '2020-01-20 06:49:38'),
(32, 'slug', 24, 1, NULL, 'Hindmata, Dadar East, Mumbai, Maharashtra, India', 1, 1, 1, 3, 3, 1, NULL, 5900000, 'I want to sell reseal house @ price 5900000', NULL, NULL, '1000', '750', '560', 'Flat no 210, Floor no 2, Hindmata, Dadar East, Mumbai - 400021', NULL, NULL, '19.010105031983613', '72.84532067409668', 0, 1, '2020-01-28 01:57:51', '2020-01-28 01:57:51'),
(33, 'slug', 8, 3, NULL, 'Sion, Mumbai, Maharashtra, India', 1, 1, 1, 1, 3, 1, NULL, 4500000, 'OLD', NULL, NULL, '1200', '1200', '850', 'NEW ADDRESS', NULL, NULL, '19.0390214', '72.86189519999999', 0, 0, '2022-04-14 02:04:52', '2022-04-14 04:41:08'),
(34, 'slug', 8, 1, NULL, 'Airoli, Navi Mumbai, Maharashtra, India', 1, 1, 1, 1, 4, 1, NULL, 4500000, 'sadsadasd', NULL, NULL, '1200', '1200', '850', 'Flat No 304, Blacksmit Towner 1, Airoli, Navi Mumbai', NULL, NULL, '19.159014', '72.9985686', 0, 1, '2022-04-15 00:23:38', '2022-04-15 00:23:38'),
(35, 'slug', 64, 11, NULL, 'Ghantali, Thane West, Thane, Maharashtra, India', 1, 3, 1, 3, 3, 2, NULL, NULL, 'testing details', NULL, NULL, '15000', '750', '100', 'Ghantalil Thane', NULL, NULL, '19.1905634', '72.9741067', 0, 1, '2022-10-31 21:30:27', '2022-10-31 21:30:27'),
(36, 'slug', 65, 3, NULL, 'Sadashiv Peth, Pune, Maharashtra, India', 1, 3, 1, 1, 3, 3, NULL, 1, 'Testing Broker User', NULL, NULL, '11000', '750', '112', 'Sadashiv Peth, Pune, Maharashtra, India', NULL, NULL, '18.5082486', '73.8440548', 0, 1, '2022-10-31 21:47:47', '2022-10-31 21:47:47'),
(37, 'slug', 66, 5, NULL, 'Chandni Chowk, New Delhi, Delhi, India', 2, 3, 1, 1, 5, 2, 4, NULL, 'testing Customer', '150000', '500000', '11000', '750', '112', 'Chandni Chowk, New Delhi, Delhi, India', NULL, NULL, '28.6505331', '77.23033699999999', 0, 1, '2022-10-31 21:56:18', '2022-10-31 21:56:18');

-- --------------------------------------------------------

--
-- Table structure for table `property_bookmarks`
--

CREATE TABLE `property_bookmarks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `property` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `property_categories`
--

CREATE TABLE `property_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_categories`
--

INSERT INTO `property_categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'House', 'house', '2020-01-07 00:24:28', '2020-01-07 00:24:28'),
(2, 'Villa', 'villa', '2020-01-07 00:24:33', '2020-01-07 00:24:33'),
(3, 'Apartment', 'apartment', '2020-01-07 00:24:49', '2020-01-07 00:24:49'),
(4, 'Office', 'office', '2022-11-19 04:26:42', '2022-11-19 04:26:42'),
(5, 'Shop', 'shop', '2022-11-19 04:26:49', '2022-11-19 04:26:49'),
(6, 'Resort', 'resort', '2023-01-05 04:42:56', '2023-01-05 04:42:56');

-- --------------------------------------------------------

--
-- Table structure for table `property_fors`
--

CREATE TABLE `property_fors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_fors`
--

INSERT INTO `property_fors` (`id`, `type`, `name`, `created_at`, `updated_at`) VALUES
(1, 'inventory', 'Sell', '2019-12-23 18:30:00', '2019-12-23 18:30:00'),
(2, 'inventory', 'Rent', '2019-12-23 18:30:00', '2019-12-23 18:30:00'),
(3, 'requirement', 'Buy', '2019-12-23 18:30:00', '2019-12-23 18:30:00'),
(4, 'requirement', 'Rent', '2019-12-23 18:30:00', '2019-12-23 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `property_galleries`
--

CREATE TABLE `property_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_galleries`
--

INSERT INTO `property_galleries` (`id`, `property_id`, `path`, `created_at`, `updated_at`) VALUES
(44, 15, '5e1c5bf4a537e.jpeg', '2020-01-13 06:30:52', '2020-01-13 06:30:52'),
(45, 10, '5e1c5c6a568a1.jpeg', '2020-01-13 06:32:50', '2020-01-13 06:32:50'),
(46, 11, '5e1c65f692cb4.jpeg', '2020-01-13 07:13:34', '2020-01-13 07:13:34'),
(47, 11, '5e1c65f69ffa7.jpeg', '2020-01-13 07:13:34', '2020-01-13 07:13:34'),
(50, 17, '5e1c77f51c421.jpeg', '2020-01-13 08:30:21', '2020-01-13 08:30:21'),
(52, 22, '5e1c7a8d221cd.jpeg', '2020-01-13 08:41:25', '2020-01-13 08:41:25'),
(53, 22, '5e1c7a8d496be.jpeg', '2020-01-13 08:41:25', '2020-01-13 08:41:25'),
(54, 22, '5e1c7a8d6e49f.jpeg', '2020-01-13 08:41:25', '2020-01-13 08:41:25'),
(55, 25, '5e1c7ada626c8.jpeg', '2020-01-13 08:42:42', '2020-01-13 08:42:42'),
(80, 27, '5e1da41d945d2.png', '2020-01-14 05:51:01', '2020-01-14 05:51:01'),
(83, 28, '5e20464b45b7a.jpeg', '2020-01-16 05:47:31', '2020-01-16 05:47:31'),
(85, 30, '5e215ac668b06.jpeg', '2020-01-17 01:27:10', '2020-01-17 01:27:10'),
(86, 30, '5e215dfed55ea.jpeg', '2020-01-17 01:40:54', '2020-01-17 01:40:54'),
(90, 33, '6257ceb449546.jpeg', '2022-04-14 02:05:16', '2022-04-14 02:05:16'),
(92, 10, '625968ff67a01.jpeg', '2022-04-15 07:15:51', '2022-04-15 07:15:51'),
(93, 10, '625968ffa5270.jpeg', '2022-04-15 07:15:51', '2022-04-15 07:15:51'),
(94, 34, '62596adf54dc9.jpeg', '2022-04-15 07:23:51', '2022-04-15 07:23:51'),
(96, 33, '625eb9393643e.gif', '2022-04-19 07:59:29', '2022-04-19 07:59:29'),
(97, 35, '6360af0aa4e8d.png', '2022-10-31 21:30:50', '2022-10-31 21:30:50');

-- --------------------------------------------------------

--
-- Table structure for table `property_leads`
--

CREATE TABLE `property_leads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_loan` int(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_leads`
--

INSERT INTO `property_leads` (`id`, `property_id`, `name`, `mobile`, `email`, `home_loan`, `created_at`, `updated_at`) VALUES
(1, 27, 'Prashant', '8898353644', 'prashant@gmail.com', 0, '2020-01-13 21:40:04', '2020-01-13 20:35:03'),
(2, 25, 'Prem', '9949658745', 'prashant123@gmail.com', 1, '2020-01-13 21:37:07', '2020-01-13 20:35:03');

-- --------------------------------------------------------

--
-- Table structure for table `property_statuses`
--

CREATE TABLE `property_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_statuses`
--

INSERT INTO `property_statuses` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Ready Possession', 'ready-possession', '2020-01-06 05:56:07', '2022-04-14 06:52:31'),
(3, 'Resale', 'resale', '2020-01-06 05:58:03', '2020-01-06 05:58:03');

-- --------------------------------------------------------

--
-- Table structure for table `property_types`
--

CREATE TABLE `property_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_types`
--

INSERT INTO `property_types` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Residential', 'residential', '2020-01-06 06:09:58', '2020-01-06 06:09:58'),
(2, 'Commercial', 'commercial', '2020-01-06 06:10:07', '2020-01-06 06:10:07'),
(3, 'Agriculture', 'agriculture', '2020-01-06 06:10:14', '2020-01-06 06:10:14'),
(4, 'Industrial', 'industrial', '2022-06-17 04:10:47', '2022-06-17 04:10:47'),
(5, 'Land', 'land', '2022-08-01 03:29:09', '2022-08-01 03:29:09'),
(6, 'Hotel', 'hotel', '2023-01-05 04:42:37', '2023-01-05 04:42:37');

-- --------------------------------------------------------

--
-- Table structure for table `requirements`
--

CREATE TABLE `requirements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `locality_id` int(11) DEFAULT NULL,
  `property_for_id` int(11) NOT NULL,
  `property_category_id` int(11) NOT NULL,
  `property_type_id` int(11) NOT NULL,
  `property_status_id` int(11) NOT NULL,
  `configuration_id` int(11) NOT NULL,
  `furnish_type_id` int(11) NOT NULL,
  `tenant_type_id` int(11) DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `budget` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `requirements`
--

INSERT INTO `requirements` (`id`, `slug`, `city_id`, `user_id`, `locality_id`, `property_for_id`, `property_category_id`, `property_type_id`, `property_status_id`, `configuration_id`, `furnish_type_id`, `tenant_type_id`, `details`, `budget`, `area`, `status`, `created_at`, `updated_at`) VALUES
(2, 'slug', 3, 26, 6, 4, 1, 1, 3, 4, 1, 1, 'Need property for RENT @ 5K', '5000', '', 1, '2020-01-15 00:21:00', '2020-01-15 00:21:00'),
(3, 'slug', 1, 25, 12, 3, 2, 2, 3, 4, 2, NULL, '2BHK Villa for Buy Semi-Furnished', '6000000', 'Pratiksha Nagar', 1, '2020-01-15 00:43:07', '2020-01-15 01:03:35'),
(4, 'slug', 3, 11, 7, 3, 1, 1, 1, 4, 1, NULL, 'Want to buy 2 BHK House', '1000000', 'Anand Road', 1, '2020-01-15 06:00:43', '2020-01-15 06:00:43'),
(5, 'slug', 1, 15, 12, 4, 1, 3, 1, 3, 3, 3, 'this is test based', '45259878474', 'Pratiksha Nagar', 1, '2020-01-16 05:22:42', '2020-01-16 05:22:42'),
(6, 'slug', 6, 29, NULL, 3, 1, 1, 1, 3, 1, NULL, 'want to buy 1 bhk house', '4500000', 'Nagpur Junction, Sitabuldi, Nagpur, Maharashtra, India', 1, '2020-01-17 01:06:01', '2020-01-17 01:10:48'),
(7, 'slug', 1, 24, NULL, 3, 1, 1, 1, 3, 1, NULL, 'Want to buy 1 bhk flat @ mumbai, sion', '1000000', 'Sion Circle, Air Force Quarters, Jay BharatMata Nagar, Sion, Mumbai, Maharashtra, India', 1, '2020-01-28 02:00:49', '2020-01-28 02:00:49'),
(8, 'slug', 1, 11, NULL, 3, 3, 1, 1, 4, 1, NULL, 'i want to buy a residential apartment with 2 BHk conf', '8000000', 'Airoli, Navi Mumbai, Maharashtra, India', 1, '2022-04-15 00:21:35', '2022-04-15 00:21:35');

-- --------------------------------------------------------

--
-- Table structure for table `tenant_types`
--

CREATE TABLE `tenant_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tenant_types`
--

INSERT INTO `tenant_types` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Boys', 'boys', '2020-01-06 08:15:00', '2020-01-06 08:15:00'),
(2, 'Girls', 'girls', '2020-01-06 08:15:05', '2020-01-06 08:15:05'),
(3, 'Family', 'family', '2020-01-06 08:15:08', '2020-01-06 08:15:08'),
(4, 'Any', 'any', '2020-01-06 08:15:20', '2020-01-06 08:15:20');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `configuration_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT '2',
  `role_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'customer',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int(11) DEFAULT NULL,
  `locality_id` int(11) DEFAULT NULL,
  `area` varchar(121) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rera` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caddress` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `active` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `role_name`, `name`, `mobile`, `email`, `city_id`, `locality_id`, `area`, `address`, `rera`, `cname`, `caddress`, `exp`, `profile`, `description`, `active`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(7, 1, 'admin', 'TeamUP Admin', '8898373544', 'admin@gmail.com', 1, 5, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'PA458569365', 'TeamUP Properties', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', '10 Years', '', '', '1', NULL, '$2y$10$u55QXTojfrJpxgm9Pjkhb.J98cdBDvLOZVSTmLUbroqykfiqEp92W', 'xv6CRedDNUJUWHouepKToyuir5IY31ewFTlwgqFabo5Ww9tu4VPcPEUm6kzc', NULL, NULL),
(36, 2, 'developer', 'Atul Projects', '18001233690', 'service@teamupnetwork.com', 1, NULL, 'Andheri, Maharashtra, India', 'Andheri', NULL, 'Atul Projects', 'Andheri', NULL, '62b2fdad809d6.jpeg', 'Atul Projects Have Made Their Mark In Mumbai As One Of The Most Reliable Real Estate Companies In The City. What Makes Us Different From Our Competitors Is The Fact That We Add Life To Your Lifestyle By Giving You The Best Possible Choices That Not Only Suit Your Budget But Also Give You The Satisfaction Of Investing Your Hard-Earned Money In The Right Place; And The Right Space. The Pioneers Of Atul Projects Are - Founder Mr. Nathalal Delwadia, Managing Director – Mr. Atul Patel, And Director – Mr. Aakash Patel. Our Milestones Include Immaculate Work In Commercial, Residential, Industrial, And Hospitality Projects.', '1', NULL, '$2y$10$c4wDdmqluqcCdxlqWzLB3eIZTXRKRHhVTtjMtf66/aWNfAu/nQs26', NULL, '2022-06-16 22:22:39', '2022-06-22 03:31:57'),
(37, 2, 'developer', 'Aplite Group', '9967295840', 'sales1@aplitegroup.com', 1, NULL, 'Fort, Mumbai, Maharashtra, India', 'Green Stone Heritage C-Wing, 3rd Floor, Ramabai Ambedkar Marg, Fort, Mumbai 400001 Maharashtra India', NULL, 'Aplite Group', NULL, NULL, '63c8e9a3a310f.png', 'Aplite Group\r\nEmail ID:- sales1@aplitegroup.com\r\nWebsite:- https://aplitegreenstone.com/', '1', NULL, '$2y$10$n.rkVD5xgnk/sVG8zYw25eJ4WbCZui.0t2SKf/0S0F.ZzaC/Xlv/W', NULL, '2022-06-16 22:38:12', '2023-01-18 22:56:35'),
(38, 2, 'developer', 'Shapoorji Pallonji', '9930339192', 'info@teamupnetwork.com', 1, NULL, 'Thane, Maharashtra, India', 'Northern Lights - Skyraa by Shapoorji Pallonji, Pokhran Road No. 2, Thane West Thane - 400610 Maharashtra, India.', NULL, 'Shapoorji Pallonji', NULL, NULL, '63086a1031b03.jpeg', 'Shapoorji Pallonji And Company Private Limited Is A Global, Diversified Organisation Of 18 Major Companies. We Deliver End-To-End Solutions In 6 Business Segments, Namely Engineering & Construction, Infrastructure, Real Estate, Water, Energy And Financial Services. Developing Megastructures And Iconic Landmarks, Our Dedicated Workforce Of Over 50,000 People In Over 50 Countries Is Focused On Sustainable Development.', '1', NULL, '$2y$10$OSA9Tz7bcvkT522PJUzfWeAmOUxLb9dQz1crCwePHB/56PAYf4ON6', NULL, '2022-06-16 22:39:15', '2022-08-25 22:37:04'),
(39, 2, 'developer', 'Jet Speed Realtors Pvt Ltd', '9920073624', 'info1@teamupnetwork.com', 1, NULL, 'Hubtown Solaris, Teli Gali, Vijay Nagar, Andheri East, Mumbai, Maharashtra, India', '1232- A, Hubtown Solaris, 12th Floor, N. S. Phadke Marg, Opposite Telli Galli, Andheri - East, Mumbai - 400069', NULL, 'Jet Realty', '1232- A, Hubtown Solaris, 12th Floor, N. S. Phadke Marg, Opposite Telli Galli, Andheri (East), Mumbai 400069', '24', '6308ca2cef998.jpeg', 'Jet Realty is a Mumbai Based Real Estate Development Company Founded in November 2007. The Brainchild of Mr. Hemant Shah, This Company has Created A Niche in The Industry by Bringing Value, Through its Robust Constructions. An ISO 9001:2008 Certiﬁcation Complements The Company\'s Core Objective of Building Impeccable Quality Structures.', '1', NULL, '$2y$10$SawlnNM0lekrYWDVTImXEOrHDAYIwdW.bnUWVSQfOJ2nsIB5CfY52', NULL, '2022-06-16 22:40:57', '2023-01-10 21:36:44'),
(40, 2, 'developer', 'Vardhan Heights', '7998799852', 'info2@teamupnetwork.com', 1, NULL, 'Mumbai, Maharashtra, India', 'Pl Lokhande Marg, Near Amar Mahal Junction Flyover, Next To Shankaralaya Temple, Mumbai, 400089 Maharashtra India', NULL, 'Vardhan Heights', NULL, '70', '6308c3ada6043.png', 'Innovation. Sustainability. Excellence.\r\nThese Are The Values Embedded In Everything That We At Vardhan Group Embody.\r\n\r\nWith A Commitment To Cutting-Edge Development And A Reputation For Timely Completion, The Vardhan Group Has Established A Tradition Of Trust, Standing Apart From The Rest Among Real Estate Companies In Mumbai.\r\nDeeply Rooted In Principles Of Good And Green, We Have Built Over 20 Million Square Feet Of Land, Including New Residential Projects, Commercial Spaces, And Shopping Centres.\r\nWe Are Now On Our Way To Delivering 10 Million Square Feet In The Next 5 Years Among Which Breath-Taking Ready To Move And Luxury Flats In Mumbai Are On The Cards.\r\nBacked By The Continual Success Of Projects Like Vardhan Royale, Vardhan Heights And Vardhan Sports Turf We Find Ourselves Motivated, Constantly Trying To Deliver To Our Customers, New Construction Projects That Are Truly One Of Their Kind.', '1', NULL, '$2y$10$yxZuX4pSfUTjQ32Dcmjvy.UkekHxXDZ7QnBWwjV/2NNWKl.bNSUp.', NULL, '2022-06-16 22:42:09', '2022-08-28 20:53:57'),
(43, 2, 'developer', 'Akshar Group', '9321060822', 'info5@teamupnetwork.com', 1, NULL, 'Mumbai, Maharashtra, India', 'Akshar Business Park Plot No, 03, Vashi Koparkhairane Road, Sector 25, Vashi, Navi Mumbai, 400703 Maharashtra India', NULL, 'Akshar Group', NULL, '25', '63086b682da5e.png', 'Akshar Group Is One Of The Fastest Growing Real Estate Company Which Is Working With A Pulperfect Vision Towards Creating An Inspired Living For All. With The Knowledge & Expertise Of More Than 25 Years, Akshar Group Of Builders & Developers Hava Created A Legacy Of Building Best-In-Class Architectural Marvels Across Navi Mumbai, Pune & Ahmedabad. With An Aim To Achieve The Next Level Within A Stipulated Time, The Group Has Nurtured & Cherished The Dream Of It’S Visionaries Who Have Laid A Strong Foundation In Making Akshar Group Is A Renowned Name In The World Of Construction. With More That 20 Ongoing & Upcoming Projects, The Real Estate Company Is One The Largest Brand In The City.', '1', NULL, '$2y$10$ENyUqxua1tRLW97sGZzhx.CVR7vAeaZhF8j9fKjXynnxK98DsTZ8y', NULL, '2022-06-16 22:44:49', '2022-08-28 20:55:43'),
(44, 2, 'developer', 'Pote Realty', '9930554111', 'info6@teamupnetwork.com', 1, NULL, 'Mumbai, Maharashtra, India', 'Pote Nilaya Survey No. 42/2/2/A, Vihighar, Off Panvel Matheran Road Panvel, 410206 Maharashtra India', NULL, 'Pote Realty', NULL, NULL, '637df9566c76e.jpeg', 'Pote Realty is a premier real estate company in Mumbai with its main focus on providing projects with the highest standards of quality. The company aims to consistently make great strides in fulfilling the dreams of a large number of esteemed customers. It is armed with a team of talented professionals who are very knowledgeable and proficient in the real estate sector and are always ready to deliver more than what has been asked for.', '1', NULL, '$2y$10$5WDQiHQd/N7HFaUwk1c1RO65yw.ixJoHtZq2fXnWP2TKQVU.KMFtS', NULL, '2022-06-16 22:45:29', '2022-11-23 02:43:34'),
(45, 2, 'developer', 'Ashray Group', '8767363000', 'info7@teamupnetwork.com', 1, NULL, 'Mumbai, Maharashtra, India', 'Jaswanti Bliss Behind Equinox, Tanhaji Chowk, Near Eagle Wadi, New Mill Road, Kurla West, Mumbai - 400070 Maharashtra India', NULL, 'Ashray Group', NULL, '28', '6308c2711f97b.jpeg', 'Ashray On The Strong Foundation Of Determination, Dedication And Discipline,\r\nAshray Took Shape In The Year 1994. Through The Last Decade And A Half, \r\nAshray Has Achieved The Distinction Of Being A Creator Of Premium And Holistic Real Estate Landmarks In The Magnum Opus Called Mumbai.\r\n\r\nThe Directors Of Ashray – Mr. Rashmin Rughani, Mr.Kalpesh Rughani, Mr. Bharat Rughani And Mr. Raj Rughani Have Been Leading The Company From One Success Story To Another. Under Their Able Leadership, \r\nThe Company Is Setting Newer Benchmarks Of Excellence. Mr. Rashmin Rughani With His Insights And Visionary Ideas, Is The Guiding Light Of The Company.', '1', NULL, '$2y$10$FxyNsV94NNc8kJGaCt/TxeCtQ9UM1EDzhw1qjH96WFvtLyyH/AwIS', NULL, '2022-06-16 22:46:34', '2022-08-28 20:59:56'),
(46, 2, 'developer', 'Gurukrupa Group', '9136514936', 'info8@teamupnetwork.com', 1, NULL, 'Mumbai, Maharashtra, India', NULL, NULL, 'Gurukrupa Group', NULL, '25', '6308c2cb2f3ee.png', 'At Gurukrupa Group, We Believe ‘The Passion To Deliver Quality Life-Spaces’ Is Not Just An Axiom, But Forms The Crux Of Our Everyday Work Ethic, Reflected Largely Through Our Offerings. Adhering To Our Credo Enables Us To Provide Quality Craftsmanship, Timely Delivery Of Projects And An Exceptional Home-Buying Experience For Any Customer Or Prospective Client.\r\n\r\nIncorporated By The Highly-Driven And Dynamic Director Mr. Mahesh Patel In The Year 2007, Gurukrupa Group Has Established A Fine Repute In The Real Estate Sector. With A Niche In Delivering Various Mhada Development Projects We Aim To Revolutionise The Way People Perceive Affordable & Quality Homes.\r\n\r\nThe Hallmark Of Trust Etched Through Quality\r\nMoving Forward Into The Future, It Is Our Commitment To Craft Not Just Life-Spaces But Neo-Urban Lifestyles For People To Come Home To.\r\nThe Core Team At Gurukrupa Group Works Consciously To Build Sustainable And Long-Lasting Relationships And Exemplary Experiences For Customers.', '1', NULL, '$2y$10$yKPFJldZqocygQSIJ/iNhu/LHMFNYdnQhSxloUuvwxCl9smBYxMBe', NULL, '2022-06-16 22:47:04', '2022-08-26 04:55:39'),
(47, 2, 'developer', 'Wadhwa Group', '9167747885', 'info9@teamupnetwork.com', 1, NULL, 'Mumbai, Maharashtra, India', 'Mumbai', NULL, 'Wadhwa Group', NULL, '53', '6308be0fa4c61.png', 'The Wadhwa Group carries a rich legacy of over half a century, built on its trust and belief of its customers and stakeholders. The group is one of Mumbai\'s leading real estate players and is currently developing residential, commercial and township projects spread across approximately 1.4 million sq. m. Timely completion of projects coupled with strong planning and design innovation gives the group an edge over its competitors. Every space is thoughtfully designed to connect with nature, laying a strong emphasis on the elements of light, height and air. Today, the group clientele comprises of over 20,000 satisfied customers and over 100+ MNC corporate.\r\nOver the years, The Wadhwa Group has received many awards and recognition for their contribution in real estate sector. \r\nMahaRERA Reg No. P52000016199 (Wise City, South Block Phase I, Plot RZ8 Building 1 Wing A1), P52000016274 (Building 4 Wing F4) available at website: http://maharera.mahaonline.gov.in', '1', NULL, '$2y$10$Tin3fLQ5FGXW6SR19i.Coe7eiu/ReWu6UTBDZKrJ8PIAV8lfsofyu', NULL, '2022-06-16 22:48:07', '2022-08-28 21:01:51'),
(48, 2, 'developer', 'JPV Realtors', '8828080777', 'info10@teamupnetwork.com', 1, NULL, 'Mumbai, Maharashtra, India', 'Mumbai', NULL, 'JPV Realtors', NULL, '22', '6308c40b4042e.png', 'About Jpv | Downtown. \r\nJpv Realtors Is A Real Estate Development Firm Comprised Of Industry Leading Professionals. Jpv Is Known As The Pre-Eminent Developer Of Exclusive & Thoughtful Real Estate. We Are Responsible For The Finest Portfolio Of Residential & Commercial Properties In Mumbai. The Jpv Brand Has Accumulated Immense Good-Will Among Its Stakeholders Over Its 22 Year Young Journey And Timely Delivered 35+ Project. The Group Has Successfully Detained Its Ground Into Mumbai\'S High Speed Drama Of Prestigious Real Estate One Sq. Ft. At A Time. \r\n\r\nOur Multifaceted Group Has Truly Evolved And Inspired To Become A Hallmark In Whatever We Do. \r\n \r\nAnd Now We Present Before You. Downtown Lifespaces, Our New Venture In Premium Housing. Ensuring A Secure Lifestyle In A Premier, Well-Designed Community. Downtown Exhibits An Unmatched Aura Of Luxury And Comfort With An Unswerving Commitment Towards Conscious Creation And Responsible Building. Riding The New Wave On The Trusted Shoulders Built Over 22 Years, Jpv Premium Brand Downtown Is Your Choice Of The New Decade. Luxurious, Resplendent And Integrity Are The Foundation Downtown Cements On. Synonymous With Design-Conscious And Responsible Building Choices, Downtown’S Invigorating Vision Embeds The “Future Of Living” Into The Mumbai Skyline. Championing Craftsmanship & Planning, The Company Redefines Luxury As A Lifestyle Lived Every Day.', '1', NULL, '$2y$10$.L5j1P50AI8kBpjFMZ4U5.HVzjK.luEheBjXQt9WyO/P7DGpogwDO', NULL, '2022-06-16 22:48:45', '2022-08-28 21:02:48'),
(49, 2, 'developer', 'DEM Infra', '8591852465', 'info11@teamupnetwork.com', 1, NULL, 'Mumbai, Maharashtra, India', 'Mumbai', NULL, 'DEM Infra', NULL, '80', '6308c1c4be450.png', 'The company is formulated as a group of professionals having varied and vast experience within the real estate and infrastructure fields. Our group consists of individuals with backgrounds such as Architecture, Civil Engineering, Project Management, Finance Management, Sustainability and Real Estate Development etc.\r\nThe main core of DEM Infra has over 80 years of experience put together and they have come on one table to bring absolutely impeccable service standards to the industry. We intend to reduce costs by \"charging as professionals for service and not as developers for profit', '1', NULL, '$2y$10$fCF7.aleRhejQw5v9cr73ufTVTLX3/jQNKrmcel2O8NVru4TpU7ba', NULL, '2022-06-16 22:49:56', '2022-08-28 21:05:50'),
(51, 2, 'developer', 'Khushi Creation', '8657406290', 'info15@teamupnetwork.com', 1, NULL, 'Mumbai, Maharashtra, India', 'Mumbai', NULL, 'Khushi Creation', NULL, NULL, '6308c51ea6d09.png', 'Khushi Creation are a dedicated, detail oriented Real Estate directors of the company with more than 10 years of experience over many sites, implementing project timelines and adhering to budget restrictions.\r\nWith delivering of 4 projects ( 3 residential buildings and 1 residential Bunglow, they have always fulfilled their promises and provided a beautiful and secured life', '1', NULL, '$2y$10$g1S1ms9L5qzXmjq7lIPAteswYcKh9jIniEWaJbpVcPxN.nEZ2hMny', NULL, '2022-06-16 22:52:12', '2022-08-29 02:28:44'),
(53, 2, 'developer', 'Triyom Realty', '9004900709', 'rupal.soul@gmail.com', 1, NULL, 'Abhva Gam, Surat, Gujarat, India', NULL, NULL, 'Triyom Realty', 'Triyom Realty, 3003, World Trade Center, Surat, Gujarat 395007', NULL, '630870132f7fe.jpeg', 'Like how a perimeter defines every area, every human interaction necessitates a boundary. Our boundaries give us a sense of safety and, thus freedom. However the heart of these boundaries, we subconsciously desire a place, we can call our own. Where this place can provide you with an everlasting and serene living experience?\r\nIntroducing Triyom. We at Triyom understand the importance of spaces. We believe that well-being is an expression of the three dimensions of divinity – mental peace, Nature and physical balance. Every Triyom home embodies the three essences to give you an exquisite holistic Inner experience. Our properties are carefully handcrafted using elements and design chosen to envelop you in a spatial language of peaceful living that lets you transcend into divine by nature.', '1', NULL, '$2y$10$MmoIYYfFXbKtPRfwf44qyeDthEj5ZDnPfoMIAfqi0Tf3E1/bU9Q4i', NULL, '2022-08-23 22:12:27', '2022-08-25 23:02:43'),
(54, 2, 'developer', 'Shivoham group', '9169566956', 'info@shivohamgroup.com', 1, NULL, 'Lokmanya Tilak Rd, Prerna Nagar, Babhai Naka, Borivali West, Mumbai, Maharashtra 400092, India', '109, Laxmi Chhaya Apartment, Lokmanya Tilak Rd, Babhai Naka, Borivali West, Mumbai, Maharashtra 400092', NULL, 'Shivoham group', '109, Laxmi Chhaya Apartment, Lokmanya Tilak Rd, Babhai Naka, Borivali West, Mumbai, Maharashtra 400092', '15', '630710c90bedc.jpeg', 'More Than Being Just Another Real Estate Brand, We Make Sure Our Customers Remember Us Through The Quality Of Projects And The Services We Offer.\r\n\r\nShivoham Group Is The Latest Of Business Enterprises Which Was First Incepted In The Year 1947 As A Trading Concern “Shree Shanti” By Late Mr. Dalichand Jain And Late Mrs. Badamiben Dalichand Jain When India Celebrated Its Independence From The Rule Of The British Kingdom. From Humble Beginning Mr. Tejraj D. Jain Has Painstakingly And Devotedly Built The Shivoham Group And Has Till Date Completed Many Building Projects With The Support Of A Dedicated Team Of Engineers, Architects, Advisers And Consultants.\r\n\r\nShivoham Group Are Renowned Creators Of Opulent Spaces. Backed By A Strong Legacy That Spans Over A Decade, Shivoham Group Is Managed By Mr. Tejraj D. Jain Who Hascarved A Niche For Himself In The World Of Real Estate. The Board Combines A Seasoned Team Of Professionals With Expertise In Real Estate And Construction.', '1', NULL, '$2y$10$P5117wbj.FgqyDoZ6VEcXO2bXDRfYY18Jvs6u6wFGeqkCK1W0ItAK', NULL, '2022-08-24 21:26:03', '2022-08-29 02:28:20'),
(55, 2, 'developer', 'Shree Tirupati Group', '9015149149', 'sales@stgrealty.in', 1, NULL, 'Abhiman II, Deep Jyoti Society, Bhakti Mandir, Panch Pakhdi, Thane West, Thane, Maharashtra, India', '1st Floor, Abhimaan-II, Opp. Elegance, Teen Hath Naka, Thane (W) - 400602, India.', NULL, 'Shree Tirupati Group', '1st Floor, Abhimaan-II, Opp. Elegance, Teen Hath Naka, Thane (W) - 400602, India.', '20', '6308c33c0ba57.png', 'Shree Tirupati Group, Since 2002. \r\nWe Believe Real Estate Is More Than Just Building The Proverbial Four Walls, It’S About “Building Trust For Life”. This Is The Ideology With Which We At Stg Have Delivered Finest Developments In Mumbai And Thane That Have Become Some Of The Most Iconic Addresses And The Most Desirable Residences .Our Residential And Commercial Spaces Are Aimed At Every Segment, Right From Super Luxury To Budget, Thereby Enabling Every Aspiring Consumer To Fulfill Their Dream.', '1', NULL, '$2y$10$JZwpq4C5mjQkGIhe49FFf.lBO2igJrWjmbxa9SUN0Ts7my1d9Dj.W', NULL, '2022-08-24 22:23:49', '2022-08-29 02:28:02'),
(56, 2, 'developer', 'Rustomjee', '9167710545', 'propertymanagement@rustomjee.com', 1, NULL, 'Keystone Realtors Private Limited, Western Express Highway, Bima Nagar, Andheri East, Mumbai, Maharashtra, India', 'KEYSTONE REALTORS PVT. LTD.\r\n702 Natraj, M.V. Road Junction, Western Express Highway, Andheri(E) Mumbai - 400069, Maharashtra, India.', NULL, 'Rustomjee', 'KEYSTONE REALTORS PVT. LTD.\r\n702 Natraj, M.V. Road Junction, Western Express Highway, Andheri(E) Mumbai - 400069, Maharashtra, India.', NULL, '630870ea6a6bc.png', 'At Our Core As A Developer, We Strive To Make ‘Thoughtful Spaces’ That Redefine Living And Repurpose Life. We Consider Luxury Not As Opulence, Distance, Individualism Or Heroism, But Rather, Togetherness, Family, And The Richness Of Life. With This Belief, We Hope To Build A Happier, More Connected World, With Spaces That Bring People Together, And Help Families To Realise The Importance Of Close Communities And Relationships.', '1', NULL, '$2y$10$wGt5BOCMHu34UyCjfFb05.Di0GXX.bE30sReHQ2taznxXT4hE3tv6', NULL, '2022-08-24 22:57:49', '2022-08-25 23:06:18'),
(57, 2, 'developer', 'Sai Everest Builders & Developers', '9619785254', 'sales.saieverest@gmail.com', 1, NULL, 'Datta Mandir Road, Vakola, Santacruz East, Mumbai, Maharashtra 400055, India', 'B/12, Silver Strip, Datt Mandir\r\nRoad, Vakola, Santacruz (E), Mumbai - 400 055', NULL, 'Sai Everest Builders & Developers', 'B/12, Silver Strip, Datt Mandir\r\nRoad, Vakola, Santacruz (E), Mumbai - 400 055', NULL, '6308bfbcb4dcc.jpeg', 'Sai Everest Builders & Developers Pvt. Ltd.\r\nSai Everest Builders & Developers Has Made Its Phenomenal Journey From Being A Name To Being A Brand Name In Elite Real Estate Developments And Lifestyle Solutions. Sai Everest Builders & Developers Is Changing The Skylines Of Mumbai And Navi Mumbai With Its Innovative And Contemporary Edifices. An Ideal Haven For Those Who Believe In Discretion, Sai Everest Builders & Developers Has The Best Of Avant Garde Amenities, The Loveliest Of Squares, And The Best That Luxury Has To Offer – A Place Where You Can Be At Sync With Nature Yet Close To Commercial Facilities.', '1', NULL, '$2y$10$NeEC.TE.564shy0hsNG84usDY/s9pTVNMUUz655SE1EDkXwRRFDoq', NULL, '2022-08-24 23:28:06', '2022-08-26 04:48:41'),
(58, 2, 'developer', 'Platinum Realty Group', '9577704545', 'sales@platinumrealtygroup.in', 1, NULL, 'Platinum Realty Group, Almeida Park Marg, Bandra West, Mumbai, Maharashtra 400050, India', 'Platinum Realty Group, 10th Road, Almeida Park Marg, Bandra West, Mumbai, Maharashtra 400050', NULL, 'Platinum Realty Group', 'Platinum Realty Group, 10th Road, Almeida Park Marg, Bandra West, Mumbai, Maharashtra 400050', NULL, '630742f33a8d9.jpeg', 'COMPANY PHILOSOPHY\r\nPlatinum Realty is looking to be an insignia of trust, transparency, cutting-edge technology and differentiated service in the Real Estate sector in Mumbai and Thane. Rooted in values, our growth and respectability will both be built on adherence to our vision, mission and the pillars we stand on.\r\n\r\nVISION:\r\nTo create spaces that enhance quality of life :\r\n\r\nThe vision of our company is an actionable, purpose-led ideal that has a real and significant bearing on our deliveries and our conduct. We are committed to ensuring that our offerings are revolutionary, ahead of the times, benchmarked against best global trends & practices and built around our discerning customers\' needs. We ensure that the ecosystem we operate in, the society around and all people who experience, engage or align with any aspect of the spaces we create, truly feel the differentiation and positive impact on quality of life.\r\n\r\n\r\nINNOVATION\r\nInnovating consistently is a cultural constant at Platinum Realty; it empowers us to offer the differentiated and the exemplary to our customers, besides infusing robustness in all our processes.\r\n\r\n\r\nTEAMWORK\r\nA diverse, diligent and qualified workforce, driven by team-spirit, represents our abiding strength to co-create a positive, bright and forward-looking future.\r\n\r\nPASSION\r\nPassion is the core human quality that drives us to deliver with more than 100% in all we do. By bringing passion at work we not only ensure the success but also the brilliance in all our executions.\r\n\r\nOUR VALUES\r\nIn letter and spirit, our brand pillars stand at the very core of who we are and what we stand for - not just in our deliveries but also in our everyday conduct. Our approach to work and all interactions with customers, vendors, channel-partners, colleagues and society at large is defined and enriched by our values.\r\n\r\nQUALITY\r\nQuality focus is not a business imperative at Platinum Realty, it is a way of life.\r\n\r\nCUSTOMER-CENTRICITY\r\nKeeping customers at the heart of all we do, our initiatives and innovations are attuned to enhancing the life of our customers in real terms.\r\n\r\nEXCELLENCE\r\nThrough commitment to excellence we create new paradigms in what we deliver and the way we deliver, creating not just a better equity for Platinum Realty, but a better life through spaces we create.\r\n\r\nINTEGRITY\r\nWith absolute integrity in all our dealings, by standing true to our words in all circumstances and never misguiding or deceiving through our words, gestures or actions, we ensure credibility, respect and sustained growth for our organisation.\r\n\r\nTRANSPARENCY\r\nTransparency breeds trust. By being fair, open and honest in all our dealings, we create the necessary environment for sustained growth of our organisation, built on mutual growth and trust.', '1', NULL, '$2y$10$3OJybMT7GwiBliGP58qNGO.G041WE3miKtDpOhPllgx58pryA4w2O', NULL, '2022-08-25 01:34:26', '2022-08-25 01:39:00'),
(59, 2, 'developer', 'Nahar Group', '9321554221', 'info@nahargroup.co.in', 1, NULL, 'Mahalaxmi Chambers, Mahalaxmi West, Breach Candy, Cumballa Hill, Mumbai, Maharashtra, India', 'B-1, Mahalaxmi Chambers 22, Bhulabhai Desai Road, Mumbai – 400 026', NULL, 'Nahar Group', 'B-1, Mahalaxmi Chambers 22, Bhulabhai Desai Road, Mumbai – 400 026', '49', '6308713b73fbe.png', 'Nahar Group Established in 1973, it is a renowned name in real estate industry. It has turned out as a proficient developer in developing Integrated Townships, Lifestyle Residences, Commercial space. Its flagship project Nahar\'s Amrit Shakti is an award-winning integrated township in Mumbai. The township has 40 high-rise towers across 125 acres of lush green landscape. The group is known for quality, reliability and professional approach that made it earn many prestigious awards for great domain expertise, high management practices, corporate governance and corporate social responsibilities', '1', NULL, '$2y$10$K/KbJxkaLnllSGohd91VgOGXcqplBR3Tpv4gApEFbSosNVSHmzUgC', NULL, '2022-08-25 02:05:44', '2022-08-25 23:07:39'),
(60, 2, 'developer', 'Moraj Group', '9820577144', 'sales@morajinfratech.com', 1, NULL, 'The Affaires, Palm Beach Road, Sector 17, Sanpada, Navi Mumbai, Maharashtra 400705, India', '18th Floor, The Affaires Building,\r\nPalm Beach, Sector 17, Sanpada,\r\nNavi Mumbai 400705.', NULL, 'Moraj Group', '18th Floor, The Affaires Building,\r\nPalm Beach, Sector 17, Sanpada,\r\nNavi Mumbai 400705.', NULL, '6308c602ed1f2.png', 'The Moraj Group has carved a formidable niche for itself as a trendsetter in modern and futuristic architecture in the new generation metropolis of Navi Mumbai.\r\nAt Moraj, nothing is left to chance. Our Organisation conceives and formulates the Building Designs, but also has the buildings constructed, both as an integrated whole to confirm to international standards and latest building technology.\r\nWhile an organisation can legitimately pride itself in what it has done and what it has been doing, achievement of excellence and consumer satisfaction in an ever growing degree has been our constant aim in business.\r\nWe take pride in asserting that we don’t create buildings, we create trust and it is the trust and business ethics that have made us a renowned name in the real estate Industry.', '1', NULL, '$2y$10$7yutMJWnaJg.US3kQ7ajS.P7FwRzuk7X5HgENCLbK0XL..s..vmjW', NULL, '2022-08-25 02:23:47', '2022-08-26 05:09:22'),
(61, 2, 'developer', 'Raajyam Realty LLP', '7400064969', 'yatin.shah@raajyamamity.in', 1, NULL, 'Santacruz East, Mumbai, Maharashtra, India', 'Amity Apartments Opp Anjali Kiran Society, Off Datta Mandir Road, Vakola, Santacruz East, Mumbai - 400 055 Maharashtra India', NULL, 'Raajyam Realty LLP', 'Amity Apartments Opp Anjali Kiran Society, Off Datta Mandir Road, Vakola, Santacruz East, Mumbai - 400 055 Maharashtra India', NULL, '631eefff9d6e1.jpeg', 'Raajyam Realty LLP\r\nWebsite:- https://raajyamamity.in/\r\nEmail ID:- info@raajyamamity.in', '1', NULL, '$2y$10$8IOsrWWHvYOLn/yJJMljFe6SjNW5nCl6gy4u/X3qZJsNW.XfifiHO', NULL, '2022-09-12 00:13:03', '2022-09-12 00:40:30'),
(62, 2, 'developer', 'LD Group', '8828866554', 'ldviceroysales@gmail.com', 1, NULL, '152, Rd Number 2, Sindhi Society, Chembur, Mumbai, Maharashtra 400071, India', 'LD Group 152, Rd Number 2, Sindhi Society, Chembur, Mumbai, Maharashtra 400071, India', NULL, 'LD Group', 'Safal Pride, 6th Floor, 601, Opp. Saras Baug Sion - Trombay Road, Deonar - Chembur, Mumbai - 400088 Maharashtra India', '20', '63465b3dbdbfd.png', 'Iconic Structure, Bold Design And New Age Engineering It All Comes Together In One Name - Ld From Lalit Dharmani. \r\nLd Is A Promise, A Statement, A Commitment To The Finest Living. Ld Is A Young, Dynamic & Forward-Looking Construction Brand Built By Mr. Lalit Dharmani. Since 2002, Lalit Dharmani Projects Have Been Perfecting The Art Of Home Building. The Flagship Brand Name Lalit Dharmani Project Or Ld Is Iso 9000 Certified With More Than 25 Projects Through Its Group Companies Called Pinaki Projects, Inner Space, Shiv Sabari Developers & Build Pro Housing. Today We Have The Most Beautiful, Smartly Engineered Residential And Commercial Spaces In And Around Chembur, Mumbai.', '1', NULL, '$2y$10$N1l1pUEdmJM9G7lunss6Me44vByQ12nLf.P5y19aCzJw/ZokHspOW', NULL, '2022-09-25 21:29:04', '2022-10-11 22:14:21'),
(63, 2, 'developer', 'Safal Group', '7303199999', 'sales@thesafalgroup.com', 1, NULL, 'Safal Pride Tower, Sion - Panvel Expressway, Dattaguru Society, Govandi East, Mumbai, Maharashtra, India', 'Safal pride, 6th floor 601 Saras bag sion trombay road Deonar Chembur Mumbai - 400088', NULL, 'The Safal Group', 'Safal pride, 6th floor 601 Saras bag sion trombay road Deonar Chembur Mumbai - 400088', '28', '6336deb29c9d2.png', 'The Safal Group of Companies is one of the most trusted names in the Real Estate industry. Over the past two decades we have added many gems to Mumbai’s shining skyline. Business expertise and dedication are the key reasons of our Group’s success. Every customer knows us for our best in class quality benchmarks that we strictly adhere to. Our team consists of experienced professionals who constantly strive to achieve higher standards in building trust, quality, transparency and customer satisfaction with all our projects.', '1', NULL, '$2y$10$7reSElGfhf33V41sJskwh.Er6Yw5eryq99SShSO2UPAAsTw7RUDT2', NULL, '2022-09-30 04:15:07', '2022-09-30 04:19:15'),
(64, 2, 'developer', 'Plutonium Group', '9987465729', 'plutoniumbs@gmail.com', 1, NULL, 'PLUTONIUM BUSINESS PARK, Thane - Belapur Road, near Turbhe, Turbhe MIDC, Turbhe, Navi Mumbai, Maharashtra, India', 'Plot Nos.7 & 7A in the Trans-Thana, Creek Industrial Area, within the Village limits of Pavne and Turbhe, Taluka & Dist- Thane, Navi Mumbai. Pin-400703.', NULL, 'Plutonium Group', NULL, '30 Years', '637b318da89ec.jpeg', 'An exceptional opportunity for the exceptional few.\"\r\n\r\nIn the world of high-return investments, Commercial real estate is a remarkably promising endeavor. The best of minds in the investment sector consider it to be a gold mine with minimal risk. The plutonium group understands this aspect and has incorporated it into their upcoming project. This landmark project is thoughtfully curated in all the aspects of being at the prime location of Navi Mumbai- right adjacent to the iconic Ikea, in Turbhe. The brand has significantly accelerated the growth of the neighborhood in the past and its impact can be witnessed around the upcoming commercial business hub. The futuristic & commercial landmark has significantly high growth potential. The project is equipped with large floor plates to support your expansive business vision. Plutonium Business Park also hosts exclusive spaces for high-street retail to flourish. The project will be equipped with modern office indulgences like Gymnasiums, sleeping pods, spa, and many others.', '1', NULL, '$2y$10$xsesC7/pu98i1oSj.qLpDu6TqyUzt5gAwvb16ZMYksS8qHKeTe4Lm', NULL, '2022-11-19 04:25:43', '2022-11-21 00:06:37'),
(65, 2, 'developer', 'Shubh Vastu Lifespace LLP', '9152233404', 'sales@shubhvastu.net', 1, NULL, 'Shubh Vastu Lifespace LLP, Station Road, Vikhroli (W,Vikhroli West, Mumbai, Maharashtra, India', 'Shubh Vastu Lifespace LLP Vikhroli (W), Mumbai City, Maharashtra, India, 400083.', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$h/HugL7L4M6uMm0qx9HyFubBOzXD4U8KvH9VjuhG8HvzcHlkbpWUe', NULL, '2022-11-22 00:24:56', '2022-11-22 00:24:56'),
(66, 2, 'developer', 'Vishwa Green Realtors', '7718860414', 'hamza.sales@planmvgr.com', 1, NULL, 'Vishwagreen Realtors Pvt. Ltd, opp. DY Patil Stadium,  Nerul, Navi Mumbai, Maharashtra, India', 'Vishwagreen Realtors opp. DY Patil Stadium MIDC Industrial Area Shiravane, Nerul, Navi Mumbai, Maharashtra, India', NULL, 'Vishwa Green Realtors Pvt. Ltd', 'Vishwagreen Realtors opp. DY Patil Stadium MIDC Industrial Area Shiravane, Nerul, Navi Mumbai, Maharashtra, India', '12', '63b7b2d0c2c76.png', 'At Vishwa Green Realtors Pvt. Ltd, We Believe that The Four Walls We Build Should be Human Enough to be Able to Adjust As Per Your Dreams and Desires. Reason Why, Every Square Feet that We Design is Planned Keeping The Human Emotions at The Core. Our Foremost Endeavor is to Keep Delivering World-Class Residential and Commercial Spaces that are High on Quality and Lifestyle. Thereby, Making The Everyday Living Better and Easier.', '1', NULL, '$2y$10$UOezKIgTu9uwAW.ROZG5/.yz215l41AKbcnWi4PQ8myyVtqUdFZmK', NULL, '2022-12-17 03:26:06', '2023-01-11 04:42:27'),
(67, 2, 'developer', 'Moongipa Group', '9372202536', 'sales@moongipaworld.com', 1, NULL, 'Moongipa Arcade, D.N.Nagar, Andheri West, Mumbai, Maharashtra', 'Moongipa Arcade, D.N.Nagar, Andheri West, Mumbai, Maharashtra', NULL, 'Moongipa Group', 'Moongipa Group, 203/204, Raigad Darshan, Opp, Indian Oil Nagar, J.P. Road, Andheri West, Mumbai- 400 053', '15', '63b7b0e2c06f1.png', 'The Group which was in The Textile Business in Kolkata Entered Mumbai in The Year 1982 to Explore Business Opportunities in The Financial Capital of The Country and to Expand The Family Business of Transportation and Other Allied Business Activities.\r\nWith Renewed Vigour and Strength They Diversified Into Construction and Exports Business in The Year 2002 and Established Themselves As Masters in Creating Architectural Landmarks with Their Exclusive Workmanship,Quality and Adherence to Unwavering Commitments. with Foresight,Determination and Hard Work, Mr. Basudeo Agarwal and his Three Sons Nawal, Sanjay and Rajesh, Renowned for Their Reliability, High Standard of Ethics and Professional Approach, have Enabled Moongipa to Now Spread Its Wings Across India and Abroad. Moongipa Focuses On Business Principles which are Customer Driven and Strives to Deliver. Lasting Relationships with Clients, Well Wishers and Associates Spell A Reputation That Moongipa has Earned Over The Years.', '1', NULL, '$2y$10$yNA4J4tCEkmZNrd.m7XmYOXCDmEulgm4voiM9z3rciJkogIPST5fy', NULL, '2023-01-05 02:48:12', '2023-01-11 04:56:26'),
(68, 2, 'developer', 'Qubicc Proptech Pvt. Ltd', '9205407438', 'qubiccproptech@gmail.com', 15, NULL, 'Haridwar, Uttarakhand, India', 'Plot no. 20-21, Ujjawal ITI Enclave, Near Holy Ganges School, Haridwar, Uttarakhand 249407', NULL, 'QUBICC PROPTECH Pvt.Ltd', 'Plot no. 20-21, Ujjawal ITI Enclave, Near Holy Ganges School, Haridwar, Uttarakhand 249407', NULL, '63b7af0a2721b.png', 'Qubicc Proptech Pvt. Ltd is a Platform Through Which Users Can Transparently Invest in Real Estate Using Data and Analysis. We Eliminate the Time and Effort by Sourcing the Properties, Verifying the Information Through Our Proprietary Database and Providing Detailed Financial Analysis- So Investors Can Make a Sound Investment Decision Backed by Data.\r\n\r\nWe Provides You an Easy and Efficient Way of Investment Which Takes You to Heights of Appreciation. Here You Get the Vast Choices and Opportunities to Become Financially Stable.\r\n\r\nWe Aspire to Provide You the Best of All Investments Which in Turn Provides You Life Long Returns and a Happier Lifestyle.', '1', NULL, '$2y$10$w3Ny.7YoFqHV9sJybEuEA.8TeGIcG27.ocMCGMxi/1n1SkNum5mvq', NULL, '2023-01-05 04:35:04', '2023-01-11 05:01:25'),
(69, 2, 'developer', 'Satyam Realty', '8652539223', 'pioneerreal@gmail.com', 1, NULL, 'Vashi, Navi Mumbai, Maharashtra, India', '1204/05/06, 12th Floor, Maithilli Signet, Plot No. 39/4, Sector - 30A,  Vashi, Navi Mumbai - 400705 Maharashtra, India.', NULL, 'Satyam Developers', '1204/05/06, 12th Floor, Maithilli Signet, Plot No. 39/4, Sector - 30A,  Vashi, Navi Mumbai - 400705, Maharashtra, India .', '20', '63b7c65b02d70.png', 'With Decades of Experience, Satyam Developers has Transitioned to Become a Renowned Brand in The Navi Mumbai Real Estate. Since The Time of its Inception, We have Rendered Robust Standing Concrete Structures and Landmark Projects in Residential and Commercial Spaces. We Take Pride in Building Innovative Homes in Navi Mumbai with an Objective of Providing Happiness, Comfort and Enhancing The Lives of Residents.\r\n\r\nSince The Start of Our Journey in The Construction and Land Development, We\'ve Made Every Effort to be True To Our Core Values and Backed By This Philosophy We Have Developed Immaculate Living Spaces and Offices You Would Love To Move into. The Numerous Success of Our Residential and Commercial Projects is The Result of Our Dynamic and Qualified Team Driven By The Passion For Real Estate Development.\r\n\r\nWith an Efficient Team, Value For Money Projects, Decades of Experience and Meeting Customer Needs in The Construction Industry, We are Growing Strength By Strength. Today, We are Considered As One of The Trusted Brand Names and Finest Real Estate Companies in Mumbai.\r\n\r\nWhen It Comes To Residential Or Commercial Properties in Navi Mumbai, We Offer a Plethora of Options. with Satyam Developers, You Can Be Rest Assured and Know That You\'re Joining a Select Group of Satisfied Customers Spanning Decades.\r\n\r\nToday, Satyam Developers has Developed More Than a Million Square Feet of Properties in Ulwe, Kharghar, Roadpali and Other Areas in Navi Mumbai.', '1', NULL, '$2y$10$vWYdh.xIfjq9cHC.bXZ6V.glyHZsQaAnNNViWNEQqu44DkWwbLJkC', NULL, '2023-01-05 22:30:32', '2023-01-10 22:35:06'),
(70, 2, 'developer', 'Maxrich Realty', '8767442442', 'sales@maxrichrealty.com', 1, NULL, 'Andheri West, Mumbai, Maharashtra, India', '207, Sri Krishna Complex , Opp Laxmi industrial Estate, New Link Rd, Andheri West, Mumbai 400053 Maharashtra India', NULL, 'Maxrich Realty', '207, Sri Krishna Complex , Opp Laxmi industrial Estate, New Link Rd, Andheri West, Mumbai 400053 Maharashtra India', '7', '63bbba52abd56.png', 'About Maxrich Realty The Word Maxrich Derives from Two Meaningful and Impactful Words - “Maximise” and “Enrich”.  In Our Commitment to do so, We Keep Innovation, Quality and Versatility At The Forefronts of Our Mission. It is Our Passion to Build Better Standards of Living, While Also Being Conscious of The Ripples We Create As Developers of The World. We Like to Believe that Maxrich is here to Deliver a Fundamental Change in The Realty Business, Delivering True Quality and Striving for Perfection. We are Committed to Bringing The Functional and The Elegant Together in All Our Endeavors by Striving for Perfection in Real Estate. We Take Pride in Our Integrity Towards Providing Realty that Truly Inspires The World.', '1', NULL, '$2y$10$UlDnpCqkqNt8UEKQxZXKgOZCu7SGu3Af/LMKE9Ku.AmHfXc2DQN.W', NULL, '2023-01-07 05:10:52', '2023-01-11 00:24:11'),
(73, 2, 'developer', 'Moraj Group', '8452845810', 'morajdriveprive@gmail.com', 1, NULL, 'Navi Mumbai, Maharashtra 400709, India', 'Plot No 1, Sector 23, Koparkhairane Navi Mumbai 400709 Maharashtra India', NULL, 'Moraj Group', 'Plot No 1, Sector 23, Koparkhairane Navi Mumbai 400709 Maharashtra India', '20', '63bbc5215b619.jpeg', 'The Moraj Group has Carved a Formidable Niche for Itself as a Trendsetter in Modern and Futuristic Architecture in The New Generation Metropolis Of Navi Mumbai.\r\n\r\nAt Moraj, Nothing is Left to Chance Or to Any Third Party. Our Organisation Not Only Conceives and Formulates The Building Designs, But also has The Buildings Constructed, Both as an Integrated Whole, Confirming to International Standards and with The Finest and Latest Building Technology.\r\n\r\nWhile an Organisation Can Legitimately Pride Itself in What it has Done and What it has Been Doing, Achievement Of Excellence and Consumer Satisfaction in an Ever Growing Degree has Been Our Constant Aim in Business.\r\n\r\nWe Take Pride in Asserting That We Don’t Create Buildings, We Create Trust and it is The Trust and Business Ethics That have Made Us a Renowned Name in The Real Estate Industry.', '1', NULL, '$2y$10$hFtd.v/V.u7QlXAK5Z.QXOSuO.n4cISCB6iAMkiyZDJEylMaYihBG', NULL, '2023-01-08 23:35:22', '2023-01-11 03:08:12'),
(74, 2, 'developer', 'Sanghvi Realty', '8657871774', 'infenia@sanghvirealty.com', 1, NULL, 'Sanghvi Realty, Rahman Building, Cawasji Patel Road, Kala Ghoda, Fort, Mumbai 400001, Maharashtra, India', 'Sanghvi Realty, Rahman Building, Cawasji Patel Road, Kala Ghoda, Fort, Mumbai 400001, Maharashtra, India', NULL, 'Sanghvi Realty', 'Sanghvi Realty, Rahman Building, Cawasji Patel Road, Kala Ghoda, Fort, Mumbai 400001, Maharashtra, India', '40', '63bd384a5903e.png', 'Based in Nation’s financial hub Mumbai, Sanghvi Realty is a reputed company in the acquisition, development, construction and management of residential and commercial real estate. At Sanghvi Realty, we know that the real estate industry is a service business, and we remain committed to the ideal of service excellence in all our activities. Because of this focus, our employees are encouraged to take the initiative in giving an extra measure of helpfulness, involvement and concern, making Sanghvi Realty the trademark associated with customer satisfaction. This philosophy is the prevalent attitude in all we do, and is embodied in our mission statement. We know how important these ideals are to the potential resident searching for his next home, to the prospective commercial tenant looking for a new site, and to the investor researching a new opportunity. At Sanghvi, service, quality and value are important to us because we know how important they are to you.', '1', NULL, '$2y$10$1VpjFQqcTlAZo7.WbOCdwuLqZeZcMcpN9vQzplQRCz0c46TovGX3.', NULL, '2023-01-10 01:56:11', '2023-01-11 02:22:37'),
(75, 2, 'customer', 'test', '8531258123', 'test@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$hLokuZuhGaj5KVJKYGJqEuwWLCi81EkaXcVkicwFWNx0CweJnspvW', NULL, '2023-01-11 23:12:58', '2023-01-11 23:12:58'),
(76, 2, 'developer', 'JMJ Projects', '9769008003', 'shamim@suncitypanvel.com', 1, NULL, 'Shree Chamunda Harmony, Sector 18, Kamothe, Panvel, Navi Mumbai, Maharashtra, India', 'Shree Chamunda Harmony, Sector 18, Kamothe, Panvel, Navi Mumbai, Maharashtra, India', NULL, 'JMJ Projects', 'Shree Chamunda Harmony, Office No-23 & 24 Plot No-68, 69, Sector 19, Kamothe, Navi Mumbai, Maharashtra 410209', '3', '63ce8f301f48a.jpeg', 'Shree Chamunda Harmony, Office No-23 & 24 Plot No-68, 69, Sector 19, Kamothe, Navi Mumbai, Maharashtra 410209', '1', NULL, '$2y$10$eOvuANmsMuXseErZOoQRDOgdGMnER8aDKQeF.BBanRqf7ctddGAMq', NULL, '2023-01-23 04:54:14', '2023-01-23 05:45:51'),
(77, 2, 'developer', 'PB Associates', '9920044402', '-unverified@unverified.unverfied', 1, NULL, 'Malad West, Mumbai, Maharashtra, India', 'Malad West, Mumbai, Maharashtra, India', NULL, 'PB Associates', 'PB Associates, Malad West, Mumbai', 'unverified', '63cf712ba4020.jpeg', 'PB Associates, Malad West, Mumbai.', '1', NULL, '$2y$10$L21dvW3FME8ncIqSkiroC.ph.ywl1kjAmWCvy592OfqQF3EGZC27m', NULL, '2023-01-23 21:27:58', '2023-01-23 21:49:53'),
(78, 2, 'developer', 'Mohd Shakib Raza', '9768840168', 'Shakibraza2021@gmail.com', 1, NULL, 'Mumbai, Maharashtra, India', 'marol', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$km0PdxK9OHrYhZiso6qB9.C.u9iiWqgU0T0KrGzDZf6G25zW6DB7y', NULL, '2023-04-07 00:51:22', '2023-04-07 00:51:22'),
(79, 2, 'customer', 'Mohd Shakib Raza', '7017923028', 'web1.brandswitch@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$5L.v3k5aaaewOle02MQuV.LzdfDHRLj/H6OyzO0nICugvDoSJHLdS', NULL, '2023-05-10 15:39:01', '2023-05-10 15:39:01'),
(80, 2, 'developer', 'Apex Infratec', '9076004433', 'sales@apexinfratec.com', 1, NULL, 'Borivali, Mumbai, Maharashtra, India', '408, Blue Rose Industrial Estate, Near Metro Mall,  W.E Highway, Borivali East, Mumbai- 400066', NULL, 'Apex Infratec', NULL, NULL, '6465f2b2f27e9.png', 'The year 2010 marks the beginning of Apex Group ; the group has built for itself an unshakable reputation for quality, efficiency, trust, meticulous planning, hi-tech amenities, superlative designs and timely completion. The company undertakes real estate projects in residential, commercial and retail sectors. We believe that our job is not just to build homes and commercial projects but also to build lifelong relationships. The steadily growing real estate business and the trust that its customers have in us, formed the backbone of success of the Apex Group. The Group promises to create landmarks, in the field of Real Estate for several decades to come. At Apex Group, we focus on creating developments that set new benchmarks across all market segments and are deeply committed to delivering promises to our customer.\r\n\r\nApex Group is synonymous with reaching at par level of excellence, Building with Credibility and Sustainability to balance Ethics, Environment and Economics.\r\n\r\nApex Group has a truly enviable gamut and is known for adding new dimensions to luxury and high tech living with wide range residential projects in Maharashtra and Gujarat. In tandem with the evolving lifestyle trends, we always strive to design residences that are ahead of the times in terms of aesthetics and functionality.\r\n\r\nBacked by an experienced team of experts from diverse backgrounds, Apex endeavors to create a new paradigm in urban living with more unique projects. Going forward, we hope to continue changing the landscape of our country with growth and sustainability.', '1', NULL, '$2y$10$wkwQwCAW7hPnrrhqgs5fRe.HgLR/IOHL.tlcJCBxju56wnmvbu856', NULL, '2023-05-17 15:27:13', '2023-05-18 14:13:49'),
(81, 2, 'developer', 'Romell Group', '9619980441', 'leena.l@romellgroup.com', 1, NULL, 'Subhash Road, Vishnu Prasad Society, Navpada, Vile Parle East Mumbai, Maharashtra, India', 'Subhash Road, Vishnu Prasad Society, Navpada, Vile Parle East, Mumbai, Maharashtra, India', NULL, 'Romell Group', 'Subhash Road, Vishnu Prasad Society, Navpada, Vile Parle East, Mumbai, Maharashtra, India', '20', '6466240a44e00.png', 'For over 2 decades The Romell Group has been instrumental in shaping the iconic skyline of Mumbai. Merging cutting age technology with sheer determination, some of the most recognizable and modern constructions bear the name of Romell. Today, Romell Group savors its own niche in Mumbai’s competitive real estate market, thanks to the Reliable, Renowned & Result Driven approach and owing to a unique way of understanding and adapting to modern times.\r\n\r\nWe are also one of the few A+ rated developers in Mumbai & with over two decades of expertise in developing residential, commercial/I.T. Spaces in Mumbai, we stay committed to delivering ‘an address of pride’ with every project that we can undertake.', '1', NULL, '$2y$10$aR8nMjPrLCOQ5WK0DMuEh.19gsBGHMULJYCg/82FKiSenbuK7N.5q', NULL, '2023-05-18 17:08:54', '2023-05-18 17:11:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `configurations`
--
ALTER TABLE `configurations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featured_projects`
--
ALTER TABLE `featured_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `furnish_types`
--
ALTER TABLE `furnish_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `localities`
--
ALTER TABLE `localities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
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
-- Indexes for table `price_list`
--
ALTER TABLE `price_list`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_amenities`
--
ALTER TABLE `project_amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_floor_plans`
--
ALTER TABLE `project_floor_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_galleries`
--
ALTER TABLE `project_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_leads`
--
ALTER TABLE `project_leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_pdfs`
--
ALTER TABLE `project_pdfs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_pdf_form`
--
ALTER TABLE `project_pdf_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_possessions`
--
ALTER TABLE `project_possessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_request`
--
ALTER TABLE `project_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_bookmarks`
--
ALTER TABLE `property_bookmarks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_categories`
--
ALTER TABLE `property_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_fors`
--
ALTER TABLE `property_fors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_galleries`
--
ALTER TABLE `property_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_leads`
--
ALTER TABLE `property_leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_statuses`
--
ALTER TABLE `property_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_types`
--
ALTER TABLE `property_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requirements`
--
ALTER TABLE `requirements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tenant_types`
--
ALTER TABLE `tenant_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `configurations`
--
ALTER TABLE `configurations`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `featured_projects`
--
ALTER TABLE `featured_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `furnish_types`
--
ALTER TABLE `furnish_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `localities`
--
ALTER TABLE `localities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `price_list`
--
ALTER TABLE `price_list`
  MODIFY `id` bigint(121) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `project_amenities`
--
ALTER TABLE `project_amenities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `project_floor_plans`
--
ALTER TABLE `project_floor_plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `project_galleries`
--
ALTER TABLE `project_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `project_leads`
--
ALTER TABLE `project_leads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `project_pdfs`
--
ALTER TABLE `project_pdfs`
  MODIFY `id` bigint(121) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `project_pdf_form`
--
ALTER TABLE `project_pdf_form`
  MODIFY `id` bigint(121) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `project_possessions`
--
ALTER TABLE `project_possessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `project_request`
--
ALTER TABLE `project_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `property_bookmarks`
--
ALTER TABLE `property_bookmarks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `property_categories`
--
ALTER TABLE `property_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `property_fors`
--
ALTER TABLE `property_fors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `property_galleries`
--
ALTER TABLE `property_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `property_leads`
--
ALTER TABLE `property_leads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `property_statuses`
--
ALTER TABLE `property_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `property_types`
--
ALTER TABLE `property_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `requirements`
--
ALTER TABLE `requirements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tenant_types`
--
ALTER TABLE `tenant_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

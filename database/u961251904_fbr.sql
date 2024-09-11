-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 11, 2024 at 05:09 PM
-- Server version: 10.11.8-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u961251904_fbr`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_logins`
--

CREATE TABLE `admin_logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_logins`
--

INSERT INTO `admin_logins` (`id`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'poomaniselvam518@gmail.com', 'FeedbackAdmin@2024', NULL, '2024-09-11 13:32:13');

-- --------------------------------------------------------

--
-- Table structure for table `bodycolors`
--

CREATE TABLE `bodycolors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `background_colors` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bodycolors`
--

INSERT INTO `bodycolors` (`id`, `created_at`, `updated_at`, `background_colors`) VALUES
(2, '2024-09-06 04:58:11', '2024-09-06 04:58:42', 'yellow'),
(3, '2024-09-06 05:00:19', '2024-09-06 05:00:19', 'pink'),
(4, '2024-09-06 06:34:06', '2024-09-06 06:34:06', '#a22525'),
(5, '2024-09-06 06:41:51', '2024-09-06 06:41:51', '#ffffff'),
(6, '2024-09-06 06:41:56', '2024-09-06 06:41:56', '#b17c7c'),
(7, '2024-09-06 06:41:57', '2024-09-06 06:41:57', '#b17c7c'),
(8, '2024-09-06 06:42:17', '2024-09-06 06:42:17', '#dd3131'),
(9, '2024-09-06 06:43:00', '2024-09-06 06:43:00', '#d62929'),
(10, '2024-09-06 06:45:33', '2024-09-06 06:45:33', '#c17b7b'),
(11, '2024-09-06 07:02:33', '2024-09-06 07:02:33', '#8080ff'),
(12, '2024-09-07 01:01:27', '2024-09-07 01:01:27', '#c2fbff'),
(13, '2024-09-08 09:48:59', '2024-09-08 09:48:59', '#411b1b'),
(14, '2024-09-08 09:49:00', '2024-09-08 09:49:00', '#411b1b'),
(15, '2024-09-08 09:49:58', '2024-09-08 09:49:58', '#c2adad'),
(16, '2024-09-08 11:37:57', '2024-09-08 11:37:57', '#0080ff'),
(17, '2024-09-09 08:17:02', '2024-09-09 08:17:02', '#80ff00'),
(18, '2024-09-10 05:35:35', '2024-09-10 05:35:35', '#80ff00'),
(19, '2024-09-10 05:36:04', '2024-09-10 05:36:04', '#8080ff'),
(20, '2024-09-10 05:36:30', '2024-09-10 05:36:30', '#80ff00'),
(21, '2024-09-10 20:09:20', '2024-09-10 20:09:20', '#ffbbff'),
(22, '2024-09-10 20:11:02', '2024-09-10 20:11:02', '#0080ff'),
(23, '2024-09-11 09:26:10', '2024-09-11 09:26:10', '#ff80ff'),
(24, '2024-09-11 14:01:37', '2024-09-11 14:01:37', '#80ffff');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(5, '2024_08_03_071045_create_customers_table', 2),
(6, '2024_08_03_071248_create_products_table', 2),
(7, '2024_08_03_071436_create_shippings_table', 2),
(8, '2024_08_03_071628_product', 2),
(9, '2024_08_03_071655_product', 2),
(10, '2024_08_03_071737_customers', 2),
(11, '2024_08_03_072002_create_vendors_table', 2),
(12, '2024_08_21_053226_create_ratings_table', 2),
(13, '2024_08_22_050808_create_admin_logins_table', 2),
(14, '2024_08_22_110323_add_feedback_columns_to_ratings_table', 2),
(15, '2024_08_23_064038_create_navbars_table', 2),
(16, '2024_08_23_130325_create_questions_table', 2),
(17, '2024_09_06_100027_create_bodycolors_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `navbars`
--

CREATE TABLE `navbars` (
  `body_image` varchar(244) NOT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `background_color` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `navbars`
--

INSERT INTO `navbars` (`body_image`, `id`, `image`, `background_color`, `created_at`, `updated_at`) VALUES
('', 1, 'navbars/1YetPyv2ydUl2OguzAfII8I8pHMrWxBXzPDsKhxB.png', '#0080ff', '2024-08-23 14:44:02', '2024-08-23 14:44:02'),
('', 2, 'navbars/O5JA7X0evsiyAlxE8pcZz74rT0e90kE4lGiyAjeu.png', '#0080ff', '2024-08-23 14:44:04', '2024-08-23 14:44:04'),
('', 3, 'navbars/QxikIX2KVyzWjxWInBVpYqB0Ok8szqNXUa4axErO.png', '#b07878', '2024-08-23 23:44:25', '2024-08-23 23:44:25'),
('', 4, 'navbars/HirhbWzMuUok1DcebixNshU2alldAps6KT6CPR4X.png', '#e7d9d9', '2024-08-24 00:23:16', '2024-08-24 00:23:16'),
('', 5, 'navbars/NXapIsyhYTCo5nw1PvkfO12Th62jQ1Gwolh177y7.jpg', '#c9abab', '2024-08-24 00:25:45', '2024-08-24 00:25:45'),
('', 6, 'navbars/ZuLaZ0Jiw2Lqdn9qjdWDpeiaMA8qXLyK2QOKWpUL.png', '#d99b9b', '2024-08-24 00:33:32', '2024-08-24 00:33:32'),
('', 7, 'navbars/daSxgLQKIAQPzjofYKJII7bkSffGkuOBrHGrnNTl.png', '#c33737', '2024-08-24 01:44:05', '2024-08-24 01:44:05'),
('', 8, 'navbars/DwlkOQJWPKjWDD8v8KPOHBTOI6UZigQWhV7sqRN1.jpg', '#ffffff', '2024-08-24 02:10:07', '2024-08-24 02:10:07'),
('', 9, 'navbars/BQ4qqaI8PJ5PKmRTKToO1d345Bh44CB2IHmMf3RL.jpg', '#d98282', '2024-08-24 02:10:31', '2024-08-24 02:10:31'),
('', 10, 'navbars/417Owt0jCKVvdDowjCgIGdwGfWh6FfMsxBHksl4s.png', '#7d4f4f', '2024-08-29 02:01:11', '2024-08-29 02:01:11'),
('', 11, 'navbars/B2HIPby70T55X7M2yt1ptn86h4MO8HaSfOWqAzJk.png', '#a7e13d', '2024-09-04 02:10:26', '2024-09-04 02:10:26'),
('', 12, 'navbars/TDCv46VHQcPTf94XCeWdUWl3fqRLzeiz6l9MfZb8.jpg', '#00ff80', '2024-09-06 07:01:55', '2024-09-06 07:01:55'),
('', 13, 'navbars/0wU0llqaQoJzfjOeRBfDlqiYTEUFHm2xh7vKZLgM.png', '#de8c8c', '2024-09-07 00:33:30', '2024-09-07 00:33:30'),
('', 14, 'navbars/ny9ys7Iam32sdG1hamcSnNcWJyGP2ff06scdx4QZ.png', '#e15b5b', '2024-09-07 00:47:22', '2024-09-07 00:47:22'),
('', 15, 'navbars/7MDyTtpegEohGzLdns2T4rUAOAK6CkohbyC6Vaxg.png', '#3330df', '2024-09-07 01:02:32', '2024-09-07 01:02:32'),
('', 16, 'navbars/tV0hMwvqI1xTdM2l8jgPLmbF3YqPdwAJteAucgCW.png', '#d67171', '2024-09-07 01:04:28', '2024-09-07 01:04:28'),
('', 17, 'navbars/IJRYkNOsnzWuAuoqNzg12lKjhXnctgnXCv78aKOE.png', '#9d5858', '2024-09-07 01:07:43', '2024-09-07 01:07:43'),
('', 18, 'navbars/phQWFKeZ1nKz3lgdM5gNHaI7B5e1yHkYHqvjHRCd.png', '#ac0c0c', '2024-09-07 01:08:38', '2024-09-07 01:08:38'),
('', 19, 'navbars/NPIBJvVHN6v4KQm1bzpaWKYsDnq8SpCpQw8kdEpF.png', '#b85656', '2024-09-07 01:10:09', '2024-09-07 01:10:09'),
('', 20, 'navbars/yFsrEGWSWusOQwEGFlxv0qLQX8ws47qP8TKwXW4q.png', '#0a1bff', '2024-09-07 01:11:55', '2024-09-07 01:11:55'),
('', 21, 'navbars/tvnLaYNWuFcjoA53dq41xheHDGxgpvPW3KqBvPtz.png', '#ffffff', '2024-09-08 11:37:18', '2024-09-08 11:37:18'),
('', 22, 'navbars/t6sGQUd0UX9nj0gVy4DYeQhSxewLpOt3ByR3aAmv.png', '#ffffff', '2024-09-08 11:39:24', '2024-09-08 11:39:24'),
('', 23, 'navbars/9B9ciJtPwQvDFVRJKNwD0EdFzy9Au5sgb8McJ34d.png', '#ffffff', '2024-09-08 11:45:36', '2024-09-08 11:45:36'),
('', 24, 'navbars/ZthHhGT7xJfZFLvTuxu22sQ1dfu0qhu6VwpqHGXe.png', '#ffffff', '2024-09-08 11:46:03', '2024-09-08 11:46:03'),
('', 25, 'navbars/vbVuEHyeHmgEigUT5MV8JpYQgvlRVPv5L6uTFRiX.png', '#ffffff', '2024-09-08 11:47:23', '2024-09-08 11:47:23'),
('', 26, 'navbars/NKWatwVVX9Y4SCBnAvrhIPpubjf76bLuXgqBRHUe.png', '#ffffff', '2024-09-08 11:48:32', '2024-09-08 11:48:32'),
('', 27, 'navbars/CK6cSOrs6d038sRIsnF88aYXHinF9sXYAV63bG3R.jpg', '#00ff00', '2024-09-08 12:19:53', '2024-09-08 12:19:53'),
('', 28, 'navbars/FZoQBPohc618fz7Iz4UyYz0swPQSA4jB8lxUqCoZ.png', '#8080c0', '2024-09-09 08:17:26', '2024-09-09 08:17:26'),
('', 29, 'navbars/4ifbbTFGGh6AeLR4Ad1BAPadhxARllC9yRcGWrnm.png', '#8f7080', '2024-09-09 08:18:09', '2024-09-09 08:18:09'),
('', 30, 'navbars/aRQKfUoCMjmzRwgJ52ofQb9NWjnVmaKSu6904xCZ.png', '#ff0080', '2024-09-10 05:16:59', '2024-09-10 05:16:59'),
('', 31, 'navbars/D6upL5AUmL7pVo3P119uGqkLeTw0CqCuYABuPikn.png', '#c87979', '2024-09-10 10:38:28', '2024-09-10 10:38:28'),
('', 32, 'navbars/AT9IeRonE5x8o3oVyMorNGBPYU9duzydWaG7yNmI.png', '#80ff80', '2024-09-10 11:40:59', '2024-09-10 11:40:59'),
('', 33, 'navbars/gTWfus9fMyByygkt2jcFvW2fsNrFiGTi3DBLwJp3.png', '#ffffff', '2024-09-10 11:45:37', '2024-09-10 11:45:37'),
('', 34, 'navbars/2emZKUXlnLeR9JDQotEuk37G9Yg6bVIRYkrLel1X.png', '#ffffff', '2024-09-10 11:47:53', '2024-09-10 11:47:53'),
('', 35, 'navbars/s9nfMRI1F444DK0iLDHy00ddxwXIkB2LQseNgwhY.png', '#ff0000', '2024-09-10 11:49:23', '2024-09-10 11:49:23'),
('', 36, 'navbars/ybiIACTM5aUI4XoidxaZ5ugxqG7LVO1GsVQYKqhR.png', '#c98787', '2024-09-10 12:10:10', '2024-09-10 12:10:10'),
('', 37, 'navbars/wWgHy2usNzLkwtuhvWJ4XKsTiHRPKuCZkurJbnOh.png', '#ffffff', '2024-09-10 12:10:48', '2024-09-10 12:10:48'),
('', 38, 'navbars/v3IIoWc61E8pzj5HmFdE0epHLa8AXJT3tsu5L0My.png', '#d98787', '2024-09-10 12:11:46', '2024-09-10 12:11:46'),
('', 39, 'navbars/tzDULXISi7nOMTYmdzJgfKSmdGsvu0oarO7PsdK3.png', '#df6868', '2024-09-10 12:13:53', '2024-09-10 12:13:53'),
('', 40, 'navbars/hqGyNgQBef1rYukdZB7mFycpBX3gUaUH0yIk0DGr.png', '#d85555', '2024-09-10 12:14:50', '2024-09-10 12:14:50'),
('', 41, 'navbars/tcY6B3mfaBN7XEy9O2VQqQsgoYf3FZnQIV2qG4we.png', '#80ffff', '2024-09-11 06:38:51', '2024-09-11 06:38:51'),
('', 42, 'navbars/w4JjvVRvppEEg9DPDQ9YKJDvjAU0plR9oiEibuON.png', '#e68484', '2024-09-11 06:50:54', '2024-09-11 06:50:54'),
('', 43, 'navbars/Ct8h563Cu5x3fJ7LOABepAeyo6kMV1jLFwXrhNDg.png', '#e68484', '2024-09-11 06:50:54', '2024-09-11 06:50:54'),
('', 44, 'navbars/I2EUSr5zNJ45ICf5yM5BwdcJ3JCEJ6XATbHDT80P.png', '#e68484', '2024-09-11 06:50:54', '2024-09-11 06:50:54'),
('', 45, 'navbars/KJvNevcVSQKnDZ6EKQwGY3SZF1l029t1vbWGzCyx.png', '#e68484', '2024-09-11 06:50:54', '2024-09-11 06:50:54'),
('', 46, 'navbars/zPOF3pbPE5EE6EmBDQeg8vPcpXqjtAINaXXEPjb4.png', '#e68484', '2024-09-11 06:50:54', '2024-09-11 06:50:54'),
('', 47, 'navbars/HlGP6PPbkHo7WzwgOQSPNEAXU2thi3O3NTQqUSj1.png', '#e68484', '2024-09-11 06:50:54', '2024-09-11 06:50:54'),
('', 48, 'navbars/gAqZSqIr03Q1AUfr7WU6Cpgej21yF8cSvugPDqBR.png', '#e68484', '2024-09-11 06:50:54', '2024-09-11 06:50:54'),
('', 49, 'navbars/hM8Psh41Ln88ni3jRNQU67wmjkWSD1Nin3kDLN7e.png', '#ff80c0', '2024-09-11 09:49:33', '2024-09-11 09:49:33'),
('', 50, 'navbars/FpmhAT0tWPMXgHjaG0lV5WCb6YgxrwrFSWxYHacy.png', '#ffffff', '2024-09-11 09:50:04', '2024-09-11 09:50:04'),
('', 51, 'navbars/rWg0cVPeO2bVXaZbXjRbYjhY91aHpPi6rKQsaoEP.png', '#80ffff', '2024-09-11 09:55:29', '2024-09-11 09:55:29'),
('', 52, 'navbars/yme65YuwKdTHEPDvlS3dKBeZuPQGR4ruFxqTvKo9.png', '#ffffff', '2024-09-11 09:56:30', '2024-09-11 09:56:30'),
('', 53, 'navbars/AbuVjqkT60ra0nx5CwH5TB3zU3U6dtsAoY9u1BHc.png', '#ffffff', '2024-09-11 10:06:02', '2024-09-11 10:06:02'),
('', 54, 'navbars/PLRH0ByyZYdAwYznJLDJS1N9Zm9qZUd8pU2781Rq.png', '#ffffff', '2024-09-11 10:06:25', '2024-09-11 10:06:25'),
('', 55, 'navbars/kCIPX826MuBDNyhDRMveKSi67YHjmH5UaaQWXYRh.png', '#ff0080', '2024-09-11 10:10:09', '2024-09-11 10:10:09'),
('', 56, 'navbars/RiSnmotwCD6K0CIVlYdudKQhyD88e85dbpUgL32m.png', '#ffffff', '2024-09-11 10:20:51', '2024-09-11 10:20:51'),
('', 57, 'navbars/aFIsq8klptxiVtZuvQghNk04rwUENIArrKvGaMzs.png', '#00ff00', '2024-09-11 10:21:18', '2024-09-11 10:21:18'),
('navbars/iOsFHlF5COjIyi1pJIA3yEa9UaxDpOKBSUfv6KkE.png', 58, 'navbars/MAgq9UKQjuItNmU27xyNmWQzOY6fs0n0AZAri2d2.png', '#fff', '2024-09-11 12:15:34', '2024-09-11 12:15:34'),
('navbars/j1eHqw4VSItFzF5Bl1dBhMTxxzYHHkjXh04uFATD.png', 59, 'navbars/1buEzI1trX70fLQDMaXEWTiCTZm4Jo9hncE7o4vi.png', '#ff80ff', '2024-09-11 12:18:16', '2024-09-11 12:18:16'),
('navbars/ZuLcVLR3eGWnmfIFqHmgiuatn67T5KIOXXjW5EaD.png', 60, 'navbars/Fxa9a9w8N5bIl5YZit8VJJiGaM6RwlEN3lSx4EmU.png', '#8080c0', '2024-09-11 12:25:45', '2024-09-11 12:25:45'),
('navbars/2uIv0mhGlFsCi1VKEgEMKbLkfCkrOIH12wKN3lVV.png', 61, 'navbars/HCt3LsrPwUAq1dMPbHrRzwxHlwZnALsGxN1rrKHC.png', '#ffffff', '2024-09-11 12:29:12', '2024-09-11 12:29:12'),
('navbars/zGAuuCj3b3aqqlo6MWOqpZfdPC9MdzzpOmt6kxFa.png', 62, 'navbars/ALHS4v23lfxAK7aORytWsxxqoSDb0wVuAfrIyIZZ.png', '#400040', '2024-09-11 12:32:08', '2024-09-11 12:32:08'),
('navbars/gyFQgv28gVvD7Vqwfgni5igloU1w45tSebZZz59d.png', 63, 'navbars/GjPHOSk33tWbhqGDDMja9xlPpTy7S5Pr0GeZGj1a.png', '#ffffff', '2024-09-11 12:43:47', '2024-09-11 12:43:47'),
('navbars/kSyj5wHK7owMqEBdWvWJbXMsyWvaDZk1vvXPJEbO.png', 64, 'navbars/ThpXtXJrsl0mGNuEIJtNaIMvJuL7lBbPcZMyBzWj.png', '#f2d4d4', '2024-09-11 12:44:17', '2024-09-11 12:44:17'),
('navbars/aqtFAk1CPmVpQiZqGObUYUrp1w8YItDyUwDkvLLa.png', 65, 'navbars/wDfg17CLuaOWm8fkEQ8FGa2HbIXFiYSacfHRn9pC.png', '#f9b4b4', '2024-09-11 12:45:01', '2024-09-11 12:45:01'),
('navbars/a68KGDeiAleGDYLwX4IslFG3um25LhjiSv5XCW0t.png', 66, 'navbars/rNwECtbFMq63P6XDCSYTAB7H4bXxW2mBhS8zbeJt.png', '#ef6b6b', '2024-09-11 12:46:11', '2024-09-11 12:46:11'),
('navbars/oab13FZ6rKPmO2p9lbI0L4uwriWamJ87FP7jD7y4.png', 67, 'navbars/glI8cs0kcFLmxxa47bZ1O6JfatNHLGNeuHk2XKKI.png', '#ff0000', '2024-09-11 12:48:10', '2024-09-11 12:48:10'),
('navbars/sqhjvEuyK6vuMvHuJFQbw0AnBu8a6H87fI1Z2eKZ.png', 68, 'navbars/ei3LZ8wMR4zM3vwLEpPQkGgrXekzBXxrUWCozHUo.png', '#004080', '2024-09-11 13:03:38', '2024-09-11 13:03:38'),
('navbars/jWbtxCVfLANkbuRuFF1k2R90vSq7isLXzVAGW35v.png', 69, 'navbars/Iyyo2KNPi1fHmh1u2gPQ2s12PJfoQHjgoR28ya4e.png', '#004080', '2024-09-11 13:03:43', '2024-09-11 13:03:43'),
('navbars/47YabluzLAQBmYCsHhRkWFdm4l8Bux5XCQ5aC0ua.png', 70, 'navbars/GVH7qqQcPWJwx2vPR9KecTSsosN33Y5etXyYx64A.png', '#004080', '2024-09-11 13:03:44', '2024-09-11 13:03:44'),
('navbars/qXlw5jE7lIO2qf7sjoEpbiY5dZ9KGajgGCOlUxjB.png', 71, 'navbars/GGDMQPoptpnKYJzDDpn5vLIIX9fTiJazu49HnS5b.png', '#c24747', '2024-09-11 13:06:58', '2024-09-11 13:06:58'),
('navbars/TGT1RPjb7k2XSgukRpiwtPiKeP6AcmXKCyZ5mW4D.jpg', 72, 'navbars/8twp761RCA61Iyh08LQznLJxpQpiEemVbhXY4cwR.png', '#ff0000', '2024-09-11 13:14:42', '2024-09-11 13:14:42'),
('navbars/0vqHF6qlDCXe6eX6SBGRLoluYQM8NovflKOQnZc6.jpg', 73, 'navbars/BAHgIIeSn5BUgviLBI8jpyJrxGxpqyyfq5MfojZz.png', '#ff0000', '2024-09-11 13:14:43', '2024-09-11 13:14:43'),
('navbars/oTRYUc4ot8LvKdLhbsLOze07lTXgzlCjt24rjH46.jpg', 74, 'navbars/GZEs36pOeigFAmsZS4XPWDyO9Asntux2asFl3iyA.png', '#0080ff', '2024-09-11 13:18:36', '2024-09-11 13:18:36'),
('navbars/VBfGuY8wznpQK64eXKQRDD7QFT2iPRmJmKHcS5Ui.jpg', 75, 'navbars/lC9qvP428pcgo0M3vFkiBQAB46UpZBWFuZ4Hi7Sv.png', '#0080ff', '2024-09-11 13:22:04', '2024-09-11 13:22:04'),
('navbars/Vu2F26ynDEjm0I5IRKur6NEsts23ZvtFND7nuCL1.jpg', 76, 'navbars/6Zzx7Qhm8bftlz4JWdsaGv0IiPaM4cXLnqoTe9F5.png', '#004080', '2024-09-11 13:41:18', '2024-09-11 13:41:18'),
('navbars/9mF4AAoA3NBSwsYp0wHDmcXMLU2NMoGiijN4dWwQ.jpg', 77, 'navbars/EgHC9nGlQ6j23UmDhdc7kT7fBBFHio8FNj9kbVhw.png', '#004080', '2024-09-11 13:41:20', '2024-09-11 13:41:20'),
('navbars/qX4h5av0ArPHgmcZokSmQPEMIRm6QLpm1NzzHLgI.jpg', 78, 'navbars/scVLolQfmayAPlkswUcTQNGV9BlfzxAdeAfGgxwT.jpg', '#0080c0', '2024-09-11 13:41:50', '2024-09-11 13:41:50'),
('navbars/QDFWtyo17qHmbWPAn6rnrFchMOH0EGJb5izj2yqq.jpg', 79, 'navbars/2y3bq79g9nxeMqLQm6kWPBeBJ6jQ8Fe8lbWtPRMi.png', '#0080ff', '2024-09-11 13:42:23', '2024-09-11 13:42:23'),
('navbars/lLPZ200ioQqduKYgr7mwMq4zh4uM4yo8HjpL16G9.jpg', 80, 'navbars/hh9ZfX7IPeBox4VLi6dRJxDhwmMlggLSdSmYk5Kl.png', '#0080ff', '2024-09-11 13:57:45', '2024-09-11 13:57:45'),
('navbars/qtBfxzsEJayf8p8u3c3EHrseCH8oeAE39l4lCsHE.png', 81, 'navbars/o4g6DvJ8zxMTLzPQcl39hpE0ca5FHuTaFSWpZPsU.png', '#c0c0c0', '2024-09-11 15:13:03', '2024-09-11 15:13:03'),
('navbars/fApn86PCryBvnBMQFPP2NHBYHNlrmCYKfBb0hgGm.png', 82, 'navbars/M3u7sZZNAbll4izuGMqqD5fyvZYt7oiS3N4wFMNJ.png', '#8080c0', '2024-09-11 15:14:09', '2024-09-11 15:14:09'),
('navbars/681kdvPYj4fKk9BYzGsMqXpfDfIi8Jk9XkWoTRLk.png', 83, 'navbars/jFZGQiDeQxaCJEFMvkClws7wCyuxdflJlCgfq0OT.png', '#ff8000', '2024-09-11 15:16:21', '2024-09-11 15:16:21');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`options`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `label`, `options`, `created_at`, `updated_at`) VALUES
('question1', 'who is best batsman in cricker?', '[{\"id\":\"quality\",\"label\":\"msd1\"},{\"id\":\"speed\",\"label\":\"adem gilcrist1\"},{\"id\":\"support\",\"label\":\"kumar sangakara11\"},{\"id\":\"price\",\"label\":\"nicolos pooran22\"}]', '2024-08-24 00:01:18', '2024-09-11 13:47:17'),
('question2', 'who is the best batsman in t20 cricket?12345', '[{\"id\":\"speed\",\"label\":\"dhoni123\"},{\"id\":\"quality\",\"label\":\"david warner123\"},{\"id\":\"support\",\"label\":\"abishak123\"},{\"id\":\"price\",\"label\":\"gill12345\"}]', '2024-08-24 00:01:18', '2024-09-11 10:23:52');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `rating` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `question1` varchar(255) DEFAULT NULL,
  `question2` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `Name`, `Mobile`, `email`, `rating`, `created_at`, `updated_at`, `question1`, `question2`, `comment`) VALUES
(1, 'Poomani Poomani', '08680800512', 'poomaniselvam518@gmail.com', 'best', '2024-08-23 13:52:19', '2024-08-23 13:52:19', 'rohit', 'powel', 'tyupl[;\''),
(2, 'Poomani Poomani', '08680800512', 'poomaniselvam518@gmail.com', 'best', '2024-08-23 23:43:10', '2024-08-23 23:43:10', 'virat,rohit,surya,msd', 'russel,pollard', 'india is best team for odi and t20'),
(3, 'Poomani Poomani', '08680800512', 'poomaniselvam518@gmail.com', 'best', '2024-08-23 23:47:13', '2024-08-23 23:47:13', 'msd', 'pollard', 'asdafgj'),
(4, 'Poomani Poomani', '08680800512', 'poomaniselvam518@gmail.com', 'poor', '2024-08-24 00:18:42', '2024-08-24 00:18:42', 'quality,support,speed,price', 'speed,quality,price,support', 'its very good'),
(5, 'Poomani Poomani', '08680800512', 'poomaniselvam518@gmail.com', 'excellent', '2024-08-24 01:17:38', '2024-08-24 01:17:38', 'quality', 'speed', 'sdafsdgfhgjhk'),
(6, 'Poomani Poomani', '08680800512', 'poomaniselvam518@gmail.com', 'best', '2024-08-24 01:19:45', '2024-08-24 01:19:45', 'quality', 'support', 'wewrtyu'),
(7, 'sindhu', '08680800512', 'poomaniselvam518@gmail.com', 'best', '2024-08-24 01:22:43', '2024-08-24 01:22:43', 'quality', 'quality', 'i love indian team'),
(8, 'dinesh kumar', '9898989898', 'poomaniselvam518@gmail.com', 'best', '2024-08-24 01:30:33', '2024-08-24 01:30:33', 'quality,support,speed,price', 'speed,quality,support,price', 'i love indian team'),
(10, 'Shiyam Poomani', '08680800512', 'selvamselvi950@gmail.com', 'best', '2024-08-24 01:44:42', '2024-08-24 01:44:42', 'virat,dhoni,pant', 'dhoni', 'mkjhgjk'),
(11, 'Shiyam Poomani', '08680800512', 'selvamselvi950@gmail.com', 'best', '2024-08-24 02:14:29', '2024-08-24 02:14:29', 'india,australia,england,wi', 'dhoni,david warner,abishak,gill', 'i love india'),
(12, 'Shiyam Poomani', '08680800512', 'selvamselvi950@gmail.com', 'excellent', '2024-08-29 02:00:07', '2024-08-29 02:00:07', 'india,australia,england', 'dhoni,david warner,abishak,gill', 'fghkjbnllkhgfxzdzcx'),
(13, 'Shiyam Poomani', '08680800512', 'selvamselvi950@gmail.com', 'excellent', '2024-08-29 02:00:08', '2024-08-29 02:00:08', 'india,australia,england', 'dhoni,david warner,abishak,gill', 'fghkjbnllkhgfxzdzcx'),
(14, 'Shiyam Poomani', '08680800512', 'selvamselvi950@gmail.com', 'excellent', '2024-08-29 02:00:08', '2024-08-29 02:00:08', 'india,australia,england', 'dhoni,david warner,abishak,gill', 'fghkjbnllkhgfxzdzcx'),
(15, 'Shiyam Poomani', '08680800512', 'selvamselvi950@gmail.com', 'excellent', '2024-08-29 02:00:08', '2024-08-29 02:00:08', 'india,australia,england', 'dhoni,david warner,abishak,gill', 'fghkjbnllkhgfxzdzcx'),
(16, 'Shiyam Poomani', '08680800512', 'selvamselvi950@gmail.com', 'excellent', '2024-08-29 02:00:09', '2024-08-29 02:00:09', 'india,australia,england', 'dhoni,david warner,abishak,gill', 'fghkjbnllkhgfxzdzcx'),
(17, 'Shiyam Poomani', '08680800512', 'selvamselvi950@gmail.com', 'excellent', '2024-08-29 02:00:09', '2024-08-29 02:00:09', 'india,australia,england', 'dhoni,david warner,abishak,gill', 'fghkjbnllkhgfxzdzcx'),
(18, 'Shiyam Poomani', '08680800512', 'selvamselvi950@gmail.com', 'excellent', '2024-08-29 02:00:09', '2024-08-29 02:00:09', 'india,australia,england', 'dhoni,david warner,abishak,gill', 'fghkjbnllkhgfxzdzcx'),
(19, 'Shiyam Poomani', '08680800512', 'selvamselvi950@gmail.com', 'best', '2024-08-31 04:38:03', '2024-08-31 04:38:03', 'india', 'david warner,abishak', 'love u macha'),
(20, 'Shiyam Poomani', '08680800512', 'selvamselvi950@gmail.com', 'best', '2024-08-31 04:41:56', '2024-08-31 04:41:56', 'msd,adem gilcrist,kumar sangakara', 'david warner', 'sdfgkjlh;kjgdhadfsWertiuopiuyutrewdewrtyuio'),
(21, 'Poomani', '8980800512', 'poomaniselvam518@gmail.com', 'excellent', '2024-09-01 14:24:56', '2024-09-01 14:24:56', 'msd,adem gilcrist,kumar sangakara', 'dhoni,gill,david warner', 'Ihfdtvvvh'),
(22, 'Sugitha', '918680800512', 'poomaniselvam518@gmail.com', 'best', '2024-09-01 14:35:43', '2024-09-01 14:35:43', 'msd,adem gilcrist,nicolos pooran,kumar sangakara', 'abishak,david warner,dhoni,gill', 'Lojdfgggh'),
(23, 'Poomani', '918680800512', 'poomaniselvam518@gmail.com', 'excellent', '2024-09-01 14:39:36', '2024-09-01 14:39:36', 'msd,adem gilcrist,nicolos pooran', 'david warner,abishak,dhoni', 'Poooggjff'),
(24, 'Lokesh', '8680800512', 'poomaniselvam518@gmail.com', 'good', '2024-09-02 00:59:54', '2024-09-02 00:59:54', 'msd,adem gilcrist,kumar sangakara,nicolos pooran', 'dhoni,david warner,abishak,gill', 'Love you india'),
(25, 'Dipesh', '918680800512', 'poomaniselvam518@gmail.com', 'poor', '2024-09-02 01:03:14', '2024-09-02 01:03:14', 'kumar sangakara,nicolos pooran,msd,adem gilcrist', 'abishak', 'Rgabfbfba'),
(26, 'Scevv', '918680800512', 'poomaniselvam518@gmail.com', 'poor', '2024-09-02 01:13:19', '2024-09-02 01:13:19', 'kumar sangakara,msd', 'david warner', 'Vddcdc'),
(27, 'Poomani Selvam', '918680800512', 'poomaniselvam518@gmail.com', 'excellent', '2024-09-02 01:14:07', '2024-09-02 01:14:07', 'adem gilcrist', 'david warner', 'Pooshs'),
(28, 'Vig', '918680800512', 'poomaniselvam518@gmail.com', 'poor', '2024-09-02 01:14:49', '2024-09-02 01:14:49', 'adem gilcrist,kumar sangakara', 'david warner', 'Thx cff'),
(29, 'Madan', '918680800512', 'poomaniselvam518@gmail.com', 'best', '2024-09-02 01:21:00', '2024-09-02 01:21:00', 'msd,adem gilcrist,nicolos pooran', 'dhoni,gill,david warner', 'P id hhb'),
(30, 'Poomani', '918680800512', 'selvamselvi950@gmail.com', 'best', '2024-09-03 06:29:45', '2024-09-03 06:29:45', 'adem gilcrist,msd', 'david warner', 'Fgh'),
(31, 'Poomani', '918680800512', 'selvamselvi950@gmail.com', 'good', '2024-09-03 07:14:26', '2024-09-03 07:14:26', 'adem gilcrist,msd', 'dhoni,david warner', 'Gfvcd'),
(32, 'Poooggjff', '918680800512', 'poomaniselvam518@gmail.com', 'best', '2024-09-03 07:19:55', '2024-09-03 07:19:55', 'kumar sangakara', 'dhoni,abishak', 'Pooiihhhhyu'),
(33, 'Poomani Poomani', '08680800512', 'poomaniselvam518@gmail.com', 'best', '2024-09-04 02:25:18', '2024-09-04 02:25:18', 'msd,adem gilcrist', 'dhoni,abishak', 'hfghdfsa'),
(34, 'Poomani Poomani', '08680800512', 'poomaniselvam518@gmail.com', 'excellent', '2024-09-06 01:03:43', '2024-09-06 01:03:43', 'adem gilcrist,kumar sangakara', 'gill,abishak', 'qawsdfvgb'),
(35, 'Shiyam Poomani', '08585478854', 'selvamselvi950@gmail.com', 'best', '2024-09-06 01:32:47', '2024-09-06 01:32:47', 'adem gilcrist,kumar sangakara', 'dhoni,david warner', 'qqqqq'),
(36, 'Shiyam Poomani', '08585478854', 'selvamselvi950@gmail.com', 'best', '2024-09-06 01:32:49', '2024-09-06 01:32:49', 'adem gilcrist,kumar sangakara', 'dhoni,david warner', 'qqqqq'),
(37, 'Shiyam Poomani', '08585478854', 'selvamselvi950@gmail.com', 'best', '2024-09-06 01:33:41', '2024-09-06 01:33:41', 'adem gilcrist,kumar sangakara', 'dhoni,david warner', 'qqqqq'),
(38, 'Shiyam Poomani', '08585478854', 'selvamselvi950@gmail.com', 'best', '2024-09-06 01:34:43', '2024-09-06 01:34:43', 'adem gilcrist,kumar sangakara', 'dhoni,david warner', 'qqqqq'),
(39, 'lokesh Poomani', '08585478854', 'selvamselvi950@gmail.com', 'poor', '2024-09-06 01:36:08', '2024-09-06 01:36:08', 'msd', 'abishak', 'qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq'),
(40, 'poomani mani mani', '08585478854', 'poomaniselvam518@gmail.com', 'best', '2024-09-06 01:44:25', '2024-09-06 01:44:25', 'nicolos pooran', 'gill', 'best batsman'),
(41, 'poomani mani mani', '08585478854', 'poomaniselvam518@gmail.com', 'best', '2024-09-06 01:46:55', '2024-09-06 01:46:55', 'msd', 'dhoni', 'india'),
(42, 'poomani mani mani', '08585478854', 'poomaniselvam518@gmail.com', 'best', '2024-09-06 01:51:46', '2024-09-06 01:51:46', 'msd,adem gilcrist', 'david warner', 'pooo'),
(43, 'Poomani Poomani', '08680800512', 'poomaniselvam518@gmail.com', 'best', '2024-09-06 01:54:14', '2024-09-06 01:54:14', 'nicolos pooran', 'gill', 'aaaa'),
(44, 'Poomani Poomani', '08680800512', 'subashjeyaram380@gmail.com', 'best', '2024-09-06 05:15:39', '2024-09-06 05:15:39', 'rohit', 'powel', 'india is best team for odi and t20'),
(45, 'Poomani Poomani', '08680800512', 'subashjeyaram380@gmail.com', 'best', '2024-09-06 05:16:36', '2024-09-06 05:16:36', 'rohit', 'powel', 'india is best team for odi and t20'),
(46, 'Poomani Poomani', '08680800512', 'subashjeyaram380@gmail.com', 'best', '2024-09-06 05:17:55', '2024-09-06 05:17:55', 'rohit', 'powel', 'india is best team for odi and t20'),
(47, 'Poomani Poomani', '08680800512', 'subashjeyaram380@gmail.com', 'best', '2024-09-06 05:20:29', '2024-09-06 05:20:29', 'rohit', 'powel', 'india is best team for odi and t20'),
(48, 'Poomani Poomani', '08680800512', 'subashjeyaram380@gmail.com', 'best', '2024-09-06 05:21:41', '2024-09-06 05:21:41', 'rohit', 'powel', 'india is best team for odi and t20'),
(49, 'Poomani Poomani', '08680800512', 'subashjeyaram380@gmail.com', 'best', '2024-09-06 05:22:41', '2024-09-06 05:22:41', 'rohit', 'powel', 'india is best team for odi and t20'),
(50, 'Poomani Poomani', '08680800512', 'subashjeyaram380@gmail.com', 'best', '2024-09-06 05:50:45', '2024-09-06 05:50:45', 'rohit', 'powel', 'india is best team for odi and t20'),
(51, 'Poomani Poomani', '08680800512', 'subashjeyaram380@gmail.com', 'best', '2024-09-06 05:53:09', '2024-09-06 05:53:09', 'rohit', 'powel', 'india is best team for odi and t20'),
(52, 'Shiyam', '8122315788', 'subashjeyaram380@gmail.com', 'best', '2024-09-06 05:54:24', '2024-09-06 05:54:24', 'Virat Kohli', 'Raina', 'india is best team for odi and t20'),
(53, 'Shiyam', '8122315788', 'subashjeyaram380@gmail.com', 'best', '2024-09-06 05:55:36', '2024-09-06 05:55:36', 'Virat Kohli', 'Raina', 'india is best team for odi and t20'),
(54, 'poomani', '8789898899', 'poomaniselvam512@gmail.com', 'best', '2024-09-06 07:03:27', '2024-09-06 07:03:27', 'msd', 'dhoni,david warner', 'mass'),
(55, 'poomani', '8789898899', 'poomaniselvam512@gmail.com', 'best', '2024-09-06 07:03:32', '2024-09-06 07:03:32', 'msd', 'dhoni,david warner', 'mass'),
(56, 'poomani', '8789898899', 'poomaniselvam512@gmail.com', 'best', '2024-09-06 07:03:37', '2024-09-06 07:03:37', 'msd', 'dhoni,david warner', 'mass'),
(57, 'Poomani', '918680800512', 'poomaniselvam518@gmail.com', 'good', '2024-09-06 07:31:29', '2024-09-06 07:31:29', 'msd,adem gilcrist', 'dhoni,david warner', 'Pooo'),
(58, 'Poomani', '918680800512', 'poomaniselvam518@gmail.com', 'good', '2024-09-06 07:31:34', '2024-09-06 07:31:34', 'msd,adem gilcrist', 'dhoni,david warner', 'Pooo'),
(59, 'Poomani', '918680800512', 'poomaniselvam518@gmail.com', 'good', '2024-09-06 07:31:38', '2024-09-06 07:31:38', 'msd,adem gilcrist', 'dhoni,david warner', 'Pooo'),
(60, 'Prakash', '918680800512', 'selvamselvi950@gmail.com', 'best', '2024-09-06 07:34:00', '2024-09-06 07:34:00', 'msd,adem gilcrist', 'dhoni,david warner', 'Indian'),
(61, 'Prakash', '918680800512', 'selvamselvi950@gmail.com', 'best', '2024-09-06 07:34:04', '2024-09-06 07:34:04', 'msd,adem gilcrist', 'dhoni,david warner', 'Indian'),
(62, 'Poomani Poomani', '08680800512', 'poomaniselvam518@gmail.com', 'best', '2024-09-07 07:35:33', '2024-09-07 07:35:33', 'nicolos pooran', 'dhoni', 'gnhjnm.,'),
(63, 'Poomani Poomani', '08680800512', 'poomaniselvam518@gmail.com', 'best', '2024-09-07 07:35:42', '2024-09-07 07:35:42', 'nicolos pooran', 'dhoni', 'gnhjnm.,'),
(64, 'poomani mani mani', '08585478854', 'poomaniselvam518@gmail.com', 'excellent', '2024-09-07 07:41:22', '2024-09-07 07:41:22', 'adem gilcrist', 'dhoni', 'derdtghjk,.'),
(65, 'poomani mani mani', '08585478854', 'poomaniselvam518@gmail.com', 'excellent', '2024-09-07 07:41:29', '2024-09-07 07:41:29', 'adem gilcrist', 'dhoni', 'derdtghjk,.'),
(66, 'Poomani Poomani', '08680800512', 'poomaniselvam518@gmail.com', 'best', '2024-09-08 09:49:33', '2024-09-08 09:49:33', 'adem gilcrist', 'dhoni', 'Nothig to say'),
(67, 'Shiyam Poomani', '08680800512', 'selvamselvi950@gmail.com', 'best', '2024-09-08 10:02:46', '2024-09-08 10:02:46', 'adem gilcrist', 'abishak', 'Shiyam'),
(68, 'Shiyam Poomani', '08680800512', 'selvamselvi950@gmail.com', 'best', '2024-09-08 10:02:48', '2024-09-08 10:02:48', 'adem gilcrist', 'abishak', 'Shiyam'),
(69, 'Shiyam', '8122315788', 'shiyamtest@gmail.com', 'poor', '2024-09-08 11:57:54', '2024-09-08 11:57:54', 'kumar sangakara', 'gill', 'Nothing'),
(70, 'Poomani', '918680800512', 'poomaniselvam518@gmail.com', 'best', '2024-09-09 00:52:11', '2024-09-09 00:52:11', 'msd,adem gilcrist', 'dhoni,david warner', 'Miss u'),
(71, 'Yogesh', '918680800512', 'poomaniselvam518@gmail.com', 'best', '2024-09-09 03:38:52', '2024-09-09 03:38:52', 'msd,adem gilcrist,kumar sangakara,nicolos pooran', 'david warner,gill,abishak,dhoni', 'Poomani'),
(72, 'Venkatesh', '9894324458', 'venkateshponrajselvi@gmail.com', 'best', '2024-09-09 04:20:27', '2024-09-09 04:20:27', 'kumar sangakara', 'david warner', 'Done'),
(73, 'Sneha', '1122334455', 'Sneha@gmail.com', 'best', '2024-09-09 06:47:44', '2024-09-09 06:47:44', 'msd,nicolos pooran', 'dhoni,gill', 'NA'),
(74, 'Sneha', '1122334455', 'Sneha@gmail.com', 'best', '2024-09-09 06:47:44', '2024-09-09 06:47:44', 'msd,nicolos pooran', 'dhoni,gill', 'NA'),
(75, 'Sneha', '1122334455', 'Sneha@gmail.com', 'best', '2024-09-09 06:47:44', '2024-09-09 06:47:44', 'msd,nicolos pooran', 'dhoni,gill', 'NA'),
(76, 'Poomani', '918680800512', 'poomaniselvam518@gmail.com', 'best', '2024-09-09 07:16:56', '2024-09-09 07:16:56', 'msd,adem gilcrist,kumar sangakara,nicolos pooran', 'dhoni,david warner,abishak,gill', 'Pooiihhhhyu'),
(77, 'Loki', '917010376164', 'lokki107.es@gmail.com', 'best', '2024-09-09 07:32:23', '2024-09-09 07:32:23', 'msd,adem gilcrist,kumar sangakara,nicolos pooran', 'david warner,dhoni,abishak,gill', 'Good'),
(78, 'poomani', '8689123344', 'poomaniselvam518@gmail.com', 'excellent', '2024-09-09 08:15:26', '2024-09-09 08:15:26', 'msd,nicolos pooran', 'abishak', 'nothing'),
(79, 'poomani', '8689123344', 'poomaniselvam518@gmail.com', 'excellent', '2024-09-09 08:15:29', '2024-09-09 08:15:29', 'msd,nicolos pooran', 'abishak', 'nothing'),
(80, 'poomani', '8689123344', 'poomaniselvam518@gmail.com', 'excellent', '2024-09-09 08:16:02', '2024-09-09 08:16:02', 'msd,nicolos pooran', 'abishak', 'nothing'),
(81, 'poomani', '8689123344', 'poomaniselvam518@gmail.com', 'excellent', '2024-09-09 08:16:27', '2024-09-09 08:16:27', 'msd,nicolos pooran', 'abishak', 'nothing'),
(82, 'Poomani', '918680800512', 'poomaniselvam518@gmail.com', 'best', '2024-09-09 08:41:25', '2024-09-09 08:41:25', 'kumar sangakara,nicolos pooran', 'dhoni,david warner', 'Poob'),
(83, 'Pradeep', '8825815569', 'cdvpradeep@gmail.com', 'excellent', '2024-09-09 14:21:48', '2024-09-09 14:21:48', 'msd', 'dhoni', 'Nil'),
(84, 'Lokesh e', '917010376164', 'lokki107.es@gmail.com', 'best', '2024-09-09 14:24:24', '2024-09-09 14:24:24', 'msd,adem gilcrist,kumar sangakara', 'dhoni,david warner', 'Demo'),
(85, 'Sugitha', '918680800512', 'selvamselvi950@gmail.com', 'best', '2024-09-09 15:59:49', '2024-09-09 15:59:49', 'nicolos pooran', 'dhoni', 'Nothing'),
(86, 'Sugan', '9790141408', 'Sugan.mano95@gmail.com', 'best', '2024-09-09 18:35:03', '2024-09-09 18:35:03', 'msd', 'david warner', 'Aaa'),
(87, 'Venkatesh', '9894324458', 'vengatp14@outlook.com', 'best', '2024-09-10 09:20:22', '2024-09-10 09:20:22', 'nicolos pooran', 'dhoni', 'Done'),
(88, 'Venkatesh', '9894324458', 'vengatp14@outlook.com', 'best', '2024-09-10 09:20:28', '2024-09-10 09:20:28', 'nicolos pooran', 'dhoni', 'Done'),
(89, 'Shiyam', '8122315788', 'shsh@gmail.com', 'best', '2024-09-10 18:45:48', '2024-09-10 18:45:48', 'adem gilcrist', 'david warner', 'Nothing to say'),
(90, 'Shiyam', '8122315788', 'shsh@gmail.com', 'best', '2024-09-10 18:46:04', '2024-09-10 18:46:04', 'adem gilcrist', 'david warner', 'Nothing to say'),
(91, 'asdfg', '567845678765', 'sugithapandaram0912@gmail.com', 'best', '2024-09-10 19:06:02', '2024-09-10 19:06:02', 'kumar sangakara', 'abishak', 'ert'),
(92, 'werftg', '23432223443', 'shahaj@gmail.com', 'best', '2024-09-10 19:19:41', '2024-09-10 19:19:41', 'nicolos pooran', 'abishak', 'd'),
(93, 'werftg', '23432223443', 'shahaj@gmail.com', 'best', '2024-09-10 19:20:08', '2024-09-10 19:20:08', 'nicolos pooran', 'abishak', 'd'),
(94, 'dfds', '1234223432', 'shsh@gmail.com', 'best', '2024-09-10 19:35:45', '2024-09-10 19:35:45', NULL, NULL, NULL),
(95, 'dfds', '1234223432', 'shsh@gmail.com', 'best', '2024-09-10 19:35:53', '2024-09-10 19:35:53', NULL, NULL, NULL),
(96, 'dfds', '1234223432', 'shsh@gmail.com', 'best', '2024-09-10 19:36:08', '2024-09-10 19:36:08', NULL, NULL, NULL),
(97, 'werew', '234323212', 'sugithapandaram0912@gmail.com', 'best', '2024-09-10 19:37:09', '2024-09-10 19:37:09', NULL, NULL, NULL),
(98, 'werew', '234323212', 'sugithapandaram0912@gmail.com', 'best', '2024-09-10 19:37:27', '2024-09-10 19:37:27', NULL, NULL, NULL),
(99, 'Shiyam', '8122314578', 'sugithapandaram0912@gmail.com', 'best', '2024-09-10 19:41:15', '2024-09-10 19:41:15', NULL, NULL, NULL),
(100, 'Shiyam', '8122314578', 'sugithapandaram0912@gmail.com', 'best', '2024-09-10 19:41:31', '2024-09-10 19:41:31', NULL, NULL, NULL),
(101, 'Shiyam', '8122315788', 'shahaj@gmail.com', 'best', '2024-09-10 19:47:16', '2024-09-10 19:47:16', NULL, NULL, NULL),
(102, 'Shiyam', '8122315788', 'shahaj@gmail.com', 'best', '2024-09-10 19:47:35', '2024-09-10 19:47:35', NULL, NULL, NULL),
(103, 'ganesh', '9098787654', 'ebinesar@gmail.com', 'best', '2024-09-10 20:08:38', '2024-09-10 20:08:38', NULL, NULL, NULL),
(104, 'poomani', '8787665432', 'selvamselvi950@gmail.com', 'best', '2024-09-11 09:12:14', '2024-09-11 09:12:14', NULL, NULL, NULL),
(105, 'Yyh', '8666589988', 'lokki107.es@gmail.com', 'best', '2024-09-11 09:13:25', '2024-09-11 09:13:25', NULL, NULL, NULL),
(106, 'poomani', '8798986545', 'poomaniselvam512@gmail.com', 'best', '2024-09-11 09:14:54', '2024-09-11 09:14:54', NULL, NULL, NULL),
(107, 'poomani', '9090876644', 'hazelfoxjones@gmail.com', 'best', '2024-09-11 09:28:03', '2024-09-11 09:28:03', NULL, NULL, NULL),
(108, 'poomani', '8787878781', 'poomaniselvam518@gmail.com', 'best', '2024-09-11 09:28:48', '2024-09-11 09:28:48', NULL, NULL, NULL),
(109, 'dinesh', '8789898767', 'shahaj@gmail.com', 'best', '2024-09-11 10:24:44', '2024-09-11 10:24:44', NULL, NULL, NULL),
(110, 'ajith', '8799098677', 'poomaniselvam518@gmail.com', 'best', '2024-09-11 10:25:23', '2024-09-11 10:25:23', NULL, NULL, NULL),
(111, 'venkatesh', '9894324458', 'vengatp14@gmail.com', 'best', '2024-09-11 10:30:26', '2024-09-11 10:30:26', NULL, NULL, NULL),
(112, 'poomani', '8789898989', 'poomaniselvam512@gmail.com', 'excellent', '2024-09-11 10:33:28', '2024-09-11 10:33:28', NULL, NULL, NULL),
(113, 'hari', '8680800511', 'poomaniselvam512@gmail.com', 'best', '2024-09-11 13:45:31', '2024-09-11 13:45:31', NULL, NULL, NULL),
(114, 'hari', '8680800511', 'poomaniselvam512@gmail.com', 'best', '2024-09-11 13:45:55', '2024-09-11 13:45:55', NULL, NULL, NULL),
(115, 'dinesh', '8787878789', 'poomaniselvam512@gmail.com', 'best', '2024-09-11 13:59:22', '2024-09-11 13:59:22', NULL, NULL, NULL),
(116, 'dinesh', '8787878789', 'poomaniselvam512@gmail.com', 'best', '2024-09-11 13:59:48', '2024-09-11 13:59:48', NULL, NULL, NULL),
(117, 'Poomani', '918680800512', 'poomaniselvam518@gmail.com', 'excellent', '2024-09-11 14:22:12', '2024-09-11 14:22:12', NULL, NULL, NULL),
(118, 'Poomani', '918680800512', 'poomaniselvam518@gmail.com', 'excellent', '2024-09-11 14:22:13', '2024-09-11 14:22:13', NULL, NULL, NULL),
(119, 'Poomani', '9898741236', 'Shiyamraina40@gmail.com', 'best', '2024-09-11 15:30:09', '2024-09-11 15:30:09', NULL, NULL, NULL),
(120, 'Shiyam', '8680800512', 'Shiyamraina40@gmail.com', 'best', '2024-09-11 15:35:20', '2024-09-11 15:35:20', NULL, NULL, NULL),
(121, 'Poomani', '918680800512', 'poomaniselvam518@gmail.com', 'best', '2024-09-11 16:00:30', '2024-09-11 16:00:30', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Mobile` varchar(255) NOT NULL,
  `Pincode` varchar(255) NOT NULL,
  `State` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Mobile` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_logins`
--
ALTER TABLE `admin_logins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_logins_email_unique` (`email`);

--
-- Indexes for table `bodycolors`
--
ALTER TABLE `bodycolors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

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
-- Indexes for table `navbars`
--
ALTER TABLE `navbars`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_logins`
--
ALTER TABLE `admin_logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `bodycolors`
--
ALTER TABLE `bodycolors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `navbars`
--
ALTER TABLE `navbars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

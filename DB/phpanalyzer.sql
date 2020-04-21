-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2020 at 10:09 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpanalyzer`
--

-- --------------------------------------------------------

--
-- Table structure for table `email_reports`
--

CREATE TABLE `email_reports` (
  `id` int(11) NOT NULL,
  `source` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT 'INSTAGRAM',
  `source_user_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` enum('SUCCESS','FAILED') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `facebook_logs`
--

CREATE TABLE `facebook_logs` (
  `id` int(11) NOT NULL,
  `facebook_user_id` int(11) DEFAULT NULL,
  `username` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  `followers` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facebook_logs`
--

INSERT INTO `facebook_logs` (`id`, `facebook_user_id`, `username`, `likes`, `followers`, `date`) VALUES
(1, 1, 'facebook', 2682193, 2937473, '2020-04-02 13:17:53'),
(2, 2, 'funny', 8227, 8372, '2020-04-02 13:22:44'),
(3, 3, 'quotes', 1328, 1334, '2020-04-02 13:42:49'),
(4, 2, 'funny', 8306, 8454, '2020-04-06 05:00:07'),
(5, 5, 'LoveIsTheEndOfLife', 177, 179, '2020-04-06 05:01:12'),
(6, 6, 'Funny-102763554690977', 3, 3, '2020-04-06 09:10:11');

-- --------------------------------------------------------

--
-- Table structure for table `facebook_users`
--

CREATE TABLE `facebook_users` (
  `id` int(11) NOT NULL,
  `username` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_picture_url` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  `followers` int(11) DEFAULT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verified` int(11) DEFAULT 0,
  `added_date` datetime DEFAULT NULL,
  `last_check_date` datetime DEFAULT NULL,
  `last_successful_check_date` datetime DEFAULT NULL,
  `is_demo` int(11) DEFAULT 0,
  `is_private` int(11) DEFAULT 0,
  `is_featured` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facebook_users`
--

INSERT INTO `facebook_users` (`id`, `username`, `name`, `profile_picture_url`, `likes`, `followers`, `details`, `is_verified`, `added_date`, `last_check_date`, `last_successful_check_date`, `is_demo`, `is_private`, `is_featured`) VALUES
(1, 'facebook', 'Facebook', 'https://scontent.fdel3-2.fna.fbcdn.net/v/t1.0-1/p200x200/87284588_124830725745195_9124219877853233152_n.png?_nc_cat=1&_nc_sid=dbb9e7&_nc_oc=AQleyx5NW-uTr8qQkCmYFOqIGu9IA1tBgc8qb62ABPwEAXC2cv0eBUeL4JGQyEVzdPY&_nc_ht=scontent.fdel3-2.fna&oh=7d7e162b6d1237145177fdc945773607&oe=5EAAD6CF', 2682193, 2937473, '{\"type\":false}', 1, '2020-04-02 13:17:53', '2020-04-02 13:17:53', '2020-04-02 13:17:53', 0, 0, 0),
(2, 'funny', 'Funny', 'https://scontent.fpat1-1.fna.fbcdn.net/v/t1.0-1/p200x200/19059220_784355968405665_1814033307750604303_n.jpg?_nc_cat=104&_nc_sid=dbb9e7&_nc_ohc=gGroV6yqG_kAX9LzQUk&_nc_ht=scontent.fpat1-1.fna&_nc_tp=6&oh=32bbfbab662a2bd9d300e8e397c5aebe&oe=5EB04873', 8306, 8454, '{\"type\":false}', 0, '2020-04-02 13:22:44', '2020-04-06 05:00:07', '2020-04-06 05:00:07', 0, 0, 0),
(3, 'quotes', 'Quotes', 'https://scontent.fdel3-2.fna.fbcdn.net/v/t1.0-1/p200x200/67062661_1207846716061892_3132149950519967744_o.jpg?_nc_cat=110&_nc_sid=dbb9e7&_nc_oc=AQnW5mW93-1xw4SuYRkDcR9eoavGxmq09FhBPzCWbiQgYSYd8G5I1lltDz6klo3Fclk&_nc_ht=scontent.fdel3-2.fna&_nc_tp=6&oh=653ff5e653ebfbbe3785dd7f036749a2&oe=5EA9F2E4', 1328, 1334, '{\"type\":false}', 0, '2020-04-02 13:42:49', '2020-04-02 13:42:49', '2020-04-02 13:42:49', 0, 0, 0),
(5, 'LoveIsTheEndOfLife', 'Love is the end of life', 'https://scontent.fpat1-1.fna.fbcdn.net/v/t1.0-1/c31.31.388.388a/s200x200/430995_276015082508009_1561824971_n.jpg?_nc_cat=111&_nc_sid=dbb9e7&_nc_ohc=Rr-ff5MzO-QAX9N3yNy&_nc_ht=scontent.fpat1-1.fna&oh=d5dec13d2e6438010af5e13c8a25ad59&oe=5EB140DB', 177, 179, '{\"type\":false}', 0, '2020-04-06 05:01:12', '2020-04-06 05:01:12', '2020-04-06 05:01:12', 0, 0, 0),
(6, 'Funny-102763554690977', 'Funny', 'https://scontent.fknu1-1.fna.fbcdn.net/v/t1.0-1/c35.0.200.200a/p200x200/90095866_102764361357563_6738587100813197312_n.jpg?_nc_cat=109&_nc_sid=dbb9e7&_nc_ohc=ve7kiM8Z2EQAX_TIShu&_nc_ht=scontent.fknu1-1.fna&oh=b7d5a1323fe3b03cbfd44d390378c639&oe=5EB08617', 3, 3, '{\"type\":false}', 0, '2020-04-06 09:10:11', '2020-04-06 09:10:11', '2020-04-06 09:10:11', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `source_user_id` int(11) DEFAULT NULL,
  `source` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT 'INSTAGRAM',
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `source_user_id`, `source`, `date`) VALUES
(1, 1, 1, 'facebook', '2020-04-02 13:22:28'),
(2, 1, 2, 'facebook', '2020-04-02 13:26:04'),
(3, 1, 3, 'facebook', '2020-04-02 13:46:41');

-- --------------------------------------------------------

--
-- Table structure for table `instagram_logs`
--

CREATE TABLE `instagram_logs` (
  `id` int(11) NOT NULL,
  `instagram_user_id` int(11) DEFAULT NULL,
  `username` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `followers` int(11) DEFAULT NULL,
  `following` int(11) DEFAULT NULL,
  `uploads` int(11) DEFAULT NULL,
  `average_engagement_rate` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instagram_logs`
--

INSERT INTO `instagram_logs` (`id`, `instagram_user_id`, `username`, `followers`, `following`, `uploads`, `average_engagement_rate`, `date`) VALUES
(1, 4, 'vikas2249', 75, 39, 0, '0', '2020-04-03 06:09:35'),
(2, 5, 'funny', 6854539, 1, 3047, '0.51', '2020-04-03 07:07:57'),
(3, 6, 'vikaspatel2249', 14, 7, 0, '0', '2020-04-06 12:16:47'),
(4, 7, 'katrinakaif', 35250741, 398, 752, '3.50', '2020-04-06 12:17:45'),
(5, 8, 'akshaykumar', 38582163, 5, 1456, '2.86', '2020-04-06 13:59:03'),
(6, 7, 'katrinakaif', 35285912, 398, 752, '3.55', '2020-04-07 05:23:10'),
(7, 8, 'akshaykumar', 38618751, 5, 1456, '3.11', '2020-04-07 09:11:37'),
(8, 13, 'kapilsharma', 22085215, 269, 643, '2.32', '2020-04-07 09:36:02'),
(9, 5, 'funny', 6847151, 1, 3058, '0.53', '2020-04-07 10:47:45'),
(10, 15, 'vickykaushal09', 6316462, 282, 950, '8.58', '2020-04-07 13:09:52'),
(11, 6, 'vikaspatel2249', 14, 7, 0, '0', '2020-04-08 10:56:41'),
(12, 15, 'vickykaushal09', 6327790, 283, 951, '10.06', '2020-04-08 07:55:08'),
(13, 8, 'akshaykumar', 38662122, 5, 1456, '3.17', '2020-04-08 09:52:27'),
(14, 15, 'vickykaushal09', 6349793, 283, 951, '10.28', '2020-04-09 11:11:53'),
(15, 15, 'vickykaushal09', 6425420, 284, 952, '10.15', '2020-04-14 10:19:35'),
(16, 15, 'vickykaushal09', 6440531, 285, 952, '10.19', '2020-04-15 12:28:44'),
(17, 28, 'prtk_shrivastava', 44, 34, 0, '0', '2020-04-15 12:06:39'),
(18, 29, 'roaming_munda', 240, 380, 104, '15.63', '2020-04-15 12:07:00'),
(19, 15, 'vickykaushal09', 6447462, 285, 953, '10.35', '2020-04-16 10:24:11'),
(20, 29, 'roaming_munda', 239, 380, 104, '15.69', '2020-04-16 10:49:59'),
(21, 15, 'vickykaushal09', 6508795, 285, 955, '10.09', '2020-04-21 05:39:43');

-- --------------------------------------------------------

--
-- Table structure for table `instagram_media`
--

CREATE TABLE `instagram_media` (
  `id` int(11) NOT NULL,
  `media_id` bigint(20) DEFAULT NULL,
  `instagram_user_id` int(11) DEFAULT NULL,
  `shortcode` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_date` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` int(11) DEFAULT NULL,
  `likes` bigint(20) DEFAULT NULL,
  `media_url` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_image_url` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('VIDEO','IMAGE','SIDECAR','CAROUSEL') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mentions` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hashtags` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `last_check_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instagram_media`
--

INSERT INTO `instagram_media` (`id`, `media_id`, `instagram_user_id`, `shortcode`, `created_date`, `caption`, `comments`, `likes`, `media_url`, `media_image_url`, `type`, `mentions`, `hashtags`, `date`, `last_check_date`) VALUES
(1, 2278776914464711164, 5, 'B-f14e9B6H8', '1585871398', '🤣🤣🤣', 171, 36090, 'https://www.instagram.com/p/B-f14e9B6H8', 'https://instagram.fpat3-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.1.751.751a/s150x150/91895272_1176169586047944_6441922939952330395_n.jpg?_nc_ht=instagram.fpat3-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=tSOawR1rpE0AX8UIZDG&oh=dfe1a52b7cd781e74912db0de12e041a&oe=5EAF6B9', 'IMAGE', '[]', '[]', '2020-04-03 07:07:57', '2020-04-03 07:07:57'),
(2, 2278736343121333004, 5, 'B-fsqF8hQsM', '1585866562', 'It be like that 🤣', 86, 29132, 'https://www.instagram.com/p/B-fsqF8hQsM', 'https://instagram.fpat3-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.45.832.832a/s150x150/92370496_219126939430516_3267381303823358685_n.jpg?_nc_ht=instagram.fpat3-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=TIPW51GZIbMAX-7EvnQ&oh=59ff3fb7e49f657da3b13d721dc9b596&oe=5EB1C7F', 'IMAGE', '[]', '[]', '2020-04-03 07:07:57', '2020-04-03 07:07:57'),
(3, 2278706777120221678, 5, 'B-fl72dhqnu', '1585863037', 'Oh no 🤣', 155, 33510, 'https://www.instagram.com/p/B-fl72dhqnu', 'https://instagram.fpat3-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.12.735.735a/s150x150/91535946_216340289581462_847247765315349573_n.jpg?_nc_ht=instagram.fpat3-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=j4XGqRSalNoAX_iw9dA&oh=18fb6571e0e890ecb6da24e0dd7d7bf3&oe=5EB1404B', 'IMAGE', '[]', '[]', '2020-04-03 07:07:57', '2020-04-03 07:07:57'),
(4, 2278663778659018356, 5, 'B-fcKJBhSZ0', '1585857911', 'DM this to them 🤣', 204, 16783, 'https://www.instagram.com/p/B-fcKJBhSZ0', 'https://instagram.fpat3-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.9.769.769a/s150x150/91500036_2903361863033059_4546622518777054315_n.jpg?_nc_ht=instagram.fpat3-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=QVfcdA_VSbUAX-FmgT9&oh=88fd2489936f35d9de8f101dfb59b3d2&oe=5EB00F5', 'IMAGE', '[]', '[]', '2020-04-03 07:07:57', '2020-04-03 07:07:57'),
(5, 2274964898708970979, 5, 'B-STIWoB93j', '1585416971', 'Zoom zoom 🤣', 135, 28757, 'https://www.instagram.com/p/B-STIWoB93j', 'https://instagram.fpat3-1.fna.fbcdn.net/v/t51.2885-15/e35/c42.0.665.665a/s150x150/91616524_522157115340368_4314515734862007193_n.jpg?_nc_ht=instagram.fpat3-1.fna.fbcdn.net&_nc_cat=108&_nc_ohc=hZKmKEVFN7gAX-uLPbU&oh=2d2c0fee480e45ec483191b1a6cbae6c&oe=5EB17', 'IMAGE', '[]', '[]', '2020-04-03 07:07:57', '2020-04-03 07:07:57'),
(6, 2274377475318754312, 5, 'B-QNkN9hiwI', '1585346944', 'What would you do? 🤣', 193, 22211, 'https://www.instagram.com/p/B-QNkN9hiwI', 'https://instagram.fpat3-1.fna.fbcdn.net/v/t51.2885-15/e35/c62.0.584.584a/s150x150/90913565_647915652669538_7998362557256244063_n.jpg?_nc_ht=instagram.fpat3-1.fna.fbcdn.net&_nc_cat=110&_nc_ohc=2G8hqOK_c_sAX8HuMud&oh=94f183f1de9d147e153cf0ee8b0884aa&oe=5EB25', 'IMAGE', '[]', '[]', '2020-04-03 07:07:57', '2020-04-03 07:07:57'),
(7, 2274188753969192724, 5, 'B-Pip9ghZ8U', '1585324447', 'Do you think it can? 🤣', 191, 42926, 'https://www.instagram.com/p/B-Pip9ghZ8U', 'https://instagram.fpat3-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.35.813.813a/s150x150/90914009_155224882380246_7585988833713365310_n.jpg?_nc_ht=instagram.fpat3-1.fna.fbcdn.net&_nc_cat=106&_nc_ohc=uh1qTxj2KooAX-e81YG&oh=dc40a414e37931f0a027abc34f4a9ff8&oe=5EAE8', 'IMAGE', '[]', '[]', '2020-04-03 07:07:57', '2020-04-03 07:07:57'),
(8, 2273528350805154011, 5, 'B-NMf1IhVjb', '1585245721', 'Who else? 🤣', 394, 57614, 'https://www.instagram.com/p/B-NMf1IhVjb', 'https://instagram.fpat3-1.fna.fbcdn.net/v/t51.2885-15/e35/c49.0.652.652a/s150x150/90879498_622842381645757_8595163829634027623_n.jpg?_nc_ht=instagram.fpat3-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=JOqrR8PBcikAX9AMui3&oh=a4bc5a0a7d7e8f18deb19dc3e2755371&oe=5EAEF', 'IMAGE', '[]', '[]', '2020-04-03 07:07:57', '2020-04-03 07:07:57'),
(9, 2273480694334734978, 5, 'B-NBqVlh8KC', '1585240040', '🤣🤣🤣', 105, 37463, 'https://www.instagram.com/p/B-NBqVlh8KC', 'https://instagram.fpat3-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.117.937.937a/s150x150/90997707_502787450390353_4988276581780012039_n.jpg?_nc_ht=instagram.fpat3-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=igQ1f4r_6MkAX9doCo3&oh=a22dfb64ab398096345f335c1211cbf7&oe=5EAE', 'IMAGE', '[]', '[]', '2020-04-03 07:07:57', '2020-04-03 07:07:57'),
(10, 2280733017356327193, 7, 'B-myphvB1kZ', '1586104584', '“May it be a light to u in dark places when all other lights go out “ (LOTR )..... 🪔 💛 #9baje9minute #staysafe #stayhome #togetherwearestronger', 9812, 1936371, 'https://www.instagram.com/p/B-myphvB1kZ', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/92199538_106234824270840_2699623731498448886_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=h3qRMRgSp0MAX-5o4gX&oh=ceb4d55cf0a1f0110f269729d6453127&oe=5EB78555', 'SIDECAR', '[]', '[\"9baje9minute\",\"staysafe\",\"stayhome\",\"togetherwearestronger\"]', '2020-04-06 12:17:45', '2020-04-07 05:23:10'),
(11, 2279822559518399419, 7, 'B-jjonzBBu7', '1585996049', 'Happy Saturday 💛......... or as we now call it just “ day”🏠🌟☺️', 10732, 1647672, 'https://www.instagram.com/p/B-jjonzBBu7', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/91911030_749170368947793_2518719496518904587_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=B-zgjzKTlH8AX8Vz8PZ&oh=ab68a806010844e7a5ce36a2bdbb94ac&oe=5EB72AC7', 'IMAGE', '[]', '[]', '2020-04-06 12:17:45', '2020-04-07 05:23:10'),
(12, 2278511207629747948, 7, 'B-e5d8LhHbs', '1585839724', 'Hakuuuuuna Matata!Myfirst ever premiere from home 🏡 #DisneyPlusHotstarPremiere \nCouldn’t pick a better time to come home, Disney+ Hotstar!  @hotstarpremium @hotstarVIP', 9655, 1485308, 'https://www.instagram.com/p/B-e5d8LhHbs', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/91488790_142745313951235_185787692958228008_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=vOk91FFAO88AX8NLffO&oh=cd4224a3074cfc73a64b08f149536754&oe=5EB4E94E', 'IMAGE', '[\"hotstarpremium\",\"hotstarVIP\"]', '[\"DisneyPlusHotstarPremiere\"]', '2020-04-06 12:17:45', '2020-04-07 05:23:10'),
(13, 2277733364532566373, 7, 'B-cIm1WBNll', '1585747016', 'Thursday plans 📒 🏠 I’m gonna  be watching the #DisneyPlusHotstarPremiere of the The Lion King & watching the ENTIRE SEASON of Disney+ Original The Mandalorian live on 2nd April at 6 PM on @HotstarPremium! Subscribe now & mark your calendar , See u there 🌟#StayHomeStaySafe @HotstarVIP', 6989, 585883, 'https://www.instagram.com/p/B-cIm1WBNll', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.90.720.720a/s150x150/91702121_258952985266666_224414618650900875_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=-RSjpHjWRRQAX9YMwlZ&oh=899e0a09ca503f952026e4e7e7cf1e40&oe=5E8E3D', 'VIDEO', '[\"HotstarPremium\",\"HotstarVIP\"]', '[\"DisneyPlusHotstarPremiere\",\"StayHomeStaySafe\"]', '2020-04-06 12:17:45', '2020-04-07 05:23:10'),
(14, 2276366118191195673, 7, 'B-XRux9hWYZ', '1585584009', 'I pledge to donate to the PM CARES fund and the Chief Minister\'s Relief Fund Maharashtra. Heartbreaking to see the hardship and suffering this pandemic has unleashed in the world.', 3175, 348477, 'https://www.instagram.com/p/B-XRux9hWYZ', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/91382546_201130947850691_4355297476130998548_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=X3kbIGKmjAAAX93900j&oh=212eefded97a91a6d1dd341af9bcde66&oe=5EB546C3', 'IMAGE', '[]', '[]', '2020-04-06 12:17:45', '2020-04-07 05:23:10'),
(15, 2274091967426406739, 7, 'B-PMpiBBSlT', '1585312909', 'Happiest happiest birthday to the best girl I know @karishmakohli ...... i think this is one of the first birthdays in a longgggggggg time we have not been together ....I know these are trying times but u always smile and shine through anything ..... ur resilience and optimism is always a example for me . .... love u to my moon and back through good times and bad , thick and thin you’ve been there with me ..... ❤️❤️❤️❤️#birthdaysinthetimeofcorona #bestfriends', 3112, 625978, 'https://www.instagram.com/p/B-PMpiBBSlT', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/91109157_1597243390451983_4118448620325119362_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=QEnNrAQQCVcAX94wvZH&oh=624a6c1f39ad1749166bbb64866baa49&oe=5EB5441A', 'IMAGE', '[\"karishmakohli\"]', '[\"birthdaysinthetimeofcorona\",\"bestfriends\"]', '2020-04-06 12:17:45', '2020-04-07 05:23:10'),
(16, 2272661104415403864, 7, 'B-KHTu_hu9Y', '1585142491', 'Day 21 🔐-One day at a time guys.......we all gotta do our part 🧹........ m apparently @isakaif part is to give commentary and pro tips while seated 🪑 Gotta mix it up ..... this is seriously good exercise btw #stayhome #helpoutathome', 15936, 1132814, 'https://www.instagram.com/p/B-KHTu_hu9Y', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.89.720.720a/s150x150/90490165_2563115067289463_69745854570824464_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=ySvuqu5pRkEAX_WXEhU&oh=a2a4e45ea0bdd464f6878d46a1cfaa64&oe=5E8E8C', 'VIDEO', '[\"isakaif\"]', '[\"stayhome\",\"helpoutathome\"]', '2020-04-06 12:17:45', '2020-04-07 05:23:10'),
(17, 2271815593261209166, 7, 'B-HHD7XhxZO', '1585041544', '#WorkoutFromHome #Part2\nSince we are all practicing #SocialDistancing @yasminkarachiwala and I worked out at our homes and put the workouts together for you to do at yours. Stay home stay safe 😊 ⁣ ⁣⁣\n♦️ #Warmup⁣⁣\n1.Squat with feet hip width apart - 2 sets x 25 reps⁣⁣\n2.Squat with feet wide parallel- 2 sets x 25 reps ⁣⁣\n3.Squat with feet wide turnout- 2 sets x 25 reps ⁣⁣\n4.Squat with feet together- 2 sets x 25 reps⁣ ⁣⁣\n♦️ #Workout:⁣⁣ ⁣⁣\n1.Forward and Backward Lunge - 2 sets x 15 reps ⁣⁣\n2.In Hover, Hip Dips - 3 sets x  20 reps \n3.Curtsy Lunge to Side Kick - 3 sets x 15 reps ⁣⁣\n4.Suicide Push- 3 sets x 15 reps ⁣⁣\n5.Landis or Single Leg Squat - 3 sets x 15 reps ⁣⁣\n6.Squat Jacks - 3 sets x 25 reps ⁣⁣\n⁣⁣\n@reebokindia #CommittedToFitness ⁣⁣\n🎥 by @isakaif 🌟', 11387, 1415308, 'https://www.instagram.com/p/B-HHD7XhxZO', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/91296353_212004376572009_5616589442161110107_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=OvG55aaoINEAX8MFU56&oh=ec7ef9bfd764703990137d93840a7eb8&oe=5E8E656B', 'SIDECAR', '[\"yasminkarachiwala\",\"reebokindia\",\"isakaif\"]', '[\"WorkoutFromHome\",\"Part2\",\"SocialDistancing\",\"Warmup\",\"Workout\",\"CommittedToFitness\"]', '2020-04-06 12:17:45', '2020-04-07 05:23:10'),
(18, 2271240938120982263, 7, 'B-FEZmEBq73', '1584974244', '🍽 +🧽=🙂🏠 really makes u appreciate all the help we have at home  #socialdistancing #staysafe #helpoutathome', 18090, 1212166, 'https://www.instagram.com/p/B-FEZmEBq73', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.90.720.720a/s150x150/90966474_140352950833547_2376751850726824522_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=w_QJmxrXgnsAX_80ShY&oh=1abcb499313ad467e52df74e5ad555d8&oe=5E8E0', 'VIDEO', '[]', '[\"socialdistancing\",\"staysafe\",\"helpoutathome\"]', '2020-04-06 12:17:45', '2020-04-07 05:23:10'),
(19, 2281337178008885555, 8, 'B-o8BOMHJkz', '1586176763', 'All we need is a united stand. Aur phir #MuskurayegaIndia! 🇮🇳 Do share with your family and friends ♥️ @jackkybhagnani @vishalmishraofficial #CapeOfGoodFilms @jjustmusicofficial', 15130, 1036222, 'https://www.instagram.com/p/B-o8BOMHJkz', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-15/e35/p150x150/91939201_157358752402177_2637268167216854501_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=4UJivrIudckAX83MdhJ&oh=6f1d9be7e0c80960e5d5ba5a75525af3&oe=5E9029EB', 'VIDEO', '[\"jackkybhagnani\",\"vishalmishraofficial\",\"jjustmusicofficial\"]', '[\"MuskurayegaIndia\",\"CapeOfGoodFilms\"]', '2020-04-06 13:59:03', '2020-04-08 09:52:27'),
(20, 2281218026942486273, 8, 'B-og7WHH9cB', '1586162402', 'At a time like this when our days are clouded with uncertainty and life has come to a standstill, bringing you a song of hope. #MuskurayegaIndia song out at 6 PM today.\n@jjustmusicofficial #CapeOfGoodFilms @vishalmishraofficial @jackkybhagnani', 2498, 607566, 'https://www.instagram.com/p/B-og7WHH9cB', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/92318697_122971099323833_7114452967312393725_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=s7J0QR_f-_AAX8h4vSB&oh=0ca3931c1598ee81acf7b4f7357a033c&oe=5EB6F0B6', 'IMAGE', '[\"jjustmusicofficial\",\"vishalmishraofficial\",\"jackkybhagnani\"]', '[\"MuskurayegaIndia\",\"CapeOfGoodFilms\"]', '2020-04-06 13:59:03', '2020-04-08 09:52:27'),
(21, 2280711609076499461, 8, 'B-mtx_uHUQF', '1586102032', 'Together we stand and together we will come out of this dark phase. Till then stay strong, stay safe ✨ #9Baje9Minute', 30897, 3628825, 'https://www.instagram.com/p/B-mtx_uHUQF', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.147.1176.1176a/s150x150/91834178_2666086740338652_6984800217047403338_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=2Y9Rf1Il83AAX845A8F&oh=75badede47307b6baa358bfa4ebeee85&oe=5EB', 'IMAGE', '[]', '[\"9Baje9Minute\"]', '2020-04-06 13:59:03', '2020-04-08 09:52:27'),
(22, 2278961510566795794, 8, 'B-gf2teHxoS', '1585893422', 'Put your distress to rest. The government of Maharashtra, BMC and Mpower 1on1 have created a free helpline to ensure that you don’t feel alone. Call 1800-120-820-050 to speak to a mental health professional. #LetsTalk1on1 @my_bmc', 2002, 313232, 'https://www.instagram.com/p/B-gf2teHxoS', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/91640994_218366709374288_5751171158544893177_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=xgNogG_nOVoAX_Z140t&oh=c743a9d717ec0a22fffd06594a99e448&oe=5E900788', 'VIDEO', '[\"my_bmc\"]', '[\"LetsTalk1on1\"]', '2020-04-06 13:59:03', '2020-04-08 09:52:27'),
(23, 2271854013792115267, 8, 'B-HPzBRn9pD', '1585046460', 'At the risk of sounding repetitive, sharing my thoughts...there is a lockdown for a reason. Please don’t be selfish and venture out, you’re putting others lives at risk 🙏🏻‬\n‪#StayAtHomeSaveLives. @my_bmc', 35441, 1769878, 'https://www.instagram.com/p/B-HPzBRn9pD', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-15/e35/p150x150/90433076_2579444528976555_8848138656222692231_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=Z2uKdTql7qIAX8aSTEt&oh=ff22c9b3cb459d919d12a4a3fbccad7f&oe=5E90038A', 'VIDEO', '[\"my_bmc\"]', '[\"StayAtHomeSaveLives\"]', '2020-04-06 13:59:03', '2020-04-08 09:52:27'),
(24, 2270443159481724166, 8, 'B-CPAYzn60G', '1584878091', '5 mins at 5 pm : With my neighbours taking a moment to appreciate those who do not have this luxury of staying at home and working tirelessly to keep us safe. Thank you to all the essential service providers for your selfless work 👏👏👏 #JanataCurfew #BreakCorona @my_bmc #MumbaiPolice @hrithikroshan #SajidNadiadwala', 9613, 1244239, 'https://www.instagram.com/p/B-CPAYzn60G', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-15/e35/c156.0.407.407a/s150x150/91003901_240996383701977_3911084651033510661_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=FU3cbEAisWsAX802eqe&oh=486dbe6d53d15d037598c37bd2dcf0d5&oe=5E900E', 'VIDEO', '[\"my_bmc\",\"hrithikroshan\"]', '[\"JanataCurfew\",\"BreakCorona\",\"MumbaiPolice\",\"SajidNadiadwala\"]', '2020-04-06 13:59:03', '2020-04-08 09:52:27'),
(25, 2268974237725150100, 8, 'B99BAw0HsuU', '1584703138', 'For the first time in life, the winner will be the one who will stay put! This is a race, one which will save us...Say yes to #SocialDistancing please 🙏🏻 #BreakCorona #TogetherAtHome @my_bmc', 12625, 1229396, 'https://www.instagram.com/p/B99BAw0HsuU', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-15/e35/p150x150/90337947_161699988232385_3940769304915542751_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=7GktPVGbR1UAX_vPOqc&oh=381673b699dc562a4912cb638b50e67c&oe=5E8FB910', 'VIDEO', '[\"my_bmc\"]', '[\"SocialDistancing\",\"BreakCorona\",\"TogetherAtHome\"]', '2020-04-06 13:59:03', '2020-04-08 09:52:27'),
(26, 2268848345606527730, 8, 'B98kYypHBry', '1584688067', 'Please Please Please inn neeyamo ka paalan karein, apne aur doosron ki suraksha ke liye. Swasth rahein, surakshit rahein 🙏🏻🙏🏻🙏🏻 #WarAgainstVirus\n\nFor more info please follow :- @cmomaharashtra_ @my_bmc.\n@rohitshettypicturez @itsrohitshetty', 3021, 742318, 'https://www.instagram.com/p/B98kYypHBry', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-15/e35/p150x150/90317018_1181468202201439_5393024039659374029_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=GXmpix4iYMQAX8qW8mc&oh=7c89e4c5c6fc4f48c21513427f9c7cb8&oe=5E8FF903', 'VIDEO', '[\"cmomaharashtra_\",\"my_bmc\",\"rohitshettypicturez\",\"itsrohitshetty\"]', '[\"WarAgainstVirus\"]', '2020-04-06 13:59:03', '2020-04-08 09:52:27'),
(27, 2263250047399251121, 8, 'B9ore1JHkyx', '1584020451', 'Because our safety always, always comes first. Stay safe and take care of yourself 🙏🏻', 5160, 687155, 'https://www.instagram.com/p/B9ore1JHkyx', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/89719925_851551701925219_2882791236783438610_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=t9VKw9umX7kAX-6GawU&oh=2776702b7af128bee3aad825be02a566&oe=5EB62334', 'IMAGE', '[]', '[]', '2020-04-06 13:59:03', '2020-04-08 09:52:27'),
(64, 2277741262574655315, 13, 'B-cKZw-AxdT', '1585747939', 'Jai mata di 🙏 #ashtami #kanjakpoojan #daddysgirl #anayra #daughter 😍 #3monthsold #gratitude 🙏 🧿', 28393, 1673575, 'https://www.instagram.com/p/B-cKZw-AxdT', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.180.1440.1440a/s150x150/91726609_119836142981044_8580942433225575007_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=NCcw3fupf88AX9Tb0Uq&oh=835e18339888a7d44e38265b2733001e&oe=5E', 'SIDECAR', '[]', '[\"ashtami\",\"kanjakpoojan\",\"daddysgirl\",\"anayra\",\"daughter\",\"3monthsold\",\"gratitude\"]', '2020-04-07 09:36:02', '2020-04-07 09:36:02'),
(65, 2276327784827757328, 13, 'B-XJA9PAqMQ', '1585579439', 'Please listen 🙏 #corona #animalsdonttransmitcorona #dontabandonyourpets #donthurtanimals #dog #cats ❤️🙏 @amtmindia', 2013, 378530, 'https://www.instagram.com/p/B-XJA9PAqMQ', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/c55.0.834.834a/s150x150/91428294_863228447519506_7054004991010728343_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=3Wvm5z5cdWUAX8aFBX_&oh=40384eef918776b32c011ac26628b17d&oe=5EB68', 'SIDECAR', '[\"amtmindia\"]', '[\"corona\",\"animalsdonttransmitcorona\",\"dontabandonyourpets\",\"donthurtanimals\",\"dog\",\"cats\"]', '2020-04-07 09:36:02', '2020-04-07 09:36:02'),
(66, 2276206555500205908, 13, 'B-Wtc1oAVdU', '1585564988', 'नमस्कार 🙏 उपर दिए गए पोस्ट में दो फ़ोन नम्बर हैं। पंजाब या चंडीगढ़ में अगर किसी भाई बहन को खाने की समस्या है तो वो इन फ़ोन नम्बर्ज़ पे कांटैक्ट कर सकते हैं। हमारे कुछ दोस्त गरीब भाई बहनो के खाने पीने का इंतज़ाम कर रहे हैं। मैं उनको इस नेक काम के लिए बधाई देता हूँ। ईश्वर आपका भला करे 🙏', 1470, 159368, 'https://www.instagram.com/p/B-Wtc1oAVdU', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/91808348_2455060778118833_4491136523787101057_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=9QMwqmzeQ9cAX9006o2&oh=d18d2e87c48c1be0124492c024ef8f7a&oe=5EB44571', 'IMAGE', '[]', '[]', '2020-04-07 09:36:02', '2020-04-07 09:36:02'),
(67, 2275498262746165912, 13, 'B-UMZ0mAPKY', '1585480552', 'Today 7 pm live with @richasharmaofficial  #live #music #fun #timepass 🤗', 1060, 287180, 'https://www.instagram.com/p/B-UMZ0mAPKY', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/c3.0.1234.1234a/s150x150/90878838_210432473542927_2718537081862633087_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=107&_nc_ohc=Ong1x4jyuqAAX8YQ0sn&oh=cf82743115f45f30613a75d7a3476425&oe=5E', 'IMAGE', '[\"richasharmaofficial\"]', '[\"live\",\"music\",\"fun\",\"timepass\"]', '2020-04-07 09:36:02', '2020-04-07 09:36:02'),
(68, 2273256113287985760, 13, 'B-MOmQMA_pg', '1585213267', 'It\'s time to stand together with the ones who need us. Contributing Rs.50 lakhs to the PM relief fund towards the #fightagainstcorona. Request everyone to #stayhome #staysafe #jaihind #PMrelieffund @narendramodi 🙏 🇮🇳', 5637, 410839, 'https://www.instagram.com/p/B-MOmQMA_pg', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/c224.0.793.793a/s150x150/90898909_148545449963767_1890706355673752159_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=107&_nc_ohc=cikmH67UIE8AX_xWErt&oh=bb7417951d244359f4683855b5e26dc0&oe=5E', 'IMAGE', '[\"narendramodi\"]', '[\"fightagainstcorona\",\"stayhome\",\"staysafe\",\"jaihind\",\"PMrelieffund\"]', '2020-04-07 09:36:02', '2020-04-07 09:36:02'),
(69, 2273212100576916509, 13, 'B-MElyKAbQd', '1585208021', 'i whole heartily support this noble initiative. Happy to contribute for this humanitarian cause. While staying safe at home i urge every one else also to contribute online - \nwww.iahv.org/in-en/donate/\n\n#iStandWithHumanity \n#ArtOfLiving \n#BMC', 534, 152413, 'https://www.instagram.com/p/B-MElyKAbQd', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.116.932.932a/s150x150/90746208_2316580138642427_3069081001841294410_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=111&_nc_ohc=CQXbgr4V278AX_93B1K&oh=6405396d584b521e6cc73b82630aed47&oe=5', 'IMAGE', '[]', '[\"iStandWithHumanity\",\"ArtOfLiving\",\"BMC\"]', '2020-04-07 09:36:02', '2020-04-07 09:36:02'),
(70, 2271828386307427753, 13, 'B-HJ-F0gM2p', '1585043077', '‪इनसे ही सीख लो कुछ 🙊 #StayHomeSaveLives #coronavirus #INDIAfightsCorona 🙏‬', 3661, 416469, 'https://www.instagram.com/p/B-HJ-F0gM2p', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.60.480.480a/s150x150/90647808_629341834297943_640660777165268712_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=111&_nc_ohc=6A4KApqY2zMAX-q4Khp&oh=922bacaf823d357a94ebeaada129fd02&oe=5E8E', 'VIDEO', '[]', '[\"StayHomeSaveLives\",\"coronavirus\",\"INDIAfightsCorona\"]', '2020-04-07 09:36:02', '2020-04-07 09:36:02'),
(71, 2270541696355889946, 13, 'B-ClaSbAXMa', '1584890016', 'A tribute to our Brothers and Sisters who are fighting constantly against #CoronaVirus #JantaCurfew #SocialDistancing #IndiaFightsCorona #stayhomestaysafe #India #ThankYouIndia ❤️🙏\n🥁 @mikasingh 📸 @manikaransingh14', 1308, 333957, 'https://www.instagram.com/p/B-ClaSbAXMa', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/c157.0.405.405a/s150x150/90659258_530059551268992_1583342497317304332_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=100&_nc_ohc=RDoGQaN7EmEAX9DIApg&oh=b2158b43a7deb12fb1e3e0684bfd7c34&oe=5E', 'VIDEO', '[\"mikasingh\",\"manikaransingh14\"]', '[\"CoronaVirus\",\"JantaCurfew\",\"SocialDistancing\",\"IndiaFightsCorona\",\"stayhomestaysafe\",\"India\",\"ThankYouIndia\"]', '2020-04-07 09:36:02', '2020-04-07 09:36:02'),
(72, 2270507502057596025, 13, 'B-CdosgAKR5', '1584885747', 'today I hired @mikasingh as host of the evening on #jantacurfew 🤪 #thankyouINDIA ❤️🙏 #INDIAfightsCorona #INDIA 🙏', 3484, 751805, 'https://www.instagram.com/p/B-CdosgAKR5', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.90.720.720a/s150x150/90209070_257790481892745_5173689292869193530_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=109&_nc_ohc=vnoZm4MWcg8AX8KsOZN&oh=f765cb6ee92a4e68447dc1b312569361&oe=5E8', 'VIDEO', '[\"mikasingh\"]', '[\"jantacurfew\",\"thankyouINDIA\",\"INDIAfightsCorona\",\"INDIA\"]', '2020-04-07 09:36:02', '2020-04-07 09:36:02'),
(73, 2281793888018976578, 5, 'B-qj3OiB09C', '1586231050', 'Anyone else plays this game? 🤣', 259, 37888, 'https://www.instagram.com/p/B-qj3OiB09C', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.23.795.795a/s150x150/91936019_103937917868868_6383379916848251729_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=urgpaVwAjYIAX8nURTb&oh=ff7e6b3bc14736d84082518af1199548&oe=5EB48', 'IMAGE', '[]', '[]', '2020-04-07 10:47:45', '2020-04-07 10:47:45'),
(74, 2281655917529564884, 5, 'B-qEffgBIbU', '1586214602', 'Facts 🤣', 165, 29453, 'https://www.instagram.com/p/B-qEffgBIbU', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.117.937.937a/s150x150/92376781_3283145555050705_4287635019648552976_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=mtnHgUA8yqAAX8gGoCl&oh=49c27d379165efdc1ed7310036906b5e&oe=5EB', 'IMAGE', '[]', '[]', '2020-04-07 10:47:45', '2020-04-07 10:47:45'),
(75, 2281607978530684766, 5, 'B-p5l41BL9e', '1586208887', 'It be like that 🤣', 120, 24466, 'https://www.instagram.com/p/B-p5l41BL9e', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/c29.0.691.691a/s150x150/91463540_106410787577995_3543204911099371267_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=lkGYcMPikzgAX_cSX1K&oh=c894b8745d450483644139757225469a&oe=5EB61', 'IMAGE', '[]', '[]', '2020-04-07 10:47:45', '2020-04-07 10:47:45'),
(76, 2280921693533125594, 5, 'B-ndjIHhjva', '1586127076', '🤣🤣🤣', 375, 49454, 'https://www.instagram.com/p/B-ndjIHhjva', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/91923792_245561859952620_854232749873487012_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=100&_nc_ohc=kvURh-T14j4AX8BGinl&oh=2cb5b97967ad21b55d5871b18ef7ef17&oe=5EB5DA2F', 'IMAGE', '[]', '[]', '2020-04-07 10:47:45', '2020-04-07 10:47:45'),
(77, 2280805713276536321, 5, 'B-nDLZFh4YB', '1586113250', 'Anyone else? 🤣', 135, 26751, 'https://www.instagram.com/p/B-nDLZFh4YB', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.109.925.925a/s150x150/91768795_123536952604350_7543463051748519347_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=106&_nc_ohc=peUpBJ7ATDAAX-UxsrK&oh=2624fb3298597b8ab1f6ff9dec9569f8&oe=5E', 'IMAGE', '[]', '[]', '2020-04-07 10:47:45', '2020-04-07 10:47:45'),
(78, 2280729881619039126, 5, 'B-mx75WhYOW', '1586104210', 'That’s how you conserve your food 🤣', 334, 49840, 'https://www.instagram.com/p/B-mx75WhYOW', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.56.693.693a/s150x150/92080395_2738895672830928_6809879765464411352_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=100&_nc_ohc=X2XKCi4vC-IAX8RCZUH&oh=3c0c3b84d47de56d8c19a1ce741e5461&oe=5E', 'IMAGE', '[]', '[]', '2020-04-07 10:47:45', '2020-04-07 10:47:45'),
(79, 2280285458821161535, 5, 'B-lM4sXhiI_', '1586051231', '🤣🤣🤣', 154, 47593, 'https://www.instagram.com/p/B-lM4sXhiI_', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/c13.0.724.724a/s150x150/92258562_567725004095294_3900406421563538194_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=102&_nc_ohc=B9FeU47GIfMAX9IH55q&oh=b854f4c689a1a3d831a2964a42dd6fa4&oe=5EB', 'IMAGE', '[]', '[]', '2020-04-07 10:47:45', '2020-04-07 10:47:45'),
(80, 2279691365178939240, 5, 'B-jFzfjBBdo', '1585980409', 'Tag someone & say nothing 🤣\n(Amaboutobust / tw)', 509, 37196, 'https://www.instagram.com/p/B-jFzfjBBdo', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.0.749.749a/s150x150/91859655_588873192058579_7270144704623250601_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=107&_nc_ohc=ahmsUPGOqpMAX8k1EPj&oh=81e85ce05c0aed6f35157b4f50df4003&oe=5EB7', 'IMAGE', '[]', '[]', '2020-04-07 10:47:45', '2020-04-07 10:47:45'),
(81, 2279389614223791676, 5, 'B-iBMcEhhY8', '1585944438', 'Every morning 🤣', 142, 27126, 'https://www.instagram.com/p/B-iBMcEhhY8', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.73.874.874a/s150x150/91461309_2846124208815157_8628239289804969590_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=Zn6SbFhf_GUAX82W2kn&oh=9208e96e709df289d708bcecdd8c546b&oe=5E', 'IMAGE', '[]', '[]', '2020-04-07 10:47:45', '2020-04-07 10:47:45'),
(82, 2282049271893471440, 15, 'B-rd7jTJjDQ', '1586261494', '🛋🥔', 6043, 805884, 'https://www.instagram.com/p/B-rd7jTJjDQ', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.178.1440.1440a/s150x150/92951374_567822890516600_1534844629744610454_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_cat=108&_nc_ohc=-KsqAEC2LW0AX8HgS-G&oh=097b40d47602f1b36d450ff46ad85e72&oe=5E', 'IMAGE', '[]', '[]', '2020-04-07 13:09:52', '2020-04-21 05:39:43'),
(83, 2281341886971297540, 15, 'B-o9FvwJL8E', '1586177508', 'As artists, a small effort from all of us to spread some hope and positivity. We’re in it together and we’ll win it together! #MuskurayegaIndia is out now!! @akshaykumar @jackkybhagnani @vishalmishraofficial #CapeOfGoodFilms @jjustmusicofficial', 2172, 270461, 'https://www.instagram.com/p/B-o9FvwJL8E', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-15/e35/p150x150/91806383_244129536731105_434736840698017787_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_cat=105&_nc_ohc=EKgs-EZS_GEAX9eeyuW&oh=9be768707c5b8a9a98df3caf914a36a6&oe=5EA0A0E9', 'VIDEO', '[\"akshaykumar\",\"jackkybhagnani\",\"vishalmishraofficial\",\"jjustmusicofficial\"]', '[\"MuskurayegaIndia\",\"CapeOfGoodFilms\"]', '2020-04-07 13:09:52', '2020-04-21 05:39:43'),
(84, 2280721851903049339, 15, 'B-mwHDGJv57', '1586103253', 'To unity. To togetherness. To us! ✨🙏', 1222, 622240, 'https://www.instagram.com/p/B-mwHDGJv57', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.178.1440.1440a/s150x150/92480042_1091648844514674_1889855021892708647_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_cat=106&_nc_ohc=p6q5tmzbBeYAX_xFJPH&oh=87303346b59c5993e9b417a961e46128&oe=5', 'IMAGE', '[]', '[]', '2020-04-07 13:09:52', '2020-04-21 05:39:43'),
(85, 2280618396995699350, 15, 'B-mYllNJkKW', '1586091184', 'Make way for the latest entrant in the elite club of #TheOmeletteFlippers ! 🍳🏆 #chotikhushiyaan', 9535, 653349, 'https://www.instagram.com/p/B-mYllNJkKW', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/91789806_120943649549889_5509546546391587487_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_cat=109&_nc_ohc=ibfHCC5kvYgAX8WwE20&oh=1e624b1bdf3b44251f6f0be6b77102ac&oe=5EA0DEE5', 'VIDEO', '[]', '[\"TheOmeletteFlippers\",\"chotikhushiyaan\"]', '2020-04-07 13:09:52', '2020-04-21 05:39:43'),
(86, 2279158925492719114, 15, 'B-hMvecp44K', '1585916992', 'Thought I’d interact with my fans today... 🙂 #quarantinelife', 8728, 555002, 'https://www.instagram.com/p/B-hMvecp44K', 'https://instagram.fpat1-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.90.720.720a/s150x150/91822282_106014427624134_4105739305991178793_n.jpg?_nc_ht=instagram.fpat1-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=Absate1pQpwAX8jodnC&oh=3f90ab74c01f7c8beecf6842e61599de&oe=5E9A918', 'VIDEO', '[]', '[\"quarantinelife\"]', '2020-04-07 13:09:52', '2020-04-16 10:24:11'),
(87, 2277673217418567179, 15, 'B-b67k-p54L', '1585739827', 'Pass it on and do return. “🙂”', 6821, 895190, 'https://www.instagram.com/p/B-b67k-p54L', 'https://instagram.fpat1-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.180.1440.1440a/s150x150/91251953_840515973026336_5071641166151713427_n.jpg?_nc_ht=instagram.fpat1-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=DlX2tgi8J24AX8mHr7v&oh=1065077b64d2d4287280b9c7160b51ed&oe=5EC3', 'IMAGE', '[]', '[]', '2020-04-07 13:09:52', '2020-04-16 10:24:11'),
(88, 2276787301199956345, 15, 'B-YxfzNJMl5', '1585634218', '🙏🙏🙏', 5352, 456959, 'https://www.instagram.com/p/B-YxfzNJMl5', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.175.1406.1406a/s150x150/91336770_1131323147235097_1593608651767338585_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=_6N9NtqO190AX-NcMY1&oh=d5e3ac612d2181bcefa298c008ade205&oe=5', 'IMAGE', '[]', '[]', '2020-04-07 13:09:52', '2020-04-15 12:28:44'),
(89, 2276240113701039272, 15, 'B-W1FLIpSyo', '1585568988', 'माँ-ए नी मेरीए 🎶', 2947, 797299, 'https://www.instagram.com/p/B-W1FLIpSyo', 'https://instagram.fdel3-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/91259013_681733045927888_8772348098778340210_n.jpg?_nc_ht=instagram.fdel3-1.fna.fbcdn.net&_nc_cat=104&_nc_ohc=z1xl-oNKT04AX_k19Pg&oh=a7c780693b517c985cf5c5dcc788e886&oe=5EB92B23', 'IMAGE', '[]', '[]', '2020-04-07 13:09:52', '2020-04-09 11:11:53'),
(90, 2274027188114620696, 15, 'B-O963lJwEY', '1585305187', 'Good quarantine boys. Wassup brother! @sunsunnykhez', 3378, 681668, 'https://www.instagram.com/p/B-O963lJwEY', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/90748532_1597136230424331_2284411727112183640_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=trX375in1LUAX_cWHXn&oh=4d808fd183047678e549930755936528&oe=5EB49DE1', 'IMAGE', '[\"sunsunnykhez\"]', '[]', '2020-04-07 13:09:52', '2020-04-07 13:09:52'),
(91, 2282152109877297129, 15, 'B-r1UCopP_p', '1586273753', 'View tonight. #supermoon', 2944, 897255, 'https://www.instagram.com/p/B-r1UCopP_p', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.180.1440.1440a/s150x150/92018963_217219729378908_9159343079289480531_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=A6k3IAV32okAX897tTB&oh=cf0a6f8d4cf02ae6ac9b538cae64d18a&oe=5EC9', 'IMAGE', '[]', '[\"supermoon\"]', '2020-04-08 04:51:27', '2020-04-21 05:39:43'),
(127, 2286344687778683121, 15, 'B-6umFFJljx', '1586773547', 'This beauty chilling right outside our window today... could be wondering “what’s wrong with humans these days?” or may be “Thank God, they finally got it right!” 🤷🏼‍♂️\n.\n📸: Neighbour.', 2032, 608856, 'https://www.instagram.com/p/B-6umFFJljx', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-15/e35/c180.0.1080.1080a/s150x150/93816280_2863543087093991_7268280149388785411_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_cat=111&_nc_ohc=h_bPpgHmvOEAX9z6NgF&oh=3d9e2141f7c231096c06668c1c35015d&oe=5', 'IMAGE', '[]', '[]', '2020-04-14 06:21:30', '2020-04-21 05:39:43'),
(181, 2248877402411149699, 29, 'B81nhUaHqmD', '1582307099', 'A cup of coffee is a cure to all our daily physical and mental ailments.', 3, 23, 'https://www.instagram.com/p/B81nhUaHqmD', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e15/s150x150/85050934_128983005296859_4928005195187378168_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=103&_nc_ohc=ji5w7iKv_1YAX8azFGb&oh=57338fc8cec7f5f58f4872d3fddd9a92&oe=5EC14B15', 'IMAGE', '[]', '[]', '2020-04-15 12:07:00', '2020-04-16 10:49:59'),
(182, 2215271019182951438, 29, 'B6-OUFDngwO', '1578300906', 'Promising evening..\n#kannadasongs #banglore #rachitaram #bijapur #kgf #mysorepalace #davangere #manglore #belagavi #trolls #kannadigaru #troll #focus #indian #instagram #bidar #bagalkot #gadag #kannadatrolls #official #kannadamemes #memes #kannadiga #sandalwoodactress #mumbai #nammakarnataka #kannadafilms', 1, 36, 'https://www.instagram.com/p/B6-OUFDngwO', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e15/s150x150/80625581_2441298096083363_6889362569826985362_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=111&_nc_ohc=p0iCJzjTiaMAX-2vfSk&oh=cfedb1168329dbd1e308f1c11a0ebd07&oe=5EC0B513', 'IMAGE', '[]', '[\"kannadasongs\",\"banglore\",\"rachitaram\",\"bijapur\",\"kgf\",\"mysorepalace\",\"davangere\",\"manglore\",\"belagavi\",\"trolls\",\"kannadigaru\",\"troll\",\"focus\",\"indian\",\"instagram\",\"bidar\",\"bagalkot\",\"gadag\",\"kannadatrolls\",\"official\",\"kannadamemes\",\"memes\",\"kannadiga\",\"sandalwoodactress\",\"mumbai\",\"nammakarnataka\",\"kannadafilms\"]', '2020-04-15 12:07:00', '2020-04-16 10:49:59'),
(183, 2169086826350886484, 29, 'B4aJPnrn75U', '1572795328', '#2xmojo', 5, 10, 'https://www.instagram.com/p/B4aJPnrn75U', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/74518085_2413407965654430_2882329110977179040_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=106&_nc_ohc=52UtVGnRrgMAX9PQvwH&oh=34258402c6a5d961118c063bdae531af&oe=5E9A3AE9', 'VIDEO', '[]', '[\"2xmojo\"]', '2020-04-15 12:07:00', '2020-04-16 10:49:59'),
(184, 2157206489706507155, 29, 'B3v799-H6uT', '1571379121', '#ladakh #india #leh #kashmir #travel #ladakhdiaries #himalayas #article #jammu #mountains #incredibleindia #wanderlust #lehladakh #travelphotography #royalenfield #photography #jammuandkashmir #travelgram #ladakhtrip #nature #manali #roadtrip #trip #jammukashmir #ladakhtourism #kargil #tv #pangonglake #nubravalley #travulls', 2, 27, 'https://www.instagram.com/p/B3v799-H6uT', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/74607008_390549671851147_8042633091450030658_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=107&_nc_ohc=hIP5ejtt9xcAX9K5zJF&oh=3a2d6918beb3abe22afd196ecf6e3a77&oe=5E9A814D', 'VIDEO', '[]', '[\"ladakh\",\"india\",\"leh\",\"kashmir\",\"travel\",\"ladakhdiaries\",\"himalayas\",\"article\",\"jammu\",\"mountains\",\"incredibleindia\",\"wanderlust\",\"lehladakh\",\"travelphotography\",\"royalenfield\",\"photography\",\"jammuandkashmir\",\"travelgram\",\"ladakhtrip\",\"nature\",\"manali\",\"roadtrip\",\"trip\",\"jammukashmir\",\"ladakhtourism\",\"kargil\",\"tv\",\"pangonglake\",\"nubravalley\",\"travulls\"]', '2020-04-15 12:07:00', '2020-04-16 10:49:59'),
(185, 2152145458000869897, 29, 'B3d9OQ5HLoJ', '1570775752', '', 0, 37, 'https://www.instagram.com/p/B3d9OQ5HLoJ', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/70387189_2716374001715270_1943617095936681496_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=102&_nc_ohc=vb0DCIs1OpsAX-41RZg&oh=52f8587eca434ddb240f714ca3b21148&oe=5EC1DAA9', 'IMAGE', '[]', '[]', '2020-04-15 12:07:00', '2020-04-16 10:49:59'),
(186, 2147980519630398743, 29, 'B3PKObxB2UX', '1570279253', '', 0, 49, 'https://www.instagram.com/p/B3PKObxB2UX', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/70266580_400802123918817_7090455209625448010_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=109&_nc_ohc=SPyLeW0LCUIAX-tNWEa&oh=9d731e3453f6eb3df1f7f51c27bf408c&oe=5EC2C935', 'IMAGE', '[]', '[]', '2020-04-15 12:07:00', '2020-04-16 10:49:59'),
(187, 2147978730809986097, 29, 'B3PJ0ZzBgwx', '1570279040', '', 0, 41, 'https://www.instagram.com/p/B3PJ0ZzBgwx', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/69814909_470158383580549_4805995778508866151_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=0SOGeLD9jbYAX8jkve_&oh=54e895cb4de410a656c8cb1377334442&oe=5EC1503A', 'IMAGE', '[]', '[]', '2020-04-15 12:07:00', '2020-04-16 10:49:59'),
(188, 2147966909164038816, 29, 'B3PHIYCBCqg', '1570277630', '', 0, 45, 'https://www.instagram.com/p/B3PHIYCBCqg', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/70203533_530909590812612_6844228935534828508_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=100&_nc_ohc=NLb3xmp8cwsAX9N5cT2&oh=a1ef17cc2215ec7e24db18ff767d29a2&oe=5EC1EC2C', 'IMAGE', '[]', '[]', '2020-04-15 12:07:00', '2020-04-16 10:49:59'),
(189, 2145723041049457172, 29, 'B3HI7zAH7IU', '1570010141', 'kya rkha shehar ki bhed bhad mai kuch din to guzaro pahado mai.. #panchghani #nofilter #nature #love #summer #instagood #picoftheday #photooftheday #photography #sunset #travel #follow #like #nofilterneeded #beautiful #ig #sky #instagram #naturephotography #photo #landscape #happy #instadaily #beauty #f #life #art #amazing', 10, 66, 'https://www.instagram.com/p/B3HI7zAH7IU', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/69845631_2436401783080109_3920137558690779966_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=105&_nc_ohc=5rXroCMEDOEAX8laH_4&oh=17ca5bad6082c4d95726a11288251563&oe=5EC31F70', 'IMAGE', '[]', '[\"panchghani\",\"nofilter\",\"nature\",\"love\",\"summer\",\"instagood\",\"picoftheday\",\"photooftheday\",\"photography\",\"sunset\",\"travel\",\"follow\",\"like\",\"nofilterneeded\",\"beautiful\",\"ig\",\"sky\",\"instagram\",\"naturephotography\",\"photo\",\"landscape\",\"happy\",\"instadaily\",\"beauty\",\"f\",\"life\",\"art\",\"amazing\"]', '2020-04-15 12:07:00', '2020-04-16 10:49:59'),
(199, 2287953997285780189, 15, 'B_AcgnWp2rd', '1586965392', '#QuarantineCut by @sunsunnykhez 💥💇🏽‍♂️', 5619, 976530, 'https://www.instagram.com/p/B_AcgnWp2rd', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.178.1440.1440a/s150x150/93830064_1120805398312420_6317827825302648761_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=XJblIQxlz8wAX80Obzn&oh=3f30acdb832f233d43255a208a7bf5c5&oe=5EC', 'IMAGE', '[\"sunsunnykhez\"]', '[\"QuarantineCut\"]', '2020-04-16 04:48:13', '2020-04-21 05:39:43'),
(235, 2290675524376586488, 15, 'B_KHUC-Jej4', '1587289823', 'The ship\'s nearing the shore. ETA: 22nd April.\n#BhootOnPrime @primevideoin @karanjohar @apoorva1972 @bhumipednekar @bhanu.singh.91 @ShashankKhaitan @somenmishra @dharmamovies @zeestudiosofficial @zeemusiccompany #Bhoot #TheHauntedShip', 1545, 382305, 'https://www.instagram.com/p/B_KHUC-Jej4', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/93477196_159683772074956_3866507091854555084_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=7TPBGpYrlGEAX8OFaQV&oh=0da48cb16ae1ea42d91ea02702f511c8&oe=5EC620CE', 'IMAGE', '', '[\"BhootOnPrime\",\"Bhoot\",\"TheHauntedShip\"]', '2020-04-21 05:39:43', '2020-04-21 05:39:43'),
(236, 2288613277038896517, 15, 'B_CyaZeJWWF', '1587043984', '#feltcutemightdeletelater', 5138, 747176, 'https://www.instagram.com/p/B_CyaZeJWWF', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.180.1440.1440a/s150x150/93845578_252395279481015_1424336485619354827_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=6scswEsHnBQAX9ZzKgw&oh=edfe385e5b602916a5541195292b34a3&oe=5EC9', 'IMAGE', '[]', '[\"feltcutemightdeletelater\"]', '2020-04-21 05:39:43', '2020-04-21 05:39:43');

-- --------------------------------------------------------

--
-- Table structure for table `instagram_users`
--

CREATE TABLE `instagram_users` (
  `id` int(11) NOT NULL,
  `instagram_id` bigint(20) DEFAULT NULL,
  `username` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `followers` int(11) DEFAULT NULL,
  `following` int(11) DEFAULT NULL,
  `uploads` int(11) DEFAULT NULL,
  `added_date` datetime DEFAULT NULL,
  `last_check_date` datetime DEFAULT NULL,
  `last_successful_check_date` datetime DEFAULT NULL,
  `profile_picture_url` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_private` int(11) DEFAULT 0,
  `is_verified` int(11) DEFAULT 0,
  `average_engagement_rate` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `details` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_demo` int(11) DEFAULT 0,
  `is_featured` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instagram_users`
--

INSERT INTO `instagram_users` (`id`, `instagram_id`, `username`, `full_name`, `description`, `website`, `followers`, `following`, `uploads`, `added_date`, `last_check_date`, `last_successful_check_date`, `profile_picture_url`, `is_private`, `is_verified`, `average_engagement_rate`, `details`, `is_demo`, `is_featured`) VALUES
(1, 25945306, 'badgalriri', 'badgalriri', 'introducing @savagexfenty lingerie coming MAY.11.2018. sign up now!', 'http://ri-hanna.io/savagexfenty', 62554084, 1302, 4293, '2018-05-05 18:33:53', '2018-05-10 16:04:17', NULL, 'https://instagram.fsbz1-1.fna.fbcdn.net/vp/667a62925a82cf1445a7e800239ff35b/5B792186/t51.2885-19/11032926_1049846535031474_260957621_a.jpg', 0, 1, '3.64', '{\"total_likes\":22640490,\"total_comments\":158523,\"average_comments\":\"15,852.30\",\"average_likes\":\"2,264,049.00\",\"top_hashtags\":{\"metgala2018\":1,\"heavenlybodies\":1,\"galliano\":1,\"margiella\":1,\"DAMN\":1},\"top_mentions\":{\"savagexfenty\":3,\"dennisleupold\":1},\"top_posts\":{\"BigJr94lkbM\":\"7.74\",\"Bie_F1EFqnw\":\"5.87\",\"BigMenillsS\":\"4.71\"}}', 1, 1),
(2, 232192182, 'therock', 'therock', 'Gratitude. Mana.', 'http://www.nbc.com/titans', 105741229, 235, 3548, '2018-05-07 12:35:07', '2018-05-10 01:39:35', NULL, 'https://instagram.fsbz1-1.fna.fbcdn.net/vp/5eeaf27ff63f2135e91cc8f6501cc098/5B9AE1FC/t51.2885-19/11850309_1674349799447611_206178162_a.jpg', 0, 1, '1.25', '{\"total_likes\":13185786,\"total_comments\":61606,\"average_comments\":\"6,160.60\",\"average_likes\":\"1,318,578.60\",\"top_hashtags\":{\"ProjectRock\":3,\"UnderArmour\":2,\"JungleCruise\":2,\"SKYSCRAPER\":2,\"HardestWorkerInTheRoom\":2,\"PaulGiamatti\":1,\"AllAboard\":1,\"NowGetTheFuckOffMe\":1,\"GetOnMyShoulders\":1,\"AndMyTattoos\":1,\"NobelPeacePrize\":1,\"GlobalGratitude\":1,\"DreamsAintJustForDreamers\":1,\"0\":1,\"GlobalEnterprise\":1},\"top_mentions\":{\"garciacompanies\":2,\"danygarciaco,\":1,\"underarmour\":1,\"kristenrandol\":1,\"kevinhart4real\":1,\"underarmour\\u2019s\":1},\"top_posts\":{\"Bic-vMLlRtW\":\"2.66\",\"Bia-qIKlh-9\":\"2.44\",\"Bigj_-bFPCZ\":\"2.29\"}}', 1, 1),
(3, 13164944, 'g_eazy', 'G-Eazy', 'Endless Summer Tour Tix $20 For National Concert Week | Ends May 8th', 'http://bit.ly/NCW20GEazy', 5959042, 918, 2992, '2018-05-07 12:35:36', '2018-05-10 01:29:16', NULL, 'https://instagram.fsbz1-1.fna.fbcdn.net/vp/ad043770b7c57bec2ba5c6e132e7e430/5B7A9259/t51.2885-19/s150x150/23421504_1974793426097273_1903626335624888320_n.jpg', 0, 1, '5.98', '{\"total_likes\":3530163,\"total_comments\":33618,\"average_comments\":\"3,361.80\",\"average_likes\":\"353,016.30\",\"top_hashtags\":{\"TheEndlessSummer\":2,\"TheBeautifulAndDamned\":1},\"top_mentions\":{\"livenation\":2,\"dkessler\":2,\"p_lo\":2,\"tristan_edouard\":2,\"liluzivert\":1,\"tydollasign\":1,\"ybnnahmir\":1,\"murdabeatz\":1},\"top_posts\":{\"BicoovInGXa\":\"11.62\",\"Bih3FuunIeE\":\"10.00\",\"Bijt0LrnSkE\":\"8.37\"}}', 1, 1),
(4, 3483737051, 'vikas2249', 'Vikas Bhardwaj', '', NULL, 75, 39, 0, '2020-04-03 06:09:35', '2020-04-03 06:09:35', '2020-04-03 06:09:35', 'https://instagram.fagr2-1.fna.fbcdn.net/v/t51.2885-19/s150x150/13584054_1019007274814818_289461151_a.jpg?_nc_ht=instagram.fagr2-1.fna.fbcdn.net&_nc_ohc=4v8xldbUdzgAX_J4888&oh=4902ae2019058dba362aabc83edd4291&oe=5EB1C32E', 0, 0, '0', '{\"total_likes\":0,\"total_comments\":0,\"average_comments\":0,\"average_likes\":0,\"top_hashtags\":[],\"top_mentions\":[],\"top_posts\":[]}', 0, 1),
(5, 1267859300, 'funny', 'Funny', '', 'http://memes.com/', 6847151, 1, 3058, '2020-04-03 07:07:57', '2020-04-07 10:47:45', '2020-04-07 10:47:45', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-19/s150x150/37814696_195816044622712_8395531783633895424_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_ohc=kpPf5XrKywMAX8xgua7&oh=ffa3dbf3e37bd1c038103d27dc0e333c&oe=5EB7BAD8', 0, 0, '0.53', '{\"total_likes\":358460,\"total_comments\":2371,\"average_comments\":237.1,\"average_likes\":35846,\"top_hashtags\":[],\"top_mentions\":[],\"top_posts\":{\"B-ndjIHhjva\":\"0.73\",\"B-mx75WhYOW\":\"0.73\",\"B-lM4sXhiI_\":\"0.70\"}}', 0, 1),
(6, 32268766352, 'vikaspatel2249', 'vikas patel', '', NULL, 14, 7, 0, '2020-04-06 12:16:47', '2020-04-08 10:56:41', '2020-04-08 10:56:41', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-19/s150x150/91854018_206410907452271_1060675601477664768_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_ohc=ht6CeBTk12IAX9QcHnn&oh=c9a246b20c774c358d69229e1898d4dd&oe=5EB5A1CB', 0, 0, '0', '{\"total_likes\":0,\"total_comments\":0,\"average_comments\":0,\"average_likes\":0,\"top_hashtags\":[],\"top_mentions\":[],\"top_posts\":[]}', 0, 1),
(7, 3562982855, 'katrinakaif', 'Katrina Kaif', 'Kay Beauty 💄 @kaybykatrina', 'https://youtu.be/u5r77-OQwa8', 35285912, 398, 752, '2020-04-06 12:17:45', '2020-04-07 05:23:10', '2020-04-07 05:23:10', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-19/s150x150/89390382_2560634140731110_5161558036950548480_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_ohc=_lDBwuHwVsYAX_lNZJu&oh=63f3339f00a37748bd481526fcaacf53&oe=5EB7254C', 0, 1, '3.55', '{\"total_likes\":12419098,\"total_comments\":96741,\"average_comments\":9674.1,\"average_likes\":1241909.8,\"top_hashtags\":{\"stayhome\":3,\"DisneyPlusHotstarPremiere\":2,\"helpoutathome\":2,\"staysafe\":2,\"9baje9minute\":1,\"Workout\":1,\"selfquarantine\":1,\"togetherforever\":1,\"isolated\":1,\"socialdistancing\":1,\"CommittedToFitness\":1,\"Part2\":1,\"Warmup\":1,\"SocialDistancing\":1,\"WorkoutFromHome\":1},\"top_mentions\":{\"isakaif\":2,\"hotstarpremium\":1,\"hotstarVIP\":1,\"HotstarPremium\":1,\"HotstarVIP\":1,\"karishmakohli\":1,\"yasminkarachiwala\":1,\"reebokindia\":1,\"varundvn\":1,\"arjunkapoor\":1},\"top_posts\":{\"B-CAFdtB_2I\":\"5.77\",\"B-myphvB1kZ\":\"5.52\",\"B-jjonzBBu7\":\"4.70\"}}', 0, 1),
(8, 907025384, 'akshaykumar', 'Akshay Kumar', '#AkshayKumar', 'http://bit.ly/SooryavanshiOfficialTrailer', 38662122, 5, 1456, '2020-04-06 13:59:03', '2020-04-08 09:52:27', '2020-04-08 09:52:27', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-19/s150x150/49858076_239794113591449_8056098989222658048_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_ohc=pGE0JEwv1A8AX9rt4H4&oh=d7f4a3ad1b4764e85f24bfbfec3c2f84&oe=5EB76506', 0, 1, '3.17', '{\"total_likes\":12141710,\"total_comments\":122175,\"average_comments\":12217.5,\"average_likes\":1214171,\"top_hashtags\":{\"MuskurayegaIndia\":2,\"CapeOfGoodFilms\":2,\"BreakCorona\":2,\"9Baje9Minute\":1,\"LetsTalk1on1\":1,\"StayAtHomeSaveLives\":1,\"JanataCurfew\":1,\"MumbaiPolice\":1,\"SajidNadiadwala\":1,\"SocialDistancing\":1,\"TogetherAtHome\":1,\"WarAgainstVirus\":1},\"top_mentions\":{\"my_bmc\":5,\"jackkybhagnani\":2,\"vishalmishraofficial\":2,\"jjustmusicofficial\":2,\"hrithikroshan\":1,\"cmomaharashtra_\":1,\"rohitshettypicturez\":1,\"itsrohitshetty\":1,\"imharmanpreet_kaur\":1},\"top_posts\":{\"B-mtx_uHUQF\":\"9.47\",\"B-HPzBRn9pD\":\"4.67\",\"B-CPAYzn60G\":\"3.24\"}}', 0, 1),
(13, 1449921978, 'kapilsharma', 'Kapil Sharma', '', NULL, 22085215, 269, 643, '2020-04-07 09:36:02', '2020-04-07 09:36:02', '2020-04-07 09:36:02', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-19/s150x150/53637312_2084205414995841_3589393083680161792_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_ohc=xoxHNX8c1M8AX_ZdA_V&oh=8232a19e4e93ec84c901020f95443885&oe=5EB4B28F', 0, 1, '2.32', '{\"total_likes\":5076810,\"total_comments\":49383,\"average_comments\":4938.3,\"average_likes\":507681,\"top_hashtags\":{\"INDIAfightsCorona\":3,\"INDIA\":2,\"jantacurfew\":2,\"stayhomestaysafe\":2,\"ashtami\":1,\"CoronaVirus\":1,\"ArtOfLiving\":1,\"BMC\":1,\"StayHomeSaveLives\":1,\"coronavirus\":1,\"IndiaFightsCorona\":1,\"JantaCurfew\":1,\"SocialDistancing\":1,\"PMrelieffund\":1,\"India\":1},\"top_mentions\":{\"mikasingh\":2,\"amtmindia\":1,\"richasharmaofficial\":1,\"narendramodi\":1,\"manikaransingh14\":1},\"top_posts\":{\"B-cKZw-AxdT\":\"7.71\",\"B-CdosgAKR5\":\"3.42\",\"B-Ccmc5gG_-\":\"2.33\"}}', 0, 1),
(15, 391254253, 'vickykaushal09', 'Vicky Kaushal', 'Actor', NULL, 6508795, 285, 955, '2020-04-07 13:09:52', '2020-04-21 05:39:43', '2020-04-21 05:39:43', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-19/s150x150/46731588_2254658464817442_649377704872771584_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_ohc=njdx-55zM0gAX8dziCn&oh=d215a6753c3a6f16e4cebd57dd8c6402&oe=5EC7457E', 0, 1, '10.09', '', 0, 1),
(28, 4156263058, 'prtk_shrivastava', 'Prateek Shrivastava', '', NULL, 44, 34, 0, '2020-04-15 12:06:39', '2020-04-15 12:06:39', '2020-04-15 12:06:39', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-19/s150x150/15043576_1137142013007302_3847311049535520768_a.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_ohc=QQSg9V7WXP8AX9wkqvt&oh=49aa3300dc897654b82d5e24514361f1&oe=5EC09425', 0, 0, '0', '{\"total_likes\":0,\"total_comments\":0,\"average_comments\":0,\"average_likes\":0,\"top_hashtags\":[],\"top_mentions\":[],\"top_posts\":[]}', 0, 1),
(29, 2200646321, 'roaming_munda', 'Prateek Shrivastava', 'Born to enjoy.', NULL, 239, 380, 104, '2020-04-15 12:07:00', '2020-04-16 10:49:59', '2020-04-16 10:49:59', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-19/s150x150/70413661_427472117911691_3177342232063639552_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_ohc=pi2Km4YamQEAX91cJ8t&oh=0716f19fad81ba6ba048f500572f1ba0&oe=5EC1ED50', 0, 0, '15.69', '{\"total_likes\":354,\"total_comments\":21,\"average_comments\":2.1,\"average_likes\":35.4,\"top_hashtags\":{\"photography\":2,\"instagram\":2,\"mumbai\":2,\"travel\":2,\"nature\":2,\"ladakhtrip\":1,\"travelgram\":1,\"love\":1,\"nofilter\":1,\"panchghani\":1,\"travulls\":1,\"nubravalley\":1,\"pangonglake\":1,\"manali\":1,\"tv\":1},\"top_mentions\":[],\"top_posts\":{\"B3HI7zAH7IU\":\"31.80\",\"B3PKObxB2UX\":\"20.50\",\"B3PHIYCBCqg\":\"18.83\"}}', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(11) NOT NULL,
  `title` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `title`, `url`, `description`, `position`) VALUES
(1, 'Terms of Service', 'terms-of-service', '<p>&nbsp;</p>\r\n<p>Your terms of service go here..</p>', 0),
(2, 'Frequently Asked Questions', 'faqs', '<p>Here you can write your own FAQ for the website..</p>', 1),
(3, 'About', 'about', '<p>About..</p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` enum('PAYPAL','STRIPE') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payer_id` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `currency` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plugins`
--

CREATE TABLE `plugins` (
  `identifier` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT 'black',
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plugins`
--

INSERT INTO `plugins` (`identifier`, `name`, `color`, `status`) VALUES
('facebook', 'Facebook Analyzer', '#4268B2', 1),
('youtube', 'YouTube Analyzer', '#FF0000', 1),
('twitter', 'Twitter Analyzer', '#1da1f2', 0),
('instagram', 'Instagram Analyzer', '#f75581', 1),
('twitch', 'Twitch Analyzer', '#6441a5', 0),
('pinterest', 'Pinterest Analyzer', '#bd081c', 0),
('mixer', 'Mixer Analyzer', '#1FBAED', 0);

-- --------------------------------------------------------

--
-- Table structure for table `proxies`
--

CREATE TABLE `proxies` (
  `proxy_id` int(11) NOT NULL,
  `address` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `username` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` int(11) DEFAULT 0,
  `failed_requests` int(11) DEFAULT 0,
  `successful_requests` int(11) DEFAULT 0,
  `total_failed_requests` int(11) DEFAULT 0,
  `total_successful_requests` int(11) DEFAULT 0,
  `date` datetime DEFAULT NULL,
  `last_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `favicon` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `time_zone` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'America/New_York',
  `meta_description` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `analytics_code` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_confirmation` int(11) NOT NULL DEFAULT 0,
  `recaptcha` int(11) NOT NULL DEFAULT 1,
  `public_key` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `private_key` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_login` int(11) NOT NULL,
  `facebook_app_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_app_secret` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_host` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_port` int(11) NOT NULL,
  `smtp_encryption` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `smtp_auth` int(11) DEFAULT 0,
  `smtp_user` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_pass` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_from` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_currency` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
  `store_paypal_client_id` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `store_paypal_secret` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `store_paypal_mode` enum('sandbox','live') COLLATE utf8mb4_unicode_ci DEFAULT 'live',
  `store_stripe_publishable_key` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `store_stripe_secret_key` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `store_stripe_webhook_secret` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `store_unlock_report_price` float DEFAULT 1,
  `store_unlock_report_time` int(11) DEFAULT 0,
  `store_no_ads_price` float NOT NULL DEFAULT 5,
  `store_user_default_points` int(11) DEFAULT 0,
  `report_ad` varchar(2560) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `index_ad` varchar(2560) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `account_sidebar_ad` varchar(2560) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_check_interval` int(11) DEFAULT 1,
  `instagram_minimum_followers` int(11) DEFAULT 5,
  `instagram_calculator_media_count` int(11) DEFAULT 10,
  `cron_queries` int(11) DEFAULT 1,
  `cron_mode` enum('ACTIVE','ALL') COLLATE utf8mb4_unicode_ci DEFAULT 'ACTIVE',
  `cron_auto_add_missing_logs` int(11) DEFAULT 0,
  `instagram_login` int(11) DEFAULT 0,
  `instagram_client_id` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_client_secret` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activation_email_template` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lost_password_email_template` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credentials_email_template` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_email_notification_emails` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_new_user_email_notification` int(11) DEFAULT 0,
  `admin_new_payment_email_notification` int(11) DEFAULT 0,
  `directory` enum('ALL','LOGGED_IN','DISABLED') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `directory_pagination` int(11) DEFAULT 10,
  `proxy` int(11) DEFAULT 0,
  `proxy_exclusive` int(11) DEFAULT 0,
  `proxy_timeout` int(11) DEFAULT 15,
  `proxy_failed_requests_pause` int(11) DEFAULT 3,
  `proxy_pause_duration` int(11) DEFAULT 1440,
  `email_reports` int(11) DEFAULT 0,
  `email_reports_default` int(11) DEFAULT 0,
  `email_reports_frequency` enum('DAILY','WEEKLY','MONTHLY') COLLATE utf8mb4_unicode_ci DEFAULT 'WEEKLY',
  `email_reports_favorites` int(11) DEFAULT 0,
  `default_language` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT 'english',
  `facebook_check_interval` int(11) DEFAULT 24,
  `facebook_minimum_likes` int(11) DEFAULT 1000,
  `youtube_api_key` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_check_interval` int(11) DEFAULT 24,
  `youtube_minimum_subscribers` int(11) DEFAULT 100,
  `youtube_check_videos` int(11) DEFAULT 10,
  `twitter_consumer_key` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_secret_key` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_oauth_token` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_oauth_token_secret` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_check_interval` int(11) DEFAULT 24,
  `twitter_minimum_followers` int(11) DEFAULT 100,
  `twitter_check_tweets` int(11) DEFAULT 15
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `logo`, `favicon`, `time_zone`, `meta_description`, `meta_keywords`, `analytics_code`, `email_confirmation`, `recaptcha`, `public_key`, `private_key`, `facebook_login`, `facebook_app_id`, `facebook_app_secret`, `smtp_host`, `smtp_port`, `smtp_encryption`, `smtp_auth`, `smtp_user`, `smtp_pass`, `smtp_from`, `facebook`, `twitter`, `youtube`, `instagram`, `store_currency`, `store_paypal_client_id`, `store_paypal_secret`, `store_paypal_mode`, `store_stripe_publishable_key`, `store_stripe_secret_key`, `store_stripe_webhook_secret`, `store_unlock_report_price`, `store_unlock_report_time`, `store_no_ads_price`, `store_user_default_points`, `report_ad`, `index_ad`, `account_sidebar_ad`, `instagram_check_interval`, `instagram_minimum_followers`, `instagram_calculator_media_count`, `cron_queries`, `cron_mode`, `cron_auto_add_missing_logs`, `instagram_login`, `instagram_client_id`, `instagram_client_secret`, `activation_email_template`, `lost_password_email_template`, `credentials_email_template`, `admin_email_notification_emails`, `admin_new_user_email_notification`, `admin_new_payment_email_notification`, `directory`, `directory_pagination`, `proxy`, `proxy_exclusive`, `proxy_timeout`, `proxy_failed_requests_pause`, `proxy_pause_duration`, `email_reports`, `email_reports_default`, `email_reports_frequency`, `email_reports_favorites`, `default_language`, `facebook_check_interval`, `facebook_minimum_likes`, `youtube_api_key`, `youtube_check_interval`, `youtube_minimum_subscribers`, `youtube_check_videos`, `twitter_consumer_key`, `twitter_secret_key`, `twitter_oauth_token`, `twitter_oauth_token_secret`, `twitter_check_interval`, `twitter_minimum_followers`, `twitter_check_tweets`) VALUES
(1, 'phpAnalyzer.com', '', '9fa8a623783fd2d277c53e1d216068ce.ico', 'UTC', '', '', '', 0, 0, '', '', 1, '1278747059182154', 'a02b11afd83e27b93b9a942a4c811e68', '', 587, 'tls', 1, '', '', '', '', '', '', '', 'USD', '', '', 'live', '', '', '', 1, 5, 5, 0, '', '', '', 1, 5, 10, 1, 'ACTIVE', 0, 1, '674424216664539', 'c043a8dfb7d6418bc89a7271e83354e4', '{\"subject\":\"Welcome {{NAME}}! - Activation email\",\"body\":\"Hey there {{NAME}},<br \\/><br \\/>We are glad you joined us! <br \\/><br \\/>One more step and you are ready,<br \\/><br \\/>you just need to click the following link in order to join {{WEBSITE_TITLE}}<br \\/><br \\/>{{ACTIVATION_LINK}}<br \\/><br \\/>Hope you have a great day!\"}', '{\"subject\":\"{{WEBSITE_TITLE}} - Reset your password\",\"body\":\"Hey {{NAME}},<br \\/><br \\/>We know that you might lose your passwords, we are here to help!<br \\/><br \\/>This is your reset password link: {{LOST_PASSWORD_LINK}}<br \\/><br \\/>If you did not request this, you can ignore it!<br \\/><br \\/>All the best from {{WEBSITE_TITLE}}!\"}', '{\"subject\":\"Welcome to {{WEBSITE_TITLE}} - Your credentials\",\"body\":\"Hey there {{NAME}},<br \\/><br \\/>We are glad you joined us! <br \\/><br \\/>These are your new generated account details:<br \\/><br \\/>Username: {{ACCOUNT_USERNAME}}<br \\/>Password: {{ACCOUNT_PASSWORD}}<br \\/><br \\/>And you can login here: {{WEBSITE_LINK}}<br \\/><br \\/>Hope you have a great day!\"}', '', 0, 0, 'ALL', 10, 0, 0, 15, 3, 1440, 0, 0, 'WEEKLY', 0, 'english', 24, 1, '', 24, 100, 10, '', '', '', '', 24, 100, 15);

-- --------------------------------------------------------

--
-- Table structure for table `twitter_logs`
--

CREATE TABLE `twitter_logs` (
  `id` int(11) NOT NULL,
  `twitter_user_id` int(11) NOT NULL,
  `username` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `followers` int(11) NOT NULL,
  `following` int(11) NOT NULL,
  `tweets` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `twitter_tweets`
--

CREATE TABLE `twitter_tweets` (
  `id` int(11) NOT NULL,
  `twitter_user_id` int(11) NOT NULL,
  `tweet_id` bigint(20) NOT NULL,
  `text` varchar(280) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `source` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `retweets` int(11) NOT NULL DEFAULT 0,
  `likes` int(11) NOT NULL DEFAULT 0,
  `details` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `twitter_users`
--

CREATE TABLE `twitter_users` (
  `id` int(11) NOT NULL,
  `twitter_id` bigint(20) NOT NULL,
  `username` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `full_name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `followers` int(11) NOT NULL,
  `following` int(11) NOT NULL,
  `tweets` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  `profile_picture_url` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_private` tinyint(4) NOT NULL DEFAULT 0,
  `is_verified` tinyint(4) NOT NULL DEFAULT 0,
  `details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_date` datetime NOT NULL,
  `last_check_date` datetime NOT NULL,
  `last_successful_check_date` datetime DEFAULT NULL,
  `is_demo` tinyint(4) NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `unlocked_reports`
--

CREATE TABLE `unlocked_reports` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `source_user_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `expiration_date` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `source` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT 'INSTAGRAM'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_id` bigint(20) DEFAULT NULL,
  `token_code` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_activation_code` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `lost_password_code` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` int(11) NOT NULL DEFAULT 0,
  `active` int(11) NOT NULL DEFAULT 0,
  `date` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_activity` datetime DEFAULT NULL,
  `points` float NOT NULL DEFAULT 15,
  `no_ads` int(11) DEFAULT 0,
  `instagram_id` bigint(11) DEFAULT NULL,
  `api_key` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_reports` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `name`, `facebook_id`, `token_code`, `email_activation_code`, `lost_password_code`, `type`, `active`, `date`, `last_activity`, `points`, `no_ads`, `instagram_id`, `api_key`, `email_reports`) VALUES
(1, 'admin', '$2y$10$uFNO0pQKEHSFcus1zSFlveiPCB3EvG9ZlES7XKgJFTAl5JbRGFCWy', 'mail@mail.com', 'AltumCode.io', NULL, '', '', '0', 1, 1, '', '2020-04-02 07:35:29', 0, 1, NULL, '098f6bcd4621d373cade4e832627b4f6', 0),
(2, 'Vikas_Patel', '$2y$10$ZjajhZsFtXasaU2HHVsizOnmvS7m7GCo7VRtJbNzVTZ3Iv2Msd2Km', 'patelvikas2249@gmail.com', 'Vikas Patel', 104532074495205, '', '', '', 0, 1, '2020-04-02 10:55:44', NULL, 0, 0, NULL, '232414ca1273be07c4b0439fb2810671', 0),
(3, 'abhishek', '$2y$10$8EAXoBrHwG3vzn7y/YeHOuLath5BJjDyjGWDh7XIDuSsHoV7B4nau', 'abhishek@1touch.market', 'abhishek', NULL, '', 'b9d71b9e35c753db98d1f65b35e1aed2', '', 0, 1, '2020-04-02 11:33:54', NULL, 0, 0, NULL, '65823ce1c46edc7d1d4ceb172ae3bad0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `youtube_logs`
--

CREATE TABLE `youtube_logs` (
  `id` int(11) NOT NULL,
  `youtube_user_id` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_id` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscribers` bigint(20) DEFAULT NULL,
  `views` bigint(20) DEFAULT NULL,
  `videos` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `youtube_users`
--

CREATE TABLE `youtube_users` (
  `id` int(11) NOT NULL,
  `youtube_id` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_picture_url` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscribers` bigint(20) DEFAULT NULL,
  `views` bigint(20) DEFAULT NULL,
  `videos` int(11) DEFAULT NULL,
  `uploads_playlist_id` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `added_date` datetime DEFAULT NULL,
  `last_check_date` datetime DEFAULT NULL,
  `last_successful_check_date` datetime DEFAULT NULL,
  `is_demo` int(11) DEFAULT 0,
  `is_private` int(11) DEFAULT 0,
  `is_featured` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `youtube_videos`
--

CREATE TABLE `youtube_videos` (
  `id` int(11) NOT NULL,
  `youtube_user_id` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  `dislikes` int(11) DEFAULT NULL,
  `comments` int(11) DEFAULT NULL,
  `thumbnail_url` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `email_reports`
--
ALTER TABLE `email_reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_reports_id_uindex` (`id`);

--
-- Indexes for table `facebook_logs`
--
ALTER TABLE `facebook_logs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `facebook_logs_id_uindex` (`id`),
  ADD KEY `facebook_user_id` (`facebook_user_id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `facebook_users`
--
ALTER TABLE `facebook_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `facebook_users_id_uindex` (`id`),
  ADD UNIQUE KEY `facebook_users_pk` (`username`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `favorites_id_uindex` (`id`);

--
-- Indexes for table `instagram_logs`
--
ALTER TABLE `instagram_logs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `instagram_logs_id_uindex` (`id`),
  ADD KEY `username` (`username`),
  ADD KEY `instagram_logs_instagram_user_id_index` (`instagram_user_id`);

--
-- Indexes for table `instagram_media`
--
ALTER TABLE `instagram_media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `instagram_media_id_uindex` (`id`),
  ADD UNIQUE KEY `instagram_media_pk` (`media_id`);

--
-- Indexes for table `instagram_users`
--
ALTER TABLE `instagram_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `instagram_users_id_uindex` (`id`),
  ADD UNIQUE KEY `instagram_users_pk` (`instagram_id`),
  ADD UNIQUE KEY `username_2` (`username`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plugins`
--
ALTER TABLE `plugins`
  ADD UNIQUE KEY `identifier` (`identifier`);

--
-- Indexes for table `proxies`
--
ALTER TABLE `proxies`
  ADD PRIMARY KEY (`proxy_id`),
  ADD UNIQUE KEY `proxies_id_uindex` (`proxy_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `twitter_logs`
--
ALTER TABLE `twitter_logs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `facebook_logs_id_uindex` (`id`),
  ADD KEY `facebook_user_id` (`twitter_user_id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tweet_id` (`tweet_id`),
  ADD KEY `twitter_user_id` (`twitter_user_id`);

--
-- Indexes for table `twitter_users`
--
ALTER TABLE `twitter_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `twitter_id_2` (`twitter_id`),
  ADD UNIQUE KEY `username_2` (`username`),
  ADD KEY `twitter_id` (`twitter_id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `unlocked_reports`
--
ALTER TABLE `unlocked_reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unlocked_reports_id_uindex` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `youtube_logs`
--
ALTER TABLE `youtube_logs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `youtube_logs_id_uindex` (`id`),
  ADD KEY `youtube_user_id` (`youtube_user_id`),
  ADD KEY `username` (`youtube_id`);

--
-- Indexes for table `youtube_users`
--
ALTER TABLE `youtube_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `youtube_users_id_uindex` (`id`),
  ADD UNIQUE KEY `youtube_id` (`youtube_id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `youtube_videos`
--
ALTER TABLE `youtube_videos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `youtube_videos_id_uindex` (`id`),
  ADD UNIQUE KEY `video_id` (`video_id`),
  ADD KEY `youtube_user_id` (`youtube_user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `email_reports`
--
ALTER TABLE `email_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `facebook_logs`
--
ALTER TABLE `facebook_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `facebook_users`
--
ALTER TABLE `facebook_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `instagram_logs`
--
ALTER TABLE `instagram_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `instagram_media`
--
ALTER TABLE `instagram_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT for table `instagram_users`
--
ALTER TABLE `instagram_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `proxies`
--
ALTER TABLE `proxies`
  MODIFY `proxy_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `twitter_logs`
--
ALTER TABLE `twitter_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `twitter_users`
--
ALTER TABLE `twitter_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unlocked_reports`
--
ALTER TABLE `unlocked_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `youtube_logs`
--
ALTER TABLE `youtube_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `youtube_users`
--
ALTER TABLE `youtube_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `youtube_videos`
--
ALTER TABLE `youtube_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

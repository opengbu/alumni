-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 08, 2015 at 12:04 AM
-- Server version: 10.0.21-MariaDB-log
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gbuonline`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumni_basic`
--

CREATE TABLE `alumni_basic` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `gender` varchar(100) NOT NULL,
  `marital_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alumni_basic`
--

INSERT INTO `alumni_basic` (`id`, `user_id`, `dob`, `address`, `gender`, `marital_status`) VALUES
(1, 1, '233 ', '37, x7z', 'male', 'example_value1'),
(4, 2, 'someday', '232', 'other', 'single'),
(5, 7, '5/12/95', '4343', 'male', 'single');

-- --------------------------------------------------------

--
-- Table structure for table `alumni_events`
--

CREATE TABLE `alumni_events` (
  `event_date` date NOT NULL,
  `event_name` varchar(100) NOT NULL,
  `event_profile` varchar(500) NOT NULL,
  `event_location` varchar(100) NOT NULL,
  `director_name` varchar(50) NOT NULL,
  `director_info` varchar(200) NOT NULL,
  `event_id` int(11) NOT NULL,
  `director_image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alumni_events`
--

INSERT INTO `alumni_events` (`event_date`, `event_name`, `event_profile`, `event_location`, `director_name`, `director_info`, `event_id`, `director_image`) VALUES
('2015-12-18', 'ALUMNI MEET', 'Lets connect with our old mates and refresh our memories', 'GAUTAM BUDDHA UNIVERSITY', 'SHOBHIT SINGH', 'Event leader', 1, 'http://api.randomuser.me/portraits/med/men/71.jpg'),
('2016-03-23', 'DISTINGUISH ALUMNI AWARDS', 'ceremony to encourage the work done by GBU ALUMNI', 'GAUTAM BUDDHA UNIVERSITY', 'BHAWESH CHOPRA', 'Event Organizer', 2, 'http://api.randomuser.me/portraits/med/men/71.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `analysis`
--

CREATE TABLE `analysis` (
  `hit_number` int(128) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `analysis`
--

INSERT INTO `analysis` (`hit_number`, `date`, `time`) VALUES
(1, '2015-08-19', '00:40:51'),
(2, '2015-08-19', '00:41:49'),
(3, '2015-08-19', '00:42:08'),
(4, '2015-08-19', '01:20:04'),
(5, '2015-08-24', '19:45:38'),
(6, '2015-08-24', '20:18:55'),
(7, '2015-08-24', '20:19:22'),
(8, '2015-08-24', '20:27:43'),
(9, '2015-08-25', '01:38:19'),
(10, '2015-08-25', '01:59:13'),
(11, '2015-08-25', '04:02:55'),
(12, '2015-08-25', '05:34:50'),
(13, '2015-08-25', '05:34:54'),
(14, '2015-08-25', '05:35:03'),
(15, '2015-08-25', '05:39:14'),
(16, '2015-08-25', '05:39:32'),
(17, '2015-08-26', '08:54:32'),
(18, '2015-08-26', '23:28:20'),
(19, '2015-08-26', '23:28:24'),
(20, '2015-08-26', '23:28:55'),
(21, '2015-08-26', '23:28:58'),
(22, '2015-08-26', '23:28:58'),
(23, '2015-08-26', '23:28:59'),
(24, '2015-08-27', '07:00:44'),
(25, '2015-08-27', '07:01:17'),
(26, '2015-08-27', '07:03:56'),
(27, '2015-09-02', '00:36:25'),
(28, '2015-09-02', '00:37:32'),
(29, '2015-09-02', '00:37:39'),
(30, '2015-09-02', '00:38:11'),
(31, '2015-09-02', '00:38:49'),
(32, '2015-09-02', '00:38:57'),
(33, '2015-09-02', '00:38:59'),
(34, '2015-09-02', '00:39:00'),
(35, '2015-09-02', '00:39:01'),
(36, '2015-09-02', '00:39:03'),
(37, '2015-09-02', '00:39:14'),
(38, '2015-09-02', '00:40:15'),
(39, '2015-09-02', '00:42:06'),
(40, '2015-09-02', '00:53:36'),
(41, '2015-09-02', '00:53:37'),
(42, '2015-09-02', '00:53:56'),
(43, '2015-09-02', '00:53:57'),
(44, '2015-09-02', '01:20:03'),
(45, '2015-09-02', '01:20:07'),
(46, '2015-09-02', '01:22:57'),
(47, '2015-09-02', '01:42:44'),
(48, '2015-09-02', '01:45:50'),
(49, '2015-09-02', '06:54:41'),
(50, '2015-09-02', '08:08:08'),
(51, '2015-09-02', '08:08:26'),
(52, '2015-09-02', '08:21:09'),
(53, '2015-09-02', '08:50:30'),
(54, '2015-09-02', '12:05:58'),
(55, '2015-09-02', '16:07:41'),
(56, '2015-09-02', '16:32:08'),
(57, '2015-09-02', '16:35:57'),
(58, '2015-09-02', '18:56:28'),
(59, '2015-09-02', '19:03:41'),
(60, '2015-09-02', '19:21:46'),
(61, '2015-09-02', '19:32:19'),
(62, '2015-09-03', '02:59:12'),
(63, '2015-09-03', '03:05:13'),
(64, '2015-09-03', '03:05:58'),
(65, '2015-09-03', '07:57:07'),
(66, '2015-09-03', '07:59:21'),
(67, '2015-09-03', '15:38:12'),
(68, '2015-09-03', '15:47:03'),
(69, '2015-09-03', '15:47:07'),
(70, '2015-09-03', '15:47:11'),
(71, '2015-09-03', '20:19:16'),
(72, '2015-09-03', '20:21:25'),
(73, '2015-09-03', '20:21:47'),
(74, '2015-09-03', '20:22:54'),
(75, '2015-09-03', '20:56:44'),
(76, '2015-09-04', '09:35:06'),
(77, '2015-09-05', '20:41:13'),
(78, '2015-09-05', '20:41:45'),
(79, '2015-09-05', '20:49:15'),
(80, '2015-09-05', '20:50:05'),
(81, '2015-09-06', '06:56:39'),
(82, '2015-09-06', '07:02:51'),
(83, '2015-09-06', '07:03:36'),
(84, '2015-09-06', '07:03:37'),
(85, '2015-09-06', '07:15:27'),
(86, '2015-09-06', '07:46:51'),
(87, '2015-09-08', '18:08:47'),
(88, '2015-09-08', '18:46:50'),
(89, '2015-09-08', '22:10:49'),
(90, '2015-09-08', '22:11:01'),
(91, '2015-09-09', '18:05:26'),
(92, '2015-09-09', '18:05:34'),
(93, '2015-09-09', '18:41:51'),
(94, '2015-09-09', '19:58:29'),
(95, '2015-09-09', '20:33:06'),
(96, '2015-09-09', '22:56:15'),
(97, '2015-09-09', '22:58:10'),
(98, '2015-09-09', '23:01:08'),
(99, '2015-09-10', '03:28:01'),
(100, '2015-09-10', '03:38:10'),
(101, '2015-09-10', '09:16:21'),
(102, '2015-09-10', '12:31:26'),
(103, '2015-09-10', '19:01:32'),
(104, '2015-09-10', '19:42:57'),
(105, '2015-09-10', '19:50:57'),
(106, '2015-09-10', '19:51:36'),
(107, '2015-09-10', '19:52:27'),
(108, '2015-09-10', '19:52:32'),
(109, '2015-09-10', '19:53:39'),
(110, '2015-09-10', '19:53:48'),
(111, '2015-09-10', '20:10:59'),
(112, '2015-09-10', '20:12:18'),
(113, '2015-09-10', '20:12:36'),
(114, '2015-09-10', '20:12:41'),
(115, '2015-09-10', '20:12:47'),
(116, '2015-09-10', '20:12:53'),
(117, '2015-09-10', '20:13:33'),
(118, '2015-09-10', '20:13:39'),
(119, '2015-09-10', '20:14:07'),
(120, '2015-09-10', '20:14:22'),
(121, '2015-09-10', '20:14:29'),
(122, '2015-09-10', '20:14:34'),
(123, '2015-09-10', '20:14:50'),
(124, '2015-09-10', '20:15:17'),
(125, '2015-09-10', '20:15:25'),
(126, '2015-09-10', '20:15:30'),
(127, '2015-09-10', '20:18:36'),
(128, '2015-09-10', '20:18:39'),
(129, '2015-09-10', '20:28:23'),
(130, '2015-09-10', '20:28:28'),
(131, '2015-09-10', '20:31:55'),
(132, '2015-09-10', '20:32:25'),
(133, '2015-09-10', '20:32:50'),
(134, '2015-09-10', '20:32:58'),
(135, '2015-09-10', '20:33:10'),
(136, '2015-09-10', '20:33:44'),
(137, '2015-09-10', '20:34:24'),
(138, '2015-09-10', '20:35:23'),
(139, '2015-09-10', '20:35:32'),
(140, '2015-09-10', '20:36:18'),
(141, '2015-09-10', '20:36:49'),
(142, '2015-09-10', '20:43:33'),
(143, '2015-09-10', '22:55:21'),
(144, '2015-09-10', '22:55:29'),
(145, '2015-09-10', '22:55:31'),
(146, '2015-09-11', '11:52:49'),
(147, '2015-09-11', '12:00:35'),
(148, '2015-09-11', '12:17:45'),
(149, '2015-09-11', '16:54:47'),
(150, '2015-09-11', '19:08:43'),
(151, '2015-09-11', '19:21:25'),
(152, '2015-09-15', '06:01:51'),
(153, '2015-09-15', '06:05:03'),
(154, '2015-09-15', '06:06:25'),
(155, '2015-09-15', '18:11:51'),
(156, '2015-09-15', '18:36:28'),
(157, '2015-09-15', '18:55:08'),
(158, '2015-09-15', '19:00:15'),
(159, '2015-09-15', '19:00:27'),
(160, '2015-09-15', '19:04:05'),
(161, '2015-09-16', '00:25:39'),
(162, '2015-09-16', '01:38:12'),
(163, '2015-09-16', '01:44:12'),
(164, '2015-09-16', '01:49:16'),
(165, '2015-09-16', '07:03:14'),
(166, '2015-09-16', '07:15:10'),
(167, '2015-09-16', '07:21:15'),
(168, '2015-09-16', '22:47:29'),
(169, '2015-09-17', '22:14:01'),
(170, '2015-09-17', '22:15:06'),
(171, '2015-09-17', '22:15:07'),
(172, '2015-09-17', '22:42:44'),
(173, '2015-09-17', '23:40:21'),
(174, '2015-09-18', '00:52:48'),
(175, '2015-09-18', '01:32:28'),
(176, '2015-09-18', '01:33:23'),
(177, '2015-09-28', '23:37:09'),
(178, '2015-09-29', '00:24:31'),
(179, '2015-09-29', '00:25:15'),
(180, '2015-09-29', '01:17:36'),
(181, '2015-09-29', '01:20:06'),
(182, '2015-09-29', '20:39:39'),
(183, '2015-09-29', '20:57:36'),
(184, '2015-09-29', '20:57:37'),
(185, '2015-09-29', '21:02:25'),
(186, '2015-09-29', '21:04:49'),
(187, '2015-09-29', '21:16:30'),
(188, '2015-09-29', '21:19:46'),
(189, '2015-09-29', '21:21:35'),
(190, '2015-09-29', '21:27:53'),
(191, '2015-09-29', '21:28:03'),
(192, '2015-09-29', '21:36:27'),
(193, '2015-09-29', '21:36:34'),
(194, '2015-09-29', '21:36:34'),
(195, '2015-09-29', '21:44:54'),
(196, '2015-09-29', '21:47:03'),
(197, '2015-09-29', '21:47:04'),
(198, '2015-09-29', '21:48:23'),
(199, '2015-09-29', '21:51:42'),
(200, '2015-09-29', '22:02:22'),
(201, '2015-09-30', '16:08:50'),
(202, '2015-09-30', '16:09:48'),
(203, '2015-09-30', '16:56:51'),
(204, '2015-09-30', '16:56:57'),
(205, '2015-09-30', '16:56:58'),
(206, '2015-10-01', '07:58:06'),
(207, '2015-10-01', '08:48:30'),
(208, '2015-10-01', '11:12:58'),
(209, '2015-10-01', '12:13:23'),
(210, '2015-10-01', '12:47:38'),
(211, '2015-10-01', '13:06:18'),
(212, '2015-10-01', '13:30:56'),
(213, '2015-10-01', '13:56:21'),
(214, '2015-10-01', '14:47:03'),
(215, '2015-10-01', '15:01:26'),
(216, '2015-10-01', '19:17:36'),
(217, '2015-10-01', '19:17:55'),
(218, '2015-10-01', '19:18:42'),
(219, '2015-10-01', '19:18:42'),
(220, '2015-10-01', '19:19:24'),
(221, '2015-10-01', '19:19:26'),
(222, '2015-10-01', '19:19:26'),
(223, '2015-10-01', '19:20:48'),
(224, '2015-10-01', '19:21:03'),
(225, '2015-10-01', '19:21:44'),
(226, '2015-10-01', '19:21:44'),
(227, '2015-10-01', '19:23:07'),
(228, '2015-10-01', '19:23:14'),
(229, '2015-10-01', '19:23:16'),
(230, '2015-10-01', '19:25:06'),
(231, '2015-10-01', '19:25:15'),
(232, '2015-10-01', '19:26:13'),
(233, '2015-10-01', '19:26:23'),
(234, '2015-10-01', '19:27:10'),
(235, '2015-10-01', '19:28:27'),
(236, '2015-10-01', '19:56:45'),
(237, '2015-10-02', '21:13:07'),
(238, '2015-10-02', '21:18:37'),
(239, '2015-10-02', '21:57:48'),
(240, '2015-10-04', '20:49:14'),
(241, '2015-10-04', '20:49:18'),
(242, '2015-10-04', '20:49:19'),
(243, '2015-10-05', '05:17:40'),
(244, '2015-10-05', '05:20:12'),
(245, '2015-10-05', '09:00:59'),
(246, '2015-10-05', '09:05:19'),
(247, '2015-10-05', '09:39:04'),
(248, '2015-10-05', '10:56:58'),
(249, '2015-10-07', '15:06:32'),
(250, '2015-10-07', '15:07:15');

-- --------------------------------------------------------

--
-- Table structure for table `edu_info`
--

CREATE TABLE `edu_info` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `start_year` varchar(100) NOT NULL,
  `passout_year` varchar(100) NOT NULL,
  `course_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `edu_info`
--

INSERT INTO `edu_info` (`id`, `user_id`, `start_year`, `passout_year`, `course_name`) VALUES
(3, 2, '2323', '2323', '2323'),
(4, 1, 'pp', 'pp', 'pp');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `action` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `user_id`, `date`, `time`, `action`) VALUES
(17, 1, '2015-09-30', '08:14:51', 'Updated user - student122 (8) + Changed role to Student'),
(18, 1, '2015-09-30', '08:15:11', 'Updated user - user1 (2) + Changed role to Student'),
(19, 1, '2015-09-30', '08:15:35', 'Updated user - user1 (2) + updated password  + Changed role to Student'),
(20, 1, '2015-09-30', '08:20:56', 'Updated user - student122 (8)'),
(21, 1, '2015-09-30', '08:21:09', 'Updated user - hh (12)'),
(22, 1, '2015-09-30', '08:21:21', 'Updated user - user1 (2) + Changed role to Moderator'),
(23, 1, '2015-09-30', '08:27:46', ' Changed hu (17)''s role to Administrator'),
(24, 1, '2015-09-30', '08:35:51', '::1 - deleted user shob (6) (Mozilla/5.0 (X11; Linux x86_64; rv:40.0) Gecko/20100101 Firefox/40.0 ) '),
(25, 1, '2015-09-30', '16:22:49', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(26, 1, '2015-09-30', '16:48:19', '::1 -  Changed bhawesh (7)''s role to Moderator (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(27, 1, '2015-09-30', '16:48:35', '::1 -  Changed bhawesh (7)''s role to Warden (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(28, 1, '2015-10-01', '07:58:20', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(29, 1, '2015-10-01', '07:58:32', '::1 - Logged out (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(30, 5, '2015-10-01', '07:58:40', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(31, 5, '2015-10-01', '07:59:03', '::1 - Updated user - rajat (5) + Changed role to Administrator (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(32, 5, '2015-10-01', '07:59:03', '::1 - Logged out (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(33, 5, '2015-10-01', '07:59:09', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(34, 5, '2015-10-01', '07:59:33', '::1 - Updated user - rajat (5) (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(35, 5, '2015-10-01', '07:59:34', '::1 - Logged out (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(36, 5, '2015-10-01', '07:59:38', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(37, 19, '2015-10-01', '12:19:37', '::1 - Registered (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(38, 1, '2015-10-01', '12:47:59', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(39, 1, '2015-10-01', '12:48:01', '::1 - Logged out (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(40, 1, '2015-10-01', '13:06:30', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(41, 1, '2015-10-01', '13:06:40', '::1 -  Changed user1 (2)''s role to Administrator (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(42, 1, '2015-10-01', '13:06:43', '::1 - Logged out (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(43, 2, '2015-10-01', '13:06:48', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(44, 2, '2015-10-01', '13:07:02', '::1 - Updated user - user1 (2) + Changed role to Administrator (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(45, 2, '2015-10-01', '13:07:02', '::1 - Logged out (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(46, 2, '2015-10-01', '13:07:06', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(47, 2, '2015-10-01', '13:07:19', '::1 - Logged out (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(48, 1, '2015-10-01', '13:07:24', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(49, 1, '2015-10-01', '13:07:41', '::1 -  Changed user1 (2)''s role to Administrator (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(50, 1, '2015-10-01', '13:07:45', '::1 - Logged out (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(51, 1, '2015-10-01', '13:07:47', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(52, 1, '2015-10-01', '13:08:09', '::1 - Logged out (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(53, 2, '2015-10-01', '13:08:11', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(54, 2, '2015-10-01', '13:09:40', '::1 - Updated user - user1 (2) (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(55, 2, '2015-10-01', '13:09:41', '::1 - Logged out (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(56, 2, '2015-10-01', '13:09:46', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(57, 2, '2015-10-01', '13:10:09', '::1 - Logged out (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(58, 1, '2015-10-01', '13:10:11', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(59, 1, '2015-10-01', '13:31:04', '::1 - Logged out (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(60, 1, '2015-10-01', '13:31:31', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(61, 1, '2015-10-01', '13:45:04', '::1 - Logged out (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(62, 1, '2015-10-01', '13:45:07', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(63, 1, '2015-10-01', '13:49:12', '::1 - Logged out (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(64, 1, '2015-10-01', '13:54:07', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(65, 1, '2015-10-01', '13:54:11', '::1 - Logged out (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(66, 1, '2015-10-01', '13:54:13', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(67, 1, '2015-10-01', '13:56:27', '::1 - Logged out (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(68, 1, '2015-10-01', '13:56:55', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(69, 1, '2015-10-01', '14:35:15', '::1 - Logged out (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(70, 1, '2015-10-01', '14:43:53', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(71, 1, '2015-10-01', '14:43:55', '::1 - Logged out (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(72, 1, '2015-10-01', '14:43:58', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(73, 1, '2015-10-01', '15:12:41', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(74, 1, '2015-10-01', '15:16:14', '::1 - Logged out (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(75, 1, '2015-10-01', '15:16:17', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(76, 1, '2015-10-01', '15:16:33', '::1 - Logged out (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(77, 1, '2015-10-01', '15:16:36', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(78, 1, '2015-10-01', '19:29:47', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(79, 1, '2015-10-01', '19:31:05', 'Updated notice - Cancellation of Purchase Order for printing of Letter Head and L- Folder awarded to Seven Star Associates-New Delhi (11)'),
(80, 1, '2015-10-02', '21:13:17', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(81, 1, '2015-10-02', '21:35:24', 'Changed upcoming event number 1 from Abhivyanjana 2016 to pqrst'),
(82, 1, '2015-10-02', '21:36:09', 'Changed upcoming event number 4 from pqrst to '),
(83, 1, '2015-10-02', '21:36:18', 'Changed upcoming event number 4 from  to Code In GBU'),
(84, 1, '2015-10-02', '21:36:42', 'Changed upcoming event number 2 from Abhivyanjana 2016 to Code In GBU'),
(85, 1, '2015-10-02', '21:36:55', 'Changed upcoming event number 1 from pqrst to Blank'),
(86, 1, '2015-10-02', '21:36:55', 'Changed upcoming event number 2 from Code In GBU to Blank'),
(87, 1, '2015-10-02', '21:37:06', 'Changed upcoming event number 1 from Blank to Abhivyanjana 2016'),
(88, 1, '2015-10-02', '21:37:25', 'Changed upcoming event number 5 from Blank to Abhivyanjana 2016'),
(89, 1, '2015-10-02', '21:58:07', 'Updated event Code In GBU (5)'),
(90, 1, '2015-10-02', '21:58:21', 'Updated event pqrst (10)'),
(91, 1, '2015-10-02', '21:59:56', 'Updated event Code In GBU (5)'),
(92, 1, '2015-10-02', '22:00:04', 'Updated event Abhivyanjana 2016 (6)'),
(93, 1, '2015-10-02', '22:01:12', 'Updated event Abhivyanjana 2016 (6)'),
(94, 1, '2015-10-02', '22:11:51', 'Updated notice - Notice for the Scholarship and fee reimbursement of students for Academic Session 2015-16 s (7)'),
(95, 1, '2015-10-02', '22:12:11', 'Updated notice - Notification for Late Fee Submission for Odd Semester Registration 2015-16 (10)'),
(96, 1, '2015-10-04', '20:49:32', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(97, 1, '2015-10-04', '20:50:28', '::1 - Logged out (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(98, 1, '2015-10-05', '06:01:06', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(99, 1, '2015-10-05', '06:01:08', '::1 - Logged out (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(100, 1, '2015-10-05', '06:01:26', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(101, 1, '2015-10-05', '06:01:44', 'Updated School - soict (12)'),
(102, 1, '2015-10-05', '06:02:09', 'Updated School - soict (12)'),
(103, 1, '2015-10-05', '08:52:53', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(104, 1, '2015-10-05', '09:06:36', 'Created event 343434 &#039; 343434'),
(105, 1, '2015-10-07', '15:06:55', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) ');

-- --------------------------------------------------------

--
-- Table structure for table `update_info`
--

CREATE TABLE `update_info` (
  `version` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `update_info`
--

INSERT INTO `update_info` (`version`) VALUES
(4.7);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '0',
  `profile_picture` varchar(50) NOT NULL,
  `full_name` varchar(40) NOT NULL,
  `roll_number` varchar(10) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `confirmation_link` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `type`, `email`, `active`, `profile_picture`, `full_name`, `roll_number`, `phone_number`, `confirmation_link`) VALUES
(1, 'varun', '$2a$08$Zu3VrELhRcG42tOXzulIL.U0vKKcv6PYGUaRS/rNR6CPfPOOVxzcK', 'superadmin', 'varun.10@live.com', 3, 'user_uploads/profile_images/1.jpg', 'Varun Garg', '13/ICS/057', '', 'e6f1a06d93ce4acf13d26a35bf0550be0d76'),
(2, 'user1', '$2a$08$oR7RU1ryn227LGRXms555.QzxkGACHqAMKMjHNRbg1LHutmcVVtUy', 'admin', 'anime.life@hotmail.com', 1, 'user_uploads/profile_images/2.png', 'AMA', 'ppp', '', 'da2a204ebfc309e3df5377b5472b7928b7d2'),
(3, 'sarthak', '$2a$08$IvYcXuhBaZHTeHY4VG0iiuJmyCd1xO4N4v/6e24wbOUIeNmpvBevq', 'superuser', 'gargsarthak30@gmail.com', 1, 'user_uploads/profile_images/3.jpg', 'Sarthak Garg', '13 ics 047', '', ''),
(5, 'rajat', '$2a$08$89gL0PX4Ewl0/9RbfqBuOO6Jbp.ETHXsk.rDNtzKUkDcFe3SwBKaC', '', 'sunny0rajat@gmail.com', 1, '', 'Rajat Saxena', '13 ics 036', '', ''),
(7, 'bhawesh', '$2a$08$H29pPDhG0hQTI3qBa3367Od4S4MvdZFqlyA4d3oeZ10iI7yeTrlgi', 'warden', '13ics015@gbu.ac.in', 1, '', 'Bhawesh Chandola', '1234', '', '59c66dc83a0c9b6f5426d84cba429868c843'),
(8, 'student122', '$2a$08$YjytProg8gi0nweS2f7cI.b8Dh2ZR4keLzSFXuFNCVAFWlQ3V1nca', 'student', 'sasa@xyz.com', 1, '', 'Student 1', '', '', ''),
(9, 'amit', '$2a$08$UcvspCTXRKOIiZj2FAdGn.z0Grzpd9cWsjH.m0JjQc0cRYmbjtJCu', 'admin', 'amit@gbuonline.in', 1, '', 'Dr. Amit K awasthi', '', '', ''),
(12, 'hh', '$2a$08$plcwNa7OHTciWP002DuQeubdgwMnXUBR76t1C2K/Zo521vVbS7GVi', 'student', 'hh@hh', 1, '', 'hh', 'hh', '', '58b0ee8c7c1405b833e223ade5da596db9f3'),
(14, 'hhhh', '$2a$08$3MAkipq3/BQQKNzozKva1uk3DUTxxDa.xsOzdZaRBpSKeporgh/PS', 'student', 'asas@hh.hhh', 0, '', 'hh', 'hh', '', 'eeb990dbe87509f8dd89783fbe65f3fbfcec'),
(15, 'hw', '$2a$08$DhcV3jxTP5ujfCD2/b5.T.wQd97qnP3e.Ig2TbZx8X0l8OapQYBfa', 'cw', 'hw@hw.hw', 0, '', 'hw', 'hw', '', '2a2bafdff94ddf73d375b0401b6e81699b6f'),
(16, 'vvv', '$2a$08$wSrNiJYb5Tl2OI0YKzRhUumTNQUi9npF4y4mRHRAUORHm2CrBMT1C', 'student', 'asasa@ssdsd.sdsds', 0, '', 'asasa', '13/ics/057', '', 'e8d9917d532dcb53034d53ea1f47ec87e51f'),
(17, 'hu', '$2a$08$yezb49LY7/Fsj4F.NqhRx.SCoGLEoNn/vs2TqEAZFT.KXCb338Pkq', 'admin', 'asasa@ssdsd.sdsdsss', 0, '', 'asasa', '13/ics/057', '', '90fe8282f794a154d64265fe51d0d9dba31e'),
(18, 'qq', '$2a$08$ZzcGfZCZOrdU0W41a0LgCuixqu7JX9cI12ui1pA5W/931vjqcQc0e', 'student', 'qq@ss.sss', 0, '', 'qq', '', '', '4ad78cd78a73fe610c1352dd18045d255284'),
(19, 'pp', '$2a$08$MnBKvCPFwSX/6M59uph3fOKw.YV90omHBj4l/jd1drPZs/snmVQua', 'student', 'p@p.pp', 0, '', 'pp', '', '', 'bb555b84fe7d25e71a0340e6b8cbef16131d');

-- --------------------------------------------------------

--
-- Table structure for table `work_details`
--

CREATE TABLE `work_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `start_year` varchar(100) NOT NULL,
  `end_year` text NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `distinguished` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `work_details`
--

INSERT INTO `work_details` (`id`, `user_id`, `start_year`, `end_year`, `company_name`, `location`, `designation`, `distinguished`) VALUES
(2, 2, '1001', '100', '100', '100', '100', 0),
(3, 7, 'asaa', 'asas', 'dsdsd', 'asasa', 'asas', 0),
(4, 1, 'oo', 'oo', 'oo', 'oo', 'oo', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumni_basic`
--
ALTER TABLE `alumni_basic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alumni_events`
--
ALTER TABLE `alumni_events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `analysis`
--
ALTER TABLE `analysis`
  ADD PRIMARY KEY (`hit_number`);

--
-- Indexes for table `edu_info`
--
ALTER TABLE `edu_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `work_details`
--
ALTER TABLE `work_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alumni_basic`
--
ALTER TABLE `alumni_basic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `alumni_events`
--
ALTER TABLE `alumni_events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `analysis`
--
ALTER TABLE `analysis`
  MODIFY `hit_number` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;
--
-- AUTO_INCREMENT for table `edu_info`
--
ALTER TABLE `edu_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `work_details`
--
ALTER TABLE `work_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 08, 2015 at 11:01 PM
-- Server version: 10.0.21-MariaDB-log
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alumni`
--

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
(3, 2, '2323', '2323', '2323');

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
(105, 1, '2015-10-07', '15:06:55', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(106, 1, '2015-10-08', '05:39:46', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(107, 1, '2015-10-08', '06:00:48', '::1 - Logged out (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(108, 1, '2015-10-08', '06:01:08', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(109, 1, '2015-10-09', '03:02:54', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(110, 1, '2015-10-09', '03:56:37', '::1 - Updated user - varun (1) (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(111, 1, '2015-10-09', '03:56:37', '::1 - Logged out (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(112, 1, '2015-10-09', '03:56:39', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(113, 1, '2015-10-09', '03:58:31', '::1 -  Changed rajat (5)''s role to Super Administrator (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(114, 1, '2015-10-09', '03:59:14', '::1 - Updated user - rajat (5) (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(115, 1, '2015-10-09', '03:59:21', '::1 - Updated user - rajat (5) (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(116, 1, '2015-10-09', '03:59:28', '::1 - Updated user - rajat (5) (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(117, 1, '2015-10-09', '04:30:10', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) ');

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
  `confirmation_link` varchar(36) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `gender` varchar(100) NOT NULL,
  `marital_status` varchar(100) NOT NULL,
  `distinguished` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `type`, `email`, `active`, `profile_picture`, `full_name`, `roll_number`, `phone_number`, `confirmation_link`, `dob`, `address`, `gender`, `marital_status`, `distinguished`) VALUES
(1, 'varun', '$2a$08$Zu3VrELhRcG42tOXzulIL.U0vKKcv6PYGUaRS/rNR6CPfPOOVxzcK', 'superadmin', 'varun.10@live.com', 1, 'user_uploads/profile_images/1.jpg', 'Varun Garg', '13/ICS/057', '', 'e6f1a06d93ce4acf13d26a35bf0550be0d76', '20-8-1995', '37, Rajdhani Nikunk, I.P. Extension 94, Delhi 92', 'male', 'single', 0),
(5, 'rajat', '$2a$08$89gL0PX4Ewl0/9RbfqBuOO6Jbp.ETHXsk.rDNtzKUkDcFe3SwBKaC', 'superadmin', 'sunny0rajat@gmail.com', 1, '', 'Rajat Saxena', '13/ICS/035', '', '', '', '', '', '', 0);

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
  `designation` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `work_details`
--

INSERT INTO `work_details` (`id`, `user_id`, `start_year`, `end_year`, `company_name`, `location`, `designation`) VALUES
(2, 2, '1001', '100', '100', '100', '100'),
(3, 7, 'asaa', 'asas', 'dsdsd', 'asasa', 'asas'),
(4, 1, 'oo', 'oo', 'oo', 'oo', 'oo'),
(5, 1, '22', '22', 'www', '33', '222');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumni_events`
--
ALTER TABLE `alumni_events`
  ADD PRIMARY KEY (`event_id`);

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
-- AUTO_INCREMENT for table `alumni_events`
--
ALTER TABLE `alumni_events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `edu_info`
--
ALTER TABLE `edu_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `work_details`
--
ALTER TABLE `work_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

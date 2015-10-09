-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2015 at 08:58 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `alumni`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumni_events`
--

CREATE TABLE IF NOT EXISTS `alumni_events` (
  `event_date` date NOT NULL,
  `event_name` varchar(100) NOT NULL,
  `event_profile` varchar(500) NOT NULL,
  `event_location` varchar(100) NOT NULL,
  `director_name` varchar(50) NOT NULL,
  `director_info` varchar(200) NOT NULL,
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `director_image` varchar(200) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `alumni_events`
--

INSERT INTO `alumni_events` (`event_date`, `event_name`, `event_profile`, `event_location`, `director_name`, `director_info`, `event_id`, `director_image`) VALUES
('2015-12-18', 'ALUMNI MEET', 'Lets connect with our old mates and refresh our memories', 'GAUTAM BUDDHA UNIVERSITY', 'SHOBHIT SINGH', 'Event leader', 1, 'user_uploads/director_images/1.jpg'),
('2016-03-23', 'DISTINGUISH ALUMNI AWARDS', 'ceremony to encourage the work done by GBU ALUMNI', 'GAUTAM BUDDHA UNIVERSITY', 'BHAWESH CHOPRA', 'Event Organizer', 2, 'user_uploads/director_images/2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `edu_info`
--

CREATE TABLE IF NOT EXISTS `edu_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `start_year` varchar(100) NOT NULL,
  `passout_year` varchar(100) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `school_name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `action` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=188 ;

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
(117, 1, '2015-10-09', '04:30:10', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(118, 1, '2015-10-09', '04:44:34', '::1 - Logged out (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(119, 5, '2015-10-09', '04:44:38', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(120, 5, '2015-10-09', '04:47:09', '::1 - Logged out (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(121, 1, '2015-10-09', '04:47:12', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(122, 1, '2015-10-09', '06:30:09', 'Created alumni event 2222'),
(123, 1, '2015-10-09', '06:30:58', 'Created alumni event qq'),
(124, 1, '2015-10-09', '06:32:27', 'Updated alumni event 2222 (3)'),
(125, 1, '2015-10-09', '06:34:18', 'Updated alumni event 2222 (3)'),
(126, 1, '2015-10-09', '06:34:49', 'Updated alumni event qq (4)'),
(127, 1, '2015-10-09', '06:35:57', 'Updated alumni event qq (4)'),
(128, 1, '2015-10-09', '06:37:20', 'Updated alumni event qq (4)'),
(129, 1, '2015-10-09', '07:02:34', 'Updated alumni event qq &#039; aaasa (4)'),
(130, 1, '2015-10-09', '07:11:49', 'Updated alumni event ALUMNI MEET (1)'),
(131, 1, '2015-10-09', '07:12:28', 'Updated alumni event ALUMNI MEET (1)'),
(132, 1, '2015-10-09', '07:12:41', 'Updated alumni event 2222 (3)'),
(133, 1, '2015-10-09', '07:12:52', 'Updated alumni event DISTINGUISH ALUMNI AWARDS (2)'),
(134, 1, '2015-10-09', '07:14:48', '::1 - deleted event 2222 (3) (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(135, 1, '2015-10-09', '07:27:59', 'Uploaded file /user_uploads/gallery/Screenshot_from_2015-09-12_22-08-46.png'),
(136, 1, '2015-10-09', '07:28:35', 'Uploaded file /user_uploads/gallery/PSYCHO_PASS_Series_Shougo_Makishima_Character_weapon_boys_2560x1440.jpg'),
(137, 1, '2015-10-09', '08:07:43', '::1 -  Changed rajat (5)''s role to Student (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(138, 1, '2015-10-09', '08:07:45', '::1 -  Changed rajat (5)''s role to Super Administrator (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(139, 1, '2015-10-09', '08:10:17', '::1 -  Changed rajat (5)''s status to 1 (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(140, 1, '2015-10-09', '08:10:38', '::1 -  Changed rajat (5)''s status to 0 (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(141, 1, '2015-10-09', '08:10:48', '::1 -  Changed varun (1)''s status to 1 (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(142, 1, '2015-10-09', '08:12:14', '::1 -  Changed varun (1)''s status to 0 (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(143, 1, '2015-10-09', '08:12:15', '::1 -  Changed varun (1)''s status to 1 (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(144, 1, '2015-10-09', '08:12:18', '::1 -  Changed varun (1)''s status to 0 (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(145, 1, '2015-10-09', '08:12:22', '::1 -  Changed varun (1)''s status to 1 (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(146, 1, '2015-10-09', '08:12:28', '::1 -  Changed rajat (5)''s status to 1 (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(147, 1, '2015-10-09', '08:13:04', '::1 -  Changed rajat (5)''s status to 0 (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(148, 1, '2015-10-09', '08:13:15', '::1 -  Changed varun (1)''s status to 0 (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(149, 1, '2015-10-09', '08:13:17', '::1 -  Changed rajat (5)''s status to 1 (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(150, 1, '2015-10-09', '08:35:12', '::1 - Logged out (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(151, 1, '2015-10-09', '08:36:43', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(152, 1, '2015-10-09', '08:41:25', '::1 - Logged out (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(153, 6, '2015-10-09', '08:58:31', '::1 - Registered (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(154, 1, '2015-10-09', '17:34:06', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(155, 1, '2015-10-09', '18:45:23', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(156, 1, '2015-10-09', '19:02:02', '::1 - Logged out (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(157, 1, '2015-10-09', '19:02:04', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(158, 1, '2015-10-09', '19:02:07', '::1 - Logged out (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(159, 1, '2015-10-09', '19:03:45', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(160, 1, '2015-10-09', '19:05:21', '::1 - Logged out (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(161, 1, '2015-10-09', '19:05:29', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(162, 1, '2015-10-10', '00:31:59', '::1 - Logged in. (Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(163, 1, '2015-10-10', '01:39:43', 'Uploaded file /user_uploads/gallery/code_geass_lamperouge_lelouch_best_widescreen_background_desktop_1200x849_hd-wallpaper-1288630.jpg'),
(164, 1, '2015-10-10', '01:39:49', 'Uploaded file /user_uploads/gallery/1.jpg'),
(165, 5, '2015-10-09', '21:57:10', '::1 - Logged in. (Mozilla/5.0 (Windows NT 10.0; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(166, 5, '2015-10-09', '21:57:52', '::1 - Updated user - rajat (5) + updated password  (Mozilla/5.0 (Windows NT 10.0; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(167, 5, '2015-10-09', '21:57:52', '::1 - Logged out (Mozilla/5.0 (Windows NT 10.0; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(168, 5, '2015-10-09', '21:57:53', '::1 - Updated user - rajat (5) + updated password  (Mozilla/5.0 (Windows NT 10.0; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(169, 5, '2015-10-09', '21:57:53', '::1 - Logged out (Mozilla/5.0 (Windows NT 10.0; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(170, 5, '2015-10-09', '21:58:54', '::1 - Logged in. (Mozilla/5.0 (Windows NT 10.0; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(171, 5, '2015-10-09', '21:59:08', '::1 - Logged out (Mozilla/5.0 (Windows NT 10.0; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(172, 5, '2015-10-09', '21:59:25', '::1 - Logged in. (Mozilla/5.0 (Windows NT 10.0; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(173, 5, '2015-10-09', '22:11:27', '::1 - Logged out (Mozilla/5.0 (Windows NT 10.0; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(174, 5, '2015-10-09', '22:31:13', '::1 - Logged in. (Mozilla/5.0 (Windows NT 10.0; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(175, 5, '2015-10-09', '22:45:04', '::1 - Updated user - rajat (5) + updated password  (Mozilla/5.0 (Windows NT 10.0; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(176, 5, '2015-10-09', '22:45:05', '::1 - Logged out (Mozilla/5.0 (Windows NT 10.0; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(177, 5, '2015-10-09', '22:45:11', '::1 - Logged in. (Mozilla/5.0 (Windows NT 10.0; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(178, 5, '2015-10-09', '22:45:34', '::1 - Updated user - rajat (5) + updated password  (Mozilla/5.0 (Windows NT 10.0; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(179, 5, '2015-10-09', '22:45:34', '::1 - Logged out (Mozilla/5.0 (Windows NT 10.0; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(180, 5, '2015-10-09', '22:45:48', '::1 - Logged in. (Mozilla/5.0 (Windows NT 10.0; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(181, 5, '2015-10-09', '23:49:16', '::1 - Updated user - rajat (5) + updated password  (Mozilla/5.0 (Windows NT 10.0; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(182, 5, '2015-10-09', '23:49:16', '::1 - Logged out (Mozilla/5.0 (Windows NT 10.0; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(183, 5, '2015-10-09', '23:49:29', '::1 - Logged in. (Mozilla/5.0 (Windows NT 10.0; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(184, 5, '2015-10-09', '23:51:37', '::1 - Logged out (Mozilla/5.0 (Windows NT 10.0; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(185, 77, '2015-10-09', '23:51:59', '::1 - Logged in. (Mozilla/5.0 (Windows NT 10.0; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(186, 77, '2015-10-09', '23:53:19', '::1 - Logged out (Mozilla/5.0 (Windows NT 10.0; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0 ) '),
(187, 74, '2015-10-09', '23:53:56', '::1 - Logged in. (Mozilla/5.0 (Windows NT 10.0; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0 ) ');

-- --------------------------------------------------------

--
-- Table structure for table `update_info`
--

CREATE TABLE IF NOT EXISTS `update_info` (
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

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `distinguished` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=89 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `type`, `email`, `active`, `profile_picture`, `full_name`, `roll_number`, `phone_number`, `confirmation_link`, `dob`, `address`, `gender`, `marital_status`, `distinguished`) VALUES
(1, 'varun', '$2a$08$Zu3VrELhRcG42tOXzulIL.U0vKKcv6PYGUaRS/rNR6CPfPOOVxzcK', 'superadmin', 'varun.10@live.com', 1, 'user_uploads/profile_images/1.jpg', 'Varun Garg', '13/ICS/057', '', 'e6f1a06d93ce4acf13d26a35bf0550be0d76', '20-8-1995', '37, Rajdhani Nikunk, I.P. Extension 94, Delhi 92', 'male', 'single', 0),
(5, 'rajat', '$2a$08$qDwu17uUTcEiHyJkLTkDFuUgkJCJFZd9tJ7TSjP/XEWhhdH/k9C/C', 'superadmin', 'sunny0rajat@gmail.com', 1, '', 'Rajat Saxena', '13/ICS/035', '', '', '', '', '', '', 0),
(49, 'alokkumar', '$2a$08$qDwu17uUTcEiHyJkLTkDFuUgkJCJFZd9tJ7TSjP/XEWhhdH/k9C/C', 'student', '', 1, '', 'Alok Kumar', '', '', '', '', '', '', '', 0),
(50, 'humarafi', '$2a$08$qDwu17uUTcEiHyJkLTkDFuUgkJCJFZd9tJ7TSjP/XEWhhdH/k9C/C', 'student', '', 1, '', 'Huma Rafi', '', '', '', '', '', '', '', 0),
(51, 'deepdarshansuman', '$2a$08$qDwu17uUTcEiHyJkLTkDFuUgkJCJFZd9tJ7TSjP/XEWhhdH/k9C/C', 'student', '', 1, '', 'Deep Darshan Suman', '', '', '', '', '', '', '', 0),
(52, 'snehakumari', '$2a$08$qDwu17uUTcEiHyJkLTkDFuUgkJCJFZd9tJ7TSjP/XEWhhdH/k9C/C', 'student', '', 1, '', 'Sneha Kumari', '', '', '', '', '', '', '', 0),
(53, 'lalitkumar', '$2a$08$qDwu17uUTcEiHyJkLTkDFuUgkJCJFZd9tJ7TSjP/XEWhhdH/k9C/C', 'student', '', 1, '', 'Lalit Kumar', '', '', '', '', '', '', '', 0),
(54, 'vijaysinghrawat', '$2a$08$qDwu17uUTcEiHyJkLTkDFuUgkJCJFZd9tJ7TSjP/XEWhhdH/k9C/C', 'student', '', 1, '', 'Vijay Singh Rawat', '', '', '', '', '', '', '', 0),
(55, 'vishalmaheswari', '$2a$08$qDwu17uUTcEiHyJkLTkDFuUgkJCJFZd9tJ7TSjP/XEWhhdH/k9C/C', 'student', '', 1, '', 'Vishal Maheswari', '', '', '', '', '', '', '', 0),
(56, 'ruchianand', '$2a$08$qDwu17uUTcEiHyJkLTkDFuUgkJCJFZd9tJ7TSjP/XEWhhdH/k9C/C', 'student', '', 1, '', 'Ruchi Anand', '', '', '', '', '', '', '', 0),
(57, 'swatisingh', '$2a$08$qDwu17uUTcEiHyJkLTkDFuUgkJCJFZd9tJ7TSjP/XEWhhdH/k9C/C', 'student', '', 1, '', 'Swati Singh', '', '', '', '', '', '', '', 0),
(58, 'surbhiverma', '$2a$08$qDwu17uUTcEiHyJkLTkDFuUgkJCJFZd9tJ7TSjP/XEWhhdH/k9C/C', 'student', '', 1, '', 'Surbhi Verma', '', '', '', '', '', '', '', 0),
(59, 'kirtisingh', '$2a$08$qDwu17uUTcEiHyJkLTkDFuUgkJCJFZd9tJ7TSjP/XEWhhdH/k9C/C', 'student', '', 1, '', 'Kirti Singh', '', '', '', '', '', '', '', 0),
(60, 'ksitizgupta', '$2a$08$qDwu17uUTcEiHyJkLTkDFuUgkJCJFZd9tJ7TSjP/XEWhhdH/k9C/C', 'student', '', 1, '', 'Ksitiz Gupta', '', '', '', '', '', '', '', 0),
(61, 'vipulsingh', '$2a$08$qDwu17uUTcEiHyJkLTkDFuUgkJCJFZd9tJ7TSjP/XEWhhdH/k9C/C', 'student', '', 1, '', 'Vipul Singh', '', '', '', '', '', '', '', 0),
(62, 'somyadixit', '$2a$08$qDwu17uUTcEiHyJkLTkDFuUgkJCJFZd9tJ7TSjP/XEWhhdH/k9C/C', 'student', '', 1, '', 'Somya Dixit', '', '', '', '', '', '', '', 0),
(63, 'chiragahuja', '$2a$08$qDwu17uUTcEiHyJkLTkDFuUgkJCJFZd9tJ7TSjP/XEWhhdH/k9C/C', 'student', '', 1, '', 'Chirag Ahuja', '', '', '', '', '', '', '', 0),
(64, 'amitjha', '$2a$08$qDwu17uUTcEiHyJkLTkDFuUgkJCJFZd9tJ7TSjP/XEWhhdH/k9C/C', 'student', '', 1, '', 'Amit jha', '', '', '', '', '', '', '', 0),
(65, 'parshanttripathi', '$2a$08$qDwu17uUTcEiHyJkLTkDFuUgkJCJFZd9tJ7TSjP/XEWhhdH/k9C/C', 'student', '', 1, '', 'Parshant Tripathi', '', '', '', '', '', '', '', 0),
(66, 'siddharthsharma', '$2a$08$qDwu17uUTcEiHyJkLTkDFuUgkJCJFZd9tJ7TSjP/XEWhhdH/k9C/C', 'student', '', 1, '', 'Siddharth Sharma', '', '', '', '', '', '', '', 0),
(67, 'prashantchauhan', '$2a$08$qDwu17uUTcEiHyJkLTkDFuUgkJCJFZd9tJ7TSjP/XEWhhdH/k9C/C', 'student', '', 1, '', 'Prashant Chauhan', '', '', '', '', '', '', '', 0),
(68, 'farazshahid', '$2a$08$qDwu17uUTcEiHyJkLTkDFuUgkJCJFZd9tJ7TSjP/XEWhhdH/k9C/C', 'student', '', 1, '', 'Faraz Shahid', '', '', '', '', '', '', '', 0),
(69, 'amityadav', '$2a$08$qDwu17uUTcEiHyJkLTkDFuUgkJCJFZd9tJ7TSjP/XEWhhdH/k9C/C', 'student', '', 1, '', 'Amit Yadav', '', '', '', '', '', '', '', 0),
(70, 'neerajmishra', '$2a$08$qDwu17uUTcEiHyJkLTkDFuUgkJCJFZd9tJ7TSjP/XEWhhdH/k9C/C', 'student', '', 1, '', 'Neeraj Mishra', '', '', '', '', '', '', '', 0),
(71, 'kirtidhamija', '$2a$08$qDwu17uUTcEiHyJkLTkDFuUgkJCJFZd9tJ7TSjP/XEWhhdH/k9C/C', 'student', '', 1, '', 'Kirti Dhamija', '', '', '', '', '', '', '', 0),
(72, 'mohitnagar', '$2a$08$qDwu17uUTcEiHyJkLTkDFuUgkJCJFZd9tJ7TSjP/XEWhhdH/k9C/C', 'student', '', 1, '', 'Mohit Nagar', '', '', '', '', '', '', '', 0),
(73, 'shrutiawasthi', '$2a$08$qDwu17uUTcEiHyJkLTkDFuUgkJCJFZd9tJ7TSjP/XEWhhdH/k9C/C', 'student', '', 1, '', 'Shruti Awasthi', '', '', '', '', '', '', '', 0),
(74, 'pulkitchhabra', '$2a$08$qDwu17uUTcEiHyJkLTkDFuUgkJCJFZd9tJ7TSjP/XEWhhdH/k9C/C', 'student', '', 1, '', 'Pulkit Chhabra', '', '', '', '', '', '', '', 0),
(75, 'rishichaudhary', '$2a$08$qDwu17uUTcEiHyJkLTkDFuUgkJCJFZd9tJ7TSjP/XEWhhdH/k9C/C', 'student', '', 1, '', 'Rishi Chaudhary', '', '', '', '', '', '', '', 0),
(76, 'shivamrawat', '$2a$08$qDwu17uUTcEiHyJkLTkDFuUgkJCJFZd9tJ7TSjP/XEWhhdH/k9C/C', 'student', '', 1, '', 'Shivam Rawat', '', '', '', '', '', '', '', 0),
(77, 'mrinaljain', '$2a$08$qDwu17uUTcEiHyJkLTkDFuUgkJCJFZd9tJ7TSjP/XEWhhdH/k9C/C', 'student', '', 1, '', 'Mrinal Jain', '', '', '', '', '', '', '', 0),
(78, 'jyotikaushik', '$2a$08$qDwu17uUTcEiHyJkLTkDFuUgkJCJFZd9tJ7TSjP/XEWhhdH/k9C/C', 'student', '', 1, '', 'Jyoti Kaushik', '', '', '', '', '', '', '', 0),
(79, 'kapilkumar', '$2a$08$qDwu17uUTcEiHyJkLTkDFuUgkJCJFZd9tJ7TSjP/XEWhhdH/k9C/C', 'student', '', 1, '', 'Kapil Kumar', '', '', '', '', '', '', '', 0),
(80, 'ashwanigupta', '$2a$08$qDwu17uUTcEiHyJkLTkDFuUgkJCJFZd9tJ7TSjP/XEWhhdH/k9C/C', 'student', '', 1, '', 'Ashwani Gupta', '', '', '', '', '', '', '', 0),
(81, 'vibhushukla', '$2a$08$qDwu17uUTcEiHyJkLTkDFuUgkJCJFZd9tJ7TSjP/XEWhhdH/k9C/C', 'student', '', 1, '', 'Vibhu Shukla', '', '', '', '', '', '', '', 0),
(82, 'vikrantrana', '$2a$08$qDwu17uUTcEiHyJkLTkDFuUgkJCJFZd9tJ7TSjP/XEWhhdH/k9C/C', 'student', '', 1, '', 'Vikrant Rana', '', '', '', '', '', '', '', 0),
(83, 'vipulgautam', '$2a$08$qDwu17uUTcEiHyJkLTkDFuUgkJCJFZd9tJ7TSjP/XEWhhdH/k9C/C', 'student', '', 1, '', 'Vipul Gautam', '', '', '', '', '', '', '', 0),
(84, 'varundixit', '$2a$08$qDwu17uUTcEiHyJkLTkDFuUgkJCJFZd9tJ7TSjP/XEWhhdH/k9C/C', 'student', '', 1, '', 'Varun Dixit', '', '', '', '', '', '', '', 0),
(85, 'dineshkumar', '$2a$08$qDwu17uUTcEiHyJkLTkDFuUgkJCJFZd9tJ7TSjP/XEWhhdH/k9C/C', 'student', '', 1, '', 'Dinesh Kumar', '', '', '', '', '', '', '', 0),
(86, 'prashantsharma', '$2a$08$qDwu17uUTcEiHyJkLTkDFuUgkJCJFZd9tJ7TSjP/XEWhhdH/k9C/C', 'student', '', 1, '', 'Prashant Sharma', '', '', '', '', '', '', '', 0),
(87, 'shishirpratapsingh', '$2a$08$qDwu17uUTcEiHyJkLTkDFuUgkJCJFZd9tJ7TSjP/XEWhhdH/k9C/C', 'student', '', 1, '', 'Shishir Pratap Singh', '', '', '', '', '', '', '', 0),
(88, 'renurana', '$2a$08$qDwu17uUTcEiHyJkLTkDFuUgkJCJFZd9tJ7TSjP/XEWhhdH/k9C/C', 'student', '', 1, '', 'Renu Rana', '', '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `work_details`
--

CREATE TABLE IF NOT EXISTS `work_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `start_year` varchar(100) NOT NULL,
  `end_year` text NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `work_details`
--

INSERT INTO `work_details` (`id`, `user_id`, `start_year`, `end_year`, `company_name`, `location`, `designation`) VALUES
(6, 49, '', '', 'Coal India', '', 'Senior Officer -Materials Management'),
(7, 50, '', '', 'ONGC', '', 'Executive -HR'),
(8, 51, '', '', 'Honda Cars India Ltd.', '', 'Senior Executive HR'),
(9, 52, '', '', 'policybazar.com', '', 'Product Manager'),
(10, 53, '', '', 'Yamha Motors', '', 'HR Manager'),
(11, 54, '', '', 'Metlife', '', 'Asst Manager, Global Sourcing'),
(12, 55, '', '', 'HCL', '', 'Process Consultant'),
(13, 56, '', '', 'HCL', '', 'Deputy Manager'),
(14, 57, '', '', 'HCL', '', 'Asst Manager'),
(15, 58, '', '', 'Power finance corporation', '', 'Manager'),
(16, 59, '', '', 'Paytm', '', 'Management Trainee'),
(17, 60, '', '', 'American Express', '', 'Marketing Executive'),
(18, 61, '', '', 'H&H Pharma', '', 'Marketing Executive'),
(19, 62, '', '', 'R system', '', 'GET'),
(20, 63, '', '', 'Fractal Analytics', '', 'Data Scientist'),
(21, 64, '', '', 'SMR automotive', '', 'HR Manager'),
(22, 65, '', '', 'CBS energy', '', 'GET'),
(23, 66, '', '', 'Sketchers Engineering Pvt. Ltd', '', 'Director'),
(24, 67, '', '', 'NDC Technologies', '', 'Sales Manager'),
(25, 68, '', '', 'Volga Transmissions Pvt Ltd', '', 'General Manager-Marketing'),
(26, 69, '', '', 'Agriculture Insurance Company of India limited', '', 'Administrative Officer'),
(27, 70, '', '', 'KartRocket', '', 'Channel Development Manager'),
(28, 71, '', '', 'iEnergizer', '', 'Assistant Manager - Human Resources'),
(29, 72, '', '', 'The Coca-Cola Company', '', 'Team Leader HR & IR'),
(30, 73, '', '', 'HCL', '', 'Executive -HR'),
(31, 74, '', '', 'Tech Mahindra', '', 'Inside Sales Leader'),
(32, 75, '', '', 'Infosys BPO', '', 'Supervisor'),
(33, 76, '', '', 'GENPACT', '', 'Assistant Manager'),
(34, 77, '', '', 'Bank of India', '', 'General Banking Officer'),
(35, 78, '', '', ' Teamlease', '', 'Associate Consultant'),
(36, 79, '', '', 'Nuclear Power Corpoartion of India', '', 'Deputy Manager'),
(37, 80, '', '', 'Yes Bank', '', 'Sr. Branch Service Partner'),
(38, 81, '', '', 'JPSI', '', 'Marketing Executive'),
(39, 82, '', '', 'Watchoid Security & Facility Services Pvt Ltd', '', 'Business Development Manager'),
(40, 83, '', '', 'Encyclopaedia Britannica India', '', 'Analyst'),
(41, 84, '', '', 'The SearchManager''s', '', 'Assistant Manager'),
(42, 85, '', '', 'Ernst & Young', '', 'Sr. Consultant'),
(43, 86, '', '', 'Jaipuria Institute of Management', '', 'Asst. Professor'),
(44, 87, '', '', 'Minda Corporation', '', 'GET'),
(45, 88, '', '', 'INGVysa Bank', '', 'Asst Manager');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

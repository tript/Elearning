-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 04, 2016 at 08:25 AM
-- Server version: 5.6.28-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `elearning`
--
CREATE DATABASE IF NOT EXISTS `elearning` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `elearning`;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
CREATE TABLE IF NOT EXISTS `classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `name`) VALUES
(18, 'CĐ-ĐH'),
(6, 'Lớp 1'),
(15, 'Lớp 10'),
(16, 'Lớp 11'),
(17, 'Lớp 12'),
(7, 'Lớp 2'),
(8, 'Lớp 3'),
(3, 'Lớp 3 tuổi'),
(9, 'Lớp 4'),
(4, 'Lớp 4 tuổi'),
(10, 'Lớp 5'),
(5, 'Lớp 5 tuổi'),
(11, 'Lớp 6'),
(12, 'Lớp 7'),
(13, 'Lớp 8'),
(14, 'Lớp 9');

-- --------------------------------------------------------

--
-- Table structure for table `class_has_subjects`
--

DROP TABLE IF EXISTS `class_has_subjects`;
CREATE TABLE IF NOT EXISTS `class_has_subjects` (
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  PRIMARY KEY (`class_id`,`subject_id`),
  KEY `fk_classes_has_subjects_subjects1_idx` (`subject_id`),
  KEY `fk_classes_has_subjects_classes1_idx` (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `class_has_subjects`
--

INSERT INTO `class_has_subjects` (`class_id`, `subject_id`) VALUES
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(6, 4),
(6, 5),
(7, 5),
(9, 5),
(10, 5),
(6, 6),
(7, 6),
(8, 6),
(9, 6),
(10, 6),
(11, 6),
(12, 6),
(13, 6),
(14, 6),
(6, 7),
(7, 7),
(8, 7),
(9, 7),
(10, 7),
(6, 8),
(7, 8),
(8, 8),
(6, 9),
(7, 9),
(8, 9),
(6, 10),
(7, 10),
(8, 10),
(9, 10),
(10, 10),
(6, 11),
(7, 11),
(8, 11),
(9, 11),
(10, 11),
(11, 11),
(12, 11),
(13, 11),
(14, 11),
(15, 11),
(16, 11),
(17, 11),
(6, 12),
(7, 12),
(8, 12),
(7, 13),
(8, 13),
(9, 13),
(10, 13),
(7, 14),
(8, 14),
(9, 14),
(10, 14),
(8, 19),
(9, 19),
(10, 19),
(11, 19),
(12, 19),
(13, 19),
(14, 19),
(15, 19),
(16, 19),
(17, 19),
(9, 20),
(10, 20),
(9, 21),
(10, 21),
(15, 21),
(16, 21),
(17, 21),
(9, 22),
(10, 22),
(9, 23),
(10, 23),
(11, 23),
(12, 23),
(13, 23),
(14, 23),
(15, 23),
(16, 23),
(17, 23),
(9, 24),
(10, 24),
(11, 24),
(12, 24),
(13, 24),
(14, 24),
(15, 24),
(16, 24),
(17, 24),
(11, 33),
(12, 33),
(13, 33),
(14, 33),
(15, 33),
(16, 33),
(17, 33),
(11, 34),
(12, 34),
(13, 34),
(14, 34),
(15, 34),
(16, 34),
(17, 34),
(13, 35),
(14, 35),
(15, 35),
(16, 35),
(17, 35),
(11, 36),
(12, 36),
(13, 36),
(14, 36),
(15, 36),
(16, 36),
(17, 36),
(10, 37),
(11, 37),
(12, 37),
(13, 37),
(14, 37),
(15, 37),
(16, 37),
(11, 38),
(12, 38),
(13, 38),
(14, 38),
(15, 38),
(16, 38),
(17, 38),
(11, 42),
(11, 43),
(12, 43),
(13, 43),
(14, 43),
(15, 43),
(16, 43),
(17, 43),
(12, 44),
(13, 44),
(14, 44),
(15, 44),
(16, 45),
(17, 46),
(15, 47),
(16, 47),
(17, 47);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`user_id`,`lesson_id`),
  KEY `fk_comments_users1_idx` (`user_id`),
  KEY `fk_comments_lessons1_idx` (`lesson_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content`, `created_at`, `user_id`, `lesson_id`) VALUES
(1, 'fds', '2016-03-10 13:23:33', 1, 25),
(2, 'bình thường', '2016-03-10 13:23:46', 1, 25),
(3, '', '2016-03-10 15:56:40', 1, 23);

-- --------------------------------------------------------

--
-- Table structure for table `commontator_comments`
--

DROP TABLE IF EXISTS `commontator_comments`;
CREATE TABLE IF NOT EXISTS `commontator_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creator_type` varchar(255) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `editor_type` varchar(255) DEFAULT NULL,
  `editor_id` int(11) DEFAULT NULL,
  `thread_id` int(11) NOT NULL,
  `body` text NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `cached_votes_up` int(11) DEFAULT '0',
  `cached_votes_down` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_commontator_comments_on_c_id_and_c_type_and_t_id` (`creator_id`,`creator_type`,`thread_id`),
  KEY `index_commontator_comments_on_thread_id_and_created_at` (`thread_id`,`created_at`),
  KEY `index_commontator_comments_on_cached_votes_up` (`cached_votes_up`),
  KEY `index_commontator_comments_on_cached_votes_down` (`cached_votes_down`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `commontator_comments`
--

INSERT INTO `commontator_comments` (`id`, `creator_type`, `creator_id`, `editor_type`, `editor_id`, `thread_id`, `body`, `deleted_at`, `cached_votes_up`, `cached_votes_down`, `created_at`, `updated_at`) VALUES
(1, 'User', 1, 'User', 1, 1, 'được', '2016-03-11 11:55:38', 0, 0, '2016-03-10 17:24:40', '2016-03-11 11:55:38'),
(2, 'User', 1, 'User', 1, 1, 'được', '2016-03-11 11:59:43', 0, 0, '2016-03-11 11:59:29', '2016-03-11 11:59:43'),
(3, 'User', 1, 'User', 1, 1, 'được đấy', '2016-03-11 13:47:54', 0, 0, '2016-03-11 11:59:51', '2016-03-11 13:47:54'),
(4, 'User', 1, 'User', 1, 1, 'được đấy được đấy được đấy được đấy được đấy được đấy được đấy được đấy được đấy được đấy được đấy được đấy được đấy được đấy được đấy được đấy được đấy được đấy được đấy được đấy được đấy được đấy đư', '2016-03-11 14:17:21', 0, 0, '2016-03-11 13:56:28', '2016-03-11 14:17:21'),
(5, 'User', 1, 'User', 1, 1, 'bình thường', NULL, 0, 0, '2016-03-11 14:17:28', '2016-03-11 14:17:53'),
(6, 'User', 2, NULL, NULL, 1, 'Phạm Trọng Tri giỏi quá', NULL, 0, 0, '2016-03-11 14:18:53', '2016-03-11 14:18:53'),
(7, 'User', 3, NULL, NULL, 1, 'Xin chào! Hello world', NULL, 0, 0, '2016-03-12 02:43:18', '2016-03-12 02:43:18'),
(8, 'User', 3, 'User', 3, 1, 'Tôi là ai?', '2016-03-12 05:37:05', 0, 0, '2016-03-12 05:27:38', '2016-03-12 05:37:05'),
(9, 'User', 3, 'User', 3, 1, 'được', NULL, 0, 0, '2016-03-12 05:37:18', '2016-03-12 05:37:25'),
(10, 'User', 1, 'User', 1, 12, 'dffs', NULL, 0, 0, '2016-04-01 02:44:10', '2016-04-01 02:56:22');

-- --------------------------------------------------------

--
-- Table structure for table `commontator_subscriptions`
--

DROP TABLE IF EXISTS `commontator_subscriptions`;
CREATE TABLE IF NOT EXISTS `commontator_subscriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subscriber_type` varchar(255) NOT NULL,
  `subscriber_id` int(11) NOT NULL,
  `thread_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_commontator_subscriptions_on_s_id_and_s_type_and_t_id` (`subscriber_id`,`subscriber_type`,`thread_id`),
  KEY `index_commontator_subscriptions_on_thread_id` (`thread_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `commontator_threads`
--

DROP TABLE IF EXISTS `commontator_threads`;
CREATE TABLE IF NOT EXISTS `commontator_threads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commontable_type` varchar(255) DEFAULT NULL,
  `commontable_id` int(11) DEFAULT NULL,
  `closed_at` datetime DEFAULT NULL,
  `closer_type` varchar(255) DEFAULT NULL,
  `closer_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_commontator_threads_on_c_id_and_c_type` (`commontable_id`,`commontable_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `commontator_threads`
--

INSERT INTO `commontator_threads` (`id`, `commontable_type`, `commontable_id`, `closed_at`, `closer_type`, `closer_id`, `created_at`, `updated_at`) VALUES
(1, 'Lesson', 24, NULL, NULL, NULL, '2016-03-10 12:57:50', '2016-03-10 12:57:50'),
(2, 'Lesson', 25, NULL, NULL, NULL, '2016-03-10 13:11:33', '2016-03-10 13:11:33'),
(3, 'Lesson', 14, NULL, NULL, NULL, '2016-03-10 13:37:11', '2016-03-10 13:37:11'),
(4, 'Lesson', 23, NULL, NULL, NULL, '2016-03-10 15:54:42', '2016-03-10 15:54:42'),
(5, 'Lesson', 22, NULL, NULL, NULL, '2016-03-10 17:22:26', '2016-03-10 17:22:26'),
(6, 'Lesson', 12, NULL, NULL, NULL, '2016-03-11 16:45:04', '2016-03-11 16:45:04'),
(7, 'Lesson', 8, NULL, NULL, NULL, '2016-03-12 02:46:53', '2016-03-12 02:46:53'),
(8, 'Lesson', 21, NULL, NULL, NULL, '2016-03-12 04:46:15', '2016-03-12 04:46:15'),
(9, 'Lesson', 4, NULL, NULL, NULL, '2016-03-12 05:22:47', '2016-03-12 05:22:47'),
(10, 'Lesson', 26, NULL, NULL, NULL, '2016-03-12 06:14:43', '2016-03-12 06:14:43'),
(11, 'Lesson', 16, NULL, NULL, NULL, '2016-03-12 14:47:40', '2016-03-12 14:47:40'),
(12, 'Lesson', 17, NULL, NULL, NULL, '2016-03-12 14:47:47', '2016-03-12 14:47:47'),
(13, 'Lesson', 3, NULL, NULL, NULL, '2016-03-15 14:24:49', '2016-03-15 14:24:49'),
(14, 'Lesson', 5, NULL, NULL, NULL, '2016-03-27 05:22:57', '2016-03-27 05:22:57'),
(15, 'Lesson', 11, NULL, NULL, NULL, '2016-04-01 03:07:03', '2016-04-01 03:07:03');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
CREATE TABLE IF NOT EXISTS `grades` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `name`) VALUES
(1, 'Mầm non'),
(2, 'Tiểu học'),
(3, 'Trung học cơ sở'),
(4, 'Trung học phổ thông'),
(5, 'Phòng GD-ĐT'),
(6, 'Khác');

-- --------------------------------------------------------

--
-- Table structure for table `impressions`
--

DROP TABLE IF EXISTS `impressions`;
CREATE TABLE IF NOT EXISTS `impressions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `impressionable_type` varchar(255) DEFAULT NULL,
  `impressionable_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `controller_name` varchar(255) DEFAULT NULL,
  `action_name` varchar(255) DEFAULT NULL,
  `view_name` varchar(255) DEFAULT NULL,
  `request_hash` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `session_hash` varchar(255) DEFAULT NULL,
  `message` text,
  `referrer` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `impressionable_type_message_index` (`impressionable_type`,`message`(255),`impressionable_id`),
  KEY `poly_request_index` (`impressionable_type`,`impressionable_id`,`request_hash`),
  KEY `poly_ip_index` (`impressionable_type`,`impressionable_id`,`ip_address`),
  KEY `poly_session_index` (`impressionable_type`,`impressionable_id`,`session_hash`),
  KEY `controlleraction_request_index` (`controller_name`,`action_name`,`request_hash`),
  KEY `controlleraction_ip_index` (`controller_name`,`action_name`,`ip_address`),
  KEY `controlleraction_session_index` (`controller_name`,`action_name`,`session_hash`),
  KEY `index_impressions_on_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=267 ;

--
-- Dumping data for table `impressions`
--

INSERT INTO `impressions` (`id`, `impressionable_type`, `impressionable_id`, `user_id`, `controller_name`, `action_name`, `view_name`, `request_hash`, `ip_address`, `session_hash`, `message`, `referrer`, `created_at`, `updated_at`) VALUES
(1, 'Lesson', 24, NULL, 'lessons', 'details', NULL, 'd6d563a8bd7a4aa4f36a8d89b4bf3908a77287d18e14f6263d4da75b0c6b7b6e', '127.0.0.1', '017fe0c98044b2637617c5f3de96c58d', NULL, NULL, '2016-03-08 15:39:27', '2016-03-08 15:39:27'),
(2, 'Lesson', 24, NULL, 'lessons', 'details', NULL, 'ea3ba371c96ab6b1a54740ceeee241a7be20484e831b009f7886b89820b968bd', '127.0.0.1', '017fe0c98044b2637617c5f3de96c58d', NULL, NULL, '2016-03-08 15:40:04', '2016-03-08 15:40:04'),
(3, 'Lesson', 24, NULL, 'lessons', 'details', NULL, '910b5b60c887d8a7a683c75c14a5d3be40585b5452ac98732315f7b459feeff1', '127.0.0.1', '017fe0c98044b2637617c5f3de96c58d', NULL, NULL, '2016-03-08 15:41:40', '2016-03-08 15:41:40'),
(4, 'Lesson', 24, NULL, 'lessons', 'details', NULL, 'ed90128582fe242026f0068993df22c07977fce89a57b96103547f787f815d1c', '127.0.0.1', '017fe0c98044b2637617c5f3de96c58d', NULL, NULL, '2016-03-08 15:41:55', '2016-03-08 15:41:55'),
(5, 'Lesson', 24, NULL, 'lessons', 'details', NULL, '47554cbca2f179182d4446734322a7fcc11528ffc620207021efd428e7799fdd', '127.0.0.1', '017fe0c98044b2637617c5f3de96c58d', NULL, NULL, '2016-03-08 15:42:15', '2016-03-08 15:42:15'),
(6, 'Lesson', 24, NULL, 'lessons', 'details', NULL, '1985c284a3e2ed69d7619539f341e12eedfe65abccb25cd31858a1b3bbf27794', '127.0.0.1', '017fe0c98044b2637617c5f3de96c58d', NULL, NULL, '2016-03-08 15:42:23', '2016-03-08 15:42:23'),
(7, 'Lesson', 24, NULL, 'lessons', 'details', NULL, '494cd266aa5bc36f6ed13a0d0a0a85b808f0e0f141ac141cb1d1759da97fae0f', '127.0.0.1', '017fe0c98044b2637617c5f3de96c58d', NULL, NULL, '2016-03-08 15:58:17', '2016-03-08 15:58:17'),
(8, 'Lesson', 24, NULL, 'lessons', 'details', NULL, '87dbbbf598e1eb77d683c54d7ad3fae05e77662ea0f726f2c67410f460c27514', '127.0.0.1', '017fe0c98044b2637617c5f3de96c58d', NULL, NULL, '2016-03-08 15:58:33', '2016-03-08 15:58:33'),
(9, 'Lesson', 24, NULL, 'lessons', 'details', NULL, '4060f740df1c05c412669683262706d2608b54f3d89a5a10b57b4dd08a18ba8a', '127.0.0.1', '017fe0c98044b2637617c5f3de96c58d', NULL, NULL, '2016-03-08 15:58:50', '2016-03-08 15:58:50'),
(10, 'Lesson', 24, NULL, 'lessons', 'show', NULL, 'd47b7ce9f142598d47bfbcda910436b48f20bca5b8d587c0e81a92b6cbe51ffb', '127.0.0.1', '017fe0c98044b2637617c5f3de96c58d', NULL, 'http://0.0.0.0:3000/details/24', '2016-03-08 15:59:09', '2016-03-08 15:59:09'),
(11, 'Lesson', 24, NULL, 'lessons', 'show', NULL, '2271381aacbf98013dc53c392218fdf6417f39878e06236f382f512202048cca', '127.0.0.1', '017fe0c98044b2637617c5f3de96c58d', NULL, 'http://0.0.0.0:3000/details/24', '2016-03-08 15:59:09', '2016-03-08 15:59:09'),
(12, 'Lesson', 11, NULL, 'lessons', 'show', NULL, '2ddea8f464c2984c60a07e3ef1734cdd9c9debdae28535d2a22bec57562334db', '127.0.0.1', '017fe0c98044b2637617c5f3de96c58d', NULL, 'http://0.0.0.0:3000/', '2016-03-08 15:59:16', '2016-03-08 15:59:16'),
(13, 'Lesson', 11, NULL, 'lessons', 'show', NULL, '3884b5198a066b2bb32e66d62d5bc680663e4016461cdd7de1d2c4add1aebf0b', '127.0.0.1', '017fe0c98044b2637617c5f3de96c58d', NULL, 'http://0.0.0.0:3000/', '2016-03-08 15:59:16', '2016-03-08 15:59:16'),
(14, 'Lesson', 11, NULL, 'lessons', 'show', NULL, '3e0d49c84cca50d535eeccb168882f14113a2bea01e3c914a3437e701070253e', '127.0.0.1', '017fe0c98044b2637617c5f3de96c58d', NULL, 'http://0.0.0.0:3000/', '2016-03-08 15:59:22', '2016-03-08 15:59:22'),
(15, 'Lesson', 11, NULL, 'lessons', 'show', NULL, '4c79816ad6164b4b7220f82ceecafd0f93ea77ce0e4f65625bb970210f6b754c', '127.0.0.1', '017fe0c98044b2637617c5f3de96c58d', NULL, 'http://0.0.0.0:3000/', '2016-03-08 15:59:22', '2016-03-08 15:59:22'),
(16, 'Lesson', 23, NULL, 'lessons', 'details', NULL, 'c1cf7e5c3deda0ac1426ca0f915cfd9f6369d52c560f5fb1ba1d69c8f7e93b89', '127.0.0.1', '017fe0c98044b2637617c5f3de96c58d', NULL, 'http://0.0.0.0:3000/', '2016-03-08 16:00:23', '2016-03-08 16:00:23'),
(17, 'Lesson', 23, NULL, 'lessons', 'show', NULL, '3554f523219d340dedbfa1e77972021f0c06b58f3fb36d7b55cdb6a82a95af5f', '127.0.0.1', '017fe0c98044b2637617c5f3de96c58d', NULL, 'http://0.0.0.0:3000/details/23', '2016-03-08 16:00:26', '2016-03-08 16:00:26'),
(18, 'Lesson', 23, NULL, 'lessons', 'show', NULL, '0f540203261d70ca59da65d455ffe90bab1cf576a8d847c6fb1731f6c4498686', '127.0.0.1', '017fe0c98044b2637617c5f3de96c58d', NULL, 'http://0.0.0.0:3000/details/23', '2016-03-08 16:00:26', '2016-03-08 16:00:26'),
(19, 'Lesson', 23, NULL, 'lessons', 'details', NULL, '0d93388c9d0669bfcbc495d4a5f79ecbadc9e253afa1aac9c19bdc15e7cf1c00', '127.0.0.1', '017fe0c98044b2637617c5f3de96c58d', NULL, NULL, '2016-03-08 16:00:27', '2016-03-08 16:00:27'),
(20, 'Lesson', 12, NULL, 'lessons', 'details', NULL, 'faf25fc6ec3887242418ac465039a7d73b9bad047213cb0e698d816f16135571', '127.0.0.1', '017fe0c98044b2637617c5f3de96c58d', NULL, 'http://0.0.0.0:3000/', '2016-03-08 16:00:34', '2016-03-08 16:00:34'),
(21, 'Lesson', 12, NULL, 'lessons', 'details', NULL, 'c0061bcdf2e91a1a242e867925c0fc578e92f94a05ed1b49f0bdc7cc6e2fb9cc', '127.0.0.1', '017fe0c98044b2637617c5f3de96c58d', NULL, 'http://0.0.0.0:3000/', '2016-03-08 16:00:41', '2016-03-08 16:00:41'),
(22, 'Lesson', 11, NULL, 'lessons', 'details', NULL, 'a0b2aed02e3b00147ebd8f97f5b5b6456704d18464c8c20ff32dd835bf5ce1e6', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, 'http://0.0.0.0:3000/', '2016-03-10 12:34:06', '2016-03-10 12:34:06'),
(23, 'Lesson', 24, NULL, 'lessons', 'details', NULL, 'c24f861bddaa28f1f2e4cdf4d04e731d1f9a27ba9937f19482991f343eaa9f20', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, 'http://0.0.0.0:3000/', '2016-03-10 12:35:31', '2016-03-10 12:35:31'),
(24, 'Lesson', 24, NULL, 'lessons', 'details', NULL, 'e7fb64e9f74366680ecd8dedd81be5ed98810286e5795ccdfa8a54b2e6852f10', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 12:47:16', '2016-03-10 12:47:16'),
(25, 'Lesson', 24, NULL, 'lessons', 'details', NULL, '78e5f4d9b82a49f9be312e352592eb37e007c0296de5488b496bc99b72885d6d', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 12:55:21', '2016-03-10 12:55:21'),
(26, 'Lesson', 24, NULL, 'lessons', 'details', NULL, '34bfc542474c15a5b28659bc7fa023b1324901032cbb0b115120df2a8380a847', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 12:56:43', '2016-03-10 12:56:43'),
(27, 'Lesson', 24, NULL, 'lessons', 'details', NULL, 'a6ff79c66665523f459cfa214f5d43c951b1aea03404f84e2d618a806268dc39', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 12:57:49', '2016-03-10 12:57:49'),
(28, 'Lesson', 24, NULL, 'lessons', 'details', NULL, 'c6bcbca725a5f08e6b1032b03f23c3875a45b3437eb0926434cfcbc7cb9726be', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 13:02:56', '2016-03-10 13:02:56'),
(29, 'Lesson', 24, NULL, 'lessons', 'details', NULL, '81d80aed0af07853131246f9b25635c40c3794cb5cc4f1ed0542e86ba0320e1c', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 13:07:18', '2016-03-10 13:07:18'),
(30, 'Lesson', 24, NULL, 'lessons', 'details', NULL, '791bcc4a8dd1fa6fd2c7423d7987f2c4cbf89b033d88d455e75db45837d41b5c', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 13:07:55', '2016-03-10 13:07:55'),
(31, 'Lesson', 24, NULL, 'lessons', 'details', NULL, '85f80042363dba2a70d0812712005756d9284ea4d8dc338435a9eb595de702fa', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 13:08:05', '2016-03-10 13:08:05'),
(32, 'Lesson', 24, NULL, 'lessons', 'details', NULL, '1a68f3c28086d9eab57327f68b7812c5963e84b0b2f24d2ff866624e3d19a4f3', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 13:08:47', '2016-03-10 13:08:47'),
(33, 'Lesson', 24, NULL, 'lessons', 'details', NULL, '5899531078d1c26059a87779b5d1b90a9f7aac36c66decb29246ef3b9297277a', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 13:09:08', '2016-03-10 13:09:08'),
(34, 'Lesson', 24, NULL, 'lessons', 'details', NULL, '164c6dd1715e448704f853103157f13964ae41a5e2fd2087d1783ec190170d2e', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 13:09:39', '2016-03-10 13:09:39'),
(35, 'Lesson', 24, NULL, 'lessons', 'details', NULL, '4bcfd70eea498265e44053990fea987222637d9beb510f70885f43387a94be01', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 13:10:03', '2016-03-10 13:10:03'),
(36, 'Lesson', 24, NULL, 'lessons', 'details', NULL, '97fafa379adca76e631ae06cbf95889b8d0dbe322bcfc21af1b0de4cf7f8c741', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 13:10:16', '2016-03-10 13:10:16'),
(37, 'Lesson', 25, 1, 'lessons', 'show', NULL, '7a65a248412088cbcf68bb8cf2bad4caac1ac5808697f5f4dd6257f1c3d9f217', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, 'http://0.0.0.0:3000/users/1', '2016-03-10 13:11:25', '2016-03-10 13:11:25'),
(38, 'Lesson', 25, 1, 'lessons', 'show', NULL, '5858507e346dfd7d139a1ae9efcc3f458e0ce4db8dc80d366e8c781b422bc6b2', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, 'http://0.0.0.0:3000/users/1', '2016-03-10 13:11:25', '2016-03-10 13:11:25'),
(39, 'Lesson', 25, 1, 'lessons', 'details', NULL, '7af39a2b5f50cf95add2ba6c4ed951fb55215f3d26c92560ee63064147d637c2', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, 'http://0.0.0.0:3000/', '2016-03-10 13:11:33', '2016-03-10 13:11:33'),
(40, 'Lesson', 25, 1, 'lessons', 'details', NULL, '807e43cf14dafa9565b00bf27d23b56ba42313854ce4663178b72b7bbed03759', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 13:15:25', '2016-03-10 13:15:25'),
(41, 'Lesson', 25, 1, 'lessons', 'details', NULL, '3e01e79f6b16a6d9180a025becb06704e8dc421c48315f1be65844fbbc4278cb', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 13:19:45', '2016-03-10 13:19:45'),
(42, 'Lesson', 25, 1, 'lessons', 'details', NULL, '5ff329e6d9080cff883b0680a81a1740d0450ca1d256db65b14402f5d036b02f', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 13:19:48', '2016-03-10 13:19:48'),
(43, 'Lesson', 25, 1, 'lessons', 'details', NULL, '4b7c0b9552ea19cca669a32875b3681f6945c1115cb1d65162f7abaa9791c89a', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 13:23:13', '2016-03-10 13:23:13'),
(44, 'Lesson', 25, 1, 'lessons', 'details', NULL, '74a604072ad8dac52a7a9bfae80b6a34f5b525295465b72b343be1f0137165dd', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 13:23:26', '2016-03-10 13:23:26'),
(45, 'Lesson', 25, 1, 'lessons', 'details', NULL, 'a6b024233c214aede4543960f1b46d90770775d0282cc2b1d0a6dbcdb4ebf702', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 13:23:35', '2016-03-10 13:23:35'),
(46, 'Lesson', 25, 1, 'lessons', 'details', NULL, '9ec1e3ce579a087b017ef841d7c62f3f112c994ce5265c7340cb730e93137914', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 13:23:37', '2016-03-10 13:23:37'),
(47, 'Lesson', 25, 1, 'lessons', 'details', NULL, 'b953c6e8b99a157f789203a4d0c37af6efd242e81080c64073e029902a27c9db', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 13:23:38', '2016-03-10 13:23:38'),
(48, 'Lesson', 25, 1, 'lessons', 'details', NULL, '8489bd65fa19e808511a545753f48f8d77f66fcdaf123cf44935e4ec40ac7c05', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 13:23:39', '2016-03-10 13:23:39'),
(49, 'Lesson', 25, 1, 'lessons', 'details', NULL, '3bed4642c334da5017f92e3b0b383ee2867c1bbecb549d8eb69b8946ac24a5cf', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 13:23:40', '2016-03-10 13:23:40'),
(50, 'Lesson', 25, 1, 'lessons', 'details', NULL, '5a5945891c8cf60cdb512e165b808fdfafc65489a4e4711656360bf100d14ba7', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 13:23:59', '2016-03-10 13:23:59'),
(51, 'Lesson', 25, 1, 'lessons', 'details', NULL, 'e81d68a42d89e0efd3b561b98c68bf4411b4c5da1e6926683e0c23938d972838', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 13:25:27', '2016-03-10 13:25:27'),
(52, 'Lesson', 25, 1, 'lessons', 'details', NULL, '554c0e0b9d7b9f7115d5b936a45e4604a7363abea3fad4287750311af2cfc0bd', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 13:28:18', '2016-03-10 13:28:18'),
(53, 'Lesson', 25, 1, 'lessons', 'details', NULL, '9006653abf4d8075c7b6ff539d31e6b83b04872cac9e8496757175fa8a5fcc7e', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 13:35:11', '2016-03-10 13:35:11'),
(54, 'Lesson', 14, NULL, 'lessons', 'details', NULL, '136a380f6565e11e4f922f17fc378b56bf630c97cfac012aac359ab633f3aac8', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, 'http://0.0.0.0:3000/', '2016-03-10 13:37:11', '2016-03-10 13:37:11'),
(55, 'Lesson', 24, 1, 'lessons', 'details', NULL, 'a369b6e2c52871043b17cee325f81fc520775be73130e76d7f4018a5fdae4842', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, 'http://0.0.0.0:3000/', '2016-03-10 13:37:57', '2016-03-10 13:37:57'),
(56, 'Lesson', 24, 1, 'lessons', 'details', NULL, '8f1bdfbbe0b7001ea22d146e3f587571d9433c3898ad37920044dfff38b15b33', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 15:54:12', '2016-03-10 15:54:12'),
(57, 'Lesson', 24, 1, 'lessons', 'details', NULL, '24d1c60d77c4543e6800574903c88f0b95f69f9dea49b85db9de80ffa7a8f6d4', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 15:54:25', '2016-03-10 15:54:25'),
(58, 'Lesson', 23, 1, 'lessons', 'details', NULL, '733c97a9b93f8b78a51c54a89e0d70a6b3c1517af2c5e15804641b76b670f6f5', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, 'http://0.0.0.0:3000/', '2016-03-10 15:54:42', '2016-03-10 15:54:42'),
(59, 'Lesson', 23, 1, 'lessons', 'details', NULL, 'c3d306094d09fbf5f377806be254ef27add327fea8b2041116fc9058cdcbf013', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, 'http://0.0.0.0:3000/details/23', '2016-03-10 16:01:16', '2016-03-10 16:01:16'),
(60, 'Lesson', 23, 1, 'lessons', 'details', NULL, '4ed0f14d575b6ba90d6e7bca9ee71ac0743f01e17bc723343d9e5cd468e4c702', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 16:01:19', '2016-03-10 16:01:19'),
(61, 'Lesson', 23, 1, 'lessons', 'show', NULL, '60feba1c5f61b69cd4c46667847c9152cfaaa393aa44a2ff4d8fd9eee53fa746', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, 'http://0.0.0.0:3000/details/23', '2016-03-10 16:01:21', '2016-03-10 16:01:21'),
(62, 'Lesson', 23, 1, 'lessons', 'show', NULL, '426cd878d78ef52896fb78b8f113760e5136a3da247ca5c6eaae6fe7f01fee7d', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, 'http://0.0.0.0:3000/details/23', '2016-03-10 16:01:21', '2016-03-10 16:01:21'),
(63, 'Lesson', 23, 1, 'lessons', 'details', NULL, '8c7a3d0278b882dd06618ede0fc50b7bec835d8d3b6900f9c45fb37d55125d40', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 16:01:43', '2016-03-10 16:01:43'),
(64, 'Lesson', 23, 1, 'lessons', 'details', NULL, '6614cc2a5480ec5db2eab45f04ebf04277ee2d1a5e0d73f1c619c63e386a20a4', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 16:01:54', '2016-03-10 16:01:54'),
(65, 'Lesson', 23, 1, 'lessons', 'details', NULL, '699102fa7d081eddbedb323ea250496a298df1a151cf2a1ea4379664b325dbf2', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 16:03:27', '2016-03-10 16:03:27'),
(66, 'Lesson', 23, 1, 'lessons', 'details', NULL, '8cd614ceda4c32db4f24d573b6931ce48a63799d5a829ef0f21ab015abf14d4d', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 16:03:34', '2016-03-10 16:03:34'),
(67, 'Lesson', 23, 1, 'lessons', 'details', NULL, '932a6fe6b70d3c3b52f6bc2820ffb60cebc2a92a3a40663b3216764c1eb6b2e6', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 16:18:53', '2016-03-10 16:18:53'),
(68, 'Lesson', 23, 1, 'lessons', 'details', NULL, 'cb031595b4b5eb9c650fddf706ed3ac4b8216a9fd13de35a0687447529829a67', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 16:18:54', '2016-03-10 16:18:54'),
(69, 'Lesson', 23, 1, 'lessons', 'details', NULL, 'd8502864f63f7ca94cbee8a358e351019b25b620ce2be2406a670fb0b8b80746', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 16:18:55', '2016-03-10 16:18:55'),
(70, 'Lesson', 23, 1, 'lessons', 'details', NULL, '8ea005d7c3aa29f9df53f85c04fff77e3253cd397e8515bf746556129cee0fe3', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 16:19:02', '2016-03-10 16:19:02'),
(71, 'Lesson', 23, 1, 'lessons', 'details', NULL, 'e8e22f89242b6169e93d6159f193542778f224c9da657071317b9399f5434170', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 16:19:09', '2016-03-10 16:19:09'),
(72, 'Lesson', 23, 1, 'lessons', 'details', NULL, '2b60f004202a1e3dd17be82e3b972f9f69e3ae0b4816a936bb610bc0da783e2c', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 16:23:15', '2016-03-10 16:23:15'),
(73, 'Lesson', 23, NULL, 'lessons', 'details', NULL, '4ebacb416f039208e06d6cfc707a0d0bdb29435d4a6aca06824a14818f836713', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 16:23:34', '2016-03-10 16:23:34'),
(74, 'Lesson', 23, NULL, 'lessons', 'details', NULL, '74e6d899eabdb731cb309dca1b5292edee50eb169bbecc2a6b233a19c21d01a4', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 16:23:35', '2016-03-10 16:23:35'),
(75, 'Lesson', 23, NULL, 'lessons', 'details', NULL, '4f105673a58e38655acdbce4ee2df2d020ca02491ae6b688defac360d55c9b2d', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 16:23:37', '2016-03-10 16:23:37'),
(76, 'Lesson', 23, NULL, 'lessons', 'details', NULL, '58025b766c0aa349ac50733c43b68a702d31d1a633b1e36470d34129b059d8d6', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 16:23:44', '2016-03-10 16:23:44'),
(77, 'Lesson', 23, NULL, 'lessons', 'details', NULL, 'fe9ceb872d6dcdff2604081913b5126e23a7e2589152c202ef4143cabe981349', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 16:23:45', '2016-03-10 16:23:45'),
(78, 'Lesson', 23, NULL, 'lessons', 'details', NULL, 'd68e15603edb4258344d12ad6f063ed29d7d7eb614e849b3cb49a7547aeccf9f', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 16:23:48', '2016-03-10 16:23:48'),
(79, 'Lesson', 23, 1, 'lessons', 'details', NULL, '6b036e6490464d6c53ef16dab1cf595cfede0b909a89a3b89297dc04972bc409', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 16:24:51', '2016-03-10 16:24:51'),
(80, 'Lesson', 23, 1, 'lessons', 'details', NULL, '4ef4be75e3d230e31a7f01691f1c3b07bd20c73218a2010b99859a13c9b03d53', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 16:27:14', '2016-03-10 16:27:14'),
(81, 'Lesson', 23, 1, 'lessons', 'details', NULL, 'fef4277565f1a5686739617b982511bd87cdfe74232ef0d315dac36d6aed4b75', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 16:30:09', '2016-03-10 16:30:09'),
(82, 'Lesson', 23, 1, 'lessons', 'details', NULL, 'cec7823ff967cdc7e40052ddb5aee2803225ce53ef17e6e3c509a7251a8e46fe', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 16:30:21', '2016-03-10 16:30:21'),
(83, 'Lesson', 23, 1, 'lessons', 'details', NULL, 'bf553b4353d65f51c7ebf2b18983c981d3034fd2e119c5ac19c24a529d2fa573', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 16:35:24', '2016-03-10 16:35:24'),
(84, 'Lesson', 23, 1, 'lessons', 'details', NULL, 'f9667acc1dc6b93f4e4735a65356ad0af531bec0e756facf1166e6fa5a0c81b0', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 16:35:39', '2016-03-10 16:35:39'),
(85, 'Lesson', 23, 1, 'lessons', 'details', NULL, '1bedeb95ffbcae5a71a65d8f81cbda8f7264b6589c919f10dba05920d743b03d', '127.0.0.1', 'a1fdfd3096fc77a5edbd2a802a077fcf', NULL, NULL, '2016-03-10 16:38:19', '2016-03-10 16:38:19'),
(86, 'Lesson', 22, NULL, 'lessons', 'details', NULL, '196239b2cb8fa3a6dd5cc32e7764ba9b824c75a94b519697ee0287a752dbc241', '127.0.0.1', '33f5ce7763256e8cd5c92efd272a7bb0', NULL, 'http://127.0.0.1:3000/', '2016-03-10 17:22:26', '2016-03-10 17:22:26'),
(87, 'Lesson', 25, 1, 'lessons', 'show', NULL, 'c8c52a441e4e909b475b7ec8cb65e6d3c289e96602656a42a77efe514d1634b8', '127.0.0.1', '33f5ce7763256e8cd5c92efd272a7bb0', NULL, 'http://127.0.0.1:3000/users/1', '2016-03-10 17:22:34', '2016-03-10 17:22:34'),
(88, 'Lesson', 25, 1, 'lessons', 'show', NULL, '039ba10d366d781ea3c08b68f50e92135c518d4fc0fce2ce214f41853e272cfa', '127.0.0.1', '33f5ce7763256e8cd5c92efd272a7bb0', NULL, 'http://127.0.0.1:3000/users/1', '2016-03-10 17:22:34', '2016-03-10 17:22:34'),
(89, 'Lesson', 24, 1, 'lessons', 'details', NULL, 'aa6e073a7118d0bb42e84422d591c2d95d7fe5b9bb0847f781983aec536159b7', '127.0.0.1', '33f5ce7763256e8cd5c92efd272a7bb0', NULL, 'http://127.0.0.1:3000/', '2016-03-10 17:22:40', '2016-03-10 17:22:40'),
(90, 'Lesson', 24, 1, 'lessons', 'details', NULL, '37555102919d96f4cf814c0bf178cb22460559472bb3d46e8b1cf073c50d1d8a', '127.0.0.1', '33f5ce7763256e8cd5c92efd272a7bb0', NULL, NULL, '2016-03-10 17:27:47', '2016-03-10 17:27:47'),
(91, 'Lesson', 22, 1, 'lessons', 'details', NULL, '5d24a551929fb259cee4c9d786c04a1b8bd210edb84ffd202363cf9a8e2ee04a', '127.0.0.1', '33f5ce7763256e8cd5c92efd272a7bb0', NULL, 'http://127.0.0.1:3000/', '2016-03-10 17:30:59', '2016-03-10 17:30:59'),
(92, 'Lesson', 24, 1, 'lessons', 'details', NULL, '03aba6e62783ba1dd82c2651e1da17480824511ec0a5287f36302a861a0e6f2f', '127.0.0.1', '33f5ce7763256e8cd5c92efd272a7bb0', NULL, 'http://127.0.0.1:3000/', '2016-03-10 17:31:04', '2016-03-10 17:31:04'),
(93, 'Lesson', 22, NULL, 'lessons', 'details', NULL, '7b959afbe6771fce47fb3874f0e452b09ac13abbbae101569062ff9a023e64fe', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, 'http://0.0.0.0:3000/', '2016-03-11 11:40:31', '2016-03-11 11:40:31'),
(94, 'Lesson', 24, 1, 'lessons', 'details', NULL, '48537f937f701aa32cf8e9fd5532315756fbfe8cadaf1c9daef386db1650c384', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, 'http://0.0.0.0:3000/', '2016-03-11 11:40:41', '2016-03-11 11:40:41'),
(95, 'Lesson', 24, 1, 'lessons', 'details', NULL, '8bbd73a00cb3061746afe466bebb09aa7085740c08ef9f68d454a9f44a252047', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 11:45:15', '2016-03-11 11:45:15'),
(96, 'Lesson', 24, 1, 'lessons', 'details', NULL, '79a4b5eb739f216809bb4f55d2a78d0fe5633dcfd25a68839f2a1b090fad886f', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 11:45:24', '2016-03-11 11:45:24'),
(97, 'Lesson', 24, 1, 'lessons', 'details', NULL, 'c478e54911984a2c70e402e6baa9664639eb49de2c7e2d549829a3bef8889714', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 11:45:29', '2016-03-11 11:45:29'),
(98, 'Lesson', 24, 1, 'lessons', 'details', NULL, '87e026e0e2f189c1816506eb7db05962705f5dedd133547d7e5e4dead92ac4c9', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 11:46:32', '2016-03-11 11:46:32'),
(99, 'Lesson', 24, 1, 'lessons', 'details', NULL, 'bfb60ef1984095b419ca13df7a133f41c06b902a583fe36320c7edbd7b42af5d', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 11:48:33', '2016-03-11 11:48:33'),
(100, 'Lesson', 24, 1, 'lessons', 'details', NULL, 'adcfefb1bd14ca22a4d165eb15a228811f50933902c86fe330ad26ee02dc25bd', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 11:49:27', '2016-03-11 11:49:27'),
(101, 'Lesson', 24, 1, 'lessons', 'details', NULL, '9fa6d942f84a22a43bdddd335737c847d7f26be4b38975d1e2c1fa6e0318276e', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 11:49:38', '2016-03-11 11:49:38'),
(102, 'Lesson', 24, 1, 'lessons', 'details', NULL, '8ee59651c4a2324da9385f5a1b0578af6038dda7ef3db5bfc6536eb31a007baf', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 11:50:25', '2016-03-11 11:50:25'),
(103, 'Lesson', 24, 1, 'lessons', 'details', NULL, 'be7713fc463104c9393f8feb488fc86f15ecb25adb1d8086a526fdd015c6b9af', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 11:52:42', '2016-03-11 11:52:42'),
(104, 'Lesson', 24, 1, 'lessons', 'details', NULL, '775ab3a3c8be7eefbbb03e5bad1787ebad181eff5e979a829c3ff89d729ec9e9', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 11:53:26', '2016-03-11 11:53:26'),
(105, 'Lesson', 24, 1, 'lessons', 'details', NULL, '7c6006d47559e90b1e1172d4ce03e7c208ab9de0653a5addc38d1eb1cc061e5f', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 11:55:26', '2016-03-11 11:55:26'),
(106, 'Lesson', 24, 1, 'lessons', 'details', NULL, 'd475c23d852b686de1cce51f9fd7cf1de1c751278605558367a5388e7ea25ce1', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 11:55:40', '2016-03-11 11:55:40'),
(107, 'Lesson', 24, NULL, 'lessons', 'details', NULL, 'd9e2e2430c570b3f365af28a64875b77c3f362ad92e3a88bcb17bfeb02b6fb48', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 11:55:53', '2016-03-11 11:55:53'),
(108, 'Lesson', 24, NULL, 'lessons', 'details', NULL, '70bd873f22578db98a81a9993b0c80a14862c9576222575f03699bb49a51e547', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 11:56:10', '2016-03-11 11:56:10'),
(109, 'Lesson', 24, NULL, 'lessons', 'details', NULL, '9aebce194ec1c689e071939d5831b588816d288398acb11e6d417688119f99a9', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 11:56:15', '2016-03-11 11:56:15'),
(110, 'Lesson', 24, NULL, 'lessons', 'details', NULL, '42a655614b9fc836c4ba1d61f5ff4d08eb79ba1b3c046f830b4cd7636b643d8b', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 11:58:42', '2016-03-11 11:58:42'),
(111, 'Lesson', 25, 1, 'lessons', 'show', NULL, '0cf67f4f3b75d9fb56812064144f73db5a34958e9baf5927fa704d859260df5f', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, 'http://0.0.0.0:3000/users/1', '2016-03-11 11:58:50', '2016-03-11 11:58:50'),
(112, 'Lesson', 25, 1, 'lessons', 'show', NULL, '170c0bbfd8a2837d28391e19b212c310166d969a08a6942cea89cf029fc8f7d3', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, 'http://0.0.0.0:3000/users/1', '2016-03-11 11:58:50', '2016-03-11 11:58:50'),
(113, 'Lesson', 24, 1, 'lessons', 'details', NULL, '4728766ae8bef6e6d81b76476406d51414de9e724983ed44a86bfadd27bcb471', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, 'http://0.0.0.0:3000/', '2016-03-11 11:59:02', '2016-03-11 11:59:02'),
(114, 'Lesson', 24, 1, 'lessons', 'details', NULL, 'b48978df7f6d905d27c17038a493521227b3ac9cbb974a93b22749a1f8beebac', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 11:59:45', '2016-03-11 11:59:45'),
(115, 'Lesson', 24, 1, 'lessons', 'details', NULL, '1370802040428235c70df536b668e4217e501b425cc37cf36a8b8043aa6125f9', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 12:02:34', '2016-03-11 12:02:34'),
(116, 'Lesson', 24, 1, 'lessons', 'details', NULL, 'd120591b90547ceb9410584fdf96486ab18511c4f9ea9b30ba3bfb2a2c27bbac', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 12:02:49', '2016-03-11 12:02:49'),
(117, 'Lesson', 24, 1, 'lessons', 'details', NULL, 'ac6505a5c4681ebbc3e4abc32d361797a07186ff65aed9ea6362436fbd817da8', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 12:06:08', '2016-03-11 12:06:08'),
(118, 'Lesson', 24, 1, 'lessons', 'details', NULL, '7c0f4d9ed4326e9d700728e5c550e1d51e205419cbc2475d97b6a8a8e6eb093d', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 12:06:55', '2016-03-11 12:06:55'),
(119, 'Lesson', 24, 1, 'lessons', 'details', NULL, '9ea3ca6e17f1cd17e8375cbdbc7ffd9c4ae15fd1631f20053a700675648e1d5a', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 12:08:46', '2016-03-11 12:08:46'),
(120, 'Lesson', 24, 1, 'lessons', 'details', NULL, 'ff0a7ee04df32e3b765d01d3ff845431b600bc2f371a8c822b23378b85ba635b', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 12:09:27', '2016-03-11 12:09:27'),
(121, 'Lesson', 24, 1, 'lessons', 'details', NULL, 'c764e5366e77c68a912b70143fb64112987ea1fcc7ca41f68c8be99ea036d2e5', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 13:23:42', '2016-03-11 13:23:42'),
(122, 'Lesson', 24, 1, 'lessons', 'details', NULL, 'dc7cb15da630911b497b7b55f674fe1f9907a9e1ff00396b8580f0e6c2931320', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 13:26:30', '2016-03-11 13:26:30'),
(123, 'Lesson', 24, 1, 'lessons', 'details', NULL, '48b47f7e6fb301d72de10fad5ee3711f17553307759a0246c3f40b2c45dd8d35', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 13:38:16', '2016-03-11 13:38:16'),
(124, 'Lesson', 24, 1, 'lessons', 'details', NULL, '087cdb52e4d30be8107b4555a0559518e674931033dc58e91ccbe9430669fdd1', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 13:41:18', '2016-03-11 13:41:18'),
(125, 'Lesson', 24, 1, 'lessons', 'details', NULL, 'dce2f196ab41f1854398f33385d4b7e1e8268e6ec9972203b6d7aebb48a594bf', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 13:45:13', '2016-03-11 13:45:13'),
(126, 'Lesson', 24, 1, 'lessons', 'details', NULL, '3a98765086114d6b491ff21326657cb55ec606b1b2b3c6754b2299a759ccc7b3', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 13:45:51', '2016-03-11 13:45:51'),
(127, 'Lesson', 24, 1, 'lessons', 'details', NULL, '96dc1019e49d78780324ea5e85214ebe4885e8156743a92787bfad87dd3f1caf', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 13:46:02', '2016-03-11 13:46:02'),
(128, 'Lesson', 24, 1, 'lessons', 'details', NULL, '33ce3a2fbf2f42d91b5217d2de9abc00fe8936571ecffc133132160a8f02bc16', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 13:46:52', '2016-03-11 13:46:52'),
(129, 'Lesson', 24, 1, 'lessons', 'details', NULL, 'c25c27854b89f7c772386395c49475c021f3e0ea27291060a4b789dccfd359f3', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 13:47:09', '2016-03-11 13:47:09'),
(130, 'Lesson', 24, 1, 'lessons', 'details', NULL, '59d9a780022228ef2a8154f4741025ca4e0e8d2985270669dc85ade1ad374f39', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 13:47:57', '2016-03-11 13:47:57'),
(131, 'Lesson', 24, 1, 'lessons', 'details', NULL, 'cebf747802fd148722a3c3bb8e3f12045b9186f1da58dfc75fb4362e7f5b2594', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 13:50:08', '2016-03-11 13:50:08'),
(132, 'Lesson', 24, 1, 'lessons', 'details', NULL, '2c38a77727ba10981c47568d3e6e75a594cb7c3fa7172a5fbcf332edf7943566', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 13:51:27', '2016-03-11 13:51:27'),
(133, 'Lesson', 24, 1, 'lessons', 'details', NULL, 'c34a4284c04aba04cbb156984eee54c15a61509364361525ab58a7204a742e73', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 13:51:52', '2016-03-11 13:51:52'),
(134, 'Lesson', 24, 1, 'lessons', 'details', NULL, '0a82a132c170837d20b72aafca19048aeb7b1e9f86a0ca25bdf90d4cba2a10a1', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 13:56:19', '2016-03-11 13:56:19'),
(135, 'Lesson', 24, 1, 'lessons', 'details', NULL, '56a33be4267378ad1472817852fb525f99c17d7419f9b59f88ad47058062d988', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 13:57:33', '2016-03-11 13:57:33'),
(136, 'Lesson', 24, 1, 'lessons', 'details', NULL, 'b7cb40f744e12280988bc03e8232655479527514d3b455dcb8bd63c7cefa652f', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 13:59:13', '2016-03-11 13:59:13'),
(137, 'Lesson', 24, 1, 'lessons', 'details', NULL, '223382052ade9ec497c64325fae2dcd8d8a7820b8a96bf73646194983747f34c', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 14:01:28', '2016-03-11 14:01:28'),
(138, 'Lesson', 24, 1, 'lessons', 'details', NULL, 'd49b933ad2814e4211fd4cff8e5e17c498827d83f61544f63867443f30a47542', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 14:02:35', '2016-03-11 14:02:35'),
(139, 'Lesson', 24, 1, 'lessons', 'details', NULL, '4c10008cb408b99465ba255bff7c35b47cab26dc60ee5aad72213f7c05b5a688', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 14:03:03', '2016-03-11 14:03:03'),
(140, 'Lesson', 24, 1, 'lessons', 'details', NULL, '8eeee08ed00b5ae8346e6acc595121f9c4e4a52d0748977cab32835c4f0198a6', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 14:03:15', '2016-03-11 14:03:15'),
(141, 'Lesson', 24, 1, 'lessons', 'details', NULL, '374e5f256d3c44c047736059462d32a446711aa9f2093ace8fc3819f97e8b5d2', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 14:04:36', '2016-03-11 14:04:36'),
(142, 'Lesson', 24, 1, 'lessons', 'details', NULL, 'd658b754a7d3210593a00772866cfaa1efa7ff6257f22a4a236d5a8491bd5b78', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 14:05:05', '2016-03-11 14:05:05'),
(143, 'Lesson', 24, 1, 'lessons', 'details', NULL, 'e5dc5d6ce97378ea715fc16b3c48e4ff2a177069ca897e6bd070585c7d485e82', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 14:06:11', '2016-03-11 14:06:11'),
(144, 'Lesson', 24, 1, 'lessons', 'details', NULL, '22ba8f3def98561d1379674f83e9093757750873399caf18409336acbd52dacf', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 14:10:52', '2016-03-11 14:10:52'),
(145, 'Lesson', 24, 1, 'lessons', 'details', NULL, '8203dbc4ff97679b4fa20e2af0d739571cba70d9941c1ffa99257030dcd082e5', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 14:12:35', '2016-03-11 14:12:35'),
(146, 'Lesson', 24, 1, 'lessons', 'details', NULL, 'e298653fdecb20e7b1266b024d5ea909afdd22b9288aba3fd2e08d37147c6918', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 14:12:46', '2016-03-11 14:12:46'),
(147, 'Lesson', 24, 1, 'lessons', 'details', NULL, 'be09260b42a107e82cc0804470985d40e315a5422344c84cfefa0649b0c00ceb', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 14:13:07', '2016-03-11 14:13:07'),
(148, 'Lesson', 24, 1, 'lessons', 'details', NULL, 'f14d2d0a5a5b2062fc37f1b02aad98ebea8ab431fc9500d1e5310762da0eef38', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 14:13:44', '2016-03-11 14:13:44'),
(149, 'Lesson', 24, 1, 'lessons', 'details', NULL, 'a3e7f2e245bde92b339ef499a5c266a5e3227558b597ba4f3377a0975e736d82', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 14:13:56', '2016-03-11 14:13:56'),
(150, 'Lesson', 24, 1, 'lessons', 'details', NULL, '941cb9e9f12c4d7a7e9d9fc6c3571f05242513bb8c18dec09e67fd9360d65475', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 14:14:04', '2016-03-11 14:14:04'),
(151, 'Lesson', 24, 1, 'lessons', 'details', NULL, '7c19f15e2b2ebbec79f063df1ac49db5de9473700ae4b944fb5890f5c8d8b6e0', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 14:14:19', '2016-03-11 14:14:19'),
(152, 'Lesson', 24, 1, 'lessons', 'details', NULL, 'edb60d259fa43d8db1d3b2dbd9fa5016542b6d77ea7712c90912f1010f82e152', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 14:14:47', '2016-03-11 14:14:47'),
(153, 'Lesson', 24, 1, 'lessons', 'details', NULL, 'fdc7d04dd4e484d3414450185e779d295d7260240e318ef8629e2290c454fed4', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 14:15:07', '2016-03-11 14:15:07'),
(154, 'Lesson', 24, 1, 'lessons', 'details', NULL, '51b21eb68ae6ddc196204d68fcc297ee9679da4a1560b0084095700061bbef9d', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 14:15:35', '2016-03-11 14:15:35'),
(155, 'Lesson', 24, 1, 'lessons', 'details', NULL, '4b0d1f2114ee8b893b98f68b1dd8d938082f9efef1082ab011b73443e6dab2e9', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 14:15:44', '2016-03-11 14:15:44'),
(156, 'Lesson', 24, 1, 'lessons', 'details', NULL, 'a15d5783c8713b6c08ecf5a1ab1665441cc2511dd15a51f07c7014b5a400bdee', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 14:16:12', '2016-03-11 14:16:12'),
(157, 'Lesson', 24, 1, 'lessons', 'details', NULL, '80debfdf43d4a128cb5dea49c46fd43e798f7381e1ac892effeb042573312760', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 14:16:20', '2016-03-11 14:16:20'),
(158, 'Lesson', 24, 1, 'lessons', 'details', NULL, '1d27c7316a7d81016095f634e03bdc601308dff5b1318cb5a6ecb3ef21ce2f31', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 14:16:29', '2016-03-11 14:16:29'),
(159, 'Lesson', 24, 1, 'lessons', 'details', NULL, '811a73630fe969131e96e072867aec391a7db4ecdc09a7e0177e6047279d3a54', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 14:16:35', '2016-03-11 14:16:35'),
(160, 'Lesson', 24, 1, 'lessons', 'details', NULL, 'd7f7020bea5d565151b9145cc2223c44a0bcda35dae099a9441fefc11de7c1b6', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 14:16:43', '2016-03-11 14:16:43'),
(161, 'Lesson', 24, 2, 'lessons', 'details', NULL, '66e01d1402ac6b2a02277aef0277ff217b3ec92bd0c57599730caf8345dd876c', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, 'http://0.0.0.0:3000/', '2016-03-11 14:18:39', '2016-03-11 14:18:39'),
(162, 'Lesson', 24, 2, 'lessons', 'details', NULL, 'fae90848cea45216e61ec7fcb163d18a100d9b413ef5a30dd21a37533c209548', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 16:44:21', '2016-03-11 16:44:21'),
(163, 'Lesson', 12, 2, 'lessons', 'details', NULL, 'd83175a67e41133b8fa8bd1821dbf1f11d0eb4057d2a1df3c0f7fefa2ac5362a', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, 'http://0.0.0.0:3000/', '2016-03-11 16:45:04', '2016-03-11 16:45:04'),
(164, 'Lesson', 12, 2, 'lessons', 'show', NULL, 'dce4d8be58cbbe1951ae769f90258ce5e8cc78991afa714f10a009c7c776485e', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, 'http://0.0.0.0:3000/details/12', '2016-03-11 16:45:53', '2016-03-11 16:45:53'),
(165, 'Lesson', 12, 2, 'lessons', 'show', NULL, '5ee493435fdf0d59177b3e0f1c20e22e8c505ba8a0cd3df7b2d8fa71bfeff511', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, 'http://0.0.0.0:3000/details/12', '2016-03-11 16:45:54', '2016-03-11 16:45:54'),
(166, 'Lesson', 12, 2, 'lessons', 'details', NULL, '40ea56074b4668351aa2f9eb56a69bad75944bd7aea82b704b953b7b505a95af', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 16:45:57', '2016-03-11 16:45:57'),
(167, 'Lesson', 12, 2, 'lessons', 'show', NULL, 'c39226bfd1928d14111fd82434ceb1e9ef60dae6d0ad7d78e0bfb3a29f29cc0b', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, 'http://0.0.0.0:3000/details/12', '2016-03-11 16:50:37', '2016-03-11 16:50:37'),
(168, 'Lesson', 12, 2, 'lessons', 'show', NULL, 'd17963868af24417448e576e04e973b208866e8d01366fd421141f8013b2bd5e', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, 'http://0.0.0.0:3000/details/12', '2016-03-11 16:50:37', '2016-03-11 16:50:37'),
(169, 'Lesson', 12, 2, 'lessons', 'details', NULL, '0a9f60a4c7c6b0d6bb500093f22894bdfd97c3b8fc212814231df1b63bc79950', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 16:50:38', '2016-03-11 16:50:38'),
(170, 'Lesson', 24, 2, 'lessons', 'details', NULL, 'ec91923cf968c6f86382797011ad3279dfa07ba2736f7e4fa3ea1c79a753d871', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, 'http://0.0.0.0:3000/details/24', '2016-03-11 16:50:41', '2016-03-11 16:50:41'),
(171, 'Lesson', 24, 2, 'lessons', 'details', NULL, '35403f8061894188de13e18a663669573bdbc9091cf5ebc65020137556123549', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 16:52:19', '2016-03-11 16:52:19'),
(172, 'Lesson', 3213, 2, 'lessons', 'details', NULL, '7dcbd71d0ba6df420120c2866b18b7fca9509e3c62e50bc972d23e747fd3e88a', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 16:56:06', '2016-03-11 16:56:06'),
(173, 'Lesson', 24, 2, 'lessons', 'details', NULL, '111235ae7e877c8142735b4dad4ecfd079510fcb5a7ede8272ba0f85cc9751dd', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, NULL, '2016-03-11 17:00:05', '2016-03-11 17:00:05'),
(174, 'Lesson', 24, 2, 'lessons', 'show', NULL, 'a79c5a41a1214e50930c4da1988badd7b5dcff573cb807e52c0cece29b7db832', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, 'http://0.0.0.0:3000/details/24', '2016-03-11 17:00:09', '2016-03-11 17:00:09'),
(175, 'Lesson', 24, 2, 'lessons', 'show', NULL, '6544988f8d2be779ee09932048bfa22a3802b0d6a0af8dbdaad28145791f4f53', '127.0.0.1', 'b13b9d8dbd1f796c93a34f50d22d173e', NULL, 'http://0.0.0.0:3000/details/24', '2016-03-11 17:00:09', '2016-03-11 17:00:09'),
(176, 'Lesson', 24, NULL, 'lessons', 'details', NULL, '014545b49917805ee34a7201b603e334a399a57f252ffccc042ee754e4ea036d', '192.168.1.96', '3acdb10df1665ece0328de4270f2ff15', NULL, 'http://192.168.1.79:3000/', '2016-03-12 02:35:13', '2016-03-12 02:35:13'),
(177, 'Lesson', 24, 3, 'lessons', 'details', NULL, '34e36feb432c517ac2587fc689a4911594d93aefdd3859f896049b567a758789', '192.168.1.96', '3acdb10df1665ece0328de4270f2ff15', NULL, 'http://192.168.1.79:3000/', '2016-03-12 02:42:39', '2016-03-12 02:42:39'),
(178, 'Lesson', 8, 3, 'lessons', 'details', NULL, '7bf142380b4f09c59e0dbd1d6092c27e19b40fd681755a2ad879a9aa0b5daf82', '192.168.1.96', '3acdb10df1665ece0328de4270f2ff15', NULL, 'http://192.168.1.79:3000/', '2016-03-12 02:46:53', '2016-03-12 02:46:53'),
(179, 'Lesson', 21, 3, 'lessons', 'details', NULL, 'ddc1dd0ab23c0fc121befd575c30ff4eef3a3cc0ff83d1f2ba1cd171bf240ac1', '192.168.1.96', '3acdb10df1665ece0328de4270f2ff15', NULL, 'http://192.168.1.79:3000/', '2016-03-12 04:46:15', '2016-03-12 04:46:15'),
(180, 'Lesson', 4, NULL, 'lessons', 'details', NULL, 'c16ec489aad935a0cee923e0825b7a4bf026c378a28b57b10c0baad9c1ffb342', '127.0.0.1', '7ae7dbab82a97b555dd24bc32eb87d79', NULL, 'http://127.0.0.1:3000/', '2016-03-12 05:22:47', '2016-03-12 05:22:47'),
(181, 'Lesson', 24, NULL, 'lessons', 'details', NULL, 'ba8ac75713cfcc247c77e7952712219bb9f72c91fca6e4c481aa86c627a7a03c', '127.0.0.1', '7ae7dbab82a97b555dd24bc32eb87d79', NULL, 'http://127.0.0.1:3000/', '2016-03-12 05:23:04', '2016-03-12 05:23:04'),
(182, 'Lesson', 24, 3, 'lessons', 'details', NULL, 'aefd01e900fd8e54f1f96cc9a966fd1ee75030702715e0e78f5b732be8df2be1', '127.0.0.1', '7ae7dbab82a97b555dd24bc32eb87d79', NULL, 'http://127.0.0.1:3000/', '2016-03-12 05:23:24', '2016-03-12 05:23:24'),
(183, 'Lesson', 24, 3, 'lessons', 'details', NULL, '7ab55e14456e0688069e11316d317418cfba9703dc7afa4ab17f07176302b8d9', '127.0.0.1', '7ae7dbab82a97b555dd24bc32eb87d79', NULL, NULL, '2016-03-12 05:27:20', '2016-03-12 05:27:20'),
(184, 'Lesson', 24, 3, 'lessons', 'show', NULL, 'a170c3ebfebe23809030298fad18b90456feb8684bde6a447521b23aa60d1f73', '127.0.0.1', '7ae7dbab82a97b555dd24bc32eb87d79', NULL, 'http://127.0.0.1:3000/details/24', '2016-03-12 05:32:01', '2016-03-12 05:32:01'),
(185, 'Lesson', 24, 3, 'lessons', 'show', NULL, '650d9be15bea8efd08753e38c03b7abc98adcce7c509f6f227d82ac8e334a26a', '127.0.0.1', '7ae7dbab82a97b555dd24bc32eb87d79', NULL, 'http://127.0.0.1:3000/details/24', '2016-03-12 05:32:01', '2016-03-12 05:32:01'),
(186, 'Lesson', 24, 3, 'lessons', 'details', NULL, '81041d4c6946311ee42e0ddf52f062e61d07ba82dd89dc429ed334101767c23b', '127.0.0.1', '7ae7dbab82a97b555dd24bc32eb87d79', NULL, NULL, '2016-03-12 05:35:15', '2016-03-12 05:35:15'),
(187, 'Lesson', 24, 3, 'lessons', 'details', NULL, 'aa91dc74b845fdd04b8369ae6aff1fd1fbd880b1cf490bdaa522ff5bd0ff5a69', '127.0.0.1', '7ae7dbab82a97b555dd24bc32eb87d79', NULL, NULL, '2016-03-12 05:36:58', '2016-03-12 05:36:58'),
(188, 'Lesson', 24, 3, 'lessons', 'details', NULL, 'd2ae0273ac877e38762c85f6c368456d6e064dc1632f668bea616646821c6999', '127.0.0.1', '7ae7dbab82a97b555dd24bc32eb87d79', NULL, NULL, '2016-03-12 05:37:08', '2016-03-12 05:37:08'),
(189, 'Lesson', 24, 3, 'lessons', 'details', NULL, '109b4bf7efc5881079945ad0ed52d09a2572b17824c6249637acc3e217197aef', '127.0.0.1', '7ae7dbab82a97b555dd24bc32eb87d79', NULL, NULL, '2016-03-12 05:37:19', '2016-03-12 05:37:19'),
(190, 'Lesson', 24, 3, 'lessons', 'details', NULL, '4ebb8e293c73aa6b1d13b2d91d52a0b3f4a3b384ef0b4853a7fd9f1a6879ebc5', '127.0.0.1', '7ae7dbab82a97b555dd24bc32eb87d79', NULL, NULL, '2016-03-12 05:37:38', '2016-03-12 05:37:38'),
(191, 'Lesson', 24, 3, 'lessons', 'details', NULL, '2fe8af537022b43e9da75bd25a8b9554f0ab02e3fed25c8545e6018222d34ce4', '127.0.0.1', '7ae7dbab82a97b555dd24bc32eb87d79', NULL, 'http://127.0.0.1:3000/', '2016-03-12 05:39:23', '2016-03-12 05:39:23'),
(192, 'Lesson', 24, 3, 'lessons', 'details', NULL, 'c3606b7d2f93e7b425cd32a05a883a824a9829c37f528476d4428fe986c83c64', '127.0.0.1', '7ae7dbab82a97b555dd24bc32eb87d79', NULL, 'http://127.0.0.1:3000/', '2016-03-12 05:47:24', '2016-03-12 05:47:24'),
(193, 'Lesson', 24, 3, 'lessons', 'details', NULL, '9952970e0b6f4ac514fd40d0e6508cf24dbdb73a72ef7d0eec0e10c18f84de73', '127.0.0.1', '7ae7dbab82a97b555dd24bc32eb87d79', NULL, NULL, '2016-03-12 05:50:38', '2016-03-12 05:50:38'),
(194, 'Lesson', 24, 3, 'lessons', 'details', NULL, '89a23cf3d071b3d7201f0acc1636aa74f1c41614efa261f678d17ebd83f91ba0', '127.0.0.1', '7ae7dbab82a97b555dd24bc32eb87d79', NULL, NULL, '2016-03-12 05:51:52', '2016-03-12 05:51:52'),
(195, 'Lesson', 24, 3, 'lessons', 'show', NULL, '2a2308e9f36e3d3d3b89df22d495cea2d754485115f490b1bd5c3ef17ffbc66e', '127.0.0.1', '7ae7dbab82a97b555dd24bc32eb87d79', NULL, 'http://127.0.0.1:3000/details/24', '2016-03-12 05:51:54', '2016-03-12 05:51:54'),
(196, 'Lesson', 24, 3, 'lessons', 'show', NULL, '09909a262930f80c92cc0b591f03e3f0f16eb9edde885b2b3eef4ce986f66c51', '127.0.0.1', '7ae7dbab82a97b555dd24bc32eb87d79', NULL, 'http://127.0.0.1:3000/details/24', '2016-03-12 05:51:54', '2016-03-12 05:51:54'),
(197, 'Lesson', 24, 3, 'lessons', 'details', NULL, 'fa71f47522c381797704c10aefdb1974f5d1b7560c2c319e053f741299d9f8b2', '127.0.0.1', '7ae7dbab82a97b555dd24bc32eb87d79', NULL, NULL, '2016-03-12 05:52:09', '2016-03-12 05:52:09'),
(198, 'Lesson', 23, 3, 'lessons', 'details', NULL, '7698db0eac803298baf817082502728d9f2fa2d2218c529b70a3f92734a98d56', '127.0.0.1', '7ae7dbab82a97b555dd24bc32eb87d79', NULL, 'http://127.0.0.1:3000/', '2016-03-12 05:53:19', '2016-03-12 05:53:19'),
(199, 'Lesson', 23, 3, 'lessons', 'details', NULL, 'ea0956b489b644ae1cb0f8d631a9f67d71c6101a83f5f35eb97ec2624f05fc3b', '127.0.0.1', '7ae7dbab82a97b555dd24bc32eb87d79', NULL, NULL, '2016-03-12 05:59:08', '2016-03-12 05:59:08'),
(200, 'Lesson', 21, 3, 'lessons', 'details', NULL, 'eaac3c098970095e0a961c111ba2ae8725ce12f1e17de2508c4f2c55127d542f', '192.168.1.96', '3acdb10df1665ece0328de4270f2ff15', NULL, NULL, '2016-03-12 06:12:59', '2016-03-12 06:12:59'),
(201, 'Lesson', 21, 3, 'lessons', 'show', NULL, '23a377c196655d0f4f54369ef85e143ba91fdfef3dd0627894f650ae7e511e2e', '192.168.1.96', '3acdb10df1665ece0328de4270f2ff15', NULL, 'http://192.168.1.79:3000/details/21', '2016-03-12 06:13:04', '2016-03-12 06:13:04'),
(202, 'Lesson', 21, 3, 'lessons', 'show', NULL, '7d410eb04fe7b29e440b9a5d411a9dce9ba23227e8274f2d3a3d47cfb4a71afb', '192.168.1.96', '3acdb10df1665ece0328de4270f2ff15', NULL, 'http://192.168.1.79:3000/details/21', '2016-03-12 06:13:04', '2016-03-12 06:13:04'),
(203, 'Lesson', 26, 3, 'lessons', 'details', NULL, '42d39a2850c2fe63fbbb851a93424ed73a2b213160add3a84207519c9a149275', '192.168.1.96', '3acdb10df1665ece0328de4270f2ff15', NULL, 'http://192.168.1.79:3000/', '2016-03-12 06:41:14', '2016-03-12 06:41:14'),
(204, 'Lesson', 26, 3, 'lessons', 'show', NULL, '3edf71765cb33504dce9ee3de1b1cfb09309d8a47ee5f9129e6374740c3226fd', '192.168.1.96', '3acdb10df1665ece0328de4270f2ff15', NULL, 'http://192.168.1.79:3000/details/26', '2016-03-12 06:41:23', '2016-03-12 06:41:23'),
(205, 'Lesson', 26, 3, 'lessons', 'show', NULL, 'ab0e5e874a1770295658f9867289e83718e92478c2f1b938e6768dd3ab388556', '192.168.1.96', '3acdb10df1665ece0328de4270f2ff15', NULL, 'http://192.168.1.79:3000/details/26', '2016-03-12 06:41:23', '2016-03-12 06:41:23'),
(206, 'Lesson', 26, 3, 'lessons', 'details', NULL, '340309661914dfe9d132bfa3c43ec0095a48c68388dca6ee6e2f6120156c20a4', '192.168.1.96', '3acdb10df1665ece0328de4270f2ff15', NULL, NULL, '2016-03-12 06:41:25', '2016-03-12 06:41:25'),
(207, 'Lesson', 24, 3, 'lessons', 'details', NULL, 'c39a5a8a914d5a6d1509398e51ff418e42fac21e9ffa12259c1219632cbe96e9', '192.168.1.96', '3acdb10df1665ece0328de4270f2ff15', NULL, 'http://192.168.1.79:3000/', '2016-03-12 06:41:58', '2016-03-12 06:41:58'),
(208, 'Lesson', 24, 3, 'lessons', 'details', NULL, 'a95346e3fc99ecf15a3185645c2cbcca9ea375f4f2b9abfbf99358ea4f9be9b5', '192.168.1.96', '3acdb10df1665ece0328de4270f2ff15', NULL, 'http://192.168.1.79:3000/', '2016-03-12 06:45:09', '2016-03-12 06:45:09'),
(209, 'Lesson', 24, 3, 'lessons', 'details', NULL, 'd7c6914f9b83828bc8f7054f7795d3b35ad0da4907383bb6fdb2563c764f3cae', '192.168.1.96', '3acdb10df1665ece0328de4270f2ff15', NULL, NULL, '2016-03-12 06:45:17', '2016-03-12 06:45:17'),
(210, 'Lesson', 23, 3, 'lessons', 'details', NULL, '1c5e5b3fa3be39ca5f37b2356a308b95dfbeb5179c6285bf60654605c52375b9', '127.0.0.1', '7ae7dbab82a97b555dd24bc32eb87d79', NULL, NULL, '2016-03-12 11:09:24', '2016-03-12 11:09:24'),
(211, 'Lesson', 24, NULL, 'lessons', 'details', NULL, 'cc71af594ffaad88fbef611a33097476424d4e385a6d9b82588600655db68bfa', '127.0.0.1', NULL, NULL, NULL, '2016-03-12 12:04:41', '2016-03-12 12:04:41'),
(212, 'Lesson', 24, 3, 'lessons', 'details', NULL, '3a431da68b6aff44421d002683d0f1a2dd17dabd853f43d7bfcf3b9d1520410a', '192.168.1.96', '3acdb10df1665ece0328de4270f2ff15', NULL, 'http://192.168.1.79:3000/', '2016-03-12 14:43:33', '2016-03-12 14:43:33'),
(213, 'Lesson', 24, 3, 'lessons', 'details', NULL, 'cf3bd6ce86be603a1ee8698fad145974d54324de7d60d245f202a085b802a7c3', '192.168.1.96', '3acdb10df1665ece0328de4270f2ff15', NULL, 'http://192.168.1.79:3000/', '2016-03-12 14:46:22', '2016-03-12 14:46:22'),
(214, 'Lesson', 16, 3, 'lessons', 'details', NULL, 'db083867becda67b85a4022c7ec8fc8e4482acb9f63fd13a0ca70b9e45fe61fa', '192.168.1.96', '3acdb10df1665ece0328de4270f2ff15', NULL, 'http://192.168.1.79:3000/', '2016-03-12 14:47:40', '2016-03-12 14:47:40');
INSERT INTO `impressions` (`id`, `impressionable_type`, `impressionable_id`, `user_id`, `controller_name`, `action_name`, `view_name`, `request_hash`, `ip_address`, `session_hash`, `message`, `referrer`, `created_at`, `updated_at`) VALUES
(215, 'Lesson', 16, 3, 'lessons', 'show', NULL, '723868b1e4d3b97e8b860364950f706c30f9a0c3b1d50a423581dd78613a2ee9', '192.168.1.96', '3acdb10df1665ece0328de4270f2ff15', NULL, 'http://192.168.1.79:3000/details/16', '2016-03-12 14:47:42', '2016-03-12 14:47:42'),
(216, 'Lesson', 16, 3, 'lessons', 'show', NULL, '8dccc3213cf84b3027a34737a138bc0855a3ec4899ae268f48f806883558d460', '192.168.1.96', '3acdb10df1665ece0328de4270f2ff15', NULL, 'http://192.168.1.79:3000/details/16', '2016-03-12 14:47:42', '2016-03-12 14:47:42'),
(217, 'Lesson', 16, 3, 'lessons', 'details', NULL, '90753fd28e67b6a7da06ff013469b6bf14429b7ea1fe46e5dde501fb09b60a01', '192.168.1.96', '3acdb10df1665ece0328de4270f2ff15', NULL, NULL, '2016-03-12 14:47:44', '2016-03-12 14:47:44'),
(218, 'Lesson', 17, 3, 'lessons', 'details', NULL, 'f4787e8510faeae555ef2299ca77ddb84607ac29fa58c6d22eda4975b07e6e1b', '192.168.1.96', '3acdb10df1665ece0328de4270f2ff15', NULL, 'http://192.168.1.79:3000/', '2016-03-12 14:47:47', '2016-03-12 14:47:47'),
(219, 'Lesson', 24, 1, 'lessons', 'show', NULL, '3dbedeec6737d4b09c6456b4f2d4312650331a58b57153babb314ceff6d18b87', '127.0.0.1', '7ae7dbab82a97b555dd24bc32eb87d79', NULL, 'http://127.0.0.1:3000/', '2016-03-12 15:07:44', '2016-03-12 15:07:44'),
(220, 'Lesson', 24, 1, 'lessons', 'show', NULL, '6adef436755406438ac14ef30b49952b5def9d706fa9d79fc3f201ca64ba01f5', '127.0.0.1', '7ae7dbab82a97b555dd24bc32eb87d79', NULL, 'http://127.0.0.1:3000/', '2016-03-12 15:07:45', '2016-03-12 15:07:45'),
(221, 'Lesson', 17, 3, 'lessons', 'details', NULL, '55eeee55e7108fec916844821dd81942887045ccc0c5eb559e93403ca5bdc3eb', '192.168.1.96', '3acdb10df1665ece0328de4270f2ff15', NULL, NULL, '2016-03-12 15:33:28', '2016-03-12 15:33:28'),
(222, 'Lesson', 17, 3, 'lessons', 'show', NULL, '40356ce38d6ca4eb337787ba2b7a11a9382e70b073e66d5111ebca05a7d141ba', '192.168.1.96', '3acdb10df1665ece0328de4270f2ff15', NULL, 'http://192.168.1.79:3000/details/17', '2016-03-12 15:34:14', '2016-03-12 15:34:14'),
(223, 'Lesson', 17, 3, 'lessons', 'show', NULL, '5871d1f90cc857568efc64792c6e51a13e4d0c32aab5e1050305f9e8a62335fb', '192.168.1.96', '3acdb10df1665ece0328de4270f2ff15', NULL, 'http://192.168.1.79:3000/details/17', '2016-03-12 15:34:14', '2016-03-12 15:34:14'),
(224, 'Lesson', 24, NULL, 'lessons', 'details', NULL, 'e543c374c375dfb5e06d35510bcde5a1eeb3e0212ca5466e51f9fad06ced846b', '127.0.0.1', '1806059809cd4113ab0e52a8392d920c', NULL, 'http://0.0.0.0:3000/', '2016-03-13 04:03:42', '2016-03-13 04:03:42'),
(225, 'Lesson', 24, 1, 'lessons', 'details', NULL, 'f16c515c19ee3cb9d48d0cb30c172de0fffc087caec204c58a1c65d9d31ee53f', '127.0.0.1', '1806059809cd4113ab0e52a8392d920c', NULL, 'http://0.0.0.0:3000/login', '2016-03-13 04:03:49', '2016-03-13 04:03:49'),
(226, 'Lesson', 24, 1, 'lessons', 'details', NULL, '02167be838b6647dea82835d8744e24cf8a8f3f7f3827447f6af9984837c375f', '127.0.0.1', '1806059809cd4113ab0e52a8392d920c', NULL, NULL, '2016-03-13 04:17:48', '2016-03-13 04:17:48'),
(227, 'Lesson', 24, 1, 'lessons', 'show', NULL, '931a52f2ff8552b9a61a07850985e91a325ccb4cd618fa3f750f2db98372774b', '127.0.0.1', '693b6f7789ca3baf3203e3dcae277d3d', NULL, 'http://127.0.0.1:3000/', '2016-03-13 13:54:19', '2016-03-13 13:54:19'),
(228, 'Lesson', 24, 1, 'lessons', 'show', NULL, '7bb72a3ea57ded3003611cd6631d681fe77edd809a4e04e00d04d874e3c29972', '127.0.0.1', '693b6f7789ca3baf3203e3dcae277d3d', NULL, 'http://127.0.0.1:3000/', '2016-03-13 13:54:19', '2016-03-13 13:54:19'),
(229, 'Lesson', 14, 1, 'lessons', 'show', NULL, '29e7980872afa35ff7d1b764409bf79d162957dccc8a4da9b04d75363e4eb1b2', '127.0.0.1', '693b6f7789ca3baf3203e3dcae277d3d', NULL, 'http://127.0.0.1:3000/users/1', '2016-03-13 13:57:24', '2016-03-13 13:57:24'),
(230, 'Lesson', 14, 1, 'lessons', 'show', NULL, 'd916c581fe905c3b186ddb3f7a519f23ab181a255a065ddc45ca22a3cb430659', '127.0.0.1', '693b6f7789ca3baf3203e3dcae277d3d', NULL, 'http://127.0.0.1:3000/users/1', '2016-03-13 13:57:24', '2016-03-13 13:57:24'),
(231, 'Lesson', 25, 1, 'lessons', 'show', NULL, '479f243ba0d843a8561b7087a1a694af54e5d12267a0fd51e4a8344000857fd6', '127.0.0.1', '693b6f7789ca3baf3203e3dcae277d3d', NULL, 'http://127.0.0.1:3000/users/1', '2016-03-13 15:24:39', '2016-03-13 15:24:39'),
(232, 'Lesson', 25, 1, 'lessons', 'show', NULL, '37ae481ef01f0ce56d4aa444bc97c1b49085824a81a03e07fd930e7bbba8106e', '127.0.0.1', '693b6f7789ca3baf3203e3dcae277d3d', NULL, 'http://127.0.0.1:3000/users/1', '2016-03-13 15:24:39', '2016-03-13 15:24:39'),
(233, 'Lesson', 24, NULL, 'lessons', 'details', NULL, '578dd82d9959ff5b5c104b9b87fee6bebef75a0b113fe8c6eb841f04531e3084', '127.0.0.1', '2b57901806e704d0e113b5df54402180', NULL, 'http://0.0.0.0:3000/', '2016-03-15 12:30:39', '2016-03-15 12:30:39'),
(234, 'Lesson', 24, NULL, 'lessons', 'details', NULL, 'e4fc4c9cd6668df9d66548213718efee36c905b08ceaeddb37f5aac1f41577d7', '127.0.0.1', '2b57901806e704d0e113b5df54402180', NULL, NULL, '2016-03-15 12:33:27', '2016-03-15 12:33:27'),
(235, 'Lesson', 24, 1, 'lessons', 'details', NULL, 'e15b2fae41dd39ea9861dd6b43d269ced95917cc01195db07a7c39c96add92ab', '127.0.0.1', '2b57901806e704d0e113b5df54402180', NULL, 'http://0.0.0.0:3000/login', '2016-03-15 12:33:38', '2016-03-15 12:33:38'),
(236, 'Lesson', 21, NULL, 'lessons', 'details', NULL, '49b1b1a2f180fccc408b37b36e2daaab01c060f2f359d9df6aecffcdd3bc0307', '127.0.0.1', 'c5b36e331c9dd6a78d58463d0fdc60c3', NULL, 'http://0.0.0.0:3000/', '2016-03-15 14:24:31', '2016-03-15 14:24:31'),
(237, 'Lesson', 21, 1, 'lessons', 'details', NULL, 'd2bd3cb100d7a7a65d7e4aca5aa9c3472da04c5f66aa6b93aac347c51fa7a268', '127.0.0.1', 'c5b36e331c9dd6a78d58463d0fdc60c3', NULL, 'http://0.0.0.0:3000/login', '2016-03-15 14:24:36', '2016-03-15 14:24:36'),
(238, 'Lesson', 24, 1, 'lessons', 'details', NULL, 'f606df57f655d22e3b65a81db66aa9575895c5ddefdc03db779bb913a7102bba', '127.0.0.1', 'c5b36e331c9dd6a78d58463d0fdc60c3', NULL, 'http://0.0.0.0:3000/', '2016-03-15 14:24:43', '2016-03-15 14:24:43'),
(239, 'Lesson', 3, 1, 'lessons', 'details', NULL, 'c1da8de0cc17bf51488058f5ea169f9f3b077eb4a5de860fd54fc05e0293619e', '127.0.0.1', 'c5b36e331c9dd6a78d58463d0fdc60c3', NULL, 'http://0.0.0.0:3000/', '2016-03-15 14:24:49', '2016-03-15 14:24:49'),
(240, 'Lesson', 24, NULL, 'lessons', 'details', NULL, 'cbb0c8d602b68de3fc7a4bc7b753055d8c8dc6721632f6bb7211d2f2c0a49330', '127.0.0.1', NULL, NULL, NULL, '2016-03-15 14:29:31', '2016-03-15 14:29:31'),
(241, 'Lesson', 24, 1, 'lessons', 'details', NULL, 'af9bfacc87de13806eca0332d79a37ca24cc2898d5336cc6ee33776bf454f21f', '127.0.0.1', 'c5b36e331c9dd6a78d58463d0fdc60c3', NULL, NULL, '2016-03-15 14:37:32', '2016-03-15 14:37:32'),
(242, 'Lesson', 17, 2, 'lessons', 'details', NULL, '79009e34451223d52731f634b8c3cf89c717bbdabbb8a1c58c9828e99699029e', '192.168.1.96', 'bab913e158ac8c8b9d813019b9f1977f', NULL, 'http://192.168.1.79:3000/', '2016-03-20 04:54:14', '2016-03-20 04:54:14'),
(243, 'Lesson', 17, 2, 'lessons', 'show', NULL, '64017e533f58f07be400cbd9b284bde0ecf1bfd0b0c032cd274067b17fc33a6b', '192.168.1.96', 'bab913e158ac8c8b9d813019b9f1977f', NULL, 'http://192.168.1.79:3000/details/17', '2016-03-20 04:54:18', '2016-03-20 04:54:18'),
(244, 'Lesson', 17, 2, 'lessons', 'show', NULL, '73676117a4b0b7fd03e1a6d0693e815f5e2f6d6ac9a5e3c455941b36a2838224', '192.168.1.96', 'bab913e158ac8c8b9d813019b9f1977f', NULL, 'http://192.168.1.79:3000/details/17', '2016-03-20 04:54:18', '2016-03-20 04:54:18'),
(245, 'Lesson', 17, 2, 'lessons', 'details', NULL, '940562c88bdbf53a6b44179ffe874cc435383912a0c3b804966e60aa5309fceb', '192.168.1.96', 'bab913e158ac8c8b9d813019b9f1977f', NULL, NULL, '2016-03-20 04:54:19', '2016-03-20 04:54:19'),
(246, 'Lesson', 5, 1, 'lessons', 'details', NULL, '6260ef4d511d4f63b332d102535df70a4c37fdd6c9ecee32559143996f0f1022', '127.0.0.1', 'b9acc811fb9cbe4ff6327ebc13d3e208', NULL, 'http://0.0.0.0:3000/', '2016-03-27 05:22:57', '2016-03-27 05:22:57'),
(247, 'Lesson', 5, 1, 'lessons', 'show', NULL, '908be6e558f50b50645c385ac10c7bbfd8b6c3c5a2974cb274e74aa4a43ae2f9', '127.0.0.1', 'b9acc811fb9cbe4ff6327ebc13d3e208', NULL, 'http://0.0.0.0:3000/details/5#', '2016-03-27 05:23:32', '2016-03-27 05:23:32'),
(248, 'Lesson', 5, 1, 'lessons', 'show', NULL, 'a96450b414f2eb41842fe5b5c1da0acf39d6351c64a0a885e667568d05db38e1', '127.0.0.1', 'b9acc811fb9cbe4ff6327ebc13d3e208', NULL, 'http://0.0.0.0:3000/details/5', '2016-03-27 05:23:32', '2016-03-27 05:23:32'),
(249, 'Lesson', 26, 1, 'lessons', 'details', NULL, 'b165e992d57e9477432bae0457b39d5b6ba03453cfb70c49be61d3ade6966b6e', '127.0.0.1', '8ad7e7a877f8dd346be46e248362241f', NULL, 'http://0.0.0.0:3000/', '2016-03-28 10:55:36', '2016-03-28 10:55:36'),
(250, 'Lesson', 17, 1, 'lessons', 'details', NULL, 'eededbb0bcfbab2bd6d70c98416188250dca6a61e4b41c1809b8ff67a1b4fda4', '127.0.0.1', '7a5187d961843320055e4c235849ac1d', NULL, 'http://127.0.0.1:3000/', '2016-04-01 02:43:59', '2016-04-01 02:43:59'),
(251, 'Lesson', 17, 1, 'lessons', 'details', NULL, '3303c96703e9bfa722867b6ec58e4c80fe7b6eb06e8d5a6959e7620b308a24f0', '127.0.0.1', '7a5187d961843320055e4c235849ac1d', NULL, 'http://127.0.0.1:3000/', '2016-04-01 02:44:00', '2016-04-01 02:44:00'),
(252, 'Lesson', 17, 1, 'lessons', 'details', NULL, 'cd295788b4e558f0063d35230a3aedff6959ea9bf13b8bdbe2aff6bf579d51c7', '127.0.0.1', '7a5187d961843320055e4c235849ac1d', NULL, 'http://127.0.0.1:3000/', '2016-04-01 02:44:00', '2016-04-01 02:44:00'),
(253, 'Lesson', 17, 1, 'lessons', 'details', NULL, '3ae9abc325d1afcf4c0ebe16dcc40b635c1d52558336da1a280a8a60fd1c26f4', '127.0.0.1', '7a5187d961843320055e4c235849ac1d', NULL, 'http://127.0.0.1:3000/', '2016-04-01 02:44:01', '2016-04-01 02:44:01'),
(254, 'Lesson', 17, 1, 'lessons', 'details', NULL, 'abcfa04e9b40b43bffe09eee401531bb3c71fb1ffbe1543721ec8e643c890e95', '127.0.0.1', '7a5187d961843320055e4c235849ac1d', NULL, 'http://127.0.0.1:3000/', '2016-04-01 02:44:01', '2016-04-01 02:44:01'),
(255, 'Lesson', 17, 1, 'lessons', 'details', NULL, '826e5d252e372c9eb70cbfd139f50c5ee9201c7b57fb5ba6617f2c35ae632113', '127.0.0.1', '7a5187d961843320055e4c235849ac1d', NULL, NULL, '2016-04-01 02:44:01', '2016-04-01 02:44:01'),
(256, 'Lesson', 17, 1, 'lessons', 'show', NULL, '08fec432d07233f4ee6c6d932544516259e7ed464c082e28e4adf08d11811893', '127.0.0.1', '7a5187d961843320055e4c235849ac1d', NULL, 'http://127.0.0.1:3000/details/17', '2016-04-01 02:44:12', '2016-04-01 02:44:12'),
(257, 'Lesson', 17, 1, 'lessons', 'details', NULL, 'b67a3828d060f7391791f5b0d51fda58262bbdb562433ed64e647d2514ec08d9', '127.0.0.1', '7a5187d961843320055e4c235849ac1d', NULL, 'http://127.0.0.1:3000/', '2016-04-01 02:57:11', '2016-04-01 02:57:11'),
(258, 'Lesson', 17, 1, 'lessons', 'details', NULL, '37dacd871bd61959cec081628206241d61cc3d98e61d6c5baa912a560ca42a45', '127.0.0.1', '7a5187d961843320055e4c235849ac1d', NULL, 'http://127.0.0.1:3000/', '2016-04-01 02:57:15', '2016-04-01 02:57:15'),
(259, 'Lesson', 11, 1, 'lessons', 'details', NULL, '32545e2dc092c35f314eb032d4115cef6cd92e70bf1b16a3c904e2cfe71ba411', '127.0.0.1', '7a5187d961843320055e4c235849ac1d', NULL, 'http://127.0.0.1:3000/', '2016-04-01 03:07:03', '2016-04-01 03:07:03'),
(260, 'Lesson', 25, 1, 'lessons', 'show', NULL, 'c108554729f3b3b18e4255fc56e5330de970fce64e4b87ecdbdf4398aa1e82f2', '192.168.1.9', '436005d872c08c1303d0a99e038b612f', NULL, 'http://192.168.1.146:8080/', '2016-04-03 13:10:50', '2016-04-03 13:10:50'),
(261, 'Lesson', 25, 1, 'lessons', 'show', NULL, '4e0940445d1ceb5980afc29677aadd1fb59e34300705d103cc36d8b5568a7ac3', '192.168.1.9', '436005d872c08c1303d0a99e038b612f', NULL, 'http://192.168.1.146:8080/', '2016-04-03 13:10:50', '2016-04-03 13:10:50'),
(262, 'Lesson', 17, 1, 'lessons', 'details', NULL, 'ffc9065d4acd154d5850ffab6476265b3b52f63b4eba9de2e019a008912312d2', '192.168.1.9', '436005d872c08c1303d0a99e038b612f', NULL, 'http://192.168.1.146:8080/', '2016-04-03 13:10:59', '2016-04-03 13:10:59'),
(263, 'Lesson', 24, 1, 'lessons', 'show', NULL, 'dc0021991dab2666f76effb10b9058caaeca146e1730d7501d62d1c088e48424', '192.168.1.9', '436005d872c08c1303d0a99e038b612f', NULL, 'http://192.168.1.146:8080/', '2016-04-03 13:11:03', '2016-04-03 13:11:03'),
(264, 'Lesson', 24, 1, 'lessons', 'show', NULL, '23984502fede3eb124ed73b5ff5dfa5a06d73ca75e1dc48e64c54b8e6d020482', '192.168.1.9', '436005d872c08c1303d0a99e038b612f', NULL, 'http://192.168.1.146:8080/', '2016-04-03 13:11:04', '2016-04-03 13:11:04'),
(265, 'Lesson', 17, 1, 'lessons', 'details', NULL, '0a4ffa7630cf02256a77849e5c6582c2cae39a0f2e85cf7c9e6a3026be6be1e5', '192.168.1.9', '436005d872c08c1303d0a99e038b612f', NULL, 'http://192.168.1.146:8080/', '2016-04-03 13:11:23', '2016-04-03 13:11:23'),
(266, 'Lesson', 25, 1, 'lessons', 'details', NULL, 'ae995904038ca79b79e73e11bbe91e90fc8a9c240234473d7117b54a7623b59d', '192.168.1.9', '436005d872c08c1303d0a99e038b612f', NULL, 'http://192.168.1.146:8080/', '2016-04-03 13:11:45', '2016-04-03 13:11:45');

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

DROP TABLE IF EXISTS `lessons`;
CREATE TABLE IF NOT EXISTS `lessons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `url` varchar(200) CHARACTER SET utf8 NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `represent_image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `schools_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_lessons_classes1_idx` (`class_id`),
  KEY `fk_lessons_users1_idx` (`user_id`),
  KEY `fk_lessons_subjects1_idx` (`subject_id`),
  KEY `fk_lessons_schools1_idx` (`schools_id`),
  KEY `fk_lessons_schools1` (`school_id`),
  KEY `fk_lessons_types1_idx` (`type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=27 ;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `name`, `url`, `created_at`, `approved`, `type`, `class_id`, `user_id`, `subject_id`, `represent_image`, `school_id`, `schools_id`, `type_id`) VALUES
(1, 'Bài giảng âm nhạc lớp 6 tiết 1', 'AmNhacLop6-HaNoi.zip', '2016-03-02 13:12:39', 0, NULL, 11, 1, 1, NULL, 1, 0, 1),
(2, 'Thủ lĩnh da đỏ', 'BucThuCuaThuLinhDaDo.zip', '2016-03-05 16:45:41', 0, NULL, 12, 1, 33, NULL, 1, 0, 1),
(3, 'Phối hợp thức ăn', 'PhoiHopThucAn.zip', '2016-03-05 16:50:17', 0, NULL, 11, 1, 36, NULL, 1, 0, 1),
(4, 'Bức thư của thủ lĩnh da đỏ', 'BucThuCuaThuLinhDaDo.zip', '2016-03-06 04:00:17', 0, NULL, 13, 1, 33, '', 1, 0, 1),
(5, 'Phối hợp thức ăn nhanh', 'PhoiHopThucAn.zip', '2016-03-06 04:05:04', 0, NULL, 12, 1, 37, NULL, 1, 0, 1),
(6, 'Bức thư của thủ lĩnh da đỏ', 'BucThuCuaThuLinhDaDo.zip', '2016-03-06 06:29:10', 0, NULL, 15, 1, 33, '', 1, 0, 1),
(7, 'Bức thư của thủ lĩnh da đỏ', 'BucThuCuaThuLinhDaDo.zip', '2016-03-06 06:34:03', 0, NULL, 15, 1, 33, '', 1, 0, 1),
(8, 'Bai giang ngu van', 'BucThuCuaThuLinhDaDo.zip', '2016-03-06 12:07:56', 0, NULL, 15, 1, 33, '', 1, 0, 1),
(9, 'Tap viet', 'PhoiHopThucAn.zip', '2016-03-06 12:34:30', 0, NULL, 6, 1, 8, '', 1, 0, 1),
(10, 'Bai giang moi upload', 'PhoiHopThucAn.zip', '2016-03-07 16:19:20', 0, NULL, 14, 1, 19, NULL, 1, 0, 1),
(11, 'Bai giang moi upload', 'PhoiHopThucAn.zip', '2016-03-07 16:22:53', 0, NULL, 11, 1, 11, NULL, 1, 0, 1),
(12, 'Tap viet', 'PhoiHopThucAn.zip', '2016-03-07 16:24:43', 0, NULL, 16, 1, 35, NULL, 1, 0, 1),
(13, 'Bai giang moi upload', 'PhoiHopThucAn.zip', '2016-03-07 16:25:49', 0, NULL, 7, 1, 8, NULL, 1, 0, 1),
(14, 'Tap viet', 'PhoiHopThucAn.zip', '2016-03-07 16:31:17', 0, NULL, 5, 1, NULL, NULL, 1, 0, 1),
(15, 'Bai giang ngu van', 'PhoiHopThucAn.zip', '2016-03-07 16:36:18', 0, NULL, 8, 1, 1, '', 1, 0, 1),
(16, 'Bai giang ngu van', 'PhoiHopThucAn.zip', '2016-03-07 16:40:09', 0, NULL, 4, 1, NULL, '', 1, 0, 1),
(17, 'Bai giang ngu van', 'PhoiHopThucAn.zip', '2016-03-07 16:41:57', 0, NULL, 4, 1, NULL, '', 1, 0, 1),
(19, 'dsfsa', 'PhoiHopThucAn.zip', '2016-03-07 16:46:28', 0, NULL, 7, 1, 1, '', 1, 0, 1),
(20, 'Bai giang ngu van', 'PhoiHopThucAn.zip', '2016-03-07 16:49:40', 0, NULL, 8, 1, 7, '', 1, 0, 1),
(21, 'Bai giang ngu van', 'PhoiHopThucAn.zip', '2016-03-07 16:54:36', 0, NULL, 6, 1, 6, '02023dea-2e2c-4cfe-943a-84544c8b36c7.jpg', 1, 0, 1),
(22, 'Tap viet', 'PhoiHopThucAn.zip', '2016-03-07 17:00:54', 0, NULL, 6, 1, 1, NULL, 1, 0, 1),
(23, 'Bai giang moi upload', 'PhoiHopThucAn.zip', '2016-03-07 17:03:27', 0, NULL, 5, 1, NULL, NULL, 1, 0, 1),
(24, 'Tap viet', 'PhoiHopThucAn.zip', '2016-03-07 17:03:59', 0, NULL, 6, 1, 1, 'b9ae53b9-6b28-46a7-b148-f764c61dfb61.jpg', 1, 0, 1),
(25, 'ddfs', 'PhoiHopThucAn.zip', '2016-03-07 17:04:15', 0, NULL, 9, 1, 1, '712a7634-e0cd-4c23-a39e-13805c49e704.jpg', 1, 0, 1),
(26, 'Test thôi', 'BucThuCuaThuLinhDaDo.zip', '2016-03-12 06:14:43', 0, NULL, 16, 3, 24, 'fdaef1df-cb16-4351-b974-4f5fb70df206.jpg', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) CHARACTER SET utf8 NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20160308152755'),
('20160310124344');

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

DROP TABLE IF EXISTS `schools`;
CREATE TABLE IF NOT EXISTS `schools` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `grade_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  KEY `fk_schools_grades1_idx` (`grade_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `name`, `grade_id`) VALUES
(1, 'Mầm non Hạ Long', 1),
(2, 'Tiểu học Cát Bà', 2),
(3, 'Trung học cơ sở Nguyễn Hiền', 3),
(4, 'Trung học phổ thông Lí Tự Trọng', 4),
(5, 'Đại học Công Nghệ', 6);

-- --------------------------------------------------------

--
-- Table structure for table `school_has_classes`
--

DROP TABLE IF EXISTS `school_has_classes`;
CREATE TABLE IF NOT EXISTS `school_has_classes` (
  `school_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  PRIMARY KEY (`school_id`,`class_id`),
  KEY `fk_schools_has_classes_classes1_idx` (`class_id`),
  KEY `fk_schools_has_classes_schools1_idx` (`school_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `school_has_classes`
--

INSERT INTO `school_has_classes` (`school_id`, `class_id`) VALUES
(1, 3),
(1, 4),
(1, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(4, 15),
(4, 16),
(4, 17),
(5, 18);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
CREATE TABLE IF NOT EXISTS `subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(45) DEFAULT NULL,
  `slug` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subject_name_UNIQUE` (`subject_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subject_name`, `slug`) VALUES
(1, 'Âm nhạc', 'am-nhac'),
(2, 'Chính tả', 'chinh-ta'),
(3, 'Đạo đức', 'dao-duc'),
(4, 'Học vần', 'hoc-van'),
(5, 'Kể chuyện', 'ke-chuyen'),
(6, 'Mỹ thuật', 'my-thuat'),
(7, 'Tập đọc', 'tap-doc'),
(8, 'Tập viết', 'tap-viet'),
(9, 'Thủ công', 'thu-cong'),
(10, 'Toán học', 'toan-hoc'),
(11, 'Tiếng Anh', 'tieng-anh'),
(12, 'Tự nhiên xã hội', 'tu-nhien-xa-hoi'),
(13, 'Luyện từ và câu', 'luyen-tu-va-cau'),
(14, 'Tập làm văn', 'tap-lam-van'),
(19, 'Tin học', 'tin-hoc'),
(20, 'Kĩ thuật', 'ki-thuat'),
(21, 'Thể dục', 'the-duc'),
(22, 'Khoa học', 'khoa-hoc'),
(23, 'Địa lí', 'dia-li'),
(24, 'Lịch sử', 'lich-su'),
(33, 'Ngữ văn', 'ngu-van'),
(34, 'Vật lí', 'vat-li'),
(35, 'Hóa học', 'hoa-hoc'),
(36, 'Sinh học', 'sinh-hoc'),
(37, 'Công nghệ', 'cong-nghe'),
(38, 'GDCD-GDNGLL', 'giao-duc-cong-dan'),
(41, 'Ngoại ngữ', 'ngoai-ngu'),
(42, 'Số học', 'so-hoc'),
(43, 'Hình học', 'hinh-hoc'),
(44, 'Đại số', 'dai-so'),
(45, 'Đại số và giải tích', 'dai-so-giai-tich'),
(46, 'Giải tích', 'giai-tich'),
(47, 'Ngoại ngữ khác', 'ngoai-ngu-khac');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
CREATE TABLE IF NOT EXISTS `types` (
  `id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`) VALUES
(1, 'Bài giảng elearning'),
(2, 'Bài giảng powerpoint'),
(3, 'Giáo án lên lớp'),
(4, 'Tài liệu giảng dạy');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 NOT NULL,
  `password_digest` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `remember_digest` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `email` varchar(45) CHARACTER SET utf8 NOT NULL,
  `workplace` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `fk_users_schools1_idx` (`school_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password_digest`, `remember_digest`, `name`, `email`, `workplace`, `school_id`) VALUES
(1, 'admin', '$2a$10$tE8n/9ecNRb6GVi2EYaOZ.NSllQtX5XNcnH0eJAvgifgTt9P8LDj.', '$2a$10$Xnqf4RW8OIvzefaQSSTVEO7HRO.LVBRF7KlmuhB6k1Tw6IG1VQF9m', 'Phạm Trọng Tri', 'trongtri160592@yahoo.com', NULL, 1),
(2, 'tranvana', '$2a$10$UxNxsGSFA6KgfpCLpgZZeeN5Gis1cWdpEze6qYAbXawslNkwClw5u', '$2a$10$8EJhW0OzIVjkPoclpr2YiOXZ.d2jVULtIwI5h.wA7iHNise1r4rJa', 'Trần Văn A', 'trong@fdso.vcom', NULL, 2),
(3, 'nguyenthia', '$2a$10$Xr8dLHSsj3Ce/yOE0PlU7OKOUXYXiSSIlrwY8IkPLvy2Z7MUfP5pK', NULL, 'Nguyễn Thị A', 'dls@gmail.com', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_has_role`
--

DROP TABLE IF EXISTS `user_has_role`;
CREATE TABLE IF NOT EXISTS `user_has_role` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`user_id`),
  KEY `fk_roles_has_users_users1_idx` (`user_id`),
  KEY `fk_roles_has_users_roles1_idx` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `class_has_subjects`
--
ALTER TABLE `class_has_subjects`
  ADD CONSTRAINT `fk_classes_has_subjects_classes1` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_classes_has_subjects_subjects1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `fk_comments_lessons1` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_comments_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `fk_lessons_classes1` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_lessons_schools1` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_lessons_subjects1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_lessons_types1` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_lessons_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `schools`
--
ALTER TABLE `schools`
  ADD CONSTRAINT `fk_schools_grades1` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

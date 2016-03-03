-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2016 at 02:32 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elearning`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `grade_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `name`, `grade_id`) VALUES
(3, 'Lớp 3 tuổi', 1),
(4, 'Lớp 4 tuổi', 1),
(5, 'Lớp 5 tuổi', 1),
(6, 'Lớp 1', 2),
(7, 'Lớp 2', 2),
(8, 'Lớp 3', 2),
(9, 'Lớp 4', 2),
(10, 'Lớp 5', 2),
(11, 'Lớp 6', 3),
(12, 'Lớp 7', 3),
(13, 'Lớp 8', 3),
(14, 'Lớp 9', 3),
(15, 'Lớp 10', 4),
(16, 'Lớp 11', 4),
(17, 'Lớp 12', 4),
(18, 'CĐ-ĐH', 5);

-- --------------------------------------------------------

--
-- Table structure for table `class_has_subjects`
--

CREATE TABLE `class_has_subjects` (
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `class_has_subjects`
--

INSERT INTO `class_has_subjects` (`class_id`, `subject_id`) VALUES
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 6),
(6, 7),
(6, 8),
(6, 9),
(6, 10),
(6, 11),
(6, 12),
(7, 1),
(7, 2),
(7, 3),
(7, 5),
(7, 6),
(7, 7),
(7, 8),
(7, 9),
(7, 10),
(7, 11),
(7, 12),
(7, 13),
(7, 14),
(8, 1),
(8, 2),
(8, 3),
(8, 6),
(8, 7),
(8, 8),
(8, 9),
(8, 10),
(8, 11),
(8, 12),
(8, 13),
(8, 14),
(8, 19),
(9, 1),
(9, 2),
(9, 3),
(9, 5),
(9, 6),
(9, 7),
(9, 10),
(9, 11),
(9, 13),
(9, 14),
(9, 19),
(9, 20),
(9, 21),
(9, 22),
(9, 23),
(9, 24),
(10, 1),
(10, 2),
(10, 3),
(10, 5),
(10, 6),
(10, 7),
(10, 10),
(10, 11),
(10, 13),
(10, 14),
(10, 19),
(10, 20),
(10, 21),
(10, 22),
(10, 23),
(10, 24),
(10, 37),
(11, 1),
(11, 6),
(11, 11),
(11, 19),
(11, 23),
(11, 24),
(11, 33),
(11, 34),
(11, 36),
(11, 37),
(11, 38),
(11, 42),
(11, 43),
(12, 1),
(12, 6),
(12, 11),
(12, 19),
(12, 23),
(12, 24),
(12, 33),
(12, 34),
(12, 36),
(12, 37),
(12, 38),
(12, 43),
(12, 44),
(13, 1),
(13, 6),
(13, 11),
(13, 19),
(13, 23),
(13, 24),
(13, 33),
(13, 34),
(13, 35),
(13, 36),
(13, 37),
(13, 38),
(13, 43),
(13, 44),
(14, 1),
(14, 6),
(14, 11),
(14, 19),
(14, 23),
(14, 24),
(14, 33),
(14, 34),
(14, 35),
(14, 36),
(14, 37),
(14, 38),
(14, 43),
(14, 44),
(15, 11),
(15, 19),
(15, 21),
(15, 23),
(15, 24),
(15, 33),
(15, 34),
(15, 35),
(15, 36),
(15, 37),
(15, 38),
(15, 43),
(15, 44),
(15, 47),
(16, 11),
(16, 19),
(16, 21),
(16, 23),
(16, 24),
(16, 33),
(16, 34),
(16, 35),
(16, 36),
(16, 37),
(16, 38),
(16, 43),
(16, 45),
(16, 47),
(17, 11),
(17, 19),
(17, 21),
(17, 23),
(17, 24),
(17, 33),
(17, 34),
(17, 35),
(17, 36),
(17, 38),
(17, 43),
(17, 46),
(17, 47);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `content` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `lesson_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `name`) VALUES
(1, 'Mầm non'),
(2, 'Tiểu học'),
(3, 'Trung học cơ sở'),
(4, 'Trung học phổ thông'),
(5, 'Đại học - Cao đẳng');

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `url` varchar(200) CHARACTER SET utf8 NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `name`, `url`, `created_at`, `approved`, `type`, `class_id`, `user_id`, `subject_id`) VALUES
(1, 'Bài giảng âm nhạc lớp 6 tiết 1', 'AmNhacLop6-HaNoi.zip', '2016-03-02 13:12:39', 0, NULL, 11, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `subject_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subject_name`) VALUES
(1, 'Âm nhạc'),
(2, 'Chính tả'),
(37, 'Công nghệ'),
(38, 'GDCD - GDNGLL'),
(46, 'Giải tích'),
(43, 'Hình học'),
(35, 'Hóa học'),
(4, 'Học vần'),
(5, 'Kể chuyện'),
(22, 'Khoa học'),
(20, 'Kĩ thuật'),
(24, 'Lịch sử'),
(13, 'Luyện từ và câu'),
(6, 'Mỹ thuật'),
(41, 'Ngoại ngữ'),
(47, 'Ngoại ngữ khác'),
(33, 'Ngữ văn'),
(36, 'Sinh học'),
(42, 'Số học'),
(14, 'Tập làm văn'),
(8, 'Tập viết'),
(7, 'Tập đọc'),
(21, 'Thể dục'),
(9, 'Thủ công'),
(11, 'Tiếng Anh'),
(19, 'Tin học'),
(10, 'Toán học'),
(12, 'Tự nhiên xã hội'),
(34, 'Vật lí'),
(44, 'Đại số'),
(45, 'Đại số và giải tích'),
(3, 'Đạo đức'),
(23, 'Địa lí');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 NOT NULL,
  `password_digest` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `remember_digest` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `email` varchar(45) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password_digest`, `remember_digest`, `name`, `email`) VALUES
(1, 'admin', '$2a$10$tE8n/9ecNRb6GVi2EYaOZ.NSllQtX5XNcnH0eJAvgifgTt9P8LDj.', '$2a$10$88..t2vVRC1jxGlRaF9N.O7tNxPUsbDZQr2H27dlQ9T2CoQbZaDlq', 'Phạm Trọng Tri', 'trongtri160592@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_has_role`
--

CREATE TABLE `user_has_role` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`),
  ADD KEY `fk_classes_grades1_idx` (`grade_id`);

--
-- Indexes for table `class_has_subjects`
--
ALTER TABLE `class_has_subjects`
  ADD PRIMARY KEY (`class_id`,`subject_id`),
  ADD KEY `fk_classes_has_subjects_subjects1_idx` (`subject_id`),
  ADD KEY `fk_classes_has_subjects_classes1_idx` (`class_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`,`user_id`,`lesson_id`),
  ADD KEY `fk_comments_users1_idx` (`user_id`),
  ADD KEY `fk_comments_lessons1_idx` (`lesson_id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`,`class_id`,`user_id`,`subject_id`),
  ADD KEY `fk_lessons_classes1_idx` (`class_id`),
  ADD KEY `fk_lessons_users1_idx` (`user_id`),
  ADD KEY `fk_lessons_subjects1_idx` (`subject_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD UNIQUE KEY `unique_schema_migrations` (`version`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subject_name_UNIQUE` (`subject_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- Indexes for table `user_has_role`
--
ALTER TABLE `user_has_role`
  ADD PRIMARY KEY (`role_id`,`user_id`),
  ADD KEY `fk_roles_has_users_users1_idx` (`user_id`),
  ADD KEY `fk_roles_has_users_roles1_idx` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `fk_classes_grades1` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
  ADD CONSTRAINT `fk_lessons_subjects1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_lessons_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user_has_role`
--
ALTER TABLE `user_has_role`
  ADD CONSTRAINT `fk_roles_has_users_roles1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_roles_has_users_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

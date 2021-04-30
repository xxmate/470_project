-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2021 at 05:36 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(100) NOT NULL,
  `requser` varchar(100) NOT NULL,
  `teauser` varchar(100) NOT NULL,
  `coursetitle` varchar(100) NOT NULL,
  `comment` varchar(100) NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `requser`, `teauser`, `coursetitle`, `comment`, `time`) VALUES
(1, 'faim', 'abrar', 'CSE110', 'HIU', 'All ady'),
(2, 'faim', 'abrar', 'CSE221', 'Sdasdasd', 'All ady'),
(3, 'faim', 'niaz', 'EEE420', 'Hello', 'Today'),
(4, 'faim', 'naqi', 'CSE335', 'Nothing', 'Tomorrow'),
(5, 'fahim', 'testt', 'CSE455', 'No', 'Monday'),
(6, 'fahim', 'abrar', 'CSE123', 'No', 'Monday'),
(7, 'fahim', 'testt', 'EER222', 'HH', 'Sunday'),
(8, 'fahim', 'abrar', 'TST222', 'no', 'no'),
(9, 'fahim', 'testt', 'TST555', 'sdfdsf', 'dsafasfd'),
(10, 'fahim', 'testt', 'CSE455', 'no', 'dsafasfd'),
(11, 'customer', '', 'birhday', '', '7 pm'),
(12, 'customer', '', 'weeding', '', '2 .pm');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(6) UNSIGNED NOT NULL,
  `name` varchar(6) NOT NULL,
  `description` text NOT NULL,
  `teacher` varchar(100) NOT NULL,
  `coursetype` varchar(3) NOT NULL DEFAULT 'CSE',
  `appointment` varchar(100) NOT NULL,
  `user` varchar(50) NOT NULL,
  `longdes` varchar(1000) NOT NULL,
  `filelink` varchar(100) NOT NULL,
  `prereq` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `name`, `description`, `teacher`, `coursetype`, `appointment`, `user`, `longdes`, `filelink`, `prereq`) VALUES
(49, 'Weddin', 'Our Event  Management & Wedding  Planning  offers you a user-friendly  environment  for  facility  scheduling  and  event  management.', '', 'CSE', '7.00 pm', 'mod', 'Our Event  Management & Wedding  Planning  offers you a user-friendly  environment  for  facility  scheduling  and  event  management.', '', ''),
(50, 'Birthd', 'Our Event  Management & Wedding  Planning  offers you a user-friendly  environment  for  facility  scheduling  and  event  management.', '', 'CSE', '2 pm', 'mod', 'Our Event  Management & Wedding  Planning  offers you a user-friendly  environment  for  facility  scheduling  and  event  management.', '', '2 pm'),
(51, 'Holud ', 'short event description', '', 'CSE', '3 pm', 'mod', 'long event description', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `info_student`
--

CREATE TABLE `info_student` (
  `uname` varchar(50) CHARACTER SET latin1 NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `institution` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` int(10) NOT NULL,
  `major` varchar(20) NOT NULL,
  `bio` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `info_student`
--

INSERT INTO `info_student` (`uname`, `fullname`, `institution`, `address`, `phone`, `major`, `bio`) VALUES
('customer', 'Sanzid Al Nahian', 'Brac University', '225 Moghbazar', 15269863, '', 'Lecturer at Brac University');

-- --------------------------------------------------------

--
-- Table structure for table `info_teacher`
--

CREATE TABLE `info_teacher` (
  `uname` varchar(50) CHARACTER SET latin1 NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `education` varchar(100) NOT NULL,
  `email` varchar(20) NOT NULL,
  `availability` varchar(20) NOT NULL,
  `bio` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `userstatus` varchar(8) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`, `userstatus`) VALUES
(13, 'admin', '$2y$10$sl9tj58eSLdks5GausH1pueXfMDWOgaaJ4f41fMMeCr6ad2WCevju', '2019-07-22 16:36:11', 'admin'),
(21, 'mod', '$2y$10$2NidCbiGqLosuGHx5/N.Kedsnm7X1XO/FhKMMnZZWIWSS.8zD.Xi2', '2021-04-30 19:35:22', 'teacher'),
(22, 'customer', '$2y$10$kipHwrFS9.AjNW69xR9ttOBWPeLOY.iiraHNOc/saGVzqiTe6YrjG', '2021-04-30 19:38:19', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `user` (`user`);

--
-- Indexes for table `info_student`
--
ALTER TABLE `info_student`
  ADD PRIMARY KEY (`uname`);

--
-- Indexes for table `info_teacher`
--
ALTER TABLE `info_teacher`
  ADD PRIMARY KEY (`uname`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `userstatus` (`userstatus`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `info_student`
--
ALTER TABLE `info_student`
  ADD CONSTRAINT `info_student_ibfk_1` FOREIGN KEY (`uname`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `info_teacher`
--
ALTER TABLE `info_teacher`
  ADD CONSTRAINT `info_teacher_ibfk_1` FOREIGN KEY (`uname`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

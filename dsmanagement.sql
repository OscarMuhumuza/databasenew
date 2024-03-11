-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 11, 2024 at 08:05 PM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dsmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
CREATE TABLE IF NOT EXISTS `courses` (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `course_name` varchar(50) DEFAULT NULL,
  `duration_hours` int DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`, `duration_hours`, `price`) VALUES
(1, 'classA', 2, 200000.00),
(2, 'classB', 2, 300000.00),
(3, 'classCM', 2, 400000.00),
(4, 'classDL', 2, 500000.00),
(5, 'classDM', 2, 450000.00),
(6, 'classDH', 2, 600000.00),
(7, 'classE', 2, 700000.00),
(8, 'classF', 2, 650000.00),
(9, 'classG', 2, 750000.00),
(10, 'classH', 2, 800000.00);

-- --------------------------------------------------------

--
-- Table structure for table `driving_tests`
--

DROP TABLE IF EXISTS `driving_tests`;
CREATE TABLE IF NOT EXISTS `driving_tests` (
  `test_id` int NOT NULL AUTO_INCREMENT,
  `request_id` int DEFAULT NULL,
  `instructor_id` int DEFAULT NULL,
  `vehicle_id` int DEFAULT NULL,
  `test_date` date DEFAULT NULL,
  `test_result` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`test_id`),
  KEY `request_id` (`request_id`),
  KEY `instructor_id` (`instructor_id`),
  KEY `vehicle_id` (`vehicle_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `driving_tests`
--

INSERT INTO `driving_tests` (`test_id`, `request_id`, `instructor_id`, `vehicle_id`, `test_date`, `test_result`) VALUES
(1, NULL, NULL, NULL, '2020-03-12', 'passed'),
(2, NULL, NULL, NULL, '2022-03-12', 'passed'),
(3, NULL, NULL, NULL, '2021-03-12', 'passed'),
(4, NULL, NULL, NULL, '2024-04-23', 'passed'),
(5, NULL, NULL, NULL, '2023-03-12', 'passed'),
(6, NULL, NULL, NULL, '2020-03-12', 'passed'),
(7, NULL, NULL, NULL, '2023-04-23', 'passed'),
(8, NULL, NULL, NULL, '2021-03-12', 'passed'),
(9, NULL, NULL, NULL, '2024-03-12', 'passed'),
(10, NULL, NULL, NULL, '2021-03-12', 'passed');

-- --------------------------------------------------------

--
-- Table structure for table `driving_test_requests`
--

DROP TABLE IF EXISTS `driving_test_requests`;
CREATE TABLE IF NOT EXISTS `driving_test_requests` (
  `request_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `preferred_date` date DEFAULT NULL,
  `preferred_time` time DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`request_id`),
  KEY `student_id` (`student_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `driving_test_requests`
--

INSERT INTO `driving_test_requests` (`request_id`, `student_id`, `preferred_date`, `preferred_time`, `status`) VALUES
(1, NULL, '2020-12-01', '10:00:00', 'done'),
(2, NULL, '2022-12-03', '11:00:00', 'done'),
(3, NULL, '2022-03-12', '10:00:00', 'done'),
(4, NULL, '2022-03-23', '11:00:00', 'done'),
(5, NULL, '2023-03-12', '10:30:00', 'done'),
(6, NULL, '2023-03-12', '11:30:00', 'done'),
(7, NULL, '2024-04-21', '10:45:00', 'done'),
(8, NULL, '2023-02-12', '10:00:00', 'done'),
(9, NULL, '2020-04-12', '11:45:00', 'done'),
(10, NULL, '2024-04-23', '10:00:00', 'done');

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

DROP TABLE IF EXISTS `enrollments`;
CREATE TABLE IF NOT EXISTS `enrollments` (
  `enrollment_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  `enrollment_date` date DEFAULT NULL,
  `completion_status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`enrollment_id`),
  KEY `student_id` (`student_id`),
  KEY `course_id` (`course_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`enrollment_id`, `student_id`, `course_id`, `enrollment_date`, `completion_status`) VALUES
(1, NULL, NULL, '2023-02-22', 'done'),
(2, NULL, NULL, '2923-03-21', 'done'),
(3, NULL, NULL, '2022-03-21', 'done'),
(4, NULL, NULL, '2020-12-07', 'done'),
(5, NULL, NULL, '2024-03-11', 'pending'),
(6, NULL, NULL, '2022-03-12', 'done'),
(7, NULL, NULL, '2023-04-12', 'done'),
(8, NULL, NULL, '2024-03-02', 'pending'),
(9, NULL, NULL, '2023-04-23', 'done'),
(10, NULL, NULL, '2024-03-12', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `feedback_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `instructor_id` int DEFAULT NULL,
  `rating` decimal(10,2) DEFAULT NULL,
  `comments` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`feedback_id`),
  KEY `student_id` (`student_id`),
  KEY `instructor_id` (`instructor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `student_id`, `instructor_id`, `rating`, `comments`) VALUES
(1, NULL, NULL, 10.00, 'good'),
(2, NULL, NULL, 9.00, 'fair'),
(3, NULL, NULL, 15.00, 'perfect'),
(4, NULL, NULL, 10.00, 'good'),
(5, NULL, NULL, 12.00, 'fair'),
(6, NULL, NULL, 20.00, 'exellent'),
(7, NULL, NULL, 10.00, 'good'),
(8, NULL, NULL, 20.00, 'exellent'),
(9, NULL, NULL, 15.00, 'fair'),
(10, NULL, NULL, 20.00, 'exellent');

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

DROP TABLE IF EXISTS `instructors`;
CREATE TABLE IF NOT EXISTS `instructors` (
  `instructor_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `license_number` varchar(45) DEFAULT NULL,
  `date_registered` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`instructor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`instructor_id`, `first_name`, `last_name`, `email`, `phone_number`, `license_number`, `date_registered`) VALUES
(1, 'bakashaba', 'solomon', 'solo@gmail.com', '0876567897', '878854', '2024-03-11 11:19:30'),
(2, 'isah', 'ramah', 'isah@gmail.com', '0789776543', '786543', '2024-03-11 11:19:30'),
(3, 'natuha', 'bruce', 'bruce@gmail.com', '0789889876', '647656', '2024-03-11 11:19:30'),
(4, 'hashish', 'ben', 'ben@gmail.com', '0789654345', '9876576', '2024-03-11 11:19:30'),
(5, 'griven', 'benon', 'benon@gmail.com', '0789876545', '562735', '2024-03-11 11:19:30'),
(6, 'atushabe', 'given', 'given@gmail.com', '0789665432', '987576', '2024-03-11 11:19:30'),
(7, 'hatusha', 'gin', 'gin@gmail.com', '0789654345', '8645746', '2024-03-11 11:19:30'),
(8, 'oshaba', 'osbert', 'osbert@gmail.com', '0789675876', '754657', '2024-03-11 11:19:30'),
(9, 'bashija', 'jose', 'jose@gmail.com', '0789677876', '987898', '2024-03-11 11:19:30'),
(10, 'katuhebwa', 'rose', 'rose@gmail.com', '0789677765', '876789', '2024-03-11 11:19:30');

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

DROP TABLE IF EXISTS `lessons`;
CREATE TABLE IF NOT EXISTS `lessons` (
  `lesson_id` int NOT NULL AUTO_INCREMENT,
  `instructor_id` int DEFAULT NULL,
  `student_id` int DEFAULT NULL,
  `start_time` date DEFAULT NULL,
  `end_time` date DEFAULT NULL,
  PRIMARY KEY (`lesson_id`),
  KEY `instructor_id` (`instructor_id`),
  KEY `student_id` (`student_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`lesson_id`, `instructor_id`, `student_id`, `start_time`, `end_time`) VALUES
(1, NULL, NULL, '2020-01-12', '2020-02-12'),
(2, NULL, NULL, '2020-02-21', '2020-03-21'),
(3, NULL, NULL, '2021-02-21', '2021-03-21'),
(4, NULL, NULL, '2023-03-12', '2023-04-12'),
(5, NULL, NULL, '2020-03-12', '2020-04-12'),
(6, NULL, NULL, '2023-03-21', '2023-04-21'),
(7, NULL, NULL, '2024-03-01', '2024-04-22'),
(8, NULL, NULL, '2023-03-21', '2023-04-21'),
(9, NULL, NULL, '2020-03-21', '2020-04-21'),
(10, NULL, NULL, '2024-03-21', '2024-04-21');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `student_id` (`student_id`),
  KEY `course_id` (`course_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `student_id`, `course_id`, `amount`, `payment_date`, `payment_method`) VALUES
(1, NULL, NULL, 200000.00, '2020-03-22', 'cash'),
(2, NULL, NULL, 300000.00, '2020-03-04', 'cash'),
(3, NULL, NULL, 200000.00, '2022-03-21', 'cash'),
(4, NULL, NULL, 300000.00, '2023-04-21', 'cash'),
(5, NULL, NULL, 400000.00, '2024-04-21', 'cash'),
(6, NULL, NULL, 300000.00, '2020-03-21', 'cash'),
(7, NULL, NULL, 450000.00, '2022-04-21', 'cash'),
(8, NULL, NULL, 490000.00, '2023-03-21', 'cash'),
(9, NULL, NULL, 300000.00, '2023-04-03', 'cash'),
(10, NULL, NULL, 400000.00, '2024-04-03', 'cash');

-- --------------------------------------------------------

--
-- Table structure for table `stdinfo`
--

DROP TABLE IF EXISTS `stdinfo`;
CREATE TABLE IF NOT EXISTS `stdinfo` (
  `id` int DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `date_registered` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`student_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `first_name`, `last_name`, `email`, `phone_number`, `address`, `date_registered`) VALUES
(1, 'muhumuza', 'oscar', 'muhuxoscar@gmail.com', '0772659134', 'mbarara', '2024-03-11 11:01:05'),
(2, 'habbasa', 'paul', 'paul@gmail.com', '0773456789', 'kampala', '2024-03-11 11:01:05'),
(3, 'katushabe', 'prize', 'prize@gmail.com', '0987489032', 'mbarara', '2024-03-11 11:01:05'),
(4, 'natukunda', 'blessed', 'blest@gmail.com', '0987478329', 'kampala', '2024-03-11 11:01:05'),
(5, 'bash', 'solomon', 'solo@gmail.com', '0789342746', 'ntungamo', '2024-03-11 11:01:05'),
(6, 'nash', 'jane', 'jane@gmail.com', '0789774832', 'mbarara', '2024-03-11 11:01:05'),
(7, 'moni', 'john', 'john@gmail.com', '0987643678', 'kampala', '2024-03-11 11:01:05'),
(8, 'opio', 'joshua', 'opio@gmail.com', '0789778643', 'ntungamo', '2024-03-11 11:01:05'),
(9, 'omon', 'peter', 'peter@gmail.com', '0986765776', 'kampala', '2024-03-11 11:01:05'),
(10, 'amanya', 'joshua', 'joshua@gmail.com', '0789876542', 'mbarara', '2024-03-11 11:01:05');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE IF NOT EXISTS `vehicles` (
  `vehicle_id` int NOT NULL AUTO_INCREMENT,
  `make` varchar(20) DEFAULT NULL,
  `model` varchar(20) DEFAULT NULL,
  `year` year DEFAULT NULL,
  `license_plate` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`vehicle_id`, `make`, `model`, `year`, `license_plate`) VALUES
(1, 'japan', 'wish', '2008', 'uaz223b'),
(2, 'japan', 'mark2', '2009', 'uab876y'),
(3, 'japan', 'wish', '2006', 'ubz675r'),
(4, 'japan', 'premio', '2008', 'uba223h'),
(5, 'japan', 'mark2', '2007', 'uba365t'),
(6, 'japan', 'wish', '2007', 'uba324r'),
(7, 'japan', 'sente', '2009', 'ube231h'),
(8, 'japan', 'passo', '2008', 'ubc234j'),
(9, 'japan', 'haience', '2009', 'ubg234j'),
(10, 'japan', 'wish', '2008', 'uax231h');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

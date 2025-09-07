-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2025 at 02:33 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_data`
--

CREATE TABLE `api_data` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `api_data`
--

INSERT INTO `api_data` (`id`, `name`, `email`, `city`) VALUES
(1, 'Emily Johnson', 'emily.johnson@x.dummyjson.com', 'Phoenix'),
(2, 'Michael Williams', 'michael.williams@x.dummyjson.com', 'Houston'),
(3, 'Sophia Brown', 'sophia.brown@x.dummyjson.com', 'Washington'),
(4, 'James Davis', 'james.davis@x.dummyjson.com', 'Seattle'),
(5, 'Emma Miller', 'emma.miller@x.dummyjson.com', 'Jacksonville'),
(6, 'Olivia Wilson', 'olivia.wilson@x.dummyjson.com', 'Fort Worth'),
(7, 'Alexander Jones', 'alexander.jones@x.dummyjson.com', 'Indianapolis'),
(8, 'Ava Taylor', 'ava.taylor@x.dummyjson.com', 'Fort Worth'),
(9, 'Ethan Martinez', 'ethan.martinez@x.dummyjson.com', 'San Antonio'),
(10, 'Isabella Anderson', 'isabella.anderson@x.dummyjson.com', 'New York'),
(11, 'Liam Garcia', 'liam.garcia@x.dummyjson.com', 'Denver'),
(12, 'Mia Rodriguez', 'mia.rodriguez@x.dummyjson.com', 'Jacksonville'),
(13, 'Noah Hernandez', 'noah.hernandez@x.dummyjson.com', 'New York'),
(14, 'Charlotte Lopez', 'charlotte.lopez@x.dummyjson.com', 'Columbus'),
(15, 'William Gonzalez', 'william.gonzalez@x.dummyjson.com', 'San Jose'),
(16, 'Avery Perez', 'avery.perez@x.dummyjson.com', 'Columbus'),
(17, 'Evelyn Sanchez', 'evelyn.sanchez@x.dummyjson.com', 'San Diego'),
(18, 'Logan Torres', 'logan.torres@x.dummyjson.com', 'Columbus'),
(19, 'Abigail Rivera', 'abigail.rivera@x.dummyjson.com', 'Chicago'),
(20, 'Jackson Evans', 'jackson.evans@x.dummyjson.com', 'New York'),
(21, 'Madison Collins', 'madison.collins@x.dummyjson.com', 'Philadelphia'),
(22, 'Elijah Stewart', 'elijah.stewart@x.dummyjson.com', 'Columbus'),
(23, 'Chloe Morales', 'chloe.morales@x.dummyjson.com', 'Dallas'),
(24, 'Mateo Nguyen', 'mateo.nguyen@x.dummyjson.com', 'Columbus'),
(25, 'Harper Kelly', 'harper.kelly@x.dummyjson.com', 'Philadelphia'),
(26, 'Evelyn Gonzalez', 'evelyn.gonzalez@x.dummyjson.com', 'Dallas'),
(27, 'Daniel Cook', 'daniel.cook@x.dummyjson.com', 'Los Angeles'),
(28, 'Lily Lee', 'lily.lee@x.dummyjson.com', 'Phoenix'),
(29, 'Henry Hill', 'henry.hill@x.dummyjson.com', 'Indianapolis'),
(30, 'Addison Wright', 'addison.wright@x.dummyjson.com', 'San Francisco'),
(31, 'Emily Johnson', 'emily.johnson@x.dummyjson.com', 'Phoenix'),
(32, 'Michael Williams', 'michael.williams@x.dummyjson.com', 'Houston'),
(33, 'Sophia Brown', 'sophia.brown@x.dummyjson.com', 'Washington'),
(34, 'James Davis', 'james.davis@x.dummyjson.com', 'Seattle'),
(35, 'Emma Miller', 'emma.miller@x.dummyjson.com', 'Jacksonville'),
(36, 'Olivia Wilson', 'olivia.wilson@x.dummyjson.com', 'Fort Worth'),
(37, 'Alexander Jones', 'alexander.jones@x.dummyjson.com', 'Indianapolis'),
(38, 'Ava Taylor', 'ava.taylor@x.dummyjson.com', 'Fort Worth'),
(39, 'Ethan Martinez', 'ethan.martinez@x.dummyjson.com', 'San Antonio'),
(40, 'Isabella Anderson', 'isabella.anderson@x.dummyjson.com', 'New York'),
(41, 'Liam Garcia', 'liam.garcia@x.dummyjson.com', 'Denver'),
(42, 'Mia Rodriguez', 'mia.rodriguez@x.dummyjson.com', 'Jacksonville'),
(43, 'Noah Hernandez', 'noah.hernandez@x.dummyjson.com', 'New York'),
(44, 'Charlotte Lopez', 'charlotte.lopez@x.dummyjson.com', 'Columbus'),
(45, 'William Gonzalez', 'william.gonzalez@x.dummyjson.com', 'San Jose'),
(46, 'Avery Perez', 'avery.perez@x.dummyjson.com', 'Columbus'),
(47, 'Evelyn Sanchez', 'evelyn.sanchez@x.dummyjson.com', 'San Diego'),
(48, 'Logan Torres', 'logan.torres@x.dummyjson.com', 'Columbus'),
(49, 'Abigail Rivera', 'abigail.rivera@x.dummyjson.com', 'Chicago'),
(50, 'Jackson Evans', 'jackson.evans@x.dummyjson.com', 'New York'),
(51, 'Madison Collins', 'madison.collins@x.dummyjson.com', 'Philadelphia'),
(52, 'Elijah Stewart', 'elijah.stewart@x.dummyjson.com', 'Columbus'),
(53, 'Chloe Morales', 'chloe.morales@x.dummyjson.com', 'Dallas'),
(54, 'Mateo Nguyen', 'mateo.nguyen@x.dummyjson.com', 'Columbus'),
(55, 'Harper Kelly', 'harper.kelly@x.dummyjson.com', 'Philadelphia'),
(56, 'Evelyn Gonzalez', 'evelyn.gonzalez@x.dummyjson.com', 'Dallas'),
(57, 'Daniel Cook', 'daniel.cook@x.dummyjson.com', 'Los Angeles'),
(58, 'Lily Lee', 'lily.lee@x.dummyjson.com', 'Phoenix'),
(59, 'Henry Hill', 'henry.hill@x.dummyjson.com', 'Indianapolis'),
(60, 'Addison Wright', 'addison.wright@x.dummyjson.com', 'San Francisco');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_data`
--
ALTER TABLE `api_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `api_data`
--
ALTER TABLE `api_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

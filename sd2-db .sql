-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Dec 05, 2022 at 10:47 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sd2-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `table_id` varchar(10) DEFAULT NULL,
  `booked_date` date DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `booking_status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`table_id`, `booked_date`, `name`, `email`, `booking_status`) VALUES
('01', '2022-11-30', 'athira', 'athira@gmail.com', 'Booked'),
('02', '2022-12-01', 'athira', 'athira@gmail.com', 'Booked'),
('03', '2022-12-03', 'athira', 'athira@gmail.com', 'Booked'),
('01', '2022-12-01', 'saravanan', 'sara@gmail.com', 'Booked'),
('02', '2022-12-01', 'saravanan', 'sara@gmail.com', 'Booked'),
('03', '2022-12-01', 'saravanan', 'sara@gmail.com', 'Booked'),
('03', '2022-12-02', 'saravanan', 'sara@gmail.com', 'Booked'),
('04', '2022-12-02', 'saravanan', 'sara@gmail.com', 'Booked'),
('05', '2022-12-02', 'saravanan', 'sara@gmail.com', 'Booked'),
('06', '2022-12-02', 'saravanan', 'sara@gmail.com', 'Booked'),
('06', '2022-12-03', 'athira', 'athira@gmail.com', 'Booked'),
('05', '2022-12-04', 'dvsv', 'DSVDv', 'Booked'),
('05', '2022-12-05', 'dvsv', 'DSVDv', 'Booked'),
('05', '2022-12-06', 'dvsv', 'DSVDv', 'Booked'),
('05', '2022-12-09', 'safs', 'szfvzsv', 'Booked'),
('01', '2022-12-02', 'Saravanan', 'sara@gmail.com', 'Booked'),
('02', '2022-12-02', 'Slknf', 'qnjdvkn', 'Booked'),
('04', '2022-12-01', 'SDVV', 'vxcv ', 'Booked'),
('05', '2022-12-01', 'Irfana', 'irfana@gmail.com', 'Booked'),
('01', '2022-12-07', 'Ifrana', 'irfana@gmail.com', 'Booked'),
('06', '2022-12-10', 'd', 'dvxc', 'Booked'),
('06', '2022-12-01', 'vc ', 'vc ', 'Booked');

-- --------------------------------------------------------

--
-- Table structure for table `Modules`
--

CREATE TABLE `Modules` (
  `code` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Modules`
--

INSERT INTO `Modules` (`code`, `name`) VALUES
('CMP020C101', 'Software Development 1'),
('CMP020C102', 'Computer Systems'),
('CMP020C103', 'Mathematics for Computer Science'),
('CMP020C104', 'Software Development 2'),
('CMP020C105', 'Computing and Society'),
('CMP020C106', 'Databases'),
('PHY020C101', 'Physics Skills and Techniques'),
('PHY020C102', 'Mathematics for Physics'),
('PHY020C103', 'Computation for Physics'),
('PHY020C106', 'Introduction to Astrophysics');

-- --------------------------------------------------------

--
-- Table structure for table `Programmes`
--

CREATE TABLE `Programmes` (
  `id` varchar(8) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Programmes`
--

INSERT INTO `Programmes` (`id`, `name`) VALUES
('09UU0001', 'BSC Computer Science'),
('09UU0002', 'BEng Software Engineering'),
('09UU0003', 'BSc Physics');

-- --------------------------------------------------------

--
-- Table structure for table `Programme_Modules`
--

CREATE TABLE `Programme_Modules` (
  `programme` varchar(8) NOT NULL,
  `module` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Programme_Modules`
--

INSERT INTO `Programme_Modules` (`programme`, `module`) VALUES
('09UU0001', 'CMP020C101'),
('09UU0001', 'CMP020C102'),
('09UU0001', 'CMP020C103'),
('09UU0001', 'CMP020C104'),
('09UU0001', 'CMP020C105'),
('09UU0001', 'CMP020C106'),
('09UU0002', 'CMP020C101'),
('09UU0002', 'CMP020C102'),
('09UU0002', 'CMP020C103'),
('09UU0002', 'CMP020C104'),
('09UU0002', 'CMP020C105'),
('09UU0002', 'CMP020C106'),
('09UU0003', 'PHY020C101'),
('09UU0003', 'PHY020C102'),
('09UU0003', 'PHY020C103'),
('09UU0003', 'PHY020C106');

-- --------------------------------------------------------

--
-- Table structure for table `Students`
--

CREATE TABLE `Students` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Students`
--

INSERT INTO `Students` (`id`, `name`, `note`) VALUES
(1, 'Kevin Chalmers', 'New note'),
(2, 'Lisa Haskel', NULL),
(3, 'Arturo Araujo', NULL),
(4, 'Sobhan Tehrani', NULL),
(100, 'Oge Okonor', NULL),
(200, 'Kimia Aksir', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Student_Programme`
--

CREATE TABLE `Student_Programme` (
  `id` int DEFAULT NULL,
  `programme` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Student_Programme`
--

INSERT INTO `Student_Programme` (`id`, `programme`) VALUES
(1, '09UU0002'),
(1, '09UU0002'),
(2, '09UU0001'),
(3, '09UU0003'),
(4, '09UU0001');

-- --------------------------------------------------------

--
-- Table structure for table `table_booking`
--

CREATE TABLE `table_booking` (
  `table_id` varchar(10) DEFAULT NULL,
  `table_description` varchar(20) DEFAULT NULL,
  `table_status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `table_booking`
--

INSERT INTO `table_booking` (`table_id`, `table_description`, `table_status`) VALUES
('01', 'Table 1', 'booked'),
('02', 'Table 2', 'Available'),
('03', 'Table 3', 'Available'),
('04', 'Table 4', 'Available'),
('05', 'Table 5', 'Available'),
('06', 'Table 6', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `test_table`
--

CREATE TABLE `test_table` (
  `id` int NOT NULL,
  `name` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `test_table`
--

INSERT INTO `test_table` (`id`, `name`) VALUES
(1, 'Lisa'),
(2, 'Kimia');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Modules`
--
ALTER TABLE `Modules`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `Programmes`
--
ALTER TABLE `Programmes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Programme_Modules`
--
ALTER TABLE `Programme_Modules`
  ADD KEY `programme` (`programme`),
  ADD KEY `module` (`module`);

--
-- Indexes for table `Students`
--
ALTER TABLE `Students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Student_Programme`
--
ALTER TABLE `Student_Programme`
  ADD KEY `id` (`id`),
  ADD KEY `programme` (`programme`);

--
-- Indexes for table `test_table`
--
ALTER TABLE `test_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `test_table`
--
ALTER TABLE `test_table`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Programme_Modules`
--
ALTER TABLE `Programme_Modules`
  ADD CONSTRAINT `programme_modules_ibfk_1` FOREIGN KEY (`programme`) REFERENCES `Programmes` (`id`),
  ADD CONSTRAINT `programme_modules_ibfk_2` FOREIGN KEY (`module`) REFERENCES `Modules` (`code`);

--
-- Constraints for table `Student_Programme`
--
ALTER TABLE `Student_Programme`
  ADD CONSTRAINT `student_programme_ibfk_1` FOREIGN KEY (`id`) REFERENCES `Students` (`id`),
  ADD CONSTRAINT `student_programme_ibfk_2` FOREIGN KEY (`programme`) REFERENCES `Programmes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

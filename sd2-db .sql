-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db
<<<<<<< HEAD
-- Generation Time: Dec 07, 2022 at 10:56 PM
=======
-- Generation Time: Dec 05, 2022 at 10:47 AM
>>>>>>> 742338783b19c4388cb60960f35fc1f9be54b327
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
<<<<<<< HEAD
  `booking_status` varchar(20) DEFAULT NULL,
  `booking_id` int NOT NULL
=======
  `booking_status` varchar(20) DEFAULT NULL
>>>>>>> 742338783b19c4388cb60960f35fc1f9be54b327
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `booking_details`
--

<<<<<<< HEAD
INSERT INTO `booking_details` (`table_id`, `booked_date`, `name`, `email`, `booking_status`, `booking_id`) VALUES
('01', '2022-12-20', 'Saravanan', 'sara@gmail.com', 'Booked', 1),
('02', '2022-12-08', 'Irfana', 'irfana@gmail.com', 'Booked', 2),
('06', '2022-12-08', 'Athira', 'athira@gmail.com', 'Booked', 3),
('01', '2022-12-09', 'Saravanan', 'sara@gmail.com', 'Booked', 4),
('03', '2022-12-10', 'Saravanan', 'sara@gmail.com', 'Booked', 5),
('04', '2022-12-10', 'Saravanan', 'sara@gmail.com', 'Booked', 6),
('04', '2022-12-11', 'Saravanan', 'sara@gmail.com', 'Booked', 7),
('01', '2022-12-11', 'Saravanan', 'sara@gmail.com', 'Booked', 8),
('01', '2022-12-12', 'Irfana', 'sara@gmail.com', 'Booked', 9),
('06', '2022-12-12', 'Irfana', 'sara@gmail.com', 'Booked', 10),
('05', '2022-12-13', 'Surya', 'surya@gmail.com', 'Booked', 11);



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
-- Table structure for table `table_details`
--

CREATE TABLE `table_details` (
  `table_id` varchar(10) DEFAULT NULL,
  `table_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `no_of_seats` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `table_details`
--

INSERT INTO `table_details` (`table_id`, `table_number`, `no_of_seats`) VALUES
('01', 'Table 1', NULL),
('02', 'Table 2', NULL),
('03', 'Table 3', NULL),
('04', 'Table 4', NULL),
('05', 'Table 5', NULL),
('06', 'Table 6', NULL);

--
-- Indexes for dumped tables
--

--
<<<<<<< HEAD
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`booking_id`);
=======
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
>>>>>>> 742338783b19c4388cb60960f35fc1f9be54b327

--
-- AUTO_INCREMENT for dumped tables
--

--
<<<<<<< HEAD
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `booking_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
=======
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
>>>>>>> 742338783b19c4388cb60960f35fc1f9be54b327
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

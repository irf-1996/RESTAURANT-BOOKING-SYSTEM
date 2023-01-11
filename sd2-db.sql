-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jan 11, 2023 at 08:57 PM
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
('06', '2022-12-01', 'vc ', 'vc ', 'Booked'),
('03', '2022-12-07', 'athira', 'athira@gmial.com', 'Booked'),
('06', '2022-12-07', 'athira', 'aa.gmial.com', 'Booked'),
('02', '2022-12-07', 'athia', '@gmail.com', 'Booked');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `item_id` varchar(10) DEFAULT NULL,
  `item_category` varchar(20) DEFAULT NULL,
  `item_name` varchar(30) DEFAULT NULL,
  `item_price` varchar(10) DEFAULT NULL,
  `item_description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`item_id`, `item_category`, `item_name`, `item_price`, `item_description`) VALUES
('01', 'Breakfast', 'Idly', '$ 3', '2 Idly'),
('02', 'Breakfast', 'Dosa', '$ 2', 'Crispy dosa serrved with chutny and sambar'),
('03', 'Break', 'Vada', '$ 3', '2 vada'),
('04', 'Breakfast', 'Pongal', '$ 3', 'Pongal serrved with chutny and sambar'),
('05', 'Breakfast', 'Pongal', '$ 5', ''),
('05', 'Breakfast', 'Pongal', '$ 5', ''),
('05', 'Breakfast', 'Pongal', '$ 5', ''),
('05', 'Breakfast', 'Pongal', '$ 5', ''),
('07', 'Dinner', 'Parota', '$ 2', 'Parota served with salna'),
('09', 'Fresh Juice', 'Orange Juice', '$ 2', 'Orange juice made with fresh oranges'),
('10', 'Fresh Juice', 'Grape Juice', '$ 2', 'Grape juice made with fresh grapes'),
('11', 'Breakfast', 'puttu', '$ 2', 'Rice flour stam cooked'),
('12', 'Lunch', 'Mutton Briyani', '$ 7', 'Basmati rice dum cooked with spices and mutton'),
('13', 'Lunch', 'Chincken Briyani', '$ 6', 'Basmati rice dum cooked with spices and chicken'),
('14', 'Lunch', 'Fish Briyani', '$ 6', 'Basmati rice dum cooked with spices and fish');

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

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `email`, `password`) VALUES
(1, 'kevin@kevin.com', ''),
(2, 'lisa@lisa.com', '$2a$10$xjdNzwJ9QXrp5Nu8IALDmugL7nkOTLUxNiEiTeeWmMAYAFeu276jq'),
(3, 'arturo@arturo.com', ''),
(4, 'Sobham@sobhan.com', ''),
(5, 'at.@gmail.com', '$2a$10$1lsTiTFrP4ggqvX57Zo/murVWwqYMR2GWU1QHi0ii3wg2w.byjSVC'),
(6, 'new@gmail.com', '$2a$10$4Bm4tRo3uk/g/vMyJqlzHuuh2A8EuxvUic9fMsXf0V8arfpmoi9qy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `test_table`
--
ALTER TABLE `test_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
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
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

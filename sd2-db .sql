-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Dec 07, 2022 at 10:56 PM
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
  `booking_status` varchar(20) DEFAULT NULL,
  `booking_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `booking_details`
--

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
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`booking_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `booking_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

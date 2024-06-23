-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2023 at 06:48 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cargo_bookingsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_tbl`
--

CREATE TABLE `booking_tbl` (
  `booking_id` int(20) NOT NULL,
  `cargo_source` varchar(100) NOT NULL,
  `cargo_destination` varchar(100) NOT NULL,
  `cargo_material` varchar(100) NOT NULL,
  `cargo_quantity` int(100) NOT NULL,
  `cargo_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `booking_status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_tbl`
--

INSERT INTO `booking_tbl` (`booking_id`, `cargo_source`, `cargo_destination`, `cargo_material`, `cargo_quantity`, `cargo_name`, `user_email`, `date`, `booking_status`) VALUES
(1, 'Munbai', 'Delhi', 'cars', 100, 'Altatic', 'tejas@gmail.com', '2023-07-12', 1),
(4, 'Srilanka', 'Pakisthan', 'Food Appliences', 500, 'bluefish', 'tejas@gmail.com', '2023-07-27', 1),
(5, 'North Korea', 'South Korea', 'Electronic Appliances', 1200, 'bluefish', 'jatin@gmail.com', '2023-08-04', 1),
(6, 'Tamilnadu', 'Punjab', 'Hospital Equipments', 500, 'bluefish', 'saurav@gmail.com', '2023-07-24', 1),
(7, 'Mumbai', 'Srilanka', 'Hospital Equipments', 400, 'bluefish', 'rohit@gmail.com', '2023-07-28', 1),
(8, 'Mumbai', 'Goa', 'Electronic Appliances', 500, 'bluefish', 'riddesh@gmail.com', '2023-07-27', 1),
(9, 'India', 'Russia', 'Medicines and Drugs', 100, 'bluefish', 'nayan@gmail.com', '2023-07-22', 1),
(10, 'North Korea', 'Delhi', 'Electronic Appliances', 1000, 'bluefish', 'gauresh@gmail.com', '2023-07-20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cargo_tbl`
--

CREATE TABLE `cargo_tbl` (
  `cargo_id` int(100) NOT NULL,
  `cargo_name` varchar(100) NOT NULL,
  `cargo_capacity` varchar(100) NOT NULL,
  `cargo_timetable` date NOT NULL,
  `cargo_arrival` varchar(100) NOT NULL,
  `cargo_departure` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cargo_tbl`
--

INSERT INTO `cargo_tbl` (`cargo_id`, `cargo_name`, `cargo_capacity`, `cargo_timetable`, `cargo_arrival`, `cargo_departure`) VALUES
(1, 'Elite ', '100TEU', '2023-07-22', '12:00', '17:00'),
(3, 'Blueline', '11000', '2023-07-26', '06:20', '16:24'),
(4, 'Altatic', '12000 TEU', '2023-07-29', '22:24', '14:30'),
(5, 'bluefish', '12000 TEU', '2023-07-11', '17:18', '12:15');

-- --------------------------------------------------------

--
-- Table structure for table `user_tbl`
--

CREATE TABLE `user_tbl` (
  `user_id` int(100) NOT NULL,
  `user_name` varchar(500) NOT NULL,
  `user_mob` varchar(100) NOT NULL,
  `user_email` varchar(500) NOT NULL,
  `user_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_tbl`
--

INSERT INTO `user_tbl` (`user_id`, `user_name`, `user_mob`, `user_email`, `user_password`) VALUES
(1, 'Riddesh Suryawanshi', '9867998040', 'riddesh@gmail.com', '1234'),
(2, 'Jatin Patil', '9768875431', 'jatin@gmail.com', '1234'),
(3, 'Tejas Patil', '7965678843', 'tejas@gmail.com', '1234'),
(4, 'Saurav patil', '9976854643', 'saurav@gmail.com', '1234'),
(5, 'Rohit Sonawane', '887986543', 'rohit@gmail.com', '1234'),
(6, 'Nayan Patil', '8887659456', 'nayan@gmail.com', '1234'),
(7, 'Gauresh Suryawanshi', '7965678843', 'gauresh@gmail.com', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking_tbl`
--
ALTER TABLE `booking_tbl`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `cargo_tbl`
--
ALTER TABLE `cargo_tbl`
  ADD PRIMARY KEY (`cargo_id`);

--
-- Indexes for table `user_tbl`
--
ALTER TABLE `user_tbl`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking_tbl`
--
ALTER TABLE `booking_tbl`
  MODIFY `booking_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cargo_tbl`
--
ALTER TABLE `cargo_tbl`
  MODIFY `cargo_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_tbl`
--
ALTER TABLE `user_tbl`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

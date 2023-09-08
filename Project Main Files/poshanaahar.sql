-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2023 at 08:54 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poshanaahar`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `email`, `name`) VALUES
(1, 'Paresh9881', 'Paresh@123', 'Pareshbhamare95@gmail.com', 'Paresh Prakash Bhamare '),
(2, 'Prithvi123', 'Prithvi@123', 'Prithvi990@gmail.com', 'Prithviraj Vikaram Chaudhari'),
(3, 'admin', 'admin', 'admin@gmail.com', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `present` int(11) NOT NULL,
  `absent` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `month` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `school_id`, `present`, `absent`, `total`, `month`) VALUES
(4, 4, 60, 20, 80, 7);

-- --------------------------------------------------------

--
-- Table structure for table `calculated_meal`
--

CREATE TABLE `calculated_meal` (
  `cal_id` int(11) NOT NULL,
  `meal_id` int(11) NOT NULL,
  `supplier_id` int(20) NOT NULL,
  `item` varchar(11) NOT NULL,
  `req_meal` int(11) NOT NULL,
  `used_meal` int(11) NOT NULL,
  `rem_meal` int(11) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `calculated_meal`
--

INSERT INTO `calculated_meal` (`cal_id`, `meal_id`, `supplier_id`, `item`, `req_meal`, `used_meal`, `rem_meal`, `unit`, `status`) VALUES
(11, 2, 2, 'Rice ', 72, 60, 12, 'kilogram', 'Approved'),
(12, 1, 2, 'Banana ', 2160, 1815, 345, 'unit', 'Approved'),
(13, 4, 2, 'Wheat', 432, 363, 69, 'kilogram', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `complain`
--

CREATE TABLE `complain` (
  `complain_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `complain` varchar(20) NOT NULL,
  `description` varchar(50) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `complain`
--

INSERT INTO `complain` (`complain_id`, `school_id`, `complain`, `description`, `date`) VALUES
(2, 4, 'spoiled banana', 'the banana delivered where spoiled', '28/07/2023'),
(4, 4, 'spoiled eggs', 'the eggs delivered where spoiled', '13/07/2023');

-- --------------------------------------------------------

--
-- Table structure for table `meals`
--

CREATE TABLE `meals` (
  `meal_id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `items` varchar(20) DEFAULT NULL,
  `per_quantity` double NOT NULL,
  `monthly_quantity` double NOT NULL,
  `Units` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `meals`
--

INSERT INTO `meals` (`meal_id`, `description`, `items`, `per_quantity`, `monthly_quantity`, `Units`) VALUES
(1, 'Good quality bananas for kids', 'Banana ', 3, 90, 'unit'),
(2, 'Good Rice', 'Rice ', 0.1, 3, 'kilogram'),
(4, 'nice Quality wheat', 'Wheat', 0.6, 18, 'kilogram');

-- --------------------------------------------------------

--
-- Table structure for table `remaining_inventory`
--

CREATE TABLE `remaining_inventory` (
  `inventory_id` int(20) NOT NULL,
  `school_id` int(11) NOT NULL,
  `meal_id` int(11) NOT NULL,
  `item_name` varchar(20) NOT NULL,
  `m_rem_quantity` int(20) NOT NULL,
  `Units` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `remaining_inventory`
--

INSERT INTO `remaining_inventory` (`inventory_id`, `school_id`, `meal_id`, `item_name`, `m_rem_quantity`, `Units`) VALUES
(1, 4, 1, 'Wheat', 69, 'units'),
(2, 4, 2, 'Wheat', 69, 'kilogram'),
(3, 4, 4, 'Wheat', 69, 'kilogram');

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `school_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contactno` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `village` varchar(11) NOT NULL,
  `district` varchar(11) NOT NULL,
  `state` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`school_id`, `username`, `password`, `email`, `contactno`, `name`, `village`, `district`, `state`) VALUES
(4, 'school', 'school', 'school@gmail.com', '1313516313', 'School', 'Shirpur', 'dhule', 'Maharastra'),
(12, 'zpVarud13', '9881', 'zpvarud@gmail.com', '9405872823', 'Z.P School Varud', 'Varud', 'Dhule', 'Maharastra'),
(15, 'zpnavapur123', '9881', 'zpnavapur@gmail.com', '8183176149', 'z.p school navapur', 'Navapur', 'Nandurbar', 'Maharashtra'),
(16, 'chavara', '1234', 'chavara@gmail.com', '9405872823', 'Chavara English School', 'Shahada', ' Nandurbar', 'Maharashtra');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `class` int(11) NOT NULL,
  `rollno` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `contactno` varchar(11) NOT NULL,
  `height` int(20) DEFAULT NULL,
  `weight` int(20) DEFAULT NULL,
  `month` int(20) NOT NULL,
  `monthly_attendance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `school_id`, `name`, `class`, `rollno`, `age`, `contactno`, `height`, `weight`, `month`, `monthly_attendance`) VALUES
(2, 4, 'Rameshwar Mali', 5, 156, 19, '5377138913', 140, 20, 6, 30),
(6, 15, 'Yashodip Beldar', 5, 152, 12, '8831930110', 125, 38, 6, 26),
(7, 4, 'Yash Patil', 5, 121, 14, '9405872823', 150, 38, 6, 29),
(8, 4, 'Paresh Bhamare', 5, 137, 12, '1819381039', 15, 25, 6, 30),
(10, 4, 'Sonu Sharma', 5, 132, 12, '4124141414', 89, 22, 6, 27),
(11, 4, 'John Doe', 5, 101, 14, '9876543210', 89, 50, 6, 18),
(12, 4, 'Jane Smith', 5, 102, 15, '8765432109', 69, 55, 6, 25),
(13, 4, 'Michael Johnson', 5, 103, 16, '7654321098', 64, 60, 6, 23),
(14, 4, 'Random Person1', 5, 104, 17, '1234567890', 65, 65, 6, 30),
(15, 4, 'Random Person2', 5, 105, 18, '2345678901', 62, 70, 6, 21),
(16, 4, 'John Doe', 5, 101, 14, '9876543210', 64, 50, 6, 18),
(17, 4, 'Jane Smith', 5, 102, 15, '8765432109', 55, 55, 6, 12),
(18, 4, 'Michael Johnson', 5, 103, 16, '7654321098', 65, 60, 6, 28),
(19, 4, 'Random Person1', 5, 104, 17, '1234567890', 65, 65, 6, 28),
(20, 4, 'Random Person2', 5, 105, 18, '2345678901', 62, 70, 6, 30),
(21, 4, 'Random Person6', 5, 109, 17, '9999999999', 65, 58, 6, 30),
(22, 4, 'Random Person7', 5, 110, 18, '7777777777', 62, 62, 6, 30),
(23, 4, 'Random Person8', 5, 111, 14, '5555555555', 68, 54, 6, 29),
(24, 4, 'Random Person9', 5, 112, 15, '3333333333', 61, 53, 6, 30),
(25, 4, 'Random Person10', 5, 113, 16, '6666666666', 62, 57, 6, 30),
(26, 4, 'Random Person11', 5, 114, 17, '2222222222', 63, 59, 6, 18),
(27, 4, 'Random Person12', 5, 115, 18, '9999999998', 61, 61, 6, 29),
(28, 4, 'Random Person13', 5, 116, 14, '1111111111', 68, 56, 6, 24),
(38, 16, 'Pruthviraj Chaudhari', 12, 1, 20, '1020304050', 160, 50, 7, 25);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact_no` bigint(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `district` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `username`, `password`, `email`, `name`, `contact_no`, `city`, `district`, `state`) VALUES
(1, 'Bhamare123', '9881', 'BhamareCators@gmail.com', 'Bhamare Cators', 2147483647, 'shahada', 'nandurbar', 'maharashtra'),
(2, 'supplier', 'supplier', 'supplier@gmail.com', 'Supplier\r\n', 7813614179, 'shirpur', 'dhule', 'maharastra'),
(8, 'Bhamare9881', 'password', 'Bhamare@gmail.com', 'Bhamare Company', 9284781883, 'Shahada', ' Nandurbar', 'Maharashtra');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `username` (`username`,`email`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `calculated_meal`
--
ALTER TABLE `calculated_meal`
  ADD PRIMARY KEY (`cal_id`);

--
-- Indexes for table `complain`
--
ALTER TABLE `complain`
  ADD PRIMARY KEY (`complain_id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`meal_id`);

--
-- Indexes for table `remaining_inventory`
--
ALTER TABLE `remaining_inventory`
  ADD PRIMARY KEY (`inventory_id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`school_id`),
  ADD UNIQUE KEY `username` (`username`,`email`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`),
  ADD UNIQUE KEY `username` (`username`,`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `calculated_meal`
--
ALTER TABLE `calculated_meal`
  MODIFY `cal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `complain`
--
ALTER TABLE `complain`
  MODIFY `complain_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `meals`
--
ALTER TABLE `meals`
  MODIFY `meal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `remaining_inventory`
--
ALTER TABLE `remaining_inventory`
  MODIFY `inventory_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `school_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `school` (`school_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

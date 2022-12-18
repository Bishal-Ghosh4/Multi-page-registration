-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2022 at 05:56 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail`
--

CREATE TABLE `detail` (
  `id` int(11) NOT NULL,
  `HSC_Institution_Name` varchar(50) DEFAULT NULL,
  `HSC_Board` varchar(10) DEFAULT NULL,
  `Score_in_HSC` float(10,2) DEFAULT NULL,
  `SSC_Institution_Name` varchar(50) DEFAULT NULL,
  `SSC_Board` varchar(11) DEFAULT NULL,
  `Score_in_SSC` float(10,2) DEFAULT NULL,
  `Currently_pursuing` varchar(10) DEFAULT NULL,
  `Current_educational_institution_name` varchar(60) DEFAULT NULL,
  `Overall_percentage` float(10,2) DEFAULT NULL,
  `Current_backlogs` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail`
--

INSERT INTO `detail` (`id`, `HSC_Institution_Name`, `HSC_Board`, `Score_in_HSC`, `SSC_Institution_Name`, `SSC_Board`, `Score_in_SSC`, `Currently_pursuing`, `Current_educational_institution_name`, `Overall_percentage`, `Current_backlogs`) VALUES
(8, 'bishalghoshnamita', 'CBSE', 72.20, 'sada', 'State Board', 59.80, 'pursuing', 'sas', 84.20, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user_first` varchar(30) DEFAULT NULL,
  `user_last` varchar(30) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `father_first` varchar(30) DEFAULT NULL,
  `father_last` varchar(30) DEFAULT NULL,
  `mother_first` varchar(30) DEFAULT NULL,
  `mother_last` varchar(30) DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `nationality` varchar(10) DEFAULT NULL,
  `telephone_home` varchar(10) DEFAULT NULL,
  `telephone_mobile` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_first`, `user_last`, `dob`, `email`, `father_first`, `father_last`, `mother_first`, `mother_last`, `gender`, `nationality`, `telephone_home`, `telephone_mobile`) VALUES
(1, 'Bishal', 'Ghosh', '1965-05-12', 'bishalghosh40422@gmail.com', 'lion', 'Ghosh', 'Lion mother', 'Ghosh', 'male', 'Jungle', '8274937670', '8274937670');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail`
--
ALTER TABLE `detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

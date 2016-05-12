-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2016 at 01:39 PM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admito`
--

-- --------------------------------------------------------

--
-- Table structure for table `college_data`
--

CREATE TABLE `college_data` (
  `S.no` int(11) NOT NULL,
  `college` varchar(100) NOT NULL,
  `stream` float NOT NULL,
  `placement` float NOT NULL,
  `location` float NOT NULL,
  `fee` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `college_data`
--

INSERT INTO `college_data` (`S.no`, `college`, `stream`, `placement`, `location`, `fee`) VALUES
(1, 'A', 15, 127.8, 25, 25),
(2, 'B', 13.33, 126, 25, 25),
(3, 'C', 11.67, 107, 25, 20),
(4, 'D', 10, 105, 25, 10),
(5, 'E', 11.67, 110.5, 25, 1.3),
(6, 'F', 10, 93.9, 24, 21.3),
(7, 'G', 8.33, 92, 25, 17.5),
(8, 'H', 8.33, 91, 25, 6.3),
(9, 'I', 6.67, 90, 25, 2.5),
(10, 'J', 40, 153, 25, 3.8),
(11, 'K', 8.33, 142.1, 24, 12.5),
(12, 'L', 40, 142.3, 25, 8.8),
(13, 'M', 5, 146.3, 25, 5),
(14, 'N', 3.33, 124.5, 25, 18.8),
(15, 'O', 1.67, 100.5, 24, 13.8),
(16, 'P', 40, 93.7, 25, 16.3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `college_data`
--
ALTER TABLE `college_data`
  ADD PRIMARY KEY (`S.no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `college_data`
--
ALTER TABLE `college_data`
  MODIFY `S.no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

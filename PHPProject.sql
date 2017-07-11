-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 11, 2017 at 05:46 AM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `PHPProject`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblAccount`
--

CREATE TABLE `tblAccount` (
  `_username` varchar(50) NOT NULL,
  `_password` varchar(50) DEFAULT NULL,
  `_authorities` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblCart`
--

CREATE TABLE `tblCart` (
  `_idCart` varchar(50) NOT NULL,
  `_usernameCart` varchar(50) DEFAULT NULL,
  `_dateCreated` date DEFAULT NULL,
  `_dateCompleted` date DEFAULT NULL,
  `_total` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblProduct`
--

CREATE TABLE `tblProduct` (
  `_idProduct` varchar(50) NOT NULL,
  `_name` varchar(50) DEFAULT NULL,
  `_type` varchar(50) DEFAULT NULL,
  `_price` float DEFAULT NULL,
  `_company` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblSold`
--

CREATE TABLE `tblSold` (
  `_idSold` varchar(50) NOT NULL,
  `_quantity` int(11) DEFAULT NULL,
  `_price` float DEFAULT NULL,
  `_idProductSold` varchar(50) DEFAULT NULL,
  `_idCartSold` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblAccount`
--
ALTER TABLE `tblAccount`
  ADD PRIMARY KEY (`_username`);

--
-- Indexes for table `tblCart`
--
ALTER TABLE `tblCart`
  ADD PRIMARY KEY (`_idCart`),
  ADD KEY `_usernameCart` (`_usernameCart`);

--
-- Indexes for table `tblProduct`
--
ALTER TABLE `tblProduct`
  ADD PRIMARY KEY (`_idProduct`);

--
-- Indexes for table `tblSold`
--
ALTER TABLE `tblSold`
  ADD PRIMARY KEY (`_idSold`),
  ADD KEY `_idProductSold` (`_idProductSold`),
  ADD KEY `_idCartSold` (`_idCartSold`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblCart`
--
ALTER TABLE `tblCart`
  ADD CONSTRAINT `tblcart_ibfk_1` FOREIGN KEY (`_usernameCart`) REFERENCES `tblAccount` (`_username`);

--
-- Constraints for table `tblSold`
--
ALTER TABLE `tblSold`
  ADD CONSTRAINT `tblsold_ibfk_1` FOREIGN KEY (`_idProductSold`) REFERENCES `tblProduct` (`_idProduct`),
  ADD CONSTRAINT `tblsold_ibfk_2` FOREIGN KEY (`_idCartSold`) REFERENCES `tblCart` (`_idCart`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2021 at 01:00 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `temp`
--

-- --------------------------------------------------------

--
-- Table structure for table `gyarto`
--

CREATE TABLE `gyarto` (
  `adoszam` int(11) NOT NULL,
  `nev` char(30) DEFAULT NULL,
  `telephely` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `termek`
--

CREATE TABLE `termek` (
  `tkod` int(11) NOT NULL,
  `nev` char(50) DEFAULT NULL,
  `ear` int(11) NOT NULL CHECK (`ear` > 0),
  `gyarto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gyarto`
--
ALTER TABLE `gyarto`
  ADD PRIMARY KEY (`adoszam`);

--
-- Indexes for table `termek`
--
ALTER TABLE `termek`
  ADD PRIMARY KEY (`tkod`),
  ADD KEY `gyarto` (`gyarto`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `termek`
--
ALTER TABLE `termek`
  ADD CONSTRAINT `termek_ibfk_1` FOREIGN KEY (`gyarto`) REFERENCES `gyarto` (`adoszam`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

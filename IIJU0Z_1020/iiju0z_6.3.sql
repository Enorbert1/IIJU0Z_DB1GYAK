-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2021 at 06:46 PM
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
-- Database: `gyak6`
--

-- --------------------------------------------------------

--
-- Table structure for table `résztvevő`
--

CREATE TABLE `résztvevő` (
  `tajszám` int(11) NOT NULL,
  `lakcím` char(1) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `név` char(1) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `befizetés` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tanfolyam`
--

CREATE TABLE `tanfolyam` (
  `tkód` int(11) NOT NULL,
  `ár` int(11) DEFAULT NULL,
  `tipus` char(1) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `megnevezés` char(1) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `befizetés` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `résztvevő`
--
ALTER TABLE `résztvevő`
  ADD PRIMARY KEY (`tajszám`);

--
-- Indexes for table `tanfolyam`
--
ALTER TABLE `tanfolyam`
  ADD PRIMARY KEY (`tkód`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

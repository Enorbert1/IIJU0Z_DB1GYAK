-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2021 at 12:07 PM
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
-- Database: `iiju0z6_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `termekek`
--

CREATE TABLE `termekek` (
  `tkod` int(11) NOT NULL,
  `nev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `ear` int(11) DEFAULT NULL CHECK (`ear` > 0),
  `kategoria` char(20) COLLATE utf8_hungarian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `termekek`
--

INSERT INTO `termekek` (`tkod`, `nev`, `ear`, `kategoria`) VALUES
(1, 'lapát', 2000, 'k1'),
(2, 'seprű', 4000, 'k1'),
(3, 'mosogató gél', 1500, 'k2'),
(4, 'szappan', 1000, 'k2'),
(5, 'pohár', 2400, 'k3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `termekek`
--
ALTER TABLE `termekek`
  ADD PRIMARY KEY (`tkod`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

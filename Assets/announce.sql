-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2023 at 04:38 PM
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
-- Database: `location_company`
--

-- --------------------------------------------------------

--
-- Table structure for table `announce`
--

CREATE TABLE `announce` (
  `ID` int(11) NOT NULL,
  `TITTLE` varchar(255) NOT NULL,
  `PRICE` decimal(10,0) NOT NULL,
  `TYPE` varchar(50) NOT NULL,
  `DATE` date NOT NULL,
  `LOCATION` varchar(255) NOT NULL,
  `IMAGE` varchar(2000) NOT NULL,
  `SPACE` int(11) NOT NULL,
  `DESCRIPTION` varchar(2555) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announce`
--

INSERT INTO `announce` (`ID`, `TITTLE`, `PRICE`, `TYPE`, `DATE`, `LOCATION`, `IMAGE`, `SPACE`, `DESCRIPTION`) VALUES
(1, 'Beautiful Wooden Houses with Lawns', '60000', 'For Sale', '2023-02-09', 'london, UK', '1', 234, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(2, 'ahmeeed', '444444', '', '2023-02-09', 'london, UK', '2', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(3, 'Beautiful Wooden Houses with Lawns', '60000', 'For Sale', '2023-02-09', 'london, UK', '3', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(5, 'Beautiful Wooden Houses with Lawns', '60000', 'For Sale', '2023-02-09', 'london, UK', '4', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(6, 'Beautiful Wooden Houses with Lawns', '60000', 'For Sale', '2023-02-09', 'london, UK', '5', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(7, 'soufian', '24456', '', '2023-02-09', 'london, UK', '6', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(8, 'Beautiful Wooden Houses with Lawns', '60000', 'For Sale', '2023-02-09', 'london, UK', '7', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(9, 'Beautiful Wooden Houses with Lawns', '60000', 'For Sale', '2023-02-09', 'london, UK', '8', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(10, 'Beautiful Wooden Houses with Lawns', '60000', 'For Sale', '2023-02-09', 'london, UK', '9', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(11, 'Beautiful Wooden Houses with Lawns', '60000', 'For Sale', '2023-02-09', 'london, UK', '10', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(12, 'Beautiful Wooden Houses with Lawns', '60000', 'For Sale', '2023-02-09', 'london, UK', '11', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(13, 'Beautiful Wooden Houses with Lawns', '60000', 'For Sale', '2023-02-09', 'london, UK', '12', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announce`
--
ALTER TABLE `announce`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announce`
--
ALTER TABLE `announce`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

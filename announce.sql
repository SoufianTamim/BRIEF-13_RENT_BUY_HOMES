-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 05, 2023 at 10:17 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

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
(1, 'Beautiful Lawns', '45', 'Rent', '2023-02-09', 'london, UK', '1', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(2, 'Beautiful Wooden Houses with Lawns', '60000', 'Sale', '2023-02-09', 'london, UK', '1', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(3, 'Beautiful Wooden Houses with Lawns', '60000', 'Sale', '2023-02-09', 'london, UK', '2', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(5, 'Beautiful Wooden Houses with Lawns', '60000', 'Sale', '2023-02-09', 'london, UK', '4', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(6, 'Beautiful Wooden Houses with Lawns', '60000', 'Sale', '2023-02-09', 'london, UK', '5', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(7, 'Beautiful Wooden Houses with Lawns', '60000', 'Sale', '2023-02-09', 'london, UK', '6', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(8, 'Beautiful Wooden Houses with Lawns', '458', 'Rent', '2023-02-09', 'london, UK', '7', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(9, 'Beautiful Wooden Houses with Lawns', '60000', 'Sale', '2023-02-09', 'london, UK', '8', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(10, 'Beautiful Wooden Houses with Lawns', '60000', 'Sale', '2023-02-09', 'london, UK', '9', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(20, 'Beautiful Wooden Houses with Lawns', '60000', 'Sale', '2023-02-09', 'london, UK', '10', 234, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(21, 'Beautiful Wooden Houses with Lawns', '60000', 'Sale', '2023-02-09', 'london, UK', '11', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(22, 'Beautiful Wooden Houses with Lawns', '45', 'Rent', '2023-02-09', 'london, UK', '12', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(23, 'Beautiful Wooden Houses with Lawns', '60000', 'Rent', '2023-02-09', 'london, UK', '13', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(24, 'Beautiful Wooden Houses with Lawns', '60000', 'Sale', '2023-02-09', 'london, UK', '14', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(25, 'Beautiful Wooden Houses with Lawns', '60000', 'Rent', '2023-02-09', 'london, UK', '15', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(26, 'Beautiful Wooden Houses with Lawns', '60000', 'Sale', '2023-02-09', 'london, UK', '16', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(27, 'Beautiful Wooden Houses with Lawns', '60000', 'Sale', '2023-02-09', 'london, UK', '17', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(28, 'Beautiful Wooden Houses with Lawns', '60000', 'Sale', '2023-02-09', 'london, UK', '18', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(29, 'Beautiful Wooden Houses with Lawns', '60000', 'Sale', '2023-02-09', 'london, UK', '19', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.');

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2023 at 12:08 PM
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
(1, 'Luxury condo rental for Business Bay', '450', 'Rent', '2023-02-09', 'london, UK', '16', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(2, 'Nice house in the mountains', '3200', 'Rent', '2023-02-09', 'Tangier, Morocco', '1', 250, 'From the outside this house looks grandiose. It has been built with white cedar wood and has granite decorations. Large, triangular windows add to the overall look of the house and have been added to the house in a very symmetric way.The house is equipped with an average kitchen and one average bathroom, it also has a warm living room, three bedrooms, a grand dining room and a cozy storage room.The roof is high and triangular and is covered with rounded roof tiles. Two small chimneys poke out the center of the roof. Several small windows let in just enough light to the rooms below the roof.'),
(3, 'Building in the center of the city', '450000', 'Sale', '2023-02-09', 'london, UK', '2', 250, 'The house is equipped with a huge kitchen and one average bathroom, it also has a generous living room, two bedrooms, a cozy dining room and a snug basement.\r\nThe building is shaped like a T. The two extensions are linked by stylish gardens circling around half the house.\r\nThe second floor is smaller than the first, which allowed for several small balconies on one side of the house. This floor has roughly the same style as the floor below.'),
(5, 'Old House with beautifull decorations', '60000', 'Sale', '2023-02-09', 'london, UK', '4', 250, 'Built in 2015, this unique contemporary style home is a must see! 3 bedrooms and 2 bathrooms with 1442 square feet of living space. The multi-level design features a open floor plan with a rec room on the basement level. The beautiful wooded backyard comes complete with a creek.'),
(6, 'Beautiful Wooden Houses with Lawns', '3400', 'Rent', '2023-02-09', 'london, UK', '5', 250, 'Contemplate life from the balcony off the second-floor living room of this 2-story townhome on Gateshead Drive. Two bedrooms and two bathrooms with 1,600 square feet of living space are waiting for you to move in.'),
(7, 'Beautiful Wooden Houses with Lawns', '60000', 'Sale', '2023-02-09', 'london, UK', '6', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(8, 'Nice house in the mountains', '458', 'Rent', '2023-02-09', 'london, UK', '7', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(9, 'Beautiful Wooden Houses with Lawns', '60000', 'Sale', '2023-02-09', 'london, UK', '8', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(10, 'Nice house in the mountains', '60000', 'Sale', '2023-02-09', 'london, UK', '9', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(20, 'Beautiful Wooden Houses with Lawns', '60000', 'Sale', '2023-02-09', 'london, UK', '10', 234, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(21, 'Nice house in the mountains', '60000', 'Sale', '2023-02-09', 'london, UK', '11', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(22, 'Beautiful Wooden Houses with Lawns', '45', 'Rent', '2023-02-09', 'london, UK', '12', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(23, 'Nice house in the mountains', '60000', 'Rent', '2023-02-09', 'london, UK', '13', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(24, 'Beautiful Wooden Houses with Lawns', '60000', 'Sale', '2023-02-09', 'london, UK', '14', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(25, 'Nice house in the mountains', '60000', 'Rent', '2023-02-09', 'london, UK', '15', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(26, 'Beautiful Wooden Houses with Lawns', '60000', 'Sale', '2023-02-09', 'london, UK', '16', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(27, 'Nice house in the mountains', '60000', 'Sale', '2023-02-09', 'london, UK', '17', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(28, 'Beautiful Wooden Houses with Lawns', '9999999999', 'Rent', '2023-02-09', 'london, UK', '18', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(29, 'Nice house in the mountains', '45', 'Sale', '2023-02-09', 'london, UK', '19', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(32, 'Nice house in the Hills', '450', 'Rent', '2023-02-09', 'london, UK', '16', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(33, 'Nice house in the mountains', '600000', 'Sale', '2023-02-09', 'london, UK', '1', 250, 'From the outside this house looks grandiose. It has been built with white cedar wood and has granite decorations. Large, triangular windows add to the overall look of the house and have been added to the house in a very symmetric way.\r\nThe house is equipped with an average kitchen and one average bathroom, it also has a warm living room, three bedrooms, a grand dining room and a cozy storage room.\r\nThe roof is high and triangular and is covered with rounded roof tiles. Two small chimneys poke out the center of the roof. Several small windows let in just enough light to the rooms below the roof.'),
(34, 'Building in the center of the city', '450000', 'Sale', '2023-02-09', 'london, UK', '2', 250, 'The house is equipped with a huge kitchen and one average bathroom, it also has a generous living room, two bedrooms, a cozy dining room and a snug basement.\r\nThe building is shaped like a T. The two extensions are linked by stylish gardens circling around half the house.\r\nThe second floor is smaller than the first, which allowed for several small balconies on one side of the house. This floor has roughly the same style as the floor below.'),
(35, 'Old House with beautifull decorations', '60000', 'Sale', '2023-02-09', 'london, UK', '4', 250, 'Built in 2015, this unique contemporary style home is a must see! 3 bedrooms and 2 bathrooms with 1442 square feet of living space. The multi-level design features a open floor plan with a rec room on the basement level. The beautiful wooded backyard comes complete with a creek.'),
(36, 'Beautiful Wooden Houses with Lawns', '3400', 'Rent', '2023-02-09', 'london, UK', '5', 250, 'Contemplate life from the balcony off the second-floor living room of this 2-story townhome on Gateshead Drive. Two bedrooms and two bathrooms with 1,600 square feet of living space are waiting for you to move in.'),
(37, 'Old House with beautifull decorations', '60000', 'Sale', '2023-02-09', 'london, UK', '6', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(38, 'Beautiful Wooden Houses with Lawns', '458', 'Rent', '2023-02-09', 'london, UK', '7', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(39, 'Old House with beautifull decorations', '60000', 'Sale', '2023-02-09', 'london, UK', '8', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(40, 'Beautiful Wooden Houses with Lawns', '60000', 'Sale', '2023-02-09', 'london, UK', '9', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(41, 'Nice house in the mountains', '60000', 'Sale', '2023-02-09', 'london, UK', '10', 234, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(42, 'Old House with beautifull decorations', '60000', 'Sale', '2023-02-09', 'london, UK', '11', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(43, 'Beautiful Wooden Houses with Lawns', '45', 'Rent', '2023-02-09', 'london, UK', '12', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(44, 'Old House with beautifull decorations', '60000', 'Rent', '2023-02-09', 'london, UK', '13', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(45, 'Beautiful Wooden Houses with Lawns', '60000', 'Sale', '2023-02-09', 'london, UK', '14', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(46, 'Old House with beautifull decorations', '60000', 'Rent', '2023-02-09', 'london, UK', '15', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(47, 'Beautiful Wooden Houses with Lawns', '60000', 'Sale', '2023-02-09', 'london, UK', '16', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(48, 'Nice house in the mountains', '60000', 'Sale', '2023-02-09', 'london, UK', '17', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(49, 'Beautiful Wooden Houses with Lawns', '9999999999', 'Rent', '2023-02-09', 'london, UK', '18', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.'),
(50, 'Nice house in the mountains', '45', 'Sale', '2023-02-09', 'london, UK', '19', 250, 'The apartment is close to the beach it has a very beautiful view and a nice location.');

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

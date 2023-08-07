-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2022 at 07:48 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `scholarship`
--

CREATE TABLE `scholarship` (
  `id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `eligible` varchar(255) NOT NULL,
  `how` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scholarship`
--

INSERT INTO `scholarship` (`id`, `title`, `description`, `eligible`, `how`) VALUES
(1, 'xyz', 'offered by the pillai clg for obc student', '1)OBC certificate', 'contact office'),
(2, 'abc', 'offered by the goverment of india', '1)indian citizen\r\n2)2nd yr student\r\n3)has 9cgp in 1st and 2nd sem', 'www.mahadbt.com'),
(3, 'extra ordinary', 'this is a special scholarship provided by prof. nayan ', '1)plays sports\r\n2)has 8cgp\r\n3)any year', 'contact prof. nayan'),
(4, 'drama', 'schloarship offered by the drama club\'s founder prof tejas ', '1)is part of the drama club\r\n2)has good acting skills', 'contact prof. tejas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `scholarship`
--
ALTER TABLE `scholarship`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `scholarship`
--
ALTER TABLE `scholarship`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 13, 2023 at 08:25 PM
-- Server version: 8.0.33
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task3`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `username`, `password`, `email`, `fullname`, `city`) VALUES
(1, 'Kreya', 'Kreya@123', 'kreya.goswami@brainvire.com', 'kreya goswami', 'surat'),
(2, 'roshan', 'Roshna@123', 'ss@gmail.com', 'roshan singh', 'surat'),
(3, 'isha', 'Isha@123', 'isah@gmail.com', 'isha foundation', 'rajkot'),
(4, 'rutu', 'Ruru@123', 'rutu@gmail.com', 'ruturaj', 'dholka'),
(5, 'lg', 'Apple@123', 'roshan@gmail.com', 'qwer', 'ddwd'),
(6, 'sdfzhg', 'Rutu@6737', 'fgh@gmail.com', 'roshan singh', 'egetgertg'),
(7, 'dfdfd', 'Kreya@9425', 'as@g.com', 'qwer', 'egetgertg'),
(8, 'qwerty', 'Kreya@123456', 'isah@gmail.com', 'qwer', 'ddwd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2022 at 04:45 PM
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
-- Table structure for table `coach`
--

CREATE TABLE `coach` (
  `Co_Id` int(11) NOT NULL,
  `Co_FName` varchar(39) NOT NULL,
  `Co_LName` varchar(20) NOT NULL,
  `Co_Email` varchar(60) NOT NULL,
  `Co_Password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `C_Id` int(100) NOT NULL,
  `C_FName` varchar(80) NOT NULL,
  `C_LName` varchar(20) NOT NULL,
  `C_Age` int(11) NOT NULL,
  `C_Weight` int(11) NOT NULL,
  `C_Height` int(11) NOT NULL,
  `C_Pregnancy` int(11) NOT NULL,
  `C_Location` varchar(50) NOT NULL,
  `C_Insurance` varchar(40) NOT NULL,
  `C_Email` varchar(90) NOT NULL,
  `C_Password` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`C_Id`, `C_FName`, `C_LName`, `C_Age`, `C_Weight`, `C_Height`, `C_Pregnancy`, `C_Location`, `C_Insurance`, `C_Email`, `C_Password`) VALUES
(36, 'MURUNGI', 'Kellen', 38, 65, 77, 8, 'Karongi', 'RSSB', 'kellenwacu@gmail.com', 129837),
(35, 'MUTESI', 'Angel  Poulinne', 28, 66, 71, 8, 'Rwamagana', 'RAM', 'poulinneangel@gmail.com', 91827364),
(34, 'KEZA', 'Jacent', 32, 65, 80, 7, 'Rusizi', 'RSSB', 'jacentmuhire@gmail.com', 123454321),
(32, 'IGIRANEZA', 'Ernestiner', 45, 87, 80, 5, 'Kayonza', 'MMI', 'alainhlavin@gmail.com', 9871235),
(33, 'MUCYO', 'Angel  Noella', 23, 70, 75, 1, 'Muhanga', 'RAM', 'noellamucyo250@gmail.com', 143341);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `Dr_Id` int(11) NOT NULL,
  `Dr_FName` varchar(70) NOT NULL,
  `Dr_LName` varchar(20) NOT NULL,
  `Dr_Email` varchar(50) NOT NULL,
  `Dr_Password` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`Dr_Id`, `Dr_FName`, `Dr_LName`, `Dr_Email`, `Dr_Password`) VALUES
(4, 'Dr.UWANGABE', 'Sandrine', 'sandrineuwangabe@gmail.com', 13579),
(2, 'Dr.MUGABO', 'Alexis', 'alexismugabo@gmail.com', 987654321),
(3, 'Dr.Muhoza', 'Aline', 'muhozaline250@gmail.com', 1234567898);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Pr_Id` int(11) NOT NULL,
  `Pr_Name` varchar(20) NOT NULL,
  `Pr_Price` int(11) NOT NULL,
  `Pr_Expire_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coach`
--
ALTER TABLE `coach`
  ADD PRIMARY KEY (`Co_Id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`C_Id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`Dr_Id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Pr_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coach`
--
ALTER TABLE `coach`
  MODIFY `Co_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `C_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `Dr_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `Pr_Id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

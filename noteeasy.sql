-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2023 at 02:51 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `noteeasy`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `C_ID` int(10) NOT NULL,
  `C_History` text DEFAULT NULL,
  `C_Name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`C_ID`, `C_History`, `C_Name`) VALUES
(1, 'Customer history 1', 'John Doe'),
(2, 'Customer history 2', 'Jane Smith'),
(3, 'Customer history 3', 'Robert Johnson'),
(4, 'Customer history 4', 'Alice Brown'),
(5, 'Customer history 5', 'Michael Davis'),
(6, 'Customer history 6', 'Sarah Wilson'),
(7, 'Customer history 7', 'David Lee'),
(8, 'Customer history 8', 'Emily Turner'),
(9, 'Customer history 9', 'Daniel Clark'),
(10, 'Customer history 10', 'Olivia White');

-- --------------------------------------------------------

--
-- Table structure for table `notecategory`
--

CREATE TABLE `notecategory` (
  `N_ID` int(10) NOT NULL,
  `N_Category` varchar(255) DEFAULT NULL,
  `C_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notecategory`
--

INSERT INTO `notecategory` (`N_ID`, `N_Category`, `C_ID`) VALUES
(1, 'Category 1', 1),
(2, 'Category 2', 2),
(3, 'Category 1', 3),
(4, 'Category 3', 4),
(5, 'Category 2', 5),
(6, 'Category 1', 6),
(7, 'Category 3', 7),
(8, 'Category 2', 8),
(9, 'Category 1', 9),
(10, 'Category 2', 10);

-- --------------------------------------------------------

--
-- Table structure for table `notehistory`
--

CREATE TABLE `notehistory` (
  `C_ID` int(10) NOT NULL,
  `N_ID` int(10) NOT NULL,
  `C_History` text DEFAULT NULL,
  `N_Name` varchar(255) DEFAULT NULL,
  `N_Category` varchar(255) DEFAULT NULL,
  `N_Text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notehistory`
--

INSERT INTO `notehistory` (`C_ID`, `N_ID`, `C_History`, `N_Name`, `N_Category`, `N_Text`) VALUES
(1, 1, 'Customer history for note 1', 'Note 1', 'Category 1', 'This is the text of note 1'),
(2, 2, 'Customer history for note 2', 'Note 2', 'Category 2', 'This is the text of note 2'),
(3, 3, 'Customer history for note 3', 'Note 3', 'Category 1', 'This is the text of note 3'),
(4, 4, 'Customer history for note 4', 'Note 4', 'Category 3', 'This is the text of note 4'),
(5, 5, 'Customer history for note 5', 'Note 5', 'Category 2', 'This is the text of note 5'),
(6, 6, 'Customer history for note 6', 'Note 6', 'Category 1', 'This is the text of note 6'),
(7, 7, 'Customer history for note 7', 'Note 7', 'Category 3', 'This is the text of note 7'),
(8, 8, 'Customer history for note 8', 'Note 8', 'Category 2', 'This is the text of note 8'),
(9, 9, 'Customer history for note 9', 'Note 9', 'Category 1', 'This is the text of note 9'),
(10, 10, 'Customer history for note 10', 'Note 10', 'Category 2', 'This is the text of note 10');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `N_ID` int(10) NOT NULL,
  `C_ID` int(10) NOT NULL,
  `N_Name` varchar(255) DEFAULT NULL,
  `N_Category` varchar(255) DEFAULT NULL,
  `N_Text` text DEFAULT NULL,
  `N_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`N_ID`, `C_ID`, `N_Name`, `N_Category`, `N_Text`, `N_Date`) VALUES
(1, 1, 'Note 1', 'Category 1', 'This is the text of note 1', '2023-01-01'),
(2, 2, 'Note 2', 'Category 2', 'This is the text of note 2', '2023-01-02'),
(3, 3, 'Note 3', 'Category 1', 'This is the text of note 3', '2023-01-03'),
(4, 4, 'Note 4', 'Category 3', 'This is the text of note 4', '2023-01-04'),
(5, 5, 'Note 5', 'Category 2', 'This is the text of note 5', '2023-01-05'),
(6, 6, 'Note 6', 'Category 1', 'This is the text of note 6', '2023-01-06'),
(7, 7, 'Note 7', 'Category 3', 'This is the text of note 7', '2023-01-07'),
(8, 8, 'Note 8', 'Category 2', 'This is the text of note 8', '2023-01-08'),
(9, 9, 'Note 9', 'Category 1', 'This is the text of note 9', '2023-01-09'),
(10, 10, 'Note 10', 'Category 2', 'This is the text of note 10', '2023-01-10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`C_ID`);

--
-- Indexes for table `notecategory`
--
ALTER TABLE `notecategory`
  ADD KEY `N_ID` (`N_ID`),
  ADD KEY `C_ID` (`C_ID`);

--
-- Indexes for table `notehistory`
--
ALTER TABLE `notehistory`
  ADD KEY `C_ID` (`C_ID`),
  ADD KEY `N_ID` (`N_ID`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`N_ID`),
  ADD KEY `C_ID` (`C_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `C_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `N_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `notecategory`
--
ALTER TABLE `notecategory`
  ADD CONSTRAINT `notecategory_ibfk_1` FOREIGN KEY (`N_ID`) REFERENCES `notes` (`N_ID`),
  ADD CONSTRAINT `notecategory_ibfk_2` FOREIGN KEY (`C_ID`) REFERENCES `customer` (`C_ID`);

--
-- Constraints for table `notehistory`
--
ALTER TABLE `notehistory`
  ADD CONSTRAINT `notehistory_ibfk_1` FOREIGN KEY (`C_ID`) REFERENCES `customer` (`C_ID`),
  ADD CONSTRAINT `notehistory_ibfk_2` FOREIGN KEY (`N_ID`) REFERENCES `notes` (`N_ID`);

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_ibfk_1` FOREIGN KEY (`C_ID`) REFERENCES `customer` (`C_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

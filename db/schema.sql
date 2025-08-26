-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 26, 2025 at 11:55 AM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ia`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `Customer_ID` int(11) NOT NULL,
  `Customer_Name` varchar(50) DEFAULT NULL,
  `Email_ID` varchar(50) DEFAULT NULL,
  `Contact_NO` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`Customer_ID`, `Customer_Name`, `Email_ID`, `Contact_NO`, `Address`) VALUES
(3, 'Akshat Kumbhat', 'akshatkumbhat@gmail.com', '9414132700', '1A/7 mayaraj ambascheme, Udaipur'),
(4, 'Pratyaksh Saraf', 'pratyaksh00saraf@gmail.com', '6356940470', '702-Saphire, Royal Gems Vapi\n'),
(5, 'Param', 'parambhala9@gmail.com', '7666076019', 'Jalna'),
(6, 'John', 'John@gmail.com', '9362748390', 'Dahisar, Mumbai'),
(7, 'George', 'george@gmail.com', '9362748390', 'Bandra, Mumbai'),
(9, 'Rohan', 'rohan@gmail.com', '4536274859', 'dgdhf'),
(10, 'Ramesh Saraf', 'ramesh@gmail.com', '9745364739', 'Dahisar East, Mumbai'),
(11, 'Hrishant Bahl', 'bahlhrishant@gmail.com', '9987895163', 'Mumbai, Maharashtra'),
(13, 'Raj Parmar', 'parmar@gmail.com', '9564758960', 'Mumbai , India');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `Item_ID` int(11) NOT NULL,
  `Item_Type` varchar(50) NOT NULL,
  `Fabric` varchar(50) NOT NULL,
  `Color` varchar(15) NOT NULL,
  `Size` varchar(5) NOT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Last_Ordered` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`Item_ID`, `Item_Type`, `Fabric`, `Color`, `Size`, `Quantity`, `Last_Ordered`) VALUES
(1, 'Round Neck T-Shirt', 'Cotton', 'Black', 'XL', 160, '2022-09-10'),
(2, 'Polo T-Shirt', 'Cotton', 'Black', 'M', 125, '2022-09-25'),
(3, 'Round Neck T-Shirt', 'Dot Knit', 'Black', 'XL', 0, NULL),
(4, 'Polo T-Shirt', 'Cotton', 'Black', 'XL', 450, '2022-09-25'),
(5, 'Hoodie', 'Superpoly', 'Black', 'L', 490, '2022-09-25'),
(6, 'SweatShirt', 'Fleece', 'Royal Blue', 'M', 300, '2022-09-25'),
(7, 'SweatShirt', 'Superpoly', 'Red', 'S', 400, '2022-09-24'),
(8, 'Round Neck T-Shirt', 'Cotton', 'Black', 'M', 0, NULL),
(9, 'Round Neck T-Shirt', 'Cotton', 'Black', 'S', 490, '2023-03-09'),
(10, 'Polo T-Shirt', 'Dot Knit', 'White', 'S', 0, NULL),
(11, 'Round Neck T-Shirt', 'Dot Knit', 'White', 'S', 0, NULL),
(12, 'Round Neck T-Shirt', 'Dot Knit', 'Royal Blue', 'L', 500, '2023-03-02'),
(13, 'Round Neck T-Shirt', 'Dot Knit', 'Black', 'S', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Order_ID` int(11) NOT NULL,
  `Customer_ID` int(11) DEFAULT NULL,
  `Item_ID` int(11) NOT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Order_Date` date DEFAULT NULL,
  `Date_Estimated` date DEFAULT NULL,
  `Completion_Date` date DEFAULT NULL,
  `Total_Amount` int(11) DEFAULT NULL,
  `Amount_Pending` int(11) DEFAULT NULL,
  `Order_Status` varchar(50) DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Order_ID`, `Customer_ID`, `Item_ID`, `Quantity`, `Order_Date`, `Date_Estimated`, `Completion_Date`, `Total_Amount`, `Amount_Pending`, `Order_Status`) VALUES
(1, 4, 0, 50, '2022-04-23', '2022-05-20', '2022-05-15', 30000, 0, 'complete'),
(2, 3, 0, 20, '2022-04-23', '2022-04-10', '2022-05-15', 12000, 0, 'complete'),
(3, 5, 0, 25, '2022-04-23', '2022-05-25', '2022-05-26', 30000, 0, 'complete'),
(4, 4, 0, 30, '2022-04-24', '2022-05-10', '2022-07-24', 20000, 0, 'complete'),
(5, 5, 0, 15, '2022-04-18', '2022-05-05', '2022-09-12', 25000, 0, 'complete'),
(6, 6, 0, 20, '2022-04-24', '2022-05-24', '2022-05-23', 20000, 0, 'complete'),
(7, 2, 0, 10, '2022-07-02', '2022-07-20', '2022-11-08', 10000, 0, 'complete'),
(9, 3, 0, 25, '2022-07-02', '2022-07-25', NULL, 25000, 0, 'pending'),
(10, 4, 0, 20, '2022-07-14', '2022-07-26', NULL, 50000, 50000, 'pending'),
(34, 4, 1, 50, '2022-09-25', '2022-09-30', NULL, 15000, 15000, 'pending'),
(35, 5, 1, 20, '2022-09-25', '2022-09-30', '2023-03-10', 10000, 0, 'complete'),
(36, 4, 4, 50, '2022-09-25', '2022-09-30', NULL, 20000, 20000, 'pending'),
(58, 5, 2, 10, '2022-11-15', '2022-11-30', NULL, 10000, 10000, 'pending'),
(59, 4, 2, 10, '2023-01-07', '2023-01-31', NULL, 10000, 10000, 'pending'),
(60, 6, 2, 5, '2023-01-07', '2023-01-31', NULL, 5000, 5000, 'pending'),
(62, 3, 2, 10, '2023-01-07', '2023-01-31', NULL, 15000, 15000, 'pending'),
(64, 7, 2, 10, '2023-01-06', '2023-01-19', NULL, 10000, 10000, 'pending'),
(65, 7, 2, 5, '2023-01-01', '2023-01-10', NULL, 5000, 5000, 'pending'),
(66, 4, 2, 50, '2023-02-06', '2023-02-28', NULL, 50000, 50000, 'pending'),
(67, 5, 2, 20, '2023-02-06', '2023-02-28', NULL, 20000, 20000, 'pending'),
(68, 5, 2, 10, '2023-02-28', '2023-03-26', NULL, 10000, 10000, 'pending'),
(69, 6, 2, 10, '2023-02-27', '2023-03-15', NULL, 15000, 15000, 'pending'),
(70, 7, 2, 10, '2023-03-01', '2023-03-15', NULL, 10000, 10000, 'pending'),
(71, 10, 5, 10, '2023-03-01', '2023-03-15', NULL, 12000, 12000, 'pending'),
(72, 7, 9, 10, '2023-03-09', '2023-03-31', NULL, 10000, 10000, 'pending');

-- --------------------------------------------------------

--
-- Stand-in structure for view `orderview`
-- (See below for the actual view)
--
CREATE TABLE `orderview` (
);

-- --------------------------------------------------------

--
-- Table structure for table `reorders`
--

CREATE TABLE `reorders` (
  `Reorder_ID` int(11) NOT NULL,
  `Item_ID` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Reorder_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reorders`
--

INSERT INTO `reorders` (`Reorder_ID`, `Item_ID`, `Quantity`, `Reorder_Date`) VALUES
(6, 4, 500, '2022-09-25'),
(7, 5, 500, '2022-09-25'),
(8, 6, 300, '2022-09-25'),
(9, 7, 400, '2022-09-24'),
(10, 2, 500, '2022-09-25'),
(11, 12, 500, '2023-03-02'),
(12, 9, 500, '2023-03-09');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `Staff_ID` int(11) NOT NULL,
  `Staff_Name` varchar(200) DEFAULT NULL,
  `Username` varchar(200) DEFAULT NULL,
  `Password` varchar(200) NOT NULL,
  `Role` varchar(200) NOT NULL,
  `Salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`Staff_ID`, `Staff_Name`, `Username`, `Password`, `Role`, `Salary`) VALUES
(1, 'Shalabh Agrawal', 'ShalabhAgra', '1234', 'Manager', 150000),
(3, 'Pratyaksh Saraf', 'Pratyaksh', 'abcd', 'EMPLOYEE', 30000),
(4, 'Ashish Bhatt', 'Ashish', '1234', 'EMPLOYEE', 25000),
(5, 'ABC', 'ABC', '1234', 'EMPLOYEE', 25000),
(6, 'Kunal Saraf', 'Kunal_1', 'abcd', 'EMPLOYEE', 25000),
(8, 'Harsh Agarwal', 'Harsh123', 'abcd', 'MANAGER', 30000);

-- --------------------------------------------------------

--
-- Structure for view `orderview`
--
DROP TABLE IF EXISTS `orderview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `orderview`  AS SELECT `payment`.`Order_ID` AS `Order_ID`, `payment`.`Customer_ID` AS `Customer_ID`, `payment`.`Item_ID` AS `Item_ID`, `payment`.`Quantity` AS `Quantity`, `payment`.`Order_Date` AS `Order_Date`, `payment`.`Date_Estimated` AS `Date_Estimated`, `payment`.`Completion_Date` AS `Completion_Date`, `payment`.`Total_Amount` AS `Total_Amount`, `payment`.`Amount_Pending` AS `Amount_Pending`, `payment`.`Order_Status` AS `Order_Status` FROM `payment` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`Item_ID`,`Item_Type`,`Fabric`,`Color`,`Size`) USING BTREE;

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Order_ID`);

--
-- Indexes for table `reorders`
--
ALTER TABLE `reorders`
  ADD PRIMARY KEY (`Reorder_ID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`Staff_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `Customer_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `Item_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `Order_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `reorders`
--
ALTER TABLE `reorders`
  MODIFY `Reorder_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `Staff_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

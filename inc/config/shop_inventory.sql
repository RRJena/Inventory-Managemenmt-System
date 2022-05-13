-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 19, 2021 at 05:36 PM
-- Server version: 8.0.18
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerID` int(11) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(11) NOT NULL,
  `phone2` varchar(11) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `district` varchar(30) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerID`, `fullName`, `email`, `mobile`, `phone2`, `address`, `address2`, `city`, `district`, `status`, `createdOn`) VALUES
(4, 'Bill Gates', 'bill@microsoft.com', '993737', '772484884', '45, Palo Alto House, Marine Drive', 'South Carolina', 'Microsoft', 'Kurunegala', 'Active', '2018-04-30 15:14:02'),
(14, 'Steve Jobs', 'sjobs@apple.com', '333829832', '0', '1st Floor, Apple House, ', 'Las Vegas Street', 'Las Vegas', 'Monaragala', 'Disabled', '2018-05-01 12:03:10'),
(18, 'Asitha Silva', 'asitha@gmail.com', '777987654', '0', 'No. 3, Radcliff Avenue, School Lane', 'Kalutara South', 'Kalutara', 'Kalutara', 'Active', '2018-05-02 09:52:28'),
(24, 'Sunil Perera', 'Sunil@gypsies.sound', '338393932', '413837293', '67/7, Perera Villa, Jayasekara Avenue', 'Mount Lavinia', 'Ratmalana', 'Colombo', 'Active', '2018-05-02 10:48:37'),
(25, 'Theresa May', 'may34@uk.gov.com', '329393903', '777833737', '12, Downing Street', 'London', 'London', 'Matale', 'Active', '2018-05-03 02:28:07'),
(26, 'Sachin Tendulkar', 'sachintendulkar@icc.com', '444958303', '84792838', '789-4, Apartment 3, ', 'Cric Complex', 'New Delhi', 'Puttalam', 'Active', '2018-05-03 02:28:38'),
(38, 'Nuwan Perara', 'nuwan@yahoo.com', '839378202', '0', 'Nuwan Villa, Lower Street,', 'North Mulativu', 'Mullaitivu', 'Mullaitivu', 'Active', '2018-05-05 11:17:49'),
(39, 'Amal Silverton', 'amals452@yahoo.com', '232345676', '0', 'Amal\'s House, Amal\'s Street,', 'Amal Road', 'Ambalangoda', 'Galle', 'Active', '2018-05-05 13:27:06'),
(40, 'Andrew Symonds', 'symonds@cricket.au.com', '123', '0', '23, Oak View Avenue', 'Western Australia', 'Melbourne', 'Colombo', 'Disabled', '2018-05-13 01:20:23'),
(41, 'Mark Taylor', '', '111', '0', '111', '', '', 'Colombo', 'Active', '2018-05-13 01:24:54'),
(42, 'Nelson Mandela', 'sjobs@apple.com', '333829832', '0', '1st Floor, Apple House, ', 'Las Vegas Street', 'Las Vegas', 'Kalutara', 'Disabled', '2018-05-13 02:39:41');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `productID` int(11) NOT NULL,
  `itemNumber` varchar(255) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `discount` float NOT NULL DEFAULT '0',
  `stock` int(11) NOT NULL DEFAULT '0',
  `unitPrice` float NOT NULL DEFAULT '0',
  `imageURL` varchar(255) NOT NULL DEFAULT 'imageNotAvailable.jpg',
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  `description` text NOT NULL,
  `other_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`productID`, `itemNumber`, `itemName`, `discount`, `stock`, `unitPrice`, `imageURL`, `status`, `description`, `other_code`) VALUES
(34, '1', 'First Bag', 0, 28, 1500, '1525670999_1.png', 'Active', '', NULL),
(35, '2', 'School Bag', 0, 5, 500, '1525681111_661539.png', 'Active', '', NULL),
(36, '3', 'Office Bag', 0, 5, 1300, '1525709924_office bag.jpg', 'Active', '', NULL),
(37, '4', 'Leather Bag', 2, 6, 3409, '1525710010_leather bag.jpg', 'Active', '', NULL),
(38, '5', 'Travel Bag', 2, 17, 1200, '1525706032_travel bag.jpg', 'Active', '', NULL),
(39, '6', 'Gym Bag', 0, 0, 3000, '1525710463_gym bag.jpg', 'Active', '', NULL),
(40, '7', 'Handbag', 1.5, 10, 1650, '1525713267_handbag.jpg', 'Active', '', NULL),
(41, '8', 'Laptop Bag', 2.1, 9, 2300, '1525750683_661539.png', 'Active', '', NULL),
(43, '10', 'Sports Bag', 1, 92, 1000, '1525756289_sports bag.jpg', 'Active', '', NULL),
(45, '11', 'First Aid Bag', 1.5, 11, 1200, '1525787551_first aid bag.jpg', 'Active', '', NULL),
(49, '14', 'Hiking Bag', 1.5, 6, 1200, '1526297640_hiking bag.jpg', 'Active', 'This is a hiking bag. Ideal for long distance hikes. Light-weight and water proof.', NULL),
(52, '1234', 'Hello', 10, 300, 100, '1610366696_61Xsk4mzsxL._SL1500_.jpg', 'Active', 'qeqeq', NULL),
(53, '15', 'XYZ', 10, 100, 100, '1610979796_2.png', 'Active', 'Something.......', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `purchaseID` int(11) NOT NULL,
  `itemNumber` varchar(255) NOT NULL,
  `purchaseDate` date NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `unitPrice` float NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `vendorName` varchar(255) NOT NULL DEFAULT 'Test Vendor',
  `vendorID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`purchaseID`, `itemNumber`, `purchaseDate`, `itemName`, `unitPrice`, `quantity`, `vendorName`, `vendorID`) VALUES
(57, '1234', '2021-01-11', 'Hello', 100, 100, 'ABC Company', 1),
(58, '1234', '2021-01-11', 'Hello', 100, 100, 'ABC Company', 1),
(59, '15', '2018-05-24', 'XYZ', 110, 100, 'RAKESH RANJAN JENA', 9);

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `saleID` int(11) NOT NULL,
  `itemNumber` varchar(255) NOT NULL,
  `customerID` int(11) NOT NULL,
  `customerName` varchar(255) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `saleDate` date NOT NULL,
  `discount` float NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `unitPrice` float(10,0) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`saleID`, `itemNumber`, `customerID`, `customerName`, `itemName`, `saleDate`, `discount`, `quantity`, `unitPrice`) VALUES
(18, '15', 14, 'Steve Jobs', 'XYZ', '2018-05-24', 10, 100, 115);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `fullName`, `username`, `password`, `status`) VALUES
(5, 'Guest', 'guest', '81dc9bdb52d04dc20036dbd8313ed055', 'Active'),
(8, 'ADMIN', 'Admin', '81dc9bdb52d04dc20036dbd8313ed055', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vendorID` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(11) NOT NULL,
  `phone2` varchar(11) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `district` varchar(30) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`vendorID`, `fullName`, `email`, `mobile`, `phone2`, `address`, `address2`, `city`, `district`, `status`, `createdOn`) VALUES
(1, 'ABC Company', '', '2343567', '0', '80, Ground Floor, ABC Shopping Complex', '46th Avenue', 'Kolpetty', 'Colombo', 'Active', '2018-05-05 05:48:44'),
(2, 'Sample Vendor 222', 'sample@volvo.com', '99828282', '283730183', '123, A Road, B avenue', 'Pitipana', 'Nugegoda', 'Mannar', 'Disabled', '2018-05-05 06:12:02'),
(3, 'Johnson and Johnsons Co.', '', '32323', '0', '34, Malwatta Road, Kottawa', 'Pannipitiya', 'Maharagama', 'Colombo', 'Active', '2018-05-05 06:28:33'),
(4, 'Louise Vitton Bag', 'vitton@vitton.usa.com', '323234938', '0', '45, Palmer Valley, 5th Crossing', 'Delaware', 'Palo Alto', 'Batticaloa', 'Active', '2018-05-05 06:29:41'),
(6, 'Test Vendor', 'test@vendor.com', '43434', '47569937', 'Test address', 'Test address 2', 'Test City', 'Trincomalee', 'Active', '2018-05-05 06:53:14'),
(7, 'Bags Co. Exporters Ltd.', '', '1111', '0', 'Sea Road, Bambalapitiya', '', '', 'Colombo', 'Active', '2018-05-15 10:36:54'),
(8, 'New Bags Exporters', '', '191938930', '0', '123, A Road, B avenue, ', 'Gilford Crescent', 'Colpetty', 'Colombo', 'Active', '2018-05-16 12:36:53'),
(9, 'RAKESH RANJAN JENA', 'rakesh.jena@bestkoki.com', '7289058511', '1234', 'Village-Fatehpur Bilapur Tauru Road, Bilaspur Kalan, Haryana 122105', 'Green View Apartment, Gadaipur, New Delhi, 110030', 'Gurgaon', 'Colombo', 'Active', '2021-01-11 11:12:24'),
(10, 'RAKESH RANJAN RANJAN JENA', 'asrrjprince@gmail.com', '7289058511', '', 'B-1, Green View Apartment, Gadaipur', 'OFF. Gurgaon-Faridabad Road, Baliawas Village', 'GURGAON', 'Colombo', 'Active', '2021-01-11 11:17:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerID`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`productID`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`purchaseID`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`saleID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendorID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `purchaseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `saleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

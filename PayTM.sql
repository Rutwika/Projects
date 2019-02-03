-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2017 at 03:17 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paytm2`
--

-- --------------------------------------------------------

--
-- Table structure for table `am_parks`
--

CREATE TABLE `am_parks` (
  `event_id` int(10) NOT NULL,
  `theme_name` varchar(20) NOT NULL,
  `ticket_no` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `am_parks`
--

INSERT INTO `am_parks` (`event_id`, `theme_name`, `ticket_no`) VALUES
(11, 'Haunted', 120),
(12, 'Haunted', 121),
(13, 'Waterpark', 122),
(14, 'Waterpark', 123),
(15, 'Haunted', 124),
(16, 'Haunted', 125),
(17, 'Waterpark', 126),
(18, 'Offroading', 127),
(19, 'Offroading', 128),
(20, 'Offroading', 129);

-- --------------------------------------------------------

--
-- Table structure for table `event_data`
--

CREATE TABLE `event_data` (
  `event_id` int(10) NOT NULL,
  `event_city` varchar(20) NOT NULL,
  `event_date` date NOT NULL,
  `event_time` time NOT NULL,
  `price` int(10) NOT NULL,
  `event_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_data`
--

INSERT INTO `event_data` (`event_id`, `event_city`, `event_date`, `event_time`, `price`, `event_type`) VALUES
(1, 'Richardson', '2017-11-15', '17:30:00', 50, 'general events'),
(2, 'Dallas', '2017-11-07', '14:00:00', 30, 'general events'),
(3, 'Abbott', '2017-05-08', '08:00:00', 110, 'general events'),
(4, 'Arlington', '2016-11-07', '22:30:00', 200, 'general events'),
(5, 'New York', '2017-01-08', '15:15:00', 110, 'general events'),
(6, 'Dallas', '2016-12-07', '08:45:00', 35, 'general events'),
(7, 'Los Angeles', '2016-01-01', '11:05:00', 150, 'general events'),
(8, 'Dallas', '2017-01-01', '10:00:00', 80, 'general events'),
(9, 'Abbott', '2017-04-28', '20:30:00', 250, 'general events'),
(10, 'San Diego', '2017-11-30', '20:45:00', 55, 'general events'),
(11, 'Boston', '2016-04-22', '18:30:00', 55, 'amusement park'),
(12, 'Philadelphia', '2016-12-25', '19:45:00', 177, 'amusement park'),
(13, 'Abbott', '2017-02-26', '19:22:00', 96, 'amusement park'),
(14, 'San Diego', '2017-09-29', '15:25:00', 66, 'amusement park'),
(15, 'Abbott', '2016-11-11', '12:00:00', 87, 'amusement park'),
(16, 'San Francisco', '2016-12-22', '13:01:00', 33, 'amusement park'),
(17, 'Philadelphia', '2016-10-23', '12:30:00', 51, 'amusement park'),
(18, 'San Antonio', '2017-10-10', '20:20:00', 99, 'amusement park'),
(19, 'Boston', '2017-02-18', '14:10:00', 11, 'amusement park'),
(20, 'Las Vegas', '2017-03-03', '19:11:00', 21, 'amusement park'),
(21, 'San Diego', '2017-07-10', '16:00:00', 25, 'movies'),
(22, 'San Francisco', '2017-05-27', '19:15:00', 15, 'movies'),
(23, 'Abbott', '2016-10-01', '15:30:00', 35, 'movies'),
(24, 'Las Vegas', '2016-06-01', '18:30:00', 20, 'movies'),
(25, 'San Antonio', '2017-08-14', '10:30:00', 32, 'movies'),
(26, 'Detroit', '2017-06-26', '20:15:00', 12, 'movies'),
(27, 'Kansas City', '2017-04-27', '14:45:00', 18, 'movies'),
(28, 'Kansas City', '2017-11-17', '15:15:00', 41, 'movies'),
(29, 'Detroit', '2017-01-30', '21:00:00', 22, 'movies'),
(30, 'Dallas', '2016-12-31', '11:30:00', 14, 'movies');

-- --------------------------------------------------------

--
-- Table structure for table `general_events`
--

CREATE TABLE `general_events` (
  `event_id` int(10) NOT NULL,
  `provider_name` varchar(20) NOT NULL,
  `Event_details` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_events`
--

INSERT INTO `general_events` (`event_id`, `provider_name`, `Event_details`) VALUES
(1, 'Funrepublic', 'Music conc'),
(2, 'Funrepublic', 'Fashion Sh'),
(3, 'Roxstar', 'Band Perfo'),
(4, 'Roxstar', 'Stand Up C'),
(5, 'Roxstar', 'Music Conc'),
(6, 'Funrepublic', 'Music Conc'),
(7, 'Vivanta', 'Fashion Sh'),
(8, 'Vivanta', 'Stand Up C'),
(9, 'Funrepublic', 'WWE'),
(10, 'Vivanta', 'WWE');

-- --------------------------------------------------------

--
-- Table structure for table `member_data`
--

CREATE TABLE `member_data` (
  `member_id` int(10) NOT NULL,
  `UserID` int(10) NOT NULL,
  `event_id` int(10) NOT NULL,
  `Cust_age` int(5) NOT NULL,
  `seat_no` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member_data`
--

INSERT INTO `member_data` (`member_id`, `UserID`, `event_id`, `Cust_age`, `seat_no`) VALUES
(1001, 1, 21, 25, 'K15'),
(1002, 1, 21, 30, 'K16'),
(1003, 1, 21, 25, 'K17'),
(1004, 1, 21, 28, 'K16'),
(1005, 1, 21, 29, 'K18'),
(1006, 1, 21, 27, 'K19'),
(1007, 2, 18, 22, 'P10'),
(1008, 2, 18, 26, 'P20'),
(1009, 2, 18, 24, 'P16'),
(1010, 2, 18, 23, 'P21'),
(1011, 5, 5, 26, 'N10'),
(1012, 5, 5, 24, 'N12'),
(1013, 5, 5, 28, 'N19'),
(1014, 5, 5, 23, 'N18'),
(1015, 5, 5, 25, 'N15');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `event_id` int(10) NOT NULL,
  `theatre_name` varchar(20) NOT NULL,
  `Movie_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`event_id`, `theatre_name`, `Movie_name`) VALUES
(21, 'Cinemark Movies', 'Guardians of the gal'),
(22, 'Cinemark Movies', 'Justice League'),
(23, 'LOOK Cinemas', 'Guardians of the gal'),
(24, 'LOOK Cinemas', 'Justice League'),
(25, 'LOOK Cinemas', 'Coco'),
(26, 'Imax Theatre', 'Coco'),
(27, 'Imax Theatre', 'Justice League'),
(28, 'Imax Theatre', 'Guardians of the gal'),
(29, 'Cinemark Movies', 'Coco'),
(30, 'Imax Theatre', 'Thor: Ragnarok');

-- --------------------------------------------------------

--
-- Table structure for table `offering`
--

CREATE TABLE `offering` (
  `offering_id` int(10) NOT NULL,
  `price` double DEFAULT NULL,
  `num_available` int(50) DEFAULT NULL,
  `product_id` int(10) DEFAULT NULL,
  `store_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offering`
--

INSERT INTO `offering` (`offering_id`, `price`, `num_available`, `product_id`, `store_id`) VALUES
(2001, 50, 100, 1001, 3001),
(2002, 30, 50, 1001, 3002),
(2003, 10, 100, 1003, 3003),
(2004, 30, 75, 1002, 3001),
(2005, 62, 45, 1006, 3004),
(2006, 88, 600, 1007, 3005),
(2007, 270, 2, 1009, 3003),
(2008, 300, 4, 1010, 3003),
(2009, 64, 70, 1002, 3006),
(2010, 99, 16, 1005, 3007);

-- --------------------------------------------------------

--
-- Table structure for table `package_track`
--

CREATE TABLE `package_track` (
  `TrackingID` int(20) NOT NULL,
  `Source_Name` varchar(20) NOT NULL,
  `Destination` varchar(20) NOT NULL,
  `ShippingCost` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package_track`
--

INSERT INTO `package_track` (`TrackingID`, `Source_Name`, `Destination`, `ShippingCost`) VALUES
(1000001, 'plano', 'richardson', 6),
(1000002, 'arlington', 'richardson', 8),
(1000003, 'dallas', 'richardson', 6),
(1000004, 'frisco', 'richardson', 8),
(1000005, 'allen', 'richardson', 8),
(1000006, 'garland', 'richardson', 7),
(1000007, 'austin', 'richardson', 12),
(1000008, 'huston', 'richardson', 13),
(1000009, 'boston', 'richardson', 20),
(1000010, 'waco', 'richardson', 10);

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `PassengerID` int(20) NOT NULL,
  `TravelID` int(10) NOT NULL,
  `userID` int(10) NOT NULL,
  `Contact` int(10) NOT NULL,
  `address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`PassengerID`, `TravelID`, `userID`, `Contact`, `address`) VALUES
(10001, 12, 2, 2147483647, 'Frankford St'),
(10002, 10, 9, 1234567890, 'Coit Rd'),
(10003, 16, 6, 1234561230, 'Allen Rd'),
(10004, 17, 4, 2147483647, 'Campbell Rd'),
(10005, 17, 2, 2147483647, 'Coit Rd'),
(10006, 15, 1, 2147483647, 'Frankford St'),
(10007, 13, 7, 589746120, 'Frankford St'),
(10008, 11, 8, 2147483647, 'Frankford St'),
(10009, 17, 6, 2147483647, 'Frankford St'),
(10010, 19, 2, 1235612790, 'Frankford St');

-- --------------------------------------------------------

--
-- Table structure for table `payment_recipient`
--

CREATE TABLE `payment_recipient` (
  `PaymentID` int(10) NOT NULL,
  `Sender_Name` varchar(50) NOT NULL,
  `Mobile` int(10) NOT NULL,
  `Receiver_Name` varchar(50) NOT NULL,
  `Receiver_Mob` int(10) NOT NULL,
  `Amt` int(10) NOT NULL,
  `Payment_Method` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_recipient`
--

INSERT INTO `payment_recipient` (`PaymentID`, `Sender_Name`, `Mobile`, `Receiver_Name`, `Receiver_Mob`, `Amt`, `Payment_Method`) VALUES
(101, 'Ryan', 123456789, 'Angela', 345678910, 100, 'CC'),
(102, 'Fred', 234567891, 'Michael', 2001001000, 200, 'DC'),
(103, 'Ted', 567891012, 'Fiona', 678901234, 130, 'CC'),
(104, 'Rakhi', 2143321000, 'Wei', 1002003456, 230, 'APLP'),
(105, 'Debra', 567891012, 'Fiona', 678901234, 130, 'CC'),
(106, 'Cao', 1002101122, 'Rutwika', 1234576890, 130, 'AP'),
(107, 'Wei', 2143321000, 'Brian', 112345589, 140, 'CC'),
(108, 'Angela', 345678910, 'Dennis', 2122334712, 150, 'CC'),
(109, 'Fiona', 456789101, 'Gemini', 1234527490, 750, 'APLP'),
(110, 'Michael', 2001001000, 'Blake', 125645820, 870, 'AP');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(10) NOT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `product_description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_description`) VALUES
(1001, 'cloth', 'jacket'),
(1002, 'cloth', 'shirt'),
(1003, 'meat', 'steak'),
(1004, 'fruit', 'jacket'),
(1005, 'meat', 'chicken'),
(1006, 'fruit', 'orange'),
(1007, 'digital', 'laptop'),
(1008, 'digital', 'smartphone'),
(1009, 'drinks', 'Jacket'),
(1010, 'drinks', 'beer');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `UserID` int(10) NOT NULL,
  `event_name` varchar(10) NOT NULL,
  `Media_PLTFM` varchar(10) NOT NULL,
  `MediaID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`UserID`, `event_name`, `Media_PLTFM`, `MediaID`) VALUES
(1, 'GE', 'FB', 1),
(2, 'AP', 'INSTA', 2),
(3, 'GE', 'SC', 3),
(3, 'GE', 'FB', 4),
(5, 'AP', 'FB', 5),
(6, 'GE', 'INSTA', 6),
(7, 'MV', 'FB', 7),
(10, 'GE', 'INSTA', 8),
(10, 'MV', 'SC', 9),
(6, 'GE', 'FB', 10);

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `StoreID` int(20) NOT NULL,
  `Store_Name` varchar(30) NOT NULL,
  `Store_Email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`StoreID`, `Store_Name`, `Store_Email`) VALUES
(3001, 'AA', 'AA@gmail.com'),
(3002, 'AB', 'AB@gmail.com'),
(3003, 'AC', 'AC@gmail.com'),
(3004, 'AD', 'AD@gmail.com'),
(3005, 'AE', 'AE@gmail.com'),
(3006, 'AF', 'AF@gmail.com'),
(3007, 'AG', 'AG@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `TransactionID` int(5) NOT NULL,
  `UserID` int(10) NOT NULL,
  `PaymentID` int(10) NOT NULL,
  `TrackingID` int(20) NOT NULL,
  `OfferingID` int(10) NOT NULL,
  `Transaction_Date` date NOT NULL,
  `Transaction_Time` time DEFAULT NULL,
  `Payment_Method` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`TransactionID`, `UserID`, `PaymentID`, `TrackingID`, `OfferingID`, `Transaction_Date`, `Transaction_Time`, `Payment_Method`) VALUES
(1, 1, 101, 1000001, 2001, '2017-11-01', '14:18:42', 'CC'),
(2, 9, 103, 1000009, 2010, '2017-11-02', '14:18:42', 'CC'),
(3, 8, 110, 1000010, 2009, '2017-11-05', '03:14:05', 'APLP'),
(4, 4, 104, 1000002, 2003, '2017-11-07', '19:15:14', 'APLP'),
(5, 3, 108, 1000008, 2001, '2017-11-08', '04:14:15', 'DC'),
(6, 2, 102, 1000004, 2008, '2017-11-09', '05:15:14', 'CC'),
(7, 6, 109, 1000005, 2006, '2017-11-10', '13:14:05', 'DC'),
(8, 7, 107, 1000003, 2005, '2017-11-12', '22:14:05', 'AP'),
(9, 5, 105, 1000007, 2004, '2017-11-13', '23:04:05', 'AP'),
(10, 10, 106, 1000006, 2006, '2017-11-14', '16:14:07', 'APLP');

-- --------------------------------------------------------

--
-- Table structure for table `travel`
--

CREATE TABLE `travel` (
  `Travel_ID` int(10) NOT NULL,
  `Source` varchar(20) NOT NULL,
  `Destination` varchar(20) NOT NULL,
  `Travel_Method` varchar(20) NOT NULL,
  `Travel_date` date NOT NULL,
  `Travel_time` time NOT NULL,
  `Price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travel`
--

INSERT INTO `travel` (`Travel_ID`, `Source`, `Destination`, `Travel_Method`, `Travel_date`, `Travel_time`, `Price`) VALUES
(10, 'Dallas', 'Chicago', 'Flight', '1959-12-03', '09:00:00', 300),
(11, 'Miami', 'New York', 'Train', '1960-11-04', '10:00:00', 100),
(12, 'Dallas', 'Houston', 'Bus', '1990-12-10', '10:30:00', 200),
(13, 'Austin', 'New Jersey', 'Flight', '1989-07-03', '10:30:00', 350),
(14, 'San Diego', 'Dallas', 'Train', '1969-08-03', '11:00:00', 250),
(15, 'San Jose', 'New York', 'Bus', '1990-09-03', '19:00:00', 1000),
(16, 'Atlanta', 'Charlette', 'Flight', '1950-05-13', '17:00:00', 100),
(17, 'Michigan', 'Chicago', 'Train', '1960-01-14', '16:00:00', 500),
(18, 'Tulsa', 'Boston', 'Bus', '1981-03-03', '13:00:00', 300),
(19, 'New York', 'Boston', 'Flight', '1982-12-11', '11:00:00', 300);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(10) NOT NULL,
  `Mobile` int(10) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) DEFAULT NULL,
  `Gender` varchar(2) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `email` varchar(50) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `Mobile`, `First_Name`, `Last_Name`, `Gender`, `email`, `Password`) VALUES
(1, 123456789, 'Ryan', 'Blue', 'M', 'ryanrox@gmail.com', 'ryan123'),
(2, 234567891, 'Fred', 'Bangles', 'M', 'fredrox@gmail.com', 'fred123'),
(3, 345678910, 'Angela', 'White', 'F', 'angela12@gmail.com', 'angela123'),
(4, 456789101, 'Rakhi', 'Singh', 'F', 'rakhi2@gmail.com', 'rakhi123'),
(5, 567891012, 'Ted', 'Adams', 'M', 'ted12@gmail.com', 'ted123'),
(6, 678901234, 'Fiona', 'Barber', 'F', 'fiona12@gmail.com', 'fiona123'),
(7, 2143321000, 'Debra', 'Lee', 'F', 'sql123@gmail.com', 'sql123'),
(8, 2001001000, 'Michael', 'Keaton', 'M', 'mike123@gmail.com', 'mike123'),
(9, 1002003456, 'Wei', 'Feng', 'M', 'wei.feng1@utdallas.edu', 'wei123'),
(10, 1002101122, 'Yifan', 'Cao', 'F', 'cao123@gmail.com', 'cao123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `am_parks`
--
ALTER TABLE `am_parks`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `event_data`
--
ALTER TABLE `event_data`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `general_events`
--
ALTER TABLE `general_events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `member_data`
--
ALTER TABLE `member_data`
  ADD PRIMARY KEY (`member_id`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `offering`
--
ALTER TABLE `offering`
  ADD PRIMARY KEY (`offering_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `package_track`
--
ALTER TABLE `package_track`
  ADD PRIMARY KEY (`TrackingID`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`PassengerID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `TravelID` (`TravelID`);

--
-- Indexes for table `payment_recipient`
--
ALTER TABLE `payment_recipient`
  ADD PRIMARY KEY (`PaymentID`),
  ADD KEY `Mobile` (`Mobile`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`MediaID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`StoreID`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`TransactionID`),
  ADD UNIQUE KEY `TrackingID` (`TrackingID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `PaymentID` (`PaymentID`),
  ADD KEY `OfferingID` (`OfferingID`);

--
-- Indexes for table `travel`
--
ALTER TABLE `travel`
  ADD PRIMARY KEY (`Travel_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `Mobile` (`Mobile`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `am_parks`
--
ALTER TABLE `am_parks`
  ADD CONSTRAINT `am_parks_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `event_data` (`event_id`),
  ADD CONSTRAINT `am_parks_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `event_data` (`event_id`);

--
-- Constraints for table `general_events`
--
ALTER TABLE `general_events`
  ADD CONSTRAINT `general_events_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `event_data` (`event_id`),
  ADD CONSTRAINT `general_events_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `event_data` (`event_id`);

--
-- Constraints for table `member_data`
--
ALTER TABLE `member_data`
  ADD CONSTRAINT `member_data_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`userID`),
  ADD CONSTRAINT `member_data_ibfk_3` FOREIGN KEY (`event_id`) REFERENCES `event_data` (`event_id`),
  ADD CONSTRAINT `member_data_ibfk_4` FOREIGN KEY (`UserID`) REFERENCES `users` (`userID`),
  ADD CONSTRAINT `member_data_ibfk_5` FOREIGN KEY (`event_id`) REFERENCES `event_data` (`event_id`);

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `event_data` (`event_id`),
  ADD CONSTRAINT `movies_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `event_data` (`event_id`);

--
-- Constraints for table `offering`
--
ALTER TABLE `offering`
  ADD CONSTRAINT `offering_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `offering_ibfk_4` FOREIGN KEY (`store_id`) REFERENCES `store` (`StoreID`),
  ADD CONSTRAINT `offering_ibfk_5` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `offering_ibfk_6` FOREIGN KEY (`store_id`) REFERENCES `store` (`StoreID`);

--
-- Constraints for table `passenger`
--
ALTER TABLE `passenger`
  ADD CONSTRAINT `passenger_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`),
  ADD CONSTRAINT `passenger_ibfk_2` FOREIGN KEY (`TravelID`) REFERENCES `travel` (`Travel_ID`),
  ADD CONSTRAINT `passenger_ibfk_3` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`),
  ADD CONSTRAINT `passenger_ibfk_4` FOREIGN KEY (`TravelID`) REFERENCES `travel` (`Travel_ID`);

--
-- Constraints for table `payment_recipient`
--
ALTER TABLE `payment_recipient`
  ADD CONSTRAINT `payment_recipient_ibfk_1` FOREIGN KEY (`Mobile`) REFERENCES `users` (`Mobile`);

--
-- Constraints for table `social_media`
--
ALTER TABLE `social_media`
  ADD CONSTRAINT `social_media_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`userID`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_10` FOREIGN KEY (`TrackingID`) REFERENCES `package_track` (`TrackingID`),
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `users` (`userID`),
  ADD CONSTRAINT `transaction_ibfk_4` FOREIGN KEY (`PaymentID`) REFERENCES `payment_recipient` (`PaymentID`),
  ADD CONSTRAINT `transaction_ibfk_5` FOREIGN KEY (`OfferingID`) REFERENCES `offering` (`offering_id`),
  ADD CONSTRAINT `transaction_ibfk_6` FOREIGN KEY (`TrackingID`) REFERENCES `package_track` (`TrackingID`),
  ADD CONSTRAINT `transaction_ibfk_7` FOREIGN KEY (`UserID`) REFERENCES `users` (`userID`),
  ADD CONSTRAINT `transaction_ibfk_8` FOREIGN KEY (`PaymentID`) REFERENCES `payment_recipient` (`PaymentID`),
  ADD CONSTRAINT `transaction_ibfk_9` FOREIGN KEY (`OfferingID`) REFERENCES `offering` (`offering_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

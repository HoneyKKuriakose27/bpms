-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2021 at 12:16 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `honey`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_assignwork`
--

CREATE TABLE `tb_assignwork` (
  `wkid` int(11) NOT NULL,
  `wkdesc` varchar(255) NOT NULL,
  `wkkey` varchar(8) NOT NULL,
  `wkstaffid` int(11) NOT NULL,
  `wkbkkey` varchar(8) NOT NULL,
  `wkstatus` enum('0','1','2','3') NOT NULL,
  `curdate` varchar(255) NOT NULL,
  `dateonly` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_assignwork`
--

INSERT INTO `tb_assignwork` (`wkid`, `wkdesc`, `wkkey`, `wkstaffid`, `wkbkkey`, `wkstatus`, `curdate`, `dateonly`) VALUES
(3, 'Do it ASAP.', '323fd5e7', 4, '25a9bba5', '2', '2021-05-08 04:14:35pm', '2021-05-08');

-- --------------------------------------------------------

--
-- Table structure for table `tb_attendance`
--

CREATE TABLE `tb_attendance` (
  `attendid` int(11) NOT NULL,
  `attendkey` varchar(8) NOT NULL,
  `attendstaffid` int(11) NOT NULL,
  `punchin` varchar(200) NOT NULL,
  `punchout` varchar(200) DEFAULT NULL,
  `curdate` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_attendance`
--

INSERT INTO `tb_attendance` (`attendid`, `attendkey`, `attendstaffid`, `punchin`, `punchout`, `curdate`) VALUES
(1, 'f9df5439', 9, '2021-05-08 05:12:16pm', '2021-05-08 05:41:00pm', NULL),
(2, '1eb71874', 9, '2021-05-08 05:12:34pm', '2021-05-08 05:38:43pm', NULL),
(3, '326e31b3', 12, '2021-05-08 05:14:02pm', '', NULL),
(4, '1dcf7b70', 9, '2021-05-08 05:15:32pm', '2021-05-08 05:38:40pm', NULL),
(5, '5bd20652', 12, '2021-05-08 05:15:49pm', '', NULL),
(6, 'fd614882', 12, '2021-05-08 05:21:26pm', '', NULL),
(7, '6a676a82', 9, '2021-05-08 05:30:24pm', '2021-05-08 05:38:11pm', NULL),
(8, '0e7eaa7e', 9, '2021-05-08 05:42:39pm', '2021-05-08 05:45:14pm', NULL),
(9, 'a1756ae0', 9, '2021-05-08 05:45:07pm', '2021-05-08 05:45:16pm', '2021-05-08'),
(10, 'f9b94535', 9, '2021-05-08 05:48:34pm', '2021-05-08 05:49:16pm', '2021-05-08'),
(11, '38e7de7a', 9, '2021-05-08 07:35:05pm', '2021-06-07 10:15:48am', '2021-05-08'),
(12, 'a51636b3', 9, '2021-05-08 07:36:14pm', '2021-06-07 10:15:46am', '2021-05-08'),
(13, '192b04e4', 9, '2021-06-07 10:15:12am', '2021-06-07 10:15:44am', '2021-06-07');

-- --------------------------------------------------------

--
-- Table structure for table `tb_booking`
--

CREATE TABLE `tb_booking` (
  `bk_id` int(11) NOT NULL,
  `bk_key` varchar(8) NOT NULL,
  `bk_fullname` varchar(50) NOT NULL,
  `bk_email` varchar(100) NOT NULL,
  `bk_address` varchar(100) NOT NULL,
  `bk_apdate` varchar(100) NOT NULL,
  `bk_timeslot` varchar(50) NOT NULL,
  `bk_phone` varchar(15) NOT NULL,
  `bk_feedback` varchar(200) DEFAULT NULL,
  `bk_catid` int(11) NOT NULL,
  `bk_subcatid` int(11) NOT NULL,
  `bk_amt` varchar(20) NOT NULL,
  `bk_status` enum('0','1','2','3') NOT NULL,
  `bk_userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_booking`
--

INSERT INTO `tb_booking` (`bk_id`, `bk_key`, `bk_fullname`, `bk_email`, `bk_address`, `bk_apdate`, `bk_timeslot`, `bk_phone`, `bk_feedback`, `bk_catid`, `bk_subcatid`, `bk_amt`, `bk_status`, `bk_userid`) VALUES
(15, '25a9bba5', 'Simi S', 'simi@gmail.com', 'Simi Bhavan', '2021-05-20', '9am - 10am', '9645067890', 'Bill Paid', 2, 3, '599', '1', 20),
(16, 'f298b78d', 'Honey', 'honey@gmail.com', 'Hone Villa', '2021-05-27', '11am - 12pm', '9876543210', 'Bill Paid', 3, 4, '250', '1', 20);

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `catid` int(11) NOT NULL,
  `catkey` varchar(8) NOT NULL,
  `catname` varchar(100) NOT NULL,
  `catdesc` varchar(100) NOT NULL,
  `catstatus` enum('0','1') NOT NULL DEFAULT '0',
  `loginid` int(11) NOT NULL,
  `delstatus` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`catid`, `catkey`, `catname`, `catdesc`, `catstatus`, `loginid`, `delstatus`) VALUES
(1, '894f1309', 'Health Care', 'Used mainly for the skin.', '1', 1, '0'),
(2, '6d4fe1b6', 'Hair Care', 'Products used for the healthy hair.', '1', 1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `tb_customer`
--

CREATE TABLE `tb_customer` (
  `custid` int(11) NOT NULL,
  `custkey` varchar(8) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `proof` varchar(100) NOT NULL,
  `loginid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_customer`
--

INSERT INTO `tb_customer` (`custid`, `custkey`, `fname`, `address`, `phone`, `proof`, `loginid`) VALUES
(1, '76675d91', 'Honey K Kuriakose', 'Honey Villa User', '7356308128', 'FINAL_14_03_2020_Hindi_page-0001.png', 20),
(2, '4a3c64e9', 'Bismi', 'Bismi Villa', '8989898989', 'staffDetails.pdf', 21);

-- --------------------------------------------------------

--
-- Table structure for table `tb_jobapply`
--

CREATE TABLE `tb_jobapply` (
  `applyid` int(11) NOT NULL,
  `applykey` varchar(8) NOT NULL,
  `applyresume` varchar(100) NOT NULL,
  `applyloginid` int(11) NOT NULL,
  `applydate` date NOT NULL,
  `applyjobid` int(11) NOT NULL,
  `applystatus` enum('0','1','2','3') NOT NULL,
  `applyfeedback` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_jobapply`
--

INSERT INTO `tb_jobapply` (`applyid`, `applykey`, `applyresume`, `applyloginid`, `applydate`, `applyjobid`, `applystatus`, `applyfeedback`) VALUES
(12, 'bf6e5948', 'AnuragResumeUpdated2021Latest.pdf', 20, '2007-06-21', 6, '1', 'Approved'),
(13, '71a3be51', 'AnuragResumeUpdated2021Latest.pdf', 20, '2007-06-21', 3, '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_jobs`
--

CREATE TABLE `tb_jobs` (
  `jid` int(11) NOT NULL,
  `jkey` varchar(8) NOT NULL,
  `jtitle` varchar(100) NOT NULL,
  `jqual` varchar(100) NOT NULL,
  `jexp` varchar(50) NOT NULL,
  `jtype` varchar(50) NOT NULL,
  `jskills` varchar(255) NOT NULL,
  `jsalary` varchar(50) NOT NULL,
  `jnovacancy` varchar(5) NOT NULL,
  `jdate` date NOT NULL,
  `jlastdate` date NOT NULL,
  `jdesc` varchar(500) NOT NULL,
  `jstatus` enum('0','1','2','3') NOT NULL,
  `loginid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_jobs`
--

INSERT INTO `tb_jobs` (`jid`, `jkey`, `jtitle`, `jqual`, `jexp`, `jtype`, `jskills`, `jsalary`, `jnovacancy`, `jdate`, `jlastdate`, `jdesc`, `jstatus`, `loginid`) VALUES
(3, 'c5e2ea26', 'Female Beautician', 'Certification in any Beautician Course', '1year', 'Full Time', 'Beauty Care, Massage, Unisex Salon', '8000/Month', '5', '2007-06-21', '2021-06-30', 'Good knowledge in Technician,Therapy,Hair Styling,Skin Care,Bleaching,Massage,Beautician Activities,Threading etc.', '1', 1),
(6, 'c9a6fa30', 'Male Beautician', 'Certification in any Beautician Course', '2years', 'Full Time', 'Beauty Care, Massage, Unisex Salon', '10000/Month', '2', '2007-06-21', '2021-06-30', 'Good knowledge in Technician,Therapy,Hair Styling,Skin Care,Bleaching,Massage,Beautician Activities,Threading etc.', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_leave`
--

CREATE TABLE `tb_leave` (
  `lvid` int(11) NOT NULL,
  `lvkey` varchar(8) NOT NULL,
  `lvuserid` int(11) NOT NULL,
  `lvpurpose` varchar(255) NOT NULL,
  `lvstartdate` varchar(100) NOT NULL,
  `lvenddate` varchar(100) NOT NULL,
  `curdate` varchar(50) NOT NULL,
  `status` enum('0','1','2','3') NOT NULL,
  `lvfeedback` varchar(200) DEFAULT NULL,
  `applydate` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_leave`
--

INSERT INTO `tb_leave` (`lvid`, `lvkey`, `lvuserid`, `lvpurpose`, `lvstartdate`, `lvenddate`, `curdate`, `status`, `lvfeedback`, `applydate`) VALUES
(2, '257e4447', 9, 'Going for marriage', '2021-05-13', '2021-05-17', '2021-05-08', '2', 'Rejected', '2021-05-08 06:06:47 PM'),
(3, '59ce671b', 9, 'Marriage', '2021-05-20', '2021-05-22', '2021-05-08', '1', 'Approved', '2021-05-08 06:20:57 PM');

-- --------------------------------------------------------

--
-- Table structure for table `tb_login`
--

CREATE TABLE `tb_login` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` enum('0','1','2') NOT NULL,
  `utype` enum('0','1','2') NOT NULL,
  `delstatus` enum('0','1') NOT NULL,
  `atstatus` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_login`
--

INSERT INTO `tb_login` (`id`, `username`, `password`, `status`, `utype`, `delstatus`, `atstatus`) VALUES
(1, 'admin@gmail.com', '751cb3f4aa17c36186f4856c8982bf27', '1', '0', '0', NULL),
(2, 'honey@gmail.com', '751cb3f4aa17c36186f4856c8982bf27', '1', '1', '0', NULL),
(9, 'honeystaff@gmail.com', '751cb3f4aa17c36186f4856c8982bf27', '1', '2', '0', '2021-06-07'),
(12, 'tony@gmail.com', '751cb3f4aa17c36186f4856c8982bf27', '1', '2', '0', NULL),
(13, 'bijimol@gmail.com', 'f7cc43438ef7c59ed7eca43b3b3b4ee5', '1', '2', '0', NULL),
(19, 'soumya@gmail.com', '751cb3f4aa17c36186f4856c8982bf27', '1', '1', '0', NULL),
(20, 'honeykkuriakose@mca.ajce.in', '751cb3f4aa17c36186f4856c8982bf27', '1', '1', '0', NULL),
(21, 'bismi@gmail.com', '751cb3f4aa17c36186f4856c8982bf27', '2', '1', '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_productbookings`
--

CREATE TABLE `tb_productbookings` (
  `pbid` int(11) NOT NULL,
  `pbkey` varchar(8) NOT NULL,
  `pbitems` varchar(255) NOT NULL,
  `pbamount` decimal(10,0) NOT NULL,
  `pbdate` date NOT NULL,
  `pbuserid` int(11) NOT NULL,
  `pbstatus` enum('0','1','2','3','4') NOT NULL,
  `pb_feedback` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_productbookings`
--

INSERT INTO `tb_productbookings` (`pbid`, `pbkey`, `pbitems`, `pbamount`, `pbdate`, `pbuserid`, `pbstatus`, `pb_feedback`) VALUES
(2, '921645b1', 'Body Lotion - 2', '1000', '2004-05-21', 20, '4', 'Bill Paid'),
(3, '2887183b', 'Dhathri Hairoil - 4', '1', '2004-05-21', 20, '2', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_servicecat`
--

CREATE TABLE `tb_servicecat` (
  `catid` int(11) NOT NULL,
  `catkey` varchar(8) NOT NULL,
  `catname` varchar(100) NOT NULL,
  `catdesc` varchar(100) NOT NULL,
  `catstatus` enum('0','1') NOT NULL DEFAULT '0',
  `loginid` int(11) NOT NULL,
  `delstatus` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_servicecat`
--

INSERT INTO `tb_servicecat` (`catid`, `catkey`, `catname`, `catdesc`, `catstatus`, `loginid`, `delstatus`) VALUES
(1, '26c4ad47', 'Hair', 'Service-related to hair.', '1', 1, '0'),
(2, 'bf989b1f', 'Face', 'Face relted service are available', '1', 1, '0'),
(3, '5029ae7e', 'Hair', 'Hair Spa.', '1', 1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `tb_servicesubcat`
--

CREATE TABLE `tb_servicesubcat` (
  `scatid` int(11) NOT NULL,
  `scatkey` varchar(8) NOT NULL,
  `scatname` varchar(100) NOT NULL,
  `scatdesc` varchar(100) NOT NULL,
  `amt` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `scatstatus` enum('0','1') NOT NULL,
  `catid` int(11) NOT NULL,
  `loginid` int(11) NOT NULL,
  `delstatus` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_servicesubcat`
--

INSERT INTO `tb_servicesubcat` (`scatid`, `scatkey`, `scatname`, `scatdesc`, `amt`, `image`, `scatstatus`, `catid`, `loginid`, `delstatus`) VALUES
(3, 'fff63932', 'Golden facial', 'Last for 2 months. Nice for marriages.', '599', 'logo-flag.png', '1', 2, 1, '0'),
(4, '3c6e3dd8', 'Henna', 'Hair Cleaning.', '250', 'emblem.png', '1', 3, 1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `tb_staffreg`
--

CREATE TABLE `tb_staffreg` (
  `engid` int(11) NOT NULL,
  `engkey` varchar(8) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phno` varchar(10) NOT NULL,
  `district` varchar(20) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `loginid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_staffreg`
--

INSERT INTO `tb_staffreg` (`engid`, `engkey`, `fname`, `lname`, `address`, `gender`, `phno`, `district`, `pincode`, `loginid`) VALUES
(4, '00289f35', 'Honey', 'K', 'Honey Bhavan', 'Female', '9645000000', 'Idukki', '695614', 9),
(5, 'a2716494', 'Tony', 'K', 'Tony Villa', 'Male', '9645345678', 'Idukki', '695614', 12),
(6, 'c2fe5deb', 'Biji', 'Mol', 'Biji Villa', 'Female', '9789345678', 'Idukki', '123456', 13);

-- --------------------------------------------------------

--
-- Table structure for table `tb_subcat`
--

CREATE TABLE `tb_subcat` (
  `scatid` int(11) NOT NULL,
  `scatkey` varchar(8) NOT NULL,
  `scatname` varchar(100) NOT NULL,
  `scatdesc` varchar(100) NOT NULL,
  `mfg` varchar(100) NOT NULL,
  `exp` varchar(100) NOT NULL,
  `amt` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `scatstatus` enum('0','1') NOT NULL,
  `catid` int(11) NOT NULL,
  `loginid` int(11) NOT NULL,
  `delstatus` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_subcat`
--

INSERT INTO `tb_subcat` (`scatid`, `scatkey`, `scatname`, `scatdesc`, `mfg`, `exp`, `amt`, `image`, `scatstatus`, `catid`, `loginid`, `delstatus`) VALUES
(9, '12cb6987', 'Dhathri Hairoil', 'Used for the smoothening of hair', '2021-04-21', '2021-06-24', '250', 'aaa.png', '1', 2, 1, '0'),
(10, '2e334dee', 'Body Lotion', 'Used for skin nourishment.', '2021-05-12', '2021-05-28', '500', 'phpmyadmin.png', '1', 1, 1, '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_assignwork`
--
ALTER TABLE `tb_assignwork`
  ADD PRIMARY KEY (`wkid`);

--
-- Indexes for table `tb_attendance`
--
ALTER TABLE `tb_attendance`
  ADD PRIMARY KEY (`attendid`);

--
-- Indexes for table `tb_booking`
--
ALTER TABLE `tb_booking`
  ADD PRIMARY KEY (`bk_id`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `tb_customer`
--
ALTER TABLE `tb_customer`
  ADD PRIMARY KEY (`custid`);

--
-- Indexes for table `tb_jobapply`
--
ALTER TABLE `tb_jobapply`
  ADD PRIMARY KEY (`applyid`);

--
-- Indexes for table `tb_jobs`
--
ALTER TABLE `tb_jobs`
  ADD PRIMARY KEY (`jid`);

--
-- Indexes for table `tb_leave`
--
ALTER TABLE `tb_leave`
  ADD PRIMARY KEY (`lvid`);

--
-- Indexes for table `tb_login`
--
ALTER TABLE `tb_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_productbookings`
--
ALTER TABLE `tb_productbookings`
  ADD PRIMARY KEY (`pbid`);

--
-- Indexes for table `tb_servicecat`
--
ALTER TABLE `tb_servicecat`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `tb_servicesubcat`
--
ALTER TABLE `tb_servicesubcat`
  ADD PRIMARY KEY (`scatid`);

--
-- Indexes for table `tb_staffreg`
--
ALTER TABLE `tb_staffreg`
  ADD PRIMARY KEY (`engid`);

--
-- Indexes for table `tb_subcat`
--
ALTER TABLE `tb_subcat`
  ADD PRIMARY KEY (`scatid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_assignwork`
--
ALTER TABLE `tb_assignwork`
  MODIFY `wkid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_attendance`
--
ALTER TABLE `tb_attendance`
  MODIFY `attendid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_booking`
--
ALTER TABLE `tb_booking`
  MODIFY `bk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_customer`
--
ALTER TABLE `tb_customer`
  MODIFY `custid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_jobapply`
--
ALTER TABLE `tb_jobapply`
  MODIFY `applyid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_jobs`
--
ALTER TABLE `tb_jobs`
  MODIFY `jid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_leave`
--
ALTER TABLE `tb_leave`
  MODIFY `lvid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_login`
--
ALTER TABLE `tb_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tb_productbookings`
--
ALTER TABLE `tb_productbookings`
  MODIFY `pbid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_servicecat`
--
ALTER TABLE `tb_servicecat`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_servicesubcat`
--
ALTER TABLE `tb_servicesubcat`
  MODIFY `scatid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_staffreg`
--
ALTER TABLE `tb_staffreg`
  MODIFY `engid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_subcat`
--
ALTER TABLE `tb_subcat`
  MODIFY `scatid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

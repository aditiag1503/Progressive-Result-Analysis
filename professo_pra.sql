-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 19, 2013 at 10:49 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `professo_pra`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE IF NOT EXISTS `branch` (
  `br` varchar(10) DEFAULT NULL,
  `br_ff` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`br`, `br_ff`) VALUES
('IT', 'Information Technology'),
('CSE', 'Computer Science & Engg.'),
('ETC', 'Electronics & Telecom. Engg.'),
('CIVIL', 'Civil Engg.'),
('EE', 'Electrical Engg.'),
('EEE', 'Electronics & Elex. Engg.'),
('MECH', 'Mechanical Engg.');

-- --------------------------------------------------------

--
-- Table structure for table `it_10_5`
--

CREATE TABLE IF NOT EXISTS `it_10_5` (
  `crn` int(11) DEFAULT NULL,
  `urn` varchar(10) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `spi` varchar(5) DEFAULT NULL,
  `cpi` varchar(5) DEFAULT NULL,
  `tscn` int(11) DEFAULT NULL,
  `pcs` int(11) DEFAULT NULL,
  `mp` int(11) DEFAULT NULL,
  `coa` int(11) DEFAULT NULL,
  `os` int(11) DEFAULT NULL,
  `java` int(11) DEFAULT NULL,
  `sum` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`urn`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_10_5`
--

INSERT INTO `it_10_5` (`crn`, `urn`, `sname`, `spi`, `cpi`, `tscn`, `pcs`, `mp`, `coa`, `os`, `java`, `sum`, `total`) VALUES
(1, '3013308001', 'AANCHAL ARORA', '9.354', '', 45, 66, 55, 56, 52, 58, 332, 834),
(2, '3013308003', 'ABHISHEK SONI', '7.322', '', 34, 28, 37, 36, 53, 56, 244, 633),
(3, '3013308004', 'ABHISHEK VERMA', '0', '', 30, 46, 17, 47, 52, 53, 245, 582),
(4, '3013308005', 'ADITYA JAIN', '7.129', '', 43, 47, 46, 34, 33, 50, 253, 623),
(5, '3013308006', 'AKASH TAMRAKAR', '8.225', '', 36, 40, 37, 37, 59, 52, 261, 726),
(6, '3013308007', 'AKHIL CHAUDHARI', '9.032', '', 46, 58, 63, 47, 74, 60, 348, 805),
(7, '3013308008', 'AKTA AGRAWAL', '8.45', '', 42, 47, 39, 48, 49, 46, 271, 729),
(8, '3013308009', 'ALOK KUMAR SINGH', '9.290', '', 55, 49, 59, 55, 64, 59, 341, 838),
(9, '3013308010', 'AMBER GUPTA', '9.225', '', 45, 58, 60, 46, 66, 66, 341, 835),
(10, '3013308011', 'ANKITA GARG', '8.354', '', 43, 60, 45, 56, 71, 43, 318, 744),
(11, '3013308012', 'ANKUR CHOWDHURY', '7.54', '', 36, 32, 23, 40, 53, 63, 247, 666),
(12, '3013308013', 'ANKUR PODDAR', '7.709', '', 43, 60, 45, 36, 54, 38, 276, 681),
(13, '3013308015', 'BHUMIKA MISHRA', '8.419', '', 50, 48, 40, 43, 60, 45, 286, 732),
(14, '3013308016', 'CHANDRA PRAKASH', '0', '', 28, 5, NULL, 22, 28, 4, 87, 408),
(15, '3013308017', 'DEEPAK SAHU', '7.129', '', 39, 49, 45, 28, 49, 23, 233, 615),
(16, '3013308018', 'KANCHAN NAIR', '8.774', '', 61, 56, 57, 65, 62, 38, 339, 786),
(17, '3013308019', 'MANISH VINAYAK', '8.645', '', 61, 56, 44, 50, 67, 61, 339, 773),
(18, '3013308020', 'MAYANK JAIN', '8.451', '', 36, 49, 47, 49, 37, 59, 277, 756),
(19, '3013308021', 'MOHD SUYEB AHMED SIDDIQUI', '7.709', '', 44, 49, 55, 41, 54, 33, 276, 680),
(20, '3013308022', 'NAVPREET G MATHEW', '7.580', '', 45, 36, 46, 35, 47, 52, 261, 676),
(21, '3013308023', 'NITIN KUMAR', '9.032', '', 46, 45, 59, 52, 61, 57, 320, 809),
(22, '3013308024', 'PINKESH PANDEY', '8.612', '', 45, 36, 39, 39, 58, 58, 275, 753),
(23, '3013308025', 'PRATEEK DWIVEDI', '8.419', '', 59, 46, 40, 40, 59, 51, 295, 745),
(24, '3013308026', 'PUJA PANDEY', '9.903', '', 68, 67, 65, 65, 56, 65, 386, 898),
(25, '3013308027', 'RAKSHA JAIN', '9.774', '', 66, 61, 64, 58, 68, 64, 381, 888),
(26, '3013308028', 'RANJOY SARKAR', '7.387', '', 33, 45, 51, 36, 44, 32, 241, 650),
(27, '3013308029', 'REEMA NANWANI', '7.774', '', 36, 45, 53, 44, 50, 50, 278, 680),
(28, '3013308030', 'RENU MISHRA', '9.580', '', 64, 69, 69, 59, 64, 54, 379, 868),
(29, '3013308031', 'RINA SAO', '8.516', '', 43, 43, 39, 46, 47, 56, 274, 736),
(30, '3013308032', 'ROMA GUPTA', '9.064', '', 63, 49, 57, 51, 42, 57, 319, 806),
(31, '3013308033', 'RUCHI SHAIL', '9.290', '', 63, 61, 48, 54, 54, 59, 339, 843),
(32, '3013308034', 'SACHIN SHARMA', '8.451', '', 37, 50, 54, 38, 60, 59, 298, 744),
(33, '3013308035', 'SHANTANU PATEL', '8.580', '', 38, 46, 50, 45, 54, 55, 288, 749),
(34, '3013308037', 'SHILPI CHOPADA', '9.677', '', 74, 60, 68, 59, 54, 66, 381, 888),
(35, '3013308038', 'SHREYA PRIYA', '8.387', '', 44, 55, 44, 43, 49, 59, 294, 739),
(36, '3013308040', 'SHWETA PRADHAN', '8.387', '', 42, 54, 44, 56, 40, 63, 299, 743),
(37, '3013308041', 'SIDDHARTH PANDEY', '0', '', 28, 23, 9, 37, 50, 35, 182, 546),
(38, '3013308042', 'SMITA RATH', '9.354', '', 53, 59, 59, 53, 67, 52, 343, 834),
(39, '3013308043', 'SMITA TIWARY', '9.096', '', 48, 36, 57, 63, 65, 52, 321, 818),
(40, '3013308044', 'SONAL SHARMA', '8.032', '', 45, 53, 44, 38, 56, 49, 285, 700),
(41, '3013308045', 'SOURABH PATLE', '9.129', '', 53, 57, 54, 58, 61, 57, 340, 832),
(42, '3013308046', 'SUSHMITA SINGH', '9.193', '', 57, 40, 73, 62, 62, 48, 342, 809),
(43, '3013308047', 'SWETA SHANDILYA', '8.903', '', 56, 55, 50, 45, 56, 57, 319, 791),
(44, '3013308048', 'VIBHOOTI MARKANDEY', '8.064', '', 51, 48, 46, 42, 51, 65, 303, 712),
(45, '3013308049', 'AKASH SINGHAL', '7.709', '', 55, 45, 38, 38, 56, 59, 291, 679),
(46, '3013308050', 'AASTHA CHANDEL', '8.580', '', 36, 54, 66, 40, 59, 50, 305, 748),
(47, '3013308051', 'ARCHANA SAMAL', '7.022', '', 36, 37, 28, 40, 39, 52, 232, 622),
(48, '3013308052', 'DEVVRAT TIWARI', '8.354', '', 45, 46, 45, 48, 61, 56, 301, 735),
(49, '3013308054', 'GUNJAN MITTAL', '7.516', '', 49, 35, 45, 41, 48, 55, 273, 652),
(50, '3013308055', 'RICHA JAIN', '8.806', '', 59, 33, 58, 54, 65, 46, 315, 789),
(51, '3013308056', 'RAHUL SIRMOUR', '7.193', '', 47, 43, 44, 48, 58, 28, 268, 640),
(52, '3013308059', 'SHREEYA DIXIT', '7.741', '', 48, 33, 40, 41, 65, 37, 264, 686),
(53, '3013308061', 'YASH JAIN', '7.612', '', 46, 41, 55, 46, 50, 33, 271, 671),
(54, '3013308063', 'MAYURI BANDHYOPADHYAY', '8.096', '', 49, 52, 44, 50, 54, 59, 308, 706),
(55, '3013308065', 'NITESH JAIN', '9.129', '', 54, 55, 44, 53, 55, 58, 319, 816),
(56, '3013308066', 'PREETI BALA THAKUR', '0', '', 38, 21, 41, 47, 59, 28, 234, 681),
(57, '3013308301', 'AJIT KUMAR THAKUR', '0', '', 52, 8, 9, 43, 55, 53, 220, 618),
(58, '3013308302', 'AMRITA KALASKAR', '8.032', '', 65, 42, 56, 44, 66, 51, 324, 726),
(59, '3013308304', 'SUNAINA BABER', '0', '', 41, 12, 9, 38, 57, 43, 200, 567),
(60, '3013308305', 'TAKESHWAR KASHYAP', '0', '', 36, 21, 20, 35, 40, 15, 167, 561),
(61, '3013308306', 'URVASHI DEWANGAN', '8.967', '', 50, 49, 66, 60, 47, 58, 330, 809);

-- --------------------------------------------------------

--
-- Table structure for table `it_10_5s`
--

CREATE TABLE IF NOT EXISTS `it_10_5s` (
  `subject` varchar(10) NOT NULL,
  PRIMARY KEY (`subject`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_10_5s`
--

INSERT INTO `it_10_5s` (`subject`) VALUES
('coa'),
('java'),
('mp'),
('os'),
('pcs'),
('tscn');

-- --------------------------------------------------------

--
-- Table structure for table `it_10_teacher`
--

CREATE TABLE IF NOT EXISTS `it_10_teacher` (
  `name` varchar(50) DEFAULT NULL,
  `subject` varchar(10) NOT NULL,
  `sub_ff` varchar(75) DEFAULT NULL,
  `sem` int(11) DEFAULT NULL,
  PRIMARY KEY (`subject`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_10_teacher`
--

INSERT INTO `it_10_teacher` (`name`, `subject`, `sub_ff`, `sem`) VALUES
('', 'tscn', '', 5),
('', 'pcs', '', 5),
('', 'mp', '', 5),
('', 'coa', '', 5),
('', 'os', '', 5),
('', 'java', '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `it_11_1`
--

CREATE TABLE IF NOT EXISTS `it_11_1` (
  `crn` int(11) DEFAULT NULL,
  `urn` varchar(10) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `spi` varchar(5) DEFAULT NULL,
  `cpi` varchar(5) DEFAULT NULL,
  `comm` int(11) DEFAULT NULL,
  `chem` int(11) DEFAULT NULL,
  `p1` int(11) DEFAULT NULL,
  `m1` int(11) DEFAULT NULL,
  `bee` int(11) DEFAULT NULL,
  `em` int(11) DEFAULT NULL,
  `sum` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`urn`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_11_1`
--

INSERT INTO `it_11_1` (`crn`, `urn`, `sname`, `spi`, `cpi`, `comm`, `chem`, `p1`, `m1`, `bee`, `em`, `sum`, `total`) VALUES
(1, '3013307001', 'AASHUTOSH KUMAR DUTTA', '7.75', '7.75', 41, 35, 55, 40, 53, 44, 268, 709),
(2, '3013307002', 'ABHISHEK JAIN', '8.75', '8.75', 60, 55, 52, 68, 61, 68, 364, 788),
(3, '3013307003', 'ABHISHEK KUMAR KARAN', '7.5', '7.5', 63, 33, 52, 44, 42, 44, 278, 696),
(4, '3013307004', 'ABHISHEK KUMAR SINGH', '0', '0', 30, 22, 33, 50, 28, 31, 194, 602),
(5, '3013307005', 'ADITYA BHALE', '7.687', '7.687', 69, 58, 46, 50, 34, 45, 302, 717),
(5, '3013307006', 'AKHILESH KUMAR CHANDRAKER', '0', '0', 33, 32, 39, 28, 28, 19, 179, 548),
(6, '3013307007', 'ANKITA PRASAD', '8.687', '8.687', 65, 45, 55, 60, 58, 60, 343, 786),
(7, '3013307008', 'ANNAPURNA DEWANGAN', '8.781', '8.781', 66, 51, 49, 66, 69, 55, 356, 810),
(8, '3013307009', 'ANURAG JAIN', '8.656', '8.656', 51, 43, 64, 68, 47, 50, 323, 772),
(8, '3013307010', 'APOORVA JAIN', '7.906', '7.906', 66, 36, 41, 49, 46, 39, 277, 705),
(9, '3013307011', 'ASHUTOSH NAYAK', '8.156', '8.156', 68, 48, 50, 44, 50, 49, 309, 750),
(10, '3013307012', 'ATIK BAID', '8.781', '8.781', 46, 47, 60, 65, 57, 60, 335, 778),
(11, '3013307013', 'BISWARUP KONAR', '7.437', '7.437', 39, 45, 41, 44, 39, 50, 258, 679),
(12, '3013307014', 'CHANDRAKANT JAISWAL', '0', '0', 22, 14, 28, 41, 25, 28, 158, 541),
(13, '3013307015', 'D.BHAVANA PILLAY', '0', '0', 63, 18, 32, 45, 28, 47, 233, 670),
(14, '3013307016', 'DARSHAN SANKHALA', '0', '0', 33, 36, 34, 21, 25, 23, 172, 543),
(15, '3013307017', 'DEEPESH VISWANATHAN', '0', '0', 40, 29, 40, 49, 17, 31, 206, 579),
(16, '3013307018', 'DEEPTI SHARMA', '0', '0', 60, 17, 28, 44, 18, 49, 216, 657),
(17, '3013307019', 'G.DIVYA NAIDU', '6.875', '6.875', 45, 40, 42, 28, 34, 34, 223, 632),
(18, '3013307020', 'GARIMA AGRAWAL', '7.812', '7.812', 50, 36, 50, 52, 59, 37, 284, 689),
(19, '3013307021', 'HEMCHANDRA DEWANGAN', '7.531', '7.531', 35, 32, 48, 57, 51, 36, 259, 660),
(20, '3013307022', 'KRITIKA NAGPAL', '7.843', '7.843', 70, 45, 54, 39, 47, 31, 286, 709),
(21, '3013307023', 'KUMAR GAURAV', '7.875', '7.875', 45, 38, 50, 40, 52, 43, 268, 706),
(22, '3013307024', 'MANEESH VERMA', '7.593', '7.593', 37, 47, 46, 52, 31, 33, 246, 677),
(23, '3013307025', 'MOHD ATIF TAHIR', '7.718', '7.188', 67, 40, 39, 52, 46, 28, 272, 699),
(24, '3013307026', 'NAGESH KUMAR SAHU', '7.531', '7.531', 33, 32, 39, 54, 51, 48, 257, 683),
(25, '3013307027', 'NAMRATA SUR', '0', '0', 38, 31, 33, 28, 17, 19, 166, 555),
(26, '3013307028', 'NEHA', '8.031', '8.031', 70, 35, 39, 57, 50, 56, 307, 725),
(27, '3013307029', 'NEHA RAI', '8.25', '8.25', 69, 49, 47, 37, 39, 60, 301, 746),
(28, '3013307030', 'NIKET KUMAR AGRAWAL', '8.187', '8.187', 55, 38, 46, 52, 56, 62, 309, 738),
(29, '3013307031', 'NIKHIL CHIVANE', '8.031', '8.031', 60, 33, 54, 55, 44, 57, 303, 737),
(30, '3013307032', 'NISHA SAHU', '9.125', '9.125', 70, 49, 58, 73, 65, 62, 377, 822),
(31, '3013307033', 'NISHANK SAHNI', '8.312', '8.132', 68, 49, 48, 48, 74, 54, 341, 756),
(32, '3013307034', 'NUPUR SULTANIA', '7.687', '7.687', 70, 38, 36, 51, 43, 39, 169, 700),
(33, '3013307035', 'PRAKASH KUMAR SINGH', '8.062', '8.062', 65, 49, 51, 35, 36, 49, 285, 714),
(34, '3013307036', 'RAMANDEEP SINGH SODHI', '0', '0', 62, 32, 28, 28, 16, 29, 133, 572),
(35, '3013307037', 'RASHMEET KAUR CHAWLA', '8.281', '8.281', 70, 50, 58, 57, 50, 51, 336, 751),
(36, '3013307038', 'SAMSON KUMAR RAI', '7.562', '7.562', 38, 28, 38, 49, 48, 40, 241, 670),
(37, '3013307039', 'SANGITA KUMARI', '8.312', '8.312', 43, 46, 46, 50, 58, 65, 308, 745),
(38, '3013307040', 'SANKALP KUMAR SINGH', '7.218', '7.218', 30, 28, 38, 40, 38, 39, 213, 631),
(39, '3013307041', 'SHILPA PANDEY', '7.406', '7.406', 45, 37, 43, 45, 33, 45, 248, 674),
(40, '3013307042', 'SHREYANSH RICHHARIYA', '7.031', '7.031', 45, 36, 43, 23, 45, 34, 226, 638),
(41, '3013307043', 'SHRUTI GUPTA', '0', '0', 53, 34, 54, 44, 21, 46, 252, 695),
(42, '3013307044', 'SOURABH GUPTA', '7.656', '7.656', 36, 35, 46, 36, 53, 67, 273, 695),
(43, '3013307045', 'T.P.ASHISH', '7.406', '7.406', 41, 28, 43, 52, 35, 43, 242, 661),
(44, '3013307046', 'URVASHI KUKREJA', '8.375', '8.375', 48, 35, 63, 49, 58, 45, 298, 742),
(45, '3013307047', 'UTTAM KUMAR SAH', '6.843', '6.843', 38, 30, 43, 54, 28, 25, 218, 598),
(46, '3013307048', 'VIJAY LAXMI SAHU', '0', '0', 38, 22, 44, 44, 59, 41, 248, 669),
(47, '3013307049', 'VINAY GAJPAL', '8.031', '8.031', 55, 36, 46, 52, 53, 55, 297, 720),
(48, '3013307050', 'VINITA THAWRANI', '9.75', '9.75', 71, 54, 67, 70, 70, 73, 405, 875),
(49, '3013307051', 'VIVEK SAHU', '7.937', '7.937', 65, 30, 56, 54, 41, 54, 300, 739),
(50, '3013307052', 'YASHICA GAUTAM', '8.062', '8.062', 51, 54, 35, 63, 30, 62, 295, 732),
(51, '3013307053', 'AEHTESHAM UL HASAN KHAN', '0', '0', 29, 19, 22, 22, 10, 11, 113, 449),
(52, '3013307054', 'HARSH BAFNA', '8.312', '8.312', 59, 37, 65, 51, 55, 53, 320, 763),
(53, '3013307055', 'HIRESH KUMAR', '7.5', '7.5', 28, 32, 42, 35, 56, 61, 254, 673),
(54, '3013307056', 'MAHESH KUMAR GOYAL', '8.843', '8.843', 53, 40, 57, 64, 53, 68, 335, 795),
(55, '3013307057', 'NUPUR KOUL', '8.5', '8.5', 60, 62, 52, 49, 47, 70, 340, 787),
(56, '3013307058', 'PIYUSH SHARMA', '0', '0', 61, 23, 34, 18, 6, 16, 158, 550),
(57, '3013307059', 'RASHI JAIN', '8.437', '8.437', 40, 52, 54, 52, 67, 62, 327, 773),
(58, '3013307060', 'SAKET GOPE', '0', '0', 39, 10, 24, 6, 17, 24, 120, 519),
(59, '3013307061', 'SHALINI BANIK', '0', '0', 46, 32, 28, 7, 22, 21, 156, 529),
(60, '3013307062', 'SHILPA AGRAWAL', '0', '0', 41, 41, 49, 11, 36, 35, 213, 627),
(61, '3013307063', 'SWAPNIL DEWANGAN', '7.5', '7.5', 40, 36, 48, 46, 48, 54, 272, 681),
(62, '3013307064', 'SWAPNIL SHARMA', '0', '0', 23, 20, 29, 4, 13, 12, 101, 479),
(63, '3013307065', 'VIPUL KUMAR CHANDRAKAR', '7.968', '7.968', 52, 33, 56, 67, 61, 61, 330, 719),
(64, '3013307066', 'KARANPREET SINGH GILL', '0', '0', 32, 30, 29, 37, NULL, 44, 172, 0),
(65, '3013307067', 'SURABHI SHRIVASTAVA', '7.4', '7.4', 37, 37, 30, 54, 36, 29, 223, 656),
(66, '3013307068', 'VINIT SONI', '7.4', '7.4', 64, 35, 50, 36, 45, 44, 274, 691);

-- --------------------------------------------------------

--
-- Table structure for table `it_11_1s`
--

CREATE TABLE IF NOT EXISTS `it_11_1s` (
  `subject` varchar(10) NOT NULL,
  PRIMARY KEY (`subject`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_11_1s`
--

INSERT INTO `it_11_1s` (`subject`) VALUES
('bee'),
('chem'),
('comm'),
('em'),
('m1'),
('p1');

-- --------------------------------------------------------

--
-- Table structure for table `it_11_1_back`
--

CREATE TABLE IF NOT EXISTS `it_11_1_back` (
  `crn` int(11) DEFAULT NULL,
  `urn` varchar(10) NOT NULL DEFAULT '',
  `sname` varchar(50) DEFAULT NULL,
  `spi` varchar(5) DEFAULT NULL,
  `cpi` varchar(5) DEFAULT NULL,
  `comm` int(11) DEFAULT NULL,
  `chem` int(11) DEFAULT NULL,
  `p1` int(11) DEFAULT NULL,
  `m1` int(11) DEFAULT NULL,
  `bee` int(11) DEFAULT NULL,
  `em` int(11) DEFAULT NULL,
  `sum` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `attempt` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`urn`,`attempt`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_11_1_back`
--

INSERT INTO `it_11_1_back` (`crn`, `urn`, `sname`, `spi`, `cpi`, `comm`, `chem`, `p1`, `m1`, `bee`, `em`, `sum`, `total`, `attempt`) VALUES
(17, '3013307066', 'KARANPREET SINGH GILL', '7.03', 'NULL', 32, 30, 29, 37, 31, 44, 203, 622, 2),
(16, '3013307064', 'SWAPNIL SHARMA', '0', 'NULL', 32, 34, 29, 28, 5, 16, 144, 522, 2),
(15, '3013307062', 'SHILPA AGRAWAL', '7.343', '7.343', 41, 41, 49, 41, 36, 35, 243, 657, 2),
(14, '3013307061', 'SHALINI BANIK', '0', 'NULL', 46, 32, 28, 7, 19, 22, 154, 527, 2),
(13, '3013307060', 'SAKET GOPE', '0', 'NULL', 39, 18, 15, NULL, 2, NULL, 74, 473, 2),
(12, '3013307058', 'PIYUSH SHARMA', '0', 'NULL', 61, 33, 34, 29, 23, 29, 209, 601, 2),
(11, '3013307053', 'AEHTESHAM UL HASAN KHAN', '0', 'NULL', 29, 28, 7, 6, 5, 28, 103, 439, 2),
(10, '3013307043', 'SHRUTI GUPTA', '7.718', '7.718', 53, 34, 54, 44, 39, 46, 270, 713, 2),
(9, '3013307036', 'RAMANDEEP SINGH SODHI', '0', 'NULL', 62, 32, 28, 28, 13, 29, 130, 569, 2),
(8, '3013307027', 'NAMRATA SUR', '6.656', '6.656', 38, 31, 33, 28, 29, 44, 203, 592, 2),
(7, '3013307018', 'DEEPTI SHARMA', '7.781', '7.781', 60, 39, 28, 44, 46, 49, 266, 707, 2),
(5, '3013307016', 'DARSHAN SANKHALA', '0', 'NULL', 33, 36, 34, NULL, 5, 5, 113, 484, 2),
(6, '3013307017', 'DEEPESH VISWANATHAN', '6.843', '6.843', 40, 29, 40, 49, 35, 31, 224, 597, 2),
(4, '3013307015', 'D.BHAVANA PILLAY', '7.562', '7.562', 63, 48, 32, 45, 28, 47, 263, 700, 2),
(1, '3013307014', 'CHANDRAKANT JAISWAL', '6.625', '0', 39, 37, 28, 41, 28, 28, 201, 584, 3),
(2, '3013307016', 'DARSHAN SANKHALA', '0', '0', 33, 36, 34, 6, 4, 4, 117, 488, 3),
(3, '3013307036', 'RAMANDEEP SINGH SODHI', '6.84', '0', 62, 32, 28, 28, 39, 29, 218, 595, 3),
(4, '3013307053', 'AEHTESHAM UL HASAN KHAN', '0', '0', 29, 28, 28, 6, 5, 28, 124, 457, 3),
(5, '3013307058', 'PIYUSH SHARMA', '6.65', '0', 61, 33, 34, 29, 34, 29, 220, 612, 3),
(6, '3013307060', 'SAKET GOPE', '0', '0', 39, 19, 12, 6, NULL, 6, 82, 0, 3),
(7, '3013307061', 'SHALINI BANIK', '0', '0', 46, 32, 28, 18, 11, 0, 135, 508, 3),
(8, '3013307064', 'SWAPNIL SHARMA', '0', '0', 32, 34, 29, 28, 8, 9, 140, 518, 3),
(1, '3013307016', 'DARSHAN SANKHALA', '0', '0', 33, 36, 34, 29, 24, 28, 184, 555, 4),
(2, '3013307053', 'AEHTESHAM UL HASAN KHAN', '5.68', '0', 29, 28, 28, 35, 33, 28, 181, 517, 4),
(3, '3013307060', 'SAKET GOPE', '0', '0', 39, NULL, NULL, NULL, NULL, 5, 44, 443, 4),
(4, '3013307061', 'SHALINI BANIK', '0', '0', 46, 32, 28, 15, 19, 10, 150, 523, 4),
(5, '3013307064', 'SWAPNIL SHARMA', '0', '0', 32, 34, 29, 28, 17, 16, 156, 534, 4),
(3, '3013307014', 'CHANDRAKANT JAISWAL', '0', 'NULL', 25, 37, 28, 41, 28, 28, 187, 570, 2),
(2, '3013307006', 'AKHILESH KUMAR CHANDRAKER', '6.437', '6.437', 33, 32, 39, 28, 28, 37, 197, 566, 2),
(1, '3013307004', 'ABHISHEK KUMAR SINGH', '6.937', 'NULL', 30, 40, 33, 50, 28, 31, 212, 620, 2);

-- --------------------------------------------------------

--
-- Table structure for table `it_11_2`
--

CREATE TABLE IF NOT EXISTS `it_11_2` (
  `crn` int(11) DEFAULT NULL,
  `urn` varchar(10) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `spi` varchar(5) DEFAULT NULL,
  `cpi` varchar(5) DEFAULT NULL,
  `eg` int(11) DEFAULT NULL,
  `eco` int(11) DEFAULT NULL,
  `p2` int(11) DEFAULT NULL,
  `m2` int(11) DEFAULT NULL,
  `bme` int(11) DEFAULT NULL,
  `bce` int(11) DEFAULT NULL,
  `sum` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`urn`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_11_2`
--

INSERT INTO `it_11_2` (`crn`, `urn`, `sname`, `spi`, `cpi`, `eg`, `eco`, `p2`, `m2`, `bme`, `bce`, `sum`, `total`) VALUES
(1, '3013307001', 'AASHUTOSH KUMAR DUTTA', '0', '0', 13, 54, 42, 32, 41, 48, 230, 582),
(2, '3013307002', 'ABHISHEK JAIN', '8.406', '8.578', 31, 58, 66, 66, 58, 42, 321, 750),
(3, '3013307003', 'ABHISHEK KUMAR KARAN', '6.375', '6.937', 28, 53, 43, 40, 41, 33, 238, 581),
(4, '3013307004', 'ABHISHEK KUMAR SINGH', '0', '0', 14, 35, 16, 18, 28, 13, 124, 451),
(5, '3013307006', 'AKHILESH KUMAR CHANDRAKER', '0', '0', 18, 33, 31, 45, 37, 28, 192, 506),
(6, '3013307007', 'ANKITA PRASAD', '8.562', '8.625', 36, 57, 58, 53, 55, 55, 314, 759),
(7, '3013307008', 'ANNAPURNA DEWANGAN', '8.218', '8.5', 47, 42, 41, 58, 40, 41, 269, 739),
(8, '3013307010', 'APOORVA JAIN', '7.281', '7.593', 54, 67, 63, 57, 53, 48, 342, 656),
(9, '3013307011', 'ASHUTOSH NAYAK', '8.218', '8.187', 55, 54, 46, 52, 52, 45, 304, 737),
(10, '3013307012', 'ATIK BAID', '9.093', '8.937', 40, 60, 55, 69, 52, 55, 331, 796),
(11, '3013307013', 'BISWARUP KONAR', '7.625', '7.531', 41, 49, 32, 66, 39, 43, 270, 668),
(12, '3013307014', 'CHANDRAKANT JAISWAL', '0', '0', 13, 33, 31, 30, 31, 32, 170, 532),
(13, '3013307015', 'D.BHAVANA PILLAY', '7', '0', 38, 43, 37, 38, 23, 29, 208, 634),
(14, '3013307016', 'DARSHAN SANKHALA', '0', '0', 10, 28, 28, 9, 20, 15, 110, 408),
(15, '3013307017', 'DEEPESH VISWANATHAN', '0', '0', 20, 33, 34, 50, 39, 32, 208, 533),
(16, '3013307018', 'DEEPTI SHARMA', '0', '0', 28, 36, 20, 48, 34, 14, 180, 580),
(17, '3013307019', 'G.DIVYA NAIDU', '8', '7.437', 41, 55, 53, 42, 38, 54, 283, 718),
(18, '3013307020', 'GARIMA AGRAWAL', '8.406', '8.109', 40, 54, 53, 63, 42, 53, 305, 727),
(19, '3013307021', 'HEMCHANDRA DEWANGAN', '6.562', '7.046', 36, 31, 37, 57, 30, 30, 221, 569),
(20, '3013307022', 'KRITIKA NAGPAL', '8.062', '7.953', 44, 44, 48, 58, 45, 40, 279, 711),
(21, '3013307023', 'KUMAR GAURAV', '6.718', '7.296', 35, 34, 42, 51, 47, 33, 242, 584),
(22, '3013307024', 'MANEESH VERMA', '7.593', '7.593', 37, 35, 35, 47, 59, 23, 236, 661),
(23, '3013307025', 'MOHD ATIF TAHIR', '0', '0', 20, 36, 45, 40, 34, 45, 220, 638),
(24, '3013307026', 'NAGESH KUMAR SAHU', '7.125', '7.328', 31, 49, 51, 47, 46, 39, 263, 618),
(25, '3013307027', 'NAMRATA SUR', '0', '0', 20, 43, 28, 37, 38, 47, 213, 608),
(26, '3013307028', 'NEHA', '7.218', '7.625', 28, 31, 45, 39, 35, 56, 234, 641),
(27, '3013307029', 'NEHA RAI', '8.25', '8.25', 45, 53, 45, 45, 53, 47, 288, 731),
(28, '3013307030', 'NIKET KUMAR AGRAWAL', '7.562', '7.875', 37, 65, 50, 47, 55, 36, 290, 658),
(29, '3013307031', 'NIKHIL CHIVANE', '8.531', '8.281', 40, 46, 51, 70, 62, 49, 318, 748),
(30, '3013307032', 'NISHA SAHU', '8.906', '9.015', 44, 65, 49, 61, 56, 65, 340, 799),
(31, '3013307033', 'NISHANK SAHNI', '7.156', '7.734', 24, 59, 44, 43, 31, 45, 246, 646),
(32, '3013307034', 'NUPUR SULTANIA', '7.875', '7.781', 24, 56, 46, 40, 50, 43, 259, 679),
(33, '3013307035', 'PRAKASH KUMAR SINGH', '7.812', '7.937', 51, 44, 46, 51, 36, 41, 269, 684),
(34, '3013307036', 'RAMANDEEP SINGH SODHI', '0', '0', 9, 31, 38, 28, 15, 42, 163, 537),
(35, '3013307037', 'RASHMEET KAUR CHAWLA', '8.125', '8.203', 50, 56, 61, 51, 50, 40, 308, 722),
(36, '3013307038', 'SAMSON KUMAR RAI', '7.093', '7.328', 41, 33, 28, 34, 37, 35, 208, 628),
(37, '3013307039', 'SANGITA KUMARI', '7.687', '8', 40, 56, 44, 59, 48, 46, 293, 681),
(38, '3013307040', 'SANKALP KUMAR SINGH', '7.781', '7.5', 40, 43, 41, 70, 47, 48, 289, 685),
(39, '3013307041', 'SHILPA PANDEY', '7.562', '7.484', 28, 57, 32, 48, 36, 30, 231, 667),
(40, '3013307042', 'SHREYANSH RICHHARIYA', '7.343', '7.187', 28, 43, 38, 42, 54, 60, 265, 637),
(41, '3013307043', 'SHRUTI GUPTA', '8.187', '0', 37, 57, 49, 51, 29, 51, 274, 719),
(42, '3013307044', 'SOURABH GUPTA', '0', '0', 37, 43, 37, 54, 30, 18, 219, 587),
(43, '3013307045', 'T.P.ASHISH', '0', '0', 21, 49, 50, 50, 36, 34, 240, 617),
(44, '3013307046', 'URVASHI KUKREJA', '8.093', '8.234', 48, 50, 45, 66, 42, 47, 298, 715),
(45, '3013307047', 'UTTAM KUMAR SAH', '0', '0', 18, 34, 36, 34, 28, 38, 188, 527),
(46, '3013307048', 'VIJAY LAXMI SAHU', '7.375', '7.453', 31, 54, 34, 31, 40, 40, 230, 650),
(47, '3013307049', 'VINAY GAJPAL', '6.687', '7.359', 28, 34, 28, 30, 37, 49, 206, 586),
(48, '3013307050', 'VINITA THAWRANI', '9.093', '9.421', 28, 73, 55, 67, 48, 52, 323, 798),
(49, '3013307051', 'VIVEK SAHU', '6.781', '7.359', 24, 29, 32, 55, 30, 35, 205, 600),
(50, '3013307052', 'YASHICA GAUTAM', '7.906', '7.984', 33, 49, 44, 43, 32, 57, 258, 700),
(51, '3013307053', 'AEHTESHAM UL HASAN KHAN', '0', '0', 14, 28, 12, 6, 28, 6, 94, 393),
(52, '3013307055', 'HIRESH KUMAR', '6.7', '7.125', 29, 28, 50, 28, 40, 36, 211, 589),
(53, '3013307056', 'MAHESH KUMAR GOYAL', '8.093', '8.468', 42, 59, 54, 58, 48, 39, 300, 720),
(54, '3013307057', 'NUPUR KOUL', '9.093', '8.796', 40, 76, 59, 71, 50, 68, 364, 823),
(55, '3013307058', 'PIYUSH SHARMA', '0', '0', 13, 32, 23, 23, 32, 21, 144, 448),
(56, '3013307059', 'RASHI JAIN', '8.187', '8.312', 35, 51, 48, 63, 41, 38, 276, 732),
(57, '3013307060', 'SAKET GOPE', '0', '0', 12, 28, 19, 12, 13, 12, 96, 413),
(58, '3013307061', 'SHALINI BANIK', '0', '0', 14, 44, 42, 21, 19, 23, 163, 522),
(60, '3013307062', 'SHILPA AGRAWAL', '7.75', '0', 34, 43, 51, 44, 42, 59, 273, 664),
(62, '3013307064', 'SWAPNIL SHARMA', '0', '0', 12, 15, 35, 3, 20, 23, 108, 411),
(66, '3013307066', 'KARANPREET SINGH GILL', '0', '0', NULL, 28, 28, 38, 32, 39, 165, 566),
(67, '3013307067', 'SURABHI SHRIVASTAVA', '7.21', '7.31', 28, 34, 32, 52, 33, 56, 235, 637),
(68, '3013307068', 'VINIT SONI', '7.15', '7.28', 31, 46, 44, 54, 32, 52, 259, 631);

-- --------------------------------------------------------

--
-- Table structure for table `it_11_2s`
--

CREATE TABLE IF NOT EXISTS `it_11_2s` (
  `subject` varchar(10) NOT NULL,
  PRIMARY KEY (`subject`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_11_2s`
--

INSERT INTO `it_11_2s` (`subject`) VALUES
('bce'),
('bme'),
('eco'),
('eg'),
('m2'),
('p2');

-- --------------------------------------------------------

--
-- Table structure for table `it_11_2_back`
--

CREATE TABLE IF NOT EXISTS `it_11_2_back` (
  `crn` int(11) DEFAULT NULL,
  `urn` varchar(10) NOT NULL DEFAULT '',
  `sname` varchar(50) DEFAULT NULL,
  `spi` varchar(5) DEFAULT NULL,
  `cpi` varchar(5) DEFAULT NULL,
  `eg` int(11) DEFAULT NULL,
  `eco` int(11) DEFAULT NULL,
  `p2` int(11) DEFAULT NULL,
  `m2` int(11) DEFAULT NULL,
  `bme` int(11) DEFAULT NULL,
  `bce` int(11) DEFAULT NULL,
  `sum` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `attempt` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`urn`,`attempt`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_11_2_back`
--

INSERT INTO `it_11_2_back` (`crn`, `urn`, `sname`, `spi`, `cpi`, `eg`, `eco`, `p2`, `m2`, `bme`, `bce`, `sum`, `total`, `attempt`) VALUES
(1, '3013307001', 'AASHUTOSH KUMAR DUTTA', '6.71', '7.1', 30, 54, 42, 32, 41, 48, 247, 599, 2),
(2, '3013307004', 'ABHISHEK KUMAR SINGH', '0', '0', 42, 35, 28, 24, 28, 34, 191, 518, 2),
(3, '3013307006', 'AKHILESH KUMAR CHANDRAKER', '6.28', '6.33', 45, 33, 31, 45, 37, 28, 219, 549, 2),
(4, '3013307014', 'CHANDRAKANT JAISWAL', '6.31', '0', 36, 33, 31, 30, 31, 32, 193, 555, 2),
(5, '3013307016', 'DARSHAN SANKHALA', '0', '0', 15, 28, 28, 30, 5, 16, 122, 435, 2),
(6, '3013307017', 'DEEPESH VISWANATHAN', '6.37', '6.54', 34, 33, 34, 50, 39, 32, 222, 547, 2),
(7, '3013307018', 'DEEPTI SHARMA', '0', '0', 28, 36, 32, 48, 34, 23, 201, 601, 2),
(8, '3013307025', 'MOHD ATIF TAHIR', '7.5', '7.58', 33, 36, 45, 40, 34, 45, 233, 651, 2),
(9, '3013307027', 'NAMRATA SUR', '7.03', '6.9', 36, 43, 28, 37, 38, 47, 229, 624, 2),
(10, '3013307036', 'RAMANDEEP SINGH SODHI', '0', '0', 19, 31, 38, 28, 25, 42, 183, 557, 2),
(11, '3013307044', 'SOURABH GUPTA', '7', '7.22', 37, 43, 37, 54, 30, 44, 245, 613, 2),
(12, '3013307045', 'T.P.ASHISH', '7.12', '7.24', 35, 49, 50, 50, 36, 34, 254, 631, 2),
(13, '3013307047', 'UTTAM KUMAR SAH', '6.28', '6.47', 33, 34, 36, 34, 28, 38, 203, 542, 2),
(14, '3013307053', 'AEHTESHAM UL HASAN KHAN', '0', '0', 13, 28, 28, 30, 28, 28, 155, 475, 2),
(15, '3013307058', 'PIYUSH SHARMA', '0', '0', 23, 32, 31, 36, 32, 22, 176, 504, 2),
(16, '3013307060', 'SAKET GOPE', '0', '0', 4, 28, 13, 0, 0, 17, 62, 396, 2),
(17, '3013307061', 'SHALINI BANIK', '0', '0', 28, 44, 42, 2, 18, 47, 181, 540, 2),
(18, '3013307064', 'SWAPNIL SHARMA', '0', '0', 35, 50, 35, 10, 23, 31, 184, 487, 2),
(19, '3013307066', 'KARANPREET SINGH GILL', '6.25', '0', 35, 28, 28, 38, 32, 39, 200, 566, 2),
(1, '3013307004', 'ABHISHEK KUMAR SINGH', '5.96', '6.45', 42, 35, 28, 28, 28, 34, 195, 522, 3),
(2, '3013307016', 'DARSHAN SANKHALA', '0', '0', 7, 28, 28, 30, 12, NULL, 105, 418, 3),
(3, '3013307018', 'DEEPTI SHARMA', '7.21', '7.5', 28, 36, 32, 48, 34, 41, 219, 619, 3),
(3, '3013307036', 'RAMANDEEP SINGH SODHI', '6.56', '6.7', 37, 31, 38, 28, 28, 42, 204, 578, 3),
(4, '3013307053', 'AEHTESHAM UL HASAN KHAN', '0', '0', 20, 28, 28, 30, 28, 28, 162, 482, 3),
(4, '3013307058', 'PIYUSH SHARMA', '0', '0', 19, 32, 31, 36, 32, 43, 193, 521, 3),
(5, '3013307060', 'SAKET GOPE', '0', '0', NULL, 28, NULL, NULL, NULL, NULL, 28, 362, 3),
(5, '3013307061', 'SHALINI BANIK', '0', '0', 28, 44, 42, 9, 28, 47, 198, 557, 3),
(6, '3013307064', 'SWAPNIL SHARMA', '0', '0', 35, 50, 35, 11, 22, 31, 184, 487, 3),
(6, '3013307064', 'SWAPNIL SHARMA', '6.06', '0', 35, 50, 35, 31, 28, 31, 210, 513, 4),
(5, '3013307061', 'SHALINI BANIK', '6.31', '0', 28, 44, 42, 29, 28, 47, 218, 577, 4),
(2, '3013307053', 'AEHTESHAM UL HASAN KHAN', '0', '0', 23, 28, 28, 30, 28, 28, 165, 485, 4),
(3, '3013307058', 'PIYUSH SHARMA', '6.09', '6.37', 39, 32, 31, 36, 32, 43, 213, 541, 4),
(4, '3013307060', 'SAKET GOPE', '0', '0', NULL, 28, NULL, 4, 21, 13, 66, 400, 4),
(1, '3013307016', 'DARSHAN SANKHALA', '0', '0', 19, 28, 28, 30, 17, 15, 137, 484, 4);

-- --------------------------------------------------------

--
-- Table structure for table `it_11_teacher`
--

CREATE TABLE IF NOT EXISTS `it_11_teacher` (
  `name` varchar(50) DEFAULT NULL,
  `subject` varchar(10) NOT NULL,
  `sub_ff` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`subject`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_11_teacher`
--

INSERT INTO `it_11_teacher` (`name`, `subject`, `sub_ff`) VALUES
('S.K. Jain', 'comm', 'Communication Skills'),
('M. Pandey', 'chem', 'Applied Chemistry'),
('R. Robinson', 'p1', 'Applied Physics I '),
('Sanjay Sharma', 'm1', 'Applied Maths I'),
('S.K. Sahu', 'bee', 'Basic Electrical Engg.'),
('Maulick', 'em', 'Engg. Mechanics'),
('', 'eg', ''),
('', 'eco', ''),
('', 'p2', ''),
('', 'm2', ''),
('', 'bme', ''),
('', 'bce', '');

-- --------------------------------------------------------

--
-- Table structure for table `it_11_topper`
--

CREATE TABLE IF NOT EXISTS `it_11_topper` (
  `urn` varchar(10) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `gtotal` int(11) DEFAULT NULL,
  PRIMARY KEY (`urn`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_11_topper`
--

INSERT INTO `it_11_topper` (`urn`, `sname`, `gtotal`) VALUES
('3013307001', 'AASHUTOSH KUMAR DUTTA', 709),
('3013307002', 'ABHISHEK JAIN', 788),
('3013307003', 'ABHISHEK KUMAR KARAN', 696),
('3013307004', 'ABHISHEK KUMAR SINGH', 620),
('3013307005', 'ADITYA BHALE', 717),
('3013307006', 'AKHILESH KUMAR CHANDRAKER', 566),
('3013307007', 'ANKITA PRASAD', 786),
('3013307008', 'ANNAPURNA DEWANGAN', 810),
('3013307009', 'ANURAG JAIN', 772),
('3013307010', 'APOORVA JAIN', 705),
('3013307011', 'ASHUTOSH NAYAK', 750),
('3013307012', 'ATIK BAID', 778),
('3013307013', 'BISWARUP KONAR', 679),
('3013307014', 'CHANDRAKANT JAISWAL', 584),
('3013307015', 'D.BHAVANA PILLAY', 700),
('3013307016', 'DARSHAN SANKHALA', 484),
('3013307017', 'DEEPESH VISWANATHAN', 597),
('3013307018', 'DEEPTI SHARMA', 707),
('3013307019', 'G.DIVYA NAIDU', 632),
('3013307020', 'GARIMA AGRAWAL', 689),
('3013307021', 'HEMCHANDRA DEWANGAN', 660),
('3013307022', 'KRITIKA NAGPAL', 709),
('3013307023', 'KUMAR GAURAV', 706),
('3013307024', 'MANEESH VERMA', 677),
('3013307025', 'MOHD ATIF TAHIR', 699),
('3013307026', 'NAGESH KUMAR SAHU', 683),
('3013307027', 'NAMRATA SUR', 592),
('3013307028', 'NEHA', 725),
('3013307029', 'NEHA RAI', 746),
('3013307030', 'NIKET KUMAR AGRAWAL', 738),
('3013307031', 'NIKHIL CHIVANE', 737),
('3013307032', 'NISHA SAHU', 822),
('3013307033', 'NISHANK SAHNI', 756),
('3013307034', 'NUPUR SULTANIA', 700),
('3013307035', 'PRAKASH KUMAR SINGH', 714),
('3013307036', 'RAMANDEEP SINGH SODHI', 569),
('3013307037', 'RASHMEET KAUR CHAWLA', 751),
('3013307038', 'SAMSON KUMAR RAI', 670),
('3013307039', 'SANGITA KUMARI', 745),
('3013307040', 'SANKALP KUMAR SINGH', 631),
('3013307041', 'SHILPA PANDEY', 674),
('3013307042', 'SHREYANSH RICHHARIYA', 638),
('3013307043', 'SHRUTI GUPTA', 713),
('3013307044', 'SOURABH GUPTA', 695),
('3013307045', 'T.P.ASHISH', 661),
('3013307046', 'URVASHI KUKREJA', 742),
('3013307047', 'UTTAM KUMAR SAH', 598),
('3013307049', 'VINAY GAJPAL', 720),
('3013307050', 'VINITA THAWRANI', 875),
('3013307051', 'VIVEK SAHU', 739),
('3013307052', 'YASHICA GAUTAM', 732),
('3013307053', 'AEHTESHAM UL HASAN KHAN', 439),
('3013307054', 'HARSH BAFNA', 763),
('3013307055', 'HIRESH KUMAR', 673),
('3013307056', 'MAHESH KUMAR GOYAL', 795),
('3013307057', 'NUPUR KOUL', 787),
('3013307058', 'PIYUSH SHARMA', 601),
('3013307059', 'RASHI JAIN', 773),
('3013307060', 'SAKET GOPE', 473),
('3013307061', 'SHALINI BANIK', 527),
('3013307062', 'SHILPA AGRAWAL', 657),
('3013307063', 'SWAPNIL DEWANGAN', 681),
('3013307064', 'SWAPNIL SHARMA', 522),
('3013307065', 'VIPUL KUMAR CHANDRAKAR', 719),
('3013307066', 'KARANPREET SINGH GILL', 622),
('3013307067', 'SURABHI SHRIVASTAVA', 656),
('3013307068', 'VINIT SONI', 691);

-- --------------------------------------------------------

--
-- Table structure for table `it_12_1`
--

CREATE TABLE IF NOT EXISTS `it_12_1` (
  `crn` int(11) DEFAULT NULL,
  `urn` varchar(10) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `spi` varchar(5) DEFAULT NULL,
  `cpi` varchar(5) DEFAULT NULL,
  `comm` int(11) DEFAULT NULL,
  `chem` int(11) DEFAULT NULL,
  `p1` int(11) DEFAULT NULL,
  `m1` int(11) DEFAULT NULL,
  `bee` int(11) DEFAULT NULL,
  `em` int(11) DEFAULT NULL,
  `sum` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`urn`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_12_1`
--

INSERT INTO `it_12_1` (`crn`, `urn`, `sname`, `spi`, `cpi`, `comm`, `chem`, `p1`, `m1`, `bee`, `em`, `sum`, `total`) VALUES
(1, '3013308001', 'AANCHAL ARORA', '9.187', '9.187', 42, 52, 60, 66, 54, 66, 340, 795),
(2, '3013308002', 'ABHISHEK BOSE', '6.75', '6.75', 35, 56, 35, 30, 44, 31, 231, 624),
(3, '3013308003', 'ABHISHEK SONI', '6.5', '6.5', 28, 46, 36, 33, 32, 32, 207, 575),
(4, '3013308004', 'ABHISHEK VERMA', '0', '0', 28, 52, 32, 11, 18, 28, 169, 487),
(5, '3013308005', 'ADITYA JAIN', '7.5', '7.5', 36, 36, 50, 39, 29, 52, 242, 678),
(6, '3013308006', 'AKASH TAMRAKAR', '6.375', '6.375', 51, 40, 43, 23, 35, 28, 220, 582),
(7, '3013308007', 'AKHIL CHAUDHARI', '7.843', '7.843', 53, 54, 68, 48, 45, 48, 316, 723),
(9, '3013308009', 'ALOK KUMAR SINGH', '8.656', '8.656', 39, 52, 63, 63, 48, 53, 318, 772),
(10, '3013308010', 'AMBER GUPTA', '8.281', '8.281', 40, 59, 64, 63, 44, 25, 295, 735),
(15, '3013308011', 'ANKITA GARG', '8.718', '8.718', 43, 56, 54, 70, 56, 38, 317, 771),
(19, '3013308012', 'ANKUR CHOWDHURY', '6.75', '6.75', 30, 39, 42, 41, 23, 30, 205, 614),
(21, '3013308013', 'ANKUR PODDAR', '8.343', '8.343', 37, 50, 61, 67, 39, 51, 305, 722),
(20, '3013308014', 'ASHISH KR YADAV', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, 0, 158),
(22, '3013308015', 'BHUMIKA MISHRA', '8.781', '8.781', 53, 62, 63, 62, 52, 65, 357, 816),
(23, '3013308016', 'CHANDRA PRAKASH', '0', '0', 38, 35, 28, 14, 12, 30, 157, 494),
(24, '3013308017', 'DEEPAK SAHU', '6.906', '6.906', 40, 44, 62, 40, 34, 30, 250, 627),
(28, '3013308018', 'KANCHAN NAIR', '0', '0', 47, 35, 34, 14, 23, 23, 176, 509),
(35, '3013308019', 'MANISH VINAYAK', '8.187', '8.187', 59, 63, 54, 43, 51, 62, 332, 731),
(39, '3013308020', 'MAYANK JAIN', '8', '8', 48, 54, 51, 36, 49, 43, 281, 722),
(40, '3013308021', 'MOHD SUYEB AHMED SIDDIQUI', '7.656', '7.656', 46, 56, 56, 56, 29, 51, 294, 713),
(43, '3013308022', 'NAVPREET G MATHEW', '0', '0', 52, 49, 30, 23, 8, 15, 177, 569),
(47, '3013308023', 'NITIN KUMAR', '8.783', '8.781', 39, 68, 67, 54, 47, 49, 324, 775),
(48, '3013308024', 'PINKESH PANDEY', '7.812', '7.812', 40, 50, 53, 66, 59, 38, 306, 693),
(49, '3013308025', 'PRATEEK DWIVEDI', '8.031', '8.031', 52, 47, 54, 58, 28, 49, 288, 712),
(53, '3013308026', 'PUJA PANDEY', '9.218', '9.218', 53, 57, 63, 63, 70, 65, 371, 838),
(54, '3013308027', 'RAKSHA JAIN', '9.218', '9.218', 66, 66, 62, 71, 60, 61, 386, 847),
(58, '3013308028', 'RANJOY SARKAR', '8.093', '8.093', 48, 59, 50, 55, 33, 39, 284, 724),
(60, '3013308029', 'REEMA NANWANI', '7.093', '7.093', 57, 51, 46, 36, 31, 52, 273, 663),
(61, '3013308030', 'RENU MISHRA', '8.375', '8.375', 46, 55, 62, 65, 58, 44, 330, 768),
(62, '3013308031', 'RINA SAO', '7.156', '7.156', 24, 46, 39, 43, 37, 28, 217, 625),
(64, '3013308032', 'ROMA GUPTA', '8.031', '8.031', 54, 49, 55, 62, 51, 37, 308, 714),
(65, '3013308033', 'RUCHI SHAIL', '7.875', '7.875', 66, 61, 58, 36, 40, 28, 289, 724),
(66, '3013308034', 'SACHIN SHARMA', '8.531', '8.531', 49, 64, 50, 55, 52, 46, 316, 758),
(67, '3013308035', 'SHANTANU PATEL', '7.031', '7.031', 44, 51, 38, 43, 28, 28, 232, 642),
(68, '3013308036', 'SHEKHAR ADIL', '0', '0', 25, 17, 41, 34, 16, 20, 153, 446),
(69, '3013308037', 'SHILPI CHOPADA', '8.968', '8.968', 52, 70, 60, 72, 67, 45, 366, 822),
(7, '3013308039', 'SHUBHANK SHARMA', '0', '0', 21, 34, 19, 29, 3, 9, 115, 406),
(7, '3013308040', 'SHWETA PRADHAN', '6.687', '6.687', 29, 44, 38, 31, 31, 33, 206, 577),
(7, '3013308041', 'SIDDHARTH PANDEY', '7.125', '7.125', 44, 44, 47, 35, 55, 43, 268, 634),
(7, '3013308042', 'SMITA RATH', '9.062', '9.062', 42, 67, 70, 73, 58, 61, 371, 809),
(7, '3013308043', 'SMITA TIWARY', '8.718', '8.718', 60, 54, 61, 50, 40, 62, 327, 794),
(7, '3013308044', 'SONAL SHARMA', '0', '0', 52, 42, 40, 12, 30, 35, 211, 634),
(7, '3013308045', 'SOURABH PATLE', '7.593', '7.593', 54, 55, 47, 38, 33, 43, 270, 636),
(7, '3013308046', 'SUSHMITA SINGH', '8', '8', 45, 54, 53, 48, 49, 49, 298, 726),
(7, '3013308047', 'SWETA SHANDILYA', '0', '0', 44, 46, 46, 12, 36, 47, 231, 633),
(77, '3013308048', 'VIBHOOTI MARKANDEY', '0', '0', 40, 39, 46, 15, 28, 45, 213, 564),
(7, '3013308049', 'AKASH SINGHAL', '0', '0', 42, 45, 42, 37, 28, 15, 209, 560),
(7, '3013308051', 'ARCHANA SAMAL', '0', '0', 48, 33, 37, 13, 29, 23, 183, 552),
(7, '3013308053', 'GANESH KUMAR', '0', '0', 10, 15, 14, 11, 8, 22, 80, 334),
(7, '3013308054', 'GUNJAN MITTAL', '6.25', '6.25', 28, 40, 28, 38, 36, 23, 193, 560),
(7, '3013308055', 'RICHA JAIN', '7.187', '7.187', 58, 61, 29, 31, 23, 28, 230, 645),
(7, '3013308057', 'SOUMYA NAIR', '8.375', '8.375', 49, 53, 50, 49, 57, 53, 311, 752),
(7, '3013308058', 'SANJEEV KR DEWANGAN', '0', '0', NULL, 40, 18, 28, 6, 18, 110, 418),
(7, '3013308059', 'SHREEYA DIXIT', '6.937', '6.937', 45, 43, 45, 41, 28, 39, 241, 635),
(7, '3013308060', 'VAIBHAV GUPTA', '0', '0', 40, 50, 32, 7, 9, 40, 178, 547),
(7, '3013308061', 'YASH JAIN', '7.468', '7.468', 44, 65, 51, 46, 29, 43, 278, 683),
(7, '3013308064', 'DHRUV RASTOGI', '0', '0', 38, 29, 31, 8, 10, 19, 135, 443),
(7, '3013308065', 'NITESH JAIN', '6.843', '6.843', 33, 39, 40, 37, 32, 35, 216, 615),
(7, '3013308066', 'PREETI BALA THAKUR', '0', '0', 37, 37, 21, 4, 10, 42, 151, 539),
(7, '3013308301', 'AJIT KUMAR THAKUR', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(7, '3013308302', 'AMRITA KALASKAR', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(7, '3013308303', 'INDU PRAKASH SAHU', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(7, '3013308304', 'SUNAINA BABER', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(7, '3013308305', 'TAKESHWAR KASHYAP', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(7, '3013308306', 'URVASHI DEWANGAN', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `it_12_1s`
--

CREATE TABLE IF NOT EXISTS `it_12_1s` (
  `subject` varchar(10) NOT NULL,
  PRIMARY KEY (`subject`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_12_1s`
--

INSERT INTO `it_12_1s` (`subject`) VALUES
('bee'),
('chem'),
('comm'),
('em'),
('m1'),
('p1');

-- --------------------------------------------------------

--
-- Table structure for table `it_12_1_back`
--

CREATE TABLE IF NOT EXISTS `it_12_1_back` (
  `crn` int(11) DEFAULT NULL,
  `urn` varchar(10) NOT NULL DEFAULT '',
  `sname` varchar(50) DEFAULT NULL,
  `spi` varchar(5) DEFAULT NULL,
  `cpi` varchar(5) DEFAULT NULL,
  `comm` int(11) DEFAULT NULL,
  `chem` int(11) DEFAULT NULL,
  `p1` int(11) DEFAULT NULL,
  `m1` int(11) DEFAULT NULL,
  `bee` int(11) DEFAULT NULL,
  `em` int(11) DEFAULT NULL,
  `sum` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `attempt` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`urn`,`attempt`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_12_1_back`
--

INSERT INTO `it_12_1_back` (`crn`, `urn`, `sname`, `spi`, `cpi`, `comm`, `chem`, `p1`, `m1`, `bee`, `em`, `sum`, `total`, `attempt`) VALUES
(1, '3013308014', 'ASHISH KR YADAV', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, 0, 158, 2),
(1, '3013308016', 'CHANDRA PRAKASH', '0', '0', 38, 35, 28, 21, 28, 30, 180, 680, 2),
(1, '3013308022', 'NAVPREET G MATHEW', '0', '0', 52, 49, 30, 36, 50, 20, 237, 737, 2),
(1, '3013308036', 'SHEKHAR ADIL', '0', '0', 28, 10, 41, 34, 42, 13, 168, 623, 2),
(1, '3013308039', 'SHUBHANK SHARMA', '0', '0', 30, 34, 28, 29, 12, 9, 142, 642, 2),
(1, '3013308044', 'SONAL SHARMA', '0', '0', 52, 42, 40, 12, 30, 35, 211, 711, 2),
(1, '3013308047', 'SWETA SHANDILYA', '0', '0', 44, 46, 46, 12, 36, 47, 231, 731, 2),
(1, '3013308048', 'VIBHOOTI MARKANDEY', '0', '0', 40, 39, 46, 15, 28, 45, 213, 713, 2),
(1, '3013308049', 'AKASH SINGHAL', '6.343', '6.343', 42, 45, 42, 37, 28, 28, 222, 622, 2),
(1, '3013308051', 'ARCHANA SAMAL', '0', '0', 48, 33, 37, 20, 29, 28, 195, 472, 2),
(1, '3013308053', 'GANESH KUMAR', '0', '0', 10, 15, 14, 11, 8, 22, 80, 334, 2),
(1, '3013308058', 'SANJEEV KR DEWANGAN', '0', '0', 47, 40, 40, 28, 24, 23, 202, 702, 2),
(1, '3013308060', 'VAIBHAV GUPTA', '0', '0', 40, 50, 32, 21, 28, 40, 211, 711, 2),
(1, '3013308064', 'DHRUV RASTOGI', '0', '0', 38, 29, 31, 7, 24, 17, 146, 646, 2),
(1, '3013308066', 'PREETI BALA THAKUR', '0', '0', 37, 37, 44, 13, 28, 42, 201, 701, 2),
(1, '3013308060', 'VAIBHAV GUPTA', '0', '0', 40, 50, 32, 17, 28, 40, 207, 576, 3),
(1, '3013308058', 'SANJEEV KR DEWANGAN', '0', '0', NULL, 40, 18, 28, 6, 18, 110, 610, 3),
(1, '3013308053', 'GANESH KUMAR', '0', '0', 29, 14, 18, 48, 20, 28, 157, 411, 3),
(1, '3013308051', 'ARCHANA SAMAL', '6.312', '6.312', 48, 33, 37, 35, 29, 28, 210, 579, 3),
(1, '3013308048', 'VIBHOOTI MARKANDEY', '0', '0', 40, 39, 46, 15, 28, 45, 213, 713, 3),
(1, '3013308047', 'SWETA SHANDILYA', '0', '0', 44, 46, 46, 12, 36, 47, 231, 731, 3),
(1, '3013308044', 'SONAL SHARMA', '0', '0', 52, 42, 40, 12, 30, 35, 211, 711, 3),
(1, '3013308039', 'SHUBHANK SHARMA', '0', '0', 21, 34, 19, 29, 3, 9, 115, 615, 3),
(1, '3013308036', 'SHEKHAR ADIL', '0', '0', 28, 28, 41, 34, 42, 29, 202, 495, 3),
(1, '3013308022', 'NAVPREET G MATHEW', '7.218', '7.218', 52, 49, 30, 36, 50, 36, 253, 645, 3),
(1, '3013308016', 'CHANDRA PRAKASH', '6.062', '6.062', 38, 35, 28, 39, 28, 30, 198, 535, 3),
(1, '3013308014', 'ASHISH KR YADAV', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, 0, 158, 3),
(1, '3013308014', 'ASHISH KR YADAV', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, 0, 158, 4),
(1, '3013308036', 'SHEKHAR ADIL', '0', '0', 28, 29, 41, 34, 42, 29, 203, 496, 4),
(1, '3013308039', 'SHUBHANK SHARMA', '0', '0', 21, 34, 19, 29, 3, 9, 115, 615, 4),
(1, '3013308044', 'SONAL SHARMA', '0', '0', 52, 42, 40, 12, 30, 35, 211, 711, 4),
(1, '3013308047', 'SWETA SHANDILYA', '0', '0', 44, 46, 46, 12, 36, 47, 231, 731, 4),
(1, '3013308048', 'VIBHOOTI MARKANDEY', '0', '0', 40, 39, 46, 15, 28, 45, 213, 713, 4),
(1, '3013308053', 'GANESH KUMAR', '0', '0', 29, 14, 18, 48, 20, 28, 157, 411, 4),
(1, '3013308058', 'SANJEEV KR DEWANGAN', '0', '0', NULL, 40, 18, 28, 6, 18, 110, 610, 4),
(1, '3013308060', 'VAIBHAV GUPTA', '0', '0', 40, 50, 32, 14, 28, 40, 204, 573, 4),
(1, '3013308064', 'DHRUV RASTOGI', '0', '0', 38, 29, 31, 30, 21, 30, 179, 487, 4),
(1, '3013308066', 'PREETI BALA THAKUR', '0', '0', 37, 37, 21, 4, 10, 42, 151, 614, 4),
(1, '3013308064', 'DHRUV RASTOGI', '0', '0', 38, 29, 31, 30, 21, 12, 161, 469, 3),
(1, '3013308066', 'PREETI BALA THAKUR', '0', '0', 37, 37, 21, 4, 10, 42, 151, 614, 3);

-- --------------------------------------------------------

--
-- Table structure for table `it_12_2`
--

CREATE TABLE IF NOT EXISTS `it_12_2` (
  `crn` int(11) DEFAULT NULL,
  `urn` varchar(10) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `spi` varchar(5) DEFAULT NULL,
  `cpi` varchar(5) DEFAULT NULL,
  `eg` int(11) DEFAULT NULL,
  `eco` int(11) DEFAULT NULL,
  `p2` int(11) DEFAULT NULL,
  `m2` int(11) DEFAULT NULL,
  `bme` int(11) DEFAULT NULL,
  `bce` int(11) DEFAULT NULL,
  `sum` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`urn`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_12_2`
--

INSERT INTO `it_12_2` (`crn`, `urn`, `sname`, `spi`, `cpi`, `eg`, `eco`, `p2`, `m2`, `bme`, `bce`, `sum`, `total`) VALUES
(1, '3013308001', 'AANCHAL ARORA', '8.687', '8.937', 60, 46, 51, 62, 34, 59, 312, 771),
(2, '3013308002', 'ABHISHEK BOSE', '6.468', '6.609', 52, 51, 35, 36, 28, 57, 259, 597),
(3, '3013308003', 'ABHISHEK SONI', '0', '0', 37, 34, 30, 29, 28, 28, 186, 468),
(4, '3013308004', 'ABHISHEK VERMA', '0', '0', 34, 37, 32, 34, 38, 25, 200, 493),
(5, '3013308005', 'ADITYA JAIN', '0', '0', 60, 30, 28, 20, 32, 36, 206, 598),
(6, '3013308007', 'AKHIL CHAUDHARY', '7.031', '7.437', 45, 51, 49, 28, 55, 68, 296, 659),
(7, '3013308009', 'ALOK KUMAR SINGH', '8.343', '8.5', 44, 51, 56, 56, 36, 60, 303, 739),
(8, '3013308010', 'AMBER GUPTA', '8.875', '8.578', 46, 52, 58, 68, 59, 66, 349, 802),
(9, '3013308011', 'ANKITA GARG', '8.343', '8.531', 49, 49, 55, 68, 63, 62, 346, 758),
(10, '3013308012', 'ANKUR CHOWDHURY', '6.062', '6.406', 28, 35, 41, 30, 31, 33, 198, 550),
(11, '3013308013', 'ANKUR PODDAR', '7.937', '8.140', 45, 36, 53, 48, 64, 42, 288, 710),
(12, '3013308015', 'BHUMIKA MISHRA', '8.875', '8.828', 63, 59, 60, 47, 63, 59, 351, 803),
(13, '3013308016', 'CHANDRA PRAKASH', '0', '0', 36, 47, 32, 8, 16, 43, 182, 486),
(14, '3013308017', 'DEEPAK SAHU', '7.281', '7.093', 51, 42, 43, 48, 30, 63, 277, 654),
(15, '3013308018', 'KANCHAN NAIR', '0', '0', 46, 40, 43, 17, 29, 56, 231, 616),
(16, '3013308019', 'MANISH VINAYAK', '7.062', '7.625', 50, 46, 45, 47, 39, 69, 296, 638),
(17, '3013308020', 'MAYANK JAIN', '7.656', '7.828', 41, 40, 38, 28, 34, 70, 251, 685),
(18, '3013308021', 'MOHD SUYEB AHMED SIDDIQUI', '7.312', '7.484', 49, 43, 45, 37, 57, 63, 294, 656),
(19, '3013308022', 'NAVPREET G MATHEW', '0', '0', 41, 54, 49, 49, 53, 70, 316, 675),
(20, '3013308023', 'NITIN KUMAR', '7.937', '8.359', 60, 60, 56, 58, 42, 50, 326, 725),
(21, '3013308024', 'PINKESH PANDEY', '7.406', '7.609', 44, 42, 36, 49, 37, 43, 251, 670),
(22, '3013308025', 'PRATEEK DWIVEDI', '0', '0', 36, 48, 46, 40, 38, 53, 261, 592),
(23, '3013308026', 'PUJA PANDEY', '9.187', '9.203', 62, 60, 57, 78, 62, 69, 388, 846),
(24, '3013308027', 'RAKSHA JAIN', '9.406', '9.312', 71, 54, 59, 65, 55, 60, 364, 846),
(25, '3013308028', 'RANJOY SARKAR', '7.593', '7.843', 49, 49, 42, 53, 46, 50, 289, 674),
(26, '3013308029', 'REEMA NANWANI', '6.875', '6.984', 40, 46, 23, 44, 48, 52, 253, 599),
(27, '3013308030', 'RENU MISHRA', '8.687', '8.531', 49, 50, 57, 62, 59, 56, 333, 785),
(28, '3013308031', 'RINA SAO', '0', '0', 38, 42, 23, 31, 19, 30, 183, 593),
(29, '3013308032', 'ROMA GUPTA', '7.562', '7.796', 40, 45, 54, 38, 32, 65, 274, 707),
(30, '3013308033', 'RUCHI SHAIL', '8.843', '8.359', 51, 56, 60, 44, 45, 67, 323, 794),
(31, '3013308034', 'SACHIN SHARMA', '7.093', '7.812', 41, 40, 41, 37, 31, 59, 249, 626),
(32, '3013308035', 'SHANTANU PATEL', '6.968', '7', 40, 47, 45, 46, 31, 58, 267, 623),
(33, '3013308036', 'SHEKHAR ADIL', '0', '0', 37, 42, 34, 21, 36, 48, 218, 523),
(34, '3013308037', 'SHILPI CHOPDA', '9.125', '9.046', 39, 59, 65, 64, 71, 66, 364, 829),
(35, '3013308039', 'SHUBHANK SHARMA', '0', '0', 7, 8, 28, 5, 23, 15, 86, 354),
(36, '3013308040', 'SHWETA PRADHAN', '7.062', '6.875', 44, 54, 48, 37, 31, 39, 253, 641),
(37, '3013308041', 'SIDDHARTH PANDEY', '6.343', '6.734', 34, 47, 29, 28, 33, 49, 220, 540),
(38, '3013308042', 'SMITA RATH', '8.75', '8.906', 59, 60, 64, 61, 35, 66, 345, 805),
(39, '3013308043', 'SMITA TIWARI', '8.25', '8.484', 63, 47, 55, 56, 28, 53, 302, 755),
(40, '3013308044', 'SONAL SHARMA', '7', '7.031', 31, 41, 36, 28, 32, 46, 214, 625),
(41, '3013308045', 'SOURABH PATEL', '7.718', '7.656', 36, 50, 59, 31, 45, 51, 272, 708),
(42, '3013308046', 'SUSHMITA SINGH', '7.312', '7.656', 45, 45, 49, 28, 34, 62, 263, 681),
(43, '3013308047', 'SWETA SHANDILYA', '8', '7.609', 49, 51, 46, 46, 39, 62, 293, 713),
(44, '3013308048', 'VIBHOOTI MARKANDEY', '7.062', '6.843', 48, 36, 37, 23, 28, 61, 233, 634),
(45, '3013308049', 'AKASH SINGHAL', '0', '0', 43, 37, 41, 32, 31, 50, 234, 545),
(46, '3013308051', 'ARCHANA SAMAL', '6.875', '6.875', 46, 39, 31, 28, 35, 59, 238, 612),
(47, '3013308054', 'GUNJAN MITTAL', '6.343', '6.296', 36, 32, 35, 45, 31, 55, 234, 555),
(48, '3013308055', 'RICHA JAIN', '7.781', '7.484', 23, 45, 30, 33, 33, 63, 227, 676),
(49, '3013308057', 'SOUMYA NAIR', '7.968', '8.171', 58, 50, 41, 37, 38, 60, 284, 720),
(50, '3013308058', 'SANJEEV KR DEWANGAN', '0', '0', 10, 45, 23, 9, 28, 36, 151, 404),
(51, '3013308059', 'SHREEYA DIXIT', '6.375', '6.656', 36, 42, 29, 30, 31, 45, 213, 571),
(52, '3013308060', 'VAIBHAV GUPTA', '0', '0', 43, 49, 30, 28, 5, 35, 190, 579),
(53, '3013308061', 'YASH JAIN', '7.156', '7.312', 67, 45, 55, 51, 38, 42, 298, 661),
(54, '3013308064', 'DHRUV RASTOGI', '0', '0', 33, 19, 29, 28, 23, 22, 154, 454),
(55, '3013308065', 'NITISH JAIN', '7.531', '7.187', 52, 32, 41, 40, 39, 48, 252, 665),
(56, '3013308066', 'PREETI BALA THAKUR', '0', '0', 33, 41, 35, 2, 28, 48, 187, 604);

-- --------------------------------------------------------

--
-- Table structure for table `it_12_2s`
--

CREATE TABLE IF NOT EXISTS `it_12_2s` (
  `subject` varchar(10) NOT NULL,
  PRIMARY KEY (`subject`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_12_2s`
--

INSERT INTO `it_12_2s` (`subject`) VALUES
('bce'),
('bme'),
('eco'),
('eg'),
('m2'),
('p2');

-- --------------------------------------------------------

--
-- Table structure for table `it_12_2_back`
--

CREATE TABLE IF NOT EXISTS `it_12_2_back` (
  `crn` int(11) DEFAULT NULL,
  `urn` varchar(10) NOT NULL DEFAULT '',
  `sname` varchar(50) DEFAULT NULL,
  `spi` varchar(5) DEFAULT NULL,
  `cpi` varchar(5) DEFAULT NULL,
  `eg` int(11) DEFAULT NULL,
  `eco` int(11) DEFAULT NULL,
  `p2` int(11) DEFAULT NULL,
  `m2` int(11) DEFAULT NULL,
  `bme` int(11) DEFAULT NULL,
  `bce` int(11) DEFAULT NULL,
  `sum` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `attempt` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`urn`,`attempt`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_12_2_back`
--

INSERT INTO `it_12_2_back` (`crn`, `urn`, `sname`, `spi`, `cpi`, `eg`, `eco`, `p2`, `m2`, `bme`, `bce`, `sum`, `total`, `attempt`) VALUES
(1, '3013308003', 'ABHISHEK SONI', '0', '0', 37, 36, 30, 29, 28, 28, 188, 470, 2),
(2, '3013308004', 'ABHISHEK VERMA', '0', '0', 34, 37, 32, 34, 38, 4, 179, 472, 2),
(3, '3013308005', 'ADITYA JAIN', '6.718', '7.109', 60, 30, 28, 38, 32, 36, 224, 628, 2),
(4, '3013308006', 'AKASH TAMRAKAR', '0', '0', 46, 47, 40, 24, 28, 32, 217, 618, 2),
(5, '3013308016', 'CHANDRA PRAKASH', '0', '0', 36, 47, 32, 19, 4, 43, 181, 485, 2),
(6, '3013308018', 'KANCHAN NAIR', '0', '0', 46, 40, 43, 17, 29, 56, 231, 616, 2),
(7, '3013308022', 'NAVPREET G MATHEW', '7.468', '7.468', 41, 54, 49, 49, 53, 70, 316, 687, 2),
(8, '3013308025', 'PRATEEK DWIVEDI', '6.781', '7.406', 36, 48, 46, 40, 38, 53, 261, 605, 2),
(9, '3013308031', 'RINA SAO', '6.906', '7.031', 38, 42, 23, 31, 32, 30, 196, 616, 2),
(10, '3013308036', 'SHEKHAR ADIL', '6.031', '6.031', 37, 42, 34, 32, 36, 48, 229, 534, 2),
(11, '3013308039', 'SHUBHANK SHARMA', '0', '0', 7, 8, 28, 5, 23, 15, 86, 354, 2),
(12, '3013308049', 'AKASH SINGHAL', '6.156', '6.25', 43, 37, 41, 32, 31, 50, 234, 559, 2),
(13, '3013308058', 'SANJEEV KR DEWANGAN', '0', '0', 10, 45, 23, 9, 28, 36, 151, 404, 2),
(14, '3013308060', 'VAIBHAV GUPTA', '0', '0', 43, 49, 30, 28, 5, 35, 190, 579, 2),
(15, '3013308064', 'DHRUV RASTOGI', '0', '0', 33, 19, 29, 28, 23, 22, 154, 454, 2),
(16, '3013308066', 'PREETI BALA THAKUR', '0', '0', 33, 41, 35, 2, 28, 48, 187, 604, 2),
(7, '3013308058', 'SANJEEV KR DEWANGAN', '0', '0', 10, 45, 23, 9, 28, 36, 151, 404, 3),
(6, '3013308039', 'SHUBHANK SHARMA', '0', '0', 7, 8, 28, 5, 23, 15, 86, 354, 3),
(5, '3013308018', 'KANCHAN NAIR', '0', '0', 46, 40, 43, 17, 29, 56, 231, 616, 3),
(4, '3013308016', 'CHANDRA PRAKASH', '6.562', '6.312', 36, 47, 32, 41, 67, 43, 266, 570, 3),
(3, '3013308006', 'AKASH TAMRAKAR', '0', '0', 46, 47, 40, 21, 28, 32, 214, 615, 3),
(2, '3013308004', 'ABHISHEK VERMA', '5.812', '5.859', 34, 37, 32, 34, 38, 35, 210, 503, 3),
(1, '3013308003', 'ABHISHEK SONI', '5.906', '6.203', 37, 57, 30, 29, 28, 54, 235, 517, 3),
(1, '3013308006', 'AKASH TAMRAKAR', '6.937', '6.656', 46, 47, 40, 48, 28, 32, 241, 642, 4),
(2, '3013308018', 'KANCHAN NAIR', '0', '0', 46, 40, 43, 17, 29, 56, 231, 616, 4),
(3, '3013308039', 'SHUBHANK SHARMA', '0', '0', 7, 8, 28, 5, 23, 15, 86, 354, 4),
(4, '3013308058', 'SANJEEV KR DEWANGAN', '0', '0', 10, 45, 23, 9, 28, 36, 151, 404, 4),
(5, '3013308064', 'DHRUV RASTOGI', '0', '0', 33, 31, 29, 28, 28, 47, 196, 496, 4),
(6, '3013308066', 'PREETI BALA THAKUR', '7.156', '6.906', 33, 41, 35, 41, 28, 48, 226, 643, 4),
(8, '3013308060', 'VAIBHAV GUPTA', '6.687', '6.687', 43, 49, 30, 28, 37, 35, 222, 611, 3),
(9, '3013308064', 'DHRUV RASTOGI', '0', '0', 33, 28, 29, 28, 28, 31, 177, 477, 3),
(10, '3013308066', 'PREETI BALA THAKUR', '0', '0', 33, 41, 35, 16, 28, 48, 201, 618, 3);

-- --------------------------------------------------------

--
-- Table structure for table `it_12_3`
--

CREATE TABLE IF NOT EXISTS `it_12_3` (
  `crn` int(11) DEFAULT NULL,
  `urn` varchar(10) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `spi` varchar(5) DEFAULT NULL,
  `cpi` varchar(5) DEFAULT NULL,
  `m3` int(11) DEFAULT NULL,
  `be` int(11) DEFAULT NULL,
  `nas` int(11) DEFAULT NULL,
  `foit` int(11) DEFAULT NULL,
  `c` int(11) DEFAULT NULL,
  `deld` int(11) DEFAULT NULL,
  `sum` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`urn`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_12_3`
--

INSERT INTO `it_12_3` (`crn`, `urn`, `sname`, `spi`, `cpi`, `m3`, `be`, `nas`, `foit`, `c`, `deld`, `sum`, `total`) VALUES
(1, '3013308001', 'AANCHAL ARORA', '8.647', '8.647', 57, 55, 45, 34, 60, 34, 285, 781),
(2, '3013308002', 'ABHISHEK BOSE', '0', '0', 30, 49, 19, 53, 46, 18, 215, 612),
(4, '3013308004', 'ABHISHEK VERMA', '0', '0', 28, 34, 5, 41, 19, 10, 137, 442),
(5, '3013308005', 'ADITYA JAIN', '0', '0', 47, 39, 24, 42, 41, 25, 218, 582),
(6, '3013308006', 'AKASH TAMRAKAR', '0', '0', 19, 41, 19, 48, 20, 28, 175, 640),
(7, '3013308007', 'AKHIL CHAUDHARI', '7.617', '7.617', 43, 54, 56, 57, 47, 32, 289, 700),
(8, '3013308008', 'AKTA AGRAWAL', '8.236', '8.236', 28, 43, 44, 58, 45, 43, 261, 747),
(9, '3013308009', 'ALOK KUMAR SINGH', '0', '0', 57, 41, 43, 47, 32, 18, 238, 716),
(10, '3013308010', 'AMBER GUPTA', '8.794', '8.794', 43, 62, 53, 61, 31, 41, 291, 783),
(11, '3013308011', 'ANKITA GARG', '8.117', '8.117', 47, 55, 49, 53, 28, 39, 271, 703),
(12, '3013308012', 'ANKUR CHOWDHURY', '0', '0', 13, 35, 23, 33, 16, 4, 124, 488),
(13, '3013308013', 'ANKUR PODDAR', '0', '0', 51, 48, 62, 44, 15, 30, 250, 662),
(14, '3013308015', 'BHUMIKA MISHRA', '8.558', '8.558', 43, 53, 49, 56, 34, 40, 275, 748),
(15, '3013308016', 'CHANDRA PRAKASH', '0', '0', 37, 23, 12, 28, 17, 3, 120, 418),
(16, '3013308017', 'DEEPAK SAHU', '6.294', '6.294', 41, 38, 34, 46, 34, 28, 221, 562),
(17, '3013308018', 'KANCHAN NAIR', '8', '8', 46, 39, 34, 38, 48, 25, 230, 695),
(18, '3013308019', 'MANISH VINAYAK', '7.882', '7.882', 47, 47, 51, 54, 54, 53, 306, 702),
(19, '3013308020', 'MAYANK JAIN', '0', '0', 16, 31, 8, 33, 45, 25, 158, 607),
(20, '3013308021', 'MOHD SUYEB AHMED SIDDIQUI', '7.029', '7.029', 40, 51, 29, 43, 29, 30, 222, 612),
(21, '3013308022', 'NAVPREET G MATHEW', '0', '0', 51, 41, 20, 51, 35, 14, 212, 600),
(22, '3013308023', 'NITIN KUMAR', '0', '0', 46, 47, 35, 56, 39, 11, 234, 709),
(23, '3013308024', 'PINKESH PANDEY', '0', '0', 42, 48, 41, 47, 21, 18, 217, 674),
(24, '3013308025', 'PRATEEK DWIVEDI', '0', '0', 25, 45, 34, 53, 18, 12, 187, 573),
(25, '3013308026', 'PUJA PANDEY', '9.617', '9.617', 73, 71, 69, 55, 63, 43, 374, 871),
(26, '3013308027', 'RAKSHA JAIN', '9.411', '9.411', 67, 60, 71, 58, 45, 59, 360, 866),
(27, '3013308028', 'RANJOY SARKAR', '7.382', '7.382', 40, 64, 28, 38, 28, 32, 230, 640),
(28, '3013308029', 'REEMA NANWANI', '0', '0', 37, 13, 29, 50, 35, 25, 189, 568),
(29, '3013308030', 'RENU MISHRA', '8.585', '8.585', 49, 40, 57, 46, 55, 47, 294, 779),
(30, '3013308031', 'RINA SAO', '0', '0', 41, 47, 34, 45, 21, 33, 221, 689),
(31, '3013308032', 'ROMA GUPTA', '7.941', '7.941', 54, 36, 46, 52, 37, 54, 279, 704),
(32, '3013308033', 'RUCHI SHAIL', '9.205', '9.205', 53, 75, 53, 58, 58, 59, 356, 837),
(33, '3013308034', 'SACHIN SHARMA', '7.676', '7.676', 30, 46, 32, 51, 33, 28, 220, 674),
(34, '3013308035', 'SHANTANU PATEL', '7.176', '7.176', 39, 50, 28, 54, 58, 40, 269, 649),
(35, '3013308036', 'SHEKHAR ADIL', '0', '0', 4, 28, 28, 44, 47, 21, 172, 538),
(37, '3013308038', 'SHREYA PRIYA', '0', '0', 16, 51, 16, 44, 36, 10, 173, 572),
(38, '3013308040', 'SHWETA PRADHAN', '7.411', '7.411', 51, 30, 47, 52, 39, 30, 249, 666),
(39, '3013308041', 'SIDDHARTH PANDEY', '0', '0', 41, 13, 35, 51, 7, 11, 158, 508),
(40, '3013308042', 'SMITA RATH', '0', '0', 54, 52, 62, 46, 48, 19, 281, 772),
(41, '3013308043', 'SMITA TIWARY', '8.176', '8.176', 51, 46, 52, 41, 47, 35, 272, 715),
(42, '3013308044', 'SONAL SHARMA', '6.529', '6.529', 34, 28, 29, 38, 25, 34, 188, 576),
(43, '3013308045', 'SOURABH PATLE', '0', '0', 30, 37, 31, 35, 30, 18, 181, 657),
(44, '3013308046', 'SUSHMITA SINGH', '8.764', '8.764', 35, 50, 38, 55, 63, 46, 287, 773),
(45, '3013308047', 'SWETA SHANDILYA', '8.029', '8.029', 32, 47, 34, 46, 47, 28, 234, 719),
(46, '3013308048', 'VIBHOOTI MARKANDEY', '0', '0', 20, 31, 28, 37, 42, 28, 186, 573),
(47, '3013308049', 'AKASH SINGHAL', '0', '0', 17, 42, 14, 45, 60, 13, 191, 520),
(48, '3013308050', 'AASTHA CHANDEL', '0', '0', 50, 39, 52, 38, 45, 14, 238, 722),
(49, '3013308051', 'ARCHANA SAMAL', '0', '0', 21, 28, 35, 48, 28, 23, 183, 560),
(50, '3013308052', 'DEVVRAT TIWARI', '7.264', '7.264', 42, 47, 42, 40, 42, 33, 246, 639),
(51, '3013308054', 'GUNJAN MITTAL', '0', '0', 39, 33, 35, 46, 21, 28, 202, 561),
(52, '3013308055', 'RICHA JAIN', '7.323', '7.323', 25, 35, 28, 38, 54, 30, 210, 647),
(53, '3013308056', 'RAHUL SIRMOUR', '0', '0', 23, 28, 17, 28, 23, 19, 138, 489),
(54, '3013308059', 'SHREEYA DIXIT', '0', '0', 53, 43, 39, 48, 19, 28, 230, 597),
(55, '3013308060', 'VAIBHAV GUPTA', '0', '0', 5, 5, 6, 32, 20, 5, 73, 433),
(56, '3013308061', 'YASH JAIN', '7.294', '7.294', 57, 38, 45, 41, 35, 37, 253, 645),
(57, '3013308063', 'MAYURI BANDHYOPADHYAY', '7.558', '7.558', 43, 36, 44, 43, 51, 36, 253, 664),
(58, '3013308064', 'DHRUV RASTOGI', '0', '0', 34, 10, 8, 38, 37, 16, 143, 512),
(59, '3013308065', 'NITESH JAIN', '8', '8', 41, 34, 16, 35, 62, 44, 232, 719),
(60, '3013308066', 'PREETI BALA THAKUR', '0', '0', 28, 24, 23, 40, 30, 39, 184, 638),
(61, '3013308301', 'AJIT KUMAR THAKUR', '0', '0', 0, 12, 12, 35, 28, 18, 105, 438),
(62, '3013308302', 'AMRITA KALASKAR', '0', '0', 15, 21, 22, 49, 28, 20, 155, 564),
(63, '3013308303', 'INDU PRAKASH SAHU', '0', '0', 33, 41, 28, 53, 28, 10, 193, 532),
(64, '3013308304', 'SUNAINA BABER', '0', '0', 9, 21, 22, 36, 18, 12, 118, 456),
(65, '3013308305', 'TAKESHWAR KASHYAP', '0', '0', 5, 15, 4, 50, 15, 10, 99, 431),
(66, '3013308306', 'URVASHI DEWANGAN', '0', '0', 48, 26, 21, 50, 30, 30, 205, 567),
(67, '3013308037', 'SHILPI CHOPADA', '9.529', '9.529', 69, 56, 68, 59, 71, 48, 371, 870);

-- --------------------------------------------------------

--
-- Table structure for table `it_12_3s`
--

CREATE TABLE IF NOT EXISTS `it_12_3s` (
  `subject` varchar(10) NOT NULL,
  PRIMARY KEY (`subject`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_12_3s`
--

INSERT INTO `it_12_3s` (`subject`) VALUES
('be'),
('c'),
('deld'),
('foit'),
('m3'),
('nas');

-- --------------------------------------------------------

--
-- Table structure for table `it_12_3_back`
--

CREATE TABLE IF NOT EXISTS `it_12_3_back` (
  `crn` int(11) DEFAULT NULL,
  `urn` varchar(10) NOT NULL DEFAULT '',
  `sname` varchar(50) DEFAULT NULL,
  `spi` varchar(5) DEFAULT NULL,
  `cpi` varchar(5) DEFAULT NULL,
  `m3` int(11) DEFAULT NULL,
  `be` int(11) DEFAULT NULL,
  `nas` int(11) DEFAULT NULL,
  `foit` int(11) DEFAULT NULL,
  `c` int(11) DEFAULT NULL,
  `deld` int(11) DEFAULT NULL,
  `sum` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `attempt` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`urn`,`attempt`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_12_3_back`
--

INSERT INTO `it_12_3_back` (`crn`, `urn`, `sname`, `spi`, `cpi`, `m3`, `be`, `nas`, `foit`, `c`, `deld`, `sum`, `total`, `attempt`) VALUES
(1, '3013308002', 'ABHISHEK BOSE', '7.294', '6.962', 30, 49, 39, 53, 46, 40, 257, 654, 2),
(2, '3013308003', 'ABHISHEK SONI', '0', '6.962', 35, 32, 21, 32, 37, 45, 202, 488, 2),
(3, '3013308004', 'ABHISHEK VERMA', '0', '6.962', 28, 34, 22, 41, 48, 10, 183, 488, 2),
(4, '3013308005', 'ADITYA JAIN', '6.852', '6.962', 47, 39, 40, 42, 41, 39, 248, 612, 2),
(5, '3013308006', 'AKASH TAMRAKAR', '7.617', '6.962', 28, 41, 31, 48, 47, 28, 223, 488, 2),
(6, '3013308009', 'ALOK KUMAR SINGH', '8.205', '6.962', 57, 41, 43, 47, 32, 28, 248, 726, 2),
(7, '3013308012', 'ANKUR CHOWDHURY', '0', '6.962', 29, 35, 32, 33, 31, 9, 169, 533, 2),
(8, '3013308013', 'ANKUR PODDAR', '0', '6.962', 51, 48, 62, 44, 15, 30, 250, 662, 2),
(9, '3013308016', 'CHANDRA PRAKASH', '0', '6.962', 37, 11, 4, 28, 3, NULL, 83, 381, 2),
(10, '3013308020', 'MAYANK JAIN', '0', '6.962', 23, 31, 33, 33, 45, 52, 217, 666, 2),
(11, '3013308022', 'NAVPREET G MATHEW', '0', '6.962', 51, 41, 22, 51, 35, 38, 238, 626, 2),
(12, '3013308023', 'NITIN KUMAR', '8.411', '6.962', 46, 47, 35, 56, 39, 49, 272, 747, 2),
(13, '3013308024', 'PINKESH PANDEY', '7.735', '6.962', 42, 48, 41, 47, 35, 28, 241, 698, 2),
(14, '3013308025', 'PRATEEK DWIVEDI', '7.235', '6.962', 38, 45, 34, 53, 43, 37, 250, 636, 2),
(15, '3013308029', 'REEMA NANWANI', '7.117', '6.962', 37, 40, 29, 50, 35, 56, 247, 626, 2),
(16, '3013308036', 'SHEKHAR ADIL', '0', '6.962', 12, 28, 28, 44, 47, 31, 190, 556, 2),
(17, '3013308041', 'SIDDHARTH PANDEY', '0', '6.962', 41, 28, 35, 51, 21, 42, 218, 568, 2),
(18, '3013308042', 'SMITA RATH', '9', '6.962', 54, 52, 62, 46, 48, 61, 323, 814, 2),
(19, '3013308045', 'SOURABH PATLE', '7.852', '6.962', 30, 37, 31, 35, 30, 50, 213, 689, 2),
(20, '3013308048', 'VIBHOOTI MARKANDEY', '0', '6.962', 13, 31, 29, 37, 42, 28, 180, 566, 2),
(21, '3013308049', 'AKASH SINGHAL', '6.588', '6.962', 37, 42, 34, 45, 30, 38, 226, 585, 2),
(22, '3013308050', 'AASTHA CHANDEL', '8.470', '6.962', 50, 39, 52, 38, 45, 43, 267, 748, 2),
(23, '3013308051', 'ARCHANA SAMAL', '0', '6.962', 33, 28, 35, 48, 28, 23, 195, 572, 2),
(24, '3013308056', 'RAHUL SIRMOUR', '0', '6.962', 15, 28, 19, 28, 28, 55, 173, 524, 2),
(25, '3013308059', 'SHREEYA DIXIT', '6.823', '6.962', 53, 43, 39, 48, 28, 28, 239, 606, 2),
(25, '3013308060', 'VAIBHAV GUPTA', '0', '6.962', 12, 18, 18, 32, 33, 21, 134, 494, 2),
(25, '3013308064', 'DHRUV RASTOGI', '6.529', '6.962', 34, 28, 30, 38, 37, 34, 201, 570, 2),
(26, '3013308066', 'PREETI BALA THAKUR', '0', '6.962', 28, 24, 10, 40, 30, 39, 171, 625, 2),
(27, '3013308301', 'AJIT KUMAR THAKUR', '0', '6.962', 0, 21, 4, 35, 28, 16, 104, 437, 2),
(28, '3013308302', 'AMRITA KALASKAR', '0', '6.962', 28, 35, 12, 49, 28, 39, 191, 600, 2),
(29, '3013308304', 'SUNAINA BABER', '0', '6.962', 6, 28, 31, 36, 28, 32, 161, 499, 2),
(30, '3013308305', 'TAKESHWAR KASHYAP', '0', '6.962', 0, 15, 13, 50, 14, 14, 106, 438, 2),
(31, '3013308306', 'URVASHI DEWANGAN', '0', '6.962', 48, 28, 23, 50, 30, 30, 209, 571, 2),
(1, '3013308003', 'ABHISHEK SONI', '5.617', '5.901', 35, 32, 39, 32, 37, 45, 220, 506, 3),
(2, '3013308004', 'ABHISHEK VERMA', '0', '5.901', 28, 34, 14, 41, 48, 6, 171, 476, 3),
(3, '3013308012', 'ANKUR CHOWDHURY', '6.411', '5.901', 29, 35, 32, 33, 31, 37, 197, 561, 3),
(4, '3013308013', 'ANKUR PODDAR', '0', '5.901', 51, 48, 62, 44, 15, 30, 250, 662, 3),
(5, '3013308016', 'CHANDRA PRAKASH', '0', '5.901', 37, 6, 19, 28, 11, 44, 145, 443, 3),
(6, '3013308020', 'MAYANK JAIN', '7.735', '5.901', 46, 31, 33, 33, 45, 52, 240, 689, 3),
(7, '3013308022', 'NAVPREET G MATHEW', '7.205', '5.901', 51, 41, 38, 51, 35, 38, 254, 642, 3),
(8, '3013308036', 'SHEKHAR ADIL', '0', '5.901', 12, 28, 28, 44, 47, 31, 190, 556, 3),
(9, '3013308038', 'SHREYA PRIYA', '0', '5.901', 23, 51, 34, 44, 36, 38, 226, 625, 3),
(10, '3013308041', 'SIDDHARTH PANDEY', '6.823', '5.901', 41, 28, 35, 51, 58, 42, 255, 605, 3),
(11, '3013308048', 'VIBHOOTI MARKANDEY', '0', '5.901', 18, 31, 29, 37, 42, 28, 185, 571, 3),
(12, '3013308051', 'ARCHANA SAMAL', '6.411', '5.901', 33, 28, 35, 48, 28, 31, 203, 580, 3),
(13, '3013308056', 'RAHUL SIRMOUR', '6.352', '5.901', 28, 28, 33, 28, 28, 55, 200, 551, 3),
(14, '3013308060', 'VAIBHAV GUPTA', '0', '5.901', 23, 28, 31, 32, 33, 23, 170, 530, 3),
(15, '3013308066', 'PREETI BALA THAKUR', '7.323', '5.901', 28, 28, 29, 40, 30, 39, 194, 648, 3),
(16, '3013308301', 'AJIT KUMAR THAKUR', '0', '5.901', 6, 15, 14, 35, 28, 9, 107, 440, 3),
(17, '3013308302', 'AMRITA KALASKAR', '7.117', '5.901', 28, 35, 39, 49, 28, 39, 218, 627, 3),
(18, '3013308304', 'SUNAINA BABER', '0', '5.901', 5, 28, 31, 36, 28, 32, 160, 498, 3),
(19, '3013308305', 'TAKESHWAR KASHYAP', '0', '5.901', 7, 7, 12, 50, 40, 14, 130, 642, 3),
(20, '3013308306', 'URVASHI DEWANGAN', '6.794', '5.901', 48, 28, 47, 50, 30, 30, 233, 595, 3),
(2, '3013308004', 'ABHISHEK VERMA', '6.029', '5.947', 28, 34, 47, 41, 48, 30, 228, 533, 4),
(4, '3013308013', 'ANKUR PODDAR', '0', '5.947', 51, 48, 62, 44, 15, 30, 250, 662, 4),
(5, '3013308016', 'CHANDRA PRAKASH', '5.941', '5.947', 37, 40, 37, 28, 28, 44, 214, 512, 4),
(8, '3013308036', 'SHEKHAR ADIL', '0', '5.947', 14, 28, 28, 44, 47, 31, 192, 558, 4),
(9, '3013308038', 'SHREYA PRIYA', '7.264', '5.947', 43, 51, 34, 44, 36, 38, 246, 645, 4),
(11, '3013308048', 'VIBHOOTI MARKANDEY', '6.705', '5.947', 31, 31, 29, 37, 42, 28, 198, 584, 4),
(14, '3013308060', 'VAIBHAV GUPTA', '0', '5.947', 17, 28, 31, 32, 33, 28, 169, 529, 4),
(16, '3013308301', 'AJIT KUMAR THAKUR', '0', '5.947', 0, 10, 4, 35, 28, 14, 91, 424, 4),
(18, '3013308304', 'SUNAINA BABER', '0', '5.947', 15, 28, 31, 36, 28, 32, 170, 508, 4),
(19, '3013308305', 'TAKESHWAR KASHYAP', '0', '5.947', 0, 28, 31, 50, 40, 31, 180, 512, 4);

-- --------------------------------------------------------

--
-- Table structure for table `it_12_4`
--

CREATE TABLE IF NOT EXISTS `it_12_4` (
  `crn` int(11) DEFAULT NULL,
  `urn` varchar(10) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `spi` varchar(5) DEFAULT NULL,
  `cpi` varchar(5) DEFAULT NULL,
  `cm` int(11) DEFAULT NULL,
  `dm` int(11) DEFAULT NULL,
  `ds` int(11) DEFAULT NULL,
  `aec` int(11) DEFAULT NULL,
  `cpp` int(11) DEFAULT NULL,
  `pom` int(11) DEFAULT NULL,
  `sum` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`urn`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_12_4`
--

INSERT INTO `it_12_4` (`crn`, `urn`, `sname`, `spi`, `cpi`, `cm`, `dm`, `ds`, `aec`, `cpp`, `pom`, `sum`, `total`) VALUES
(1, '3013308001', 'AANCHAL ARORA', '8.764', '8.764', 47, 53, 55, 44, 64, 54, 317, 780),
(2, '3013308002', 'ABHISHEK BOSE', '0', '0', 56, 29, 49, 22, 40, 54, 250, 665),
(3, '3013308003', 'ABHISHEK SONI', '0', '0', 47, 51, 51, 24, 20, 45, 238, 581),
(4, '3013308004', 'ABHISHEK VERMA', '0', '0', 35, 17, 35, 9, 1, 55, 152, 471),
(5, '3013308005', 'ADITYA JAIN', '0', '0', 46, 52, 39, 12, 44, 39, 232, 617),
(6, '3013308006', 'AKASH TAMRAKAR', '7.882', '7.882', 47, 52, 40, 28, 48, 52, 267, 699),
(7, '3013308007', 'AKHIL CHAUDHARI', '8.823', '8.823', 74, 49, 53, 52, 61, 53, 342, 784),
(8, '3013308008', 'AKTA AGRAWAL', '8.764', '8.764', 44, 61, 51, 46, 44, 70, 316, 784),
(9, '3013308009', 'ALOK KUMAR SINGH', '8.117', '8.117', 50, 50, 47, 40, 37, 56, 280, 736),
(10, '3013308010', 'AMBER GUPTA', '9.058', '9.058', 64, 70, 58, 37, 62, 54, 345, 818),
(11, '3013308011', 'ANKITA GARG', '8.382', '8.382', 65, 35, 56, 52, 56, 50, 314, 746),
(12, '3013308012', 'ANKUR CHOWDHURY', '0', '0', 60, 16, 33, 18, 13, 54, 194, 593),
(13, '3013308013', 'ANKUR PODDAR', '0', '0', 50, 48, 38, 37, 18, 50, 241, 665),
(14, '3013308015', 'BHUMIKA MISHRA', '8.529', '8.529', 51, 53, 56, 42, 64, 60, 326, 774),
(15, '3013308016', 'CHANDRA PRAKASH', '0', '0', 35, 37, 7, 0, 4, 40, 123, 461),
(16, '3013308017', 'DEEPAK SAHU', '0', '0', 33, 39, 11, 0, 2, 50, 135, 506),
(17, '3013308018', 'KANCHAN NAIR', '7.794', '7.794', 36, 35, 55, 38, 47, 54, 265, 693),
(18, '3013308019', 'MANISH VINAYAK', '0', '0', 66, 64, 50, 20, 56, 57, 313, 750),
(19, '3013308020', 'MAYANK JAIN', '0', '0', 40, 57, 37, 9, 56, 48, 247, 698),
(20, '3013308021', 'MOHD SUYEB AHMED SIDDIQUI', '0', '0', 51, 38, 38, 22, 36, 51, 236, 668),
(21, '3013308022', 'NAVPREET G MATHEW', '7.235', '7.235', 51, 28, 34, 31, 28, 44, 216, 630),
(22, '3013308023', 'NITIN KUMAR', '8.382', '8.382', 54, 47, 52, 37, 60, 50, 300, 755),
(23, '3013308024', 'PINKESH PANDEY', '0', '0', 58, 28, 53, 14, 51, 54, 258, 697),
(24, '3013308025', 'PRATEEK DWIVEDI', '0', '0', 63, 44, 50, 15, 52, 50, 274, 713),
(25, '3013308026', 'PUJA PANDEY', '10', '10', 74, 77, 69, 68, 68, 70, 426, 923),
(26, '3013308027', 'RAKSHA JAIN', '9.382', '9.382', 62, 60, 47, 66, 78, 63, 376, 870),
(27, '3013308028', 'RANJOY SARKAR', '7.794', '7.794', 54, 55, 45, 56, 37, 44, 291, 698),
(28, '3013308029', 'REEMA NANWANI', '7.058', '7.058', 45, 28, 40, 23, 37, 46, 219, 625),
(29, '3013308030', 'RENU MISHRA', '9.176', '9.176', 72, 67, 53, 58, 43, 49, 342, 817),
(30, '3013308031', 'RINA SAO', '7.676', '7.676', 33, 34, 49, 29, 37, 56, 238, 683),
(31, '3013308032', 'ROMA GUPTA', '8.5', '8.5', 58, 56, 61, 34, 49, 49, 307, 759),
(32, '3013308033', 'RUCHI SHAIL', '8.647', '8.647', 55, 66, 51, 43, 63, 63, 341, 805),
(33, '3013308034', 'SACHIN SHARMA', '7.941', '7.941', 50, 55, 37, 38, 38, 48, 266, 710),
(34, '3013308035', 'SHANTANU PATEL', '8.441', '8.441', 59, 63, 57, 28, 60, 40, 307, 755),
(35, '3013308036', 'SHEKHAR ADIL', '0', '0', 57, 32, 25, 12, 29, 56, 211, 586),
(36, '3013308037', 'SHILPI CHOPADA', '9.647', '9.647', 73, 54, 65, 59, 74, 56, 381, 868),
(37, '3013308038', 'SHREYA PRIYA', '7.411', '7.411', 52, 40, 37, 31, 42, 58, 260, 651),
(38, '3013308040', 'SHWETA PRADHAN', '8.205', '8.205', 63, 32, 58, 28, 34, 56, 271, 716),
(39, '3013308041', 'SIDDHARTH PANDEY', '0', '0', 40, 23, 26, 15, 50, 29, 183, 581),
(40, '3013308042', 'SMITA RATH', '8.676', '8.676', 62, 65, 53, 41, 39, 57, 317, 785),
(41, '3013308043', 'SMITA TIWARY', '0', '0', 61, 42, 66, 21, 55, 64, 309, 767),
(42, '3013308044', 'SONAL SHARMA', '0', '0', 28, 42, 42, 13, 39, 54, 218, 606),
(43, '3013308045', 'SOURABH PATLE', '7.588', '7.588', 28, 31, 52, 35, 49, 55, 250, 691),
(44, '3013308046', 'SUSHMITA SINGH', '8.058', '8.058', 43, 39, 47, 23, 64, 52, 268, 720),
(45, '3013308047', 'SWETA SHANDILYA', '0', '0', 30, 52, 49, 18, 9, 55, 213, 653),
(46, '3013308048', 'VIBHOOTI MARKANDEY', '6.617', '6.617', 28, 29, 34, 34, 47, 48, 220, 616),
(47, '3013308049', 'AKASH SINGHAL', '0', '0', 47, 22, 44, 17, 7, 42, 179, 574),
(48, '3013308050', 'AASTHA CHANDEL', '0', '0', 50, 48, 54, 32, 14, 58, 256, 690),
(49, '3013308051', 'ARCHANA SAMAL', '0', '0', 55, 46, 33, 11, 16, 43, 204, 594),
(50, '3013308052', 'DEVVRAT TIWARI', '8.029', '8.029', 63, 45, 49, 39, 31, 56, 283, 714),
(51, '3013308054', 'GUNJAN MITTAL', '7.382', '7.382', 48, 49, 46, 35, 49, 49, 276, 668),
(52, '3013308055', 'RICHA JAIN', '7.647', '7.647', 24, 40, 53, 28, 46, 40, 231, 685),
(53, '3013308056', 'RAHUL SIRMOUR', '0', '0', 39, 28, 35, 16, 47, 52, 217, 586),
(54, '3013308059', 'SHREEYA DIXIT', '0', '0', 31, 59, 37, 22, 43, 50, 242, 650),
(55, '3013308060', 'VAIBHAV GUPTA', '0', '0', 23, 20, 25, 5, 40, 47, 160, 549),
(56, '3013308061', 'YASH JAIN', '8.029', '8.029', 69, 59, 50, 40, 41, 60, 319, 717),
(57, '3013308063', 'MAYURI BANDHYOPADHYAY', '7.529', '7.529', 66, 28, 54, 24, 28, 55, 255, 654),
(58, '3013308064', 'DHRUV RASTOGI', '0', '0', 33, 28, 18, 7, 31, 35, 152, 527),
(59, '3013308065', 'NITESH JAIN', '8.235', '8.235', 67, 63, 41, 37, 42, 35, 285, 740),
(60, '3013308066', 'PREETI BALA THAKUR', '7.47', '7.47', 28, 33, 43, 39, 41, 44, 228, 658),
(61, '3013308301', 'AJIT KUMAR THAKUR', '0', '0', 5, 10, 23, 0, 40, 31, 109, 456),
(62, '3013308302', 'AMRITA KALASKAR', '0', '0', 38, 40, 35, 7, 13, 57, 190, 600),
(63, '3013308304', 'SUNAINA BABER', '0', '0', 16, 6, 28, 10, 1, 34, 95, 463),
(64, '3013308305', 'TAKESHWAR KASHYAP', '0', '0', 5, 6, 31, 15, 21, 23, 101, 486),
(65, '3013308306', 'URVASHI DEWANGAN', '7.794', '7.794', 44, 40, 52, 47, 33, 56, 272, 702);

-- --------------------------------------------------------

--
-- Table structure for table `it_12_4s`
--

CREATE TABLE IF NOT EXISTS `it_12_4s` (
  `subject` varchar(10) NOT NULL,
  PRIMARY KEY (`subject`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_12_4s`
--

INSERT INTO `it_12_4s` (`subject`) VALUES
('aec'),
('cm'),
('cpp'),
('dm'),
('ds'),
('pom');

-- --------------------------------------------------------

--
-- Table structure for table `it_12_4_back`
--

CREATE TABLE IF NOT EXISTS `it_12_4_back` (
  `crn` int(11) DEFAULT NULL,
  `urn` varchar(10) NOT NULL DEFAULT '',
  `sname` varchar(50) DEFAULT NULL,
  `spi` varchar(5) DEFAULT NULL,
  `cpi` varchar(5) DEFAULT NULL,
  `cm` int(11) DEFAULT NULL,
  `dm` int(11) DEFAULT NULL,
  `ds` int(11) DEFAULT NULL,
  `aec` int(11) DEFAULT NULL,
  `cpp` int(11) DEFAULT NULL,
  `pom` int(11) DEFAULT NULL,
  `sum` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `attempt` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`urn`,`attempt`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_12_4_back`
--

INSERT INTO `it_12_4_back` (`crn`, `urn`, `sname`, `spi`, `cpi`, `cm`, `dm`, `ds`, `aec`, `cpp`, `pom`, `sum`, `total`, `attempt`) VALUES
(22, '3013308059', 'SHREEYA DIXIT', '7.647', '7.015', 31, 59, 37, 42, 43, 50, 262, 670, 2),
(21, '3013308056', 'RAHUL SIRMOUR', '6.823', '7.015', 39, 28, 35, 36, 47, 52, 237, 606, 2),
(20, '3013308051', 'ARCHANA SAMAL', '7.352', '7.015', 55, 46, 33, 37, 40, 43, 254, 644, 2),
(19, '3013308050', 'AASTHA CHANDEL', '8.264', '7.015', 50, 48, 54, 32, 54, 58, 296, 730, 2),
(18, '3013308049', 'AKASH SINGHAL', '7.352', '7.015', 47, 31, 44, 45, 40, 42, 249, 644, 2),
(17, '3013308047', 'SWETA SHANDILYA', '0', '7.015', 30, 52, 49, 18, 9, 55, 213, 653, 2),
(16, '3013308044', 'SONAL SHARMA', '7.147', '7.015', 28, 42, 42, 41, 39, 54, 246, 634, 2),
(15, '3013308041', 'SIDDHARTH PANDEY', '0', '7.015', 40, 30, 28, 22, 50, 29, 199, 597, 2),
(14, '3013308036', 'SHEKHAR ADIL', '6.941', '7.015', 57, 32, 37, 28, 29, 56, 239, 614, 2),
(13, '3013308025', 'PRATEEK DWIVEDI', '8.264', '7.015', 63, 44, 50, 53, 52, 50, 312, 751, 2),
(12, '3013308024', 'PINKESH PANDEY', '8.264', '7.015', 58, 28, 53, 57, 51, 54, 301, 740, 2),
(11, '3013308021', 'MOHD SUYEB AHMED SIDDIQUI', '0', '7.015', 51, 38, 38, 22, 36, 51, 236, 668, 2),
(10, '3013308020', 'MAYANK JAIN', '8.205', '7.015', 40, 57, 37, 46, 56, 48, 284, 735, 2),
(9, '3013308019', 'MANISH VINAYAK', '8.676', '7.015', 66, 64, 50, 61, 56, 57, 354, 791, 2),
(8, '3013308017', 'DEEPAK SAHU', '7.058', '7.015', 33, 39, 53, 40, 43, 50, 258, 629, 2),
(7, '3013308016', 'CHANDRA PRAKASH', '0', '7.015', 35, 37, 6, 0, NULL, 40, 118, 456, 2),
(6, '3013308013', 'ANKUR PODDAR', '0', '7.015', 50, 48, 38, 37, 18, 50, 241, 665, 2),
(5, '3013308012', 'ANKUR CHOWDHURY', '7.558', '7.015', 60, 53, 33, 37, 34, 54, 271, 670, 2),
(4, '3013308005', 'ADITYA JAIN', '7.088', '7.015', 46, 52, 39, 33, 44, 39, 253, 638, 2),
(3, '3013308004', 'ABHISHEK VERMA', '0', '7.015', 35, 0, 35, 28, 4, 55, 157, 476, 2),
(2, '3013308003', 'ABHISHEK SONI', '6.647', '7.015', 47, 51, 51, 30, 33, 45, 257, 600, 2),
(1, '3013308002', 'ABHISHEK BOSE', '0', '7.015', 56, 29, 49, 22, 40, 54, 250, 665, 2),
(1, '3013308002', 'ABHISHEK BOSE', '0', '6.885', 56, 29, 49, 22, 40, 54, 250, 665, 3),
(2, '3013308004', 'ABHISHEK VERMA', '0', '6.885', 35, 4, 35, 28, 18, 55, 175, 494, 3),
(3, '3013308013', 'ANKUR PODDAR', '0', '6.885', 50, 48, 38, 37, 18, 50, 241, 665, 3),
(4, '3013308016', 'CHANDRA PRAKASH', '0', '6.885', 35, 37, 12, 5, NULL, 40, 129, 467, 3),
(5, '3013308021', 'MOHD SUYEB AHMED SIDDIQUI', '0', '6.885', 51, 38, 38, 22, 36, 51, 236, 668, 3),
(6, '3013308041', 'SIDDHARTH PANDEY', '7.088', '6.885', 40, 30, 28, 39, 50, 29, 216, 614, 3),
(7, '3013308047', 'SWETA SHANDILYA', '0', '6.885', 30, 52, 49, 18, 9, 55, 213, 653, 3),
(8, '3013308060', 'VAIBHAV GUPTA', '0', '6.885', 29, 28, 39, 8, 40, 47, 191, 580, 3),
(9, '3013308064', 'DHRUV RASTOGI', '6.647', '6.885', 33, 28, 45, 31, 31, 35, 203, 578, 3),
(10, '3013308301', 'AJIT KUMAR THAKUR', '0', '6.885', 4, 3, 22, 1, 40, 31, 101, 448, 3),
(11, '3013308304', 'SUNAINA BABER', '6.205', '6.885', 29, 33, 28, 28, 29, 34, 181, 549, 3),
(12, '3013308305', 'TAKESHWAR KASHYAP', '0', '6.885', 28, 6, 31, 5, 39, 28, 137, 522, 3),
(1, '3013308002', 'ABHISHEK BOSE', '0', '6.035', 56, 29, 49, 22, 40, 54, 250, 665, 4),
(2, '3013308004', 'ABHISHEK VERMA', '6.205', '6.035', 35, 40, 35, 28, 31, 55, 224, 543, 4),
(3, '3013308013', 'ANKUR PODDAR', '0', '6.035', 50, 48, 38, 37, 18, 50, 241, 665, 4),
(4, '3013308016', 'CHANDRA PRAKASH', '6.235', '6.035', 35, 37, 41, 34, 23, 40, 210, 548, 4),
(5, '3013308021', 'MOHD SUYEB AHMED SIDDIQUI', '0', '6.035', 51, 38, 38, 22, 36, 51, 236, 668, 4),
(6, '3013308047', 'SWETA SHANDILYA', '0', '6.035', 30, 52, 49, 18, 9, 55, 213, 653, 4),
(7, '3013308060', 'VAIBHAV GUPTA', '6.735', '6.035', 29, 28, 39, 33, 40, 47, 216, 605, 4),
(8, '3013308301', 'AJIT KUMAR THAKUR', '0', '6.035', 24, 13, 16, 10, 40, 31, 134, 481, 4),
(9, '3013308305', 'TAKESHWAR KASHYAP', '0', '6.035', 28, 18, 31, 4, 39, 28, 148, 533, 4),
(23, '3013308060', 'VAIBHAV GUPTA', '0', '7.015', 29, 28, 39, 16, 40, 47, 199, 588, 2),
(24, '3013308064', 'DHRUV RASTOGI', '0', '7.015', 33, 28, 45, 14, 31, 35, 186, 561, 2),
(25, '3013308301', 'AJIT KUMAR THAKUR', '0', '7.015', 7, 15, 6, 3, 40, 31, 102, 449, 2),
(26, '3013308302', 'AMRITA KALASKAR', '7.529', '7.015', 38, 40, 35, 33, 53, 57, 256, 666, 2),
(27, '3013308304', 'SUNAINA BABER', '0', '7.015', 29, 33, 28, 12, 29, 34, 165, 533, 2),
(28, '3013308305', 'TAKESHWAR KASHYAP', '0', '7.015', 9, 5, 31, 11, 39, 28, 123, 508, 2);

-- --------------------------------------------------------

--
-- Table structure for table `it_12_5`
--

CREATE TABLE IF NOT EXISTS `it_12_5` (
  `crn` int(11) DEFAULT NULL,
  `urn` varchar(10) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `spi` varchar(5) DEFAULT NULL,
  `cpi` varchar(5) DEFAULT NULL,
  `tscn` int(11) DEFAULT NULL,
  `pcs` int(11) DEFAULT NULL,
  `mp` int(11) DEFAULT NULL,
  `coa` int(11) DEFAULT NULL,
  `os` int(11) DEFAULT NULL,
  `java` int(11) DEFAULT NULL,
  `sum` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`urn`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_12_5`
--

INSERT INTO `it_12_5` (`crn`, `urn`, `sname`, `spi`, `cpi`, `tscn`, `pcs`, `mp`, `coa`, `os`, `java`, `sum`, `total`) VALUES
(1, '3013308001', 'AANCHAL ARORA', '9.354', '', 45, 66, 55, 56, 52, 58, 332, 834),
(2, '3013308003', 'ABHISHEK SONI', '7.322', '', 34, 28, 37, 36, 53, 56, 244, 633),
(3, '3013308004', 'ABHISHEK VERMA', '0', '', 30, 46, 17, 47, 52, 53, 245, 582),
(4, '3013308005', 'ADITYA JAIN', '7.129', '', 43, 47, 46, 34, 33, 50, 253, 623),
(5, '3013308006', 'AKASH TAMRAKAR', '8.225', '', 36, 40, 37, 37, 59, 52, 261, 726),
(6, '3013308007', 'AKHIL CHAUDHARI', '9.032', '', 46, 58, 63, 47, 74, 60, 348, 805),
(7, '3013308008', 'AKTA AGRAWAL', '8.45', '', 42, 47, 39, 48, 49, 46, 271, 729),
(8, '3013308009', 'ALOK KUMAR SINGH', '9.290', '', 55, 49, 59, 55, 64, 59, 341, 838),
(9, '3013308010', 'AMBER GUPTA', '9.225', '', 45, 58, 60, 46, 66, 66, 341, 835),
(10, '3013308011', 'ANKITA GARG', '8.354', '', 43, 60, 45, 56, 71, 43, 318, 744),
(11, '3013308012', 'ANKUR CHOWDHURY', '7.54', '', 36, 32, 23, 40, 53, 63, 247, 666),
(12, '3013308013', 'ANKUR PODDAR', '7.709', '', 43, 60, 45, 36, 54, 38, 276, 681),
(13, '3013308015', 'BHUMIKA MISHRA', '8.419', '', 50, 48, 40, 43, 60, 45, 286, 732),
(14, '3013308016', 'CHANDRA PRAKASH', '0', '', 28, 5, NULL, 22, 28, 4, 87, 408),
(15, '3013308017', 'DEEPAK SAHU', '7.129', '', 39, 49, 45, 28, 49, 23, 233, 615),
(16, '3013308018', 'KANCHAN NAIR', '8.774', '', 61, 56, 57, 65, 62, 38, 339, 786),
(17, '3013308019', 'MANISH VINAYAK', '8.645', '', 61, 56, 44, 50, 67, 61, 339, 773),
(18, '3013308020', 'MAYANK JAIN', '8.451', '', 36, 49, 47, 49, 37, 59, 277, 756),
(19, '3013308021', 'MOHD SUYEB AHMED SIDDIQUI', '7.709', '', 44, 49, 55, 41, 54, 33, 276, 680),
(20, '3013308022', 'NAVPREET G MATHEW', '7.580', '', 45, 36, 46, 35, 47, 52, 261, 676),
(21, '3013308023', 'NITIN KUMAR', '9.032', '', 46, 45, 59, 52, 61, 57, 320, 809),
(22, '3013308024', 'PINKESH PANDEY', '8.612', '', 45, 36, 39, 39, 58, 58, 275, 753),
(23, '3013308025', 'PRATEEK DWIVEDI', '8.419', '', 59, 46, 40, 40, 59, 51, 295, 745),
(24, '3013308026', 'PUJA PANDEY', '9.903', '', 68, 67, 65, 65, 56, 65, 386, 898),
(25, '3013308027', 'RAKSHA JAIN', '9.774', '', 66, 61, 64, 58, 68, 64, 381, 888),
(26, '3013308028', 'RANJOY SARKAR', '7.387', '', 33, 45, 51, 36, 44, 32, 241, 650),
(27, '3013308029', 'REEMA NANWANI', '7.774', '', 36, 45, 53, 44, 50, 50, 278, 680),
(28, '3013308030', 'RENU MISHRA', '9.580', '', 64, 69, 69, 59, 64, 54, 379, 868),
(29, '3013308031', 'RINA SAO', '8.516', '', 43, 43, 39, 46, 47, 56, 274, 736),
(30, '3013308032', 'ROMA GUPTA', '9.064', '', 63, 49, 57, 51, 42, 57, 319, 806),
(31, '3013308033', 'RUCHI SHAIL', '9.290', '', 63, 61, 48, 54, 54, 59, 339, 843),
(32, '3013308034', 'SACHIN SHARMA', '8.451', '', 37, 50, 54, 38, 60, 59, 298, 744),
(33, '3013308035', 'SHANTANU PATEL', '8.580', '', 38, 46, 50, 45, 54, 55, 288, 749),
(34, '3013308037', 'SHILPI CHOPADA', '9.677', '', 74, 60, 68, 59, 54, 66, 381, 888),
(35, '3013308038', 'SHREYA PRIYA', '8.387', '', 44, 55, 44, 43, 49, 59, 294, 739),
(36, '3013308040', 'SHWETA PRADHAN', '8.387', '', 42, 54, 44, 56, 40, 63, 299, 743),
(37, '3013308041', 'SIDDHARTH PANDEY', '0', '', 28, 23, 9, 37, 50, 35, 182, 546),
(38, '3013308042', 'SMITA RATH', '9.354', '', 53, 59, 59, 53, 67, 52, 343, 834),
(39, '3013308043', 'SMITA TIWARY', '9.096', '', 48, 36, 57, 63, 65, 52, 321, 818),
(40, '3013308044', 'SONAL SHARMA', '8.032', '', 45, 53, 44, 38, 56, 49, 285, 700),
(41, '3013308045', 'SOURABH PATLE', '9.129', '', 53, 57, 54, 58, 61, 57, 340, 832),
(42, '3013308046', 'SUSHMITA SINGH', '9.193', '', 57, 40, 73, 62, 62, 48, 342, 809),
(43, '3013308047', 'SWETA SHANDILYA', '8.903', '', 56, 55, 50, 45, 56, 57, 319, 791),
(44, '3013308048', 'VIBHOOTI MARKANDEY', '8.064', '', 51, 48, 46, 42, 51, 65, 303, 712),
(45, '3013308049', 'AKASH SINGHAL', '7.709', '', 55, 45, 38, 38, 56, 59, 291, 679),
(46, '3013308050', 'AASTHA CHANDEL', '8.580', '', 36, 54, 66, 40, 59, 50, 305, 748),
(47, '3013308051', 'ARCHANA SAMAL', '7.022', '', 36, 37, 28, 40, 39, 52, 232, 622),
(48, '3013308052', 'DEVVRAT TIWARI', '8.354', '', 45, 46, 45, 48, 61, 56, 301, 735),
(49, '3013308054', 'GUNJAN MITTAL', '7.516', '', 49, 35, 45, 41, 48, 55, 273, 652),
(50, '3013308055', 'RICHA JAIN', '8.806', '', 59, 33, 58, 54, 65, 46, 315, 789),
(51, '3013308056', 'RAHUL SIRMOUR', '7.193', '', 47, 43, 44, 48, 58, 28, 268, 640),
(52, '3013308059', 'SHREEYA DIXIT', '7.741', '', 48, 33, 40, 41, 65, 37, 264, 686),
(53, '3013308061', 'YASH JAIN', '7.612', '', 46, 41, 55, 46, 50, 33, 271, 671),
(54, '3013308063', 'MAYURI BANDHYOPADHYAY', '8.096', '', 49, 52, 44, 50, 54, 59, 308, 706),
(55, '3013308065', 'NITESH JAIN', '9.129', '', 54, 55, 44, 53, 55, 58, 319, 816),
(56, '3013308066', 'PREETI BALA THAKUR', '0', '', 38, 21, 41, 47, 59, 28, 234, 681),
(57, '3013308301', 'AJIT KUMAR THAKUR', '0', '', 52, 8, 9, 43, 55, 53, 220, 618),
(58, '3013308302', 'AMRITA KALASKAR', '8.032', '', 65, 42, 56, 44, 66, 51, 324, 726),
(59, '3013308304', 'SUNAINA BABER', '0', '', 41, 12, 9, 38, 57, 43, 200, 567),
(60, '3013308305', 'TAKESHWAR KASHYAP', '0', '', 36, 21, 20, 35, 40, 15, 167, 561),
(61, '3013308306', 'URVASHI DEWANGAN', '8.967', '', 50, 49, 66, 60, 47, 58, 330, 809);

-- --------------------------------------------------------

--
-- Table structure for table `it_12_5s`
--

CREATE TABLE IF NOT EXISTS `it_12_5s` (
  `subject` varchar(10) NOT NULL,
  PRIMARY KEY (`subject`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_12_5s`
--

INSERT INTO `it_12_5s` (`subject`) VALUES
('coa'),
('java'),
('mp'),
('os'),
('pcs'),
('tscn');

-- --------------------------------------------------------

--
-- Table structure for table `it_12_5_back`
--

CREATE TABLE IF NOT EXISTS `it_12_5_back` (
  `crn` int(11) DEFAULT NULL,
  `urn` varchar(10) NOT NULL DEFAULT '',
  `sname` varchar(50) DEFAULT NULL,
  `spi` varchar(5) DEFAULT NULL,
  `cpi` varchar(5) DEFAULT NULL,
  `tscn` int(11) DEFAULT NULL,
  `pcs` int(11) DEFAULT NULL,
  `mp` int(11) DEFAULT NULL,
  `coa` int(11) DEFAULT NULL,
  `os` int(11) DEFAULT NULL,
  `java` int(11) DEFAULT NULL,
  `sum` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `attempt` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`urn`,`attempt`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_12_5_back`
--

INSERT INTO `it_12_5_back` (`crn`, `urn`, `sname`, `spi`, `cpi`, `tscn`, `pcs`, `mp`, `coa`, `os`, `java`, `sum`, `total`, `attempt`) VALUES
(7, '3013308301', 'AJIT KUMAR THAKUR', '0', '', 52, 11, 9, 43, 55, 53, 223, 621, 2),
(6, '3013308066', 'PREETI BALA THAKUR', '7.935', '7.404', 38, 33, 41, 47, 59, 28, 246, 693, 2),
(5, '3013308041', 'SIDDHARTH PANDEY', '6.871', '', 28, 44, 28, 37, 50, 35, 222, 586, 2),
(4, '3013308016', 'CHANDRA PRAKASH', '0', '', 28, NULL, NULL, 48, 28, NULL, 104, 425, 2),
(3, '3013308012', 'ANKUR CHOWDHURY', '0', '', 36, 32, 18, 40, 53, 63, 242, 671, 2),
(2, '3013308004', 'ABHISHEK VERMA', '0', '', 30, 46, NULL, 47, 52, 53, 228, 566, 2),
(1, '3013308002', 'ABHISHEK BOSE', '8.387', '7.477', 46, 54, 50, 46, 49, 52, 297, 742, 2),
(1, '3013308004', 'ABHISHEK VERMA', '0', '', 30, 46, 13, 47, 52, 53, 241, 579, 3),
(3, '3013308016', 'CHANDRA PRAKASH', '0', '', 28, NULL, NULL, 48, 28, 6, 110, 431, 3),
(5, '3013308301', 'AJIT KUMAR THAKUR', '0', '', 52, 21, 6, 43, 55, 53, 230, 628, 3),
(6, '3013308304', 'SUNAINA BABER', '6.967', '', 41, 40, 30, 38, 57, 43, 249, 617, 3),
(7, '3013308305', 'TAKESHWAR KASHYAP', '0', '', 36, 27, 2, 35, 40, 20, 160, 554, 3),
(8, '3013308304', 'SUNAINA BABER', '0', '', 41, 15, 30, 38, 57, 43, 224, 592, 2),
(9, '3013308305', 'TAKESHWAR KASHYAP', '0', '', 36, 21, 20, 35, 40, 15, 167, 561, 2),
(1, '3013308004', 'ABHISHEK VERMA', '6.806', '6.217', 30, 46, 35, 47, 52, 53, 263, 601, 4),
(3, '3013308016', 'CHANDRA PRAKASH', '0', '', 28, 13, 11, 48, 28, 33, 161, 482, 4),
(4, '3013308036', 'SHEKHAR ADIL', '0', '', 46, 36, NULL, 42, 39, 31, 194, 529, 4),
(5, '3013308060', 'VAIBHAV GUPTA', '6.483', '6.542', 46, 29, 29, 39, 45, 32, 220, 555, 4),
(6, '3013308301', 'AJIT KUMAR THAKUR', '0', '', 52, NULL, NULL, 43, 55, 53, 203, 601, 4),
(7, '3013308305', 'TAKESHWAR KASHYAP', '0', '', 36, NULL, NULL, 35, 40, 28, 139, 533, 4);

-- --------------------------------------------------------

--
-- Table structure for table `it_12_6`
--

CREATE TABLE IF NOT EXISTS `it_12_6` (
  `crn` int(11) DEFAULT NULL,
  `urn` varchar(10) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `spi` varchar(5) DEFAULT NULL,
  `cpi` varchar(5) DEFAULT NULL,
  `dbms` int(11) DEFAULT NULL,
  `itc` int(11) DEFAULT NULL,
  `iwt` int(11) DEFAULT NULL,
  `cmc` int(11) DEFAULT NULL,
  `cg` int(11) DEFAULT NULL,
  `mvr` int(11) DEFAULT NULL,
  `sum` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`urn`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_12_6`
--

INSERT INTO `it_12_6` (`crn`, `urn`, `sname`, `spi`, `cpi`, `dbms`, `itc`, `iwt`, `cmc`, `cg`, `mvr`, `sum`, `total`) VALUES
(1, '3013308001', 'AANCHAL ARORA', '9.218', '8.985', 55, 72, 48, 39, 65, 56, 335, 840),
(2, '3013308002', 'ABHISHEK BOSE', '9.218', '', 67, 70, 43, 49, 59, 50, 338, 824),
(3, '3013308003', 'ABHISHEK SONI', '7', '6.542', 33, 32, 34, 43, 56, 36, 234, 613),
(4, '3013308004', 'ABHISHEK VERMA', '0', '', NULL, 61, 42, 23, 55, 31, 212, 553),
(5, '3013308005', 'ADITYA JAIN', '7.156', '7.064', 41, 49, 34, 28, 46, 33, 231, 620),
(6, '3013308006', 'AKASH TAMRAKAR', '7.906', '7.656', 36, 48, 48, 41, 47, 37, 257, 692),
(7, '3013308007', 'AKHIL CHAUDHARI', '9.437', '8.460', 64, 73, 68, 52, 56, 60, 373, 846),
(8, '3013308008', 'AKTA AGRAWAL', '9.281', '8.380', 59, 66, 59, 36, 65, 62, 347, 833),
(9, '3013308009', 'ALOK KUMAR SINGH', '8.906', '8.589', 54, 76, 56, 37, 48, 52, 323, 827),
(10, '3013308010', 'AMBER GUPTA', '9.437', '9.015', 57, 62, 56, 42, 56, 66, 339, 850),
(11, '3013308011', 'ANKITA GARG', '8.781', '8.429', 53, 59, 54, 41, 54, 60, 321, 792),
(12, '3013308012', 'ANKUR CHOWDHURY', '0', '', 40, 56, 40, 21, 46, 48, 251, 649),
(13, '3013308013', 'ANKUR PODDAR', '8.656', '8.003', 42, 67, 38, 38, 57, 44, 286, 770),
(14, '3013308015', 'BHUMIKA MISHRA', '9', '8.665', 41, 73, 58, 45, 49, 60, 326, 816),
(15, '3013308016', 'CHANDRA PRAKASH', '0', '', 4, 11, NULL, NULL, 11, NULL, 26, 310),
(16, '3013308017', 'DEEPAK SAHU', '7.156', '6.938', 43, 56, 35, 28, 59, 42, 263, 634),
(17, '3013308018', 'KANCHAN NAIR', '9.593', '8.138', 59, 66, 70, 63, 60, 62, 380, 869),
(18, '3013308019', 'MANISH VINAYAK', '9.468', '8.454', 64, 69, 62, 55, 48, 63, 361, 860),
(19, '3013308020', 'MAYANK JAIN', '9.093', '8.254', 56, 68, 58, 41, 60, 47, 330, 819),
(20, '3013308021', 'MOHD SUYEB AHMED SIDDIQUI', '8', '7.555', 50, 47, 45, 55, 66, 57, 320, 706),
(21, '3013308022', 'NAVPREET G MATHEW', '8', '7.466', 51, 59, 41, 38, 57, 64, 310, 713),
(22, '3013308023', 'NITIN KUMAR', '9.531', '8.733', 61, 64, 64, 51, 69, 60, 369, 862),
(23, '3013308024', 'PINKESH PANDEY', '8.437', '8.125', 55, 66, 34, 23, 41, 45, 264, 760),
(24, '3013308025', 'PRATEEK DWIVEDI', '8.375', '7.932', 37, 53, 52, 45, 44, 50, 281, 744),
(25, '3013308026', 'PUJA PANDEY', '9.906', '9.727', 65, 78, 75, 58, 66, 64, 406, 917),
(26, '3013308027', 'RAKSHA JAIN', '10', '9.570', 66, 78, 73, 68, 65, 69, 419, 932),
(27, '3013308028', 'RANJOY SARKAR', '8.218', '7.723', 49, 62, 54, 48, 53, 48, 314, 726),
(28, '3013308029', 'REEMA NANWANI', '7.531', '7.285', 38, 28, 46, 43, 40, 48, 243, 663),
(29, '3013308030', 'RENU MISHRA', '9.406', '9.049', 56, 69, 45, 59, 67, 63, 359, 859),
(30, '3013308031', 'RINA SAO', '8.5', '7.926', 48, 58, 49, 48, 44, 38, 285, 782),
(31, '3013308032', 'ROMA GUPTA', '9.37', '8.524', 57, 74, 51, 49, 71, 60, 362, 867),
(32, '3013308033', 'RUCHI SHAIL', '9.562', '9.009', 56, 74, 64, 46, 51, 62, 353, 860),
(33, '3013308034', 'SACHIN SHARMA', '9', '8.165', 49, 73, 55, 52, 62, 57, 348, 817),
(34, '3013308035', 'SHANTANU PATEL', '8.625', '7.957', 45, 38, 59, 52, 51, 52, 297, 768),
(35, '3013308036', 'SHEKHAR ADIL', '6.343', '', 33, 39, 36, 32, 34, 49, 223, 550),
(36, '3013308037', 'SHILPI CHOPADA', '9.656', '9.512', 61, 70, 69, 59, 65, 61, 385, 892),
(37, '3013308038', 'SHREYA PRIYA', '8.687', '', 41, 56, 51, 41, 47, 56, 292, 772),
(38, '3013308040', 'SHWETA PRADHAN', '9.531', '8.073', 52, 68, 51, 53, 55, 69, 348, 842),
(39, '3013308041', 'SIDDHARTH PANDEY', '7.687', '', 37, 58, 44, 37, 55, 46, 277, 677),
(40, '3013308042', 'SMITA RATH', '9.531', '9.085', 63, 53, 58, 56, 62, 50, 342, 848),
(41, '3013308043', 'SMITA TIWARY', '9.656', '8.794', 53, 73, 63, 51, 64, 61, 365, 875),
(42, '3013308044', 'SONAL SHARMA', '8.312', '7.392', 48, 61, 48, 35, 52, 47, 291, 762),
(43, '3013308045', 'SOURABH PATLE', '9.093', '8.245', 53, 72, 56, 37, 48, 56, 322, 827),
(44, '3013308046', 'SUSHMITA SINGH', '8.968', '8.521', 52, 51, 52, 62, 60, 49, 326, 805),
(45, '3013308047', 'SWETA SHANDILYA', '8.625', '8.193', 46, 43, 51, 53, 58, 48, 299, 772),
(46, '3013308048', 'VIBHOOTI MARKANDEY', '8', '', 53, 63, 54, 43, 53, 51, 317, 718),
(47, '3013308049', 'AKASH SINGHAL', '7.718', '7.116', 50, 52, 38, 51, 49, 56, 296, 687),
(48, '3013308050', 'AASTHA CHANDEL', '8.656', '8.346', 42, 40, 50, 29, 64, 47, 272, 758),
(49, '3013308051', 'ARCHANA SAMAL', '7.5', '7.012', 37, 29, 40, 38, 41, 40, 225, 639),
(50, '3013308052', 'DEVVRAT TIWARI', '8.5', '7.812', 45, 50, 52, 60, 53, 47, 307, 760),
(51, '3013308054', 'GUNJAN MITTAL', '8.343', '7.230', 59, 53, 52, 36, 51, 56, 307, 739),
(52, '3013308055', 'RICHA JAIN', '9.156', '8.064', 41, 63, 54, 52, 45, 50, 305, 811),
(53, '3013308056', 'RAHUL SIRMOUR', '6.5', '6.521', 41, 51, 28, 37, 37, 30, 224, 579),
(54, '3013308059', 'SHREEYA DIXIT', '8.406', '7.447', 49, 42, 51, 50, 47, 49, 288, 742),
(55, '3013308060', 'VAIBHAV GUPTA', '0', '', 34, 23, 11, 38, 28, 28, 162, 459),
(56, '3013308061', 'YASH JAIN', '8.875', '7.822', 49, 67, 54, 55, 58, 48, 331, 807),
(57, '3013308063', 'MAYURI BANDHYOPADHYAY', '8.562', '7.917', 52, 67, 49, 53, 48, 49, 318, 769),
(59, '3013308065', 'NITESH JAIN', '8.718', '8.245', 54, 64, 46, 31, 50, 42, 287, 772),
(60, '3013308066', 'PREETI BALA THAKUR', '7.75', '', 54, 37, 45, 30, 53, 49, 268, 685),
(62, '3013308302', 'AMRITA KALASKAR', '8.187', '8.403', 58, 51, 54, 50, 53, 61, 327, 735),
(65, '3013308306', 'URVASHI DEWANGAN', '9.562', '8.244', 53, 65, 60, 45, 67, 64, 354, 862);

-- --------------------------------------------------------

--
-- Table structure for table `it_12_6s`
--

CREATE TABLE IF NOT EXISTS `it_12_6s` (
  `subject` varchar(10) NOT NULL,
  PRIMARY KEY (`subject`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_12_6s`
--

INSERT INTO `it_12_6s` (`subject`) VALUES
('cg'),
('cmc'),
('dbms'),
('itc'),
('iwt'),
('mvr');

-- --------------------------------------------------------

--
-- Table structure for table `it_12_6_back`
--

CREATE TABLE IF NOT EXISTS `it_12_6_back` (
  `crn` int(11) DEFAULT NULL,
  `urn` varchar(10) NOT NULL DEFAULT '',
  `sname` varchar(50) DEFAULT NULL,
  `spi` varchar(5) DEFAULT NULL,
  `cpi` varchar(5) DEFAULT NULL,
  `dbms` int(11) DEFAULT NULL,
  `itc` int(11) DEFAULT NULL,
  `iwt` int(11) DEFAULT NULL,
  `cmc` int(11) DEFAULT NULL,
  `cg` int(11) DEFAULT NULL,
  `mvr` int(11) DEFAULT NULL,
  `sum` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `attempt` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`urn`,`attempt`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_12_6_back`
--

INSERT INTO `it_12_6_back` (`crn`, `urn`, `sname`, `spi`, `cpi`, `dbms`, `itc`, `iwt`, `cmc`, `cg`, `mvr`, `sum`, `total`, `attempt`) VALUES
(1, '3013308004', 'ABHISHEK VERMA', '0', '', NULL, 61, 42, 51, 55, 31, 240, 581, 2),
(2, '3013308012', 'ANKUR CHOWDHURY', '0', '', 40, 56, 40, 21, 46, 48, 251, 649, 2),
(3, '3013308016', 'CHANDRA PRAKASH', '0', '', NULL, 34, 8, NULL, 8, 6, 56, 340, 2),
(4, '3013308060', 'VAIBHAV GUPTA', '5.843', '', 34, 36, 40, 38, 28, 28, 204, 501, 2),
(2, '3013308012', 'ANKUR CHOWDHURY', '0', '', 40, 56, 40, 21, 46, 48, 251, 649, 3),
(1, '3013308004', 'ABHISHEK VERMA', '7.125', '6.395', 52, 61, 42, 51, 55, 31, 292, 633, 3),
(3, '3013308016', 'CHANDRA PRAKASH', '5.75', '', 48, 34, 35, 42, 35, 38, 232, 516, 3);

-- --------------------------------------------------------

--
-- Table structure for table `it_12_7`
--

CREATE TABLE IF NOT EXISTS `it_12_7` (
  `crn` int(11) DEFAULT NULL,
  `urn` varchar(10) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `spi` varchar(5) DEFAULT NULL,
  `cpi` varchar(5) DEFAULT NULL,
  `se` int(11) DEFAULT NULL,
  `mis` int(11) DEFAULT NULL,
  `ecom` int(11) DEFAULT NULL,
  `ai` int(11) DEFAULT NULL,
  `cns` int(11) DEFAULT NULL,
  `sum` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`urn`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_12_7`
--

INSERT INTO `it_12_7` (`crn`, `urn`, `sname`, `spi`, `cpi`, `se`, `mis`, `ecom`, `ai`, `cns`, `sum`, `total`) VALUES
(1, '3013307061', 'SHALINI BANIK', '6.451', '6.788', 30, 25, 44, 41, 28, 168, 597),
(2, '3013307064', 'SWAPNIL SHARMA', '6.871', '6.788', 34, 30, 49, 34, 35, 182, 625),
(3, '3013308001', 'AANCHAL ARORA', '8.838', '6.788', 47, 48, 52, 61, 42, 250, 829),
(4, '3013308002', 'ABHISHEK BOSE', '8.709', '6.788', 51, 50, 54, 59, 49, 263, 800),
(5, '3013308003', 'ABHISHEK SONI', '7.580', '6.788', 36, 40, 51, 45, 28, 200, 690),
(6, '3013308004', 'ABHISHEK VERMA', '7.129', '6.788', 48, 51, 57, 46, 33, 235, 652),
(7, '3013308005', 'ADITYA JAIN', '7.387', '6.788', 41, 30, 49, 39, 28, 187, 661),
(8, '3013308006', 'AKASH TAMRAKAR', '8.225', '6.788', 48, 48, 53, 62, 35, 246, 750),
(9, '3013308007', 'AKHIL CHAUDHARI', '8.354', '6.788', 52, 41, 61, 59, 49, 262, 767),
(10, '3013308008', 'AKTA AGRAWAL', '9', '6.788', 45, 55, 63, 65, 44, 272, 824),
(11, '3013308009', 'ALOK KUMAR SINGH', '8.838', '6.788', 52, 49, 54, 56, 42, 253, 814),
(12, '3013308010', 'AMBER GUPTA', '9.032', '6.788', 54, 48, 58, 61, 47, 268, 836),
(13, '3013308011', 'ANKITA GARG', '8.612', '6.788', 56, 54, 62, 54, 45, 271, 777),
(14, '3013308012', 'ANKUR CHOWDHURY', '7.645', '6.788', 44, 33, 52, 52, 33, 214, 704),
(15, '3013308013', 'ANKUR PODDAR', '8.516', '6.788', 46, 42, 59, 56, 42, 245, 770),
(16, '3013308015', 'BHUMIKA MISHRA', '8.354', '6.788', 53, 45, 50, 52, 44, 244, 772),
(17, '3013308016', 'CHANDRA PRAKASH', '0', '6.788', 45, 32, 51, 38, 32, 198, 558),
(18, '3013308017', 'DEEPAK SAHU', '0', '6.788', 39, 40, NULL, 48, 40, 167, 615),
(19, '3013308018', 'KANCHAN NAIR', '8.806', '6.788', 54, 50, 58, 62, 48, 272, 807),
(20, '3013308019', 'MANISH VINAYAK', '8.935', '6.788', 58, 44, 59, 55, 44, 260, 826),
(21, '3013308020', 'MAYANK JAIN', '8.645', '6.788', 49, 36, 52, 64, 45, 246, 802),
(22, '3013308021', 'MOHD SUYEB AHMED SIDDIQUI', '7.741', '6.788', 52, 33, 60, 59, 33, 237, 708),
(23, '3013308022', 'NAVPREET G MATHEW', '8.096', '6.788', 52, 40, 58, 57, 43, 250, 726),
(24, '3013308023', 'NITIN KUMAR', '9.258', '6.788', 55, 53, 57, 68, 49, 282, 863),
(25, '3013308024', 'PINKESH PANDEY', '8.161', '6.788', 39, 28, 42, 53, 40, 202, 745),
(26, '3013308025', 'PRATEEK DWIVEDI', '8.225', '6.788', 44, 31, 52, 61, 39, 227, 737),
(27, '3013308026', 'PUJA PANDEY', '9.483', '6.788', 57, 59, 60, 70, 55, 301, 890),
(28, '3013308027', 'RAKSHA JAIN', '9.483', '6.788', 59, 58, 59, 62, 50, 288, 876),
(29, '3013308028', 'RANJOY SARKAR', '8.516', '6.788', 38, 47, 57, 60, 39, 241, 783),
(30, '3013308029', 'REEMA NANWANI', '7.935', '6.788', 48, 41, 56, 41, 33, 219, 724),
(31, '3013308030', 'RENU MISHRA', '9', '6.788', 57, 53, 57, 55, 42, 264, 822),
(32, '3013308031', 'RINA SAO', '8.290', '6.788', 51, 40, 52, 36, 38, 217, 752),
(33, '3013308032', 'ROMA GUPTA', '8.903', '6.788', 64, 46, 62, 48, 45, 265, 798),
(34, '3013308033', 'RUCHI SHAIL', '9.096', '6.788', 60, 58, 59, 49, 49, 275, 858),
(35, '3013308034', 'SACHIN SHARMA', '8.645', '6.788', 54, 43, 60, 40, 44, 241, 794),
(36, '3013308035', 'SHANTANU PATEL', '8.419', '6.788', 59, 46, 51, 49, 34, 239, 770),
(37, '3013308037', 'SHILPI CHOPADA', '9.354', '6.788', 61, 55, 56, 55, 52, 279, 862),
(38, '3013308038', 'SHREYA PRIYA', '8.387', '6.788', 56, 50, 54, 45, 31, 236, 763),
(39, '3013308040', 'SHWETA PRADHAN', '8.774', '6.788', 56, 56, 56, 47, 28, 243, 795),
(40, '3013308041', 'SIDDHARTH PANDEY', '7.838', '6.788', 55, 50, 55, 48, 33, 241, 706),
(41, '3013308042', 'SMITA RATH', '9.064', '6.788', 60, 53, 58, 58, 51, 280, 840),
(42, '3013308043', 'SMITA TIWARY', '9.290', '6.788', 62, 57, 59, 62, 45, 285, 836),
(43, '3013308044', 'SONAL SHARMA', '8.516', '6.788', 53, 48, 57, 56, 39, 253, 792),
(44, '3013308045', 'SOURABH PATLE', '8.967', '6.788', 52, 47, 58, 62, 34, 253, 828),
(45, '3013308046', 'SUSHMITA SINGH', '8.774', '6.788', 46, 51, 62, 66, 31, 256, 803),
(46, '3013308047', 'SWETA SHANDILYA', '8.935', '6.788', 51, 49, 61, 65, 41, 267, 813),
(47, '3013308048', 'VIBHOOTI MARKANDEY', '8.322', '6.788', 52, 35, 55, 61, 34, 237, 750),
(48, '3013308049', 'AKASH SINGHAL', '8.387', '6.788', 42, 35, 56, 64, 33, 230, 760),
(49, '3013308050', 'AASTHA CHANDEL', '8.451', '6.788', 49, 42, 61, 57, 33, 242, 780),
(50, '3013308051', 'ARCHANA SAMAL', '8.161', '6.788', 52, 40, 50, 47, 37, 226, 734),
(51, '3013308052', 'DEVVRAT TIWARI', '7.838', '6.788', 51, 46, 61, 38, 36, 232, 727),
(52, '3013308054', 'GUNJAN MITTAL', '7.709', '6.788', 54, 33, 49, 35, 31, 202, 705),
(53, '3013308055', 'RICHA JAIN', '8.612', '6.788', 52, 42, 60, 43, 33, 230, 789),
(54, '3013308056', 'RAHUL SIRMOUR', '7.419', '6.788', 45, 29, 52, 36, 28, 190, 674),
(55, '3013308059', 'SHREEYA DIXIT', '8.451', '6.788', 49, 47, 45, 48, 39, 228, 770),
(56, '3013308061', 'YASH JAIN', '7.838', '6.788', 47, 51, 47, 50, 29, 224, 707),
(57, '3013308063', 'MAYURI BANDHYOPADHYAY', '8.645', '6.788', 58, 54, 56, 54, 41, 263, 797),
(58, '3013308065', 'NITESH JAIN', '7.516', '6.788', 45, 33, 40, 34, 37, 189, 686),
(59, '3013308066', 'PREETI BALA THAKUR', '7.935', '6.788', 47, 37, 43, 28, 31, 186, 721),
(60, '3013308302', 'AMRITA KALASKAR', '8.483', '6.788', 59, 49, 48, 46, 39, 241, 771),
(60, '3013308306', 'URVASHI DEWANGAN', '8.903', '6.788', 54, 51, 58, 48, 46, 257, 815),
(60, '3013307003', 'ABHISHEK KUMAR KARAN', '0', '6.788', NULL, 42, 29, 2, 5, 78, 415),
(60, '3013306301', 'KHOMNATH', '6.838', '6.788', 31, 31, 43, 40, 35, 180, 625),
(60, '3013306304', 'SHEKHAR CHANDRA', '0', '6.788', 36, 14, 18, 37, 28, 133, 547),
(61, '3013307053', 'AEHTESHAM UL HASAN KHAN', '0', '6.788', 36, 19, NULL, NULL, 23, 78, 472);

-- --------------------------------------------------------

--
-- Table structure for table `it_12_7s`
--

CREATE TABLE IF NOT EXISTS `it_12_7s` (
  `subject` varchar(10) NOT NULL,
  PRIMARY KEY (`subject`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_12_7s`
--

INSERT INTO `it_12_7s` (`subject`) VALUES
('ai'),
('cns'),
('ecom'),
('mis'),
('se');

-- --------------------------------------------------------

--
-- Table structure for table `it_12_7_back`
--

CREATE TABLE IF NOT EXISTS `it_12_7_back` (
  `crn` int(11) DEFAULT NULL,
  `urn` varchar(10) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `spi` varchar(5) DEFAULT NULL,
  `cpi` varchar(5) DEFAULT NULL,
  `se` int(11) DEFAULT NULL,
  `mis` int(11) DEFAULT NULL,
  `ecom` int(11) DEFAULT NULL,
  `ai` int(11) DEFAULT NULL,
  `cns` int(11) DEFAULT NULL,
  `sum` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `attempt` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`urn`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_12_7_back`
--

INSERT INTO `it_12_7_back` (`crn`, `urn`, `sname`, `spi`, `cpi`, `se`, `mis`, `ecom`, `ai`, `cns`, `sum`, `total`, `attempt`) VALUES
(1, '3013308016', 'CHANDRA PRAKASH', '6.48', '6.48', 45, 32, 51, 38, 32, 198, 576, 0),
(2, '3013308017', 'DEEPAK SAHU', '7.29', '6.99', 39, 40, 44, 48, 40, 211, 659, 0);

-- --------------------------------------------------------

--
-- Table structure for table `it_12_8`
--

CREATE TABLE IF NOT EXISTS `it_12_8` (
  `crn` int(11) DEFAULT NULL,
  `urn` varchar(10) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `spi` varchar(5) DEFAULT NULL,
  `cpi` varchar(5) DEFAULT NULL,
  `dmdw` int(11) DEFAULT NULL,
  `erp` int(11) DEFAULT NULL,
  `unix` int(11) DEFAULT NULL,
  `ccl` int(11) DEFAULT NULL,
  `desis` int(11) DEFAULT NULL,
  `sum` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`urn`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_12_8`
--

INSERT INTO `it_12_8` (`crn`, `urn`, `sname`, `spi`, `cpi`, `dmdw`, `erp`, `unix`, `ccl`, `desis`, `sum`, `total`) VALUES
(1, '3013306038', 'SAJAL AGRAWAL', '7.218', '6.599', 47, 40, 43, 46, 37, 213, 659),
(2, '3013306301', 'KHOMNATH', '7.531', '6.762', 41, 45, 37, 66, 34, 223, 696),
(3, '3013306304', 'SHEKHAR CHANDRA', '7.281', '', 40, 35, 43, 50, 28, 196, 663),
(4, '3013307061', 'SHALINI BANIK', '7.531', '6.893', 49, 47, 38, 60, 31, 225, 686),
(5, '3013307064', 'SWAPNIL SHARMA', '7.25', '6.444', 41, 48, 47, 42, 28, 206, 663),
(6, '3013308001', 'AANCHAL ARORA', '8.343', '8.867', 46, 40, 60, 51, 41, 238, 762),
(7, '3013308002', 'ABHISHEK BOSE', '9.031', '8.112', 61, 58, 64, 58, 40, 281, 822),
(8, '3013308003', 'ABHISHEK SONI', '7.937', '6.882', 53, 44, 52, 48, 39, 236, 720),
(9, '3013308004', 'ABHISHEK VERMA', '8.156', '', 59, 43, 45, 51, 50, 248, 752),
(10, '3013308005', 'ADITYA JAIN', '7.437', '7.161', 56, 41, 50, 30, 29, 206, 685),
(11, '3013308006', 'AKASH TAMRAKAR', '8.5', '7.854', 56, 44, 66, 52, 52, 270, 789),
(12, '3013308007', 'AKHIL CHAUDHARI', '8.875', '8.504', 58, 68, 70, 64, 55, 315, 811),
(13, '3013308008', 'AKTA AGRAWAL', '9.187', '8.579', 70, 61, 61, 51, 55, 298, 843),
(14, '3013308009', 'ALOK KUMAR SINGH', '8.875', '8.663', 47, 63, 60, 57, 53, 280, 818),
(15, '3013308010', 'AMBER GUPTA', '9.468', '9.081', 64, 57, 75, 67, 52, 315, 885),
(16, '3013308011', 'ANKITA GARG', '8.687', '8.491', 61, 65, 63, 60, 52, 301, 796),
(17, '3013308012', 'ANKUR CHOWDHURY', '8.281', '7.323', 65, 44, 53, 56, 43, 261, 738),
(18, '3013308013', 'ANKUR PODDAR', '8.531', '8.148', 59, 55, 63, 42, 51, 270, 796),
(19, '3013308015', 'BHUMIKA MISHRA', '9.093', '8.683', 57, 67, 76, 52, 45, 297, 840),
(20, '3013308016', 'CHANDRA PRAKASH', '7.281', '', 50, 45, 40, 47, 40, 222, 671),
(21, '3013308017', 'DEEPAK SAHU', '8.062', '', 56, 44, 47, 53, 47, 247, 730),
(22, '3013308018', 'KANCHAN NAIR', '9.187', '8.378', 74, 65, 77, 68, 55, 339, 843),
(23, '3013308019', 'MANISH VINAYAK', '9.468', '8.663', 61, 67, 76, 58, 57, 319, 868),
(24, '3013308020', 'MAYANK JAIN', '8.906', '8.400', 68, 59, 58, 54, 47, 286, 817),
(25, '3013308021', 'MOHD SUYEB AHMED SIDDIQUI', '8.218', '7.674', 66, 53, 73, 51, 38, 281, 765),
(26, '3013308022', 'NAVPREET G MATHEW', '8.031', '7.632', 64, 56, 39, 53, 38, 250, 730),
(27, '3013308023', 'NITIN KUMAR', '9.375', '8.896', 69, 58, 77, 64, 56, 324, 885),
(28, '3013308024', 'PINKESH PANDEY', '8.687', '8.210', 57, 40, 55, 50, 47, 249, 787),
(29, '3013308025', 'PRATEEK DWIVEDI', '7.843', '7.960', 47, 46, 59, 45, 39, 236, 716),
(30, '3013308026', 'PUJA PANDEY', '9.718', '9.692', 68, 72, 75, 73, 66, 354, 909),
(31, '3013308027', 'RAKSHA JAIN', '9.875', '9.601', 64, 69, 77, 67, 56, 333, 916),
(32, '3013308028', 'RANJOY SARKAR', '8.437', '7.933', 54, 57, 53, 49, 46, 259, 774),
(33, '3013308029', 'REEMA NANWANI', '8.187', '7.502', 52, 55, 65, 64, 43, 279, 754),
(34, '3013308030', 'RENU MISHRA', '9.5', '9.106', 69, 66, 66, 51, 61, 313, 865),
(35, '3013308031', 'RINA SAO', '8.562', '8.066', 47, 43, 51, 38, 48, 227, 791),
(36, '3013308032', 'ROMA GUPTA', '9.468', '8.710', 65, 63, 67, 62, 52, 309, 876),
(37, '3013308033', 'RUCHI SHAIL', '9.625', '9.108', 65, 70, 69, 58, 48, 310, 896),
(38, '3013308034', 'SACHIN SHARMA', '8.312', '8.252', 51, 54, 54, 41, 41, 241, 738),
(39, '3013308035', 'SHANTANU PATEL', '8.843', '8.146', 64, 58, 57, 52, 34, 265, 808),
(40, '3013308036', 'SHEKHAR ', '7.375', '', 53, 38, 35, 49, 31, 206, 670),
(41, '3013308037', 'SHILPI CHOPADA', '9.5', '9.488', 67, 63, 68, 59, 43, 300, 888),
(42, '3013308038', 'SHREYA PRIYA', '9.062', '8.099', 69, 70, 46, 60, 44, 289, 807),
(43, '3013308040', 'SHWETA PRADHAN', '8.656', '8.252', 67, 63, 44, 55, 41, 270, 795),
(44, '3013308041', 'SIDDHARTH PANDEY', '7.968', '7..28', 57, 56, 39, 53, 38, 243, 728),
(45, '3013308042', 'SMITA RATH', '8.937', '9.061', 59, 63, 66, 57, 47, 292, 833),
(46, '3013308043', 'SMITA TIWARY', '9.375', '8.944', 68, 62, 67, 57, 52, 306, 855),
(47, '3013308044', 'SONAL SHARMA', '8.656', '7.725', 64, 54, 72, 50, 43, 283, 793),
(48, '3013308045', 'SOURABH PATLE', '8.968', '8.446', 65, 62, 61, 50, 42, 280, 830),
(49, '3013308046', 'SUSHMITA SINGH', '8.781', '8.592', 65, 58, 56, 70, 38, 287, 807),
(50, '3013308047', 'SWETA SHANDILYA', '9.031', '8.413', 63, 56, 60, 62, 48, 289, 812),
(51, '3013308048', 'VIBHOOTI MARKANDEY', '8.531', '7.561', 62, 65, 56, 60, 43, 286, 780),
(52, '3013308049', 'AKASH SINGHAL', '7.812', '7.389', 57, 53, 46, 48, 33, 237, 706),
(53, '3013308050', 'AASTHA CHANDEL', '8.531', '8.387', 60, 61, 53, 51, 40, 265, 765),
(54, '3013308051', 'ARCHANA SAMAL', '7.875', '7.292', 56, 54, 48, 48, 36, 242, 721),
(55, '3013308052', 'DEVVRAT TIWARI', '8.281', '7.882', 65, 60, 54, 59, 41, 279, 746),
(56, '3013308054', 'GUNJAN MITTAL', '7.875', '7.387', 62, 49, 56, 55, 29, 251, 731),
(57, '3013308055', 'RICHA JAIN', '9.218', '8.303', 60, 62, 50, 72, 31, 275, 842),
(58, '3013308056', 'RAHUL SIRMOUR', '7.593', '6.796', 40, 58, 45, 45, 28, 216, 692),
(59, '3013308059', 'SHREEYA DIXIT', '8.437', '7.725', 51, 59, 52, 63, 44, 269, 759),
(60, '3013308060', 'VAIBHAV GUPTA', '7.281', '', 40, 40, 44, 49, 28, 201, 668),
(60, '3013308061', 'YASH JAIN', '7.875', '7.831', 53, 55, 50, 56, 29, 243, 721),
(61, '3013308063', 'MAYURI BANDHYOPADHYAY', '8.375', '8.081', 55, 61, 55, 56, 37, 264, 763),
(62, '3013308065', 'NITESH JAIN', '8.125', '8.128', 52, 48, 49, 56, 34, 239, 734),
(63, '3013308066', 'PREETI BALA THAKUR', '8.312', '7.654', 45, 47, 47, 55, 32, 226, 763),
(64, '3013308302', 'AMRITA KALASKAR', '8.375', '7.938', 54, 58, 48, 53, 41, 254, 758),
(65, '3013308306', 'URVASHI DEWANGAN', '9.218', '8.510', 55, 58, 54, 66, 43, 276, 840);

-- --------------------------------------------------------

--
-- Table structure for table `it_12_8s`
--

CREATE TABLE IF NOT EXISTS `it_12_8s` (
  `subject` varchar(10) NOT NULL,
  PRIMARY KEY (`subject`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_12_8s`
--

INSERT INTO `it_12_8s` (`subject`) VALUES
('ccl'),
('desis'),
('dmdw'),
('erp'),
('unix');

-- --------------------------------------------------------

--
-- Table structure for table `it_12_teacher`
--

CREATE TABLE IF NOT EXISTS `it_12_teacher` (
  `name` varchar(50) DEFAULT NULL,
  `subject` varchar(10) NOT NULL,
  `sub_ff` varchar(75) DEFAULT NULL,
  `sem` int(11) NOT NULL,
  PRIMARY KEY (`subject`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_12_teacher`
--

INSERT INTO `it_12_teacher` (`name`, `subject`, `sub_ff`, `sem`) VALUES
('', 'comm', 'Communication Skills', 1),
('', 'chem', 'Applied Chemistry', 1),
('', 'p1', 'Applied Physics-I', 1),
('', 'm1', 'Applied Mathematics-I', 1),
('', 'bee', 'Basic Electrical Engg.', 1),
('', 'em', 'Engg. Mechanics', 1),
('K.N. Mishra', 'm3', 'Applied Mathematics-III', 3),
('Rajeev Pathak', 'be', 'Basic Electronics', 3),
('Kar', 'nas', 'Network Analysis & Synthesis', 3),
('Namrata Soni', 'foit', 'Fundamentals of IT', 3),
('Amrendra Kumar Singh', 'c', 'Problem solving & Logic Building in C ', 3),
('K.Subhashini Spurjeon', 'deld', 'Digital Electronics & Logic Design', 3),
('', 'eg', 'Engg. Graphics', 2),
('', 'eco', 'Environment & Ecology', 2),
('', 'p2', 'Applied Physics-II', 2),
('', 'm2', 'Applied Mathematics-II', 2),
('', 'bme', 'Basic Mechanical Engg.', 2),
('', 'bce', 'Basic Civil Engg.', 2),
('Shishir Sarkar', 'tscn', 'Telecom Switching & Computer N/Ws', 5),
('Rajeev Pathak', 'pcs', 'Principles of Comm. System', 5),
('M.K. Kowar', 'mp', 'Microprocessor & Interfaces', 5),
('Kauleshwar Prasad', 'coa', 'Computer Organisation & Architecture', 5),
('Rajkumar Singh', 'os', 'Operating System', 5),
('Sarang Pitale', 'java', 'Introduction to Java', 5),
('K.N.Mishra', 'cm', 'Computational Mathematics', 4),
('Nirmal Singh', 'dm', 'Discrete Mathematics', 4),
('K.Subhashini Spurjeon', 'ds', 'Data Structures', 4),
('R.M.Poddar', 'aec', 'Analog Electronic Ckts.', 4),
('Sarang Pitale', 'cpp', 'Object Oriented Programing using c++', 4),
('Abhishek Chakraburthy', 'pom', 'Principles of Management', 4),
('Sarang Pitale', 'se', 'Software Engg.', 7),
('Toshant Kumar', 'mis', 'Management Information System', 7),
('Rajeev Pathak', 'ecom', 'E-Commerce', 7),
('Arpana Rawal', 'ai', 'Artficial Intelligence', 7),
('Amrendra Kumar Singh', 'cns', 'Cryptography & N/W Security', 7),
('Arpana Rawal', 'dmdw', 'Data Mining & Warehousing', 8),
('Toshant Kumar', 'erp', 'Enterprise Resource Planning', 8),
('Babita Verma', 'unix', 'Design of UNIX OS', 8),
('Asad Siddhique', 'ccl', 'Cyber Crime & Laws', 8),
('Rajeev Pathak', 'desis', 'Decision Support & Executive Info.System', 8),
('Babita Verma', 'dbms', 'Database Management System', 6),
('Toshant Kumar', 'itc', 'Information Theory & Coding', 6),
('Sarang Pitale', 'iwt', 'Internet & Web Technologies', 6),
('Rajeev Pathak', 'cmc', 'Cellular Mobile Communication', 6),
('Amrendra Kumar Singh', 'cg', 'Computer Graphics', 6),
('Vikas Pandey', 'mvr', 'Multimedia & Virtual Reality', 6);

-- --------------------------------------------------------

--
-- Table structure for table `it_13_8`
--

CREATE TABLE IF NOT EXISTS `it_13_8` (
  `crn` int(11) DEFAULT NULL,
  `urn` varchar(10) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `spi` varchar(5) DEFAULT NULL,
  `cpi` varchar(5) DEFAULT NULL,
  `dmdw` int(11) DEFAULT NULL,
  `erp` int(11) DEFAULT NULL,
  `unixos` int(11) DEFAULT NULL,
  `ccl` int(11) DEFAULT NULL,
  `desis` int(11) DEFAULT NULL,
  `sum` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`urn`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_13_8`
--

INSERT INTO `it_13_8` (`crn`, `urn`, `sname`, `spi`, `cpi`, `dmdw`, `erp`, `unixos`, `ccl`, `desis`, `sum`, `total`) VALUES
(1, '3013309001', 'ABHAY MISHRA', '9.093', '8.296', 51, 58, 42, 52, 42, 245, 816),
(2, '3013309003', 'ANISH KUMAR BAGHEL', '8.5', '6.816', 48, 51, 38, 44, 44, 225, 773),
(3, '3013309004', 'AKIT KHEDULKAR', '8.375', '6.809', 50, 51, 36, 55, 49, 241, 754),
(4, '3013309005', 'ANSHUL AGRAWAL', '7.625', '6.732', 34, 43, 39, 43, 42, 201, 705),
(5, '3013309008', 'DIVYA GHORE', '9.218', '7.747', 55, 57, 49, 64, 61, 286, 848),
(6, '3013309009', 'HIMANSHU PARWAT', '8.062', 'NULL', 51, 50, 30, 46, 46, 223, 726),
(7, '3013309010', 'MAHARSHIKA ', '9.468', '8.026', 55, 53, 52, 61, 65, 286, 862),
(8, '3013309011', 'MUKUND MOHAN PATEL', '8.375', 'NULL', 48, 36, 48, 58, 49, 239, 745),
(9, '3013309013', 'NIKHAR AGRAWAL', '7.781', 'NULL', 50, 42, 37, 48, 40, 217, 711),
(10, '3013309014', 'NIKITA AGRAWAL', '9.093', '8.232', 53, 50, 44, 58, 54, 259, 818),
(11, '3013309015', 'PADMAHA VATSA', '7.875', 'NULL', 44, 47, 32, 58, 48, 229, 715),
(13, '3013309018', 'PREMENDRA KUMAR GAVEL', '8.5', '7.420', 46, 51, 48, 55, 52, 252, 783),
(14, '3013309020', 'RITU VINCHUKAR', '9.062', '8.991', 48, 46, 41, 62, 59, 256, 827),
(17, '3013309024', 'SHREYA PILLAI', '8.937', '8.511', 48, 46, 49, 58, 54, 255, 824),
(18, '3013309026', 'SRISHTI MONGA', '9.437', '9.073', 44, 54, 53, 65, 66, 282, 846),
(19, '3013309027', 'SUMIT SONI', '8.812', '8.533', 45, 51, 46, 59, 48, 249, 805),
(20, '3013309028', 'UTKARSHA KUMAR', '8.281', '7.825', 41, 53, 41, 60, 53, 248, 757),
(21, '3013309029', 'VIBHA GANJIR', '9.187', '8.588', 43, 53, 43, 64, 61, 264, 831),
(22, '3013309030', 'VIJAYENDRA MAHILANE', '8.218', '6.798', 42, 46, 33, 52, 44, 217, 745),
(23, '3013309031', 'VIRENDRA KUMAR', '8.437', '7.544', 44, 53, 59, 41, 51, 248, 779),
(25, '3013309034', 'MOHD. AMIR HASHMI', '9.062', '8.163', 44, 48, 53, 58, 54, 257, 833),
(26, '3013309035', 'PRAVEEN KUMAR DEWANGAN', '8.875', '7.831', 46, 48, 56, 56, 53, 259, 800),
(27, '3013309036', 'JYOTI GUPTA', '7.718', 'NULL', 38, 35, 50, 42, 40, 205, 701),
(28, '3013309037', 'SHRUTI SHARMA', '8.968', '7.451', 40, 53, 52, 52, 60, 257, 809),
(29, '3013309038', 'AKASH MITTAL', '8.937', '8.334', 44, 52, 57, 50, 51, 254, 818),
(30, '3013309039', 'AMIT KUMAR', '8.062', '7.329', 31, 40, 52, 52, 34, 209, 746),
(31, '3013309040', 'ANIL KUMAR', '7.968', '7.132', 36, 42, 42, 39, 34, 193, 726),
(32, '3013309041', 'ANKIT SINGH', '8.687', '8.208', 42, 50, 52, 56, 36, 236, 791),
(33, '3013309043', 'BHAWESH AGRAWAL', '8.937', '7.484', 48, 49, 57, 50, 58, 262, 833),
(34, '3013309044', 'BHUPESH AGRAWAL', '8.093', '7.900', 34, 51, 34, 49, 46, 214, 733),
(35, '3013309045', 'KRITIKA CHOUHAN', '9.062', '8.610', 43, 54, 45, 61, 57, 260, 815),
(36, '3013309046', 'MADHUMITA CHKRABARTY', '8.562', '8.108', 42, 46, 35, 47, 51, 221, 779),
(37, '3013309047', 'NISHA SAHU', '9.062', '9.062', 47, 52, 53, 62, 58, 272, 845),
(38, '3013309048', 'PRATYUSH KUMAR JHA', '8.687', '7.964', 41, 48, 35, 51, 44, 219, 791),
(39, '3013309049', 'RAHUL KEDIA', '8.937', '8.544', 45, 50, 44, 59, 60, 258, 800),
(40, '3013309050', 'RAVI KUMAR TRIPATHI', '8.218', '7.508', 41, 50, 41, 51, 52, 235, 767),
(41, '3013309053', 'SHRINI JAISWAL', '8.562', '8.123', 53, 53, 46, 57, 46, 255, 779),
(42, '3013309055', 'VANI KHANNA', '8.187', '7.781', 49, 45, 42, 41, 36, 213, 751),
(43, '3013309056', 'YASHI JAIN', '9.031', '8.615', 54, 49, 47, 57, 58, 265, 819),
(44, '3013309057', 'YOGESH NATH PANDEY', '7.906', 'NULL', 36, 42, 28, 48, 43, 197, 731),
(46, '3013309059', 'NIKITA AHUJA', '8.343', 'NULL', 43, 50, 40, 59, 43, 235, 769),
(47, '3013309301', 'AKANKSHA SATPATHY', '8.75', '7.737', 49, 50, 46, 62, 49, 256, 822),
(48, '3013309302', 'AMIT GIRI', '8.812', '8.159', 51, 47, 41, 56, 49, 244, 797),
(49, '3013309303', 'PRIYANKA SINGH', '9.093', '8.412', 57, 50, 49, 59, 61, 276, 831),
(50, '3013309304', 'RESHMA MAURYA', '9.093', '8.680', 56, 47, 48, 58, 59, 268, 838),
(51, '3013309305', 'ANISHA KHANDELWAL', '8.75', 'NULL', 46, 43, 43, 56, 53, 241, 783),
(52, '3013307053', 'AEHTESHAM UL HUSAN KHAN', '7.437', 'NULL', 39, 47, 51, 31, 45, 213, 691),
(53, '3013308064', 'DHRU RASTOGI', '8.937', '7.292', 45, 52, 58, 50, 50, 255, 819),
(54, '3013308304', 'SUNAYNA BABER', '8.875', '7.314', 51, 51, 51, 48, 54, 255, 813);

-- --------------------------------------------------------

--
-- Table structure for table `it_13_8s`
--

CREATE TABLE IF NOT EXISTS `it_13_8s` (
  `subject` varchar(10) NOT NULL,
  PRIMARY KEY (`subject`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_13_8s`
--

INSERT INTO `it_13_8s` (`subject`) VALUES
('ccl'),
('desis'),
('dmdw'),
('erp'),
('unixos');

-- --------------------------------------------------------

--
-- Table structure for table `it_13_teacher`
--

CREATE TABLE IF NOT EXISTS `it_13_teacher` (
  `name` varchar(50) DEFAULT NULL,
  `subject` varchar(10) NOT NULL,
  `sub_ff` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`subject`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_13_teacher`
--

INSERT INTO `it_13_teacher` (`name`, `subject`, `sub_ff`) VALUES
('Arpana Rawal', 'dmdw', 'Data Mining & warehousing'),
('Toshant Kumar', 'erp', 'Enterprise Resource Planning'),
('Babita Verma', 'unixos', 'Design of Unix'),
('Amrendra Kumar Singh', 'ccl', 'Ciber Crime Laws'),
('Mukesh Chandrakar', 'desis', 'Decision Support System');

-- --------------------------------------------------------

--
-- Table structure for table `it_14_5`
--

CREATE TABLE IF NOT EXISTS `it_14_5` (
  `crn` int(11) DEFAULT NULL,
  `urn` varchar(10) DEFAULT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `spi` varchar(5) DEFAULT NULL,
  `cpi` varchar(5) DEFAULT NULL,
  `tscn` int(11) DEFAULT NULL,
  `pcs` int(11) DEFAULT NULL,
  `mp` int(11) DEFAULT NULL,
  `coa` int(11) DEFAULT NULL,
  `os` int(11) DEFAULT NULL,
  `java` int(11) DEFAULT NULL,
  `sum` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_14_5`
--

INSERT INTO `it_14_5` (`crn`, `urn`, `sname`, `spi`, `cpi`, `tscn`, `pcs`, `mp`, `coa`, `os`, `java`, `sum`, `total`) VALUES
(1, '3013310002', 'ADITI KHALATKAR', '8.580', '8.973', 53, 41, 33, 42, 40, 41, 250, 756),
(1, '3013310002', 'ADITI KHALATKAR', '8.580', '8.973', 53, 41, 33, 42, 40, 41, 250, 756),
(3, '3013310004', 'ANUSHREE PANDEY', '8.483', '8.431', 46, 59, 35, 38, 28, 40, 246, 754),
(4, '3013310005', 'ASHISH KUMAR SINHA', '7.806', '7.064', 56, 52, 32, 38, 36, 29, 243, 671),
(5, '3013310006', 'AVIRAL SHRIVASTAVA', '8.741', '8.862', 56, 57, 35, 45, 46, 45, 284, 797),
(6, '3013310007', 'AYUSH RANJAN', '8.064', '7.866', 51, 49, 33, 42, 42, 28, 245, 704),
(6, '3013310007', 'AYUSH RANJAN', '8.064', '7.866', 51, 49, 33, 42, 42, 28, 245, 704),
(6, '3013310007', 'AYUSH RANJAN', '8.064', '7.866', 51, 49, 33, 42, 42, 28, 245, 704),
(9, '3013310011', 'DIVYA DALMIA', '8.903', '9.099', 53, 59, 43, 46, 49, 56, 306, 805),
(10, '3013310013', 'JASMINE KAUR', '8.741', '8.774', 54, 50, 41, 36, 38, 47, 266, 769),
(11, '3013310014', 'KRITI VERMA', '8.838', '8.698', 60, 66, 39, 37, 54, 37, 293, 791),
(11, '3013310014', 'KRITI VERMA', '8.838', '8.698', 60, 66, 39, 37, 54, 37, 293, 791),
(13, '3013310016', 'NEHA BUNDELA', '7.193', '7.553', 55, 40, 30, 31, 42, 39, 237, 616),
(14, '3013310017', 'NEHA SINGH', '7.967', '7.496', 58, 36, 41, 48, 44, 28, 255, 708),
(15, '3013310018', 'NITI PUNGLIA', '8.935', '9.019', 59, 48, 48, 53, 53, 48, 309, 812),
(15, '3013310018', 'NITI PUNGLIA', '8.935', '9.019', 59, 48, 48, 53, 53, 48, 309, 812),
(17, '3013310020', 'PIYALI BHATTACHARYA', '8.741', '8.557', 55, 42, 47, 41, 45, 45, 275, 787),
(18, '3013310021', 'POOJA SATISH', '8.258', '8.286', 45, 40, 35, 37, 37, 49, 243, 747),
(19, '3013310023', 'PREETI SAHU', '8.354', '8.164', 45, 44, 35, 32, 49, 45, 250, 743),
(20, '3013310024', 'PRIYAL GOYAL', '8.903', '9.068', 58, 47, 55, 41, 37, 55, 293, 801),
(21, '3013310025', 'PRIYANKA KHANDELWAL', '8.806', '8.858', 47, 52, 64, 35, 42, 61, 301, 790),
(22, '3013310026', 'RINKU SADAWARTI', '8.419', '7.973', 61, 43, 40, 41, 44, 28, 257, 741),
(22, '3013310026', 'RINKU SADAWARTI', '8.419', '7.973', 61, 43, 40, 41, 44, 28, 257, 741),
(24, '3013310028', 'SAKSHEE JAIN', '8.709', '8.664', 48, 47, 49, 43, 47, 54, 288, 787),
(25, '3013310029', 'SHIKHA JHA', '8.774', '8.530', 55, 41, 48, 44, 36, 57, 281, 789),
(26, '3013310030', 'SHIKSHA PRAKASH', '8.193', '7.629', 58, 34, 43, 43, 43, 40, 261, 728),
(27, '3013310032', 'SHRUTI CHAKRABARTI', '8.967', '8.912', 62, 41, 49, 45, 49, 60, 306, 816),
(28, '3013310033', 'SPARDHA GUPTA', '8.516', '8.259', 42, 41, 42, 36, 38, 41, 240, 737),
(29, '3013310034', 'SURBHI SOMANI', '8.774', '8.293', 60, 42, 45, 52, 45, 40, 284, 779),
(30, '3013310035', 'URVASHI SONI', '8.774', '9.030', 59, 48, 50, 35, 40, 56, 288, 793),
(31, '3013310039', 'NAZIA FARHAT', '7.871', '7.442', 52, 42, 50, 38, 36, 48, 266, 683),
(32, '3013310040', 'SHANU GAUR', '7.838', '7.332', 57, 30, 46, 40, 33, 55, 261, 690),
(32, '3013310040', 'SHANU GAUR', '7.838', '7.332', 57, 30, 46, 40, 33, 55, 261, 690),
(32, '3013310040', 'SHANU GAUR', '7.838', '7.332', 57, 30, 46, 40, 33, 55, 261, 690),
(35, '3013310043', 'SURABHI PAREKH', '8.419', '7.988', 44, 44, 54, 41, 47, 35, 265, 736),
(36, '3013310045', 'POORAB PRIYA CHANDRAKAR', '8.064', '7.580', 37, 37, 40, 23, 34, 48, 219, 683),
(36, '3013310045', 'POORAB PRIYA CHANDRAKAR', '8.064', '7.580', 37, 37, 40, 23, 34, 48, 219, 683),
(38, '3013310049', 'ANKIT KUMAR', '8.709', '8.599', 50, 45, 52, 28, 34, 61, 270, 762),
(38, '3013310049', 'ANKIT KUMAR', '8.709', '8.599', 50, 45, 52, 28, 34, 61, 270, 762),
(40, '3013310052', 'SHUBHAJIT BAGCHI', '8.645', '8.358', 63, 37, 57, 38, 44, 44, 283, 769),
(41, '3013310053', 'VINEETA YADAV', '7.580', '7.286', 48, 30, 36, 33, 45, 50, 242, 657),
(41, '3013310053', 'VINEETA YADAV', '7.580', '7.286', 48, 30, 36, 33, 45, 50, 242, 657),
(43, '3013310055', 'KHUSHBU KISPOTTA', '7.774', '7.660', 44, 28, 44, 23, 43, 43, 225, 666),
(44, '3013310057', 'YOGESH KUMAR', '7.483', '7.141', 43, 47, 46, 33, 41, 53, 263, 648),
(45, '3013310058', 'MEHTA PREETI AVINASH', '7.709', '7.675', 37, 28, 40, 24, 37, 52, 218, 675),
(45, '3013310058', 'MEHTA PREETI AVINASH', '7.709', '7.675', 37, 28, 40, 24, 37, 52, 218, 675),
(45, '3013310058', 'MEHTA PREETI AVINASH', '7.709', '7.675', 37, 28, 40, 24, 37, 52, 218, 675),
(45, '3013310058', 'MEHTA PREETI AVINASH', '7.709', '7.675', 37, 28, 40, 24, 37, 52, 218, 675),
(45, '3013310058', 'MEHTA PREETI AVINASH', '7.709', '7.675', 37, 28, 40, 24, 37, 52, 218, 675),
(45, '3013310058', 'MEHTA PREETI AVINASH', '7.709', '7.675', 37, 28, 40, 24, 37, 52, 218, 675),
(45, '3013310058', 'MEHTA PREETI AVINASH', '7.709', '7.675', 37, 28, 40, 24, 37, 52, 218, 675);

-- --------------------------------------------------------

--
-- Table structure for table `it_14_5s`
--

CREATE TABLE IF NOT EXISTS `it_14_5s` (
  `subject` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_14_5s`
--

INSERT INTO `it_14_5s` (`subject`) VALUES
('tscn'),
('pcs'),
('mp'),
('coa'),
('os'),
('java');

-- --------------------------------------------------------

--
-- Table structure for table `it_14_6`
--

CREATE TABLE IF NOT EXISTS `it_14_6` (
  `crn` int(11) DEFAULT NULL,
  `urn` varchar(10) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `spi` varchar(5) DEFAULT NULL,
  `cpi` varchar(5) DEFAULT NULL,
  `dbms` int(11) DEFAULT NULL,
  `itc` int(11) DEFAULT NULL,
  `iwt` int(11) DEFAULT NULL,
  `cmc` int(11) DEFAULT NULL,
  `cg` int(11) DEFAULT NULL,
  `mvr` int(11) DEFAULT NULL,
  `sum` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`urn`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_14_6`
--

INSERT INTO `it_14_6` (`crn`, `urn`, `sname`, `spi`, `cpi`, `dbms`, `itc`, `iwt`, `cmc`, `cg`, `mvr`, `sum`, `total`) VALUES
(1, '3013310002', 'ADITI KHALATKAR', '9.156', '9.009', 66, 62, 46, 44, 45, 53, 316, 820),
(2, '3013310003', 'AMITA SAHU', '8.093', '0', 55, 40, 43, 30, 31, 54, 253, 725),
(3, '3013310004', 'ANUSHREE PANDEY', '8.843', '8.512', 54, 57, 46, 37, 39, 53, 286, 789),
(4, '3013310005', 'ASHISH KUMAR SINHA', '8.312', '7.309', 63, 44, 45, 34, 37, 56, 279, 737),
(5, '3013310006', 'AVIRAL SHRIVASTAVA', '8.937', '8.877', 55, 55, 47, 41, 48, 56, 302, 812),
(6, '3013310007', 'AYUSH RANJAN', '8.125', '7.917', 52, 42, 41, 37, 30, 51, 253, 729),
(7, '3013310009', 'BHUMI GOYAL', '8.687', '0', 66, 55, 47, 40, 37, 60, 305, 778),
(8, '3013310010', 'DINESH KUMAR DASWANI', '7.062', '0', 51, 39, 37, 34, 34, 42, 237, 634),
(9, '3013310011', 'DIVYA DALMIA', '8.906', '9.061', 59, 66, 36, 44, 49, 58, 312, 803),
(10, '3013310013', 'JASMINE KAUR', '8.843', '8.788', 52, 52, 41, 46, 48, 50, 289, 784),
(11, '3013310014', 'KRITI VERMA', '8.968', '8.751', 60, 52, 47, 51, 45, 56, 311, 810),
(12, '3013310015', 'NARAYAN SINGH', '0', '0', 42, 40, 37, 32, 19, 34, 204, 565),
(13, '3013310016', 'NEHA BUNDELA', '7.875', '7.616', 56, 59, 37, 41, 40, 41, 274, 703),
(14, '3013310017', 'NEHA SINGH', '8.437', '7.681', 56, 56, 44, 55, 45, 52, 308, 771),
(15, '3013310018', 'NITI PUNGLIA', '9', '9.015', 51, 52, 46, 50, 47, 60, 306, 802),
(16, '3013310019', 'PARUL DHIRAHI', '8.218', '0', 60, 54, 40, 41, 28, 53, 276, 732),
(17, '3013310020', 'PIYALI BHATTACHARYA', '8.718', '7.589', 50, 44, 40, 32, 38, 51, 255, 759),
(18, '3013310021', 'POOJA SATISH', '8.75', '8.377', 55, 59, 40, 44, 37, 51, 286, 782),
(19, '3013310023', 'PREETI SAHU', '8.75', '8.279', 57, 56, 36, 38, 47, 51, 285, 779),
(20, '3013310024', 'PRIYAL GOYAL', '9.343', '9.122', 62, 63, 43, 51, 61, 61, 341, 836),
(21, '3013310025', 'PRIYANKA KHANDELWAL', '8.812', '8.849', 44, 58, 44, 35, 52, 53, 286, 781),
(22, '3013310026', 'RINKU SADAWARTI', '8.843', '8.144', 61, 59, 49, 52, 49, 60, 330, 818),
(23, '3013310027', 'SACHIN KUMAR AGRAWAL', '8.812', '0', 53, 57, 40, 34, 44, 55, 283, 765),
(24, '3013310028', 'SAKSHEE JAIN', '9.031', '8.736', 58, 58, 47, 50, 51, 54, 318, 815),
(25, '3013310029', 'SHIKHA JHA', '9.031', '8.628', 52, 63, 46, 53, 45, 57, 316, 800),
(26, '3013310030', 'SHIKSHA PRAKASH', '8.437', '7.788', 56, 57, 37, 50, 45, 53, 298, 762),
(27, '3013310032', 'SHRUTI CHAKRABARTI', '9.156', '8.960', 63, 57, 44, 57, 48, 55, 324, 837),
(28, '3013310033', 'SPARDHA GUPTA', '8.562', '8.316', 49, 55, 40, 38, 45, 56, 283, 760),
(29, '3013310034', 'SURBHI SOMANI', '8.781', '8.389', 54, 46, 44, 43, 48, 54, 289, 779),
(30, '3013310035', 'URVASHI SONI', '9', '9.024', 60, 64, 46, 45, 56, 58, 329, 824),
(31, '3013310039', 'NAZIA FARHAT', '8.375', '7.625', 49, 53, 46, 48, 47, 57, 300, 755),
(32, '3013310040', 'SHANU GAUR', '8.406', '7.542', 55, 42, 46, 36, 35, 55, 269, 738),
(33, '3013310042', 'SWATI JAIN', '7.281', '0', 41, 45, 35, 31, 28, 50, 230, 637),
(34, '3013310043', 'SURABHI PAREKH', '8.656', '8.119', 49, 52, 38, 43, 48, 49, 279, 769),
(35, '3013310045', 'POORAB PRIYA CHANDRAKAR', '7.718', '7.607', 39, 42, 39, 34, 28, 53, 235, 680),
(36, '3013310046', 'JAYA DEWANGAN', '7.281', '0', 46, 40, 32, 31, 28, 40, 217, 642),
(37, '3013310049', 'ANKIT KUMAR', '8.937', '8.665', 60, 58, 47, 44, 47, 61, 317, 826),
(38, '3013310052', 'SHUBHAJIT BAGCHI', '8.937', '8.472', 52, 55, 43, 42, 44, 59, 295, 805),
(39, '3013310053', 'VINEETA YADAV', '8.656', '7.555', 56, 57, 47, 43, 32, 59, 294, 772),
(40, '3013310054', 'ARUNDHATI MISHRA', '7.593', '6.883', 47, 40, 38, 28, 34, 39, 226, 664),
(41, '3013310055', 'KHUSHBU KISPOTTA', '8.343', '7.794', 5, 43, 39, 42, 48, 55, 232, 741),
(42, '3013310057', 'YOGESH KUMAR', '7.656', '7.242', 39, 48, 40, 33, 31, 54, 245, 682),
(43, '3013310058', 'MEHTA PREETI AVINASH', '7.843', '7.727', 46, 40, 36, 28, 28, 45, 223, 693),
(44, '3013310059', 'AASHAY TRIPATHI ', '7.906', '0', 46, 51, 41, 41, 28, 48, 255, 699),
(45, '3013310060', 'GAURAV AGRAWAL ', '0', '0', 23, 47, 38, 38, 18, 45, 209, 521),
(46, '3013310301', 'BHARTI THAKUR', '8.5', '0', 50, 56, 41, 36, 36, 54, 273, 746),
(47, '3013310302', 'REENA PANJA', '0', '0', 55, 36, 39, 39, 16, 45, 230, 651),
(48, '3013310303', 'REETA SAHU', '7.5', '0', 45, 46, 36, 37, 28, 43, 235, 670),
(49, '3013310304', 'ANJU KUMARI', '7.968', '0', 47, 49, 41, 43, 28, 51, 259, 714);

-- --------------------------------------------------------

--
-- Table structure for table `it_14_6s`
--

CREATE TABLE IF NOT EXISTS `it_14_6s` (
  `subject` varchar(10) NOT NULL,
  PRIMARY KEY (`subject`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_14_6s`
--

INSERT INTO `it_14_6s` (`subject`) VALUES
('cg'),
('cmc'),
('dbms'),
('itc'),
('iwt'),
('mvr');

-- --------------------------------------------------------

--
-- Table structure for table `it_14_teacher`
--

CREATE TABLE IF NOT EXISTS `it_14_teacher` (
  `name` varchar(50) NOT NULL,
  `subject` varchar(10) NOT NULL,
  `sub_ff` varchar(70) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_14_teacher`
--

INSERT INTO `it_14_teacher` (`name`, `subject`, `sub_ff`) VALUES
('Amrendra Kumar Singh', 'tscn', 'Telecom. Switching & Computer Networks'),
('Rajeev Pathak', 'pcs', 'Principles Of Communication System'),
('K.Subhashini Spurjeon', 'mp', 'Microprocessor & Interfaces'),
('Vikas Pandey', 'coa', 'Computer Organisation & Architecture'),
('Babita Verma', 'os', 'Operating System'),
('Sarang Pitale', 'java', 'Introduction To Java'),
('Rohit Verma', 'cm', 'Computational Mathematics'),
('Sanjay Sharma', 'dms', 'Discrete Mathematical Structures'),
('K. Subhashini Spurjeon', 'ds', 'Data Structures'),
('Rajeev Pathak', 'aec', 'Analog Electronic Ckts'),
('Sarang Pitale', 'cpp', 'Object Oriented Prog. Using C++'),
('Samridhhi Mishra', 'pom', 'Principles Of Mgmt'),
('', 'tscn', ''),
('', 'pcs', ''),
('', 'mp', ''),
('', 'coa', ''),
('', 'os', ''),
('', 'java', ''),
('Rajkumar Singh', 'dbms', 'Database Management System '),
('Rajeev Pathak', 'itc', 'Information Theory & Coding'),
('Sarang Pitale', 'iwt', 'Internet & Web Technologies'),
('Toshant Kumar', 'cmc', 'Cellular Mobile Communication'),
('Amrendra Kumar Singh', 'cg', 'Computer Graphics'),
('Vikas Pandey', 'mvr', 'Multimedia & Virtual Reality');

-- --------------------------------------------------------

--
-- Table structure for table `it_15_4`
--

CREATE TABLE IF NOT EXISTS `it_15_4` (
  `crn` int(11) DEFAULT NULL,
  `urn` varchar(10) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `spi` varchar(5) DEFAULT NULL,
  `cpi` varchar(5) DEFAULT NULL,
  `cm` int(11) DEFAULT NULL,
  `dm` int(11) DEFAULT NULL,
  `ds` int(11) DEFAULT NULL,
  `cpp` int(11) DEFAULT NULL,
  `pm` int(11) DEFAULT NULL,
  `aec` int(11) DEFAULT NULL,
  `sum` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`urn`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_15_4`
--

INSERT INTO `it_15_4` (`crn`, `urn`, `sname`, `spi`, `cpi`, `cm`, `dm`, `ds`, `cpp`, `pm`, `aec`, `sum`, `total`) VALUES
(1, '3013310061', 'AVICHAL SONI', '0', '', 28, 23, 19, 28, 28, 12, 138, 448),
(1, '3013311001', 'ABHISHEK JAIN', '7.77', '', 50, 60, 36, 38, 46, 38, 268, 675),
(1, '3013311002', 'AMAR TIWARI', '7.77', '', 50, 64, 43, 42, 33, 29, 261, 746),
(1, '3013311003', 'ALISHA AHMAD', '7.77', '', 43, 51, 36, 48, 47, 29, 254, 736),
(1, '3013311004', 'AMITABH TIWARI', '7.77', '', 38, 41, 40, 35, 38, 28, 220, 657),
(1, '3013311005', 'ANJALI SAHU', '7.77', '', 59, 51, 49, 41, 47, 41, 288, 736),
(1, '3013311006', 'ANKIT AGARWAL', '0', '', 36, 28, 17, 30, 42, 20, 173, 609),
(1, '3013311007', 'CHANDRAKANT HARDAHE', '7.77', '', 63, 51, 40, 56, 61, 50, 321, 821),
(1, '3013311008', 'CHITRA', '7.77', '', 54, 51, 47, 52, 57, 54, 315, 798),
(1, '3013311010', 'JYOTI YADAV', '7.77', '', 51, 37, 29, 49, 64, 36, 266, 730),
(1, '3013311012', 'KUMAR HARSH VERMA', '7.77', '', 54, 38, 54, 58, 55, 48, 307, 750),
(1, '3013311013', 'NAVNEET PANDEY', '7.77', '', 59, 48, 32, 50, 57, 43, 289, 755),
(1, '3013311014', 'NAZIFA NAJISH', '7.77', '', 49, 40, 30, 39, 47, 28, 233, 689),
(1, '3013311015', 'NIKITA GOGAD', '7.77', '', 62, 56, 43, 52, 58, 55, 326, 806),
(1, '3013311016', 'NILESH AGRAWAL', '7.77', '', 64, 50, 30, 43, 52, 30, 269, 742),
(1, '3013311017', 'NISHANT SINGH', '7.77', '', 55, 29, 37, 46, 60, 34, 261, 661),
(1, '3013311019', 'PALASH SARSIHA', '7.77', '', 43, 29, 40, 38, 48, 40, 238, 705),
(1, '3013311022', 'RICHA TIWARI', '0', '', 42, 12, 19, 44, 45, 7, 169, 588),
(1, '3013311023', 'SARTHAK RAI', '7.77', '', 49, 42, 28, 46, 45, 29, 239, 679),
(1, '3013311025', 'SHEFALI JHA', '7.77', '', 34, 49, 28, 47, 46, 28, 232, 624),
(1, '3013311026', 'SHRADDHA', '7.77', '', 59, 34, 23, 53, 53, 34, 256, 712),
(1, '3013311028', 'SHWETA SONI', '7.77', '', 56, 54, 43, 59, 62, 45, 319, 806),
(1, '3013311031', 'SONAL THAKUR', '7.77', '', 45, 47, 33, 45, 44, 28, 242, 719),
(1, '3013311032', 'SUPRA JOSHI', '7.77', '', 53, 51, 41, 49, 57, 28, 279, 729),
(1, '3013311034', 'TUSHAR KUMAR DUBEY', '0', '', 42, 42, 16, 28, 52, 30, 210, 572),
(1, '3013311035', 'UMESH KUMAR BHOY', '7.77', '', 48, 47, 36, 34, 39, 28, 232, 620),
(1, '3013311036', 'SHIVANGI JAIN', '7.77', '', 49, 51, 39, 40, 37, 28, 244, 675),
(1, '3013311037', 'MEGHA SHRIVASTAVA', '7.77', '', 49, 34, 30, 39, 46, 38, 236, 647),
(1, '3013311038', 'SATBIR BEDI', '0', '', 34, 38, 28, 34, 35, 22, 191, 581),
(1, '3013311039', 'ADITYA SHARMA', '7.77', '', 55, 56, 33, 48, 45, 37, 274, 707),
(1, '3013311040', 'AYUSH SURANA', '0', '', 36, 10, 28, 21, 32, 15, 142, 520),
(1, '3013311041', 'RAHUL SAHU', '0', '', 45, 32, 29, 34, 35, 19, 194, 637),
(1, '3013311042', 'SIDDHARTH TIWARI', '7.77', '', 41, 30, 28, 44, 41, 28, 212, 627),
(1, '3013311044', 'SOURABH PAREKH', '7.77', '', 42, 34, 39, 46, 37, 39, 237, 666),
(1, '3013311045', 'ABHYAS KUMAR DESHPREMI', '0', '', 46, 41, 39, 46, 50, 16, 238, 641),
(1, '3013311046', 'AMAN KUMAR SINGH', '0', '', 47, 13, 33, 46, 35, 19, 193, 605),
(1, '3013311049', 'SUPRIYA BHARTI', '7.77', '', 43, 70, 42, 42, 51, 41, 289, 784),
(1, '3013311050', 'AKANKSHA RANI', '7.77', '', 36, 60, 39, 38, 48, 28, 249, 688),
(1, '3013311051', 'AMIT KISHORE', '7.77', '', 57, 56, 48, 50, 49, 32, 292, 760),
(1, '3013311052', 'ARSHI JAIN', '7.77', '', 57, 52, 41, 61, 59, 53, 323, 799),
(1, '3013311053', 'PALLAVI PANDEY', '7.77', '', 30, 38, 34, 45, 52, 28, 227, 654),
(1, '3013311054', 'PRACHI SHRIVASTAVA', '0', '', 48, 13, 40, 45, 50, 32, 228, 649),
(1, '3013311055', 'SHAMBHAVI PRASAD', '0', '', 39, 28, 34, 42, 47, 17, 207, 597),
(1, '3013311056', 'SHASHANK MISHRA', '0', '', 34, 17, 30, 49, 49, 28, 207, 600),
(1, '3013311057', 'G NIKHIL', '0', '', 16, 23, 36, 39, 43, 11, 168, 447),
(1, '3013311058', 'PRATEEK AGRAWAL', '7.77', '', 59, 48, 41, 44, 55, 57, 304, 807),
(1, '3013311059', 'PARMINDER SINGH BHOGAL', '0', '', 38, 11, 21, 37, 40, 12, 159, 541),
(1, '3013311060', 'SUSHOBHAN AGRAWAL', '0', '', 28, 12, 40, 28, 11, 32, 151, 517),
(1, '3013311061', 'ADARSH V KUMAR', '0', '', 40, 28, 39, 47, 49, 17, 220, 600),
(1, '3013311062', 'NIHARIKA SINHA', '0', '', 45, 22, 44, 54, 58, 29, 252, 713),
(1, '3013311063', 'PRATIK KUMAR PATNAIK', '0', '', 18, 28, 34, 33, 38, 28, 179, 596),
(1, '3013311301', 'GAURAV KUMAR JHA', '7.77', '', 66, 50, 47, 47, 38, 40, 288, 767),
(1, '3013311302', 'PRIYANKA SINGH THAKUR', '0', '', 9, 8, 45, 53, 44, 7, 166, 563);

-- --------------------------------------------------------

--
-- Table structure for table `it_15_4s`
--

CREATE TABLE IF NOT EXISTS `it_15_4s` (
  `subject` varchar(10) NOT NULL,
  PRIMARY KEY (`subject`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_15_4s`
--

INSERT INTO `it_15_4s` (`subject`) VALUES
('aec'),
('cm'),
('cpp'),
('dm'),
('ds'),
('pm');

-- --------------------------------------------------------

--
-- Table structure for table `it_15_teacher`
--

CREATE TABLE IF NOT EXISTS `it_15_teacher` (
  `name` varchar(50) DEFAULT NULL,
  `subject` varchar(10) NOT NULL,
  `sub_ff` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`subject`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_15_teacher`
--

INSERT INTO `it_15_teacher` (`name`, `subject`, `sub_ff`) VALUES
('R.R. Dewangan', 'cm', 'Computational Mathematics'),
('Sanjay Sharma', 'dm', 'Discrete Mathematics'),
('Arpana Rawal', 'ds', 'Data Structures'),
('Asad Siddhiqui', 'cpp', 'Object Oriented Programming in C++'),
('Samriddhi Mishra', 'pm', 'Principles of Management'),
('K. Subhashini Spurjeon', 'aec', 'Analog Electronic Circuits');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

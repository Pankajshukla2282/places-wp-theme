-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2015 at 09:01 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `placedetails`
--

-- --------------------------------------------------------

--
-- Table structure for table `markers`
--

CREATE TABLE IF NOT EXISTS `markers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `type` varchar(100) NOT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL,
  `description` text,
  `added_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `name` (`name`),
  FULLTEXT KEY `address` (`address`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=68 ;

--
-- Dumping data for table `markers`
--

INSERT INTO `markers` (`id`, `name`, `address`, `type`, `lat`, `lng`, `description`, `added_time`) VALUES
(1, 'Agra', 'Uttar Pradesh', 'city', 27.11, 78.01, 'Description', '2015-03-03 00:00:50'),
(2, 'Ahmedabad', 'Gujarat', 'city', 23.2, 72.37, 'Description', '2015-03-03 00:00:50'),
(3, 'Allahabad', 'Uttar Pradesh', 'city', 25.28, 81.54, 'Description', '2015-03-03 00:00:50'),
(4, 'Amritsar', 'Punjab', 'city', 31.35, 74.53, 'Description', '2015-03-03 00:00:50'),
(5, 'Bangalore', 'Karnataka', 'city', 12.59, 77.35, 'Description', '2015-03-03 00:00:50'),
(6, 'Bareilly', 'Uttar Pradesh', 'city', 28.22, 79.27, 'Description', '2015-03-03 00:00:50'),
(7, 'Baroda', 'Gujarat', 'city', 25.25, 76.7, 'Description', '2015-03-03 00:00:50'),
(8, 'Bhavnagar', 'Gujarat', 'city', 21.46, 72.11, 'Description', '2015-03-03 00:00:50'),
(9, 'Bhilai', 'Chhattisgarh', 'city', 21.13, 81.26, 'Description', '2015-03-03 00:00:50'),
(10, 'Bhopal', 'Madhya Pradesh', 'city', 23.16, 77.36, 'Description', '2015-03-03 00:00:50'),
(11, 'Bhubhneshwar', 'Orissa', 'city', 20.15, 85.52, 'Description', '2015-03-03 00:00:50'),
(12, 'Calicut', 'Kerala', 'city', 11.15, 75.46, 'Description', '2015-03-03 00:00:50'),
(13, 'Chandigarh', 'Punjab', 'city', 30.44, 76.55, 'Description', '2015-03-03 00:00:50'),
(14, 'Chennai', 'Tamil Nadu', 'city', 13.04, 80.17, 'Description', '2015-03-03 00:00:50'),
(15, 'Cochin', 'Kerala', 'city', 9.58, 76.14, 'Description', '2015-03-03 00:00:50'),
(16, 'Coimbatore', 'Tamilnadu', 'city', 11, 77, 'Description', '2015-03-03 00:00:50'),
(17, 'Dehradun', 'Uttarakhand', 'city', 30.19, 78.02, 'Description', '2015-03-03 00:00:50'),
(18, 'Delhi', 'Delhi', 'city', 28.38, 77.12, 'Description', '2015-03-03 00:00:50'),
(19, 'Dharwad', 'Gujarat', 'city', 15.3, 75.04, 'Description', '2015-03-03 00:00:50'),
(20, 'Faridabad', 'Haryana', 'city', 28.25, 77.22, 'Description', '2015-03-03 00:00:50'),
(21, 'Ghaziabad', 'Uttar Pradesh', 'city', 28.4, 77.28, 'Description', '2015-03-03 00:00:50'),
(22, 'Guntur', 'Andhra Pradesh', 'city', 16.18, 80.29, 'Description', '2015-03-03 00:00:50'),
(23, 'Gurgaon', 'Haryana', 'city', 28.28, 77.02, 'Description', '2015-03-03 00:00:50'),
(24, 'Gwalior', 'Madhya Pradesh', 'city', 26.14, 78.1, 'Description', '2015-03-03 00:00:50'),
(25, 'Haridwar', 'Uttar Pradesh', 'city', 29.58, 78.13, 'Description', '2015-03-03 00:00:50'),
(26, 'Hubli', 'Karnataka', 'city', 15.2, 75.12, 'Description', '2015-03-03 00:00:50'),
(27, 'Hyderabad', 'Andhra Pradesh', 'city', 17.23, 78.29, 'Description', '2015-03-03 00:00:50'),
(28, 'Indore', 'Madhya Pradesh', 'city', 22.44, 75.5, 'Description', '2015-03-03 00:00:50'),
(29, 'Jabalpur', 'Madhya Pradesh', 'city', 23.1, 79.59, 'Description', '2015-03-03 00:00:50'),
(30, 'Jagadhri', 'Haryana', 'city', 30.1, 77.2, 'Description', '2015-03-03 00:00:50'),
(31, 'Jaipur', 'Rajasthan', 'city', 26.55, 75.52, 'Description', '2015-03-03 00:00:50'),
(32, 'Jalandhar', 'Punjab', 'city', 31.18, 75.4, 'Description', '2015-03-03 00:00:50'),
(33, 'Jamshedpur', 'Jharkhand', 'city', 22.5, 86.1, 'Description', '2015-03-03 00:00:50'),
(34, 'Jodhpur', 'Rajasthan', 'city', 26.18, 73.04, 'Description', '2015-03-03 00:00:50'),
(35, 'Kanpur', 'Uttar Pradesh', 'city', 26.28, 80.24, 'Description', '2015-03-03 00:00:50'),
(36, 'Kolkata', 'West Bengal', 'city', 22.34, 88.24, 'Description', '2015-03-03 00:00:50'),
(37, 'Kota', 'Rajasthan', 'city', 25.1, 75.52, 'Description', '2015-03-03 00:00:50'),
(38, 'Kottayam', 'Kerala', 'city', 9.36, 76.34, 'Description', '2015-03-03 00:00:50'),
(39, 'Lucknow', 'Uttar Pradesh', 'city', 26.55, 80.59, 'Description', '2015-03-03 00:00:50'),
(40, 'Ludhiana', 'Punjab', 'city', 30.54, 75.51, 'Description', '2015-03-03 00:00:50'),
(41, 'Madurai', 'Tamiladu', 'city', 9.58, 78.1, 'Description', '2015-03-03 00:00:50'),
(42, 'Mangalore', 'Karnataka', 'city', 12.52, 74.53, 'Description', '2015-03-03 00:00:50'),
(43, 'Meerut', 'Uttar Pradesh', 'city', 28.59, 77.42, 'Description', '2015-03-03 00:00:50'),
(44, 'Mumbai', 'Maharashtra', 'city', 18.55, 72.54, 'Description', '2015-03-03 00:00:50'),
(45, 'Muzaffarnagar', 'Uttar Pradesh', 'city', 30.27, 78.06, 'Description', '2015-03-03 00:00:50'),
(46, 'Mysore', 'Karnataka', 'city', 12.18, 76.42, 'Description', '2015-03-03 00:00:50'),
(47, 'Nagpur', 'Maharashtra', 'city', 21.09, 79.09, 'Description', '2015-03-03 00:00:50'),
(48, 'Nainital', 'Uttarakhand', 'city', 29.23, 79.27, 'Description', '2015-03-03 00:00:50'),
(49, 'Nasik', 'Maharashtra', 'city', 20.02, 73.5, 'Description', '2015-03-03 00:00:50'),
(50, 'Noida', 'Uttar Pradesh', 'city', 28.2, 70.3, 'Description', '2015-03-03 00:00:50'),
(51, 'Patiala', 'Punjab', 'city', 30.2, 76.25, 'Description', '2015-03-03 00:00:50'),
(52, 'Patna', 'Bihar', 'city', 25.36, 85.07, 'Description', '2015-03-03 00:00:50'),
(53, 'Pune', 'Maharashtra', 'city', 18.32, 73.52, 'Description', '2015-03-03 00:00:50'),
(54, 'Raipur', 'Chhattisgarh', 'city', 21.15, 81.41, 'Description', '2015-03-03 00:00:50'),
(55, 'Rajkot', 'Gujarat', 'city', 22.18, 70.56, 'Description', '2015-03-03 00:00:50'),
(56, 'Rishikesh', 'Uttaranchal', 'city', 29.57, 78.1, 'Description', '2015-03-03 00:00:50'),
(57, 'Roorkee', 'Uttaranchal', 'city', 29.52, 77.53, 'Description', '2015-03-03 00:00:50'),
(58, 'Saharanpur', 'Uttar Pradesh', 'city', 29.58, 77.23, 'Description', '2015-03-03 00:00:50'),
(59, 'Salem', 'Tamilnadu', 'city', 11.39, 78.1, 'Description', '2015-03-03 00:00:50'),
(60, 'Simla', 'Himachal Pradesh', 'city', 31.06, 77.13, 'Description', '2015-03-03 00:00:50'),
(61, 'Surat', 'Gujarat', 'city', 21.12, 72.55, 'Description', '2015-03-03 00:00:50'),
(62, 'Thiruvananthapuram', 'Kerala', 'city', 8.29, 76.55, 'Description', '2015-03-03 00:00:50'),
(63, 'Udaipur', 'Rajasthan', 'city', 27.42, 75.33, 'Description', '2015-03-03 00:00:50'),
(64, 'Vadodra', 'Gujarat', 'city', 22, 73.16, 'Description', '2015-03-03 00:00:50'),
(65, 'Varanasi', 'Uttar Pradesh', 'city', 25.2, 83, 'Description', '2015-03-03 00:00:50'),
(66, 'Vijayawada', 'Andhra Pradesh', 'city', 16.31, 80.39, 'Description', '2015-03-03 00:00:50'),
(67, 'Vishakapatnam', 'Andhra Pradesh', 'city', 17.45, 83.2, 'Description', '2015-03-03 00:00:50');

-- --------------------------------------------------------

--
-- Table structure for table `searches`
--

CREATE TABLE IF NOT EXISTS `searches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marker_id` int(11) NOT NULL,
  `search_query` varchar(255) NOT NULL,
  `search_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `search_nearby` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `search_query` (`search_query`),
  KEY `marker_id` (`marker_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `searches`
--

INSERT INTO `searches` (`id`, `marker_id`, `search_query`, `search_time`, `search_nearby`) VALUES
(1, 1, 'agra', '2015-03-12 01:27:05', 0),
(2, 53, 'pune', '2015-03-12 01:28:00', 0),
(3, 27, 'hyderab', '2015-03-12 01:28:12', 0),
(4, 44, 'mumba', '2015-03-12 01:28:32', 0),
(5, 36, 'kolka', '2015-03-12 01:28:40', 0),
(6, 18, 'delhi', '2015-03-12 01:29:03', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2014 at 02:41 PM
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
  `description` text NOT NULL,
  `type` varchar(100) NOT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=68 ;

--
-- Dumping data for table `markers`
--

INSERT INTO `markers` (`id`, `name`, `address`, `description`, `type`, `lat`, `lng`) VALUES
(1, 'Agra', 'Uttar Pradesh', 'Description', 'city', 27.11, 78.01),
(2, 'Ahmedabad', 'Gujarat', 'Description', 'city', 23.2, 72.37),
(3, 'Allahabad', 'Uttar Pradesh', 'Description', 'city', 25.28, 81.54),
(4, 'Amritsar', 'Punjab', 'Description', 'city', 31.35, 74.53),
(5, 'Bangalore', 'Karnataka', 'Description', 'city', 12.59, 77.35),
(6, 'Bareilly', 'Uttar Pradesh', 'Description', 'city', 28.22, 79.27),
(7, 'Baroda', 'Gujarat', 'Description', 'city', 25.25, 76.7),
(8, 'Bhavnagar', 'Gujarat', 'Description', 'city', 21.46, 72.11),
(9, 'Bhilai', 'Chhattisgarh', 'Description', 'city', 21.13, 81.26),
(10, 'Bhopal', 'Madhya Pradesh', 'Description', 'city', 23.16, 77.36),
(11, 'Bhubhneshwar', 'Orissa', 'Description', 'city', 20.15, 85.52),
(12, 'Calicut', 'Kerala', 'Description', 'city', 11.15, 75.46),
(13, 'Chandigarh', 'Punjab', 'Description', 'city', 30.44, 76.55),
(14, 'Chennai', 'Tamil Nadu', 'Description', 'city', 13.04, 80.17),
(15, 'Cochin', 'Kerala', 'Description', 'city', 9.58, 76.14),
(16, 'Coimbatore', 'Tamilnadu', 'Description', 'city', 11, 77),
(17, 'Dehradun', 'Uttarakhand', 'Description', 'city', 30.19, 78.02),
(18, 'Delhi', 'Delhi', 'Description', 'city', 28.38, 77.12),
(19, 'Dharwad', 'Gujarat', 'Description', 'city', 15.3, 75.04),
(20, 'Faridabad', 'Haryana', 'Description', 'city', 28.25, 77.22),
(21, 'Ghaziabad', 'Uttar Pradesh', 'Description', 'city', 28.4, 77.28),
(22, 'Guntur', 'Andhra Pradesh', 'Description', 'city', 16.18, 80.29),
(23, 'Gurgaon', 'Haryana', 'Description', 'city', 28.28, 77.02),
(24, 'Gwalior', 'Madhya Pradesh', 'Description', 'city', 26.14, 78.1),
(25, 'Haridwar', 'Uttar Pradesh', 'Description', 'city', 29.58, 78.13),
(26, 'Hubli', 'Karnataka', 'Description', 'city', 15.2, 75.12),
(27, 'Hyderabad', 'Andhra Pradesh', 'Description', 'city', 17.23, 78.29),
(28, 'Indore', 'Madhya Pradesh', 'Description', 'city', 22.44, 75.5),
(29, 'Jabalpur', 'Madhya Pradesh', 'Description', 'city', 23.1, 79.59),
(30, 'Jagadhri', 'Haryana', 'Description', 'city', 30.1, 77.2),
(31, 'Jaipur', 'Rajasthan', 'Description', 'city', 26.55, 75.52),
(32, 'Jalandhar', 'Punjab', 'Description', 'city', 31.18, 75.4),
(33, 'Jamshedpur', 'Jharkhand', 'Description', 'city', 22.5, 86.1),
(34, 'Jodhpur', 'Rajasthan', 'Description', 'city', 26.18, 73.04),
(35, 'Kanpur', 'Uttar Pradesh', 'Description', 'city', 26.28, 80.24),
(36, 'Kolkata', 'West Bengal', 'Description', 'city', 22.34, 88.24),
(37, 'Kota', 'Rajasthan', 'Description', 'city', 25.1, 75.52),
(38, 'Kottayam', 'Kerala', 'Description', 'city', 9.36, 76.34),
(39, 'Lucknow', 'Uttar Pradesh', 'Description', 'city', 26.55, 80.59),
(40, 'Ludhiana', 'Punjab', 'Description', 'city', 30.54, 75.51),
(41, 'Madurai', 'Tamiladu', 'Description', 'city', 9.58, 78.1),
(42, 'Mangalore', 'Karnataka', 'Description', 'city', 12.52, 74.53),
(43, 'Meerut', 'Uttar Pradesh', 'Description', 'city', 28.59, 77.42),
(44, 'Mumbai', 'Maharashtra', 'Description', 'city', 18.55, 72.54),
(45, 'Muzaffarnagar', 'Uttar Pradesh', 'Description', 'city', 30.27, 78.06),
(46, 'Mysore', 'Karnataka', 'Description', 'city', 12.18, 76.42),
(47, 'Nagpur', 'Maharashtra', 'Description', 'city', 21.09, 79.09),
(48, 'Nainital', 'Uttarakhand', 'Description', 'city', 29.23, 79.27),
(49, 'Nasik', 'Maharashtra', 'Description', 'city', 20.02, 73.5),
(50, 'Noida', 'Uttar Pradesh', 'Description', 'city', 28.2, 70.3),
(51, 'Patiala', 'Punjab', 'Description', 'city', 30.2, 76.25),
(52, 'Patna', 'Bihar', 'Description', 'city', 25.36, 85.07),
(53, 'Pune', 'Maharashtra', 'Description', 'city', 18.32, 73.52),
(54, 'Raipur', 'Chhattisgarh', 'Description', 'city', 21.15, 81.41),
(55, 'Rajkot', 'Gujarat', 'Description', 'city', 22.18, 70.56),
(56, 'Rishikesh', 'Uttaranchal', 'Description', 'city', 29.57, 78.1),
(57, 'Roorkee', 'Uttaranchal', 'Description', 'city', 29.52, 77.53),
(58, 'Saharanpur', 'Uttar Pradesh', 'Description', 'city', 29.58, 77.23),
(59, 'Salem', 'Tamilnadu', 'Description', 'city', 11.39, 78.1),
(60, 'Simla', 'Himachal Pradesh', 'Description', 'city', 31.06, 77.13),
(61, 'Surat', 'Gujarat', 'Description', 'city', 21.12, 72.55),
(62, 'Thiruvananthapuram', 'Kerala', 'Description', 'city', 8.29, 76.55),
(63, 'Udaipur', 'Rajasthan', 'Description', 'city', 27.42, 75.33),
(64, 'Vadodra', 'Gujarat', 'Description', 'city', 22, 73.16),
(65, 'Varanasi', 'Uttar Pradesh', 'Description', 'city', 25.2, 83),
(66, 'Vijayawada', 'Andhra Pradesh', 'Description', 'city', 16.31, 80.39),
(67, 'Vishakapatnam', 'Andhra Pradesh', 'Description', 'city', 17.45, 83.2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

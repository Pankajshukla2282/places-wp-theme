-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2016 at 01:51 PM
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
  `type` varchar(100) NOT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL,
  `added_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=245 ;

--
-- Dumping data for table `markers`
--

INSERT INTO `markers` (`id`, `name`, `type`, `lat`, `lng`, `added_time`) VALUES
(1, 'Agra', 'city', 27.11, 78.01, '2015-03-03 00:00:50'),
(2, 'Ahmedabad', 'city', 23.2, 72.37, '2015-03-03 00:00:50'),
(3, 'Allahabad', 'city', 25.28, 81.54, '2015-03-03 00:00:50'),
(4, 'Amritsar', 'city', 31.35, 74.53, '2015-03-03 00:00:50'),
(5, 'Bangalore', 'city', 12.59, 77.35, '2015-03-03 00:00:50'),
(6, 'Bareilly', 'city', 28.22, 79.27, '2015-03-03 00:00:50'),
(7, 'Baroda', 'city', 25.25, 76.7, '2015-03-03 00:00:50'),
(8, 'Bhavnagar', 'city', 21.46, 72.11, '2015-03-03 00:00:50'),
(9, 'Bhilai', 'city', 21.13, 81.26, '2015-03-03 00:00:50'),
(10, 'Bhopal', 'city', 23.16, 77.36, '2015-03-03 00:00:50'),
(11, 'Bhubhneshwar', 'city', 20.15, 85.52, '2015-03-03 00:00:50'),
(12, 'Calicut', 'city', 11.15, 75.46, '2015-03-03 00:00:50'),
(13, 'Chandigarh', 'city', 30.44, 76.55, '2015-03-03 00:00:50'),
(14, 'Chennai', 'city', 13.04, 80.17, '2015-03-03 00:00:50'),
(15, 'Cochin', 'city', 9.58, 76.14, '2015-03-03 00:00:50'),
(16, 'Coimbatore', 'city', 11, 77, '2015-03-03 00:00:50'),
(17, 'Dehradun', 'city', 30.19, 78.02, '2015-03-03 00:00:50'),
(18, 'Delhi', 'city', 28.38, 77.12, '2015-03-03 00:00:50'),
(19, 'Dharwad', 'city', 15.3, 75.04, '2015-03-03 00:00:50'),
(20, 'Faridabad', 'city', 28.25, 77.22, '2015-03-03 00:00:50'),
(21, 'Ghaziabad', 'city', 28.4, 77.28, '2015-03-03 00:00:50'),
(22, 'Guntur', 'city', 16.18, 80.29, '2015-03-03 00:00:50'),
(23, 'Gurgaon', 'city', 28.28, 77.02, '2015-03-03 00:00:50'),
(24, 'Gwalior', 'city', 26.14, 78.1, '2015-03-03 00:00:50'),
(25, 'Haridwar', 'city', 29.58, 78.13, '2015-03-03 00:00:50'),
(26, 'Hubli', 'city', 15.2, 75.12, '2015-03-03 00:00:50'),
(27, 'Hyderabad', 'city', 17.23, 78.29, '2015-03-03 00:00:50'),
(28, 'Indore', 'city', 22.44, 75.5, '2015-03-03 00:00:50'),
(29, 'Jabalpur', 'city', 23.1, 79.59, '2015-03-03 00:00:50'),
(30, 'Jagadhri', 'city', 30.1, 77.2, '2015-03-03 00:00:50'),
(31, 'Jaipur', 'city', 26.55, 75.52, '2015-03-03 00:00:50'),
(32, 'Jalandhar', 'city', 31.18, 75.4, '2015-03-03 00:00:50'),
(33, 'Jamshedpur', 'city', 22.5, 86.1, '2015-03-03 00:00:50'),
(34, 'Jodhpur', 'city', 26.18, 73.04, '2015-03-03 00:00:50'),
(35, 'Kanpur', 'city', 26.28, 80.24, '2015-03-03 00:00:50'),
(36, 'Kolkata', 'city', 22.34, 88.24, '2015-03-03 00:00:50'),
(37, 'Kota', 'city', 25.1, 75.52, '2015-03-03 00:00:50'),
(38, 'Kottayam', 'city', 9.36, 76.34, '2015-03-03 00:00:50'),
(39, 'Lucknow', 'city', 26.55, 80.59, '2015-03-03 00:00:50'),
(40, 'Ludhiana', 'city', 30.54, 75.51, '2015-03-03 00:00:50'),
(41, 'Madurai', 'city', 9.58, 78.1, '2015-03-03 00:00:50'),
(42, 'Mangalore', 'city', 12.52, 74.53, '2015-03-03 00:00:50'),
(43, 'Meerut', 'city', 28.59, 77.42, '2015-03-03 00:00:50'),
(44, 'Mumbai', 'city', 18.55, 72.54, '2015-03-03 00:00:50'),
(45, 'Muzaffarnagar', 'city', 30.27, 78.06, '2015-03-03 00:00:50'),
(46, 'Mysore', 'city', 12.18, 76.42, '2015-03-03 00:00:50'),
(47, 'Nagpur', 'city', 21.09, 79.09, '2015-03-03 00:00:50'),
(48, 'Nainital', 'city', 29.23, 79.27, '2015-03-03 00:00:50'),
(49, 'Nasik', 'city', 20.02, 73.5, '2015-03-03 00:00:50'),
(50, 'Noida', 'city', 28.2, 70.3, '2015-03-03 00:00:50'),
(51, 'Patiala', 'city', 30.2, 76.25, '2015-03-03 00:00:50'),
(52, 'Patna', 'city', 25.36, 85.07, '2015-03-03 00:00:50'),
(53, 'Pune', 'city', 18.32, 73.52, '2015-03-03 00:00:50'),
(54, 'Raipur', 'city', 21.15, 81.41, '2015-03-03 00:00:50'),
(55, 'Rajkot', 'city', 22.18, 70.56, '2015-03-03 00:00:50'),
(56, 'Rishikesh', 'city', 29.57, 78.1, '2015-03-03 00:00:50'),
(57, 'Roorkee', 'city', 29.52, 77.53, '2015-03-03 00:00:50'),
(58, 'Saharanpur', 'city', 29.58, 77.23, '2015-03-03 00:00:50'),
(59, 'Salem', 'city', 11.39, 78.1, '2015-03-03 00:00:50'),
(60, 'Simla', 'city', 31.06, 77.13, '2015-03-03 00:00:50'),
(61, 'Surat', 'city', 21.12, 72.55, '2015-03-03 00:00:50'),
(62, 'Thiruvananthapuram', 'city', 8.29, 76.55, '2015-03-03 00:00:50'),
(63, 'Udaipur', 'city', 27.42, 75.33, '2015-03-03 00:00:50'),
(64, 'Vadodra', 'city', 22, 73.16, '2015-03-03 00:00:50'),
(65, 'Varanasi', 'city', 25.2, 83, '2015-03-03 00:00:50'),
(66, 'Vijayawada', 'city', 16.31, 80.39, '2015-03-03 00:00:50'),
(67, 'Vishakapatnam', 'city', 17.45, 83.2, '2015-03-03 00:00:50'),
(72, 'Panna, Madhya Pradesh, India', 'point_of_interest', 24.718, 80.1819, '2015-03-14 17:56:21'),
(73, 'Katni, Madhya Pradesh, India', 'point_of_interest', 23.8308, 80.4072, '2015-03-15 01:33:17'),
(74, 'Satna, Pateri, Madhya Pradesh, India', 'point_of_interest', 24.5155, 80.8613, '2015-03-15 01:35:42'),
(75, 'Frankie Johnnie & Luigo Too', '', 37.3863, -122.086, '2015-03-19 00:45:42'),
(76, 'Amici''s East Coast Pizzeria', '', 37.3871, -122.083, '2015-03-19 00:45:42'),
(77, 'Kapp''s Pizza Bar & Grill', '', 37.3939, -122.079, '2015-03-19 00:45:43'),
(78, 'Round Table Pizza: Mountain View', '', 37.4027, -122.079, '2015-03-19 00:45:43'),
(79, 'Tony & Alba''s Pizza & Pasta', '', 37.394, -122.096, '2015-03-19 00:45:43'),
(80, 'Oregano''s Wood-Fired Pizza', '', 37.4017, -122.115, '2015-03-19 00:45:43'),
(81, 'Round Table Pizza: Sunnyvale-Mary-Central Expy', '', 37.39, -122.042, '2015-03-19 00:45:43'),
(82, 'Giordano''s', '', 41.8957, -87.6254, '2015-03-19 00:45:43'),
(83, 'Filippi''s Pizza Grotto', '', 32.7238, -117.168, '2015-03-19 00:45:43'),
(84, 'Lou Malnati''s Pizzeria', '', 41.8903, -87.6339, '2015-03-19 00:45:43'),
(85, 'Sammy''s Woodfired Pizza', '', 32.7134, -117.161, '2015-03-19 00:45:43'),
(86, 'Casa Bianca Pizza Pie', '', 34.1392, -118.205, '2015-03-19 00:45:43'),
(87, 'Parkway Grill', '', 34.137, -118.147, '2015-03-19 00:45:43'),
(88, 'Pizzeria Paradiso', '', 38.9096, -77.0459, '2015-03-19 00:45:43'),
(89, 'Star Pizza', '', 29.7325, -95.4111, '2015-03-19 00:45:43'),
(90, 'Tutta Bella Neapolitan Pizzera', '', 47.5577, -122.285, '2015-03-19 00:45:43'),
(91, 'Touche Pasta Pizza Pool', '', 45.5265, -122.686, '2015-03-19 00:45:43'),
(92, 'Piecora''s New York Pizza', '', 47.614, -122.314, '2015-03-19 00:45:43'),
(93, 'Pagliacci Pizza', '', 47.6239, -122.357, '2015-03-19 00:45:43'),
(94, 'Zeeks Pizza - Phinney Ridge', '', 47.6727, -122.354, '2015-03-19 00:45:43'),
(95, 'Old Town Pizza', '', 45.5246, -122.673, '2015-03-19 00:45:43'),
(96, 'Zeeks Pizza - Belltown', '', 47.6183, -122.348, '2015-03-19 00:45:43'),
(97, 'Escape From New York Pizza', '', 45.5271, -122.699, '2015-03-19 00:45:44'),
(98, 'Big Fred''s Pizza Garden', '', 41.2487, -96.0988, '2015-03-19 00:45:44'),
(99, 'Old Chicago', '', 41.2565, -95.9307, '2015-03-19 00:45:44'),
(100, 'Sgt Peffer''s Cafe Italian', '', 41.2731, -95.9878, '2015-03-19 00:45:44'),
(101, 'Mama''s Pizza', '', 41.2659, -95.9807, '2015-03-19 00:45:44'),
(102, 'Zio''s New York Style Pizzeria', '', 41.2555, -95.932, '2015-03-19 00:45:44'),
(103, 'Boston''s Restaurant & Sports', '', 44.1069, -103.205, '2015-03-19 00:45:44'),
(104, 'Zio''s New York Style Pizzeria', '', 41.2632, -96.0564, '2015-03-19 00:45:44'),
(105, 'La Casa Pizzaria', '', 41.2524, -95.9796, '2015-03-19 00:45:44'),
(106, 'Giordano''s', '', 41.8957, -87.6254, '2015-03-19 00:45:44'),
(107, 'Lou Malnati''s Pizzeria', '', 41.8903, -87.6339, '2015-03-19 00:45:44'),
(108, 'Piece Restaurant', '', 41.9105, -87.6761, '2015-03-19 00:45:44'),
(109, 'Connie''s Pizza Inc', '', 41.8492, -87.6417, '2015-03-19 00:45:44'),
(110, 'Exchequer Restaurant', '', 41.8792, -87.6261, '2015-03-19 00:45:44'),
(111, 'Coco''s By The Falls', '', 43.0836, -79.0827, '2015-03-19 00:45:44'),
(112, 'Pompei', '', 41.8693, -87.6648, '2015-03-19 00:45:44'),
(113, 'Lynn''s Paradise Cafe', '', 38.2369, -85.7285, '2015-03-19 00:45:44'),
(114, 'Otto Restaurant Enoteca Pizza', '', 40.7322, -73.9963, '2015-03-19 00:45:44'),
(115, 'Grimaldi''s', '', 40.7025, -73.9937, '2015-03-19 00:45:44'),
(116, 'Lombardi''s', '', 40.7217, -73.9956, '2015-03-19 00:45:44'),
(117, 'John''s Pizzeria', '', 40.7317, -74.0033, '2015-03-19 00:45:44'),
(118, 'John''s Pizzeria', '', 40.7581, -73.9877, '2015-03-19 00:45:44'),
(119, 'Burger Joint', '', 40.7824, -73.981, '2015-03-19 00:45:44'),
(120, 'Frank Pepe Pizzeria Napoletana', '', 41.3028, -72.917, '2015-03-19 00:45:44'),
(121, 'Adrianne''s Pizza Bar', '', 40.7045, -74.0101, '2015-03-19 00:45:44'),
(122, 'Pizzeria Regina: Regina Pizza', '', 42.3653, -71.0568, '2015-03-19 00:45:44'),
(123, 'Upper Crust', '', 42.3566, -71.0697, '2015-03-19 00:45:45'),
(124, 'Bertucci''s Brick Oven Rstrnt', '', 42.3319, -71.1153, '2015-03-19 00:45:45'),
(125, 'Aquitaine', '', 42.3436, -71.0723, '2015-03-19 00:45:45'),
(126, 'Bertucci''s Brick Oven Rstrnt', '', 42.3483, -71.0732, '2015-03-19 00:45:45'),
(127, 'Upper Crust', '', 42.3429, -71.1223, '2015-03-19 00:45:45'),
(128, 'Bertucci''s Brick Oven Rstrnt', '', 42.3633, -71.0972, '2015-03-19 00:45:45'),
(129, 'Bertucci''s Brick Oven Rstrnt', '', 42.3591, -71.0555, '2015-03-19 00:45:45'),
(130, 'Vinnie Van Go-Go''s', '', 32.0812, -81.095, '2015-03-19 00:45:45'),
(131, 'Domino''s Pizza: Myrtle Beach', '', 33.6749, -78.9051, '2015-03-19 00:45:45'),
(132, 'East of Chicago Pizza Company', '', 33.7161, -78.8556, '2015-03-19 00:45:45'),
(133, 'Villa Tronco Italian Rstrnt', '', 34.008, -81.0363, '2015-03-19 00:45:45'),
(134, 'Mellow Mushroom Pizza Bakers', '', 32.0747, -81.0937, '2015-03-19 00:45:45'),
(135, 'Andolinis Pizza', '', 32.7823, -79.9342, '2015-03-19 00:45:45'),
(136, 'Mellow Mushroom Pizza Bakers', '', 33.9578, -83.3747, '2015-03-19 00:45:45'),
(137, 'Bucks Pizza of Edisto Beach Inc', '', 32.504, -80.298, '2015-03-19 00:45:45'),
(138, 'Anthony''s Coal Fired Pizza', '', 26.0947, -80.1367, '2015-03-19 00:45:45'),
(139, 'Giordano''s', '', 28.3894, -81.5062, '2015-03-19 00:45:45'),
(140, 'Pizza Rustica', '', 25.7791, -80.1331, '2015-03-19 00:45:45'),
(141, 'Mama Jennie''s Italian Restaurant', '', 25.8828, -80.1943, '2015-03-19 00:45:45'),
(142, 'Anthony''s Coal Fired Pizza', '', 25.9411, -80.1488, '2015-03-19 00:45:45'),
(143, 'Anthony''s Coal Fired Pizza', '', 26.0654, -80.3624, '2015-03-19 00:45:45'),
(144, 'Mario the Baker Pizza & Italian Restaurant', '', 25.9297, -80.1561, '2015-03-19 00:45:45'),
(145, 'Big Cheese Pizza', '', 25.696, -80.3011, '2015-03-19 00:45:45'),
(146, 'Ingleside Village Pizza', '', 32.8538, -83.6574, '2015-03-19 00:45:45'),
(147, 'Ciao Bella Pizza Da Guglielmo', '', 30.3956, -86.5121, '2015-03-19 00:45:45'),
(148, 'Papa John''s Pizza', '', 32.5939, -83.6371, '2015-03-19 00:45:45'),
(149, 'Papa John''s Pizza: East Central Montgomery', '', 32.3811, -86.273, '2015-03-19 00:45:46'),
(150, 'Cici''s Pizza', '', 32.3822, -86.1907, '2015-03-19 00:45:46'),
(151, 'Papa John''s Pizza', '', 30.8491, -83.9634, '2015-03-19 00:45:46'),
(152, 'Papa John''s Pizza', '', 31.614, -84.2231, '2015-03-19 00:45:46'),
(153, 'Mellow Mushroom Pizza Bakers', '', 32.5321, -84.9559, '2015-03-19 00:45:46'),
(154, 'Star Pizza', '', 29.7325, -95.4111, '2015-03-19 00:45:46'),
(155, 'Star Pizza II', '', 29.7708, -95.396, '2015-03-19 00:45:46'),
(156, 'Brothers Pizzeria', '', 29.7683, -95.6436, '2015-03-19 00:45:46'),
(157, '11th Street Cafe Inc', '', 29.7908, -95.3889, '2015-03-19 00:45:46'),
(158, 'California Pizza Kitchen', '', 29.7502, -95.4612, '2015-03-19 00:45:46'),
(159, 'Collina''s Italian Cafe', '', 29.7326, -95.439, '2015-03-19 00:45:46'),
(160, 'Barry''s Pizza & Italian Diner', '', 29.7314, -95.4844, '2015-03-19 00:45:46'),
(161, 'Mario''s Seawall Italian Restaurant', '', 29.3045, -94.7726, '2015-03-19 00:45:46'),
(162, 'Campisi''s Egyptian Restaurant', '', 32.8365, -96.7718, '2015-03-19 00:45:46'),
(163, 'Fat Joe''s Pizza Pasta & Bar', '', 33.0271, -96.7889, '2015-03-19 00:45:46'),
(164, 'Saccone''s Pizza', '', 29.5695, -97.9647, '2015-03-19 00:45:46'),
(165, 'Fireside Pies', '', 32.8198, -96.7841, '2015-03-19 00:45:46'),
(166, 'Romeo''s', '', 30.2615, -97.76, '2015-03-19 00:45:46'),
(167, 'Sandella''s Cafe', '', 32.892, -96.9612, '2015-03-19 00:45:46'),
(168, 'Mangia Chicago Stuffed Pizza', '', 30.3015, -97.7391, '2015-03-19 00:45:46'),
(169, 'Frank & Angie''s', '', 30.2694, -97.7509, '2015-03-19 00:45:47'),
(170, 'Filippi''s Pizza Grotto', '', 32.7238, -117.168, '2015-03-19 00:45:47'),
(171, 'Pizzeria Bianco', '', 33.4494, -112.066, '2015-03-19 00:45:47'),
(172, 'Sammy''s Woodfired Pizza', '', 32.7134, -117.161, '2015-03-19 00:45:47'),
(173, 'Casa Bianca Pizza Pie', '', 34.1392, -118.205, '2015-03-19 00:45:47'),
(174, 'Parkway Grill', '', 34.137, -118.147, '2015-03-19 00:45:47'),
(175, 'California Pizza Kitchen', '', 34.0533, -118.253, '2015-03-19 00:45:47'),
(176, 'B J''s Pizza & Grill', '', 33.6581, -118.001, '2015-03-19 00:45:47'),
(177, 'B J''s Restaurant & Brewhouse', '', 33.5421, -117.784, '2015-03-19 00:45:47'),
(178, 'Giuseppe''s Depot Restaurant', '', 38.8345, -104.828, '2015-03-19 00:45:47'),
(179, 'Beau Jo''s Pizza', '', 39.6673, -104.941, '2015-03-19 00:45:47'),
(180, 'Pasquini''s Pizzeria', '', 39.6928, -104.987, '2015-03-19 00:45:47'),
(181, 'Fargos Pizza Co', '', 38.8398, -104.774, '2015-03-19 00:45:47'),
(182, 'Old Chicago', '', 39.7482, -105.001, '2015-03-19 00:45:47'),
(183, 'Sink', '', 40.0082, -105.276, '2015-03-19 00:45:47'),
(184, 'Ligori''s Pizza & Pasta', '', 41.1827, -111.949, '2015-03-19 00:45:47'),
(185, 'Old Chicago', '', 40.0176, -105.281, '2015-03-19 00:45:47'),
(186, 'Boston''s Restaurant & Sports', '', 44.1069, -103.205, '2015-03-19 00:45:47'),
(187, 'Chuck E Cheese''s Pizza', '', 45.7714, -108.576, '2015-03-19 00:45:47'),
(188, 'Space Aliens Grill & Bar', '', 46.8381, -100.772, '2015-03-19 00:45:47'),
(189, '2nd Street Bistro', '', 45.661, -110.561, '2015-03-19 00:45:47'),
(190, 'Domino''s Pizza', '', 48.2197, -101.296, '2015-03-19 00:45:47'),
(191, 'American Classic Pizzeria', '', 45.7841, -108.56, '2015-03-19 00:45:47'),
(192, 'Godfather''s Pizza', '', 45.8151, -108.471, '2015-03-19 00:45:47'),
(193, 'Papa John''s Pizza', '', 45.8102, -108.472, '2015-03-19 00:45:47'),
(194, 'Aardvark Pizza & Sub', '', 51.1765, -115.571, '2015-03-19 00:45:47'),
(195, 'Jasper Pizza Place', '', 52.8791, -118.079, '2015-03-19 00:45:47'),
(196, 'Odyssey Pizza & Steak House', '', 51.0452, -114.141, '2015-03-19 00:45:48'),
(197, 'Basil''s Pizza', '', 51.024, -114.11, '2015-03-19 00:45:48'),
(198, 'Castle Pizza & Donair', '', 50.9845, -114.083, '2015-03-19 00:45:48'),
(199, 'Santa Lucia Italian Restaurant', '', 51.0892, -115.359, '2015-03-19 00:45:48'),
(200, 'Tops Pizza & Steak House No 3', '', 51.1012, -114.071, '2015-03-19 00:45:48'),
(201, 'Evvia Restaurant', '', 51.0892, -115.362, '2015-03-19 00:45:48'),
(202, 'D&#39;Bronx', '', 39.0572, -94.6061, '2015-03-19 00:45:48'),
(203, 'Cicero''s Restaurant & Entrtnmt', '', 38.6563, -90.3084, '2015-03-19 00:45:48'),
(204, 'Hideaway Pizza', '', 35.5391, -97.5298, '2015-03-19 00:45:48'),
(205, 'Fortel''s Pizza Den', '', 38.5664, -90.3208, '2015-03-19 00:45:48'),
(206, 'Hideaway Pizza', '', 36.0899, -95.8892, '2015-03-19 00:45:48'),
(207, 'Farotto''s Catering', '', 38.6093, -90.3644, '2015-03-19 00:45:48'),
(208, 'California Pizza Kitchen', '', 38.6336, -90.3459, '2015-03-19 00:45:48'),
(209, 'D''Bronx', '', 39.0827, -94.5818, '2015-03-19 00:45:48'),
(210, 'Giuseppe''s Depot Restaurant', '', 38.8345, -104.828, '2015-03-19 00:45:48'),
(211, 'Beau Jo''s Pizza', '', 39.6673, -104.941, '2015-03-19 00:45:48'),
(212, 'Pasquini''s Pizzeria', '', 39.6928, -104.987, '2015-03-19 00:45:48'),
(213, 'Fargos Pizza Co', '', 38.8398, -104.774, '2015-03-19 00:45:48'),
(214, 'Old Chicago', '', 39.7482, -105.001, '2015-03-19 00:45:48'),
(215, 'Sink', '', 40.0082, -105.276, '2015-03-19 00:45:48'),
(216, 'Old Chicago', '', 40.0176, -105.281, '2015-03-19 00:45:48'),
(217, 'Gondolier', '', 40.0193, -105.273, '2015-03-19 00:45:48'),
(218, 'Ligori''s Pizza & Pasta', '', 41.1827, -111.949, '2015-03-19 00:45:48'),
(219, 'Brick Oven Restaurant', '', 40.2445, -111.656, '2015-03-19 00:45:48'),
(220, 'Zachary''s Chicago Pizza', '', 37.8462, -122.252, '2015-03-19 00:45:48'),
(221, 'Zachary''s Chicago Pizza', '', 37.8914, -122.278, '2015-03-19 00:45:48'),
(222, 'Cheese Board Pizza', '', 37.88, -122.269, '2015-03-19 00:45:48'),
(223, 'Goat Hill Pizza', '', 37.7624, -122.398, '2015-03-19 00:45:48'),
(224, 'Tommaso Ristorante Italiano', '', 37.7974, -122.405, '2015-03-19 00:45:49'),
(225, 'Little Star Pizza LLC', '', 37.7775, -122.438, '2015-03-19 00:45:49'),
(226, 'Pauline''s Pizza', '', 37.7687, -122.422, '2015-03-19 00:45:49'),
(227, 'Villa Romana Pizzeria & Rstrnt', '', 37.7641, -122.466, '2015-03-19 00:45:49'),
(228, 'Amici''s East Coast Pizzeria', '', 37.5639, -122.325, '2015-03-19 00:45:49'),
(229, 'Amici''s East Coast Pizzeria', '', 37.5205, -122.252, '2015-03-19 00:45:49'),
(230, 'North Beach Pizza', '', 37.5653, -122.323, '2015-03-19 00:45:49'),
(231, 'Patxi''s Chicago Pizza', '', 37.4451, -122.164, '2015-03-19 00:45:49'),
(232, 'Pizz''a Chicago', '', 37.4141, -122.126, '2015-03-19 00:45:49'),
(233, 'California Pizza Kitchen', '', 37.4481, -122.159, '2015-03-19 00:45:49'),
(234, 'Windy City Pizza', '', 37.5516, -122.315, '2015-03-19 00:45:49'),
(235, 'Applewood Pizza 2 Go', '', 37.453, -122.182, '2015-03-19 00:45:49'),
(236, 'Pizza Antica', '', 37.3218, -121.948, '2015-03-19 00:45:49'),
(237, 'Pizz''a Chicago', '', 37.3333, -121.892, '2015-03-19 00:45:49'),
(238, 'House of Pizza', '', 37.3264, -121.888, '2015-03-19 00:45:49'),
(239, 'Amici''s East Coast Pizzeria', '', 37.3347, -121.894, '2015-03-19 00:45:49'),
(240, 'Fiorillo''s Restaurant', '', 37.3546, -121.943, '2015-03-19 00:45:49'),
(241, 'Tony & Alba''s Pizza & Pasta', '', 37.3233, -121.952, '2015-03-19 00:45:49'),
(242, 'Giorgio''s', '', 37.2746, -121.893, '2015-03-19 00:45:49'),
(243, 'Round Table Pizza', '', 37.3159, -121.978, '2015-03-19 00:45:49'),
(244, 'somalwada, nagpur', 'point_of_interest', 0, 0, '2015-06-15 04:21:46');

-- --------------------------------------------------------

--
-- Table structure for table `marker_detail`
--

CREATE TABLE IF NOT EXISTS `marker_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marker_id` int(11) NOT NULL,
  `address` text NOT NULL,
  `geolocation_info` text NOT NULL,
  `political_info` text NOT NULL,
  `special_info` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `relations`
--

CREATE TABLE IF NOT EXISTS `relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `relname` varchar(255) NOT NULL,
  `relstatus` enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'INACTIVE',
  `reldetails` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `relations`
--

INSERT INTO `relations` (`id`, `relname`, `relstatus`, `reldetails`) VALUES
(1, 'home', 'ACTIVE', 'native home'),
(2, 'residence', 'INACTIVE', 'current address'),
(3, 'workplace', 'ACTIVE', 'current working place'),
(4, 'maternal', 'ACTIVE', 'maternal place');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `searches`
--

INSERT INTO `searches` (`id`, `marker_id`, `search_query`, `search_time`, `search_nearby`) VALUES
(1, 1, 'agra', '2015-03-12 01:27:05', 0),
(2, 53, 'pune', '2015-03-12 01:28:00', 0),
(3, 27, 'hyderab', '2015-03-12 01:28:12', 0),
(4, 44, 'mumba', '2015-03-12 01:28:32', 0),
(5, 36, 'kolka', '2015-03-12 01:28:40', 0),
(6, 18, 'delhi', '2015-03-12 01:29:03', 0),
(8, 71, 'Panna, Madhya Pradesh, India', '2015-03-15 01:32:48', 0),
(12, 27, 'Hyderabad', '2015-07-22 00:21:12', 0),
(14, 14, 'Chennai', '2015-07-22 00:22:12', 1),
(16, 44, 'Mumbai', '2016-05-22 11:33:03', 0),
(19, 46, 'Mysore', '2016-05-22 11:33:37', 0),
(20, 49, 'Nasik', '2016-05-22 11:34:33', 0),
(21, 60, 'Simla', '2016-05-22 11:34:46', 0),
(23, 2, 'Ahmedabad', '2016-05-22 11:35:08', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `regdata` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'INACTIVE',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `regdata`, `status`) VALUES
(1, 'pankaj', 'pankaj', '2015-06-06 04:06:06', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE IF NOT EXISTS `user_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `dob` datetime NOT NULL,
  `gender` enum('MALE','FEMALE','OTHER') NOT NULL,
  `marital_status` enum('MARRIED','UNMARRIED') NOT NULL DEFAULT 'UNMARRIED',
  `Address` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_marker`
--

CREATE TABLE IF NOT EXISTS `user_marker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `marker_id` int(11) NOT NULL,
  `is_owner` tinyint(1) NOT NULL,
  `relation_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `user_marker`
--

INSERT INTO `user_marker` (`id`, `user_id`, `marker_id`, `is_owner`, `relation_id`) VALUES
(1, 1, 225, 0, 0),
(2, 1, 226, 0, 0),
(3, 3, 226, 0, 1),
(4, 2, 227, 0, 2),
(5, 3, 225, 0, 1),
(6, 2, 227, 0, 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

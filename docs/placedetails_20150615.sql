-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2015 at 07:12 PM
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
  `address` varchar(255) NOT NULL,
  `type` varchar(100) NOT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL,
  `description` text,
  `added_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=245 ;

--
-- Dumping data for table `markers`
--

INSERT INTO `markers` (`id`, `name`, `address`, `type`, `lat`, `lng`, `description`, `added_time`) VALUES
(1, 'Agra', '', 'city', 27.11, 78.01, 'Description', '2015-03-03 00:00:50'),
(2, 'Ahmedabad', '', 'city', 23.2, 72.37, 'Description', '2015-03-03 00:00:50'),
(3, 'Allahabad', '', 'city', 25.28, 81.54, 'Description', '2015-03-03 00:00:50'),
(4, 'Amritsar', '', 'city', 31.35, 74.53, 'Description', '2015-03-03 00:00:50'),
(5, 'Bangalore', '', 'city', 12.59, 77.35, 'Description', '2015-03-03 00:00:50'),
(6, 'Bareilly', '', 'city', 28.22, 79.27, 'Description', '2015-03-03 00:00:50'),
(7, 'Baroda', '', 'city', 25.25, 76.7, 'Description', '2015-03-03 00:00:50'),
(8, 'Bhavnagar', '', 'city', 21.46, 72.11, 'Description', '2015-03-03 00:00:50'),
(9, 'Bhilai', '', 'city', 21.13, 81.26, 'Description', '2015-03-03 00:00:50'),
(10, 'Bhopal', '', 'city', 23.16, 77.36, 'Description', '2015-03-03 00:00:50'),
(11, 'Bhubhneshwar', '', 'city', 20.15, 85.52, 'Description', '2015-03-03 00:00:50'),
(12, 'Calicut', '', 'city', 11.15, 75.46, 'Description', '2015-03-03 00:00:50'),
(13, 'Chandigarh', '', 'city', 30.44, 76.55, 'Description', '2015-03-03 00:00:50'),
(14, 'Chennai', '', 'city', 13.04, 80.17, 'Description', '2015-03-03 00:00:50'),
(15, 'Cochin', '', 'city', 9.58, 76.14, 'Description', '2015-03-03 00:00:50'),
(16, 'Coimbatore', '', 'city', 11, 77, 'Description', '2015-03-03 00:00:50'),
(17, 'Dehradun', '', 'city', 30.19, 78.02, 'Description', '2015-03-03 00:00:50'),
(18, 'Delhi', '', 'city', 28.38, 77.12, 'Description', '2015-03-03 00:00:50'),
(19, 'Dharwad', '', 'city', 15.3, 75.04, 'Description', '2015-03-03 00:00:50'),
(20, 'Faridabad', '', 'city', 28.25, 77.22, 'Description', '2015-03-03 00:00:50'),
(21, 'Ghaziabad', '', 'city', 28.4, 77.28, 'Description', '2015-03-03 00:00:50'),
(22, 'Guntur', '', 'city', 16.18, 80.29, 'Description', '2015-03-03 00:00:50'),
(23, 'Gurgaon', '', 'city', 28.28, 77.02, 'Description', '2015-03-03 00:00:50'),
(24, 'Gwalior', '', 'city', 26.14, 78.1, 'Description', '2015-03-03 00:00:50'),
(25, 'Haridwar', '', 'city', 29.58, 78.13, 'Description', '2015-03-03 00:00:50'),
(26, 'Hubli', '', 'city', 15.2, 75.12, 'Description', '2015-03-03 00:00:50'),
(27, 'Hyderabad', '', 'city', 17.23, 78.29, 'Description', '2015-03-03 00:00:50'),
(28, 'Indore', '', 'city', 22.44, 75.5, 'Description', '2015-03-03 00:00:50'),
(29, 'Jabalpur', '', 'city', 23.1, 79.59, 'Description', '2015-03-03 00:00:50'),
(30, 'Jagadhri', '', 'city', 30.1, 77.2, 'Description', '2015-03-03 00:00:50'),
(31, 'Jaipur', '', 'city', 26.55, 75.52, 'Description', '2015-03-03 00:00:50'),
(32, 'Jalandhar', '', 'city', 31.18, 75.4, 'Description', '2015-03-03 00:00:50'),
(33, 'Jamshedpur', '', 'city', 22.5, 86.1, 'Description', '2015-03-03 00:00:50'),
(34, 'Jodhpur', '', 'city', 26.18, 73.04, 'Description', '2015-03-03 00:00:50'),
(35, 'Kanpur', '', 'city', 26.28, 80.24, 'Description', '2015-03-03 00:00:50'),
(36, 'Kolkata', '', 'city', 22.34, 88.24, 'Description', '2015-03-03 00:00:50'),
(37, 'Kota', '', 'city', 25.1, 75.52, 'Description', '2015-03-03 00:00:50'),
(38, 'Kottayam', '', 'city', 9.36, 76.34, 'Description', '2015-03-03 00:00:50'),
(39, 'Lucknow', '', 'city', 26.55, 80.59, 'Description', '2015-03-03 00:00:50'),
(40, 'Ludhiana', '', 'city', 30.54, 75.51, 'Description', '2015-03-03 00:00:50'),
(41, 'Madurai', '', 'city', 9.58, 78.1, 'Description', '2015-03-03 00:00:50'),
(42, 'Mangalore', '', 'city', 12.52, 74.53, 'Description', '2015-03-03 00:00:50'),
(43, 'Meerut', '', 'city', 28.59, 77.42, 'Description', '2015-03-03 00:00:50'),
(44, 'Mumbai', '', 'city', 18.55, 72.54, 'Description', '2015-03-03 00:00:50'),
(45, 'Muzaffarnagar', '', 'city', 30.27, 78.06, 'Description', '2015-03-03 00:00:50'),
(46, 'Mysore', '', 'city', 12.18, 76.42, 'Description', '2015-03-03 00:00:50'),
(47, 'Nagpur', '', 'city', 21.09, 79.09, 'Description', '2015-03-03 00:00:50'),
(48, 'Nainital', '', 'city', 29.23, 79.27, 'Description', '2015-03-03 00:00:50'),
(49, 'Nasik', '', 'city', 20.02, 73.5, 'Description', '2015-03-03 00:00:50'),
(50, 'Noida', '', 'city', 28.2, 70.3, 'Description', '2015-03-03 00:00:50'),
(51, 'Patiala', '', 'city', 30.2, 76.25, 'Description', '2015-03-03 00:00:50'),
(52, 'Patna', '', 'city', 25.36, 85.07, 'Description', '2015-03-03 00:00:50'),
(53, 'Pune', '', 'city', 18.32, 73.52, 'Description', '2015-03-03 00:00:50'),
(54, 'Raipur', '', 'city', 21.15, 81.41, 'Description', '2015-03-03 00:00:50'),
(55, 'Rajkot', '', 'city', 22.18, 70.56, 'Description', '2015-03-03 00:00:50'),
(56, 'Rishikesh', '', 'city', 29.57, 78.1, 'Description', '2015-03-03 00:00:50'),
(57, 'Roorkee', '', 'city', 29.52, 77.53, 'Description', '2015-03-03 00:00:50'),
(58, 'Saharanpur', '', 'city', 29.58, 77.23, 'Description', '2015-03-03 00:00:50'),
(59, 'Salem', '', 'city', 11.39, 78.1, 'Description', '2015-03-03 00:00:50'),
(60, 'Simla', '', 'city', 31.06, 77.13, 'Description', '2015-03-03 00:00:50'),
(61, 'Surat', '', 'city', 21.12, 72.55, 'Description', '2015-03-03 00:00:50'),
(62, 'Thiruvananthapuram', '', 'city', 8.29, 76.55, 'Description', '2015-03-03 00:00:50'),
(63, 'Udaipur', '', 'city', 27.42, 75.33, 'Description', '2015-03-03 00:00:50'),
(64, 'Vadodra', '', 'city', 22, 73.16, 'Description', '2015-03-03 00:00:50'),
(65, 'Varanasi', '', 'city', 25.2, 83, 'Description', '2015-03-03 00:00:50'),
(66, 'Vijayawada', '', 'city', 16.31, 80.39, 'Description', '2015-03-03 00:00:50'),
(67, 'Vishakapatnam', '', 'city', 17.45, 83.2, 'Description', '2015-03-03 00:00:50'),
(72, 'Panna, Madhya Pradesh, India', '', 'point_of_interest', 24.718, 80.1819, NULL, '2015-03-14 17:56:21'),
(73, 'Katni, Madhya Pradesh, India', '', 'point_of_interest', 23.8308, 80.4072, NULL, '2015-03-15 01:33:17'),
(74, 'Satna, Pateri, Madhya Pradesh, India', '', 'point_of_interest', 24.5155, 80.8613, NULL, '2015-03-15 01:35:42'),
(75, 'Frankie Johnnie & Luigo Too', '939 W El Camino Real, Mountain View, CA', '', 37.3863, -122.086, NULL, '2015-03-19 00:45:42'),
(76, 'Amici''s East Coast Pizzeria', '790 Castro St, Mountain View, CA', '', 37.3871, -122.083, NULL, '2015-03-19 00:45:42'),
(77, 'Kapp''s Pizza Bar & Grill', '191 Castro St, Mountain View, CA', '', 37.3939, -122.079, NULL, '2015-03-19 00:45:43'),
(78, 'Round Table Pizza: Mountain View', '570 N Shoreline Blvd, Mountain View, CA', '', 37.4027, -122.079, NULL, '2015-03-19 00:45:43'),
(79, 'Tony & Alba''s Pizza & Pasta', '619 Escuela Ave, Mountain View, CA', '', 37.394, -122.096, NULL, '2015-03-19 00:45:43'),
(80, 'Oregano''s Wood-Fired Pizza', '4546 El Camino Real, Los Altos, CA', '', 37.4017, -122.115, NULL, '2015-03-19 00:45:43'),
(81, 'Round Table Pizza: Sunnyvale-Mary-Central Expy', '415 N Mary Ave, Sunnyvale, CA', '', 37.39, -122.042, NULL, '2015-03-19 00:45:43'),
(82, 'Giordano''s', '730 N Rush St, Chicago, IL', '', 41.8957, -87.6254, NULL, '2015-03-19 00:45:43'),
(83, 'Filippi''s Pizza Grotto', '1747 India St, San Diego, CA', '', 32.7238, -117.168, NULL, '2015-03-19 00:45:43'),
(84, 'Lou Malnati''s Pizzeria', '439 N Wells St, Chicago, IL', '', 41.8903, -87.6339, NULL, '2015-03-19 00:45:43'),
(85, 'Sammy''s Woodfired Pizza', '770 4th Ave, San Diego, CA', '', 32.7134, -117.161, NULL, '2015-03-19 00:45:43'),
(86, 'Casa Bianca Pizza Pie', '1650 Colorado Blvd, Los Angeles, CA', '', 34.1392, -118.205, NULL, '2015-03-19 00:45:43'),
(87, 'Parkway Grill', '510 S Arroyo Pkwy, Pasadena, CA', '', 34.137, -118.147, NULL, '2015-03-19 00:45:43'),
(88, 'Pizzeria Paradiso', '2029 P St NW, Washington, DC', '', 38.9096, -77.0459, NULL, '2015-03-19 00:45:43'),
(89, 'Star Pizza', '2111 Norfolk St, Houston, TX', '', 29.7325, -95.4111, NULL, '2015-03-19 00:45:43'),
(90, 'Tutta Bella Neapolitan Pizzera', '4918 Rainier Ave S, Seattle, WA', '', 47.5577, -122.285, NULL, '2015-03-19 00:45:43'),
(91, 'Touche Pasta Pizza Pool', '1425 NW Glisan St, Portland, OR', '', 45.5265, -122.686, NULL, '2015-03-19 00:45:43'),
(92, 'Piecora''s New York Pizza', '1401 E Madison St, Seattle, WA', '', 47.614, -122.314, NULL, '2015-03-19 00:45:43'),
(93, 'Pagliacci Pizza', '550 Queen Anne Ave N, Seattle, WA', '', 47.6239, -122.357, NULL, '2015-03-19 00:45:43'),
(94, 'Zeeks Pizza - Phinney Ridge', '6000 Phinney Ave N, Seattle, WA', '', 47.6727, -122.354, NULL, '2015-03-19 00:45:43'),
(95, 'Old Town Pizza', '226 NW Davis St, Portland, OR', '', 45.5246, -122.673, NULL, '2015-03-19 00:45:43'),
(96, 'Zeeks Pizza - Belltown', '419 Denny Way, Seattle, WA', '', 47.6183, -122.348, NULL, '2015-03-19 00:45:43'),
(97, 'Escape From New York Pizza', '622 NW 23rd Ave, Portland, OR', '', 45.5271, -122.699, NULL, '2015-03-19 00:45:44'),
(98, 'Big Fred''s Pizza Garden', '1101 S 119th St, Omaha, NE', '', 41.2487, -96.0988, NULL, '2015-03-19 00:45:44'),
(99, 'Old Chicago', '1111 Harney St, Omaha, NE', '', 41.2565, -95.9307, NULL, '2015-03-19 00:45:44'),
(100, 'Sgt Peffer''s Cafe Italian', '1501 N Saddle Creek Rd, Omaha, NE', '', 41.2731, -95.9878, NULL, '2015-03-19 00:45:44'),
(101, 'Mama''s Pizza', '715 N Saddle Creek Rd, Omaha, NE', '', 41.2659, -95.9807, NULL, '2015-03-19 00:45:44'),
(102, 'Zio''s New York Style Pizzeria', '1213 Howard St, Omaha, NE', '', 41.2555, -95.932, NULL, '2015-03-19 00:45:44'),
(103, 'Boston''s Restaurant & Sports', '620 E Disk Dr, Rapid City, SD', '', 44.1069, -103.205, NULL, '2015-03-19 00:45:44'),
(104, 'Zio''s New York Style Pizzeria', '7834 W Dodge Rd, Omaha, NE', '', 41.2632, -96.0564, NULL, '2015-03-19 00:45:44'),
(105, 'La Casa Pizzaria', '4432 Leavenworth St, Omaha, NE', '', 41.2524, -95.9796, NULL, '2015-03-19 00:45:44'),
(106, 'Giordano''s', '730 N Rush St, Chicago, IL', '', 41.8957, -87.6254, NULL, '2015-03-19 00:45:44'),
(107, 'Lou Malnati''s Pizzeria', '439 N Wells St, Chicago, IL', '', 41.8903, -87.6339, NULL, '2015-03-19 00:45:44'),
(108, 'Piece Restaurant', '1927 W North Ave, Chicago, IL', '', 41.9105, -87.6761, NULL, '2015-03-19 00:45:44'),
(109, 'Connie''s Pizza Inc', '2373 S Archer Ave, Chicago, IL', '', 41.8492, -87.6417, NULL, '2015-03-19 00:45:44'),
(110, 'Exchequer Restaurant', '226 S Wabash Ave, Chicago, IL', '', 41.8792, -87.6261, NULL, '2015-03-19 00:45:44'),
(111, 'Coco''s By The Falls', '5339 Murray Street, Niagara Falls, Ontario', '', 43.0836, -79.0827, NULL, '2015-03-19 00:45:44'),
(112, 'Pompei', '1531 W Taylor St, Chicago, IL', '', 41.8693, -87.6648, NULL, '2015-03-19 00:45:44'),
(113, 'Lynn''s Paradise Cafe', '984 Barret Ave, Louisville, KY', '', 38.2369, -85.7285, NULL, '2015-03-19 00:45:44'),
(114, 'Otto Restaurant Enoteca Pizza', '1 5th Ave, New York, NY', '', 40.7322, -73.9963, NULL, '2015-03-19 00:45:44'),
(115, 'Grimaldi''s', '19 Old Fulton St, Brooklyn, NY', '', 40.7025, -73.9937, NULL, '2015-03-19 00:45:44'),
(116, 'Lombardi''s', '32 Spring St, New York, NY', '', 40.7217, -73.9956, NULL, '2015-03-19 00:45:44'),
(117, 'John''s Pizzeria', '278 Bleecker St, New York, NY', '', 40.7317, -74.0033, NULL, '2015-03-19 00:45:44'),
(118, 'John''s Pizzeria', '260 W 44th St, New York, NY', '', 40.7581, -73.9877, NULL, '2015-03-19 00:45:44'),
(119, 'Burger Joint', '2175 Broadway, New York, NY', '', 40.7824, -73.981, NULL, '2015-03-19 00:45:44'),
(120, 'Frank Pepe Pizzeria Napoletana', '157 Wooster St, New Haven, CT', '', 41.3028, -72.917, NULL, '2015-03-19 00:45:44'),
(121, 'Adrianne''s Pizza Bar', '54 Stone St, New York, NY', '', 40.7045, -74.0101, NULL, '2015-03-19 00:45:44'),
(122, 'Pizzeria Regina: Regina Pizza', '11 1/2 Thacher St, Boston, MA', '', 42.3653, -71.0568, NULL, '2015-03-19 00:45:44'),
(123, 'Upper Crust', '20 Charles St, Boston, MA', '', 42.3566, -71.0697, NULL, '2015-03-19 00:45:45'),
(124, 'Bertucci''s Brick Oven Rstrnt', '4 Brookline Pl, Brookline, MA', '', 42.3319, -71.1153, NULL, '2015-03-19 00:45:45'),
(125, 'Aquitaine', '569 Tremont St, Boston, MA', '', 42.3436, -71.0723, NULL, '2015-03-19 00:45:45'),
(126, 'Bertucci''s Brick Oven Rstrnt', '43 Stanhope St, Boston, MA', '', 42.3483, -71.0732, NULL, '2015-03-19 00:45:45'),
(127, 'Upper Crust', '286 Harvard St, Brookline, MA', '', 42.3429, -71.1223, NULL, '2015-03-19 00:45:45'),
(128, 'Bertucci''s Brick Oven Rstrnt', '799 Main St, Cambridge, MA', '', 42.3633, -71.0972, NULL, '2015-03-19 00:45:45'),
(129, 'Bertucci''s Brick Oven Rstrnt', '22 Merchants Row, Boston, MA', '', 42.3591, -71.0555, NULL, '2015-03-19 00:45:45'),
(130, 'Vinnie Van Go-Go''s', '317 W Bryan St, Savannah, GA', '', 32.0812, -81.095, NULL, '2015-03-19 00:45:45'),
(131, 'Domino''s Pizza: Myrtle Beach', '1706 S Kings Hwy # A, Myrtle Beach, SC', '', 33.6749, -78.9051, NULL, '2015-03-19 00:45:45'),
(132, 'East of Chicago Pizza Company', '3901 North Kings Highway Suite 1, Myrtle Beach, SC', '', 33.7161, -78.8556, NULL, '2015-03-19 00:45:45'),
(133, 'Villa Tronco Italian Rstrnt', '1213 Blanding St, Columbia, SC', '', 34.008, -81.0363, NULL, '2015-03-19 00:45:45'),
(134, 'Mellow Mushroom Pizza Bakers', '11 W Liberty St, Savannah, GA', '', 32.0747, -81.0937, NULL, '2015-03-19 00:45:45'),
(135, 'Andolinis Pizza', '82 Wentworth St, Charleston, SC', '', 32.7823, -79.9342, NULL, '2015-03-19 00:45:45'),
(136, 'Mellow Mushroom Pizza Bakers', '259 E Broad St, Athens, GA', '', 33.9578, -83.3747, NULL, '2015-03-19 00:45:45'),
(137, 'Bucks Pizza of Edisto Beach Inc', '114 Jungle Rd, Edisto Island, SC', '', 32.504, -80.298, NULL, '2015-03-19 00:45:45'),
(138, 'Anthony''s Coal Fired Pizza', '2203 S Federal Hwy, Fort Lauderdale, FL', '', 26.0947, -80.1367, NULL, '2015-03-19 00:45:45'),
(139, 'Giordano''s', '12151 S Apopka Vineland Rd, Orlando, FL', '', 28.3894, -81.5062, NULL, '2015-03-19 00:45:45'),
(140, 'Pizza Rustica', '863 Washington Ave, Miami Beach, FL', '', 25.7791, -80.1331, NULL, '2015-03-19 00:45:45'),
(141, 'Mama Jennie''s Italian Restaurant', '11720 Ne 2nd Ave, North Miami, FL', '', 25.8828, -80.1943, NULL, '2015-03-19 00:45:45'),
(142, 'Anthony''s Coal Fired Pizza', '17901 Biscayne Blvd, Aventura, FL', '', 25.9411, -80.1488, NULL, '2015-03-19 00:45:45'),
(143, 'Anthony''s Coal Fired Pizza', '4527 Weston Rd, Weston, FL', '', 26.0654, -80.3624, NULL, '2015-03-19 00:45:45'),
(144, 'Mario the Baker Pizza & Italian Restaurant', '13695 W Dixie Hwy, North Miami, FL', '', 25.9297, -80.1561, NULL, '2015-03-19 00:45:45'),
(145, 'Big Cheese Pizza', '8080 SW 67th Ave, Miami, FL', '', 25.696, -80.3011, NULL, '2015-03-19 00:45:45'),
(146, 'Ingleside Village Pizza', '2396 Ingleside Ave, Macon, GA', '', 32.8538, -83.6574, NULL, '2015-03-19 00:45:45'),
(147, 'Ciao Bella Pizza Da Guglielmo', '29 Highway 98 E, Destin, FL', '', 30.3956, -86.5121, NULL, '2015-03-19 00:45:45'),
(148, 'Papa John''s Pizza', '810 Russell Pkwy, Warner Robins, GA', '', 32.5939, -83.6371, NULL, '2015-03-19 00:45:45'),
(149, 'Papa John''s Pizza: East Central Montgomery', '2525 Madison Ave, Montgomery, AL', '', 32.3811, -86.273, NULL, '2015-03-19 00:45:46'),
(150, 'Cici''s Pizza', '6268 Atlanta Hwy, Montgomery, AL', '', 32.3822, -86.1907, NULL, '2015-03-19 00:45:46'),
(151, 'Papa John''s Pizza', '1210 E Jackson St, Thomasville, GA', '', 30.8491, -83.9634, NULL, '2015-03-19 00:45:46'),
(152, 'Papa John''s Pizza', '711 N Westover Blvd # G, Albany, GA', '', 31.614, -84.2231, NULL, '2015-03-19 00:45:46'),
(153, 'Mellow Mushroom Pizza Bakers', '6100 Veterans Pkwy, Columbus, GA', '', 32.5321, -84.9559, NULL, '2015-03-19 00:45:46'),
(154, 'Star Pizza', '2111 Norfolk St, Houston, TX', '', 29.7325, -95.4111, NULL, '2015-03-19 00:45:46'),
(155, 'Star Pizza II', '77 Harvard St, Houston, TX', '', 29.7708, -95.396, NULL, '2015-03-19 00:45:46'),
(156, 'Brothers Pizzeria', '1029 Highway 6 N # 100, Houston, TX', '', 29.7683, -95.6436, NULL, '2015-03-19 00:45:46'),
(157, '11th Street Cafe Inc', '748 E 11th St, Houston, TX', '', 29.7908, -95.3889, NULL, '2015-03-19 00:45:46'),
(158, 'California Pizza Kitchen', '1705 Post Oak Blvd # A, Houston, TX', '', 29.7502, -95.4612, NULL, '2015-03-19 00:45:46'),
(159, 'Collina''s Italian Cafe', '3835 Richmond Ave, Houston, TX', '', 29.7326, -95.439, NULL, '2015-03-19 00:45:46'),
(160, 'Barry''s Pizza & Italian Diner', '6003 Richmond Ave, Houston, TX', '', 29.7314, -95.4844, NULL, '2015-03-19 00:45:46'),
(161, 'Mario''s Seawall Italian Restaurant', '628 Seawall Blvd, Galveston, TX', '', 29.3045, -94.7726, NULL, '2015-03-19 00:45:46'),
(162, 'Campisi''s Egyptian Restaurant', '5610 E Mockingbird Ln, Dallas, TX', '', 32.8365, -96.7718, NULL, '2015-03-19 00:45:46'),
(163, 'Fat Joe''s Pizza Pasta & Bar', '4721 W Park Blvd # 101, Plano, TX', '', 33.0271, -96.7889, NULL, '2015-03-19 00:45:46'),
(164, 'Saccone''s Pizza', '13812 N Highway 183, Austin, TX', '', 29.5695, -97.9647, NULL, '2015-03-19 00:45:46'),
(165, 'Fireside Pies', '2820 N Henderson Ave, Dallas, TX', '', 32.8198, -96.7841, NULL, '2015-03-19 00:45:46'),
(166, 'Romeo''s', '1500 Barton Springs Rd, Austin, TX', '', 30.2615, -97.76, NULL, '2015-03-19 00:45:46'),
(167, 'Sandella''s Cafe', '5910 N Macarthur Blvd, Irving, TX', '', 32.892, -96.9612, NULL, '2015-03-19 00:45:46'),
(168, 'Mangia Chicago Stuffed Pizza', '3500 Guadalupe St, Austin, TX', '', 30.3015, -97.7391, NULL, '2015-03-19 00:45:46'),
(169, 'Frank & Angie''s', '508 West Ave, Austin, TX', '', 30.2694, -97.7509, NULL, '2015-03-19 00:45:47'),
(170, 'Filippi''s Pizza Grotto', '1747 India St, San Diego, CA', '', 32.7238, -117.168, NULL, '2015-03-19 00:45:47'),
(171, 'Pizzeria Bianco', '623 E Adams St, Phoenix, AZ', '', 33.4494, -112.066, NULL, '2015-03-19 00:45:47'),
(172, 'Sammy''s Woodfired Pizza', '770 4th Ave, San Diego, CA', '', 32.7134, -117.161, NULL, '2015-03-19 00:45:47'),
(173, 'Casa Bianca Pizza Pie', '1650 Colorado Blvd, Los Angeles, CA', '', 34.1392, -118.205, NULL, '2015-03-19 00:45:47'),
(174, 'Parkway Grill', '510 S Arroyo Pkwy, Pasadena, CA', '', 34.137, -118.147, NULL, '2015-03-19 00:45:47'),
(175, 'California Pizza Kitchen', '330 S Hope St, Los Angeles, CA', '', 34.0533, -118.253, NULL, '2015-03-19 00:45:47'),
(176, 'B J''s Pizza & Grill', '200 Main St # 101, Huntington Beach, CA', '', 33.6581, -118.001, NULL, '2015-03-19 00:45:47'),
(177, 'B J''s Restaurant & Brewhouse', '280 S Coast Hwy, Laguna Beach, CA', '', 33.5421, -117.784, NULL, '2015-03-19 00:45:47'),
(178, 'Giuseppe''s Depot Restaurant', '10 S Sierra Madre St, Colorado Springs, CO', '', 38.8345, -104.828, NULL, '2015-03-19 00:45:47'),
(179, 'Beau Jo''s Pizza', '2710 S Colorado Blvd, Denver, CO', '', 39.6673, -104.941, NULL, '2015-03-19 00:45:47'),
(180, 'Pasquini''s Pizzeria', '1310 S Broadway, Denver, CO', '', 39.6928, -104.987, NULL, '2015-03-19 00:45:47'),
(181, 'Fargos Pizza Co', '2910 E Platte Ave, Colorado Springs, CO', '', 38.8398, -104.774, NULL, '2015-03-19 00:45:47'),
(182, 'Old Chicago', '1415 Market St, Denver, CO', '', 39.7482, -105.001, NULL, '2015-03-19 00:45:47'),
(183, 'Sink', '1165 13th St, Boulder, CO', '', 40.0082, -105.276, NULL, '2015-03-19 00:45:47'),
(184, 'Ligori''s Pizza & Pasta', '4421 Harrison Blvd, Ogden, UT', '', 41.1827, -111.949, NULL, '2015-03-19 00:45:47'),
(185, 'Old Chicago', '1102 Pearl St, Boulder, CO', '', 40.0176, -105.281, NULL, '2015-03-19 00:45:47'),
(186, 'Boston''s Restaurant & Sports', '620 E Disk Dr, Rapid City, SD', '', 44.1069, -103.205, NULL, '2015-03-19 00:45:47'),
(187, 'Chuck E Cheese''s Pizza', '100 24th St W # B, Billings, MT', '', 45.7714, -108.576, NULL, '2015-03-19 00:45:47'),
(188, 'Space Aliens Grill & Bar', '1304 E Century Ave, Bismarck, ND', '', 46.8381, -100.772, NULL, '2015-03-19 00:45:47'),
(189, '2nd Street Bistro', '123 North 2nd Street, Livingston, MT', '', 45.661, -110.561, NULL, '2015-03-19 00:45:47'),
(190, 'Domino''s Pizza', '1524 S Broadway # 1, Minot, ND', '', 48.2197, -101.296, NULL, '2015-03-19 00:45:47'),
(191, 'American Classic Pizzeria', '1744 Grand Ave, Billings, MT', '', 45.7841, -108.56, NULL, '2015-03-19 00:45:47'),
(192, 'Godfather''s Pizza', '905 Main St, Billings, MT', '', 45.8151, -108.471, NULL, '2015-03-19 00:45:47'),
(193, 'Papa John''s Pizza', '605 Main St, Billings, MT', '', 45.8102, -108.472, NULL, '2015-03-19 00:45:47'),
(194, 'Aardvark Pizza & Sub', '304A Caribou St, Banff, AB', '', 51.1765, -115.571, NULL, '2015-03-19 00:45:47'),
(195, 'Jasper Pizza Place', '402 Connaught Dr, Jasper, AB', '', 52.8791, -118.079, NULL, '2015-03-19 00:45:47'),
(196, 'Odyssey Pizza & Steak House', '3-3814 Bow Trail SW, Calgary, AB', '', 51.0452, -114.141, NULL, '2015-03-19 00:45:48'),
(197, 'Basil''s Pizza', '2118 33 Avenue SW, Calgary, AB', '', 51.024, -114.11, NULL, '2015-03-19 00:45:48'),
(198, 'Castle Pizza & Donair', '7724 Elbow Drive SW, Calgary, AB', '', 50.9845, -114.083, NULL, '2015-03-19 00:45:48'),
(199, 'Santa Lucia Italian Restaurant', '714 8 St, Canmore, AB', '', 51.0892, -115.359, NULL, '2015-03-19 00:45:48'),
(200, 'Tops Pizza & Steak House No 3', '7-5602 4 Street NW, Calgary, AB', '', 51.1012, -114.071, NULL, '2015-03-19 00:45:48'),
(201, 'Evvia Restaurant', '837 Main St, Canmore, AB', '', 51.0892, -115.362, NULL, '2015-03-19 00:45:48'),
(202, 'D&#39;Bronx', '3904 Bell St, Kansas City, MO', '', 39.0572, -94.6061, NULL, '2015-03-19 00:45:48'),
(203, 'Cicero''s Restaurant & Entrtnmt', '6691 Delmar Blvd, St Louis, MO', '', 38.6563, -90.3084, NULL, '2015-03-19 00:45:48'),
(204, 'Hideaway Pizza', '6616 N Western Ave, Oklahoma City, OK', '', 35.5391, -97.5298, NULL, '2015-03-19 00:45:48'),
(205, 'Fortel''s Pizza Den', '7932 Mackenzie Rd, St Louis, MO', '', 38.5664, -90.3208, NULL, '2015-03-19 00:45:48'),
(206, 'Hideaway Pizza', '7877 E 51st St, Tulsa, OK', '', 36.0899, -95.8892, NULL, '2015-03-19 00:45:48'),
(207, 'Farotto''s Catering', '9525 Manchester Rd, Webster Groves, MO', '', 38.6093, -90.3644, NULL, '2015-03-19 00:45:48'),
(208, 'California Pizza Kitchen', '1493 Saint Louis Galleria, St Louis, MO', '', 38.6336, -90.3459, NULL, '2015-03-19 00:45:48'),
(209, 'D''Bronx', '2450 Grand Blvd # 124, Kansas City, MO', '', 39.0827, -94.5818, NULL, '2015-03-19 00:45:48'),
(210, 'Giuseppe''s Depot Restaurant', '10 S Sierra Madre St, Colorado Springs, CO', '', 38.8345, -104.828, NULL, '2015-03-19 00:45:48'),
(211, 'Beau Jo''s Pizza', '2710 S Colorado Blvd, Denver, CO', '', 39.6673, -104.941, NULL, '2015-03-19 00:45:48'),
(212, 'Pasquini''s Pizzeria', '1310 S Broadway, Denver, CO', '', 39.6928, -104.987, NULL, '2015-03-19 00:45:48'),
(213, 'Fargos Pizza Co', '2910 E Platte Ave, Colorado Springs, CO', '', 38.8398, -104.774, NULL, '2015-03-19 00:45:48'),
(214, 'Old Chicago', '1415 Market St, Denver, CO', '', 39.7482, -105.001, NULL, '2015-03-19 00:45:48'),
(215, 'Sink', '1165 13th St, Boulder, CO', '', 40.0082, -105.276, NULL, '2015-03-19 00:45:48'),
(216, 'Old Chicago', '1102 Pearl St, Boulder, CO', '', 40.0176, -105.281, NULL, '2015-03-19 00:45:48'),
(217, 'Gondolier', '1738 Pearl St, Boulder, CO', '', 40.0193, -105.273, NULL, '2015-03-19 00:45:48'),
(218, 'Ligori''s Pizza & Pasta', '4421 Harrison Blvd, Ogden, UT', '', 41.1827, -111.949, NULL, '2015-03-19 00:45:48'),
(219, 'Brick Oven Restaurant', '111 E 800 N, Provo, UT', '', 40.2445, -111.656, NULL, '2015-03-19 00:45:48'),
(220, 'Zachary''s Chicago Pizza', '5801 College Ave, Oakland, CA', '', 37.8462, -122.252, NULL, '2015-03-19 00:45:48'),
(221, 'Zachary''s Chicago Pizza', '1853 Solano Ave, Berkeley, CA', '', 37.8914, -122.278, NULL, '2015-03-19 00:45:48'),
(222, 'Cheese Board Pizza', '1512 Shattuck Ave, Berkeley, CA', '', 37.88, -122.269, NULL, '2015-03-19 00:45:48'),
(223, 'Goat Hill Pizza', '300 Connecticut St, San Francisco, CA', '', 37.7624, -122.398, NULL, '2015-03-19 00:45:48'),
(224, 'Tommaso Ristorante Italiano', '1042 Kearny St, San Francisco, CA', '', 37.7974, -122.405, NULL, '2015-03-19 00:45:49'),
(225, 'Little Star Pizza LLC', '846 Divisadero St, San Francisco, CA', '', 37.7775, -122.438, NULL, '2015-03-19 00:45:49'),
(226, 'Pauline''s Pizza', '260 Valencia, San Francisco, CA', '', 37.7687, -122.422, NULL, '2015-03-19 00:45:49'),
(227, 'Villa Romana Pizzeria & Rstrnt', '731 Irving St, San Francisco, CA', '', 37.7641, -122.466, NULL, '2015-03-19 00:45:49'),
(228, 'Amici''s East Coast Pizzeria', '69 E 3rd Ave, San Mateo, CA', '', 37.5639, -122.325, NULL, '2015-03-19 00:45:49'),
(229, 'Amici''s East Coast Pizzeria', '226 Redwood Shores Pkwy, Redwood City, CA', '', 37.5205, -122.252, NULL, '2015-03-19 00:45:49'),
(230, 'North Beach Pizza', '240 E 3rd Ave, San Mateo, CA', '', 37.5653, -122.323, NULL, '2015-03-19 00:45:49'),
(231, 'Patxi''s Chicago Pizza', '441 Emerson St, Palo Alto, CA', '', 37.4451, -122.164, NULL, '2015-03-19 00:45:49'),
(232, 'Pizz''a Chicago', '4115 El Camino Real, Palo Alto, CA', '', 37.4141, -122.126, NULL, '2015-03-19 00:45:49'),
(233, 'California Pizza Kitchen', '531 Cowper St, Palo Alto, CA', '', 37.4481, -122.159, NULL, '2015-03-19 00:45:49'),
(234, 'Windy City Pizza', '35 Bovet Rd, San Mateo, CA', '', 37.5516, -122.315, NULL, '2015-03-19 00:45:49'),
(235, 'Applewood Pizza 2 Go', '1001 El Camino Real, Menlo Park, CA', '', 37.453, -122.182, NULL, '2015-03-19 00:45:49'),
(236, 'Pizza Antica', '334 Santana Row # 1065, San Jose, CA', '', 37.3218, -121.948, NULL, '2015-03-19 00:45:49'),
(237, 'Pizz''a Chicago', '155 W San Fernando St, San Jose, CA', '', 37.3333, -121.892, NULL, '2015-03-19 00:45:49'),
(238, 'House of Pizza', '527 S Almaden Ave, San Jose, CA', '', 37.3264, -121.888, NULL, '2015-03-19 00:45:49'),
(239, 'Amici''s East Coast Pizzeria', '225 W Santa Clara St, San Jose, CA', '', 37.3347, -121.894, NULL, '2015-03-19 00:45:49'),
(240, 'Fiorillo''s Restaurant', '638 El Camino Real, Santa Clara, CA', '', 37.3546, -121.943, NULL, '2015-03-19 00:45:49'),
(241, 'Tony & Alba''s Pizza & Pasta', '3137 Stevens Creek Blvd, San Jose, CA', '', 37.3233, -121.952, NULL, '2015-03-19 00:45:49'),
(242, 'Giorgio''s', '1445 Foxworthy Ave, San Jose, CA', '', 37.2746, -121.893, NULL, '2015-03-19 00:45:49'),
(243, 'Round Table Pizza', '4302 Moorpark Ave, San Jose, CA', '', 37.3159, -121.978, NULL, '2015-03-19 00:45:49'),
(244, 'somalwada, nagpur', '', 'point_of_interest', 0, 0, NULL, '2015-06-15 04:21:46');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

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
(8, 71, 'Panna, Madhya Pradesh, India', '2015-03-15 01:32:48', 0);

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
-- Table structure for table `user_marker`
--

CREATE TABLE IF NOT EXISTS `user_marker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `marker_id` int(11) NOT NULL,
  `is_owner` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user_marker`
--

INSERT INTO `user_marker` (`id`, `user_id`, `marker_id`, `is_owner`) VALUES
(1, 1, 225, 0),
(2, 1, 226, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

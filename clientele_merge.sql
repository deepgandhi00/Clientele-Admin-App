-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2018 at 10:06 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clientele_merge`
--

-- --------------------------------------------------------

--
-- Table structure for table `address_detail`
--

CREATE TABLE `address_detail` (
  `add_id` int(11) NOT NULL,
  `shop_name_or_house_name` varchar(50) NOT NULL,
  `shop_no_or_house_no` int(20) DEFAULT NULL,
  `complex` varchar(50) DEFAULT NULL,
  `street_name` varchar(50) DEFAULT NULL,
  `society_name` varchar(50) DEFAULT NULL,
  `road` varchar(50) NOT NULL,
  `landmark` varchar(50) DEFAULT NULL,
  `mall_name` varchar(50) DEFAULT NULL,
  `street_no` int(11) DEFAULT NULL,
  `society_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address_detail`
--

INSERT INTO `address_detail` (`add_id`, `shop_name_or_house_name`, `shop_no_or_house_no`, `complex`, `street_name`, `society_name`, `road`, `landmark`, `mall_name`, `street_no`, `society_no`) VALUES
(1, 'shree-ram1', 70, NULL, 'sadguru-park', 'somnath', '150ft.road', 'ford motor show room', NULL, NULL, 1),
(2, 'shree-ram2', 70, NULL, 'sadguru-park', 'somnath', '150ft.road', 'ford motor show room', NULL, NULL, 1),
(3, 'shree-ram3', 70, NULL, 'sadguru-park', 'somnath', '150ft.road', 'ford motor show room', NULL, NULL, 1),
(4, 'shree-ram4', 70, NULL, 'sadguru-park', 'somnath', '150ft.road', 'ford motor show room', NULL, NULL, 1),
(5, 'shree-ram5', 70, NULL, 'sadguru-park', 'somnath', '150ft.road', 'ford motor show room', NULL, NULL, 1),
(6, 'shree-ram6', 70, NULL, 'sadguru-park', 'somnath', '150ft.road', 'ford motor show room', NULL, NULL, 1),
(7, 'shree-ram7', 70, NULL, 'sadguru-park', 'somnath', '150ft.road', 'ford motor show room', NULL, NULL, 1),
(8, 'shree-ram8', 70, NULL, 'sadguru-park', 'somnath', '150ft.road', 'ford motor show room', NULL, NULL, 1),
(9, 'shree-ram9', 70, NULL, 'sadguru-park', 'somnath', '150ft.road', 'ford motor show room', NULL, NULL, 1),
(10, 'cascsac', 12, 'asdsadaadsda', 'asdsad', 'asdsad', 'asdasd', 'saddad', 'adsad', 61, 22),
(11, 'jhv', 9, 'kjkb', 'jbkjb', 'jhjv', 'hvjhv', 'hjvjhv', NULL, 9, 8),
(12, 'hjv', 8, 'jhvjv', 'jvjv', 'jvjvjv', 'hvhv', 'jvhjv', 'hvjh', 9, 9);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_photo` varchar(1000) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_pwd` varchar(100) DEFAULT NULL,
  `admin_contact` int(15) NOT NULL,
  `add_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_photo`, `admin_name`, `admin_email`, `admin_pwd`, `admin_contact`, `add_id`) VALUES
(1, '', 'af', 'a@b.c', 'asdf', 6565, 2),
(2, 'fdbsvd', 'dfb', 'sfb', 'svffb', 4853, NULL),
(4, 'ffff', 'af', 'a@b.c', 'asdf', 6565, 3);

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `bank_id` int(20) NOT NULL,
  `bank_name` varchar(50) NOT NULL,
  `bank_logo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`bank_id`, `bank_name`, `bank_logo`) VALUES
(2, 'AHMEDABAD MERCANTILE COOPERATIVE BANK', '2018132113621logo11.jpg'),
(3, 'ALLAHABAD BANK', '201813211395home-bg.jpg'),
(4, 'ANDHRA BANK', '201813211429beverages.jpg'),
(5, 'AXIS BANK', '2018132114310maggie11.jpg'),
(7, 'BANDHAN BANK LIMITED', '2018132114347coldcoffee.jpg'),
(8, 'BANK OF BARODA', '2018132114652beverages.jpg'),
(9, 'BANK OF INDIA', '2018132114748coldcoffee.jpg'),
(10, 'BANK OF MAHARASHTRA', '2018132114821beverages.jpg'),
(11, 'BHARAT COOPERATIVE BANK MUMBAI LIMITED', '2018132115017coldcoffee.jpg'),
(12, 'BHARATIYA MAHILA BANK LIMITED', '2018132115418logo11.jpg'),
(13, 'CANARA BANK', ''),
(14, 'CATHOLIC SYRIAN BANK LIMITED', ''),
(15, 'CENTRAL BANK OF INDIA', ''),
(16, 'CITI BANK', ''),
(17, 'CITY UNION BANK LIMITED', ''),
(18, 'CORPORATION BANK', ''),
(19, 'DCB BANK LIMITED', ''),
(20, 'DENA BANK', ''),
(21, 'DEUSTCHE BANK', ''),
(22, 'DEVELOPMENT BANK OF SINGAPORE', ''),
(23, 'DHANALAKSHMI BANK', ''),
(24, 'FEDERAL BANK', ''),
(25, 'HDFC BANK', ''),
(26, 'HSBC BANK', ''),
(27, 'ICICI BANK LIMITED', ''),
(28, 'IDBI BANK', ''),
(29, 'INDIAN BANK', ''),
(30, 'INDIAN OVERSEAS BANK', ''),
(31, 'INDUSIND BANK', ''),
(32, 'ING VYSYA BANK', ''),
(33, 'JAMMU AND KASHMIR BANK LIMITED', ''),
(34, 'INDIAN BANK', ''),
(35, 'KALUPUR COMMERCIAL COOPERATIVE BANK', ''),
(36, 'KAPOL COOPERATIVE BANK LIMITED', ''),
(37, 'KARNATAKA BANK LIMITED', ''),
(38, 'KARUR VYSYA BANK', ''),
(39, 'KOTAK MAHINDRA BANK LIMITED', ''),
(40, 'LAXMI VILAS BANK', ''),
(41, 'MIZUHO CORPORATE BANK LIMITED', ''),
(42, 'NEW INDIA COOPERATIVE BANK LIMITED', ''),
(43, 'NKGSB COOPERATIVE BANK LIMITED', ''),
(44, 'NUTAN NAGARIK SAHAKARI BANK LIMITED', ''),
(45, 'ORIENTAL BANK OF COMMERCE', ''),
(46, 'PRIME COOPERATIVE BANK LIMITED', ''),
(47, 'PUNJAB AND MAHARSHTRA COOPERATIVE BANK', ''),
(48, 'PUNJAB AND SIND BANK', ''),
(49, 'PUNJAB NATIONAL BANK', ''),
(50, 'RAJKOT NAGRIK SAHAKARI BANK LIMITED', ''),
(51, 'RATNAKAR BANK LIMITED', ''),
(52, 'RESERVE BANK OF INDIA', ''),
(53, 'SARASWAT COOPERATIVE BANK LIMITED', ''),
(54, 'SOUTH INDIAN BANK', ''),
(55, 'STANDARD CHARTERED BANK', ''),
(56, 'STATE BANK OF BIKANER AND JAIPUR', ''),
(57, 'STATE BANK OF HYDERABAD', ''),
(58, 'STATE BANK OF INDIA', ''),
(59, 'STATE BANK OF MYSORE', ''),
(60, 'STATE BANK OF PATIALA', ''),
(61, 'STATE BANK OF TRAVANCORE', ''),
(62, 'SURAT NATIONAL COOPERATIVE BANK LIMITED', ''),
(63, 'SUTEX COOPERATIVE BANK LIMITED', ''),
(64, 'SYNDICATE BANK', ''),
(65, 'TAMILNAD MERCANTILE BANK LIMITED', ''),
(66, 'THE COSMOS CO OPERATIVE BANK LIMITED', ''),
(67, 'THE GUJARAT STATE COOPERATIVE BANK LIMITED', ''),
(68, 'THE MEHSANA URBAN COOPERATIVE BANK', ''),
(69, 'THE NASIK MERCHANTS COOPERATIVE BANK LIMITED', ''),
(70, 'THE ROYAL BANK OF SCOTLAND N V', ''),
(71, 'THE SHAMRAO VITHAL COOPERATIVE BANK', ''),
(72, 'THE SURAT DISTRICT COOPERATIVE BANK LIMITED', ''),
(73, 'THE SURATH PEOPLES COOPERATIVE BANK LIMITED', ''),
(74, 'THE VARACHHA COOPERATIVE BANK LIMITED', ''),
(75, 'THE ZOROASTRIAN COOPERATIVE BANK LIMITED', ''),
(76, 'TJSB SAHAKARI BANK LIMITED', ''),
(77, 'TJSB SAHAKARI BANK LTD', ''),
(78, 'UCO BANK', ''),
(79, 'UNION BANK OF INDIA', ''),
(80, 'UNITED BANK OF INDIA', ''),
(81, 'VIJAYA BANK', ''),
(82, 'YES BANK', ''),
(83, 'nZBXknZX', '201815193327coldcoffee.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_image` varchar(50) NOT NULL,
  `category_desc` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_image`, `category_desc`) VALUES
(2, 'Ariel', '20180610222Ariel_banner.jpg', 'Ariel is a marketing line of laundry detergents made by Procter '),
(3, 'Gillette', '20180610345gillette_banner.jpg', 'Gillette is a brand of men\'s and women\'s safety razors and other personal care products including shaving supplies, owned by the multi-national corporation Procter '),
(4, 'Head and Shoulders', '201807101019Head_and_SHoulders_banner.png', 'Head and shoulders 1'),
(5, 'Olay', '20180610179Olay_banner.png', 'Olay, previously Oil of Olay, is an American skin care line. It is one of Procter '),
(6, 'Oral B', '20180792919Oralb_banner.jpg', 'Oral-B is a brand of oral hygiene products, including toothbrushes, toothpastes, electric toothbrushes, mouthwashes and dental floss.'),
(8, 'Pampers', '2018079353Pampers_banner.jpg', 'Pampers is an American name brand of baby and toddler products marketed by Procter '),
(9, 'Pantene', '20180793733Pantene_banner.png', 'Pantene is a brand of hair care products owned by Procter '),
(10, 'Tide', '20180793847Tide_banner.jpg', 'Tides are the rise and fall of sea levels caused by the combined effects of the gravitational forces exerted by the Moon and the Sun and the rotation of Earth.'),
(11, 'Vicks', '20180794022Vicks_banner.jpg', 'Vicks is an American brand of over-the-counter medications owned by the American company Procter '),
(12, 'Wella', '2018079415Wella_banner.jpg', 'Wella AG is a major German hair care company headquartered in Darmstadt, Germany. Founded in 1880 by Franz Ströher, it specializes in hair care, styling and colorants sold to individuals as well as hairdressers and was controlled by Procter '),
(13, 'asdsad', '2018132112315coldcoffee.jpg', 'asdsa'),
(14, 'assada', '2018132112341maggie11.jpg', 'asdasda'),
(15, 'fasd', '2018132112411midnight.png', 'sasads'),
(16, 'qwewqewqe', '2018132112623pasta.jpg', 'asdasdas'),
(18, 'asdasd', '2018132112654thickshake.jpg', 'asdasd');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city_id`, `city_name`) VALUES
(1, 'Adalaj'),
(2, 'Ahmedabad'),
(3, 'Ahwa'),
(4, 'Alang'),
(5, 'Ambaji'),
(6, 'Amod'),
(7, 'Amreli'),
(8, 'Amroli'),
(9, 'Anand'),
(10, 'Anjar'),
(11, 'Ankleshwar'),
(12, 'Arambhada'),
(13, 'Asarma'),
(14, 'Banaskantha'),
(15, 'Bansda'),
(16, 'Bantva'),
(17, 'Bardoli'),
(18, 'Bharuch'),
(19, 'Bhavnagar'),
(20, 'Bhayavadar'),
(21, 'Bhuj'),
(22, 'Bodakdev'),
(23, 'Bodeli'),
(24, 'Bopal'),
(25, 'Borsad'),
(26, 'Botad'),
(27, 'Cambay'),
(28, 'Chaklasi'),
(29, 'Chandkheda'),
(30, 'Chanod'),
(31, 'Chhaprabhatha'),
(32, 'Chotila'),
(33, 'Dahod'),
(34, 'Dakor'),
(35, 'Deesa'),
(36, 'Delvada'),
(37, 'Dhansura'),
(38, 'Dharampur'),
(39, 'Dhari'),
(40, 'Dholka'),
(41, 'Dhoraji'),
(42, 'Dhrangadhra'),
(43, 'Dhrol'),
(44, 'Disa'),
(45, 'Dwarka'),
(46, 'Gadhda'),
(47, 'Gandhidham'),
(48, 'Gandhinagar'),
(49, 'Gariadhar'),
(50, 'Ghogha'),
(51, 'Godhra'),
(52, 'Gondal'),
(53, 'Halvad'),
(54, 'Hansot'),
(55, 'Harij'),
(56, 'Himatnagar'),
(57, 'Idar'),
(58, 'Jafrabad'),
(59, 'Jamjodhpur'),
(60, 'Jamnagar'),
(61, 'Jasdan'),
(62, 'Jetalsar'),
(63, 'Jetpur'),
(64, 'Junagadh'),
(65, 'Keshod'),
(66, 'Khambhat'),
(67, 'Kheda'),
(68, 'Kodinar'),
(69, 'Kundla'),
(70, 'Kutch'),
(71, 'Kutiyana'),
(72, 'Lambha'),
(73, 'Limbdi'),
(74, 'Lunavada'),
(75, 'Madhapar'),
(76, 'Mahuva'),
(77, 'Makarba'),
(78, 'Makassar'),
(79, 'Maktampur'),
(80, 'Mandal'),
(81, 'Mandvi'),
(82, 'Mangrol'),
(83, 'Meghraj'),
(84, 'Mehsana'),
(85, 'Mendarla'),
(86, 'Mithapur'),
(87, 'Modasa'),
(88, 'Morbi'),
(89, 'Nadiad'),
(90, 'Naliya'),
(91, 'Naroda'),
(92, 'Navagadh'),
(93, 'Navagam Ghed'),
(94, 'Navsari'),
(95, 'Okha'),
(96, 'Paddhari'),
(97, 'Palanpur'),
(98, 'Palitana'),
(99, 'Pardi'),
(100, 'Patan'),
(101, 'Patdi'),
(102, 'Porbandar'),
(103, 'Radhanpur'),
(104, 'Raiya'),
(105, 'Rajkot'),
(106, 'Sanand'),
(107, 'Sika'),
(108, 'Sinor'),
(109, 'Surat'),
(110, 'Surendranagar'),
(111, 'Talala'),
(112, 'Talod'),
(113, 'Tankara'),
(114, 'Thangadh'),
(115, 'Ukai'),
(116, 'Una'),
(117, 'Unjha'),
(118, 'Upleta'),
(119, 'Vadnagar'),
(120, 'Vadodara'),
(121, 'Valbhipur'),
(122, 'Vallabh Vidyanagar'),
(123, 'Valsad'),
(124, 'Vanthali'),
(125, 'Vapi'),
(126, 'Veraval'),
(127, 'Vijapur'),
(128, 'Virpur'),
(129, 'Visnagar'),
(130, 'Vyara');

-- --------------------------------------------------------

--
-- Table structure for table `credit_card_details`
--

CREATE TABLE `credit_card_details` (
  `credit_card_id` int(11) NOT NULL,
  `credit_card_type` varchar(50) NOT NULL,
  `bank_id` varchar(100) DEFAULT NULL,
  `credit_logo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `credit_card_details`
--

INSERT INTO `credit_card_details` (`credit_card_id`, `credit_card_type`, `bank_id`, `credit_logo`) VALUES
(193, 'nnnn', '0,7,4,2,3,5,8,15,9', 'maggie.jpg'),
(210, 'asdsadsad', '2,3,4', '2018022115817brick-wall-dark.png'),
(211, 'asdsadsadd', '2,3,4,5', '2018022115842cake.jpg'),
(212, 'asdsadsad', '2,3,4', '201802211591maggie11.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `debit_card_details`
--

CREATE TABLE `debit_card_details` (
  `debit_card_id` int(11) NOT NULL,
  `debit_card_type` varchar(50) NOT NULL,
  `bank_id` varchar(100) DEFAULT NULL,
  `debit_logo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `debit_card_details`
--

INSERT INTO `debit_card_details` (`debit_card_id`, `debit_card_type`, `bank_id`, `debit_logo`) VALUES
(11, 'sdfsfd', '2', '201813202640beverages.jpg'),
(12, 'dsdfsd', '2,3', 'images.jpg'),
(14, 'asdasdasdasdas', '2,3', 'midnight.png'),
(15, 'vxcvxcvxc', '2,3', 'pasta.jpg'),
(17, 'ASDASDAS', '2,3', 'beverages.jpg'),
(18, 'xcvxcvxcv', '2,3', '2018023102244logo11.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boy`
--

CREATE TABLE `delivery_boy` (
  `delivery_boy_id` int(11) NOT NULL,
  `delivery_boy_image` varchar(100) NOT NULL,
  `delivery_boy_name` varchar(50) NOT NULL,
  `add_id` int(11) DEFAULT NULL,
  `delivery_boy_contact` varchar(15) NOT NULL,
  `delivery_boy_email` varchar(100) NOT NULL,
  `delivery_boy_pwd` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_boy`
--

INSERT INTO `delivery_boy` (`delivery_boy_id`, `delivery_boy_image`, `delivery_boy_name`, `add_id`, `delivery_boy_contact`, `delivery_boy_email`, `delivery_boy_pwd`) VALUES
(5, 'delivery.png', 'Adam', 5, '987456321', 'adam@gmail.com', 'adam'),
(6, '201802210336coldcoffee.jpg', 'dfsdfsd', NULL, '1312312', 'a@b.c', 'abc'),
(7, '2018022103328', 'dsafasddasds', NULL, '123456789', 'abhishek.karia.006@gmail.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `marketer`
--

CREATE TABLE `marketer` (
  `marketor_id` int(11) NOT NULL,
  `marketor_image` varchar(100) NOT NULL,
  `marketor_name` varchar(50) NOT NULL,
  `marketor_email` varchar(100) NOT NULL,
  `marketor_pwd` varchar(100) DEFAULT NULL,
  `marketor_contact` varchar(15) NOT NULL,
  `add_id` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marketer`
--

INSERT INTO `marketer` (`marketor_id`, `marketor_image`, `marketor_name`, `marketor_email`, `marketor_pwd`, `marketor_contact`, `add_id`) VALUES
(4, '20181321053sandwitch.jpg', 'aedf', '8797798', NULL, 'sadv', '1'),
(5, '20171215194704_IMG_5583.JPG', 'aedf', 'sadv', NULL, '8797798asfadf', '2');

-- --------------------------------------------------------

--
-- Table structure for table `new_retailers`
--

CREATE TABLE `new_retailers` (
  `new_retailer_id` int(10) NOT NULL,
  `shop_name_or_house_name` varchar(20) NOT NULL,
  `Image` varchar(50) NOT NULL,
  `shop_no_or_house_no` int(10) NOT NULL,
  `complex` varchar(20) DEFAULT NULL,
  `street_name` varchar(20) NOT NULL,
  `street_no` int(10) NOT NULL,
  `society_name` varchar(20) DEFAULT NULL,
  `society_no` int(10) DEFAULT NULL,
  `road` varchar(20) NOT NULL,
  `lndmark` varchar(20) DEFAULT NULL,
  `mall_name` varchar(20) DEFAULT NULL,
  `Latitutde` varchar(100) NOT NULL,
  `Longitude` varchar(100) NOT NULL,
  `comments` varchar(1000) DEFAULT NULL,
  `marketor_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `new_retailers`
--

INSERT INTO `new_retailers` (`new_retailer_id`, `shop_name_or_house_name`, `Image`, `shop_no_or_house_no`, `complex`, `street_name`, `street_no`, `society_name`, `society_no`, `road`, `lndmark`, `mall_name`, `Latitutde`, `Longitude`, `comments`, `marketor_id`) VALUES
(1, 'Denim jeans', 'user.jpg', 20, 'samruddhi complex', 'jagnath', 41, 'ketan society', 21, 'yagnik road', 'tipsy topsy', '7seas', '22.8128846', '70.8288451', 'good', 6),
(4, 'ahab', '2018279114350new_retailer.jpg', 4, 'agh', 'agha', 5, 'ahh', 5, 'agh', 'agh', 'bha', '22.2898456', '70.7757723', NULL, NULL),
(5, 'ahah', '20182811098new_retailer.jpg', 2, 'shsh', 'aahh', 3, 'bBa', 4, 'zhzb', 'bzbB', 'bBab', '0', '0', NULL, NULL),
(6, 'gaga', '2018281101426new_retailer.jpg', 454566, 'agva', 'avva', 489, 'avba', 849, 'caff', 'agga', 'gahh', '0', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_detail_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`order_detail_id`, `order_id`, `product_detail_id`, `qty`) VALUES
(1, 4, 2, 20),
(2, 5, 40, 60),
(3, 5, 41, 20),
(5, 5, 40, 50),
(6, 5, 40, 50),
(7, 5, 40, 50),
(8, 5, 40, 50),
(9, 5, 40, 50);

-- --------------------------------------------------------

--
-- Table structure for table `payment_mode`
--

CREATE TABLE `payment_mode` (
  `payment_mode_id` int(11) NOT NULL,
  `mode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_mode`
--

INSERT INTO `payment_mode` (`payment_mode_id`, `mode`) VALUES
(1, 'WALLET'),
(2, 'NETBANKING'),
(3, 'DEBIT CARD'),
(4, 'CREDIT CACRD'),
(5, 'COD'),
(8, 'UPI');

-- --------------------------------------------------------

--
-- Table structure for table `pincode`
--

CREATE TABLE `pincode` (
  `pincode_id` int(11) NOT NULL,
  `pincode` varchar(100) NOT NULL,
  `city_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pincode`
--

INSERT INTO `pincode` (`pincode_id`, `pincode`, `city_id`) VALUES
(8, '12,12,121,1', 2),
(10, '565556,666', 4),
(12, '360005,360001,360002,360003', 105);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_ingredients` varchar(1000) NOT NULL,
  `product_desc` varchar(1000) NOT NULL,
  `product_how_to_use` varchar(1000) DEFAULT NULL,
  `product_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `subcategory_id`, `product_name`, `product_ingredients`, `product_desc`, `product_how_to_use`, `product_image`) VALUES
(13, 1, 'Ambi pur air freshner', 'abc', 'abc', 'abc', 'user.jpg'),
(14, 9, 'Gillette Mach3 New Blade Razor', 'abc', 'abc', 'abc', '2018260114251gillette.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `product_detail_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_detail_qty` varchar(50) DEFAULT NULL,
  `product_detail_wt` varchar(50) DEFAULT NULL,
  `product_detail_cost` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`product_detail_id`, `product_id`, `product_detail_qty`, `product_detail_wt`, `product_detail_cost`) VALUES
(40, 13, NULL, '275', '299'),
(41, 14, '1', NULL, '180');

-- --------------------------------------------------------

--
-- Table structure for table `product_order`
--

CREATE TABLE `product_order` (
  `order_id` int(11) NOT NULL,
  `retailer_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` datetime NOT NULL,
  `status` varchar(20) NOT NULL,
  `payment_mode_id` int(11) NOT NULL,
  `delivery_boy_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_order`
--

INSERT INTO `product_order` (`order_id`, `retailer_id`, `date`, `time`, `status`, `payment_mode_id`, `delivery_boy_id`) VALUES
(4, 8, '2017-12-22', '2017-12-23 10:09:37', 'delivered', 3, 5),
(5, 8, '2017-12-22', '2017-12-23 10:09:37', 'ordered', 3, 6),
(6, 8, '2017-12-22', '2017-12-23 10:09:37', 'ordered', 3, 6),
(7, 8, '2017-12-22', '2017-12-23 10:09:37', 'ordered', 3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `product_type_id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `retailers`
--

CREATE TABLE `retailers` (
  `retailer_id` int(11) NOT NULL,
  `retailer_name` varchar(50) NOT NULL,
  `add_id` int(11) NOT NULL,
  `retailer_type_id` int(11) NOT NULL,
  `retailer_email` varchar(50) NOT NULL,
  `retailer_pwd` varchar(50) NOT NULL,
  `retailer_contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `retailers`
--

INSERT INTO `retailers` (`retailer_id`, `retailer_name`, `add_id`, `retailer_type_id`, `retailer_email`, `retailer_pwd`, `retailer_contact`) VALUES
(8, 'abc', 0, 1, 'rgegee', 'ef', 'rsg'),
(10, 'abcde', 0, 1, 'rgege', 'ef', 'rsg');

-- --------------------------------------------------------

--
-- Table structure for table `retailer_type`
--

CREATE TABLE `retailer_type` (
  `retailer_type_id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `retailer_type`
--

INSERT INTO `retailer_type` (`retailer_type_id`, `type`) VALUES
(1, 'mall'),
(3, 'small store'),
(5, 'mall');

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `route_id` int(11) NOT NULL,
  `route_name` varchar(100) NOT NULL,
  `add_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`route_id`, `route_name`, `add_id`) VALUES
(9, 'asdasdasdas', 1),
(11, 'sdasdas', 2),
(13, 'asdasda', 3);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `subcategory_id` int(11) NOT NULL,
  `subcategory_name` varchar(50) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_image` varchar(50) NOT NULL,
  `subcategory_desc` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`subcategory_id`, `subcategory_name`, `category_id`, `subcategory_image`, `subcategory_desc`) VALUES
(1, 'Plugins', 1, '20180794616AmbiPur_plugins.jpg', 'plugins with different fragrances'),
(2, 'Car Freshners', 1, '20180794731AmbiPur_car_freshners.jpg', 'car freshners with different fragrances for cars'),
(3, 'Air Freshners', 1, '20180794933AmbiPur_Air_freshners.jpg', 'Air Fragrances with different fragrances'),
(4, 'Detergent Pods', 2, '20180795617Detergent_pods.jpg', 'detegent pods for washing machines'),
(5, 'Washing Liquid', 2, '201807101158Ariel_washing_liquid.jpg', 'washing liquid.1'),
(6, 'Excel', 2, '20180795757Ariel_excel_gel.jpg', 'excel gel'),
(7, 'Washing Powder', 2, '20180795839Ariel_washing_powder.jpg', 'washing powder'),
(8, 'Sensor', 3, '201807101335gillette_sensor.jpg', 'gillette sensor'),
(9, 'Mach 3', 3, '201807101534gillette_mach3.jpg', 'gillette mach 3'),
(10, 'Venus', 3, '20180710166gillette-venus.jpg', 'gillette vinus'),
(11, 'Fushion', 3, '20180710170gillette_fushion.jpg', 'gillette fushion'),
(12, 'Shampoo', 4, '201807101756shampoo.png', 'head and shoulders shampoo'),
(13, 'Conditioners', 4, '201807101833conditioners.jpeg', 'head and shoulders conditioners'),
(14, 'Co-Wash', 4, '201807101962_in_1.jpeg', 'head and shoulders co-wash'),
(15, 'Hair Treatment', 4, '201807101955hair_treatemnt.jpeg', 'head and shoulders hair treatement'),
(16, 'Powder Detergents', 10, '20180710211Tide_powder_detergent.JPG', 'tide powder detergents'),
(17, 'Liquid Detergents', 10, '20180710223tide_liquid_detergent.jpg', 'tide liquid detergents'),
(21, 'Bars', 10, '201813293851midnight.png', 'datergent bars'),
(22, 'Stain Remover', 10, '2018070423Tide_stain_remover.jpg', 'stain removers'),
(23, 'Baby Products', 11, '2018070510vicks_baby.jpg', 'vicks baby products'),
(24, 'Cold and Cough', 11, '2018070538vicks_products.jpg', 'vicks cold and cough'),
(25, 'Facial Clensers', 5, '20180703329olay_facial_clensers.jpg', 'olay facial clensers'),
(26, 'Mosturizers', 5, '20180703414olay_facial_moisturizers.jpg', 'olay mosturizers'),
(27, 'Facial and Eye Treatements', 5, '20180703519olay_facial_and_eye_treatement.gif', 'olay facial and eye treatements'),
(28, 'Body Care', 5, '20180703552olay_body_care.jpg', 'olay body cares'),
(29, 'Manual Brush', 6, '20180703631manual_brush.jpg', 'oralb manual brush'),
(30, 'Battery Powered', 6, '2018070374battery_power.jpg', 'oral b battery powered brush'),
(31, 'Shampoo', 9, '20180704022shampoo.png', 'pantene shampoo'),
(32, 'Conditioner', 9, '20180704120conditioners.jpg', 'pantene conditioneers'),
(33, 'Co-wash', 9, '20180704212co_wash.jpg', 'pantene co-wash'),
(34, 'Hair Treatement', 9, '20180704253treatments.jpg', 'pantene hair treatement'),
(35, 'Color Recharge', 12, '20180704350Color_Recharge.jpg', 'wella color recharge'),
(36, 'Pomades', 12, '20180704422pomades.jpg', 'wella pomades'),
(37, 'Curl Enhancers', 12, '2018070454curl_enhancers.jpg', 'wella curl enhancers'),
(38, 'Hair Perms and Texturizers', 12, '20180704543hair_perms_and _texturizers.jpg', 'wella hair perms and textueizers'),
(39, 'Moussess', 12, '2018070468moussess.jpg', 'wella moussess'),
(41, 'pata', 11, '201813295747pasta.jpg', 'hhhj'),
(43, 'awdasda', 2, '2018132111811maggie11.jpg', 'asdasd'),
(44, 'adsad', 2, '2018132111846beverages.jpg', 'asdsad'),
(45, 'assada', 2, '201813211199midnight.png', 'asdsad'),
(46, 'zxcxzc', 2, '2018132111926midnight.png', 'zxcxzc');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_details`
--

CREATE TABLE `wallet_details` (
  `wallet_id` int(11) NOT NULL,
  `payment_mode_id` int(11) NOT NULL,
  `wallet_name` varchar(50) NOT NULL,
  `wallet_logo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet_details`
--

INSERT INTO `wallet_details` (`wallet_id`, `payment_mode_id`, `wallet_name`, `wallet_logo`) VALUES
(4, 22, 'manan', 'xyz.jpg'),
(8, 22, 'ssfh', 'sdfgs'),
(9, 22, 'srgrs', 'ssf'),
(10, 22, 'srg', 'sdg'),
(34, 1, 'paytm', 'paytm-img-preview..jpg'),
(35, 3, 'SBI', 'Blue-Debit-Card.jpg'),
(36, 4, 'ICICI', 'open-sky-credit-card-1333503c.jpg'),
(37, 2, 'HDFC', '2.101-690x414.jpg'),
(38, 8, 'UPI', '1200px-UPI-Logo-vector.svg.png'),
(39, 5, 'COD', 'expo-delivery.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address_detail`
--
ALTER TABLE `address_detail`
  ADD PRIMARY KEY (`add_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `credit_card_details`
--
ALTER TABLE `credit_card_details`
  ADD PRIMARY KEY (`credit_card_id`);

--
-- Indexes for table `debit_card_details`
--
ALTER TABLE `debit_card_details`
  ADD PRIMARY KEY (`debit_card_id`);

--
-- Indexes for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  ADD PRIMARY KEY (`delivery_boy_id`);

--
-- Indexes for table `marketer`
--
ALTER TABLE `marketer`
  ADD PRIMARY KEY (`marketor_id`);

--
-- Indexes for table `new_retailers`
--
ALTER TABLE `new_retailers`
  ADD PRIMARY KEY (`new_retailer_id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`);

--
-- Indexes for table `payment_mode`
--
ALTER TABLE `payment_mode`
  ADD PRIMARY KEY (`payment_mode_id`);

--
-- Indexes for table `pincode`
--
ALTER TABLE `pincode`
  ADD PRIMARY KEY (`pincode_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`product_detail_id`);

--
-- Indexes for table `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`product_type_id`);

--
-- Indexes for table `retailers`
--
ALTER TABLE `retailers`
  ADD PRIMARY KEY (`retailer_id`);

--
-- Indexes for table `retailer_type`
--
ALTER TABLE `retailer_type`
  ADD PRIMARY KEY (`retailer_type_id`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`route_id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`subcategory_id`);

--
-- Indexes for table `wallet_details`
--
ALTER TABLE `wallet_details`
  ADD PRIMARY KEY (`wallet_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address_detail`
--
ALTER TABLE `address_detail`
  MODIFY `add_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `bank_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT for table `credit_card_details`
--
ALTER TABLE `credit_card_details`
  MODIFY `credit_card_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;
--
-- AUTO_INCREMENT for table `debit_card_details`
--
ALTER TABLE `debit_card_details`
  MODIFY `debit_card_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  MODIFY `delivery_boy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `marketer`
--
ALTER TABLE `marketer`
  MODIFY `marketor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `new_retailers`
--
ALTER TABLE `new_retailers`
  MODIFY `new_retailer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `payment_mode`
--
ALTER TABLE `payment_mode`
  MODIFY `payment_mode_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `pincode`
--
ALTER TABLE `pincode`
  MODIFY `pincode_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `product_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `product_order`
--
ALTER TABLE `product_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `product_type_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `retailers`
--
ALTER TABLE `retailers`
  MODIFY `retailer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `retailer_type`
--
ALTER TABLE `retailer_type`
  MODIFY `retailer_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `route`
--
ALTER TABLE `route`
  MODIFY `route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `subcategory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `wallet_details`
--
ALTER TABLE `wallet_details`
  MODIFY `wallet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 28, 2021 at 03:46 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotels_dotcom`
--

-- --------------------------------------------------------

--
-- Table structure for table `accessibility`
--

CREATE TABLE `accessibility` (
  `accessibility_id` int(11) NOT NULL,
  `facility_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accessibility`
--

INSERT INTO `accessibility` (`accessibility_id`, `facility_name`) VALUES
(1, 'Accessible bathroom'),
(2, 'In-room accessibility'),
(3, 'Roll-in shower'),
(4, 'Assistive listening devices available'),
(5, 'Wheelchair-accessible registration desk'),
(6, 'Wheelchair-accessible lounge'),
(7, 'Wheelchair-accessible path of travel'),
(8, 'Wheelchair-accessible on-site restaurant'),
(9, 'Wheelchair accessible'),
(10, 'Wheelchair accessible parking'),
(11, 'Wheelchair accessible public bathroom'),
(12, 'Wheelchair accessible concierge desk'),
(13, 'Wheelchair accessible path to lift'),
(14, 'Wheelchair accessible meeting spaces/business centre'),
(15, 'Visual alarms in hallways'),
(16, 'Handrails on stairways'),
(17, 'Low counters/sink'),
(18, 'Grab bar - near toilet'),
(19, 'Bathroom emergency pull cord'),
(20, 'Visual fire alarm');

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `building_number` varchar(255) DEFAULT NULL,
  `building_name` varchar(255) DEFAULT NULL,
  `address_line_1` varchar(255) NOT NULL,
  `address_line_2` varchar(255) DEFAULT NULL,
  `city_id` int(11) NOT NULL,
  `postcode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `building_number`, `building_name`, `address_line_1`, `address_line_2`, `city_id`, `postcode`) VALUES
(1, NULL, 'Europa Hotel', 'Great Victoria Street', 'BT2 7AP', 1, NULL),
(2, '9-15', 'Grand Central Hotel', 'Bedford Street', NULL, 1, 'BT2 7FF'),
(3, '16', 'The Merchant Hotel', 'Skipper Street', NULL, 1, 'BT1 2DZ'),
(4, NULL, 'Beckett Locke', 'North Wall Avenue', NULL, 3, 'DO1 E0K6'),
(5, NULL, 'Trinity Hotel', 'Pearse Street', '', 3, 'D02 FW96');

-- --------------------------------------------------------

--
-- Table structure for table `amenities_of_hotel`
--

CREATE TABLE `amenities_of_hotel` (
  `amenities_of_hotel_id` int(11) NOT NULL,
  `amenity_of_hotel_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `amenities_of_hotel`
--

INSERT INTO `amenities_of_hotel` (`amenities_of_hotel_id`, `amenity_of_hotel_name`) VALUES
(1, 'Daily housekeeping'),
(2, 'Conference Centre'),
(3, '24-hour front desk'),
(4, 'Air conditioning'),
(5, 'Car hire on site'),
(6, 'Lobby fireplace'),
(7, 'Front desk safe'),
(8, 'Snack bar/deli'),
(9, 'ATM/banking services'),
(10, 'Free WiFi'),
(11, 'Private bathroom'),
(12, 'Television'),
(13, 'Free toiletries'),
(14, 'Laundry facilities'),
(15, 'Hair dryer'),
(16, 'Conference space'),
(17, 'Meeting rooms'),
(18, 'Concierge services'),
(19, 'Tours/ticket assistance'),
(20, 'Luggage storage'),
(21, 'Wedding services'),
(22, 'Multilingual staff'),
(23, 'Porter'),
(26, 'Weekly housekeeping'),
(27, 'Self-serve laundry'),
(29, 'Iron/ironing board'),
(30, 'Free bottled water'),
(31, 'Lift'),
(32, 'Full-service spa'),
(33, 'Rooftop terrace'),
(34, 'Spa tub'),
(35, 'Health club'),
(36, 'Self parking'),
(37, 'Business centre'),
(38, 'Limo/town car service'),
(39, 'In-room childcare'),
(40, 'Babysitting or childcare'),
(41, 'Connecting/adjoining rooms'),
(42, 'Premium TV channels'),
(43, 'Computer station'),
(44, 'Free newspapers'),
(45, 'Free cots/infant beds'),
(46, 'Kitchen'),
(47, 'Cookware, dishwater and utensils'),
(48, 'Stovetop'),
(49, 'Microwave'),
(50, 'Fridge'),
(51, 'Valet parking'),
(52, 'Terrace'),
(53, 'Garden'),
(54, 'Computer station');

-- --------------------------------------------------------

--
-- Table structure for table `amenities_of_room`
--

CREATE TABLE `amenities_of_room` (
  `amenities_of_room_id` int(11) NOT NULL,
  `amenity_of_room_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `amenities_of_room`
--

INSERT INTO `amenities_of_room` (`amenities_of_room_id`, `amenity_of_room_name`) VALUES
(1, 'Air conditioning'),
(2, 'Bath with shower'),
(3, 'Cable TV service'),
(4, 'Daily housekeeping'),
(5, 'Desk'),
(6, 'Free newspaper'),
(7, 'Free Toiletries'),
(8, 'Free Wi-Fi'),
(9, 'Guidebooks or reccomendations'),
(10, 'Hair dryer'),
(11, 'In-room safe'),
(12, 'iPod docking station'),
(13, 'Iron/ironing board'),
(14, 'Laptop-friendly workspace'),
(15, 'Linens provided'),
(16, 'Number of bathrooms : 1'),
(17, 'Phone'),
(18, 'Pillowtop mattress'),
(19, 'Private bathroom'),
(20, 'Restaurant dining guide'),
(21, 'Room service (24 hours)'),
(22, 'Television'),
(23, 'Towels provided'),
(24, 'Fan'),
(25, 'Electric kettle'),
(26, 'Free bottled water'),
(27, 'Heating'),
(28, 'Premium bedding'),
(29, 'Shower only'),
(30, 'Bathrobes'),
(31, 'Bathtub or shower'),
(32, 'Blackout drapes/curtains'),
(33, 'Coffee/tea maker'),
(34, 'Connecting/adjoining rooms available'),
(35, 'Designer toiletries'),
(36, 'Digital TV service'),
(37, 'Down comforter'),
(38, 'Egyptian-cotton sheets'),
(39, 'HDTV'),
(40, 'Hypo-allergenic bedding available'),
(41, 'Individually decorated'),
(42, 'Individually furnished'),
(43, 'In-room childcare '),
(44, 'In-room climate control'),
(45, 'Memory foam mattress'),
(46, 'Pillow menu'),
(47, 'Premium bedding'),
(48, 'Premium TV channels'),
(49, 'Rainfall shower head'),
(50, 'Slippers'),
(51, 'Turndown service'),
(53, 'Cookware, dishwater and utensils'),
(55, 'Dishwasher'),
(56, 'Free cots/infant beds'),
(57, 'Fridge'),
(59, 'Kitchen'),
(60, 'Limited housekeeping'),
(61, 'Microwave'),
(63, 'Smart TV'),
(64, 'Stovetop'),
(65, 'Wardrobe'),
(66, 'Weekly housekeeping'),
(67, 'Low-height counters/sink'),
(68, 'Soundproofed Rooms'),
(69, 'Visual fire alarm'),
(70, 'Wardrobe'),
(71, 'Wheelchair accessible'),
(72, 'Free wired internet'),
(73, 'Satellite TV service');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `hotel_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `pay_now_or_at_property_id` int(11) NOT NULL,
  `booking_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `check_in_date` date NOT NULL,
  `check_out_date` date NOT NULL,
  `nights_stayed` int(11) NOT NULL,
  `stamps_gained` int(11) NOT NULL,
  `special_requests` text,
  `accessibility_requests` text,
  `season_price_id` int(11) NOT NULL DEFAULT '100',
  `coupon` varchar(255) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `special_offer_id` int(11) NOT NULL DEFAULT '100',
  `taxes_and_fees` decimal(10,2) DEFAULT NULL,
  `deductions` decimal(10,2) NOT NULL DEFAULT '0.00',
  `user_total_price` decimal(10,2) DEFAULT NULL,
  `local_currency_id` int(11) DEFAULT NULL,
  `local_total_price` decimal(10,2) DEFAULT NULL,
  `booking_confirm_number` int(11) DEFAULT NULL,
  `booking_confirmed_yes_no_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `customer_id`, `hotel_id`, `room_id`, `pay_now_or_at_property_id`, `booking_timestamp`, `first_name`, `last_name`, `email_address`, `phone_number`, `check_in_date`, `check_out_date`, `nights_stayed`, `stamps_gained`, `special_requests`, `accessibility_requests`, `season_price_id`, `coupon`, `payment_id`, `special_offer_id`, `taxes_and_fees`, `deductions`, `user_total_price`, `local_currency_id`, `local_total_price`, `booking_confirm_number`, `booking_confirmed_yes_no_id`) VALUES
(32, 2, 1, 1, 2, '2021-11-24 22:04:27', 'Pennie', 'Inskipp', 'pinskipp0@furl.net', '07488952014', '2022-07-11', '2022-07-13', 2, 2, NULL, NULL, 1, NULL, 3, 2, '28.08', '0.00', '234.00', 1, '234.00', 45430092, 1),
(33, 1, 2, 6, 2, '2021-11-24 22:05:00', 'Oisin', 'Carlin', 'ocarlin04@qub.ac.uk', '07954327658', '2022-06-09', '2022-06-11', 2, 2, NULL, NULL, 2, NULL, 2, 1, '49.16', '0.00', '409.64', 1, '409.64', 43657862, 1),
(34, 3, 5, 19, 2, '2021-11-24 22:05:19', 'Christan', 'Whittey', 'cwittey1@globo.com', '07554902193', '2022-03-15', '2022-03-19', 4, 4, NULL, NULL, 100, NULL, 4, 1, '67.94', '0.00', '566.20', 2, '673.78', 45662933, 1),
(35, 4, 4, 15, 1, '2021-11-24 22:05:34', 'Bat', 'Carwithim', 'bcarwithim2@dropbox.com', '07822573320', '2022-03-14', '2022-03-20', 6, 6, NULL, NULL, 100, NULL, 5, 2, '79.70', '0.00', '664.20', 2, '790.40', 40091723, 1),
(36, 5, 1, 4, 2, '2021-11-24 22:09:03', 'Lalo', 'Cusworth', 'lcusworth3@bigcartel.com', '07668430058', '2022-08-13', '2022-08-16', 3, 3, NULL, NULL, 1, NULL, 6, 2, '63.18', '0.00', '526.50', 1, '526.50', 48820418, 1),
(37, 6, 2, 8, 2, '2021-11-24 22:09:03', 'Avigdor', 'Sidnell', 'asidnell4@blogspot.com', '07433968466', '2022-07-22', '2022-07-29', 7, 7, NULL, NULL, 2, NULL, 7, 1, '172.05', '0.00', '1433.74', 1, '1433.74', 48825426, 1),
(38, 7, 4, 17, 1, '2021-11-24 22:09:03', 'Cecilius', 'Buswell', 'cbuswell5@hibu.com', '07782144024', '2022-06-25', '2022-06-28', 3, 3, NULL, NULL, 4, NULL, 8, 2, '87.97', '0.00', '733.05', 2, '872.33', 40029341, 1),
(39, 8, 3, 12, 2, '2021-11-24 22:09:03', 'Roland', 'Gobert', 'rgobert6@nih.gov', '07834510437', '2022-04-25', '2022-04-30', 5, 5, NULL, NULL, 100, '47820098', 9, 2, '85.20', '100.00', '710.00', 1, '710.00', 45092192, 1),
(40, 9, 5, 19, 2, '2021-11-24 22:09:03', 'Hamish', 'Beacock', 'hbeacock7@slideshare.net', '07499811562', '2022-07-02', '2022-07-09', 7, 7, NULL, NULL, 5, NULL, 10, 1, '190.24', '0.00', '1585.36', 2, '1886.58', 44309874, 1),
(42, 10, 3, 12, 2, '2021-11-24 22:09:03', 'Cari', 'Clunie', 'cclunie8@squidoo.com', '07488120425', '2022-01-11', '2022-01-14', 3, 3, NULL, NULL, 100, NULL, 11, 100, '64.80', '0.00', '540.00', 1, '540.00', 45509326, 1),
(43, 11, 1, 5, 2, '2021-11-24 22:09:03', 'Thekla', 'Hatherley', 'thatherley9@google.fr', '07112042957', '2022-05-04', '2022-05-09', 5, 5, NULL, NULL, 100, '33021954', 12, 1, '79.50', '50.00', '662.50', 1, '662.50', 40024493, 1);

-- --------------------------------------------------------

--
-- Table structure for table `booking_confirmed_yes_no`
--

CREATE TABLE `booking_confirmed_yes_no` (
  `booking_confirmed_yes_no_id` int(11) NOT NULL,
  `booking_confirmation_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking_confirmed_yes_no`
--

INSERT INTO `booking_confirmed_yes_no` (`booking_confirmed_yes_no_id`, `booking_confirmation_status`) VALUES
(1, 'Booking not yet confirmed'),
(2, 'Booking confirmed');

-- --------------------------------------------------------

--
-- Table structure for table `breakfast_available`
--

CREATE TABLE `breakfast_available` (
  `breakfast_available_id` int(11) NOT NULL,
  `breakfast_availability` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `breakfast_available`
--

INSERT INTO `breakfast_available` (`breakfast_available_id`, `breakfast_availability`) VALUES
(1, 'Breakfast available'),
(2, 'Breakfast not available'),
(3, 'Self catering facilities available');

-- --------------------------------------------------------

--
-- Table structure for table `breakfast_inclusion`
--

CREATE TABLE `breakfast_inclusion` (
  `breakfast_inclusion_id` int(11) NOT NULL,
  `breakfast_inclusion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `breakfast_inclusion`
--

INSERT INTO `breakfast_inclusion` (`breakfast_inclusion_id`, `breakfast_inclusion`) VALUES
(1, 'Breakfast included with room'),
(2, 'Pay at property');

-- --------------------------------------------------------

--
-- Table structure for table `cancellation_policy`
--

CREATE TABLE `cancellation_policy` (
  `cancellation_policy_id` int(11) NOT NULL,
  `cancellation_policy` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cancellation_policy`
--

INSERT INTO `cancellation_policy` (`cancellation_policy_id`, `cancellation_policy`) VALUES
(1, 'No Refunds'),
(2, 'Free Cancellation');

-- --------------------------------------------------------

--
-- Table structure for table `children_stay_free`
--

CREATE TABLE `children_stay_free` (
  `children_stay_free_id` int(11) NOT NULL,
  `number_free_children` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `children_stay_free`
--

INSERT INTO `children_stay_free` (`children_stay_free_id`, `number_free_children`) VALUES
(1, '1 child stays free'),
(2, '2 children stay free'),
(3, '3 children stay free'),
(4, '4 children stay free'),
(100, 'No children stay free');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL,
  `county` varchar(255) DEFAULT NULL,
  `state_or_province` varchar(255) DEFAULT NULL,
  `country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`, `county`, `state_or_province`, `country`) VALUES
(1, 'Belfast', 'Antrim', 'Northern Ireland', 'United Kingdom'),
(3, 'Dublin', 'Dublin', 'Leinster', 'Republic of Ireland');

-- --------------------------------------------------------

--
-- Table structure for table `contact_permission`
--

CREATE TABLE `contact_permission` (
  `contact_permission_id` int(11) NOT NULL,
  `permission_granted_denied` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact_permission`
--

INSERT INTO `contact_permission` (`contact_permission_id`, `permission_granted_denied`) VALUES
(1, 'Granted'),
(2, 'Denied');

-- --------------------------------------------------------

--
-- Table structure for table `customer_account`
--

CREATE TABLE `customer_account` (
  `customer_id` int(11) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `user_password` varbinary(255) NOT NULL,
  `contact_permission_id` int(11) NOT NULL,
  `membership_number` int(11) NOT NULL,
  `membership_start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `stamps` int(11) NOT NULL,
  `membership_status_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_account`
--

INSERT INTO `customer_account` (`customer_id`, `email_address`, `first_name`, `last_name`, `user_password`, `contact_permission_id`, `membership_number`, `membership_start_date`, `stamps`, `membership_status_id`) VALUES
(1, 'ocarlin04@qub.ac.uk', 'Oisin', 'Carlin', 0x32316236393535343264303466643764383531366238636661336335333563383165343065363465656336633762, 1, 24007935, '2021-11-24 21:39:09', 2, 1),
(2, 'pinskipp0@furl.net', 'Pennie', 'Inskipp', 0x30303465376236376631393762303861393430656561653461386335356135643234643634363563306338646132, 1, 68430592, '2021-11-24 21:39:30', 13, 2),
(3, 'cwittey1@globo.com', 'Christan', 'Whittey', 0x37346162313234393463386231323330393165656436616330336634343335313461346266333730336632323465, 1, 68452044, '2021-11-24 21:39:46', 38, 3),
(4, 'bcarwithim2@dropbox.com', 'Bat', 'Carwithim', 0x36636134353734386538646435633539323064633431333339653737636266336265396630366639366361356136, 2, 54503261, '2021-11-24 21:40:01', 8, 1),
(5, 'lcusworth3@bigcartel.com', 'Lalo', 'Cusworth', 0x32663132653862376631376538363434383932336431643133636265616133386335373035663138623466393564, 2, 54139854, '2021-11-24 21:40:15', 7, 1),
(6, 'asidnell4@blogspot.com', 'Avigdor', 'Sidnell', 0x31396364623662363265636362373761323564656536343362386437646330323236333365396432333135343730, 1, 49600912, '2021-11-24 21:40:28', 14, 2),
(7, 'cbuswell5@hibu.com', 'Cecilius', 'Buswell', 0x31643534313938663263623431333962386239303065346166396237616566336139666430663939616336303435, 1, 58433512, '2021-11-24 21:40:46', 15, 2),
(8, 'rgobert6@nih.gov', 'Roland', 'Gobert', 0x36346561303330623765373363646463646332376161653636333163353038663539643764353532343564653032, 1, 67530091, '2021-11-24 21:41:01', 39, 3),
(9, 'hbeacock7@slideshare.net', 'Hamish', 'Beacock', 0x33303164323964323666643538626361383430306238363936396437303261303830356631643030363165366331, 2, 63325516, '2021-11-24 21:41:15', 12, 2),
(10, 'cclunie8@squidoo.com', 'Cari', 'Clunie', 0x38656663393266343436323031393738313837396236326430366536343532303339343062623665613730323130, 1, 46339375, '2021-11-24 21:41:26', 9, 1),
(11, 'thatherley9@google.fr', 'Thekla', 'Hatherley', 0x37396463393035316338633931376635323636313032333034346638323861373936613538363161393761643437, 2, 45992127, '2021-11-24 21:41:39', 19, 2);

-- --------------------------------------------------------

--
-- Table structure for table `gift_card`
--

CREATE TABLE `gift_card` (
  `gift_card_id` int(11) NOT NULL,
  `card_number` varchar(16) NOT NULL,
  `card_pin` varchar(8) NOT NULL,
  `balance` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gift_card`
--

INSERT INTO `gift_card` (`gift_card_id`, `card_number`, `card_pin`, `balance`) VALUES
(1, '4637285648377879', '52348574', '20.00'),
(2, '5749392657194361', '68473024', '100.00'),
(3, '6473367493206743', '64010091', '60.00'),
(4, '6758493009684321', '57483953', '150.00'),
(5, '6765432098467843', '17458221', '40.00'),
(6, '6759432000283831', '67583375', '80.00');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `hotel_id` int(11) NOT NULL,
  `hotel_name` varchar(255) NOT NULL,
  `description` text,
  `address_id` int(11) NOT NULL,
  `covid_description` text,
  `check_in_instructions` text,
  `check_in_requirements` text,
  `number_rooms` int(11) DEFAULT NULL,
  `number_floors` int(11) DEFAULT NULL,
  `check_in_time` varchar(255) NOT NULL,
  `check_out_time` varchar(255) NOT NULL,
  `hotel_bars_restaurants` text,
  `whats_around` text,
  `pets_allowed_id` int(11) DEFAULT NULL,
  `pets_policy` text,
  `parking` text,
  `breakfast` text,
  `late_check_out_early_check_in` text,
  `star_rating_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`hotel_id`, `hotel_name`, `description`, `address_id`, `covid_description`, `check_in_instructions`, `check_in_requirements`, `number_rooms`, `number_floors`, `check_in_time`, `check_out_time`, `hotel_bars_restaurants`, `whats_around`, `pets_allowed_id`, `pets_policy`, `parking`, `breakfast`, `late_check_out_early_check_in`, `star_rating_id`) VALUES
(1, 'Europa Hotel', '4-star hotel with 2 bars/lounges, near Grand Opera House', 1, 'Enhanced health and safety measures\r\nThis property advises that enhanced cleaning and guest safety measures are currently in place.\r\nProperty is cleaned with disinfectant\r\nStaff wear personal protective equipment\r\nProperty confirms they are implementing enhanced cleaning measures\r\nShield between guests and staff in main contact areas\r\nSocial distancing measures are in place\r\nGuests are provided with free hand sanitiser', 'Front desk staff will greet guests on arrival.', 'Credit card, debit card or cash deposit required for incidental charges\r\nGovernment-issued photo ID may be required\r\nMinimum check-in age is 18', 272, 12, '3:00 PM-midnight\r\n', '11:00 AM', 'Restaurant and 2 bars/lounges', 'Landmarks:\r\n\r\nIn Belfast City Centre\r\nGrand Opera House - 1-minute walk\r\nUlster Hall - 4-minute walk\r\nBelfast City Hall - 6-minute walk\r\nSt. George\'s Market - 12-minute walk\r\nSt. Anne\'s Cathedral - 13-minute walk\r\nVictoria Square Shopping Centre - 13-minute walk\r\nQueen\'s University of Belfast - 14-minute walk\r\nWaterfront Hall - 14-minute walk\r\nLisburn Road - 22-minute walk\r\nBelfast Botanic Gardens - 23-minute walk\r\n\r\nGetting around:\r\n\r\nBelfast International Airport (BFS) 23-min drive\r\nBelfast (BHD-George Best Belfast City) 6-min drive\r\nGreat Victoria Street Station 3-min walk\r\nBotanic Station 9-min walk\r\nBelfast Central Station 17-min walk', 2, '', 'No parking.', 'Full breakfast is offered for an extra charge of GBP 20 per person (approximately)', 'Late checkout can be arranged for an extra charge of GBP 20.00 (subject to availability)', 4),
(2, 'Grand Central Hotel Belfast', '4-star hotel with restaurant, near Ulster Hall\r\n', 2, 'Official standards\r\n\r\nThis property advises that it adheres to We\'re Good To Go (UK) cleaning and disinfection practices.\r\n\r\nEnhanced health and safety measures\r\nThis property advises that enhanced cleaning and guest safety measures are currently in place.\r\nProperty is cleaned with disinfectant\r\nStaff wear personal protective equipment\r\nProperty confirms they are implementing enhanced cleaning measures\r\nShield between guests and staff in main contact areas\r\nSocial distancing measures are in place\r\nIndividually wrapped food options are available\r\nGuests are provided with free hand sanitiser', 'Front desk staff will greet guests on arrival.', 'Credit card, debit card or cash deposit required for incidental charges\r\nGovernment-issued photo ID may be required\r\nMinimum check-in age is 18', 300, NULL, '3:00 PM-midnight', '11 AM', 'Restaurant\r\nBar/lounge\r\nCoffee shop/café', 'Landmarks:\r\n\r\nIn Belfast City Centre\r\nUlster Hall - 1-minute walk\r\nGrand Opera House - 4-minute walk\r\nBelfast City Hall - 4-minute walk\r\nSt. George\'s Market - 9-minute walk\r\nWaterfront Hall - 11-minute walk\r\nVictoria Square Shopping Centre - 12-minute walk\r\nSt. Anne\'s Cathedral - 12-minute walk\r\nQueen\'s University of Belfast - 16-minute walk\r\nSSE Arena (Titanic Quarter) - 22-minute walk\r\nLisburn Road - 23-minute walk\r\n\r\nGetting around:\r\n\r\nBelfast International Airport (BFS) 23-min drive\r\nBelfast (BHD-George Best Belfast City) 6-min drive\r\nGreat Victoria Street Station 5-min walk\r\nBotanic Station 12-min walk\r\nBelfast Central Station 14-min walk', 2, NULL, 'No on-site parking', 'Full breakfast is offered for an extra charge of GBP 25.00 for adults and GBP 25 for children (approximately)', NULL, 4),
(3, 'The Merchant Hotel', 'Luxury hotel with 3 restaurants, near Belfast Customs House', 3, 'Enhanced health and safety measures\r\n\r\nThis property advises that enhanced cleaning and guest safety measures are currently in place.\r\nProperty is cleaned with disinfectant\r\nStaff wear personal protective equipment\r\nProperty confirms they are implementing enhanced cleaning measures\r\nShield between guests and staff in main contact areas\r\nSocial distancing measures are in place\r\nGap period enforced between guest stays - 24 hours\r\nProtective clothing is available for guests\r\nMasks are available for guests\r\nGloves are available for guests\r\nIndividually wrapped food options are available\r\nGuests are provided with free hand sanitiser', 'Front desk staff will greet guests on arrival.', 'Credit card, debit card or cash deposit required for incidental charges\r\nGovernment-issued photo ID may be required\r\nMinimum check-in age is 18', 62, NULL, '3 PM-midnight', 'Noon', '3 restaurants and bar/lounge:\r\n\r\nThe Great Room – This fine-dining restaurant serves breakfast, brunch, lunch and dinner. Guests can enjoy drinks at the bar. A children\'s menu is available. Reservations are required. \r\nBerts Jazz Bar – This bistro specialises in French cuisine and serves brunch, lunch and dinner. Guests can enjoy drinks at the bar. Reservations are required. \r\nCloth Ear Bar – This restaurant specialises in local cuisine and serves brunch, lunch and dinner. Guests can enjoy drinks at the bar. A children\'s menu is available.', 'Landmarks:\r\n\r\nIn Belfast City Centre\r\nBelfast Customs House - 4-min walk\r\nSt. Anne\'s Cathedral - 4-min walk\r\nVictoria Square Shopping Centre - 4-min walk\r\nWaterfront Hall - 8-min walk\r\nBelfast City Hall - 9-min walk\r\nSt. George\'s Market - 9-min walk\r\nSSE Arena (Titanic Quarter) - 13-min walk\r\nTitanic Belfast - 24-min walk\r\n\r\nGetting around:\r\nBelfast International Airport (BFS) 23-min drive\r\nBelfast (BHD-George Best Belfast City) 5-min drive\r\nBelfast Central Station 13-min walk\r\nGreat Victoria Street Station 16-min walk\r\nBotanic Station 22-min walk', 2, NULL, 'Yes. Self-parking costs GBP 15.00 per day. Parking spaces may be limited.', 'Free full breakfast daily', 'Early check-in can be arranged for an extra charge of GBP 100.00 (subject to availability)\r\n\r\nLate checkout can be arranged for an extra charge of GBP 50.00 (subject to availability)', 5),
(4, 'Beckett Locke', 'City centre aparthotel, steps from 3Arena', 4, 'Enhanced health and safety measures:\r\n\r\nThis property advises that enhanced cleaning and guest safety measures are currently in place.\r\nProperty is cleaned with disinfectant\r\nProperty confirms they are implementing enhanced cleaning measures\r\nProperty uses a professional cleaning service', 'Guests will receive an email 24 hours before arrival with check-in instructions. Front desk staff will greet guests on arrival.', 'Credit card, debit card or cash deposit required for incidental charges\r\nGovernment-issued photo ID may be required\r\nMinimum check-in age is 18', 241, NULL, '4:00 PM-anytime', '11:00 AM', 'Self catering', 'Landmarks: \r\nIn City Centre Dublin\r\nDublin Port - 1-min walk\r\n3Arena - 4-min walk\r\nEPIC The Irish Emigration Museum - 17-min walk\r\nBord Gáis Energy Theatre - 17-min walk\r\nO\'Connell Street - 26-min walk\r\nCroke Park - 33-min walk\r\nDublin Castle - 36-min walk\r\nGuinness Storehouse - 2.8 mi / 4.4 km\r\n\r\nGetting around:\r\nDublin Airport (DUB) 10-min drive\r\nConnolly Station 19-min walk\r\nDublin Grand Canal Dock Station 22-min walk\r\nDublin Pearse Street Station 22-min walk\r\nThe Point Station 1-min walk\r\nSpencer Dock Station 6-min walk\r\nMayor Square - NCI Station 11-min walk', 1, 'Pets allowed (dogs only)*\r\nSpecific rooms only, restrictions apply*\r\n1 per room\r\nPets must be supervised\r\n\r\nPets are allowed for an extra charge of EUR 150 per pet, per stay\r\nService animals exempt from fees\r\nContact the property at the number on the booking confirmation for details on pet restrictions and to request a pet-friendly room.\r\n', 'Parking is available nearby and costs EUR 20 per day (853 ft away)', 'Self catering', 'Early check-in can be arranged for an extra charge of EUR 10 (subject to availability)\r\n\r\nLate checkout can be arranged for an extra charge of EUR 10 (subject to availability)', 3),
(5, 'Trinity City Hotel', '4-star hotel with restaurant, near Trinity College', 5, 'Enhanced health and safety measures:\r\n\r\nThis property advises that enhanced cleaning and guest safety measures are currently in place.\r\nProperty is cleaned with disinfectant\r\nStaff wear personal protective equipment\r\nProperty confirms they are implementing enhanced cleaning measures\r\nShield between guests and staff in main contact areas\r\nSocial distancing measures are in place\r\nGuests are provided with free hand sanitiser', 'Front desk staff will greet guests on arrival', 'Credit card, debit card or cash deposit required for incidental charges\r\nGovernment-issued photo ID may be required\r\nMinimum check-in age is 18', 262, NULL, '3:00 PM-anytime', 'Noon', 'Restaurant\r\nBar/lounge\r\nBarbecue grills', 'Landmarks: \r\n\r\nIn City Centre Dublin\r\nTrinity College - 1-min walk\r\nGrafton Street - 7-min walk\r\nDublin Castle - 12-min walk\r\nBord Gáis Energy Theatre - 14-min walk\r\nDublin Port - 22-min walk\r\n3Arena - 26-min walk\r\nCroke Park - 28-min walk\r\nAviva Stadium - 29-min walk\r\nGuinness Storehouse - 29-min walk\r\nMalahide Castle - 8.6 mi / 13.8 km\r\n\r\nGetting around:\r\n\r\nDublin Airport (DUB) 13-min drive\r\nDublin Tara Street Station 5-min walk\r\nDublin Pearse Street Station 6-min walk\r\nConnolly Station 11-min walk\r\nAbbey Street Station 7-min walk\r\nBusaras Station 9-min walk\r\nGeorge\'s Dock Station 12-min walk', 3, 'Pets not allowed (service animals welcome)', 'On-site self-parking (EUR 23 per day)\r\nOn-site valet parking (EUR 23.00 per day)\r\nWheelchair-accessible parking on site', 'Full breakfast is offered for an extra charge of EUR 15 per person (approximately)', NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_accessibility`
--

CREATE TABLE `hotel_accessibility` (
  `hotel_accessibility_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `accessibility_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotel_accessibility`
--

INSERT INTO `hotel_accessibility` (`hotel_accessibility_id`, `hotel_id`, `accessibility_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 2, 1),
(8, 2, 2),
(9, 2, 3),
(10, 2, 7),
(11, 2, 5),
(12, 2, 8),
(13, 2, 6),
(14, 3, 1),
(15, 3, 2),
(16, 3, 3),
(17, 3, 5),
(18, 4, 5),
(19, 4, 1),
(20, 4, 3),
(21, 5, 1),
(22, 5, 2),
(23, 5, 3),
(24, 5, 9),
(25, 5, 10),
(26, 5, 11),
(27, 5, 12),
(28, 5, 7),
(29, 5, 5),
(30, 5, 14),
(31, 5, 8),
(32, 5, 6),
(33, 5, 15),
(34, 5, 16),
(35, 5, 17),
(36, 5, 18),
(37, 5, 19),
(38, 5, 20);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_amenities`
--

CREATE TABLE `hotel_amenities` (
  `hotel_amenities_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `amenities_of_hotel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotel_amenities`
--

INSERT INTO `hotel_amenities` (`hotel_amenities_id`, `hotel_id`, `amenities_of_hotel_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 1, 20),
(21, 1, 21),
(22, 1, 22),
(23, 1, 23),
(24, 2, 1),
(25, 2, 3),
(26, 2, 4),
(27, 2, 14),
(28, 2, 18),
(29, 2, 20),
(30, 2, 19),
(31, 2, 10),
(32, 2, 11),
(33, 2, 12),
(34, 2, 31),
(35, 2, 29),
(36, 2, 30),
(37, 3, 1),
(38, 3, 32),
(39, 3, 33),
(40, 3, 34),
(41, 3, 35),
(42, 3, 36),
(43, 3, 37),
(44, 3, 38),
(45, 3, 39),
(46, 3, 40),
(47, 3, 3),
(48, 3, 10),
(49, 2, 41),
(50, 3, 11),
(51, 3, 42),
(52, 3, 12),
(53, 3, 31),
(54, 3, 7),
(55, 3, 14),
(84, 4, 26),
(85, 4, 3),
(86, 4, 27),
(87, 4, 20),
(88, 4, 10),
(89, 4, 45),
(90, 4, 46),
(91, 4, 47),
(92, 4, 48),
(93, 4, 49),
(94, 4, 50),
(95, 4, 31),
(96, 5, 1),
(97, 5, 51),
(98, 5, 37),
(99, 5, 52),
(100, 5, 3),
(101, 5, 53),
(102, 5, 43),
(103, 5, 7),
(104, 5, 9),
(105, 5, 10),
(106, 5, 19),
(107, 5, 14),
(108, 5, 20),
(109, 5, 22),
(110, 5, 23),
(111, 5, 13),
(112, 5, 15),
(113, 5, 12),
(114, 5, 30);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_language`
--

CREATE TABLE `hotel_language` (
  `hotel_langauge_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotel_language`
--

INSERT INTO `hotel_language` (`hotel_langauge_id`, `hotel_id`, `language_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 4),
(4, 1, 5),
(5, 1, 3),
(6, 2, 1),
(7, 3, 1),
(8, 3, 2),
(9, 3, 5),
(10, 3, 3),
(11, 4, 1),
(12, 4, 25),
(13, 5, 26),
(14, 5, 1),
(15, 5, 2),
(16, 5, 4),
(17, 5, 27),
(18, 5, 5),
(19, 5, 6),
(20, 5, 15),
(21, 5, 10),
(22, 5, 19),
(23, 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `language_id` int(11) NOT NULL,
  `language_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`language_id`, `language_name`) VALUES
(1, 'English'),
(2, 'French'),
(3, 'Spanish'),
(4, 'German'),
(5, 'Italian'),
(6, 'Portuguese'),
(7, 'Mandarin'),
(8, 'Korean'),
(9, 'Japanese'),
(10, 'Russian'),
(11, 'Arabic'),
(12, 'Turkish'),
(13, 'Dutch'),
(14, 'Polish'),
(15, 'Romanian'),
(16, 'Danish'),
(17, 'Swedish'),
(18, 'Norwegian'),
(19, 'Serbian'),
(20, 'Lithuanian'),
(21, 'Czech'),
(22, 'Slovak'),
(23, 'Greek'),
(24, 'Bulgarian'),
(25, 'Irish'),
(26, 'Croatian'),
(27, 'Hungarian');

-- --------------------------------------------------------

--
-- Table structure for table `local_currency`
--

CREATE TABLE `local_currency` (
  `local_currency_id` int(11) NOT NULL,
  `local_currency` varchar(25) NOT NULL,
  `local_currency_rate` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `local_currency`
--

INSERT INTO `local_currency` (`local_currency_id`, `local_currency`, `local_currency_rate`) VALUES
(1, 'GBP', '1.00'),
(2, 'EUR', '1.19'),
(3, 'USD', '1.34');

-- --------------------------------------------------------

--
-- Table structure for table `membership_status`
--

CREATE TABLE `membership_status` (
  `membership_status_id` int(11) NOT NULL,
  `membership_level` varchar(255) NOT NULL,
  `stamps_required` varchar(255) NOT NULL,
  `membership_benefits` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membership_status`
--

INSERT INTO `membership_status` (`membership_status_id`, `membership_level`, `stamps_required`, `membership_benefits`) VALUES
(1, 'Hotels.com Rewards', '0 stamps - 9 stamps', 'Unlock instant savings: Pay less with Secret Prices. Look out for ‘Your Secret Price’ on eligible properties.\r\n\r\nReward nights: Your reward night will be the average value of the 10 stamps you collect. Collect one stamp for every night you stay.'),
(2, 'Hotels.com Rewards Silver', '10 stamps - 29 stamps', 'Silver Exclusives: Get travel benefits like free breakfast, WiFi or spa vouchers and more at VIP Access properties.\r\n\r\nPrice Guarantee Plus: If you find the same stay at a better price, we’ll match it and refund the difference, until the point of your check-in time.\r\n\r\nPriority customer service: \r\nJump the queue! We have a dedicated team to help you with your queries.'),
(3, 'Hotels.com Rewards Gold', '30+ stamps', 'Free room upgrades: \r\nEnjoy complimentary room upgrades at VIP Access properties. Subject to availability.\r\n\r\nEarly check-in: Savour every second with early check-in at VIP Access properties, when available. \r\n\r\nGuaranteed late check-out: Make the most of your trip with guaranteed two-hour late check-out, plus early check-in (when available) at VIP Access properties.\r\n\r\nFree upgrade to Avis Preferred Plus membership: Enjoy free car upgrades, priority service and lots more. Our car rental partner, Avis, is offering you a free upgrade to Avis Preferred Plus membership for a year.');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `payment_card_id` int(11) NOT NULL,
  `gift_card_id` int(11) DEFAULT NULL,
  `user_total_price` decimal(10,2) NOT NULL,
  `local_currency_id` int(11) DEFAULT NULL,
  `local_total_price` decimal(10,2) DEFAULT NULL,
  `paid_by_payment_card_user_currency` decimal(10,2) DEFAULT NULL,
  `paid_by_gift_card_user_currency` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `payment_card_id`, `gift_card_id`, `user_total_price`, `local_currency_id`, `local_total_price`, `paid_by_payment_card_user_currency`, `paid_by_gift_card_user_currency`) VALUES
(2, 4, 1, '234.00', 1, NULL, '214.00', '20.00'),
(3, 3, 2, '409.64', 1, NULL, '309.64', '100.00'),
(4, 5, NULL, '566.20', 2, '673.78', '566.20', NULL),
(5, 6, 3, '664.20', 2, '790.40', '604.20', '60.00'),
(6, 7, 4, '526.50', 1, NULL, '376.50', '150.00'),
(7, 8, 5, '1433.74', 1, NULL, '1393.74', '40.00'),
(8, 9, 6, '733.05', 2, '872.33', '653.05', '80.00'),
(9, 10, NULL, '710.00', 1, NULL, '710.00', NULL),
(10, 11, NULL, '1585.36', 2, '1886.58', '1585.36', NULL),
(11, 12, NULL, '540.00', 1, NULL, '540.00', NULL),
(12, 13, NULL, '662.50', 1, NULL, '662.50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_card`
--

CREATE TABLE `payment_card` (
  `payment_card_id` int(11) NOT NULL,
  `cardholder_first_name` varchar(255) NOT NULL,
  `cardholder_last_name` varchar(255) NOT NULL,
  `card_number` varbinary(255) NOT NULL,
  `expiry_date` date NOT NULL,
  `security_code` varbinary(255) NOT NULL,
  `save_card_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_card`
--

INSERT INTO `payment_card` (`payment_card_id`, `cardholder_first_name`, `cardholder_last_name`, `card_number`, `expiry_date`, `security_code`, `save_card_id`) VALUES
(3, 'Oisin', 'Carlin', 0x34386263323438326239336365343830663862663733663438316632616332316635623232353939663865653561, '2023-04-30', 0x30346239613266396237343862303834303934616339336637646637386566633664373530613033353665316461, 1),
(4, 'Pennie', 'Inskipp', 0x32656266633539356661383233313634663532303538333362396564663231633839333361313964356264313665, '2024-11-30', 0x61636637626364343535653338643531396461386135373530333031303164326530326561343639306264353262, 1),
(5, 'Christan', 'Whittey', 0x62373764336334303234656238316539326435626562303032306661356465303333323464656537323634343461, '2024-01-31', 0x64336461313862376564393263623661653765333439643639663364313234333332663139663265363035306139, 1),
(6, 'Bat', 'Carwithim', 0x35656237303862323639373538613261636331316438613034316463616266326565623036623232633063363734, '2023-09-30', 0x37323431323564366434656563393432353565373035323963336634383631656538386431376636373231373465, 1),
(7, 'Lalo', 'Cusworth', 0x31373962323538373164376235306665636530653166623239353262346364353433623963363266323439613235, '2024-03-31', 0x31326439373633636331306230343639336637303561373836663538353162326265363466666533643734656235, 1),
(8, 'Avigdor', 'Sidnell', 0x33393237306237653536373261306433313539663433666465653261373532323439663834333035363136626230, '2024-05-31', 0x37383565343664316536646166333938366430303436376462646538396336653762396332626334396632633861, 1),
(9, 'Cecilius', 'Buswell', 0x62326262663034643063323538633262343633666537366133336337666634363934653164323434383433303834, '2023-12-31', 0x32653439323633663364616563623833613538393235333332356466653333333139323733323165613062323734, 1),
(10, 'Roland', 'Gobert', 0x66623536396662386235366532326433326138653736333938383437653562396561653634366263323131643561, '2024-06-30', 0x62656262336633623831316536336130626466656430663931333765623337653365396261333432623833343532, 1),
(11, 'Hamish', 'Beacock', 0x34346566613438326330383936316438353933346531393962346535373931353261336234633431663561663364, '2024-08-31', 0x64633066613566383137386333356137353062613266363233626665373461353437373832636235343334373239, 1),
(12, 'Cari', 'Clunie', 0x63646666373330333466323566663139396464373537313461386362623935366334396664376531663961396231, '2023-10-31', 0x37313565393061393738386333383566633730633961393366616231623634656431663565346230633832376538, 1),
(13, 'Thekla', 'Hatherley', 0x34386461376163326432646537663363376466653361663237316632326162393130353863343664636337303230, '2024-07-31', 0x65383962396364393738333030336639313837613636366333646239616232653934633130313462656234343864, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pay_at_property`
--

CREATE TABLE `pay_at_property` (
  `pay_at_property_id` int(11) NOT NULL,
  `pay_at_property_availability` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pay_at_property`
--

INSERT INTO `pay_at_property` (`pay_at_property_id`, `pay_at_property_availability`) VALUES
(1, 'Pay at property available'),
(2, 'Payment required immediately');

-- --------------------------------------------------------

--
-- Table structure for table `pay_now_or_at_property`
--

CREATE TABLE `pay_now_or_at_property` (
  `pay_now_or_at_property_id` int(11) NOT NULL,
  `payment_choice` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pay_now_or_at_property`
--

INSERT INTO `pay_now_or_at_property` (`pay_now_or_at_property_id`, `payment_choice`) VALUES
(1, 'Pay at property'),
(2, 'Pay now');

-- --------------------------------------------------------

--
-- Table structure for table `pets_allowed`
--

CREATE TABLE `pets_allowed` (
  `pets_allowed_id` int(11) NOT NULL,
  `pets_yes_no_guide` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pets_allowed`
--

INSERT INTO `pets_allowed` (`pets_allowed_id`, `pets_yes_no_guide`) VALUES
(1, 'Pets allowed'),
(2, 'Pets not allowed'),
(3, 'Guide dogs allowed');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `room_base_price_GBP` decimal(10,2) NOT NULL,
  `room_name` varchar(255) DEFAULT NULL,
  `room_sleeps` int(11) NOT NULL,
  `room_bed_types` varchar(255) NOT NULL,
  `floor_size` varchar(255) DEFAULT NULL,
  `cancellation_policy_id` int(11) NOT NULL,
  `pay_at_property_id` int(11) NOT NULL,
  `need_to_know` text,
  `breakfast_available_id` int(11) NOT NULL,
  `breakfast_inclusion_id` int(11) DEFAULT NULL,
  `breakfast_info` text NOT NULL,
  `children_stay_free_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `hotel_id`, `room_base_price_GBP`, `room_name`, `room_sleeps`, `room_bed_types`, `floor_size`, `cancellation_policy_id`, `pay_at_property_id`, `need_to_know`, `breakfast_available_id`, `breakfast_inclusion_id`, `breakfast_info`, `children_stay_free_id`) VALUES
(1, 1, '100.00', 'Classic Double', 2, '1 Double Bed', '194 sq feet', 2, 1, 'No cots (infant beds) or rollaway/extra beds available\r\n\r\nNon-Smoking', 1, 2, 'Breakfast is offered for an extra charge of GBP 20 per person (approximately).', 2),
(2, 1, '100.00', 'Classic Double', 2, '1 Double Bed', '194 sq feet', 2, 1, 'No cots (infant beds) or rollaway/extra beds available\r\n\r\nNon-Smoking', 1, 2, 'Breakfast is offered for an extra charge of GBP 20 per person (approximately).', 2),
(4, 1, '150.00', 'Executive Room', 2, '1 King Bed', '388-sq-foot', 1, 2, NULL, 1, 2, 'Breakfast is offered for an extra charge of GBP 20 per person (approximately).', 2),
(5, 1, '150.00', 'Executive Room', 2, '1 King Bed', '388-sq-foot', 1, 2, NULL, 1, 2, 'Breakfast is offered for an extra charge of GBP 20 per person (approximately).', 2),
(6, 2, '154.00', 'Deluxe Twin Room', 2, '2 single beds', '312-sq-foot room', 2, 1, NULL, 1, 2, 'Breakfast is offered for an extra charge of GBP 25.00 for adults and GBP 25 for children (approximately).', 1),
(7, 2, '154.00', 'Deluxe Twin Room', 2, '2 single beds', '312-sq-foot room', 2, 1, NULL, 1, 2, 'Breakfast is offered for an extra charge of GBP 25.00 for adults and GBP 25 for children (approximately).', 1),
(8, 2, '154.00', 'Deluxe Double Room', 2, '1 King Bed', '28-sq-foot ', 2, 1, 'No cots (infant beds) available\r\n\r\nNon-Smoking', 1, 2, 'Breakfast is offered for an extra charge of GBP 25.00 for adults and GBP 25 for children (approximately).', 1),
(9, 2, '154.00', 'Deluxe Double Room', 2, '1 King Bed', '28-sq-foot ', 2, 1, 'No cots (infant beds) available\r\n\r\nNon-Smoking', 1, 2, 'Breakfast is offered for an extra charge of GBP 25.00 for adults and GBP 25 for children (approximately).', 1),
(10, 3, '180.00', 'Deluxe Double or Twin Room', 2, '1 King Bed or 2 Queen Beds', '172 sq feet', 1, 2, 'Non-Smoking\r\n\r\nConnecting/adjoining rooms can be requested, subject to availability', 1, 1, 'A cooked breakfast is included with your stay', 100),
(11, 3, '180.00', 'Deluxe Double or Twin Room', 2, '1 King Bed or 2 Queen Beds', '172 sq feet', 1, 2, 'Non-Smoking\r\n\r\nConnecting/adjoining rooms can be requested, subject to availability', 1, 1, 'A cooked breakfast is included with your stay', 100),
(12, 3, '180.00', 'Deluxe Double or Twin Room', 2, '1 King Bed or 2 Queen Beds', '172 sq feet', 1, 2, 'Non-Smoking\r\n\r\nConnecting/adjoining rooms can be requested, subject to availability', 1, 1, 'A cooked breakfast is included with your stay', 100),
(13, 4, '90.00', 'Locke Studio', 2, '1 King Bed', '258 sq feet', 2, 1, 'Weekly housekeeping, no rollaway/extra beds available, toothbrush and toothpaste not available', 3, NULL, 'Self catering', 1),
(14, 4, '113.00', '1 Bedroom Suite - Twin Accessible', 2, '2 Single Beds', '452 sq feet', 2, 1, 'Accessibility – Wheelchair-width doorways, bathroom emergency pull cord, grab bar near toilet, roll-in shower, raised toilet seat and wheelchair accessible\r\n\r\nNeed to know – Weekly housekeeping, toothbrush and toothpaste not available', 3, NULL, 'Self catering', 1),
(15, 4, '123.00', '1 Bedroom Suite', 2, '1 King Bed', '334 sq feet', 2, 1, 'Weekly housekeeping, toothbrush and toothpaste not available', 3, NULL, 'Self catering', 1),
(16, 4, '153.00', '2 Bedroom Suite\r\n', 4, '2 King Beds', '474 sq feet\r\n', 2, 1, 'Weekly housekeeping, toothbrush and toothpaste not available', 3, NULL, 'Self catering', 100),
(17, 4, '181.00', '2 Bedroom Beckett Suite', 4, '2 King Beds', '538 sq feet', 2, 1, 'Weekly housekeeping, toothbrush and toothpaste not available', 3, NULL, 'Self catering', 100),
(18, 5, '124.00', 'Classic Double Room', 2, '1 Double Bed', '215 sq feet', 2, 1, 'Toothbrush and toothpaste not available, no cots (infant beds) or rollaway/extra beds available\r\n\r\nNon-Smoking\r\n\r\nConnecting/adjoining rooms can be requested, subject to availability', 1, 2, 'Breakfast is offered for an extra charge of EUR 15 per person (approximately).', 1),
(19, 5, '149.00', 'Deluxe Double Room', 2, '1 Queen Bed', '269 sq feet', 2, 1, 'Toothbrush and toothpaste not available, no cots (infant beds) or rollaway/extra beds available\r\n\r\nNon-Smoking\r\n\r\nConnecting/adjoining rooms can be requested, subject to availability', 1, 2, 'Breakfast is offered for an extra charge of EUR 15 per person (approximately).', 1),
(20, 5, '149.00', 'Classic Triple Room', 3, '1 Single Bed and 1 Queen Bed', '237 sq feet', 2, 1, 'Toothbrush and toothpaste not available, no cots (infant beds) or rollaway/extra beds available\r\n\r\nNon-Smoking\r\n\r\nConnecting/adjoining rooms can be requested, subject to availability', 1, 2, 'Breakfast is offered for an extra charge of EUR 15 per person (approximately).', 2),
(21, 5, '174.00', 'Executive King Room', 2, '1 King Bed', '366 sq feet', 2, 1, 'Toothbrush and toothpaste not available\r\n\r\nNon-Smoking\r\n\r\nConnecting/adjoining rooms can be requested, subject to availability', 1, 2, 'Breakfast is offered for an extra charge of EUR 15 per person (approximately).', 1),
(22, 5, '176.00', 'Family Room', 4, '2 Single Beds and 1 Queen Bed', '30 sq feet', 2, 1, ' Toothbrush and toothpaste not available\r\n\r\nNon-Smoking\r\n\r\nConnecting/adjoining rooms can be requested, subject to availability', 1, 2, 'Breakfast is offered for an extra charge of EUR 15 per person (approximately).', 3);

-- --------------------------------------------------------

--
-- Table structure for table `room_amenities`
--

CREATE TABLE `room_amenities` (
  `room_amenities_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `amenities_of_room_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room_amenities`
--

INSERT INTO `room_amenities` (`room_amenities_id`, `room_id`, `amenities_of_room_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 1, 20),
(21, 1, 21),
(22, 1, 22),
(23, 1, 23),
(24, 2, 1),
(25, 2, 2),
(26, 2, 3),
(27, 2, 4),
(28, 2, 5),
(29, 2, 6),
(30, 2, 7),
(31, 2, 8),
(32, 2, 9),
(33, 2, 10),
(34, 2, 11),
(35, 2, 12),
(36, 2, 13),
(37, 2, 14),
(38, 2, 15),
(39, 2, 16),
(40, 2, 17),
(41, 2, 18),
(42, 2, 19),
(43, 2, 20),
(44, 2, 21),
(45, 2, 22),
(46, 2, 23),
(47, 4, 1),
(48, 4, 2),
(49, 4, 3),
(50, 4, 4),
(51, 4, 5),
(52, 4, 6),
(53, 4, 7),
(54, 4, 8),
(55, 4, 9),
(56, 4, 10),
(57, 4, 11),
(58, 4, 12),
(59, 4, 13),
(60, 4, 14),
(61, 4, 15),
(62, 4, 16),
(63, 4, 17),
(64, 4, 18),
(65, 4, 19),
(66, 4, 20),
(67, 4, 21),
(68, 4, 22),
(69, 4, 23),
(70, 5, 1),
(71, 5, 2),
(72, 5, 3),
(73, 5, 4),
(74, 5, 5),
(75, 5, 6),
(76, 5, 7),
(77, 5, 8),
(78, 5, 9),
(79, 5, 10),
(80, 5, 11),
(81, 5, 12),
(82, 5, 13),
(83, 5, 14),
(84, 5, 15),
(85, 5, 16),
(86, 5, 17),
(87, 5, 18),
(88, 5, 19),
(89, 5, 20),
(90, 5, 21),
(91, 5, 22),
(92, 5, 23),
(93, 6, 1),
(94, 6, 4),
(95, 6, 5),
(96, 6, 25),
(97, 6, 24),
(98, 6, 26),
(99, 6, 7),
(100, 6, 8),
(101, 6, 27),
(102, 6, 11),
(103, 6, 13),
(104, 6, 14),
(105, 6, 15),
(106, 6, 16),
(107, 6, 17),
(108, 6, 28),
(109, 6, 19),
(110, 6, 21),
(111, 6, 29),
(112, 6, 22),
(113, 6, 23),
(114, 7, 1),
(115, 7, 4),
(116, 7, 5),
(117, 7, 25),
(118, 7, 24),
(119, 7, 26),
(120, 7, 7),
(121, 7, 8),
(122, 7, 27),
(123, 7, 11),
(124, 7, 13),
(125, 7, 14),
(126, 7, 15),
(127, 7, 16),
(128, 7, 17),
(129, 7, 28),
(130, 7, 19),
(131, 7, 21),
(132, 7, 29),
(133, 7, 22),
(134, 7, 23),
(135, 8, 1),
(136, 8, 4),
(137, 8, 5),
(138, 8, 25),
(139, 8, 24),
(140, 8, 26),
(141, 8, 7),
(142, 8, 8),
(143, 8, 27),
(144, 8, 11),
(145, 8, 13),
(146, 8, 14),
(147, 8, 15),
(148, 8, 16),
(149, 8, 17),
(150, 8, 28),
(151, 8, 19),
(152, 8, 21),
(153, 8, 29),
(154, 8, 22),
(155, 8, 23),
(156, 9, 1),
(157, 9, 4),
(158, 9, 5),
(159, 9, 25),
(160, 9, 24),
(161, 9, 26),
(162, 9, 7),
(163, 9, 8),
(164, 9, 27),
(165, 9, 11),
(166, 9, 13),
(167, 9, 14),
(168, 9, 15),
(169, 9, 16),
(170, 9, 17),
(171, 9, 28),
(172, 9, 19),
(173, 9, 21),
(174, 9, 29),
(175, 9, 22),
(176, 9, 23),
(257, 10, 30),
(258, 10, 31),
(259, 10, 32),
(260, 10, 33),
(261, 10, 34),
(262, 10, 4),
(263, 10, 35),
(264, 10, 5),
(265, 10, 36),
(266, 10, 37),
(267, 10, 38),
(268, 10, 26),
(269, 10, 6),
(270, 10, 7),
(271, 10, 8),
(272, 10, 10),
(273, 10, 40),
(274, 10, 41),
(275, 10, 42),
(276, 10, 43),
(277, 10, 44),
(278, 10, 11),
(279, 10, 13),
(280, 10, 15),
(281, 10, 45),
(282, 10, 16),
(283, 10, 17),
(284, 10, 46),
(285, 10, 28),
(286, 10, 19),
(287, 10, 49),
(288, 10, 50),
(289, 10, 22),
(290, 10, 23),
(291, 10, 51),
(292, 11, 30),
(293, 11, 31),
(294, 11, 32),
(295, 11, 33),
(296, 11, 34),
(297, 11, 4),
(298, 11, 35),
(299, 11, 5),
(300, 11, 36),
(301, 11, 37),
(302, 11, 38),
(303, 11, 26),
(304, 11, 6),
(305, 11, 7),
(306, 11, 8),
(307, 11, 10),
(308, 11, 40),
(309, 10, 41),
(310, 10, 42),
(311, 10, 43),
(312, 11, 44),
(313, 11, 11),
(314, 11, 13),
(315, 11, 15),
(316, 11, 45),
(317, 11, 16),
(318, 11, 17),
(319, 11, 46),
(320, 11, 28),
(321, 11, 19),
(322, 11, 49),
(323, 11, 50),
(324, 11, 22),
(325, 11, 23),
(326, 11, 51),
(327, 12, 30),
(328, 12, 31),
(329, 12, 32),
(330, 12, 33),
(331, 12, 34),
(332, 12, 4),
(333, 12, 35),
(334, 12, 5),
(335, 12, 36),
(336, 12, 37),
(337, 12, 38),
(338, 12, 26),
(339, 12, 6),
(340, 12, 7),
(341, 12, 8),
(342, 12, 10),
(343, 12, 40),
(344, 12, 41),
(345, 12, 42),
(346, 12, 43),
(347, 12, 44),
(348, 12, 11),
(349, 12, 13),
(350, 12, 15),
(351, 12, 45),
(352, 12, 16),
(353, 12, 17),
(354, 12, 46),
(355, 12, 28),
(356, 12, 19),
(357, 12, 49),
(358, 12, 50),
(359, 12, 22),
(360, 12, 23),
(361, 12, 51),
(362, 13, 32),
(363, 13, 53),
(364, 13, 36),
(365, 13, 55),
(366, 13, 56),
(367, 13, 8),
(368, 13, 57),
(369, 13, 10),
(370, 13, 1),
(371, 13, 27),
(372, 13, 11),
(373, 13, 13),
(374, 13, 59),
(375, 13, 60),
(376, 13, 15),
(377, 13, 61),
(378, 13, 29),
(379, 13, 63),
(380, 13, 64),
(381, 13, 22),
(382, 13, 65),
(383, 13, 66),
(384, 14, 32),
(385, 14, 53),
(386, 14, 36),
(387, 14, 55),
(388, 14, 56),
(389, 14, 8),
(390, 14, 57),
(391, 14, 10),
(392, 14, 1),
(393, 14, 27),
(394, 14, 11),
(395, 14, 13),
(396, 14, 59),
(397, 14, 60),
(398, 14, 15),
(399, 14, 61),
(400, 14, 29),
(401, 14, 63),
(402, 14, 64),
(403, 14, 22),
(404, 14, 65),
(405, 14, 66),
(406, 15, 32),
(407, 15, 53),
(408, 15, 36),
(409, 15, 55),
(410, 15, 56),
(411, 15, 8),
(412, 15, 57),
(413, 15, 10),
(414, 15, 1),
(415, 15, 27),
(416, 15, 11),
(417, 15, 13),
(418, 15, 59),
(419, 15, 60),
(420, 15, 15),
(421, 15, 61),
(422, 15, 29),
(423, 15, 63),
(424, 15, 64),
(425, 15, 22),
(426, 15, 65),
(427, 15, 66),
(428, 16, 32),
(429, 16, 53),
(430, 16, 36),
(431, 16, 55),
(432, 16, 56),
(433, 16, 8),
(434, 16, 57),
(435, 16, 10),
(436, 16, 1),
(437, 16, 27),
(438, 16, 11),
(439, 16, 13),
(440, 16, 59),
(441, 16, 60),
(442, 16, 15),
(443, 16, 61),
(444, 16, 29),
(445, 16, 63),
(446, 16, 64),
(447, 16, 22),
(448, 16, 65),
(449, 16, 66),
(450, 17, 32),
(451, 17, 53),
(452, 17, 36),
(453, 17, 55),
(454, 17, 56),
(455, 17, 8),
(456, 17, 57),
(457, 17, 10),
(458, 17, 1),
(459, 17, 27),
(460, 17, 11),
(461, 17, 13),
(462, 17, 59),
(463, 17, 60),
(464, 17, 15),
(465, 17, 61),
(466, 17, 29),
(467, 17, 63),
(468, 17, 64),
(469, 17, 22),
(470, 17, 65),
(471, 17, 66),
(472, 18, 34),
(473, 18, 4),
(474, 18, 5),
(475, 18, 25),
(476, 18, 26),
(477, 18, 7),
(478, 18, 8),
(479, 18, 72),
(480, 18, 10),
(481, 18, 27),
(482, 18, 11),
(483, 18, 13),
(484, 18, 14),
(485, 18, 15),
(486, 18, 67),
(487, 18, 16),
(488, 18, 17),
(489, 18, 19),
(490, 18, 20),
(491, 18, 73),
(492, 18, 68),
(493, 18, 22),
(494, 18, 23),
(495, 18, 69),
(496, 18, 65),
(497, 18, 71),
(498, 19, 34),
(499, 19, 4),
(500, 19, 5),
(501, 19, 25),
(502, 19, 26),
(503, 19, 7),
(504, 19, 8),
(505, 19, 72),
(506, 19, 10),
(507, 19, 27),
(508, 19, 11),
(509, 19, 13),
(510, 19, 14),
(511, 19, 15),
(512, 19, 67),
(513, 19, 16),
(514, 19, 17),
(515, 19, 19),
(516, 19, 20),
(517, 19, 73),
(518, 19, 68),
(519, 19, 22),
(520, 19, 23),
(521, 19, 69),
(522, 19, 65),
(523, 19, 71),
(524, 20, 34),
(525, 20, 4),
(526, 20, 5),
(527, 20, 25),
(528, 20, 26),
(529, 20, 7),
(530, 20, 8),
(531, 20, 72),
(532, 20, 10),
(533, 20, 27),
(534, 20, 11),
(535, 20, 13),
(536, 20, 14),
(537, 20, 15),
(538, 20, 67),
(539, 20, 16),
(540, 20, 17),
(541, 20, 19),
(542, 20, 20),
(543, 20, 73),
(544, 20, 68),
(545, 20, 22),
(546, 20, 23),
(547, 20, 69),
(548, 20, 65),
(549, 20, 71),
(550, 21, 34),
(551, 21, 4),
(552, 21, 5),
(553, 21, 25),
(554, 21, 26),
(555, 21, 7),
(556, 21, 8),
(557, 21, 72),
(558, 21, 10),
(559, 21, 27),
(560, 21, 11),
(561, 21, 13),
(562, 21, 14),
(563, 21, 15),
(564, 21, 67),
(565, 21, 16),
(566, 21, 17),
(567, 21, 19),
(568, 21, 20),
(569, 21, 73),
(570, 21, 68),
(571, 21, 22),
(572, 21, 23),
(573, 21, 69),
(574, 21, 65),
(575, 21, 71),
(576, 22, 34),
(577, 22, 4),
(578, 22, 5),
(579, 22, 25),
(580, 22, 26),
(581, 22, 7),
(582, 22, 8),
(583, 22, 72),
(584, 22, 10),
(585, 22, 27),
(586, 22, 11),
(587, 22, 13),
(588, 22, 14),
(589, 22, 15),
(590, 22, 67),
(591, 22, 16),
(592, 22, 17),
(593, 22, 19),
(594, 22, 20),
(595, 22, 73),
(596, 22, 68),
(597, 22, 22),
(598, 22, 23),
(599, 22, 69),
(600, 22, 65),
(601, 22, 71);

-- --------------------------------------------------------

--
-- Table structure for table `save_card`
--

CREATE TABLE `save_card` (
  `save_card_id` int(11) NOT NULL,
  `save_yes_no` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `save_card`
--

INSERT INTO `save_card` (`save_card_id`, `save_yes_no`) VALUES
(1, 'Yes, save card'),
(2, 'No, don\'t save card');

-- --------------------------------------------------------

--
-- Table structure for table `season_price`
--

CREATE TABLE `season_price` (
  `season_price_id` int(11) NOT NULL,
  `season_name` varchar(255) NOT NULL,
  `season_start_date` date DEFAULT NULL,
  `season_end_date` date DEFAULT NULL,
  `seasonal_adjustment` decimal(10,2) NOT NULL DEFAULT '1.00',
  `hotel_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `season_price`
--

INSERT INTO `season_price` (`season_price_id`, `season_name`, `season_start_date`, `season_end_date`, `seasonal_adjustment`, `hotel_id`) VALUES
(1, 'Europa Summer Price', '2022-06-01', '2022-08-31', '1.30', 1),
(2, 'Grand Central Summer Price', '2022-06-01', '2022-08-31', '1.40', 2),
(3, 'The Merchant Summer Price', '2022-06-01', '2022-08-31', '1.50', 3),
(4, 'Beckett Locke Summer Price', '2022-06-01', '2022-08-31', '1.50', 4),
(5, 'The Trinity Summer Price', '2022-06-01', '2022-08-31', '1.60', 5),
(100, 'Standard Price', NULL, NULL, '1.00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `special_offer`
--

CREATE TABLE `special_offer` (
  `special_offer_id` int(11) NOT NULL,
  `special_offer_description` varchar(255) DEFAULT NULL,
  `special_offer_adjustment` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `special_offer`
--

INSERT INTO `special_offer` (`special_offer_id`, `special_offer_description`, `special_offer_adjustment`) VALUES
(1, 'Your secret price: 5% off', '0.95'),
(2, 'Your secret price: 10% off', '0.90'),
(3, '20% off', '0.80'),
(100, 'No offer', '1.00');

-- --------------------------------------------------------

--
-- Table structure for table `star_rating`
--

CREATE TABLE `star_rating` (
  `star_rating_id` int(11) NOT NULL,
  `star_rating_score` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `star_rating`
--

INSERT INTO `star_rating` (`star_rating_id`, `star_rating_score`) VALUES
(1, '1-star'),
(2, '2-star'),
(3, '3-star'),
(4, '4-star'),
(5, '5-star');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accessibility`
--
ALTER TABLE `accessibility`
  ADD PRIMARY KEY (`accessibility_id`);

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `FK_city_city_id` (`city_id`);

--
-- Indexes for table `amenities_of_hotel`
--
ALTER TABLE `amenities_of_hotel`
  ADD PRIMARY KEY (`amenities_of_hotel_id`);

--
-- Indexes for table `amenities_of_room`
--
ALTER TABLE `amenities_of_room`
  ADD PRIMARY KEY (`amenities_of_room_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `FK_customer_customer_id` (`customer_id`),
  ADD KEY `FK_from_booking_hotel_hotel_id` (`hotel_id`),
  ADD KEY `FK_from_booking_room_room_id` (`room_id`),
  ADD KEY `FK_from_booking_payment_payment_id` (`payment_id`),
  ADD KEY `FK_special_offer_special_offer_id` (`special_offer_id`),
  ADD KEY `FK_from_booking_local_currency_local_currency_id` (`local_currency_id`),
  ADD KEY `FK_pay_now_or_at_property_pay_now_or_at_property_id` (`pay_now_or_at_property_id`),
  ADD KEY `FK_booking_confirmed_yes_no_booking_confirmed_yes_no_id` (`booking_confirmed_yes_no_id`),
  ADD KEY `FK_season_price_season_price_id` (`season_price_id`);

--
-- Indexes for table `booking_confirmed_yes_no`
--
ALTER TABLE `booking_confirmed_yes_no`
  ADD PRIMARY KEY (`booking_confirmed_yes_no_id`);

--
-- Indexes for table `breakfast_available`
--
ALTER TABLE `breakfast_available`
  ADD PRIMARY KEY (`breakfast_available_id`);

--
-- Indexes for table `breakfast_inclusion`
--
ALTER TABLE `breakfast_inclusion`
  ADD PRIMARY KEY (`breakfast_inclusion_id`);

--
-- Indexes for table `cancellation_policy`
--
ALTER TABLE `cancellation_policy`
  ADD PRIMARY KEY (`cancellation_policy_id`);

--
-- Indexes for table `children_stay_free`
--
ALTER TABLE `children_stay_free`
  ADD PRIMARY KEY (`children_stay_free_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `contact_permission`
--
ALTER TABLE `contact_permission`
  ADD PRIMARY KEY (`contact_permission_id`);

--
-- Indexes for table `customer_account`
--
ALTER TABLE `customer_account`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `FK_membership_status_membership_status_id` (`membership_status_id`),
  ADD KEY `FK_contact_permission_contact_permission_id` (`contact_permission_id`);

--
-- Indexes for table `gift_card`
--
ALTER TABLE `gift_card`
  ADD PRIMARY KEY (`gift_card_id`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`hotel_id`),
  ADD KEY `FK_star_rating_star_rating_id` (`star_rating_id`),
  ADD KEY `FK_address_address_id` (`address_id`),
  ADD KEY `FK_pets_allowed_pets_allowed_id` (`pets_allowed_id`);

--
-- Indexes for table `hotel_accessibility`
--
ALTER TABLE `hotel_accessibility`
  ADD PRIMARY KEY (`hotel_accessibility_id`),
  ADD KEY `FK_from_hotel_accessibility_hotel_hotel_id` (`hotel_id`),
  ADD KEY `FK_accessibility_accessibility_id` (`accessibility_id`);

--
-- Indexes for table `hotel_amenities`
--
ALTER TABLE `hotel_amenities`
  ADD PRIMARY KEY (`hotel_amenities_id`),
  ADD KEY `FK_amenities_of_hotel_amenities_of_hotel_id` (`amenities_of_hotel_id`),
  ADD KEY `FK_hotel_hotel_id` (`hotel_id`);

--
-- Indexes for table `hotel_language`
--
ALTER TABLE `hotel_language`
  ADD PRIMARY KEY (`hotel_langauge_id`),
  ADD KEY `FK_from_hotel_language_hotel_hotel_id` (`hotel_id`),
  ADD KEY `FK_language_language_id` (`language_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`language_id`);

--
-- Indexes for table `local_currency`
--
ALTER TABLE `local_currency`
  ADD PRIMARY KEY (`local_currency_id`);

--
-- Indexes for table `membership_status`
--
ALTER TABLE `membership_status`
  ADD PRIMARY KEY (`membership_status_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `FK_payment_card_payment_card_id` (`payment_card_id`),
  ADD KEY `FK_gift_card_gift_card_id` (`gift_card_id`),
  ADD KEY `FK_local_currency_local_currency_id` (`local_currency_id`);

--
-- Indexes for table `payment_card`
--
ALTER TABLE `payment_card`
  ADD PRIMARY KEY (`payment_card_id`),
  ADD KEY `FK_save_card_save_card_id` (`save_card_id`);

--
-- Indexes for table `pay_at_property`
--
ALTER TABLE `pay_at_property`
  ADD PRIMARY KEY (`pay_at_property_id`);

--
-- Indexes for table `pay_now_or_at_property`
--
ALTER TABLE `pay_now_or_at_property`
  ADD PRIMARY KEY (`pay_now_or_at_property_id`);

--
-- Indexes for table `pets_allowed`
--
ALTER TABLE `pets_allowed`
  ADD PRIMARY KEY (`pets_allowed_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `FK_cancellation_policy_cancellation_policy_id` (`cancellation_policy_id`),
  ADD KEY `FK_children_stay_free_children_stay_free_id` (`children_stay_free_id`),
  ADD KEY `FK_from_room_hotel_hotel_id` (`hotel_id`),
  ADD KEY `FK_pay_at_property_pay_at_property_id` (`pay_at_property_id`),
  ADD KEY `FK_breakfast_available_breakfast_available_id` (`breakfast_available_id`),
  ADD KEY `FK_breakfast_inclusion_breakfast_inclusion_id` (`breakfast_inclusion_id`);

--
-- Indexes for table `room_amenities`
--
ALTER TABLE `room_amenities`
  ADD PRIMARY KEY (`room_amenities_id`),
  ADD KEY `FK_from_room_amenities_room_room_id` (`room_id`),
  ADD KEY `FK_amenities_of_room_amenities_of_room_id` (`amenities_of_room_id`);

--
-- Indexes for table `save_card`
--
ALTER TABLE `save_card`
  ADD PRIMARY KEY (`save_card_id`);

--
-- Indexes for table `season_price`
--
ALTER TABLE `season_price`
  ADD PRIMARY KEY (`season_price_id`),
  ADD KEY `FK_from_season_price_hotel_hotel_id` (`hotel_id`);

--
-- Indexes for table `special_offer`
--
ALTER TABLE `special_offer`
  ADD PRIMARY KEY (`special_offer_id`);

--
-- Indexes for table `star_rating`
--
ALTER TABLE `star_rating`
  ADD PRIMARY KEY (`star_rating_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accessibility`
--
ALTER TABLE `accessibility`
  MODIFY `accessibility_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `amenities_of_hotel`
--
ALTER TABLE `amenities_of_hotel`
  MODIFY `amenities_of_hotel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `amenities_of_room`
--
ALTER TABLE `amenities_of_room`
  MODIFY `amenities_of_room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `booking_confirmed_yes_no`
--
ALTER TABLE `booking_confirmed_yes_no`
  MODIFY `booking_confirmed_yes_no_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `breakfast_available`
--
ALTER TABLE `breakfast_available`
  MODIFY `breakfast_available_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `breakfast_inclusion`
--
ALTER TABLE `breakfast_inclusion`
  MODIFY `breakfast_inclusion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cancellation_policy`
--
ALTER TABLE `cancellation_policy`
  MODIFY `cancellation_policy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `children_stay_free`
--
ALTER TABLE `children_stay_free`
  MODIFY `children_stay_free_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact_permission`
--
ALTER TABLE `contact_permission`
  MODIFY `contact_permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_account`
--
ALTER TABLE `customer_account`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `gift_card`
--
ALTER TABLE `gift_card`
  MODIFY `gift_card_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `hotel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hotel_accessibility`
--
ALTER TABLE `hotel_accessibility`
  MODIFY `hotel_accessibility_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `hotel_amenities`
--
ALTER TABLE `hotel_amenities`
  MODIFY `hotel_amenities_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `hotel_language`
--
ALTER TABLE `hotel_language`
  MODIFY `hotel_langauge_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `local_currency`
--
ALTER TABLE `local_currency`
  MODIFY `local_currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `membership_status`
--
ALTER TABLE `membership_status`
  MODIFY `membership_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `payment_card`
--
ALTER TABLE `payment_card`
  MODIFY `payment_card_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pay_at_property`
--
ALTER TABLE `pay_at_property`
  MODIFY `pay_at_property_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pay_now_or_at_property`
--
ALTER TABLE `pay_now_or_at_property`
  MODIFY `pay_now_or_at_property_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pets_allowed`
--
ALTER TABLE `pets_allowed`
  MODIFY `pets_allowed_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `room_amenities`
--
ALTER TABLE `room_amenities`
  MODIFY `room_amenities_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=602;

--
-- AUTO_INCREMENT for table `save_card`
--
ALTER TABLE `save_card`
  MODIFY `save_card_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `season_price`
--
ALTER TABLE `season_price`
  MODIFY `season_price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `special_offer`
--
ALTER TABLE `special_offer`
  MODIFY `special_offer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `star_rating`
--
ALTER TABLE `star_rating`
  MODIFY `star_rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `FK_city_city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`);

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `FK_booking_confirmed_yes_no_booking_confirmed_yes_no_id` FOREIGN KEY (`booking_confirmed_yes_no_id`) REFERENCES `booking_confirmed_yes_no` (`booking_confirmed_yes_no_id`),
  ADD CONSTRAINT `FK_customer_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer_account` (`customer_id`),
  ADD CONSTRAINT `FK_from_booking_hotel_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`),
  ADD CONSTRAINT `FK_from_booking_local_currency_local_currency_id` FOREIGN KEY (`local_currency_id`) REFERENCES `local_currency` (`local_currency_id`),
  ADD CONSTRAINT `FK_from_booking_payment_payment_id` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`),
  ADD CONSTRAINT `FK_from_booking_room_room_id` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`),
  ADD CONSTRAINT `FK_pay_now_or_at_property_pay_now_or_at_property_id` FOREIGN KEY (`pay_now_or_at_property_id`) REFERENCES `pay_now_or_at_property` (`pay_now_or_at_property_id`),
  ADD CONSTRAINT `FK_season_price_season_price_id` FOREIGN KEY (`season_price_id`) REFERENCES `season_price` (`season_price_id`),
  ADD CONSTRAINT `FK_special_offer_special_offer_id` FOREIGN KEY (`special_offer_id`) REFERENCES `special_offer` (`special_offer_id`);

--
-- Constraints for table `customer_account`
--
ALTER TABLE `customer_account`
  ADD CONSTRAINT `FK_contact_permission_contact_permission_id` FOREIGN KEY (`contact_permission_id`) REFERENCES `contact_permission` (`contact_permission_id`),
  ADD CONSTRAINT `FK_membership_status_membership_status_id` FOREIGN KEY (`membership_status_id`) REFERENCES `membership_status` (`membership_status_id`);

--
-- Constraints for table `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `FK_address_address_id` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`),
  ADD CONSTRAINT `FK_pets_allowed_pets_allowed_id` FOREIGN KEY (`pets_allowed_id`) REFERENCES `pets_allowed` (`pets_allowed_id`),
  ADD CONSTRAINT `FK_star_rating_star_rating_id` FOREIGN KEY (`star_rating_id`) REFERENCES `star_rating` (`star_rating_id`);

--
-- Constraints for table `hotel_accessibility`
--
ALTER TABLE `hotel_accessibility`
  ADD CONSTRAINT `FK_accessibility_accessibility_id` FOREIGN KEY (`accessibility_id`) REFERENCES `accessibility` (`accessibility_id`),
  ADD CONSTRAINT `FK_from_hotel_accessibility_hotel_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`);

--
-- Constraints for table `hotel_amenities`
--
ALTER TABLE `hotel_amenities`
  ADD CONSTRAINT `FK_amenities_of_hotel_amenities_of_hotel_id` FOREIGN KEY (`amenities_of_hotel_id`) REFERENCES `amenities_of_hotel` (`amenities_of_hotel_id`),
  ADD CONSTRAINT `FK_hotel_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`);

--
-- Constraints for table `hotel_language`
--
ALTER TABLE `hotel_language`
  ADD CONSTRAINT `FK_from_hotel_language_hotel_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`),
  ADD CONSTRAINT `FK_language_language_id` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `FK_gift_card_gift_card_id` FOREIGN KEY (`gift_card_id`) REFERENCES `gift_card` (`gift_card_id`),
  ADD CONSTRAINT `FK_local_currency_local_currency_id` FOREIGN KEY (`local_currency_id`) REFERENCES `local_currency` (`local_currency_id`),
  ADD CONSTRAINT `FK_payment_card_payment_card_id` FOREIGN KEY (`payment_card_id`) REFERENCES `payment_card` (`payment_card_id`);

--
-- Constraints for table `payment_card`
--
ALTER TABLE `payment_card`
  ADD CONSTRAINT `FK_save_card_save_card_id` FOREIGN KEY (`save_card_id`) REFERENCES `save_card` (`save_card_id`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `FK_breakfast_available_breakfast_available_id` FOREIGN KEY (`breakfast_available_id`) REFERENCES `breakfast_available` (`breakfast_available_id`),
  ADD CONSTRAINT `FK_breakfast_inclusion_breakfast_inclusion_id` FOREIGN KEY (`breakfast_inclusion_id`) REFERENCES `breakfast_inclusion` (`breakfast_inclusion_id`),
  ADD CONSTRAINT `FK_cancellation_policy_cancellation_policy_id` FOREIGN KEY (`cancellation_policy_id`) REFERENCES `cancellation_policy` (`cancellation_policy_id`),
  ADD CONSTRAINT `FK_children_stay_free_children_stay_free_id` FOREIGN KEY (`children_stay_free_id`) REFERENCES `children_stay_free` (`children_stay_free_id`),
  ADD CONSTRAINT `FK_from_room_hotel_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`),
  ADD CONSTRAINT `FK_pay_at_property_pay_at_property_id` FOREIGN KEY (`pay_at_property_id`) REFERENCES `pay_at_property` (`pay_at_property_id`);

--
-- Constraints for table `room_amenities`
--
ALTER TABLE `room_amenities`
  ADD CONSTRAINT `FK_amenities_of_room_amenities_of_room_id` FOREIGN KEY (`amenities_of_room_id`) REFERENCES `amenities_of_room` (`amenities_of_room_id`),
  ADD CONSTRAINT `FK_from_room_amenities_room_room_id` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`);

--
-- Constraints for table `season_price`
--
ALTER TABLE `season_price`
  ADD CONSTRAINT `FK_from_season_price_hotel_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

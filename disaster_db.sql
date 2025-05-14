-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2025 at 03:49 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `disaster_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `affected_reports`
--

CREATE TABLE `affected_reports` (
  `report_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `disaster_id` int(11) NOT NULL,
  `details` text DEFAULT NULL,
  `shelter_id` int(11) DEFAULT NULL,
  `date_reported` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `affected_reports`
--

INSERT INTO `affected_reports` (`report_id`, `user_id`, `disaster_id`, `details`, `shelter_id`, `date_reported`) VALUES
(3, 4, 1, 'Nooooooooooooo', NULL, '2025-05-12 18:15:55'),
(4, 4, 1, NULL, 1, '2025-05-12 19:41:56'),
(5, 4, 1, NULL, 1, '2025-05-13 07:16:14'),
(6, 0, 1, 'Dead', NULL, '2025-05-13 08:26:50');

-- --------------------------------------------------------

--
-- Table structure for table `ambulance`
--

CREATE TABLE `ambulance` (
  `id` int(11) NOT NULL,
  `driver` varchar(100) DEFAULT NULL,
  `driver_phone_number` varchar(20) DEFAULT NULL,
  `registration_number` varchar(50) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ambulance`
--

INSERT INTO `ambulance` (`id`, `driver`, `driver_phone_number`, `registration_number`, `location`) VALUES
(3, 'Rahim Uddin', '01819000001', 'DHK-AMB-101', 'Dhanmondi, Dhaka'),
(4, 'Karim Hossain', '01819000002', 'DHK-AMB-102', 'Gulshan, Dhaka'),
(5, 'Nazmul Haque', '01819000003', 'DHK-AMB-103', 'Mirpur, Dhaka'),
(6, 'Faruque Ahmed', '01819000004', 'DHK-AMB-104', 'Uttara, Dhaka'),
(7, 'Salma Khatun', '01819000005', 'DHK-AMB-105', 'Mohammadpur, Dhaka'),
(8, 'Jamal Mia', '01819000006', 'DHK-AMB-106', 'Tejgaon, Dhaka'),
(9, 'Mizanur Rahman', '01819000007', 'DHK-AMB-107', 'Paltan, Dhaka'),
(10, 'Shamima Akter', '01819000008', 'DHK-AMB-108', 'Badda, Dhaka'),
(11, 'Rafiq Uddin', '01819000009', 'DHK-AMB-109', 'Shahbagh, Dhaka'),
(12, 'Sumon Chowdhury', '01819000010', 'DHK-AMB-110', 'Khilgaon, Dhaka'),
(13, 'Jamal Mia', '01819000006', 'DHK-AMB-106', 'Tejgaon, Dhaka'),
(14, 'Mizanur Rahman', '01819000007', 'DHK-AMB-107', 'Paltan, Dhaka'),
(15, 'Shamima Akter', '01819000008', 'DHK-AMB-108', 'Badda, Dhaka'),
(16, 'Rafiq Uddin', '01819000009', 'DHK-AMB-109', 'Shahbagh, Dhaka'),
(17, 'Sumon Chowdhury', '01819000010', 'DHK-AMB-110', 'Khilgaon, Dhaka'),
(18, 'Abdul Halim', '01819000011', 'DHK-AMB-111', 'Panthapath, Dhaka'),
(19, 'Karim Uddin', '01819000012', 'DHK-AMB-112', 'Gulshan, Dhaka'),
(20, 'Shahana Khatun', '01819000013', 'DHK-AMB-113', 'Dhanmondi, Dhaka'),
(21, 'Selim Reza', '01819000014', 'DHK-AMB-114', 'Bashundhara, Dhaka'),
(22, 'Hasina Begum', '01819000015', 'DHK-AMB-115', 'Uttara, Dhaka'),
(23, 'Habibur Rahman', '01819000016', 'DHK-AMB-116', 'Tejgaon, Dhaka'),
(24, 'Sabina Yasmin', '01819000017', 'DHK-AMB-117', 'Shahbagh, Dhaka'),
(25, 'Faruk Ahmed', '01819000018', 'DHK-AMB-118', 'Motijheel, Dhaka'),
(26, 'Nargis Sultana', '01819000019', 'DHK-AMB-119', 'Mirpur, Dhaka'),
(27, 'Rokibul Islam', '01819000020', 'DHK-AMB-120', 'Demra, Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `blood_bank`
--

CREATE TABLE `blood_bank` (
  `id` int(11) NOT NULL,
  `blood_group` varchar(5) NOT NULL,
  `units_available` int(11) NOT NULL DEFAULT 0,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blood_bank`
--

INSERT INTO `blood_bank` (`id`, `blood_group`, `units_available`, `last_updated`, `user_id`) VALUES
(0, 'B+', 1, '2025-05-14 00:22:37', 10),
(1, 'B+', 1, '2025-05-13 22:04:01', 2);

-- --------------------------------------------------------

--
-- Table structure for table `blood_donations`
--

CREATE TABLE `blood_donations` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `blood_group` varchar(5) NOT NULL,
  `donation_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blood_donations`
--

INSERT INTO `blood_donations` (`id`, `user_id`, `blood_group`, `donation_date`) VALUES
(0, 10, 'B+', '2025-05-14 08:22:37'),
(1, 2, 'B+', '2025-05-14 03:43:58'),
(3, 2, 'B+', '2025-05-14 04:04:01');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `problem_type` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `reply` text DEFAULT NULL,
  `admin_reply_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `user_id`, `name`, `email`, `problem_type`, `message`, `submitted_at`, `reply`, `admin_reply_date`) VALUES
(3, 2, 'Max Verstappen', 'max@wdc.com', 'Technical Issue', 'Hello', '2025-05-13 17:49:48', 'Yes', '2025-05-13 18:00:27'),
(4, 2, '', '', 'Service Request', 'Test', '2025-05-13 18:05:45', NULL, NULL),
(5, 2, '', '', 'Feedback', 'Well done.', '2025-05-13 18:07:55', NULL, NULL),
(6, 2, '', '', 'Feedback', 'Xd', '2025-05-13 18:09:37', NULL, NULL),
(7, 2, '', '', 'Technical Issue', 'Hello?\r\n', '2025-05-13 21:31:10', NULL, NULL),
(8, 9, '', '', 'Others', 'I need medic.', '2025-05-13 23:36:27', 'solved', '2025-05-14 00:53:36');

-- --------------------------------------------------------

--
-- Table structure for table `disaster_information`
--

CREATE TABLE `disaster_information` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `severity` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `disaster_information`
--

INSERT INTO `disaster_information` (`id`, `name`, `type`, `description`, `severity`, `date`, `location`) VALUES
(1, 'Sidr', 'Cyclone', 'Extremely Severe Cyclonic Storm Sidr was a tropical cyclone that resulted in one of the worst natural disasters in Bangladesh. The fourth named and the deadliest storm of the 2007 North Indian Ocean cyclone season, Sidr formed in the central Bay of Bengal, and quickly strengthened to reach peak 1-minute sustained winds of 260 km/h (160 mph), making it a Category-5 equivalent tropical cyclone on the Saffir–Simpson scale. The storm eventually made landfall in Bangladesh on November 15, 2007, causing large-scale evacuations. At least 3,447 deaths have been blamed on the storm, with some estimates reaching 15,000\r\n\r\nSave the Children estimated the number of deaths associated with the cyclone to be between 3,100 and 10,000, while the Red Crescent Society reported on November 18 that the number of deaths could be up to 15,000. Other aid agencies have also estimated a death toll of up to 15,000.[5] International groups pledged US$95 million to repair the damage, which was estimated at 196.25 billion taka (US$2.31 billion).', 'Critical', '2025-05-22', 'KHULNA'),
(2, 'Ring Ding', 'Earthquake', 'Severe Earthquake warning. Please get to a safe place.', 'High', '2025-05-13', 'Dhaka'),
(3, 'Aila', 'Tsunami', 'It was a disaster.', 'Critical', '2025-05-14', 'Chittagong City');

-- --------------------------------------------------------

--
-- Table structure for table `fire_service`
--

CREATE TABLE `fire_service` (
  `id` int(11) NOT NULL,
  `station_name` varchar(100) DEFAULT NULL,
  `station_contact_number` varchar(20) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fire_service`
--

INSERT INTO `fire_service` (`id`, `station_name`, `station_contact_number`, `location`) VALUES
(0, 'Mohakhali Fire Station', '046436338', 'Mohakhali, Dhaka'),
(2, 'Baridhara Fire Station', '0298812347', 'Baridhara, Dhaka'),
(3, 'Mohammadpur Fire Station', '029882345', 'Mohammadpur, Dhaka'),
(4, 'Tejgaon Fire Station', '029883456', 'Tejgaon, Dhaka'),
(5, 'Uttara Fire Station', '029884567', 'Uttara, Dhaka'),
(6, 'Mirpur Fire Station', '0129885678', 'Mirpur, Dhaka'),
(7, 'Khilgaon Fire Station', '029886789', 'Khilgaon, Dhaka'),
(8, 'Paltan Fire Station', '029887890', 'Paltan, Dhaka'),
(9, 'Shahbagh Fire Station', '029888901', 'Shahbagh, Dhaka'),
(10, 'Badda Fire Station', '029889012', 'Badda, Dhaka'),
(11, 'Demra Fire Station', '029880123', 'Demra, Dhaka'),
(12, 'Khilgaon Fire Station', '029886789', 'Khilgaon, Dhaka'),
(13, 'Paltan Fire Station', '029887890', 'Paltan, Dhaka'),
(14, 'Shahbagh Fire Station', '029888901', 'Shahbagh, Dhaka'),
(16, 'Demra Fire Station', '029880123', 'Demra, Dhaka'),
(17, 'Tejgaon Fire Station', '029880201', 'Tejgaon, Dhaka'),
(18, 'Mohammadpur Fire Station', '029880202', 'Mohammadpur, Dhaka'),
(19, 'Banani Fire Station', '029880203', 'Banani, Dhaka'),
(20, 'Mirpur Fire Station', '029880204', 'Mirpur, Dhaka'),
(21, 'Dhanmondi Fire Station', '029880205', 'Dhanmondi, Dhaka'),
(22, 'Wari Fire Station', '029880206', 'Wari, Dhaka'),
(23, 'Shahjahanpur Fire Station', '029880207', 'Shahjahanpur, Dhaka'),
(24, 'Uttara Fire Station', '029880208', 'Uttara, Dhaka'),
(25, 'Jatrabari Fire Station', '029880209', 'Jatrabari, Dhaka'),
(26, 'Motijheel Fire Station', '029880210', 'Motijheel, Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `id` int(11) NOT NULL,
  `hospital_name` varchar(100) DEFAULT NULL,
  `stored_blood` int(11) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `doctors` int(11) DEFAULT NULL,
  `nurses` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`id`, `hospital_name`, `stored_blood`, `phone_number`, `location`, `doctors`, `nurses`) VALUES
(1, 'United Hospital', 80, '0966671124', 'Gulshan, Dhaka', 120, 300),
(2, 'Square Hospital', 100, '09612004000', 'Panthapath, Dhaka', 100, 250),
(3, 'Labaid Hospital', 65, '01766662111', 'Dhanmondi, Dhaka', 90, 200),
(4, 'Dhaka Medical College', 120, '029586123', 'Bakshibazar, Dhaka', 150, 400),
(5, 'Apollo Hospitals Dhaka', 90, '09666710666', 'Bashundhara, Dhaka', 130, 270),
(6, 'Holy Family Red Crescent Medical College Hospital', 70, '029341234', 'Eskaton, Dhaka', 85, 180),
(7, 'Ibn Sina Hospital', 55, '01766662345', 'Dhanmondi, Dhaka', 70, 150),
(8, 'Popular Diagnostic Centre', 40, '09613787888', 'Shantinagar, Dhaka', 65, 120),
(9, 'BRB Hospital', 50, '09666710777', 'Panthapath, Dhaka', 75, 160),
(10, 'Dhaka Central Hospital', 45, '029863210', 'Green Road, Dhaka', 60, 140),
(11, 'Holy Family Red Crescent Medical College Hospital', 70, '029341234', 'Eskaton, Dhaka', 85, 180),
(12, 'Ibn Sina Hospital', 55, '01766662345', 'Dhanmondi, Dhaka', 70, 150),
(13, 'Popular Diagnostic Centre', 40, '09613787888', 'Shantinagar, Dhaka', 65, 120),
(14, 'BRB Hospital', 50, '09666710777', 'Panthapath, Dhaka', 75, 160),
(15, 'Dhaka Central Hospital', 45, '029863210', 'Green Road, Dhaka', 60, 140),
(16, 'Square Hospital', 90, '09666787878', 'Panthapath, Dhaka', 120, 300),
(18, 'LabAid Hospital', 80, '09666777777', 'Dhanmondi, Dhaka', 100, 250),
(19, 'Asgar Ali Hospital', 75, '029000909', 'Gandaria, Dhaka', 85, 200),
(20, 'BIRDEM General Hospital', 95, '029666666', 'Shahbagh, Dhaka', 130, 320),
(21, 'Evercare Hospital Dhaka', 100, '09666775533', 'Bashundhara, Dhaka', 140, 350),
(22, 'National Heart Foundation', 60, '029913456', 'Mirpur, Dhaka', 90, 220),
(23, 'Central Hospital', 55, '029863333', 'Green Road, Dhaka', 70, 180),
(24, 'Holy Crescent Hospital', 50, '029850505', 'Mohammadpur, Dhaka', 75, 190),
(25, 'Ibrahim Cardiac Hospital', 70, '029878585', 'Shahbagh, Dhaka', 95, 210);

-- --------------------------------------------------------

--
-- Table structure for table `police`
--

CREATE TABLE `police` (
  `id` int(11) NOT NULL,
  `station_name` varchar(100) DEFAULT NULL,
  `officer_in_charge` varchar(100) DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `police`
--

INSERT INTO `police` (`id`, `station_name`, `officer_in_charge`, `contact_number`, `location`) VALUES
(6, 'Gulshan Police Station', NULL, '01713000011', 'Gulshan, Dhaka'),
(7, 'Banani Police Station', NULL, '01713000002', 'Banani, Dhaka'),
(8, 'Dhanmondi Police Station', NULL, '01713000003', 'Dhanmondi, Dhaka'),
(9, 'Uttara Police Station', NULL, '01723000004', 'Uttara, Dhaka'),
(10, 'Motijheel Police Station', NULL, '01713000005', 'Motijheel, Dhaka'),
(11, 'Mohammadpur Police Station', NULL, '01713000006', 'Mohammadpur, Dhaka'),
(12, 'Mirpur Model Police Station', NULL, '01713000007', 'Mirpur, Dhaka'),
(13, 'Tejgaon Industrial Police Station', NULL, '01713000008', 'Tejgaon, Dhaka'),
(14, 'Badda Police Station', NULL, '01713000009', 'Badda, Dhaka'),
(15, 'Paltan Police Station', NULL, '01713000010', 'Paltan, Dhaka'),
(16, 'Gulshan Police Station', NULL, '01713000011', 'Gulshan, Dhaka'),
(17, 'Wari Police Station', NULL, '01713000012', 'Wari, Dhaka'),
(18, 'Lalbagh Police Station', NULL, '01713000013', 'Lalbagh, Dhaka'),
(19, 'Ramna Police Station', NULL, '01713000014', 'Ramna, Dhaka'),
(20, 'Sutrapur Police Station', NULL, '01713000015', 'Sutrapur, Dhaka'),
(21, 'Dhanmondi Police Station', NULL, '01713000016', 'Dhanmondi, Dhaka'),
(22, 'Bashundhara Police Outpost', NULL, '01713000017', 'Bashundhara, Dhaka'),
(23, 'Keraniganj Police Station', NULL, '01713000018', 'Keraniganj, Dhaka'),
(24, 'Shyampur Police Station', NULL, '01713000019', 'Shyampur, Dhaka'),
(25, 'Motijheel Police Station', NULL, '01713000020', 'Motijheel, Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `public_message`
--

CREATE TABLE `public_message` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL,
  `evacuation_priority` varchar(50) NOT NULL,
  `posted_by` int(11) NOT NULL,
  `disasters_id` int(11) NOT NULL,
  `date_posted` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `public_message`
--

INSERT INTO `public_message` (`id`, `message`, `evacuation_priority`, `posted_by`, `disasters_id`, `date_posted`) VALUES
(2, 'Get to shelters.', 'Low', 4, 3, '2025-05-13 18:54:55'),
(3, 'Be alert! Sidr is coming. Go to nearest shelter as soon as possible.', 'High', 4, 1, '2025-05-14 00:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `quantity` int(11) DEFAULT 0,
  `shelter_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`id`, `name`, `type`, `quantity`, `shelter_id`) VALUES
(1, 'Blanket', 'Bedding', 109, 1),
(2, 'Bottled Water', 'Food & Water', 300, 1),
(3, 'Canned Beans', 'Food & Water', 200, 2),
(4, 'First Aid Kit', 'Medicine', 39, 2),
(5, 'Blankets', 'Comfort', 149, 1),
(6, 'Water Bottles', 'Essential', 500, 2),
(7, 'First Aid Kits', 'Medical', 50, 3),
(8, 'Flashlights', 'Utility', 120, 1),
(9, 'Canned Food', 'Food', 300, 2),
(10, 'Portable Stoves', 'Utility', 30, 3),
(11, 'Tents', 'Shelter', 80, 1),
(12, 'Batteries', 'Essential', 196, 2),
(13, 'Hygiene Kits', 'Sanitation', 99, 3),
(14, 'Generators', 'Utility', 10, 1),
(15, 'Sleeping Bags', 'Comfort', 200, 1),
(16, 'Solar Panels', 'Utility', 15, 2),
(17, 'Water Filters', 'Essential', 75, 3),
(18, 'Cooking Pots', 'Utility', 50, 1),
(19, 'Rope', 'Utility', 150, 2),
(20, 'Plastic Sheets', 'Shelter', 120, 3),
(21, 'Clothing', 'Comfort', 500, 1),
(22, 'Tarps', 'Shelter', 200, 2),
(23, 'Food Rations', 'Food', 400, 3),
(24, 'Medicines', 'Medical', 60, 1),
(25, 'Shovels', 'Utility', 100, 2),
(26, 'Cots', 'Comfort', 150, 3),
(27, 'Pillows', 'Comfort', 250, 1),
(28, 'Raincoats', 'Clothing', 100, 2),
(29, 'Water Tanks', 'Essential', 5, 3),
(30, 'Blanket', 'cloths', 10, NULL);

--
-- Triggers `resources`
--
DELIMITER $$
CREATE TRIGGER `prevent_negative_quantity` BEFORE UPDATE ON `resources` FOR EACH ROW BEGIN
    IF NEW.quantity < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Resource quantity cannot be negative';
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `resource_request`
--

CREATE TABLE `resource_request` (
  `id` int(11) NOT NULL,
  `resource_name` varchar(100) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `requested_quantity` int(11) DEFAULT NULL,
  `request_date` datetime DEFAULT current_timestamp(),
  `status` varchar(20) DEFAULT 'pending',
  `requested_by_user_id` int(11) DEFAULT NULL,
  `shelter_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resource_request`
--

INSERT INTO `resource_request` (`id`, `resource_name`, `type`, `requested_quantity`, `request_date`, `status`, `requested_by_user_id`, `shelter_id`) VALUES
(1, 'Diapers', 'Hygiene', 25, '2025-05-14 01:28:05', 'allocated', 5, 1),
(3, 'Napa', 'Medicine', 1, '2025-05-14 02:09:01', 'rejected', 2, 2),
(4, 'Napa', 'Medicine', 1, '2025-05-14 02:11:43', 'allocated', 2, 5),
(6, 'Napkin', 'Hygiene', 10, '2025-05-14 02:30:36', 'rejected', 2, 4),
(7, 'Napa', 'Medicine', 200, '2025-05-14 02:58:57', 'allocated', 6, 1),
(8, 'Napkin', 'Hygiene', 25, '2025-05-14 02:59:58', 'allocated', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shelter_checkins`
--

CREATE TABLE `shelter_checkins` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shelter_id` int(11) NOT NULL,
  `checkin_time` datetime DEFAULT current_timestamp(),
  `checkout_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shelter_checkins`
--

INSERT INTO `shelter_checkins` (`id`, `user_id`, `shelter_id`, `checkin_time`, `checkout_time`) VALUES
(1, 2, 1, '2025-05-14 01:06:09', '2025-05-14 01:07:57'),
(2, 2, 1, '2025-05-14 01:08:00', '2025-05-14 01:08:05'),
(3, 2, 1, '2025-05-14 01:08:46', '2025-05-14 01:08:51'),
(4, 2, 1, '2025-05-14 01:08:53', '2025-05-14 01:08:54'),
(5, 2, 3, '2025-05-14 01:08:56', '2025-05-14 01:08:57'),
(6, 2, 3, '2025-05-14 01:43:02', '2025-05-14 01:51:09'),
(7, 2, 1, '2025-05-14 01:51:22', '2025-05-14 01:51:27'),
(8, 2, 1, '2025-05-14 01:51:29', '2025-05-14 01:51:38'),
(9, 2, 2, '2025-05-14 01:51:49', '2025-05-14 01:51:58'),
(10, 2, 2, '2025-05-14 02:00:28', '2025-05-14 02:05:03'),
(11, 2, 5, '2025-05-14 02:06:32', '2025-05-14 02:12:56'),
(12, 2, 4, '2025-05-14 02:30:03', NULL),
(13, 6, 1, '2025-05-14 02:58:36', NULL),
(0, 9, 1, '2025-05-14 04:34:03', '2025-05-14 04:34:23'),
(0, 9, 2, '2025-05-14 04:34:27', '2025-05-14 04:34:30'),
(0, 9, 1, '2025-05-14 08:48:33', '2025-05-14 08:48:44'),
(0, 9, 1, '2025-05-14 08:48:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shelter_information`
--

CREATE TABLE `shelter_information` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(20) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `current_occupancy` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shelter_information`
--

INSERT INTO `shelter_information` (`id`, `name`, `location`, `contact_email`, `contact_phone`, `capacity`, `current_occupancy`, `description`) VALUES
(1, 'Green Valley Shelter', '123 Oak St, Springfield', 'gv.shelter@example.com', '555-123-4567', 100, 43, 'Safe and secure facility with beds and meals.'),
(2, 'Riverside Community Hall', '88 River Rd, Rivertown', 'riverside.relief@example.com', '555-234-5678', 80, 67, 'Accessible shelter with medical support.'),
(3, 'Hilltop Emergency Center', '45 Hilltop Ave, Laketown', 'hilltop.center@example.com', '555-345-6789', 120, 111, 'Large emergency shelter with food, water, and basic supplies.'),
(4, 'Downtown Relief Shelter', '10 Central Blvd, Metro City', 'downtown.relief@example.com', '555-456-7890', 150, 132, 'Located near transit stations, 24/7 staffed.'),
(5, 'Pine Grove Shelter', '205 Forest Ln, Pineview', 'pinegrove.shelter@example.com', '555-567-8901', 60, 28, 'Small, quiet shelter surrounded by trees.'),
(6, 'Hope Shelter', '123 Elm St, Springfield', 'contact@hopeshelter.com', '+1234567890', 100, 50, 'A shelter providing food and medical assistance for disaster survivors.'),
(7, 'Safe Haven', '456 Oak Ave, Maple City', 'info@safehaven.org', '+1987654321', 200, 150, 'A community shelter offering a safe space for displaced families.'),
(8, 'Rescue Shelter', '789 Pine Rd, Greenwood', 'support@rescueshelter.org', '+1122334455', 150, 120, 'A temporary shelter for people affected by natural disasters.'),
(9, 'Sunshine Shelter', '101 Birch Blvd, Pineville', 'contact@sunshineshelter.org', '+1456789012', 80, 60, 'Provides housing, food, and medical care for evacuees.'),
(10, 'Unity Shelter', '202 Cedar Ln, Riverwood', 'unity@riverwood.org', '+1765432109', 250, 200, 'A shelter focused on offering support for homeless individuals and families.'),
(11, 'Freedom Shelter', '303 Maple Dr, Hilltop', 'freedom@freedom.org', '+1876543210', 120, 80, 'A facility for people fleeing from emergency situations.'),
(12, 'Guardian Shelter', '404 Willow Way, Westbrook', 'guardian@westbrook.org', '+1987654322', 300, 250, 'A large shelter offering resources and relief for disaster survivors.'),
(13, 'Serenity Shelter', '505 Aspen Blvd, Greenfield', 'serenity@greenfield.com', '+1098765432', 150, 100, 'Offers a peaceful refuge for families during times of crisis.'),
(14, 'Resilience Shelter', '606 Fir St, Oak Ridge', 'resilience@oakridge.org', '+1223344556', 180, 130, 'A shelter providing long-term support for individuals affected by disasters.');

-- --------------------------------------------------------

--
-- Table structure for table `sos`
--

CREATE TABLE `sos` (
  `id` int(11) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `Reason` varchar(100) DEFAULT NULL,
  `STATUS` varchar(50) DEFAULT 'Pending',
  `assigned_unit` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `user_ip` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sos`
--

INSERT INTO `sos` (`id`, `NAME`, `phone`, `location`, `Reason`, `STATUS`, `assigned_unit`, `created_at`, `user_ip`) VALUES
(1, 'Max', '01738363836', 'Dhaka', 'Fire', 'Ongoing', 'Fire Service', '2025-05-13 16:56:44', '::1'),
(3, 'Arif Hossain', '01712000001', 'Gulshan, Dhaka', 'Medical emergency', 'Ongoing', 'Ambulance', '2025-05-13 20:51:44', NULL),
(4, 'Sadia Islam', '01712000002', 'Mirpur, Dhaka', 'Fire in apartment', 'Ongoing', 'Ambulance,Fire Service', '2025-05-13 20:51:44', NULL),
(5, 'Rashed Khan', '01712000003', 'Uttara, Dhaka', 'Accident on road', 'Ongoing', 'Ambulance', '2025-05-13 20:51:44', NULL),
(6, 'Nusrat Jahan', '01712000004', 'Dhanmondi, Dhaka', 'Gas leak in building', 'Ongoing', 'Ambulance,Fire Service', '2025-05-13 20:51:44', NULL),
(7, 'Tanvir Ahmed', '01712000005', 'Badda, Dhaka', 'Robbery in progress', 'Ongoing', 'Police', '2025-05-13 20:51:44', NULL),
(8, 'Mehzabin Rahman', '01712000006', 'Khilgaon, Dhaka', 'Heart attack', 'Solved', 'Ambulance', '2025-05-13 20:51:44', NULL),
(9, 'Fahim Chowdhury', '01712000007', 'Tejgaon, Dhaka', 'Flooding in area', 'Ongoing', 'Ambulance,Fire Service,Police', '2025-05-13 20:51:44', NULL),
(10, 'Rina Akter', '01712000008', 'Motijheel, Dhaka', 'Building collapse', 'Ongoing', 'Police', '2025-05-13 20:51:44', NULL),
(11, 'Shuvo Das', '01712000009', 'Mohakhali, Dhaka', 'Serious injury', 'Ongoing', 'Ambulance,Fire Service,Police', '2025-05-13 20:51:44', NULL),
(12, 'Lamia Hasan', '01712000010', 'Banani, Dhaka', 'Fire outbreak', 'Pending', NULL, '2025-05-13 20:51:44', NULL),
(13, 'Hasan Mahmud', '01712000011', 'Shahbagh, Dhaka', 'Car accident with injury', 'Ongoing', 'Ambulance', '2025-05-13 20:51:44', NULL),
(14, 'Nasima Begum', '01712000012', 'Mohammadpur, Dhaka', 'House fire', 'Ongoing', '', '2025-05-13 20:51:44', NULL),
(15, 'Jahirul Islam', '01712000013', 'Farmgate, Dhaka', 'Child missing', 'Pending', 'Police', '2025-05-13 20:51:44', NULL),
(16, 'Tasnim Alam', '01712000014', 'Demra, Dhaka', 'Gas cylinder explosion', 'Pending', NULL, '2025-05-13 20:51:44', NULL),
(17, 'Firoz Alam', '01712000015', 'Rampura, Dhaka', 'Electrocution case', 'Pending', NULL, '2025-05-13 20:51:44', NULL),
(18, 'Khadija Sultana', '01712000016', 'Malibagh, Dhaka', 'Fire in kitchen', 'Pending', NULL, '2025-05-13 20:51:44', NULL),
(19, 'Shamim Reza', '01712000017', 'Shantinagar, Dhaka', 'Road blocked due to accident', 'Solved', NULL, '2025-05-13 20:51:44', NULL),
(20, 'Alamin Sardar', '01712000018', 'Green Road, Dhaka', 'Collapsed ceiling', 'Pending', NULL, '2025-05-13 20:51:44', NULL),
(21, 'Ruksana Khan', '01712000019', 'Wari, Dhaka', 'Emergency childbirth', 'Ongoing', 'Ambulance', '2025-05-13 20:51:44', NULL),
(22, 'Mahmudul Hasan', '01712000020', 'Keraniganj, Dhaka', 'Boat capsized near riverbank', 'Pending', NULL, '2025-05-13 20:51:44', NULL),
(23, 'Gazi', '015111111111', 'Dhanmondi', 'fire in home', 'Pending', NULL, '2025-05-13 20:51:44', NULL),
(24, 'Max', '01738363836', 'Cox\'s Bazar', 'Fire', 'Pending', NULL, '2025-05-13 20:59:22', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `blood_group` enum('A+','A-','B+','B-','AB+','AB-','O+','O-') NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `location` varchar(255) DEFAULT NULL,
  `is_volunteer` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `blood_group`, `email`, `username`, `password`, `address`, `role`, `location`, `is_volunteer`) VALUES
(1, 'SHOWKAT ZAMAN ABIR', '012839448484', 'B+', 'szabir18@gmail.com', 'Sza', '$2y$10$RdNUNm0wtRaVEdEu5RgpzOVvrm1UXr4LVzAwtMm299guJCzLTAn/S', 'HOUSE# 10, ROAD#12, BLOCK#B,', 'admin', 'Dhaka', 0),
(2, 'Max Verstappen', '45875847', 'B+', 'max@wdc.com', 'max', '$2y$10$sx38u0/WB6kK9PsoLBzri.uef5iZMyKK8Ns5d9DGZat2WqN5KZP4S', 'Dhaka, Bangladesh', 'user', NULL, 1),
(3, 'alvee', '02839448484', 'AB+', 'alvee@gmail.com', 'alvee', '$2y$10$wfMqeks8de6Y/Jk14XRJG.VXXq6UJXXLeslAjgoZMhk1sETJru4Li', 'HOUSE# 10, ROAD#12, BLOCK#B,', 'user', 'Khulna', 0),
(4, 'Riaz', '085498352', 'O-', 'riaz@gmail.com', 'riaz', '$2y$10$BLF9qgc764WSr.OppaaPGus6JA/6w0SpZW4CY0I0mGpBXQH23m./C', 'abcd', 'admin', 'Dhaka', 0),
(5, 'kamal hossain', '1259665757', 'B-', 'kamal67@gmail.com', 'kamal', '$2y$10$GmKHBrT6E9zBXTIEABJWMOOOLDRizJuaRemKVlqYV8Wll3dNHOWQO', 'House#45, Road#46, Mohammadpur,Dhaka', 'user', NULL, 1),
(6, 'Carlos Sainz', '45875847', 'AB+', 'carlos@wdc.com', 'carlos', '$2y$10$3xWRQBoxAC1sPALgt1jen.4ErrEARigfhpejGqOFYPcRvJH7Muavy', 'Madrid,Spain', 'user', NULL, 1),
(7, 'Korim', '45875847845', 'A-', 'korim@gmail.com', 'korim', '$2y$10$ukD59ZoPdU4ot6sjI6v3xuEMj32FVbtYvEo66qAxhlxLqynG6JYB2', 'ANdj', 'user', NULL, 0),
(9, 'ratul', '76388574875', 'AB+', 'ratul08@gmail.com', 'ratul', '$2y$10$vm3no0Mg1.WIMFS1..LXquEN7BpQ8eVuUvhOTxufOQiVoCpdjme/6', 'HOUSE# 10, ROAD#12, BLOCK#B,', 'user', NULL, 1),
(10, 'aab', '122212111', 'B+', 'aab@hotmail.com', 'aab', '$2y$10$Tr6XNS9z8J9WX7ik1LbRlONo7wV95f/bdqkL5x6S.VbCC/j356S02', 'bd', 'user', NULL, 1),
(11, 'khan', '14444', 'B+', 'khan@hotmail.com', 'khan', '$2y$10$WJI5hFTrACuTNjnVjBupzOMWSs.1wdINTLi1l2/4C33MjONgoFKIi', 'bd', 'user', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `volunteer_requests`
--

CREATE TABLE `volunteer_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `request_date` datetime DEFAULT current_timestamp(),
  `status` enum('pending','approved','rejected') DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `volunteer_requests`
--

INSERT INTO `volunteer_requests` (`id`, `user_id`, `request_date`, `status`) VALUES
(1, 6, '2025-05-13 22:14:20', 'approved'),
(2, 2, '2025-05-13 22:15:51', 'approved'),
(3, 10, '2025-05-14 08:12:54', 'approved'),
(4, 9, '2025-05-14 08:50:23', 'approved');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `affected_reports`
--
ALTER TABLE `affected_reports`
  ADD PRIMARY KEY (`report_id`),
  ADD KEY `fk_user` (`user_id`),
  ADD KEY `fk_disaster` (`disaster_id`),
  ADD KEY `fk_shelter` (`shelter_id`);

--
-- Indexes for table `ambulance`
--
ALTER TABLE `ambulance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_bank`
--
ALTER TABLE `blood_bank`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `blood_donations`
--
ALTER TABLE `blood_donations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `disaster_information`
--
ALTER TABLE `disaster_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fire_service`
--
ALTER TABLE `fire_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `police`
--
ALTER TABLE `police`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `public_message`
--
ALTER TABLE `public_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posted_by` (`posted_by`),
  ADD KEY `disasters_id` (`disasters_id`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shelter_id` (`shelter_id`);

--
-- Indexes for table `shelter_information`
--
ALTER TABLE `shelter_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sos`
--
ALTER TABLE `sos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `volunteer_requests`
--
ALTER TABLE `volunteer_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `affected_reports`
--
ALTER TABLE `affected_reports`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ambulance`
--
ALTER TABLE `ambulance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `disaster_information`
--
ALTER TABLE `disaster_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `public_message`
--
ALTER TABLE `public_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `shelter_information`
--
ALTER TABLE `shelter_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sos`
--
ALTER TABLE `sos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `volunteer_requests`
--
ALTER TABLE `volunteer_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD CONSTRAINT `contact_us_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `public_message`
--
ALTER TABLE `public_message`
  ADD CONSTRAINT `public_message_ibfk_1` FOREIGN KEY (`posted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `public_message_ibfk_2` FOREIGN KEY (`disasters_id`) REFERENCES `disaster_information` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `resources`
--
ALTER TABLE `resources`
  ADD CONSTRAINT `resources_ibfk_1` FOREIGN KEY (`shelter_id`) REFERENCES `shelter_information` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `volunteer_requests`
--
ALTER TABLE `volunteer_requests`
  ADD CONSTRAINT `volunteer_requests_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

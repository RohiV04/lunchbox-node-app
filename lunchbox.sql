-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 20, 2023 at 03:30 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lunchbox`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `addr_id` int(11) NOT NULL,
  `area` varchar(250) NOT NULL,
  `apartment` varchar(100) NOT NULL,
  `pincode` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`addr_id`, `area`, `apartment`, `pincode`) VALUES
(101, 'Vamsi krishna nagar', 'Vamsi krishna nagar 4th left kakathiya old school opposite', 534202),
(102, 'ASR Nagar', 'Canara Bank Backside (Manjusa)', 534201),
(103, 'ASR Nagar', 'sita towers 407 4th floor addavanthena road', 534201),
(104, 'ASR Nagar', 'MSR towers 305 4th floor addavanthena road', 534201),
(105, 'ASR Nagar', 'Prince towers 202 2nd floor addavanthena road', 534201),
(106, 'ASR Nagar', 'Gopi krishna towers 101 1floor', 534201),
(107, 'ASR Nagar', 'vijay lakshmi towers 1st floor A2 4th left', 534201),
(108, 'ASR Nagar', 'lotus orient apartment opposite cake shop', 534201),
(109, 'ASR Nagar', 'punnami towers 3rd floor 301  (TV tower road)', 534201),
(110, 'ASR Nagar', 'Krishna residency 5th floor (402)  (TV tower road)', 534201),
(111, 'ASR Nagar', 'vivekanda homes 402 4th floor  (TV tower road)', 534201),
(112, 'ASR Nagar', 'vivekanda homes 302  3th floor  (TV tower road)', 534201),
(113, 'ASR Nagar', 'vivekanda homes 102 1 th floor  (TV tower road)', 534201),
(114, 'ASR Nagar', 'Slv Gangotri towers 404   4th floor  (TV tower road)', 534201),
(115, 'ASR Nagar', 'vishnu towers 5th floor 405 oppsite  water tank ', 534201),
(116, 'ASR Nagar', 'RR heights 402 4floor water tank', 534201),
(117, 'ASR Nagar', 'Asr statue back side house', 534201),
(118, 'ASR Nagar', 'Elite towers opposite road 2nd floor (Ayush restaruant beside road)', 534201),
(119, 'ASR Nagar', 'satya homes 5th floor (D1) (Ayush restaruant beside road)', 534201),
(120, 'ASR Nagar', 'shreya towers 3rd floor 302 ASR kalyana mandapam backside', 534201),
(121, 'ASR Nagar', 'lotus residency c 401 5th floor ASR kalyana mandapam backside', 534201),
(122, 'ASR Nagar', 'lotus residency C 403 5th floor ASR kalyana mandapam backside', 534201),
(123, 'ASR Nagar', 'lotus residency C 202 3th floor ASR kalyana mandapam backside', 534201),
(124, 'ASR Nagar', 'lotus residency C G4 1st floor ASR kalyana mandapam backside', 534201),
(125, 'ASR Nagar', 'lotus residency A 103  1st floor ASR kalyana mandapam backside road', 534201),
(126, 'ASR Nagar', 'Hanuma Residency 201 3rd floor ASR kalyana mandapam backside road', 534201),
(201, 'Gunupudi', 'SBI main branch beside house ', 534201),
(202, 'Gunupudi', 'SBI main branch backside', 534201),
(203, 'Chinna Amiram', 'Baroda bank tygaraju bhavan  (opp) green house', 534201),
(204, 'Chinna Amiram', 'Municipal office backside', 534201),
(205, 'sriram puram', 'kokas enclave     watch man pick', 534202),
(206, 'Balasumudi', 'Chicken shop opposite road', 534202),
(207, 'DNR road', 'Seetha Mansion 302', 534202),
(208, 'Balasumudi', 'Sri Lakshmi Nilayam (Hansi)', 534202),
(209, 'Balasumudi', '32 Dental Care road Green House', 534202),
(210, 'Balasumudi', 'Chettu Kinda Sai baba', 534202),
(211, 'Chinna Amiram', 'vishnu manaswini enclave 409 4 th floor vishvakavi school road', 534201),
(212, 'Chinna Amiram', 'MS Narasimha Raju Building 3rd floor (chinnamiram) vishvakavi school rood', 534201),
(213, 'Chinna Amiram', 'VR Towers 1floor 103 vempadu road', 534201),
(214, 'Chinna Amiram', 'VishnuPriya Towers 202 2floor Sri Chaitanya collage road 2nd Right Side ', 534201),
(301, 'Balusumudi', 'Venkateswara Towers E2( new ramalayam oppsite)', 534202),
(302, 'balusumudi', 'Annapurna Nilayam 1floor  ( new ramalayam oppsite)', 534202),
(303, 'rayalam', 'Rayalam deff and dum school canal road', 534208),
(304, 'youth club road', 'sai rama towers D block 504 5 th (sai baba temple back side)', 534204),
(305, 'youth club road', 'Iris grand 2nd floor 211  (sai baba temple opp)', 534204),
(306, 'Chinna Amiram', 'jaya Sri Towers 5th Floor 412', 534201),
(307, 'Chinnamiram', 'vinay classic 3 rd floor 307 Srkr clg opp', 534201),
(308, 'Pedamiram', 'Psr green city 5th  right side (44 villa) 2nd floor', 534204),
(309, 'peddhamiram', 'Psr green city 3rd left  side (6 villa)  1st floor party office', 534204),
(310, 'peddhamiram', 'Psr green city 3rd left  side  3rd house right side', 534204),
(311, 'peddhamiram', 'Silver springs vills 22', 534204),
(401, 'Gunupudi', 'Bethany Peta  misson hospital back side ', 534201),
(402, 'Gunupudi', 'Masjid opposite', 534201),
(403, 'Gunupudi', 'SK bookstall shop building 2nd floor right side to stairs (Mavvulam purigudi)', 534201),
(404, 'Gunupudi', 'SK bookstall opposite (mavvulam purigudi backside)', 534201),
(405, 'Gunupudi', 'Mavullama puri gudi backside house', 534201),
(406, 'Gunupudi', 'Simhadripuram Gudi', 534201),
(407, 'Gunupudi', ' Simhadripuram Gudi  road beside  duplex vididhillu road', 534201),
(408, 'Gandhi nagar', 'DTDC opposite black house   SBI main branch opp road', 534204),
(409, 'Gunupudi', 'Municipal office opposite Building 1floor', 534201),
(501, 'Sivaraopeta', 'patha current office road 2nd right deadend house', 534202),
(502, 'Sivaraopeta', 'maharshi towers F4 1st floor 1st right ', 534202),
(503, 'Sivaraopeta', ' ramalayam temple opp road kaluva 2nd house', 534202),
(504, 'jp road', 'Blossom cell shop (ganesh canteen opposite) ', 534202),
(505, 'Balusumudi', 'siri Icon 403 4floor vempa raju road 1 Right Side ', 534202),
(506, 'Rayalam', 'Sampath Paradise 302 3rd floor Rayalam Bypass road ', 534208),
(507, 'Rayalam', 'Surya Teja Towers (Rayalam bypass road)', 534208),
(508, 'Rayalam', 'Alpha Towers A Block 208  (Rayalam bypass road)', 534208),
(509, 'Rayalam', 'Alpha Towers A Block 204 (Rayalam bypass road)', 534208),
(510, 'Rayalam', 'Alpha Towers B Block 403 (Rayalam bypass road)', 534208),
(511, 'Rayalam', 'ramakrishna Residency 302 4th Floor  (Rayalam Bypass Road oppsite Ramprasad Avenue)', 534208),
(512, 'rayalam bypass', 'Sri Krishna Nilayam (Ramprasad Avenue)', 534208),
(513, 'rayalam bypass', 'Mahesh Garu (Ramprasad Avenue)', 534208),
(514, 'Chinna Amiram', 'Bhimavaram Hospital road', 534201);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `name`, `mobile`, `email`) VALUES
('admin1', 'password1', 'Sanju', '1234567890', 'john.doe@example.com'),
('admin2', 'password2', 'Jane Smith', '9876543210', 'jane.smith@example.com'),
('admin3', 'password3', 'Michael Johnson', '5555555555', 'michael.johnson@example.com'),
('admin4', 'password4', 'Sarah Davis', '9999999999', 'sarah.davis@example.com'),
('admin5', 'password5', 'David Wilson', '1111111111', 'david.wilson@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `child`
--

CREATE TABLE `child` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(250) NOT NULL,
  `c_class` varchar(30) NOT NULL,
  `c_age` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `sub_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `child`
--

INSERT INTO `child` (`c_id`, `c_name`, `c_class`, `c_age`, `p_id`, `s_id`, `sub_id`) VALUES
(1, 'name 1', 'class', 15, 1, 1, 1),
(2, 'name 2', 'class', 15, 2, 1, 2),
(3, 'name 3', 'class', 15, 3, 1, 3),
(4, 'name 4', 'class', 15, 4, 1, 4),
(5, 'name 5', 'class', 15, 5, 1, 5),
(6, 'name 6', 'class', 15, 6, 1, 6),
(7, 'name 7', 'class', 15, 7, 1, 7),
(8, 'name 8', 'class', 15, 8, 1, 8),
(9, 'name 9', 'class', 15, 9, 1, 9),
(10, 'name 10', 'class', 15, 10, 1, 10),
(11, 'name 11', 'class', 15, 11, 1, 11),
(12, 'name 12', 'class', 15, 12, 1, 12),
(13, 'name 13', 'class', 15, 13, 1, 13),
(14, 'name 14', 'class', 15, 14, 1, 14),
(15, 'name 15', 'class', 15, 15, 1, 15),
(16, 'name 16', 'class', 15, 16, 1, 16),
(17, 'name 17', 'class', 15, 17, 1, 17),
(18, 'name 18', 'class', 15, 18, 1, 18),
(19, 'name 19', 'class', 15, 19, 1, 19),
(20, 'name 20', 'class', 15, 20, 1, 20),
(21, 'name 21', 'class', 15, 21, 1, 21),
(22, 'name 22', 'class', 15, 22, 1, 22),
(23, 'name 23', 'class', 15, 23, 1, 23),
(24, 'name 24', 'class', 15, 24, 1, 24),
(25, 'name 25', 'class', 15, 25, 1, 25),
(26, 'name 26', 'class', 15, 26, 1, 26),
(27, 'name 27', 'class', 15, 27, 1, 27),
(28, 'name 28', 'class', 15, 28, 1, 28),
(29, 'name 29', 'class', 15, 29, 1, 29),
(30, 'name 30', 'class', 15, 30, 1, 30),
(31, 'name 31', 'class', 15, 31, 1, 31),
(32, 'name 32', 'class', 15, 32, 1, 32),
(33, 'name 33', 'class', 15, 33, 1, 33),
(34, 'name 34', 'class', 15, 34, 1, 34),
(35, 'name 35', 'class', 15, 35, 1, 35),
(36, 'name 36', 'class', 15, 36, 1, 36),
(37, 'name 37', 'class', 15, 37, 1, 37),
(38, 'name 38', 'class', 15, 38, 1, 38),
(39, 'name 39', 'class', 15, 39, 1, 39),
(40, 'name 40', 'class', 15, 40, 1, 40),
(41, 'name 41', 'class', 15, 41, 1, 41),
(42, 'name 42', 'class', 15, 42, 1, 42),
(43, 'name 43', 'class', 15, 43, 1, 43),
(44, 'name 44', 'class', 15, 44, 1, 44),
(45, 'name 45', 'class', 15, 45, 1, 45),
(46, 'name 46', 'class', 15, 46, 1, 46),
(47, 'name 47', 'class', 15, 47, 1, 47),
(48, 'name 48', 'class', 15, 48, 1, 48),
(49, 'name 49', 'class', 15, 49, 1, 49),
(50, 'name 50', 'class', 15, 50, 1, 50),
(51, 'name 51', 'class', 15, 51, 1, 51),
(52, 'name 52', 'class', 15, 52, 1, 52),
(53, 'name 53', 'class', 15, 53, 1, 53),
(54, 'name 54', 'class', 15, 54, 1, 54),
(55, 'name 55', 'class', 15, 55, 1, 55),
(56, 'name 56', 'class', 15, 56, 1, 56),
(57, 'name 57', 'class', 15, 57, 1, 57),
(58, 'name 58', 'class', 15, 58, 1, 58),
(59, 'name 59', 'class', 15, 59, 1, 59),
(60, 'name 60', 'class', 15, 60, 1, 60),
(61, 'name 61', 'class', 15, 61, 1, 61),
(62, 'name 62', 'class', 15, 62, 1, 62),
(63, 'name 63', 'class', 15, 63, 1, 63),
(64, 'name 64', 'class', 15, 64, 1, 64),
(65, 'name 65', 'class', 15, 65, 1, 65),
(66, 'name 66', 'class', 15, 66, 1, 66),
(67, 'name 67', 'class', 15, 67, 1, 67),
(68, 'name 68', 'class', 15, 68, 1, 68),
(69, 'name 69', 'class', 15, 69, 1, 69),
(70, 'name 70', 'class', 15, 70, 1, 70),
(71, 'name 71', 'class', 15, 71, 1, 71),
(72, 'name 72', 'class', 15, 72, 1, 72),
(73, 'name 73', 'class', 15, 73, 1, 73),
(74, 'name 74', 'class', 15, 74, 1, 74);

-- --------------------------------------------------------

--
-- Table structure for table `deliveryagent`
--

CREATE TABLE `deliveryagent` (
  `agent_id` int(11) NOT NULL,
  `agent_name` varchar(250) NOT NULL,
  `agent_number` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deliveryagent`
--

INSERT INTO `deliveryagent` (`agent_id`, `agent_name`, `agent_number`) VALUES
(1, 'Jagadeesh', '9581981888'),
(2, 'Nani', '6304679588'),
(3, 'Suresh ', '8466075576'),
(4, 'Chaitanya', '8143234177'),
(5, 'Padma', '9182555783');

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(250) NOT NULL,
  `p_number` varchar(12) NOT NULL,
  `addr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`p_id`, `p_name`, `p_number`, `addr_id`) VALUES
(1, 'Jagadeesh', '7989264811', 301),
(2, 'kavi', '7093525985', 302),
(3, 'Jagadeesh T', '9849944199', 303),
(4, 'chinni', '9505022222', 304),
(5, 'kiran', '9739476669', 305),
(6, 'madhuri', '9966028333', 306),
(7, 'Amrutha garu', '9177155456', 307),
(8, 'sravanthi', '9441116444', 308),
(9, 'Moulika', '9494435744', 309),
(10, 'P mounika', '8297999699', 310),
(11, 'Parent Name(2 boxes)', '1234567890', 311),
(12, 'deepthi (2 boxes)', '9440622003', 201),
(13, 'Vennala', '9494492599', 202),
(14, 'Sudha (2 boxes)', '9948817092', 203),
(15, 'Kavya', '9494923625', 204),
(16, 'ravi teja', '9177534111', 205),
(17, 'honey', '9908034500', 206),
(18, 'Jagadeesh +', '9704534455', 207),
(19, 'Sruthi', '9642803277', 208),
(20, 'prathuysha', '9059114499', 209),
(21, 'Jagadeesh +  (2 boxes)', '9885394144', 210),
(22, 'Parent Name', '7075379506', 211),
(23, 'Gayatri', '9553444457', 212),
(24, 'Bobby', '9949941133', 213),
(25, 'Siri  (2 boxes)', '8985321414', 214),
(26, '  Krupa   (2 boxes)', '9000188551', 401),
(27, 'Taruna', '9652822235', 402),
(28, 'Pinky jain  (2 boxes)', '9391887888', 403),
(29, 'Spandana', '9652753739', 404),
(30, 'Naga Murali', '8008833997', 405),
(31, 'Jagadeesh +', '9949899498', 406),
(32, 'Ramya karmuri', '9985921927', 407),
(33, 'subha  (2 boxes)', '9885670571', 408),
(34, 'Pinky   (2 boxes)', '8978411400', 409),
(35, 'Anitha  (2 boxes)', '9866412348', 101),
(36, 'Manjusha', '9966066668', 102),
(37, 'pravallika', '8096402224', 103),
(38, 'Pavani  (2 boxes)', '9908954783', 104),
(39, 'Gayatri  (2 boxes)', '9989994199', 105),
(40, 'fatima', '9949432244', 106),
(41, 'Parent Name', '8888888888', 107),
(42, 'Divya ', '9394499989', 108),
(43, 'Aruna', '9908144655', 109),
(44, 'Srujana', '9959611117', 110),
(45, 'Keerthana', '9493475111', 111),
(46, 'Prathima', '9989804141', 112),
(47, 'madhuri', '9618110459', 113),
(48, 'manasa Priya', '9441235555', 114),
(49, 'Swami Raju', '8328621506', 115),
(50, 'pravallika rudraraju', '9603933338', 116),
(51, 'Kiran Raju  (2 boxes)', '9505421188', 117),
(52, 'Divya Raju', '9542672234', 118),
(53, 'Roji', '9866136008', 119),
(54, 'chandini pavin', '9393234119', 120),
(55, 'deepthi varma', '8886088449', 121),
(56, 'Bhagi', '9577595776', 122),
(57, 'nikitha varma', '9493855599', 123),
(58, 'lakshmi pavan', '9704186789', 124),
(59, 'lavanya', '9397676677', 125),
(60, 'Sri', '9948522226', 126),
(61, 'parent name', '7777777777', 501),
(62, 'priyanka', '8886222232', 502),
(63, 'Ramya', '9554522222', 503),
(64, 'Ramya', '9949700007', 504),
(65, 'Tanuja', '8754448634', 505),
(66, 'yamuna mantena ', '9100634444', 506),
(67, 'Soundarya', '9949834977', 507),
(68, 'parent name', '9515851883', 508),
(69, 'parent name', '9573407666', 509),
(70, 'parent name', '9701314877', 510),
(71, 'pravallika', '8374665666', 511),
(72, 'parent name', '9494266789', 512),
(73, 'Mahesh garu', '9949414757', 513),
(74, 'Srinivasa Rao (2 boxes)', '9963609788', 514);

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `s_id` int(11) NOT NULL,
  `s_name` varchar(250) NOT NULL,
  `s_addr` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`s_id`, `s_name`, `s_addr`) VALUES
(1, 'WestBerry High School', 'Survey No. 173/1, Peda Amiram, Village, Bhimavaram, Andhra Pradesh 534204'),
(2, 'BharathiVidya Bhavans', 'Vidyashram, PP Rd, near GRK Hospital, Bhimavaram, Andhra Pradesh 534203'),
(3, 'Euro Kids', 'Kallakuri, Darapu Vari St, near Chandrika Biryani Point, Sri Rama Puram, Balusumoodi, Bhimavaram, Andhra Pradesh');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `sub_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`sub_id`, `start_date`, `end_date`) VALUES
(1, '2022-07-01', '2023-01-01'),
(2, '2022-07-02', '2023-01-02'),
(3, '2022-07-03', '2023-01-03'),
(4, '2022-07-04', '2023-01-04'),
(5, '2022-07-05', '2023-01-05'),
(6, '2022-07-06', '2023-01-06'),
(7, '2022-07-07', '2023-01-07'),
(8, '2022-07-08', '2023-01-08'),
(9, '2022-07-09', '2023-01-09'),
(10, '2022-07-10', '2023-01-10'),
(11, '2022-07-11', '2023-01-11'),
(12, '2022-07-12', '2023-01-12'),
(13, '2022-07-13', '2023-01-13'),
(14, '2022-07-14', '2023-01-14'),
(15, '2022-07-15', '2023-01-15'),
(16, '2022-07-16', '2023-01-16'),
(17, '2022-07-17', '2023-01-17'),
(18, '2022-07-18', '2023-01-18'),
(19, '2022-07-19', '2023-01-19'),
(20, '2022-07-20', '2023-01-20'),
(21, '2022-07-21', '2023-01-21'),
(22, '2022-07-22', '2023-01-22'),
(23, '2022-07-23', '2023-01-23'),
(24, '2022-07-24', '2023-01-24'),
(25, '2022-07-25', '2023-01-25'),
(26, '2022-07-26', '2023-01-26'),
(27, '2022-07-27', '2023-01-27'),
(28, '2022-07-28', '2023-01-28'),
(29, '2022-07-29', '2023-01-29'),
(30, '2022-07-30', '2023-01-30'),
(31, '2022-07-31', '2023-01-31'),
(32, '2022-08-01', '2023-02-01'),
(33, '2022-08-02', '2023-02-02'),
(34, '2022-08-03', '2023-02-03'),
(35, '2022-08-04', '2023-02-04'),
(36, '2022-08-05', '2023-02-05'),
(37, '2022-08-06', '2023-02-06'),
(38, '2022-08-07', '2023-02-07'),
(39, '2022-08-08', '2023-02-08'),
(40, '2022-08-09', '2023-02-09'),
(41, '2022-08-10', '2023-02-10'),
(42, '2022-08-11', '2023-02-11'),
(43, '2022-08-12', '2023-02-12'),
(44, '2022-08-13', '2023-02-13'),
(45, '2022-08-14', '2023-02-14'),
(46, '2022-08-15', '2023-02-15'),
(47, '2022-08-16', '2023-02-16'),
(48, '2022-08-17', '2023-02-17'),
(49, '2022-08-18', '2023-02-18'),
(50, '2022-08-19', '2023-02-19'),
(51, '2022-08-20', '2023-02-20'),
(52, '2022-08-21', '2023-02-21'),
(53, '2022-08-22', '2023-02-22'),
(54, '2022-08-23', '2023-02-23'),
(55, '2022-08-24', '2023-02-24'),
(56, '2022-08-25', '2023-02-25'),
(57, '2022-08-26', '2023-02-26'),
(58, '2022-08-27', '2023-02-27'),
(59, '2022-08-28', '2023-02-28'),
(60, '2022-08-29', '2023-03-01'),
(61, '2022-08-30', '2023-03-02'),
(62, '2022-08-31', '2023-03-03'),
(63, '2022-09-01', '2023-03-04'),
(64, '2022-09-02', '2023-03-05'),
(65, '2022-09-03', '2023-03-06'),
(66, '2022-09-04', '2023-03-07'),
(67, '2022-09-05', '2023-03-08'),
(68, '2022-09-06', '2023-03-09'),
(69, '2022-09-07', '2023-03-10'),
(70, '2022-09-08', '2023-03-11'),
(71, '2022-09-09', '2023-03-12'),
(72, '2022-09-10', '2023-03-13'),
(73, '2022-09-11', '2023-03-14'),
(74, '2022-09-12', '2023-03-15');

-- --------------------------------------------------------

--
-- Table structure for table `trips`
--

CREATE TABLE `trips` (
  `trip_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `pickup_time` timestamp(6) NULL DEFAULT NULL,
  `drop_time` timestamp(6) NULL DEFAULT NULL,
  `agent_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trips`
--

INSERT INTO `trips` (`trip_id`, `date`, `pickup_time`, `drop_time`, `agent_id`, `c_id`) VALUES
(13, '2023-07-15', NULL, NULL, 3, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`addr_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `mobile` (`mobile`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `child`
--
ALTER TABLE `child`
  ADD PRIMARY KEY (`c_id`),
  ADD KEY `p_id` (`p_id`),
  ADD KEY `s_id` (`s_id`),
  ADD KEY `sub_id` (`sub_id`);

--
-- Indexes for table `deliveryagent`
--
ALTER TABLE `deliveryagent`
  ADD PRIMARY KEY (`agent_id`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `addr_id` (`addr_id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`trip_id`),
  ADD KEY `agent_id` (`agent_id`),
  ADD KEY `c_id` (`c_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `child`
--
ALTER TABLE `child`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `deliveryagent`
--
ALTER TABLE `deliveryagent`
  MODIFY `agent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
  MODIFY `trip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `child`
--
ALTER TABLE `child`
  ADD CONSTRAINT `child_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `school` (`s_id`),
  ADD CONSTRAINT `child_ibfk_2` FOREIGN KEY (`sub_id`) REFERENCES `subscription` (`sub_id`),
  ADD CONSTRAINT `p_id` FOREIGN KEY (`p_id`) REFERENCES `parent` (`p_id`);

--
-- Constraints for table `parent`
--
ALTER TABLE `parent`
  ADD CONSTRAINT `parent_ibfk_1` FOREIGN KEY (`addr_id`) REFERENCES `address` (`addr_id`);

--
-- Constraints for table `trips`
--
ALTER TABLE `trips`
  ADD CONSTRAINT `trips_ibfk_1` FOREIGN KEY (`agent_id`) REFERENCES `deliveryagent` (`agent_id`),
  ADD CONSTRAINT `trips_ibfk_4` FOREIGN KEY (`c_id`) REFERENCES `child` (`c_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

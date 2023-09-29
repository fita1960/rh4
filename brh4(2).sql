-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2023 at 10:19 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brh4`
--

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(5) NOT NULL,
  `message_body` text NOT NULL,
  `message_official_name` varchar(255) NOT NULL,
  `message_official_position` varchar(100) NOT NULL,
  `message_official_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `message_body`, `message_official_name`, `message_official_position`, `message_official_image`) VALUES
(1, '\"Binibigyan po natin ng kahalagahan sa araw na ito ang lahat ng dakilang ina ng ating komunidad. Sa panahon ng krisis dulot NG COVID19 kayo ang tunay na naging frontliner para sa inyong pamilya upang sila ay maprotektahan laban sa sakit, kayo ang nagbigay nutrisyon sa inyong pamilya upang siguruhin may sapat silang resistensya at lakas ng pangangatawan. Bagamat mahirap ang ating sitwasyon kayo ay nagpakatatag sa pagsubok at sa inyong katatagan ating maitatawid ang krisis patungo sa isang magandang bukas.\" ', 'ANTHONY \"TONY\" A. ABA', 'PUNONG BARANGAY 2023', 'kapitan.png');

-- --------------------------------------------------------

--
-- Table structure for table `officials`
--

CREATE TABLE `officials` (
  `official_id` int(5) NOT NULL,
  `official_name` varchar(100) NOT NULL,
  `official_position` int(10) NOT NULL,
  `official_image` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `officials`
--

INSERT INTO `officials` (`official_id`, `official_name`, `official_position`, `official_image`, `active`) VALUES
(1, 'ISRAFELL K. BIRUAR', 2, 'kagawad-1.jpg', 1),
(2, 'YVES E. NISNISAN', 2, 'kagawad-2.jpg', 1),
(3, 'SOLEDAD S. EBAD BRON', 2, 'kagawad-3.jpg', 1),
(4, 'JEFFREY R. ATOY', 2, 'kagawad-4.jpg', 1),
(5, 'MUSLEMEN A. SELA', 2, 'kagawad-5.jpg', 1),
(6, 'MERLIE C. HORNIDO', 2, 'kagawad-8.jpg', 1),
(7, 'CHRISTY JANE V. MAGADAN', 3, 'kagawad-7.jpg', 1),
(8, 'FRANCISCO G. BORROMEO', 2, 'kagawad-6.jpg', 1),
(9, 'MA. JENNYLYN NADINE  L. VALLES', 4, 'kagawad-9.jpg', 1),
(10, 'ANTHONY A. ABA', 1, 'kapitan-1.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `official_type`
--

CREATE TABLE `official_type` (
  `official_type_id` int(10) NOT NULL,
  `official_type_description` varchar(100) NOT NULL,
  `official_image` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `official_type`
--

INSERT INTO `official_type` (`official_type_id`, `official_type_description`, `official_image`, `active`) VALUES
(1, 'BARANGAY CHAIRPERSON (CAPTAIN)', '', 1),
(2, 'KAGAWAD (COUNCILOR)', '', 1),
(3, 'SK CHAIRPERSON', '', 1),
(4, 'BARANGAY SECRETARY', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `project_id` int(5) NOT NULL,
  `project_name` varchar(100) NOT NULL,
  `project_description` text NOT NULL,
  `project_image` varchar(255) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`project_id`, `project_name`, `project_description`, `project_image`, `featured`, `active`) VALUES
(1, 'COVERED COURT', 'To provide a versatile and weather-resistant space that caters to a wide range of activities and events. With its sturdy roofing and enclosed structure, the covered court aims to offer a reliable and convenient venue for sports, recreational activities, cultural gatherings, and community events. This project recognizes the importance of having a designated space that can accommodate various needs and interests, allowing individuals of all ages and backgrounds to come together and engage in physical and social endeavors. ', 'project-1.jpg', 1, 1),
(2, 'DRAINAGE SYSTEM', 'To effectively manage and control the flow of water, ensuring the prevention of flooding, erosion, and waterlogging in a given area. By implementing a well-designed and efficient drainage system, the project aims to minimize the negative impacts of excessive rainfall or runoff, protecting both infrastructure and the environment. ', 'project-2.jpg', 1, 1),
(3, 'GULAYAN SA TABING DAAN', 'To promote sustainable and accessible food production, beautify the surroundings, and foster a sense of community engagement. By utilizing the available space along the roadside, this project aims to transform unused areas into productive green spaces that contribute to local food security. The vegetable garden serves as a tangible example of urban agriculture, showcasing the potential for cultivating fresh, nutritious produce even in limited spaces. ', 'project-3.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) NOT NULL,
  `user_fname` varchar(255) NOT NULL,
  `user_mname` varchar(255) NOT NULL,
  `user_lname` varchar(255) NOT NULL,
  `user_gender` varchar(100) NOT NULL,
  `user_civil_status` varchar(100) NOT NULL,
  `user_date_of_birth` varchar(20) NOT NULL,
  `user_address` text NOT NULL,
  `user_contact_number` varchar(20) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_pword` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `officials`
--
ALTER TABLE `officials`
  ADD PRIMARY KEY (`official_id`);

--
-- Indexes for table `official_type`
--
ALTER TABLE `official_type`
  ADD PRIMARY KEY (`official_type_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `officials`
--
ALTER TABLE `officials`
  MODIFY `official_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `official_type`
--
ALTER TABLE `official_type`
  MODIFY `official_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `project_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

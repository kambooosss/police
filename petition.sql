-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2023 at 03:48 PM
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
-- Database: `petition`
--

-- --------------------------------------------------------

--
-- Table structure for table `petition_info`
--

CREATE TABLE `petition_info` (
  `petition_id` int(15) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `description` longtext NOT NULL,
  `time_stamp` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `end_date` date DEFAULT NULL,
  `dept_id` varchar(15) DEFAULT NULL,
  `sub_dept` varchar(15) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `closed` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `petition_info`
--

INSERT INTO `petition_info` (`petition_id`, `title`, `description`, `time_stamp`, `end_date`, `dept_id`, `sub_dept`, `username`, `closed`) VALUES
(1, 'sample title', 'sample text for the description. Used to show the complain details and petition details. ', '0000-00-00 00:00:00.000000', '2023-11-01', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `petition_query`
--

CREATE TABLE `petition_query` (
  `petition_id` int(11) NOT NULL,
  `query` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_name` varchar(40) NOT NULL,
  `_password` varchar(255) NOT NULL,
  `dept_name` varchar(20) NOT NULL,
  `sub_dept` varchar(20) NOT NULL,
  `rank` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_name`, `_password`, `dept_name`, `sub_dept`, `rank`) VALUES
('gokul23', '$2a$10$rLnEmoRsA96NTFBCjaHNpOUjVTvJpEG51W9zhIoT2P1/ktwdzlci2', 'ssp_l&o', 'sp_mahe', 'sp'),
('gurr24', '$2a$10$9r.dpo1qNcVvBYKj6jskzecBplTx/y7HCTub9JK3hKy6qYEmRdfd2', 'ssp_hq', 'sp_pap', 'ssp'),
('kamalesh37', '$2a$10$8PI8iPLhrEXI4O8rPSw2Bu.zxkXDItabq7wl.OkpOwnTC0LOUu35e', 'ssp_karikal', 'sp_coastal_security', 'sho'),
('madesh45', '$2a$10$U6nH4DhehGlqRiYxZoChN.CatfoS52PYrri8Bd6HOQU2SZfLz3XJ.', 'ssp_c&i', 'sp_pcr', 'sp'),
('moginder51', '$2a$10$U36UVXPGyM9VFezZ3n8uxe7lVKLFimYnPXH6FQuyyhNnQ5Sa0nWZi', 'ssp_traffic', 'sp_traffic', 'cir_isp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `petition_info`
--
ALTER TABLE `petition_info`
  ADD UNIQUE KEY `primary key` (`petition_id`);

--
-- Indexes for table `petition_query`
--
ALTER TABLE `petition_query`
  ADD PRIMARY KEY (`petition_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `petition_info`
--
ALTER TABLE `petition_info`
  MODIFY `petition_id` int(15) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `petition_query`
--
ALTER TABLE `petition_query`
  MODIFY `petition_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

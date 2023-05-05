-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2018 at 05:36 PM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` int(10) NOT NULL,
  `user1` varchar(20) NOT NULL,
  `user2` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `user1`, `user2`) VALUES
(3, 'femi', 'tolu'),
(5, 'tolu', 'tolu'),
(6, 'femi', 'femi'),
(7, 'femi', 'tolu'),
(8, 'femi', 'tolu');

-- --------------------------------------------------------

--
-- Table structure for table `femi_femi`
--

CREATE TABLE `femi_femi` (
  `id` int(10) NOT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `userFrom` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `femi_femi`
--

INSERT INTO `femi_femi` (`id`, `message`, `userFrom`) VALUES
(1, 'okay femi', 'femi'),
(2, 'femi how you dey', 'femi');

-- --------------------------------------------------------

--
-- Table structure for table `femi_tolu`
--

CREATE TABLE `femi_tolu` (
  `id` int(10) NOT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `userFrom` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `femi_tolu`
--

INSERT INTO `femi_tolu` (`id`, `message`, `userFrom`) VALUES
(1, '', 'femi'),
(2, 'Hellow sir', 'femi'),
(3, 'Hellow sir', 'femi'),
(4, 'Hellow sir', 'femi'),
(5, 'how are you sir', 'femi'),
(6, 'how are you sir', 'femi'),
(7, 'howw far femi', 'femi'),
(8, 'good afternoon bro tolu', 'femi'),
(9, 'okay ooooooooooooooo', 'femi');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'femi', '1234'),
(2, 'Tolu', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `tolu_tolu`
--

CREATE TABLE `tolu_tolu` (
  `id` int(10) NOT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `userFrom` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tolu_tolu`
--

INSERT INTO `tolu_tolu` (`id`, `message`, `userFrom`) VALUES
(1, 'good afternoon bro tolu', 'tolu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `femi_femi`
--
ALTER TABLE `femi_femi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `femi_tolu`
--
ALTER TABLE `femi_tolu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tolu_tolu`
--
ALTER TABLE `tolu_tolu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `femi_femi`
--
ALTER TABLE `femi_femi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `femi_tolu`
--
ALTER TABLE `femi_tolu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tolu_tolu`
--
ALTER TABLE `tolu_tolu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

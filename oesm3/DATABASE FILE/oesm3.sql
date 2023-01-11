-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2023 at 01:54 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oesm3`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `college` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`, `gender`, `college`) VALUES
('admin@admin.com', '123456', 'Female', 'CEC'),
('d@d.com', 'asd', 'a', 'asd'),
('teacher1@gmail.com', '123456', 'female', 'CEC'),
('teacher@gmail.com', '12345', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('63beaa63c1e0a', '63beaa63c2bbc'),
('63beaa63c6254', '63beaa63c6b3e'),
('63beaa63c9704', '63beaa63ca55b'),
('63beabf7cef3c', '63beabf7cf7b0'),
('63beabf7d22b6', '63beabf7d2a17'),
('63beabf7d5049', '63beabf7d5833');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `qzid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `qzid`, `score`, `level`, `correct`, `wrong`, `date`) VALUES
('karthik2@gmail.com', '63bea8e8ad5a5', 3, 3, 3, 0, '2023-01-11 12:24:41'),
('karthik2@gmail.com', '63beaad40ea71', 3, 3, 3, 0, '2023-01-11 12:31:23');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('63beaa63c1e0a', 'Bill Joy', '63beaa63c2bb0'),
('63beaa63c1e0a', 'James Gosling', '63beaa63c2bbc'),
('63beaa63c1e0a', 'Dennis Ritchie', '63beaa63c2bbe'),
('63beaa63c1e0a', 'Ken Thompson American computer designer', '63beaa63c2bc0'),
('63beaa63c6254', 'Procedure oriented', '63beaa63c6b31'),
('63beaa63c6254', 'Scripting', '63beaa63c6b3c'),
('63beaa63c6254', 'Object oriented', '63beaa63c6b3e'),
('63beaa63c6254', 'Web development', '63beaa63c6b3f'),
('63beaa63c9704', 'IBM', '63beaa63ca551'),
('63beaa63c9704', 'Oracle (Sun microsystems)', '63beaa63ca55b'),
('63beaa63c9704', 'Motorola', '63beaa63ca55d'),
('63beaa63c9704', 'Alphabet', '63beaa63ca55e'),
('63beabf7cef3c', ' Michael Widenius & David Axmark', '63beabf7cf7a3'),
('63beabf7cef3c', 'Adrian Holovaty & Simon Willison', '63beabf7cf7af'),
('63beabf7cef3c', 'Raymond Boyce & Donald Chamberlin', '63beabf7cf7b0'),
('63beabf7cef3c', 'Guido van Rossum', '63beabf7cf7b1'),
('63beabf7d22b6', 'Sun microsystems', '63beabf7d2a0c'),
('63beabf7d22b6', 'Motorola', '63beabf7d2a15'),
('63beabf7d22b6', 'IBM', '63beabf7d2a17'),
('63beabf7d22b6', 'VMware', '63beabf7d2a18'),
('63beabf7d5049', 'Oracle', '63beabf7d5833'),
('63beabf7d5049', 'IBM', '63beabf7d583f'),
('63beabf7d5049', 'Motorola', '63beabf7d5840'),
('63beabf7d5049', 'Alphabet', '63beabf7d5841');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `qzid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `correct_ans` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`qzid`, `qid`, `qns`, `choice`, `correct_ans`) VALUES
('63bea8e8ad5a5', '63beaa63c1e0a', 'Who is the founder of Java ?', 4, 1),
('63bea8e8ad5a5', '63beaa63c6254', 'Java is a __________________ language', 4, 2),
('63bea8e8ad5a5', '63beaa63c9704', 'Java is owned by which company ?', 4, 3),
('63beaad40ea71', '63beabf7cef3c', 'SQL was founded by _________________', 4, 1),
('63beaad40ea71', '63beabf7d22b6', 'SQL was designed under which company ?', 4, 2),
('63beaad40ea71', '63beabf7d5049', 'SQL is currently owned by which company ?', 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `qzid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`qzid`, `title`, `correct`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('63bea8e8ad5a5', 'Java-1', 1, 0, 3, 0, 'Java test-1', '', '2023-01-11 12:17:44'),
('63beaad40ea71', 'Sql-1', 1, 0, 3, 0, 'Quiz on SQL', '', '2023-01-11 12:25:56');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('karthik2@gmail.com', 6, '2023-01-11 12:31:23');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('KARTHIK1', 'M', 'CEC', 'karthik1@gmail.com', 6361832678, 'e10adc3949ba59abbe56e057f20f883e'),
('KARTHIK PRABHU', 'M', 'CEC', 'karthik23@gmail.com', 6361832678, 'e10adc3949ba59abbe56e057f20f883e'),
('KARTHIK2', 'M', 'CEC', 'karthik2@gmail.com', 8050971250, 'e10adc3949ba59abbe56e057f20f883e'),
('KARTHIK4', 'M', 'CEC', 'karthik4@gmail.com', 8050971250, 'e10adc3949ba59abbe56e057f20f883e');

--
-- Triggers `user`
--
DELIMITER $$
CREATE TRIGGER `Capital` BEFORE INSERT ON `user` FOR EACH ROW set new.name=upper(new.name)
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`optionid`(50));

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`qzid`(50)) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

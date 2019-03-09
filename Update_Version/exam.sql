-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2019 at 02:38 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `sub_ques`
--

CREATE TABLE IF NOT EXISTS `sub_ques` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_id` int(11) NOT NULL,
  `ques_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `adminId` int(11) NOT NULL AUTO_INCREMENT,
  `adminUser` varchar(50) NOT NULL,
  `adminPass` varchar(32) NOT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminUser`, `adminPass`) VALUES
(1, 'juyel', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ans`
--

CREATE TABLE IF NOT EXISTS `tbl_ans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quesNo` int(11) NOT NULL,
  `rightAns` int(11) NOT NULL DEFAULT '0',
  `ans` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=75 ;

--
-- Dumping data for table `tbl_ans`
--

INSERT INTO `tbl_ans` (`id`, `quesNo`, `rightAns`, `ans`) VALUES
(59, 1, 0, '4'),
(60, 1, 1, '2'),
(61, 1, 0, '3'),
(62, 1, 0, '1'),
(67, 2, 0, 'C'),
(68, 2, 0, 'C++'),
(69, 2, 0, 'JAVA'),
(70, 2, 1, 'ecilipes'),
(71, 3, 1, 'Hyper Text Markup Language'),
(72, 3, 0, 'Hyper Text Markup '),
(73, 3, 0, 'Hyper Text Mark Language'),
(74, 3, 0, 'Hyper Transfer Markup Language');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ques`
--

CREATE TABLE IF NOT EXISTS `tbl_ques` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subid` int(11) NOT NULL,
  `quesNo` int(11) NOT NULL,
  `ques` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `tbl_ques`
--

INSERT INTO `tbl_ques` (`id`, `subid`, `quesNo`, `ques`) VALUES
(15, 0, 1, 'How many types of RAM are used?'),
(17, 0, 2, 'Which is not a type of programming language?'),
(18, 0, 3, 'HTML stands for?');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub`
--

CREATE TABLE IF NOT EXISTS `tbl_sub` (
  `sub_id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_name` varchar(255) NOT NULL,
  PRIMARY KEY (`sub_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_sub`
--

INSERT INTO `tbl_sub` (`sub_id`, `sub_name`) VALUES
(1, 'PHP'),
(2, 'JAVA'),
(3, 'c');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`userid`, `name`, `username`, `password`, `email`, `status`) VALUES
(9, 'Nur Nobi ', 'Jewel', '827ccb0eea8a706c4c34a16891f84e7b', 'nurnobi319@gmail.com', 0),
(10, 'Rakib Hasan', 'Rakib', 'e10adc3949ba59abbe56e057f20f883e', 'rakib33@gmail.com', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

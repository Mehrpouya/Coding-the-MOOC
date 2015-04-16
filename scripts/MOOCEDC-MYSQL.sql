-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 16, 2015 at 10:34 AM
-- Server version: 5.5.37-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `MOOCEDC`
--

-- --------------------------------------------------------

--
-- Table structure for table `team_users`
--

CREATE TABLE IF NOT EXISTS `team_users` (
  `team_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `team_name` varchar(200) CHARACTER SET utf16 NOT NULL,
  `team_password` varchar(100) CHARACTER SET utf16 NOT NULL,
  `url` varchar(200) DEFAULT NULL,
  `project` varchar(200) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  PRIMARY KEY (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tweetRules`
--

CREATE TABLE IF NOT EXISTS `tweetRules` (
  `id` double NOT NULL AUTO_INCREMENT,
  `ruleName` varchar(100) NOT NULL DEFAULT 'No-Name',
  `catName` varchar(200) DEFAULT 'No-Categoty',
  `who` varchar(50) NOT NULL COMMENT 'This is just to store who made this rule',
  `containsThis` varchar(500) NOT NULL COMMENT 'these are the if statments, first set of words that should be in a tweet to trigger a response',
  `containsThat` varchar(500) NOT NULL COMMENT 'these are the if statments, second set of words that should be in a tweet to trigger a response',
  `notThis` varchar(1000) NOT NULL,
  `thenTweet` varchar(2000) NOT NULL COMMENT 'List of tweets to respond',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='This table is for storing tweet rules based on words recognition' AUTO_INCREMENT=149 ;

-- --------------------------------------------------------

--
-- Table structure for table `tweets`
--

CREATE TABLE IF NOT EXISTS `tweets` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `team_ref` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `userURL` varchar(200) NOT NULL DEFAULT '""',
  `userName` varchar(200) NOT NULL,
  `userScreenName` varchar(200) NOT NULL,
  `userStatus` varchar(200) NOT NULL DEFAULT '""',
  `userTimezone` varchar(200) NOT NULL DEFAULT '""',
  `tweetText` varchar(200) NOT NULL,
  `tweetDate` date NOT NULL,
  `tweetLongitude` decimal(16,0) NOT NULL DEFAULT '0',
  `tweetLatitude` decimal(16,0) NOT NULL DEFAULT '0',
  `tweetId` bigint(20) NOT NULL,
  `tweetCountry` varchar(200) NOT NULL DEFAULT '""',
  `tweetPlaceFullName` varchar(300) NOT NULL DEFAULT '""',
  `action` int(100) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4043 ;

-- --------------------------------------------------------

--
-- Table structure for table `tweets_archive`
--

CREATE TABLE IF NOT EXISTS `tweets_archive` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) NOT NULL,
  `userURL` varchar(200) NOT NULL DEFAULT '""',
  `userName` varchar(200) NOT NULL,
  `userScreenName` varchar(200) NOT NULL,
  `userStatus` varchar(200) NOT NULL DEFAULT '""',
  `userTimezone` varchar(200) NOT NULL DEFAULT '""',
  `tweetText` varchar(200) NOT NULL,
  `tweetDate` date NOT NULL,
  `tweetLongitude` decimal(16,0) NOT NULL DEFAULT '0',
  `tweetLatitude` decimal(16,0) NOT NULL DEFAULT '0',
  `tweetId` bigint(20) NOT NULL,
  `tweetCountry` varchar(200) NOT NULL DEFAULT '""',
  `tweetPlaceFullName` varchar(300) NOT NULL DEFAULT '""',
  `action` int(100) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

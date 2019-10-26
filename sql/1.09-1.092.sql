-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 26, 2019 at 04:37 PM
-- Server version: 5.7.27-log
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo_lemocms_com`
--

-- --------------------------------------------------------

--
-- Table structure for table `lm_config_group`
--

CREATE TABLE `lm_config_group` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `title` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lm_config_group`
--

INSERT INTO `lm_config_group` (`id`, `name`, `title`) VALUES
(1, 'site', '网站'),
(2, 'qq', 'qq'),
(3, 'sms', '短信'),
(4, 'email', '邮箱'),
(5, 'oss', 'oss'),
(6, 'sina', '新浪'),
(7, 'im', 'im'),
(8, 'upload', '上传'),
(9, 'mobile', '手机'),
(10, '百度', '百度配置');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lm_config_group`
--
ALTER TABLE `lm_config_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lm_config_group`
--
ALTER TABLE `lm_config_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

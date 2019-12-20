-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 15, 2019 at 05:17 PM
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
-- Table structure for table `lm_addon`
--

CREATE TABLE `lm_addon` (
  `id` int(11) NOT NULL COMMENT '主键',
  `title` varchar(20) NOT NULL DEFAULT '' COMMENT '中文名',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '插件名或标识',
  `images` varchar(200) DEFAULT '' COMMENT '封面',
  `group` varchar(20) DEFAULT '' COMMENT '组别',
  `description` varchar(1000) DEFAULT '' COMMENT '插件描述',
  `author` varchar(40) DEFAULT '' COMMENT '作者',
  `version` varchar(20) DEFAULT '' COMMENT '版本号',
  `require` varchar(50) NOT NULL DEFAULT ' ' COMMENT '需求版本',
  `website` varchar(200) NOT NULL DEFAULT ' ',
  `config` text COMMENT '设置',
  `is_hook` tinyint(1) DEFAULT '0' COMMENT '钩子[0:不支持;1:支持]',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态[-1:删除;0:禁用;1启用]',
  `create_time` int(10) UNSIGNED DEFAULT NULL COMMENT '创建时间',
  `update_time` int(10) UNSIGNED DEFAULT NULL COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='公用_插件表';

-- --------------------------------------------------------

--
-- Table structure for table `lm_admin`
--

CREATE TABLE `lm_admin` (
  `id` tinyint(4) NOT NULL COMMENT '管理员ID',
  `username` varchar(20) NOT NULL COMMENT '管理员用户名',
  `password` varchar(200) NOT NULL COMMENT '管理员密码',
  `group_id` mediumint(8) DEFAULT NULL COMMENT '分组ID',
  `email` varchar(30) DEFAULT NULL COMMENT '邮箱',
  `realname` varchar(10) DEFAULT NULL COMMENT '真实姓名',
  `mobile` varchar(30) DEFAULT NULL COMMENT '电话号码',
  `ip` varchar(20) DEFAULT NULL COMMENT 'IP地址',
  `mdemail` varchar(50) DEFAULT '0' COMMENT '传递修改密码参数加密',
  `status` tinyint(2) DEFAULT '1' COMMENT '审核状态',
  `avatar` varchar(120) DEFAULT '' COMMENT '头像',
  `create_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `update_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='后台管理员';

--
-- Dumping data for table `lm_admin`
--

INSERT INTO `lm_admin` (`id`, `username`, `password`, `group_id`, `email`, `realname`, `mobile`, `ip`, `mdemail`, `status`, `avatar`, `create_time`, `update_time`) VALUES
(1, 'admin', '$2y$12$jJNSWOS.8he.z3s17YCRtesZ1v6F6Ck3zUGBhniRDr2LNHfUUwH5.', 1, '994927909@qq.com', '', '18397423845', '127.0.0.1', '0', 1, '/storage/uploads/20190817\\294faa45405fa24da59c311f55ce313f.png', 1482132862, 1567843792);

-- --------------------------------------------------------

--
-- Table structure for table `lm_admin_log`
--

CREATE TABLE `lm_admin_log` (
  `id` bigint(16) UNSIGNED NOT NULL COMMENT '表id',
  `admin_id` int(10) DEFAULT NULL COMMENT '管理员id',
  `username` varchar(100) DEFAULT NULL,
  `log_url` varchar(100) DEFAULT NULL,
  `log_content` text,
  `log_title` varchar(100) DEFAULT NULL COMMENT '日志描述',
  `log_agent` varchar(200) DEFAULT NULL,
  `log_ip` varchar(30) DEFAULT NULL COMMENT 'ip地址',
  `create_time` int(11) DEFAULT NULL COMMENT '日志时间',
  `update_time` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lm_admin_log`
--

INSERT INTO `lm_admin_log` (`id`, `admin_id`, `username`, `log_url`, `log_content`, `log_title`, `log_agent`, `log_ip`, `create_time`, `update_time`, `status`) VALUES
(1, 3, 'demo', '/index.php/admin/wechat/reply.html', '点击菜单', '回复设置', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '171.117.49.81', 1573807729, 1573807729, 1),
(2, 3, 'demo', '/index.php/admin/wechat/reply.html', '点击菜单', '回复设置', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '171.117.49.81', 1573807729, 1573807729, 1),
(3, 3, 'demo', '/index.php/admin/wechat/reply.html', '{\"type\":\"subscribe\"}', '回复设置', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '171.117.49.81', 1573807730, 1573807730, 1),
(4, 3, 'demo', '/index.php/admin/wechat/reply.html', '{\"type\":\"default\"}', '回复设置', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '171.117.49.81', 1573807804, 1573807804, 1),
(5, 3, 'demo', '/index.php/admin/wechat/reply.html', '{\"type\":\"subscribe\"}', '回复设置', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '171.117.49.81', 1573807810, 1573807810, 1),
(6, 3, 'demo', '/index.php/admin/wechat/reply.html', '点击菜单', '回复设置', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '171.117.49.81', 1573807888, 1573807888, 1),
(7, 3, 'demo', '/index.php/admin/wechat/reply.html', '点击菜单', '回复设置', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '171.117.49.81', 1573807888, 1573807888, 1),
(8, 3, 'demo', '/index.php/admin/wechat/reply.html', '{\"type\":\"subscribe\"}', '回复设置', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '171.117.49.81', 1573807890, 1573807890, 1),
(9, 1, 'admin', '/index.php/admin/wechat/reply.html', '{\"type\":\"subscribe\"}', '回复设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', '121.35.101.213', 1573807898, 1573807898, 1),
(10, 1, 'admin', '/index.php/admin/wechat/index.html', '点击菜单', '微信列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', '121.35.101.213', 1573807915, 1573807915, 1),
(11, 1, 'admin', '/index.php/admin/wechat/index.html', '点击菜单', '微信列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', '121.35.101.213', 1573807915, 1573807915, 1),
(12, 1, 'admin', '/index.php/admin/wechat/message.html', '点击菜单', '历史消息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', '121.35.101.213', 1573807965, 1573807965, 1),
(13, 1, 'admin', '/index.php/admin/wechat/qrcode.html', '点击菜单', '二维码管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', '121.35.101.213', 1573807968, 1573807968, 1),
(14, 1, 'admin', '/index.php/admin/wechat/qrcode.html', '点击菜单', '二维码管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', '121.35.101.213', 1573807968, 1573807968, 1),
(15, 1, 'admin', '/index.php/admin/wechat/reply.html', '点击菜单', '回复设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', '121.35.101.213', 1573807971, 1573807971, 1),
(16, 1, 'admin', '/index.php/admin/wechat/replyedit.html', '{\"id\":\"1\"}', '回复编辑', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', '121.35.101.213', 1573807973, 1573807973, 1),
(17, 1, 'admin', '/index.php/admin/wechat/reply.html', '{\"type\":\"subscribe\"}', '回复设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', '121.35.101.213', 1573807983, 1573807983, 1),
(18, 1, 'admin', '/index.php/admin/wechat/replyedit.html', '{\"id\":\"1\"}', '回复编辑', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', '121.35.101.213', 1573807988, 1573807988, 1),
(19, 1, 'admin', '/index.php/admin/wechat/index.html', '点击菜单', '微信列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', '121.35.101.213', 1573807993, 1573807993, 1),
(20, 1, 'admin', '/index.php/admin/wechat/tag.html', '点击菜单', '粉丝标签', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', '121.35.101.213', 1573808022, 1573808022, 1),
(21, 1, 'admin', '/index.php/admin/wechat/tag.html', '点击菜单', '粉丝标签', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', '121.35.101.213', 1573808022, 1573808022, 1),
(22, 1, 'admin', '/index.php/admin/wechat/reply.html', '点击菜单', '回复设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', '121.35.101.213', 1573808022, 1573808022, 1),
(23, 0, 'Unknown', '/index.php/admin/login/index.html', '{\"username\":\"admin\",\"captcha\":\"5p4r\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', '124.115.220.214', 1573808027, 1573808027, 1),
(24, 0, 'Unknown', '/index.php/admin/login/index.html', '{\"username\":\"admin\",\"captcha\":\"ruu7\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', '124.115.220.214', 1573808037, 1573808037, 1),
(25, 1, 'admin', '/index.php/admin/wechat/index.html', '点击菜单', '微信列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', '121.35.101.213', 1573808184, 1573808184, 1),
(26, 1, 'admin', '/index.php/admin/wechat/message.html', '点击菜单', '历史消息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', '121.35.101.213', 1573808200, 1573808200, 1),
(27, 1, 'admin', '/index.php/admin/wechat/message.html', '点击菜单', '历史消息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', '121.35.101.213', 1573808202, 1573808202, 1),
(28, 1, 'admin', '/index.php/admin/wechat/reply.html', '点击菜单', '回复设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', '121.35.101.213', 1573808348, 1573808348, 1),
(29, 1, 'admin', '/index.php/admin/wechat/replyedit.html', '{\"id\":\"1\"}', '回复编辑', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', '121.35.101.213', 1573808353, 1573808353, 1),
(30, 1, 'admin', '/index.php/admin/wechat/replyedit.html', '{\"id\":\"1\"}', '回复编辑', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', '121.35.101.213', 1573808444, 1573808444, 1),
(31, 1, 'admin', '/index.php/admin/wechat/index.html', '点击菜单', '微信列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', '121.35.101.213', 1573808476, 1573808476, 1),
(32, 3, 'demo', '/index.php/admin/wechat/message.html', '点击菜单', '历史消息', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '171.117.49.81', 1573808578, 1573808578, 1),
(33, 3, 'demo', '/index.php/admin/wechat/message.html', '点击菜单', '历史消息', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '171.117.49.81', 1573808578, 1573808578, 1),
(34, 3, 'demo', '/index.php/admin/wechat/qrcode.html', '点击菜单', '二维码管理', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '171.117.49.81', 1573808742, 1573808742, 1),
(35, 3, 'demo', '/index.php/admin/wechat/qrcode.html', '点击菜单', '二维码管理', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '171.117.49.81', 1573808742, 1573808742, 1),
(36, 1, 'admin', '/index.php/admin/wechat/tag.html', '点击菜单', '粉丝标签', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', '121.35.101.213', 1573808963, 1573808963, 1),
(37, 1, 'admin', '/index.php/admin/wechat/reply.html', '点击菜单', '回复设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', '121.35.101.213', 1573808963, 1573808963, 1),
(38, 3, 'demo', '/index.php/admin/wechat/qrcode.html', '点击菜单', '二维码管理', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '171.117.49.81', 1573808992, 1573808992, 1),
(39, 0, 'Unknown', '/admin/login/index.html', '{\"username\":\"4245\",\"captcha\":\"2\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', '61.144.96.37', 1573809265, 1573809265, 1),
(40, 0, 'Unknown', '/admin/login/index.html', '{\"username\":\"4245\",\"captcha\":\"22\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', '61.144.96.37', 1573809265, 1573809265, 1),
(41, 0, 'Unknown', '/admin/login/index.html', '{\"username\":\"4245\",\"captcha\":\"22\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', '61.144.96.37', 1573809267, 1573809267, 1),
(42, 0, 'Unknown', '/admin/login/index.html', '{\"username\":\"4245\",\"captcha\":\"22\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', '61.144.96.37', 1573809267, 1573809267, 1),
(43, 0, 'Unknown', '/admin/login/index.html', '{\"username\":\"4245\",\"captcha\":\"22\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', '61.144.96.37', 1573809267, 1573809267, 1),
(44, 0, 'Unknown', '/admin/login/index.html', '{\"username\":\"4245\",\"captcha\":\"vwk2\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', '61.144.96.37', 1573809276, 1573809276, 1),
(45, 0, 'Unknown', '/admin/login/index.html', '{\"username\":\"4245\",\"captcha\":\"vwk2\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', '61.144.96.37', 1573809277, 1573809277, 1),
(46, 0, 'Unknown', '/admin/login/index.html', '{\"username\":\"4245\",\"captcha\":\"vwk2\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', '61.144.96.37', 1573809278, 1573809278, 1),
(47, 0, 'Unknown', '/admin/login/index.html', '{\"username\":\"4245\",\"captcha\":\"vwk2\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', '61.144.96.37', 1573809278, 1573809278, 1),
(48, 0, 'Unknown', '/admin/login/index.html', '{\"username\":\"4245\",\"captcha\":\"vwk2\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', '61.144.96.37', 1573809278, 1573809278, 1),
(49, 1, 'admin', '/index.php/admin/wechat/qrcode.html', '点击菜单', '二维码管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', '121.35.101.213', 1573809324, 1573809324, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lm_adv`
--

CREATE TABLE `lm_adv` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '广告id',
  `pid` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '广告位置ID',
  `media_type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '广告类型',
  `ad_name` varchar(60) NOT NULL DEFAULT '' COMMENT '广告名称',
  `ad_link` varchar(255) DEFAULT '' COMMENT '链接地址',
  `ad_image` mediumtext NOT NULL COMMENT '图片地址',
  `start_time` int(11) NOT NULL DEFAULT '0' COMMENT '投放时间',
  `end_time` int(11) NOT NULL DEFAULT '0' COMMENT '结束时间',
  `link_admin` varchar(60) NOT NULL DEFAULT '' COMMENT '添加人',
  `link_email` varchar(60) NOT NULL DEFAULT '' COMMENT '添加人邮箱',
  `link_phone` varchar(60) NOT NULL DEFAULT '' COMMENT '添加人联系电话',
  `click_count` mediumint(8) UNSIGNED NOT NULL DEFAULT '0' COMMENT '点击量',
  `sort` int(20) DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '是否显示',
  `orderby` smallint(6) DEFAULT '50' COMMENT '排序',
  `target` tinyint(1) DEFAULT '0' COMMENT '是否开启浏览器新窗口',
  `bgcolor` varchar(20) DEFAULT NULL COMMENT '背景颜色',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lm_adv`
--

INSERT INTO `lm_adv` (`id`, `pid`, `media_type`, `ad_name`, `ad_link`, `ad_image`, `start_time`, `end_time`, `link_admin`, `link_email`, `link_phone`, `click_count`, `sort`, `status`, `orderby`, `target`, `bgcolor`, `create_time`, `update_time`) VALUES
(2, 2, 0, '首页', 'javascript:void(0);', '/public/upload/ad/2018/04-25/93bf5c1ebdf4c4359253a107bcbdbe98.jpg', 1451577600, 1767283200, '', '', '', 0, 0, 1, 0, 0, '#ff8000', 0, 1566106884),
(3, 2, 0, '轮播', 'javascript:void(0);', '/public/upload/ad/2018/04-13/6eeaa63e76c946927d0c1e67f6cf4f4f.jpg', 1451577600, 1767283200, '', '', '', 0, 0, 1, 0, 0, '#fea8c1', 0, 0),
(4, 2, 0, '轮播', 'javascript:void(0);', '/public/upload/ad/2018/04-13/8099744a886c2cfad7c837e28aee9d52.jpg', 1451577600, 1767283200, '', '', '', 0, 0, 1, 0, 0, '#f1e6d2', 0, 0),
(7, 2, 0, '其他', 'javascript:void(0);', '/public/upload/ad/2018/04-13/7009c820b93bcf31d3e42df31d78ed71.jpg', 1451577600, 1767283200, '', '', '', 0, 0, 1, 0, 0, '#f1dcf7', 0, 1567574061),
(12, 2, 0, '其他', 'javascript:void(0);', '/public/upload/ad/2018/04-24/44aa330b056f5b090b6d6ac8a9a072dd.jpg', 1451577600, 1767283200, '', '', '', 0, 0, 1, 0, 0, '#000000', 0, 0),
(82, 1, 0, '', 'https://www.baidu.com', '/storage/uploads/20190818\\0c2a7f85348cd9ae508ca860388fa021.png', 0, 0, '', '994927909@qq.com', '', 0, 0, 0, 50, 0, '', 1566107420, 1573696473),
(83, 1, 0, '组合套餐', 'https://www.baidu.com', '/storage/uploads/20190818\\2db9e450c251d0d21dac3d3384134bb0.png', 1566130740, 0, '', '994927909@qq.com', '', 0, 0, 1, 50, 0, '', 1566107921, 1572491129),
(84, 4, 0, 'banner6 ', 'https://www.baidu.com', '/storage/uploads/20190818\\8ebd41bd38db53338af00026cb592bc3.png', 1566130740, 0, '', '994927909@qq.com', '', 0, 0, 1, 50, 0, '', 1566107968, 1572930757),
(85, 1, 0, '组合套餐', 'https://www.baidu.com', '/storage/uploads/20190818\\674ca52c87c4552352f35d820c3ce33e.png', 0, 0, '', '994927909@qq.com', '', 0, 0, 1, 50, 0, '', 1566108105, 1572845406),
(86, 2, 0, '组合套餐', 'https://www.baidu.com', '/storage/uploads/20190818\\cd986a75a1be03d8a7af558fda044ca4.png', 1566130740, 0, '', '994927909@qq.com', '', 0, 0, 1, 50, 0, '', 1566108149, 1572491126),
(87, 2, 0, 'banner6 ', 'https://www.baidu.com', '/storage/uploads/20190818\\7e2ca2635af1031871ab121938818a4d.png', 1564588800, 1568908800, '', '994927909@qq.com', '', 0, 0, 1, 50, 0, '', 1566108542, 1572967086);

-- --------------------------------------------------------

--
-- Table structure for table `lm_adv_position`
--

CREATE TABLE `lm_adv_position` (
  `id` int(3) UNSIGNED NOT NULL COMMENT '表id',
  `position_name` varchar(60) NOT NULL DEFAULT '' COMMENT '广告位置名称',
  `ad_width` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT '广告位宽度',
  `ad_height` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT '广告位高度',
  `position_desc` varchar(255) NOT NULL DEFAULT '' COMMENT '广告描述',
  `position_style` mediumtext COMMENT '模板',
  `status` tinyint(1) DEFAULT '0' COMMENT '0关闭1开启',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lm_adv_position`
--

INSERT INTO `lm_adv_position` (`id`, `position_name`, `ad_width`, `ad_height`, `position_desc`, `position_style`, `status`, `create_time`, `update_time`) VALUES
(1, 'Cart页面自动增加广告位 1 ', 0, 0, 'Cart页面', '', 1, 0, 0),
(2, 'Index页面自动增加广告位 2 ', 0, 0, 'Index页面', '', 1, 0, 0),
(4, 'Topic页面自动增加广告位 4 ', 0, 0, 'Topic页面', '', 1, 0, 0),
(9, 'Index页面自动增加广告位 9 ', 0, 0, 'Index页面', '', 1, 0, 0),
(10, 'Index页面自动增加广告位 10 ', 0, 0, 'Index页面', '', 1, 0, 0),
(11, 'Index页面自动增加广告位 11 ', 0, 0, 'Index页面', '', 1, 0, 0),
(12, 'Index页面自动增加广告位 12 ', 0, 0, 'Index页面', '', 1, 0, 0),
(13, 'Index页面自动增加广告位 13 ', 0, 0, 'Index页面', '', 1, 0, 0),
(14, 'Index页面自动增加广告位 14 ', 0, 0, 'Index页面', '', 1, 0, 0),
(15, 'Index页面自动增加广告位 15 ', 0, 0, 'Index页面', '', 1, 0, 0),
(16, 'Index页面自动增加广告位 16 ', 0, 0, 'Index页面', '', 1, 0, 0),
(17, 'Index页面自动增加广告位 17 ', 0, 0, 'Index页面', '', 1, 0, 0),
(18, 'Index页面自动增加广告位 18 ', 0, 0, 'Index页面', '', 1, 0, 0),
(19, 'Index页面自动增加广告位 19 ', 0, 0, 'Index页面', '', 1, 0, 0),
(20, 'Index页面自动增加广告位 20 ', 0, 0, 'Index页面', '', 1, 0, 0),
(21, 'Index页面自动增加广告位 21 ', 0, 0, 'Index页面', '', 1, 0, 0),
(22, 'Index页面自动增加广告位 22 ', 0, 0, 'Index页面', '', 1, 0, 0),
(23, 'Index页面自动增加广告位 23 ', 0, 0, 'Index页面', '', 1, 0, 0),
(24, 'Index页面自动增加广告位 24 ', 0, 0, 'Index页面', '', 1, 0, 0),
(25, 'Index页面自动增加广告位 25 ', 0, 0, 'Index页面', '', 1, 0, 0),
(26, 'Index页面自动增加广告位 26 ', 0, 0, 'Index页面', '', 1, 0, 0),
(27, 'Index页面自动增加广告位 27 ', 0, 0, 'Index页面', '', 1, 0, 0),
(28, 'Index页面自动增加广告位 28 ', 0, 0, 'Index页面', '', 1, 0, 0),
(49, 'Index页面自动增加广告位 49 ', 0, 0, 'Index页面', '', 1, 0, 0),
(50, 'Index页面自动增加广告位 50 ', 0, 0, 'Index页面', '', 1, 0, 0),
(51, 'Index页面自动增加广告位 51 ', 0, 0, 'Index页面', '', 1, 0, 0),
(52, 'Index页面自动增加广告位 52 ', 0, 0, 'Index页面', '', 1, 0, 0),
(101, 'Index页面自动增加广告位 101 ', 0, 0, 'Index页面', '', 1, 0, 0),
(102, 'Index页面自动增加广告位 102 ', 0, 0, 'Index页面', '', 1, 0, 0),
(103, 'Index页面自动增加广告位 103 ', 0, 0, 'Index页面', '', 1, 0, 0),
(104, 'Index页面自动增加广告位 104 ', 0, 0, 'Index页面', '', 1, 0, 0),
(105, 'Index页面自动增加广告位 105 ', 0, 0, 'Index页面', '', 1, 0, 0),
(106, 'Index页面自动增加广告位 106 ', 0, 0, 'Index页面', '', 1, 0, 0),
(107, 'Index页面自动增加广告位 107 ', 0, 0, 'Index页面', '', 1, 0, 0),
(108, 'Index页面自动增加广告位 108 ', 0, 0, 'Index页面', '', 1, 0, 0),
(204, 'Activity页面自动增加广告位 204 ', 0, 0, 'Activity页面', '', 1, 0, 0),
(205, 'Activity页面自动增加广告位 205 ', 0, 0, 'Activity页面', '', 1, 0, 0),
(206, 'Activity页面自动增加广告位 206 ', 0, 0, 'Activity页面', '', 1, 0, 0),
(207, 'Activity页面自动增加广告位 207 ', 0, 0, 'Activity页面', '', 1, 0, 0),
(208, 'Activity页面自动增加广告位 208 ', 0, 0, 'Activity页面', '', 1, 0, 0),
(300, 'Index页面自动增加广告位 300 ', 0, 0, 'Index页面', '', 1, 0, 0),
(301, 'Index页面自动增加广告位 301 ', 0, 0, 'Index页面', '', 1, 0, 0),
(302, 'Index页面自动增加广告位 302 ', 0, 0, 'Index页面', '', 1, 0, 0),
(303, 'Index页面自动增加广告位 303 ', 0, 0, 'Index页面', '', 1, 0, 0),
(304, 'Index页面自动增加广告位 304 ', 0, 0, 'Index页面', '', 1, 0, 0),
(305, 'Index页面自动增加广告位 305 ', 0, 0, 'Index页面', '', 1, 0, 0),
(306, 'Index页面自动增加广告位 306 ', 0, 0, 'Index页面', '', 1, 0, 0),
(307, 'Index页面自动增加广告位 307 ', 0, 0, 'Index页面', '', 1, 0, 0),
(400, 'Index页面自动增加广告位 400 ', 0, 0, 'Index页面', '', 1, 0, 0),
(401, 'Goods页面自动增加广告位 401 ', 0, 0, 'Goods页面', '', 1, 0, 0),
(500, 'Ad页面自动增加广告位 500 ', 0, 0, 'Ad页面', '', 1, 0, 0),
(506, 'Ad页面自动增加广告位 506 ', 0, 0, 'Ad页面', '', 1, 0, 0),
(507, 'Ad页面自动增加广告位 507 ', 0, 0, 'Ad页面', '', 1, 0, 0),
(508, 'Ad页面自动增加广告位 508 ', 0, 0, 'Ad页面', '', 1, 0, 0),
(509, 'Ad页面自动增加广告位 509 ', 0, 0, 'Ad页面', '', 1, 0, 0),
(510, 'Ad页面自动增加广告位 510 ', 0, 0, 'Ad页面', '', 1, 0, 1568279473),
(511, 'Ad页面自动增加广告位 511 ', 0, 0, 'Ad页面', '', 1, 0, 1568708267),
(512, 'Ad页面自动增加广告位 512 ', 0, 0, 'Ad页面', '', 1, 0, 1568708267),
(513, 'Ad页面自动增加广告位 513 ', 0, 0, 'Ad页面', '', 1, 0, 1568708267),
(514, 'Ad页面自动增加广告位 514 ', 0, 0, 'Ad页面', '', 1, 0, 1568708268),
(515, 'Ad页面自动增加广告位 515 ', 0, 0, 'Ad页面', '', 1, 0, 1568708268),
(516, 'Ad页面自动增加广告位 516 ', 0, 0, 'Ad页面', '', 1, 0, 1568708268),
(517, 'Ad页面自动增加广告位 517 ', 0, 0, 'Ad页面', '', 1, 0, 1570166613),
(518, 'Ad页面自动增加广告位 518 ', 0, 0, 'Ad页面', '', 1, 0, 1570166613),
(533, 'Ad页面自动增加广告位 533 ', 0, 0, 'Ad页面', '', 1, 0, 1568708269),
(534, 'Ad页面自动增加广告位 534 ', 0, 0, 'Ad页面', '', 1, 0, 1572867856),
(539, '首页', 1080, 300, '其他1', '', 1, 1566111321, 1573784187);

-- --------------------------------------------------------

--
-- Table structure for table `lm_article`
--

CREATE TABLE `lm_article` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `pid` smallint(5) NOT NULL DEFAULT '0' COMMENT '类别ID',
  `title` varchar(150) NOT NULL DEFAULT '' COMMENT '文章标题',
  `description` longtext COMMENT '文章摘要',
  `content` longtext NOT NULL,
  `author` varchar(30) NOT NULL DEFAULT '' COMMENT '文章作者',
  `author_email` varchar(60) NOT NULL DEFAULT '' COMMENT '作者邮箱',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字,用逗号隔开',
  `article_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '是否显示,1:显示;0:不显示',
  `file_url` varchar(255) NOT NULL DEFAULT '' COMMENT '附件地址',
  `open_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `link` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `click` int(11) DEFAULT '0' COMMENT '浏览量',
  `publish_time` int(11) DEFAULT NULL COMMENT '文章预告发布时间',
  `sort` tinyint(1) DEFAULT '0',
  `thumb` varchar(255) DEFAULT '' COMMENT '文章缩略图',
  `tags` varchar(100) NOT NULL DEFAULT '',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lm_article`
--

INSERT INTO `lm_article` (`id`, `pid`, `title`, `description`, `content`, `author`, `author_email`, `keywords`, `article_type`, `status`, `file_url`, `open_type`, `link`, `click`, `publish_time`, `sort`, `thumb`, `tags`, `create_time`, `update_time`) VALUES
(1, 0, '基于TP6 layui开发的cms 后台管理系统', '基于TP6 layui开发的cms 后台管理系统', '<p>基于TP6 layui开发的cms 后台管理系统</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887696120781.jpg\" title=\"1571887559457804.jpg\"/></p><p class=\"txt-con\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">砀山酥梨，安徽省砀山县特产，中国国家地理标志产品。砀山酥梨栽培历史悠久，是中国传统三大名梨之首，以其汁多味甜且具有润肺止作用而驰名中外。砀山酥梨已有千年历史，古时候作为贡梨上奉给朝廷。砀山酥梨不仅酥脆爽口，入口即化，营养价值与养生价值也极高。<br/>当所有实体零售都具有明显的&quot;电商&quot;基因特征之时，传统意义上的&quot;电商&quot;将不复存在，引导城市人了解乡村和乡村产品，帮助砀山县优质产品开拓新渠道，能够推动城乡资源协调，价值共享。在新零售体系下，线上线下和物流结合在一起。对砀山酥梨在互联网时代，新零售时代，建立强势本土品牌，丰富产品渠道具有重要意义，也是砀山酥梨等水果产品对新零售的重大实践。通过分析砀山酥梨产品现状，融合线上线下+物流的新零售商业模式，以交互性的展示方式进行综合性、系统性的设计配合以砀山梨文化，进行砀山&quot;趣果&quot;品牌升级，建立城乡资源协调，价值共享的新渠道。<br/><br/>现存问题：品牌形象不统一/亟待开发零售渠道<br/>解决问题：品牌形象升级/开拓零售新渠道</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887696461242.jpg\" title=\"1571887559242116.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887696287088.jpg\" title=\"1571887559833359.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887697981019.jpg\" title=\"1571887560320348.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887697120360.jpg\" title=\"1571887561358113.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887697868403.jpg\" title=\"1571887563944492.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887697756330.jpg\" title=\"1571887565166431.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887698973584.jpg\" title=\"1571887565209280.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887698601135.jpg\" title=\"1571887566610692.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887698397963.jpg\" title=\"1571887567938692.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887698828665.jpg\" title=\"1571887568145575.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887698515451.jpg\" title=\"1571887568507688.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887699396115.jpg\" title=\"1571887569384432.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887699604381.jpg\" title=\"1571887570809086.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887699967873.jpg\" title=\"1571887570156687.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887699515377.jpg\" title=\"1571887570358602.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887699477326.jpg\" title=\"1571887571628842.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887700396108.jpg\" title=\"1571887573350219.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887578370932.jpg\" title=\"1571887578370932.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887587768979.jpg\" title=\"1571887587768979.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887700590667.jpg\" title=\"1571887588112710.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887700586080.jpg\" title=\"1571887589562965.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887701817657.jpg\" title=\"1571887592239872.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887701568718.jpg\" title=\"1571887593663115.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887701942606.jpg\" title=\"1571887596303637.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887701169909.jpg\" title=\"1571887598242782.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887702153954.jpg\" title=\"1571887601870162.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887702625862.jpg\" title=\"1571887607178606.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887702485589.jpg\" title=\"1571887610989569.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887702581477.jpg\" title=\"1571887614139457.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887621355998.jpg\" title=\"1571887621355998.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887625781655.jpg\" title=\"1571887625781655.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887703425807.jpg\" title=\"1571887626477847.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887703775797.jpg\" title=\"1571887628619574.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887704532721.jpg\" title=\"1571887631392414.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887704749867.jpg\" title=\"1571887632616743.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887704369836.jpg\" title=\"1571887634318856.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887704749385.jpg\" title=\"1571887636220252.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887705612157.jpg\" title=\"1571887637776881.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887705146025.jpg\" title=\"1571887639244130.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887705809889.jpg\" title=\"1571887640637882.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887705528190.jpg\" title=\"1571887641917159.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887705249948.jpg\" title=\"1571887642780899.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887706684427.jpg\" title=\"1571887642446784.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887706385929.jpg\" title=\"1571887643303607.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887706164480.jpg\" title=\"1571887644666756.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887706976222.jpg\" title=\"1571887644163718.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887707391109.jpg\" title=\"1571887645492295.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887707878682.jpg\" title=\"1571887649861251.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887707646939.jpg\" title=\"1571887652944264.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); overflow-wrap: break-word; max-width: 100%; line-height: 32px; color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.sheboo.cn/uploads/ueditor/image/20191024/1571887707987802.jpg\" title=\"1571887655949048.jpg\"/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p>asdfasdfadfasdf</p><p>asdfasd</p><p>fasdfas</p><p>fadfas</p><p>fsadf</p><p>asdf</p><p>asdf</p><p>asdf</p><p>asdf</p><p>asdf</p><p>asdfasdfasdf</p>', '', '994927909@qq.com', 'tp6 layui', 1, 1, '', 0, '', 1206, 0, 0, '/storage/uploads/20190826\\b183bf1681077d0bafd37bc17caf2cdc.png', '', 1566799075, 1573117437);

-- --------------------------------------------------------

--
-- Table structure for table `lm_article_cate`
--

CREATE TABLE `lm_article_cate` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(20) DEFAULT NULL COMMENT '类别名称',
  `title_alias` varchar(20) DEFAULT NULL COMMENT '别名',
  `title_type` smallint(6) DEFAULT '0' COMMENT '默认分组',
  `pid` smallint(6) DEFAULT '0' COMMENT '上级ID',
  `show_in_nav` tinyint(1) DEFAULT '0' COMMENT '是否导航显示',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `sort` smallint(6) DEFAULT '50' COMMENT '排序',
  `cat_desc` varchar(255) DEFAULT NULL COMMENT '分类描述',
  `keywords` varchar(30) DEFAULT NULL COMMENT '搜索关键词',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lm_article_cate`
--

INSERT INTO `lm_article_cate` (`id`, `title`, `title_alias`, `title_type`, `pid`, `show_in_nav`, `status`, `sort`, `cat_desc`, `keywords`, `create_time`, `update_time`) VALUES
(2, '购物指南', '', 1, 0, 0, 1, 2, '', '', 0, 1573324157),
(6, '系统公告', '', 1, 0, 0, 1, 6, '', '', 0, 1573324156),
(7, '关于我们', '', 1, 0, 0, 1, 7, '', '', 0, 1573203137),
(8, '测试分类', '测试分类', 0, 7, 0, 1, 50, '', '', 1566801126, 1573203136);

-- --------------------------------------------------------

--
-- Table structure for table `lm_auth_group`
--

CREATE TABLE `lm_auth_group` (
  `id` smallint(8) UNSIGNED NOT NULL COMMENT '分组id',
  `title` char(100) NOT NULL DEFAULT '' COMMENT '标题',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态',
  `rules` longtext COMMENT '规则',
  `create_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `update_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='管理员分组';

--
-- Dumping data for table `lm_auth_group`
--

INSERT INTO `lm_auth_group` (`id`, `title`, `status`, `rules`, `create_time`, `update_time`) VALUES
(1, '超级管理员', 1, '23,24,1,2,20,21,40,34,39,73,3,4,5,9,10,11,12,22,13,6,7,8,14,15,16,17,18,19,26,27,28,29,30,31,32,33,35,36,37,38,41,137,138,139,140,142,129,130,131,132,133,134,135,136,147,141,42,46,53,43,44,45,68,47,48,49,50,51,52,67,54,55,56,57,58,66,59,60,61,62,65,74,69,70,71,72,75,76,77,78,79,80,81,82,83,84,85,86,87,120,121,122,123,124,125,126,127,128,143,144,145,146,88,95,96,97,98,89,99,100,101,102,90,103,104,91,112,113,114,115,116,92,117,118,119,93,105,106,107,108,109,94,110,111,', 1465114224, 1571885709),
(2, '测试1', 1, '1,2,20,21,40,34,39,3,9,22,13,6,7,16,26,30,35,38,41,137,142,129,131,133,134,136,147,141,42,46,45,47,48,51,54,57,59,60,74,69,75,76,77,81,82,83,87,120,121,122,123,124,125,126,127,128,143,144,145,146,88,97,89,99,100,101,102,90,103,104,91,112,113,114,115,116,92,117,118,119,93,105,106,107,108,109,94,110,111,', 1565929191, 1573405169),
(3, '测试2', 1, NULL, 1567485941, 1573405171);

-- --------------------------------------------------------

--
-- Table structure for table `lm_auth_rule`
--

CREATE TABLE `lm_auth_rule` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `href` char(80) NOT NULL DEFAULT '' COMMENT '链接',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '类型',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态1 可以用，0 所有禁止使用',
  `auth_open` tinyint(2) NOT NULL DEFAULT '0' COMMENT '1公开 0不公开',
  `menu_status` tinyint(1) DEFAULT '0' COMMENT '0 不显示，1 显示',
  `icon` varchar(50) DEFAULT NULL COMMENT '图标样式',
  `condition` char(100) DEFAULT '' COMMENT '条件',
  `pid` int(5) NOT NULL DEFAULT '0' COMMENT '父栏目ID',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='权限节点';

--
-- Dumping data for table `lm_auth_rule`
--

INSERT INTO `lm_auth_rule` (`id`, `href`, `title`, `type`, `status`, `auth_open`, `menu_status`, `icon`, `condition`, `pid`, `sort`, `create_time`, `update_time`) VALUES
(1, 'System', '系统', 1, 1, 0, 1, 'fa fa-home', '', 0, 58, 1446535750, 1571966892),
(2, 'System', '系统设置', 1, 1, 0, 1, 'fa fa-gears', '', 1, 0, 1446535789, 1571882291),
(3, 'Database', '数据库管理', 1, 1, 0, 1, 'fa fa-database', '', 1, 0, 1446535805, 0),
(4, 'Database/restore', '还原数据库', 2, 1, 0, 1, 'fa fa-database', '', 3, 0, 1446535750, 0),
(5, 'Database/backup', '数据库备份', 2, 1, 0, 0, 'fa fa-database', '', 3, 0, 1446535834, 0),
(6, 'Auth', '权限管理', 1, 1, 0, 1, 'fa fa-cog', '', 1, 0, 0, 0),
(7, 'Auth/adminRule', '权限列表', 1, 1, 0, 1, 'fa fa-cog', '', 6, 0, 0, 0),
(8, 'Auth/ruleEdit', '权限编辑', 2, 1, 0, 0, 'fa fa-cog', '', 7, 0, 0, 0),
(9, 'Database/repair', '数据库修复', 2, 1, 0, 0, '', '', 3, 0, 0, 0),
(10, 'Database/import', '数据还原', 2, 1, 0, 0, '', '', 3, 0, 0, 0),
(11, 'Database/downFile', '数据下载', 2, 1, 0, 0, '', '', 3, 0, 0, 0),
(12, 'Database/delSqlFiles', '删除数据库', 2, 1, 0, 0, '', '', 3, 0, 0, 0),
(13, 'Database/index', '数据库列表', 1, 1, 0, 1, 'fa fa-database', '', 3, 1, 0, 0),
(14, 'Auth/ruleState', '菜单显示或者隐藏', 2, 1, 0, 0, '', '', 7, 0, 0, 0),
(15, 'Auth/ruleOpen', '权限是否验证', 2, 1, 0, 0, '', '', 7, 0, 0, 0),
(16, 'Auth/ruleSort', '权限排序', 2, 1, 0, 0, '', '', 7, 0, 0, 0),
(17, 'Auth/ruleDel', '权限删除', 2, 1, 0, 0, '', '', 7, 0, 0, 0),
(18, 'Auth/ruleSelectDel', '权限批量删除', 2, 1, 0, 0, '', '', 7, 0, 0, 0),
(19, 'Auth/ruleAdd', '权限增加', 2, 1, 0, 0, '', '', 7, 0, 0, 0),
(20, 'System/index', '站点设置', 1, 1, 0, 1, 'fa fa-gears', '', 2, 0, 0, 1567228601),
(21, 'Adminlog/index', '日志管理', 1, 1, 0, 1, 'fa fa-life-ring', '', 2, 0, 0, 1566007925),
(22, 'Database/optimize', '数据库优化', 1, 1, 0, 0, '', '', 3, 0, 0, 0),
(26, 'Auth/group', '权限组', 1, 1, 0, 1, 'fa fa-globe', '', 6, 0, 0, 0),
(27, 'Auth/groupDel', '用户组删除', 1, 1, 0, 0, '', '', 26, 0, 0, 0),
(28, 'Auth/groupAdd', '用户组添加', 1, 1, 0, 0, '', '', 26, 0, 0, 0),
(29, 'Auth/groupEdit', '用户组修改', 1, 1, 0, 0, '', '', 26, 0, 0, 0),
(30, 'Auth/groupState', '用户组状态修改', 1, 1, 0, 0, '', '', 26, 0, 0, 0),
(31, 'Auth/groupSelectDel', '用户组批量删除', 1, 1, 0, 0, '', '', 26, 0, 0, 0),
(32, 'Auth/groupAccess', '用户组显示权限', 1, 1, 0, 0, '', '', 26, 0, 0, 0),
(33, 'Auth/groupSetaccess', '用户组保存权限', 1, 1, 0, 0, '', '', 26, 0, 0, 0),
(34, 'Uploads/uploads', '上传文件', 1, 1, 0, 0, 'fa fa-adjust', '', 2, 0, 0, 1571966280),
(35, 'Auth/adminList', '管理员列表', 1, 1, 0, 1, 'fa fa-user-circle', '', 6, 0, 1, 0),
(36, 'Auth/adminAdd', '添加管理员', 1, 1, 0, 0, '', '', 35, 0, 0, 0),
(37, 'Auth/adminDel', '删除管理员', 1, 1, 0, 0, '', '', 35, 0, 0, 0),
(38, 'Auth/adminState', '管理员状态', 1, 1, 0, 0, '', '', 35, 0, 0, 0),
(39, 'Index/password', '修改密码', 1, 1, 0, 0, '', '', 2, 0, 0, 0),
(40, 'Adminlog/delete', '删除日志', 1, 1, 0, 0, '', '', 21, 0, 0, 0),
(41, 'Content', '内容', 1, 1, 0, 1, 'fa fa-folder-open', '', 0, 50, 1566092187, 1571806010),
(42, 'Link', '链接管理', 1, 1, 0, 1, 'fa fa-link', '', 41, 50, 1566092432, 1566092684),
(43, 'Link/add', '链接添加', 1, 1, 0, 0, '', '', 46, 50, 1566092486, 1566092801),
(44, 'Link/delete', '链接删除', 1, 1, 0, 0, '', '', 46, 50, 1566092613, 1566092798),
(45, 'Link/state', '链接状态', 1, 1, 0, 0, '', '', 46, 50, 1566092677, 1566092795),
(46, 'Link/index', '链接列表', 1, 1, 0, 1, 'fa fa-link', '', 42, 50, 1566092770, 1566092770),
(47, 'Adv', '广告管理', 1, 1, 0, 1, 'fa fa-audio-description', '', 41, 50, 0, 1571493193),
(48, 'Adv/index', '广告列表', 1, 1, 0, 1, 'fa fa-audio-description', '', 47, 0, 0, 0),
(49, 'Adv/add', '广告添加', 1, 1, 0, 0, '', '', 48, 0, 0, 0),
(50, 'Adv/delete', '广告删除', 1, 1, 0, 0, '', '', 48, 0, 0, 0),
(51, 'Adv/state', '广告状态', 1, 1, 0, 0, '', '', 48, 0, 0, 0),
(52, 'Adv/order', '广告排序', 1, 1, 0, 0, '', '', 48, 0, 0, 0),
(53, 'Link/order', '链接排序', 1, 1, 0, 0, '', '', 46, 0, 0, 0),
(54, 'Adv/pos', '广告位置', 1, 1, 0, 1, 'fa fa-audio-description', '', 47, 0, 0, 0),
(55, 'Adv/posAdd', '广告位添加', 1, 1, 0, 0, '', '', 54, 0, 0, 1566263212),
(56, 'Adv/posDel', '广告位删除', 1, 1, 0, 0, '', '', 54, 0, 0, 0),
(57, 'Adv/posState', '广告位状态', 1, 1, 0, 0, '', '', 54, 0, 0, 0),
(58, 'Adv/posOrder', '广告位排序', 1, 1, 0, 0, '', '', 54, 0, 0, 0),
(59, 'Article', '文章管理', 1, 1, 0, 1, 'fa fa-align-left', '', 41, 50, 1566262787, 1566787746),
(60, 'Article/index', '文章列表', 1, 1, 0, 1, 'fa fa-bars', '', 59, 50, 1566262825, 1566799505),
(61, 'Article/add', '添加文章', 1, 1, 0, 0, '', '', 60, 50, 1566262896, 1566263088),
(62, 'Article/delete', '删除文章', 1, 1, 0, 0, '', '', 60, 50, 1566262920, 1566263087),
(65, 'Article/edit', '文章编辑', 1, 1, 0, 0, '', '', 60, 50, 1566263048, 1566263082),
(66, 'Adv/posEdit', '广告编辑', 1, 1, 0, 0, '', '', 54, 50, 1566264182, 1567229269),
(67, 'Adv/edit', '广告编辑', 1, 1, 0, 0, '', '', 48, 50, 1566264200, 1567229266),
(68, 'Link/edit', '链接编辑', 1, 1, 0, 0, '', '', 46, 50, 1566264281, 1566264281),
(69, 'Article/articleCate', '文章分类', 1, 1, 0, 1, 'fa fa-folder-o', '', 59, 50, 1566799875, 1566800015),
(70, 'Article/cateAdd', '添加文章分类', 1, 1, 0, 0, '', '', 69, 0, 0, 0),
(71, 'Article/cateEdit', '编辑文章分类', 1, 1, 0, 0, '', '', 69, 0, 0, 0),
(72, 'Article/cateDel', '删除文章分类', 1, 1, 0, 0, '', '', 69, 0, 0, 0),
(73, 'System/site', '站点修改', 1, 1, 0, 0, '', '', 2, 50, 1567225373, 1567225410),
(74, 'Article/state', '文章状态', 1, 1, 0, 0, '', '', 60, 50, 1567225947, 1567225947),
(75, 'Article/cateState', '文章分类状态', 1, 1, 0, 0, '', '', 69, 50, 1567225975, 1567225975),
(76, 'User', '会员', 1, 1, 0, 1, 'fa fa-address-card-o', '', 0, 30, 1567327942, 1573460133),
(77, 'User/index', '会员管理', 1, 1, 0, 1, 'fa fa-address-card-o', '', 76, 50, 1567327992, 1567327992),
(78, 'User/add', '会员添加', 1, 1, 0, 0, NULL, '', 77, 0, 0, NULL),
(79, 'User/del', '会员删除', 1, 1, 0, 0, NULL, '', 77, 0, 0, NULL),
(80, 'User/edit', '会员编辑', 1, 1, 0, 0, NULL, '', 77, 0, 0, NULL),
(81, 'User/state', '会员状态', 1, 1, 0, 0, NULL, '', 77, 0, 0, NULL),
(82, 'User/levelIndex', '会员等级', 1, 1, 0, 1, 'fa fa-align-center', '', 76, 50, 1567563846, 1567565085),
(83, 'User/levelState', '会员等级状态', 1, 1, 0, 0, '', '', 82, 50, 1567568251, 1567568323),
(84, 'User/levelDel', '会员等级删除', 1, 1, 0, 0, '', '', 82, 50, 1567568283, 1567568283),
(85, 'User/levelAdd', '会员等级添加', 1, 1, 0, 0, '', '', 82, 50, 1567568305, 1567568333),
(86, 'User/levelEdit', '会员等级编辑', 1, 1, 0, 0, '', '', 82, 50, 1567568357, 1567568372),
(87, 'Wechat', '微信', 1, 1, 0, 1, 'fa fa-comments-o', '', 0, 50, 1567605987, 1573786930),
(88, 'Wechat/index', '微信列表', 1, 1, 0, 1, 'fa fa-wechat', '', 87, 50, 1567606015, 1567606076),
(89, 'Wechat/menu', '微信菜单', 1, 1, 0, 1, 'fa fa-comments-o', '', 87, 50, 1567651630, 1567651630),
(90, 'Wechat/fans', '粉丝列表', 1, 1, 0, 1, 'fa fa-address-card-o', '', 87, 50, 1567844064, 1567844064),
(91, 'Wechat/material', '素材列表', 1, 1, 0, 1, 'fa fa-camera', '', 87, 50, 1567909098, 1567909098),
(92, 'Wechat/reply', '回复设置', 1, 1, 0, 1, 'fa fa-clock-o', '', 87, 50, 1567914909, 1568010411),
(93, 'Wechat/tag', '粉丝标签', 1, 1, 0, 1, 'fa fa-instagram', '', 87, 50, 1567996985, 1567997002),
(94, 'Wechat/message', '历史消息', 1, 1, 0, 1, 'fa fa-newspaper-o', '', 87, 50, 1568193117, 1568193117),
(95, 'Wechat/add', '微信添加', 1, 1, 0, 0, NULL, '', 88, 0, 0, NULL),
(96, 'Wechat/edit', '微信编辑', 1, 1, 0, 0, NULL, '', 88, 0, 0, NULL),
(97, 'Wechat/state', '微信状态', 1, 1, 0, 0, NULL, '', 88, 0, 0, NULL),
(98, 'Wecaht/delete', '删除微信账号', 1, 1, 0, 0, NULL, '', 88, 0, 0, NULL),
(99, 'Wechat/addWeixinMenu', '添加微信菜单', 1, 1, 0, 0, NULL, '', 89, 0, 0, NULL),
(100, 'Wechat/changeApp', '更换微信账号', 1, 1, 0, 0, NULL, '', 89, 0, 0, NULL),
(101, 'Wechat/updataWechatMenu', '更新菜单', 1, 1, 0, 0, NULL, '', 89, 0, 0, NULL),
(102, 'Wechat/menuDel', '删除菜单', 1, 1, 0, 0, NULL, '', 89, 0, 0, NULL),
(103, 'Wechat/fansAysn', '粉丝同步', 1, 1, 0, 0, NULL, '', 90, 0, 0, NULL),
(104, 'Wechat/fansTagGroup', '粉丝标签', 1, 1, 0, 0, NULL, '', 90, 0, 0, NULL),
(105, 'Wechat/tagState', '标签状态', 1, 1, 0, 0, NULL, '', 93, 0, 0, NULL),
(106, 'Wechat/tagAysn', '标签同步', 1, 1, 0, 0, NULL, '', 93, 0, 0, NULL),
(107, 'Wechat/tagAdd', '添加标签', 1, 1, 0, 0, NULL, '', 93, 0, 0, NULL),
(108, 'Wechat/tagDel', '删除标签', 1, 1, 0, 0, NULL, '', 93, 0, 0, NULL),
(109, 'Wechat/tagEdit', '编辑标签', 1, 1, 0, 0, NULL, '', 93, 0, 0, NULL),
(110, 'Wechat/messageDel', '消息删除', 1, 1, 0, 0, NULL, '', 94, 0, 0, NULL),
(111, 'Wechat/messageReply', '消息回复', 1, 1, 0, 0, NULL, '', 94, 0, 0, NULL),
(112, 'Wechat/materialAdd', '素材添加', 1, 1, 0, 0, NULL, '', 91, 0, 0, NULL),
(113, 'Wechat/materialEdit', '素材编辑', 1, 1, 0, 0, NULL, '', 91, 0, 0, NULL),
(114, 'Wechat/materialDel', '素材删除', 1, 1, 0, 0, NULL, '', 91, 0, 0, NULL),
(115, 'Wechat/materialSend', '素材发送', 1, 1, 0, 0, NULL, '', 91, 0, 0, NULL),
(116, 'Wechat/materialPreview', '素材预览', 1, 1, 0, 0, NULL, '', 91, 0, 0, NULL),
(117, 'Wechat/replyAdd', '添加回复', 1, 1, 0, 0, NULL, '', 92, 0, 0, NULL),
(118, 'Wechat/replyEdit', '回复编辑', 1, 1, 0, 0, NULL, '', 92, 0, 0, NULL),
(119, 'Wechat/replayDel', '回复删除', 1, 1, 0, 0, NULL, '', 92, 0, 0, NULL),
(120, 'Wechat/imageUpload', '图片上传', 1, 1, 0, 0, NULL, '', 87, 0, 0, 1573177034),
(121, 'Wechat/videoUpload', '视频上传', 1, 1, 0, 0, '', '', 87, 0, 0, 1571805944),
(122, 'Wechat/voiceUpload', '语音上传', 1, 1, 0, 0, NULL, '', 87, 0, 0, NULL),
(123, 'Wechat/thumbUpload', '缩略图上传', 1, 1, 0, 0, NULL, '', 87, 0, 0, NULL),
(124, 'Wechat/UeditUploadImage', '百度编辑器上传图片', 1, 1, 0, 0, NULL, '', 87, 0, 0, NULL),
(125, 'Wechat/UeditUploadVideo', '百度编辑器上传视频', 1, 1, 0, 0, NULL, '', 87, 0, 0, NULL),
(126, 'Wechat/UeditUploaVoice', '百度编辑器上传音频', 1, 1, 0, 0, NULL, '', 87, 0, 0, NULL),
(127, 'Wechat/getListImage', '获取图片列表', 1, 1, 0, 0, NULL, '', 87, 0, 0, NULL),
(128, 'Wechat/getWxAccount', '微信账号', 1, 1, 0, 0, NULL, '', 87, 0, 0, NULL),
(129, 'Module/index', '模型管理', 1, 1, 0, 1, 'fa fa-cube', '', 41, 2, 1570584769, 1571493213),
(130, 'Module/edit', '模型编辑', 1, 1, 0, 0, NULL, '', 129, 0, 0, NULL),
(131, 'Module/add', '模型添加', 1, 1, 0, 0, NULL, '', 129, 0, 0, NULL),
(132, 'Module/delete', '模型删除', 1, 1, 0, 0, NULL, '', 129, 0, 0, NULL),
(133, 'Module/fieldAdd', '模型字段添加', 1, 1, 0, 0, NULL, '', 129, 0, 0, NULL),
(134, 'Module/fieldedit', '模型字段编辑', 1, 1, 0, 0, NULL, '', 129, 0, 0, NULL),
(135, 'Module/fielddel', '模型字段删除', 1, 1, 0, 0, NULL, '', 129, 0, 0, NULL),
(136, 'Module/field', '模型字段列表', 1, 1, 0, 0, NULL, '', 129, 0, 0, NULL),
(137, 'Column/index', '栏目管理', 1, 1, 0, 1, 'fa fa-align-justify', '', 41, 1, 0, 1571486160),
(138, 'Column/edit', '栏目编辑', 1, 1, 0, 0, NULL, '', 137, 0, 0, NULL),
(139, 'Column/add', '栏目添加', 1, 1, 0, 0, NULL, '', 137, 0, 0, NULL),
(140, 'Column/delete', '栏目删除', 1, 1, 0, 0, NULL, '', 137, 0, 0, NULL),
(141, 'Module/state', '模型状态', 1, 1, 0, 0, '', '', 129, 50, 1571480361, 1571480361),
(142, 'Column/state', '栏目状态', 1, 1, 0, 0, NULL, '', 137, 0, 0, NULL),
(143, 'Wechat/qrcode', '二维码管理', 1, 1, 0, 1, 'fa fa-qrcode', '', 87, 55, 0, 1571919893),
(144, 'Wechat/qrcodeAdd', '添加二维码', 1, 1, 0, 0, NULL, '', 143, 0, 0, NULL),
(145, 'Wechat/qrcodeDel', '二维码删除', 1, 1, 0, 0, NULL, '', 143, 0, 0, NULL),
(146, 'Wechat/qrcodeState', '二维码状态', 1, 1, 0, 0, NULL, '', 143, 0, 0, NULL),
(147, 'Module/fieldState', '模型字段状态', 1, 1, 0, 0, NULL, '', 129, 0, 0, NULL),
(148, 'System/configlist', '配置列表', 1, 1, 0, 1, 'fa fa-align-justify', '', 2, 0, 0, NULL),
(149, 'System/configAdd', '添加配置', 1, 1, 0, 0, NULL, '', 148, 0, 0, NULL),
(150, 'System/configEdit', '编辑配置', 1, 1, 0, 0, NULL, '', 148, 0, 0, NULL),
(151, 'System/configDel', '删除配置', 1, 1, 0, 0, NULL, '', 148, 0, 0, NULL),
(152, 'System/configState', '配置状态', 1, 1, 0, 0, NULL, '', 148, 0, 0, NULL),
(153, 'System/configGroupAdd', '配置组添加', 1, 1, 0, 0, NULL, '', 148, 0, 0, NULL),
(154, 'System/configGroupDel', '配置组删除', 1, 1, 0, 0, NULL, '', 148, 0, 0, NULL),
(155, 'Addon', '插件', 1, 1, 0, 1, 'fa fa-asterisk', '', 0, 50, 1573194155, 1573194155),
(156, 'Addon/index', '插件列表', 1, 1, 0, 1, 'fa fa-align-justify', '', 155, 50, 1573194187, 1573194187);

-- --------------------------------------------------------

--
-- Table structure for table `lm_column`
--

CREATE TABLE `lm_column` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `clname` varchar(255) NOT NULL DEFAULT '' COMMENT '栏目名字',
  `cldir` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目唯一标识',
  `pid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `arrpid` varchar(100) NOT NULL,
  `arrchildid` varchar(100) NOT NULL DEFAULT ' ',
  `moduleid` tinyint(2) UNSIGNED NOT NULL DEFAULT '0' COMMENT '模型id',
  `module` char(24) NOT NULL DEFAULT '' COMMENT '模型名字',
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '1 单页，0 普通',
  `title` varchar(150) NOT NULL DEFAULT '' COMMENT '标题',
  `keywords` varchar(200) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT '排序',
  `is_menu` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否菜单',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '是否显示',
  `click` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '点击量',
  `thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '图片',
  `url` varchar(100) NOT NULL DEFAULT '' COMMENT '链接地址',
  `template_list` varchar(50) NOT NULL DEFAULT '',
  `template_show` varchar(50) NOT NULL,
  `page_size` tinyint(4) NOT NULL DEFAULT '15',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lm_column`
--

INSERT INTO `lm_column` (`id`, `clname`, `cldir`, `pid`, `arrpid`, `arrchildid`, `moduleid`, `module`, `type`, `title`, `keywords`, `description`, `sort`, `is_menu`, `status`, `click`, `thumb`, `url`, `template_list`, `template_show`, `page_size`, `create_time`, `update_time`) VALUES
(1, '首页', '', 0, '0', '1,4', 12, 'pic', 0, '首页', '首页', '首页', 50, 1, 1, 50, '/storage/uploads/20191012\\efe7bcf1a0750c3349222248b6b4859e.png', '', '', '', 15, 0, 1573720371),
(2, '论坛', '', 0, '0', '2', 14, 'articles', 0, '论坛', '论坛', '论坛', 50, 1, 1, 100, '', '', '', '', 15, 0, 1573720370),
(4, 'demo', 'demo', 1, '0,1', '4', 27, 'page', 0, 'demo', 'demo', 'demo', 50, 1, 1, 100, '', '', '', '', 15, 1571458157, 1573720368);

-- --------------------------------------------------------

--
-- Table structure for table `lm_config`
--

CREATE TABLE `lm_config` (
  `id` smallint(5) NOT NULL,
  `code` varchar(30) NOT NULL,
  `value` mediumtext,
  `remark` varchar(100) DEFAULT '解释,备注',
  `type` varchar(20) DEFAULT 'site',
  `status` tinyint(1) DEFAULT '1',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='配置参数表';

--
-- Dumping data for table `lm_config`
--

INSERT INTO `lm_config` (`id`, `code`, `value`, `remark`, `type`, `status`, `create_time`, `update_time`) VALUES
(1, 'site_name', 'lemocms', '网站名称', 'site', 1, 0, 0),
(2, 'site_phone', '3', '网站客服服务电话', 'site', 1, 0, 0),
(3, 'site_state', '1', '状态', 'site', 1, 0, 0),
(4, 'site_logo', '/storage/uploads/logo.png', '网站logo图', 'site', 1, 0, 0),
(5, 'site_mobile_logo', 'site_mobile_logo.png', '默认网站手机端logo', 'site', 1, 0, 0),
(6, 'site_logowx', 'site_logowx.jpg', '微信网站二维码', 'site', 1, 0, 0),
(7, 'site_icp', '2', 'ICP备案号', 'site', 1, 0, 0),
(8, 'site_tel400', '40002541852', '解释,备注', 'site', 1, 0, 0),
(9, 'site_email', '858761000@qq.com', '电子邮件', 'site', 1, 0, 0),
(10, 'site_copyright', 'LEMOCMS版权所有@2019', '底部版权信息', 'site', 1, 0, 0),
(11, 'captcha_status_login', '1', '会员登录是否需要验证码', 'site', 1, 0, 0),
(12, 'captcha_status_register', '1', '会员注册是否验证码', 'site', 1, 0, 0),
(14, 'sms_appid', 'LTAIesI7qxnHLgKE', '短信平台账号', 'sms', 1, 0, 0),
(15, 'sms_secret', 'sbA6wnefJLD7pv7WipcxL0M3IMb3l9', '短信平台密钥', 'sms', 1, 0, 0),
(16, 'email_host', 'smtp.qq.com', '邮箱地址', 'email', 1, 0, 0),
(17, 'email_port', '25', '邮箱端口', 'email', 1, 0, 0),
(18, 'email_addr', '994927909@qq.com', '邮箱发件人地址', 'email', 1, 0, 0),
(19, 'email_id', '994927909@qq.com', '身份验证用户名', 'email', 1, 0, 0),
(20, 'email_pass', '11211', '用户名密码', 'email', 1, 0, 0),
(21, 'email_secure', 'smtp', '邮箱发送协议', 'email', 1, 0, 0),
(22, 'upload_file_type', 'bmp|png|gif|jpg|jpeg|zip|rar|txt|ppt|xls|doc|mp3|mp4', '图片上传保存方式', 'upload', 1, 0, 0),
(23, 'cache_open', '0', '是否开启缓存', 'site', 1, 0, 0),
(24, 'alioss_accessid', '', 'accessid', 'oss', 1, 0, 0),
(25, 'alioss_accesssecret', '', 'oss_accesssecret', 'oss', 1, 0, 0),
(26, 'alioss_bucket', '', 'oss_bucket', 'oss', 1, 0, 0),
(27, 'alioss_endpoint', '', 'oss_endpoint', 'oss', 1, 0, 0),
(28, 'aliendpoint_type', '0', 'aliendpoint_type', 'oss', 1, 0, 0),
(29, 'node_site_url', '', '站内IM服务器地址', 'im', 1, 0, 0),
(30, 'node_site_use', '0', '是否启用im', 'im', 1, 0, 0),
(31, 'qq_isuse', '1', '是否使用QQ互联', 'qq', 1, 0, 0),
(32, 'qq_appid', '', 'qq互联id', 'qq', 1, 0, 0),
(33, 'qq_appkey', '', 'qq秘钥', 'qq', 1, 0, 0),
(34, 'sina_isuse', '1', '是的使用微博登录', 'sina', 1, 0, 0),
(35, 'sina_wb_akey', '', '新浪id', 'sina', 1, 0, 0),
(36, 'sina_wb_skey', '', '新浪秘钥', 'sina', 1, 0, 0),
(37, 'sms_register', '0', '是否手机注册', 'mobile', 1, 0, 0),
(38, 'sms_login', '0', '是否手机登录', 'mobile', 1, 0, 0),
(39, 'sms_password', '0', '是否手机找回密码', 'mobile', 1, 0, 0),
(43, 'baidu_ak', '22bb7221fc279a484895afcc6a0bb33a', '百度地图AK密钥', 'baidu', 1, 0, 0),
(44, 'site_licence', '', '营业执照', 'site', 1, 0, 0),
(45, 'site_domain', 'https://www.lemocms.com', '网站地址', 'site', 1, 0, 0),
(46, 'upload_file_max', '200', '最大文件上传大小', 'upload', 1, 0, 0),
(47, 'site_seo_title', 'LEMOCMS-PHP-THINKPHP内容管理系统', '首页标题', 'site', 1, 0, 0),
(48, 'site_seo_keywords', 'LEMOCMS,LEMOCMS官网,LEMOCMS社区,PHP内容管理系统,开源CMS,php cms,thinkphp', '首页关键词', 'site', 1, 0, 0),
(49, 'site_seo_desc', 'LEMOCMS内容管理系统是一款高效建站的PHP内容管理系统，同时也是一款开源CMS系统。LEMOCMS官网主要发布一些官网最新动态，同时也为广大建站爱好者提供一个交流探讨的平台。 - Powered by LEMOCMS', '首页描述', 'site', 1, 0, 0),
(50, 'upload_water', '1', '水印开始关闭', 'upload', 1, 0, 0),
(51, 'upload_water_position', '', '水印位置', 'upload', 1, 0, 0),
(52, 'sms_product', 'lemocms', '产品', 'sms', 1, 0, 0),
(53, 'sms_template', 'SMS_158941284', '模板id', 'sms', 1, 0, 0),
(54, 'site_version', 'v1.0.9', '版本', 'site', 1, NULL, NULL);

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

-- --------------------------------------------------------

--
-- Table structure for table `lm_field`
--

CREATE TABLE `lm_field` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `moduleid` float UNSIGNED NOT NULL DEFAULT '0' COMMENT '模型id',
  `field` varchar(20) NOT NULL DEFAULT '' COMMENT '字段',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '名字',
  `required` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否必须',
  `minlength` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '最少长度',
  `maxlength` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '最大长度',
  `rule` varchar(255) NOT NULL DEFAULT '' COMMENT '规则',
  `msg` varchar(255) NOT NULL DEFAULT '' COMMENT '错误提示',
  `type` varchar(20) NOT NULL DEFAULT '' COMMENT '字段类型',
  `is_search` tinyint(1) DEFAULT '0' COMMENT '是否可以搜索 0  不可以，1 搜索',
  `value` varchar(50) DEFAULT NULL,
  `field_define` varchar(100) DEFAULT NULL,
  `option` text COMMENT '默认值',
  `sort` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lm_field`
--

INSERT INTO `lm_field` (`id`, `moduleid`, `field`, `name`, `required`, `minlength`, `maxlength`, `rule`, `msg`, `type`, `is_search`, `value`, `field_define`, `option`, `sort`, `status`, `create_time`, `update_time`) VALUES
(31, 32, 'column_id', '栏目', 1, 0, 6, '', '必须选择一个栏目', 'column_id', 0, '', NULL, '', 1, 1, 1571732224, 0),
(32, 32, 'title', '标题', 1, 0, 80, '', '标题必须为1-80个字符', 'text', 0, '', NULL, '', 2, 1, 1571732224, 0),
(33, 32, 'keywords', '关键词', 1, 0, 200, '', '关键词必须在0-200个内', 'text', 0, '', NULL, '', 3, 1, 1571732224, 0),
(34, 32, 'description', 'SEO简介', 1, 0, 0, '', '', 'textarea', 0, '', NULL, '', 4, 1, 1571732224, 0),
(35, 32, 'content', '内容', 0, 0, 255, '', '', 'editor', 0, 'ueditor', NULL, '0|ueditor', 5, 1, 1571732224, 0),
(36, 32, 'create_time', '创建时间', 1, 0, 11, '', '', 'datetime', 0, '', NULL, '', 6, 1, 1571732224, 0),
(37, 32, 'update_time', '更新时间', 1, 0, 11, '', '', 'datetime', 0, '', NULL, '', 6, 1, 1571732224, 0),
(38, 32, 'status', '状态', 1, 0, 1, '', '', 'radio', 0, '1', NULL, '0|未发布,1|发布', 7, 1, 1571732224, 0),
(39, 32, 'recommend', '允许评论', 0, 0, 1, '', '', 'radio', 0, '1', NULL, '0|禁止评论,1|允许评论', 8, 1, 1571732224, 0),
(40, 32, 'readpoint', '阅读收费', 0, 0, 5, '', '', 'number', 0, '0', NULL, '', 9, 1, 1571732224, 0),
(41, 32, 'is_read', '是否可阅读', 0, 0, 1, '', '', 'radio', 0, '1', NULL, '0|禁止,1|允许', 9, 1, 1571732224, 0),
(42, 32, 'hits', '点击次数', 0, 0, 8, '', '', 'number', 0, '1', NULL, '', 10, 1, 1571732224, 0),
(43, 32, 'visite', '访问权限', 0, 0, 1, '', '', 'radio', 0, '1', NULL, '0|开启,1|关闭', 11, 1, 1571732224, 0),
(44, 32, 'posid', '推荐位', 0, 0, 1, '', '', 'posid', 0, '', NULL, '', 12, 12, 1571732224, 0),
(45, 32, 'tags', '标签', 0, 0, 255, '', '', 'text', 0, '', NULL, '', 14, 1, 1571732224, 0),
(46, 2, 'column_id', '栏目', 1, 1, 6, '', '必须选择一个栏目', 'column_id', 0, '', NULL, '', 1, 1, 1571884340, 0),
(47, 2, 'title', '标题', 1, 1, 80, '', '标题必须为1-80个字符', 'text', 0, '', NULL, '', 2, 1, 1571884340, 0),
(48, 2, 'keywords', '关键词', 1, 0, 200, '', '关键词必须在0-200个内', 'text', 0, '', NULL, '', 3, 1, 1571884340, 0),
(49, 2, 'description', 'SEO简介', 1, 0, 0, '', '', 'textarea', 0, '', NULL, '', 4, 1, 1571884340, 0),
(50, 2, 'content', '内容', 0, 0, 0, '', '', 'editor', 0, 'ueditor', NULL, '0|ueditor', 5, 1, 1571884340, 0),
(51, 2, 'create_time', '创建时间', 1, 0, 0, '', '', 'datetime', 0, '', NULL, '', 61, 1, 1571884340, 1571884945),
(52, 2, 'update_time', '更新时间', 1, 0, 0, '', '', 'datetime', 0, '', NULL, '', 6, 1, 1571884340, 0),
(53, 2, 'status', '状态', 1, 0, 0, '', '', 'radio', 0, '1', NULL, '0|未发布,1|发布', 7, 1, 1571884340, 0),
(54, 2, 'recommend', '允许评论', 0, 0, 1, '', '', 'radio', 0, '1', NULL, '0|禁止评论,1|允许评论', 8, 1, 1571884340, 0),
(55, 2, 'readpoint', '阅读收费', 0, 0, 5, '', '', 'number', 0, '0', NULL, '', 9, 1, 1571884340, 0),
(56, 2, 'is_read', '是否可阅读', 0, 0, 5, '', '', 'radio', 0, '1', NULL, '0|禁止,1|允许', 9, 1, 1571884340, 0),
(57, 2, 'hits', '点击次数', 0, 0, 8, '', '', 'number', 0, '1', NULL, '', 10, 1, 1571884340, 0),
(58, 2, 'visite', '访问权限', 0, 0, 0, '', '', 'radio', 0, '1', NULL, '0|开启,1|关闭', 11, 1, 1571884340, 0),
(59, 2, 'posid', '推荐位', 0, 0, 0, '', '', 'posid', 0, '', NULL, '', 12, 12, 1571884340, 0),
(60, 3, 'column_id', '栏目', 1, 0, 6, '', '必须选择一个栏目', 'column_id', 0, '', NULL, '', 1, 1, 1572145912, 0),
(61, 3, 'title', '标题', 1, 0, 180, '', '标题必须为1-180个字符', 'text', 0, '', NULL, '', 2, 1, 1572145912, 0),
(62, 3, 'keywords', '关键词', 1, 0, 80, '', '', 'text', 0, '', NULL, '', 3, 1, 1572145912, 0),
(63, 3, 'description', 'SEO简介', 1, 0, 0, '', '', 'textarea', 0, '', NULL, '', 4, 1, 1572145912, 0),
(64, 3, 'tags', '标签', 0, 0, 0, '', '', 'text', 0, '', NULL, '', 5, 1, 1, 0),
(65, 3, 'content', '内容', 0, 0, 0, '', '', 'editor', 0, 'ueditor', NULL, '0|ueditor', 6, 1, 1572145912, 0),
(78, 6, 'column_id', '栏目', 1, 0, 6, '', '必须选择一个栏目', 'column_id', 0, '', NULL, '', 1, 1, 1572870621, 0),
(79, 6, 'title', '标题', 1, 0, 80, '', '标题必须为1-80个字符', 'text', 0, '', NULL, '', 2, 1, 1572870621, 0),
(80, 6, 'keywords', '关键词', 1, 0, 200, '', '关键词必须在0-200个内', 'text', 0, '', NULL, '', 3, 1, 1572870621, 0),
(81, 6, 'description', 'SEO简介', 1, 0, 0, '', '', 'textarea', 0, '', NULL, '', 4, 1, 1572870621, 0),
(82, 6, 'content', '内容', 0, 0, 255, '', '', 'editor', 0, 'ueditor', NULL, '0|ueditor', 5, 1, 1572870621, 0),
(83, 6, 'create_time', '创建时间', 1, 0, 11, '', '', 'datetime', 0, '', NULL, '', 6, 1, 1572870621, 0),
(84, 6, 'update_time', '更新时间', 1, 0, 11, '', '', 'datetime', 0, '', NULL, '', 6, 1, 1572870621, 0),
(85, 6, 'status', '状态', 1, 0, 1, '', '', 'radio', 0, '1', NULL, '0|未发布,1|发布', 7, 1, 1572870621, 0),
(86, 6, 'recommend', '允许评论', 0, 0, 1, '', '', 'radio', 0, '1', NULL, '0|禁止评论,1|允许评论', 8, 1, 1572870621, 0),
(87, 6, 'readpoint', '阅读收费', 0, 0, 5, '', '', 'number', 0, '0', NULL, '', 9, 1, 1572870621, 0),
(88, 6, 'is_read', '是否可阅读', 0, 0, 1, '', '', 'radio', 0, '1', NULL, '0|禁止,1|允许', 9, 1, 1572870621, 0),
(89, 6, 'hits', '点击次数', 0, 0, 8, '', '', 'number', 0, '1', NULL, '', 10, 1, 1572870621, 0),
(90, 6, 'visite', '访问权限', 0, 0, 1, '', '', 'radio', 0, '1', NULL, '0|开启,1|关闭', 11, 1, 1572870621, 0),
(91, 6, 'posid', '推荐位', 0, 0, 1, '', '', 'posid', 0, '', NULL, '', 12, 1, 1572870621, 0),
(92, 6, 'tags', '标签', 0, 0, 255, '', '', 'text', 0, '', NULL, '', 14, 1, 1572870621, 0),
(93, 6, 'occ_id', '土味乡情', 0, 0, 0, '', '', 'files', 0, '', 'varchar(255) NOT NULL DEFAULT \'\'', NULL, 50, 1, 1573720440, 1573720440);

-- --------------------------------------------------------

--
-- Table structure for table `lm_field_type`
--

CREATE TABLE `lm_field_type` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL COMMENT '字段类型',
  `title` varchar(64) NOT NULL DEFAULT '' COMMENT '中文类型名',
  `sort` int(4) NOT NULL DEFAULT '0' COMMENT '排序',
  `default_define` varchar(128) NOT NULL DEFAULT '' COMMENT '默认定义',
  `isoption` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否需要设置选项',
  `istring` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否自由字符',
  `rules` varchar(256) NOT NULL DEFAULT '' COMMENT '验证规则'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='字段类型表';

--
-- Dumping data for table `lm_field_type`
--

INSERT INTO `lm_field_type` (`id`, `name`, `title`, `sort`, `default_define`, `isoption`, `istring`, `rules`) VALUES
(1, 'text', '输入框', 1, 'varchar(255) NOT NULL DEFAULT \'\'', 0, 1, ''),
(2, 'checkbox', '复选框', 2, 'varchar(50) NOT NULL DEFAULT \'\'', 1, 0, ''),
(3, 'textarea', '多行文本', 3, 'varchar(255) NOT NULL DEFAULT \'\'', 0, 1, ''),
(4, 'radio', '单选按钮', 4, 'char(10) NOT NULL DEFAULT \'\'', 1, 0, ''),
(5, 'switch', '开关', 5, 'tinyint(2) UNSIGNED NOT NULL DEFAULT \'0\'', 0, 0, 'isBool'),
(6, 'array', '数组', 6, 'varchar(512) NOT NULL DEFAULT \'\'', 0, 0, ''),
(7, 'select', '下拉框', 7, 'char(10) NOT NULL DEFAULT \'\'', 1, 0, ''),
(8, 'image', '单张图', 8, 'int(5) UNSIGNED NOT NULL DEFAULT \'0\'', 0, 0, 'isNumber'),
(9, 'tags', '标签', 10, 'varchar(255) NOT NULL DEFAULT \'\'', 0, 1, ''),
(10, 'number', '数字', 11, 'int(10) UNSIGNED NOT NULL DEFAULT \'0\'', 0, 0, 'isNumber'),
(11, 'datetime', '日期和时间', 12, 'int(10) UNSIGNED NOT NULL DEFAULT \'0\'', 0, 0, ''),
(12, 'ueditor', '百度编辑器', 13, 'text NOT NULL', 0, 1, ''),
(13, 'images', '多张图', 9, 'varchar(256) NOT NULL DEFAULT \'\'', 0, 0, ''),
(14, 'color', '颜色值', 17, 'varchar(7) NOT NULL DEFAULT \'\'', 0, 0, ''),
(15, 'file', '单文件', 15, 'int(5) UNSIGNED NOT NULL DEFAULT \'0\'', 0, 0, 'isNumber'),
(16, 'files', '多文件', 16, 'varchar(255) NOT NULL DEFAULT \'\'', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `lm_link`
--

CREATE TABLE `lm_link` (
  `id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '链接名称',
  `url` varchar(200) NOT NULL COMMENT '链接URL',
  `type_id` tinyint(4) DEFAULT NULL COMMENT '所属栏目ID',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `qq` varchar(20) DEFAULT NULL COMMENT '联系QQ',
  `sort` int(5) NOT NULL DEFAULT '50' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '0禁用1启用',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lm_link`
--

INSERT INTO `lm_link` (`id`, `name`, `url`, `type_id`, `email`, `qq`, `sort`, `status`, `create_time`, `update_time`) VALUES
(23, 'lemocms', 'https://www.lemocms.com', 0, '994927909@qq.com', '994927909', 50, 0, 1566102829, 1573741568),
(25, '百度', 'https://www.baidu.com', 0, '994927909@qq.com', '994927909', 50, 1, 1566103165, 1573640285),
(26, '新浪', 'https://www.sina.com', 0, '994927909@qq.com', '994927909', 50, 1, 1566103233, 1573640288);

-- --------------------------------------------------------

--
-- Table structure for table `lm_module`
--

CREATE TABLE `lm_module` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '模型名称',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '表名',
  `description` varchar(200) NOT NULL DEFAULT '' COMMENT '描述',
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0 空白，1 文章',
  `ispage` tinyint(1) DEFAULT '0' COMMENT '是否单页',
  `listfields` varchar(255) NOT NULL DEFAULT '' COMMENT '列表页查询字段',
  `template` varchar(255) NOT NULL DEFAULT ' ',
  `sort` smallint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='模型表';

-- --------------------------------------------------------

--
-- Table structure for table `lm_oauth2_client`
--

CREATE TABLE `lm_oauth2_client` (
  `id` int(11) UNSIGNED NOT NULL,
  `store_id` int(10) UNSIGNED DEFAULT '1' COMMENT '商户id',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '标题',
  `appid` varchar(64) NOT NULL,
  `appsecret` varchar(150) NOT NULL,
  `redirect_uri` varchar(2000) NOT NULL DEFAULT '' COMMENT '回调Url',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `group` varchar(30) DEFAULT '' COMMENT '组别',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态[0:禁用;1启用]',
  `create_time` int(10) UNSIGNED DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) UNSIGNED DEFAULT '0' COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='oauth2_授权客户端';

--
-- Dumping data for table `lm_oauth2_client`
--

INSERT INTO `lm_oauth2_client` (`id`, `store_id`, `title`, `appid`, `appsecret`, `redirect_uri`, `remark`, `group`, `status`, `create_time`, `update_time`) VALUES
(1, 1, 'lemocms', 'lemocms', '123456', '', NULL, '', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lm_position`
--

CREATE TABLE `lm_position` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lm_user`
--

CREATE TABLE `lm_user` (
  `id` mediumint(8) UNSIGNED NOT NULL COMMENT '表id',
  `store_id` int(11) DEFAULT '1',
  `email` varchar(60) NOT NULL DEFAULT '' COMMENT '邮件',
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `paypwd` varchar(32) DEFAULT NULL COMMENT '支付密码',
  `sex` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0 保密 1 男 2 女',
  `birthday` int(11) NOT NULL DEFAULT '0' COMMENT '生日',
  `user_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '用户金额',
  `frozen_money` decimal(10,2) DEFAULT '0.00' COMMENT '冻结金额',
  `distribut_money` decimal(10,2) DEFAULT '0.00' COMMENT '累积分佣金额',
  `underling_number` int(5) DEFAULT '0' COMMENT '用户下线总数',
  `pay_points` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '消费积分',
  `address_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0' COMMENT '默认收货地址',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '注册时间',
  `update_time` int(11) DEFAULT NULL,
  `last_login` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `login_num` int(11) NOT NULL COMMENT '登录次数',
  `last_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `qq` varchar(20) NOT NULL DEFAULT '' COMMENT 'QQ',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号码',
  `mobile_validated` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否验证手机',
  `oauth` varchar(10) DEFAULT '' COMMENT '第三方来源 wx weibo alipay qq',
  `openid` varchar(100) DEFAULT NULL COMMENT '第三方唯一标示',
  `unionid` varchar(100) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `province` int(6) DEFAULT '0' COMMENT '省份',
  `city` int(6) DEFAULT '0' COMMENT '市区',
  `district` int(6) DEFAULT '0' COMMENT '县',
  `email_validated` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否验证电子邮箱',
  `nickname` varchar(50) DEFAULT NULL COMMENT '第三方返回昵称',
  `level_id` tinyint(1) DEFAULT '1' COMMENT '会员等级',
  `discount` decimal(10,2) DEFAULT '1.00' COMMENT '会员折扣，默认1不享受',
  `total_amount` decimal(10,2) DEFAULT '0.00' COMMENT '消费累计额度',
  `status` tinyint(1) DEFAULT '1' COMMENT '是否被锁定冻结 0 冻结，1 正常',
  `is_distribut` tinyint(1) DEFAULT '0' COMMENT '是否为分销商 0 否 1 是',
  `first_leader` int(11) DEFAULT '0' COMMENT '第一个上级',
  `second_leader` int(11) DEFAULT '0' COMMENT '第二个上级',
  `third_leader` int(11) DEFAULT '0' COMMENT '第三个上级',
  `token` varchar(64) DEFAULT '' COMMENT '用于app 授权类似于session_id',
  `message_mask` tinyint(1) NOT NULL DEFAULT '63' COMMENT '消息掩码',
  `push_id` varchar(30) NOT NULL DEFAULT '' COMMENT '推送id',
  `distribut_level` tinyint(2) DEFAULT '0' COMMENT '分销商等级',
  `is_vip` tinyint(1) DEFAULT '0' COMMENT '是否为VIP ：0不是，1是',
  `min_qrcode` varchar(255) DEFAULT NULL COMMENT '小程序专属二维码',
  `poster` varchar(255) DEFAULT NULL COMMENT '专属推广海报'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

--
-- Dumping data for table `lm_user`
--

INSERT INTO `lm_user` (`id`, `store_id`, `email`, `username`, `password`, `paypwd`, `sex`, `birthday`, `user_money`, `frozen_money`, `distribut_money`, `underling_number`, `pay_points`, `address_id`, `create_time`, `update_time`, `last_login`, `login_num`, `last_ip`, `qq`, `mobile`, `mobile_validated`, `oauth`, `openid`, `unionid`, `avatar`, `province`, `city`, `district`, `email_validated`, `nickname`, `level_id`, `discount`, `total_amount`, `status`, `is_distribut`, `first_leader`, `second_leader`, `third_leader`, `token`, `message_mask`, `push_id`, `distribut_level`, `is_vip`, `min_qrcode`, `poster`) VALUES
(1, 1, '15915407513@163.com', NULL, '519475228fe35ad067744465c42a19b2', '519475228fe35ad067744465c42a19b2', 0, -28800, '100000.00', '0.00', '0.00', 0, 100000, 0, 1523235674, NULL, 1523235674, 0, '', '', '', 0, '', NULL, NULL, '/public/upload/user/1/head_pic//1673d08c39ff9d1103611a7585a8ae0f.jpg', 0, 0, 0, 1, '15915407513@163.com', 4, '0.94', '4939.90', 1, 0, 0, 0, 0, '81953a80817fdf7c25e682ca3311abc9', 63, '0', 0, 0, NULL, NULL),
(2, 1, '123', NULL, '519475228fe35ad067744465c42a19b2', '5317bc949fb15f19cdf1be43cf9a5ae6', 2, 662659200, '1376.12', '100.00', '1120.00', 1, 57409, 0, 1523238708, NULL, 1524877594, 0, '', '', '15915407513', 1, '', NULL, NULL, '/public/upload/head_pic/20180426/a803dc7558982208df046e7e9e558125.jpg', 0, 0, 0, 0, '15915407513', 7, '0.91', '135988.54', 1, 1, 0, 0, 0, 'e9f5a1dc07f3674e5234667126f14d6a', 63, '140fe1da9e8bbcb28d2', 3, 0, NULL, NULL),
(3, 1, '', NULL, '519475228fe35ad067744465c42a19b2', '90600d68b0f56d90c4c34284d8dfd138', 0, 1524067200, '4057.47', '0.00', '0.00', 0, 49513, 0, 1523266058, 1573454861, 0, 0, '', '', '18515156363', 1, '', NULL, NULL, '/public/upload/head_pic/20180419/fec83644525cdd715416db8789cfe222.jpg', 0, 0, 0, 0, '青春', 4, '0.94', '9559.07', 0, 1, 0, 0, 0, '', 63, '190e35f7e07c8658ec6', 0, 0, NULL, NULL),
(4, 1, '15636363522@qq.com', NULL, '519475228fe35ad067744465c42a19b2', '519475228fe35ad067744465c42a19b2', 0, -28800, '0.00', '0.00', '0.00', 0, 110, 0, 1523266117, 1573454860, 1523266117, 0, '', '', '', 0, '', NULL, NULL, '/public/upload/user/4/head_pic//7268f1d4ce9879694c2ec7da77d4dfbb.png', 0, 0, 0, 1, '15636363522@qq.com', 1, '1.00', '0.00', 1, 0, 0, 0, 0, 'eaf8b23d80d7513ab4ffcf3b1129f668', 63, '0', 0, 0, NULL, NULL),
(5, 1, '', NULL, '519475228fe35ad067744465c42a19b2', '519475228fe35ad067744465c42a19b2', 0, 0, '49830.22', '0.00', '0.00', 0, 2410, 0, 1523588976, NULL, 1523588976, 0, '', '', '15766212618', 1, '', NULL, NULL, '/public/images/icon_goods_thumb_empty_300.png', 0, 0, 0, 0, '15766212618', 4, '0.94', '7687.08', 1, 1, 0, 0, 0, '91fa24fa9b42dfc79fc37d0acec4ba51', 63, '0', 0, 0, NULL, NULL),
(6, 1, '461799220@qq.com', NULL, '519475228fe35ad067744465c42a19b2', NULL, 0, 0, '1000.00', '0.00', '0.00', 0, 100, 0, 1523601798, NULL, 0, 0, '', '461799220', '18664316869', 0, '', NULL, NULL, NULL, 0, 0, 0, 0, '单测试1', 1, '1.00', '0.00', 1, 0, 0, 0, 0, '', 63, '', 0, 0, NULL, NULL),
(7, 1, '', NULL, '519475228fe35ad067744465c42a19b2', NULL, 0, 0, '0.00', '0.00', '0.00', 0, 100, 0, 1523608222, NULL, 1523608222, 0, '', '', '15274857485', 1, '', NULL, NULL, '/public/images/icon_goods_thumb_empty_300.png', 0, 0, 0, 0, '15274857485', 1, '1.00', '0.00', 1, 0, 3, 0, 0, '001b3f89dc686ad2f53f5481e8c9fb30', 63, '0', 0, 0, NULL, NULL),
(8, 1, '', NULL, '519475228fe35ad067744465c42a19b2', '519475228fe35ad067744465c42a19b2', 0, 0, '100000.00', '0.00', '0.00', 0, 100000, 0, 1523857661, 1573459471, 1540191996, 0, '', '', '13800138006', 1, '', NULL, NULL, 'http://thirdwx.qlogo.cn/mmopen/vi_32/c58Iiaib1aPodvKHMMGR9ZYmq7XGFUgppvhxgQKrJxdlZTAauZ8dTucEguiamsncVDR3h32TMO4YzppDmSuHIGI9w/132', 0, 0, 0, 0, 'summer', 2, '1.00', '55.00', 1, 0, 3, 0, 0, '', 63, '190e35f7e07c8658ec6', 0, 0, NULL, NULL),
(9, 1, '', NULL, '519475228fe35ad067744465c42a19b2', '519475228fe35ad067744465c42a19b2', 2, 1524153600, '18527.80', '0.00', '0.00', 0, 100210, 0, 1523861478, NULL, 0, 0, '', '1546515984', '15274851525', 0, '', NULL, NULL, '/public/upload/head_pic/20180420/b147d911d2d5b3ff252fa948d96fb5d3.jpg', 0, 0, 0, 0, 'nana', 2, '1.00', '871.20', 1, 1, 0, 0, 0, '', 63, '190e35f7e07c8658ec6', 0, 0, NULL, NULL),
(10, 1, '1522585@qq.com', NULL, '519475228fe35ad067744465c42a19b2', '519475228fe35ad067744465c42a19b2', 2, -28800, '5649.60', '0.00', '0.00', 0, 1100, 0, 1523864842, 1573609954, 1524801341, 0, '', '', '15919919433', 0, '', NULL, NULL, '/public/upload/head_pic/20180423/a20e71149cc243fc2df4c6eb5caadbbd.jpg', 0, 0, 0, 0, '等待', 4, '0.94', '6808.66', 0, 1, 0, 0, 0, 'cedbd4ca79a15888d4fd3a636834294f', 63, '140fe1da9e8bbcb28d2', 0, 0, NULL, NULL),
(11, 1, '', NULL, '519475228fe35ad067744465c42a19b2', NULL, 0, 0, '0.00', '0.00', '0.00', 0, 100, 0, 1523933777, 1573544844, 1523933777, 0, '', '', '18585859674', 1, '', NULL, NULL, '/public/images/icon_goods_thumb_empty_300.png', 0, 0, 0, 0, '18585859674', 1, '1.00', '0.00', 1, 1, 0, 0, 0, '2ba708bb3b18ff3b133d19802ddc8559', 63, '0', 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lm_user_level`
--

CREATE TABLE `lm_user_level` (
  `id` smallint(4) UNSIGNED NOT NULL COMMENT '表id',
  `level_name` varchar(30) DEFAULT NULL COMMENT '头衔名称',
  `amount` decimal(10,2) DEFAULT NULL COMMENT '等级必要金额',
  `discount` smallint(4) DEFAULT '100' COMMENT '折扣',
  `status` tinyint(1) DEFAULT '1',
  `sort` int(5) DEFAULT '0',
  `description` varchar(200) DEFAULT NULL COMMENT '头街 描述',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户等级表';

--
-- Dumping data for table `lm_user_level`
--

INSERT INTO `lm_user_level` (`id`, `level_name`, `amount`, `discount`, `status`, `sort`, `description`, `create_time`, `update_time`) VALUES
(1, '倔强青铜', '0.00', 100, 1, NULL, '人生若只如初相见', NULL, 1573720352),
(2, '秩序白银', '1000.00', 99, 1, NULL, '', NULL, 1573720351),
(3, '荣耀黄金', '3000.00', 94, 1, NULL, '', NULL, 1573720350),
(4, '尊贵铂金', '10000.00', 95, 1, NULL, '', NULL, 1573720350),
(5, '永恒钻石', '50000.00', 93, 1, NULL, '', NULL, 1573720349),
(6, '至尊星耀', '100000.00', 91, 1, NULL, '', NULL, 1573720349),
(7, '最强王者', '3000000.00', 90, 1, NULL, '', NULL, 1573720348),
(8, '任性', '99999999.99', 70, 1, 0, '', 1568098240, 1573720347);

-- --------------------------------------------------------

--
-- Table structure for table `lm_user_sign`
--

CREATE TABLE `lm_user_sign` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '用户id',
  `sign_total` int(11) DEFAULT '0' COMMENT '累计签到天数',
  `sign_count` int(11) DEFAULT '0' COMMENT '连续签到天数',
  `sign_last` char(11) DEFAULT '0' COMMENT '最后签到时间，时间格式20170907',
  `sign_time` mediumtext COMMENT '历史签到时间，以逗号隔开',
  `points` int(11) DEFAULT '0' COMMENT '用户累计签到总积分',
  `this_month` int(6) DEFAULT NULL COMMENT '本月累计积分'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='签到表';

--
-- Dumping data for table `lm_user_sign`
--

INSERT INTO `lm_user_sign` (`id`, `user_id`, `sign_total`, `sign_count`, `sign_last`, `sign_time`, `points`, `this_month`) VALUES
(1, 4, 1, 1, '2018-4-10', '2018-4-10', 10, 10),
(2, 2, 3, 2, '2018-4-27', '2018-4-17,2018-4-26,2018-4-27', 30, 30),
(3, 5, 1, 1, '2018-4-19', '2018-4-19', 10, 10),
(4, 3, 3, 1, '2018-4-23', '2018-4-19,2018-4-20,2018-4-23', 30, 30),
(5, 9, 1, 1, '2018-4-19', '2018-4-19', 10, 10),
(6, 22, 1, 1, '2018-4-27', '2018-4-27', 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `lm_wx_account`
--

CREATE TABLE `lm_wx_account` (
  `id` int(11) NOT NULL COMMENT '表id',
  `store_id` int(11) NOT NULL DEFAULT '1' COMMENT 'uid',
  `wxname` varchar(60) NOT NULL DEFAULT '' COMMENT '公众号名称',
  `aeskey` varchar(256) NOT NULL DEFAULT '' COMMENT 'aeskey',
  `encode` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'encode',
  `app_id` varchar(50) NOT NULL DEFAULT '' COMMENT 'appid',
  `app_secret` varchar(50) NOT NULL DEFAULT '' COMMENT 'appsecret',
  `origin_id` varchar(64) NOT NULL DEFAULT '' COMMENT '公众号原始ID',
  `weixin` char(64) NOT NULL COMMENT '微信号',
  `logo` char(255) NOT NULL COMMENT '头像地址',
  `token` char(255) NOT NULL COMMENT 'token',
  `w_token` varchar(150) NOT NULL DEFAULT '' COMMENT '微信对接token',
  `related` varchar(200) NOT NULL DEFAULT 'https://demo.lemocms.com/wechat/wechatApi/related?store_id=1' COMMENT '微信对接地址',
  `create_time` int(11) NOT NULL COMMENT 'create_time',
  `update_time` int(11) NOT NULL COMMENT 'updatetime',
  `tplcontentid` varchar(2) NOT NULL DEFAULT '' COMMENT '内容模版ID',
  `share_ticket` varchar(150) NOT NULL DEFAULT '' COMMENT '分享ticket',
  `share_dated` char(15) NOT NULL COMMENT 'share_dated',
  `authorizer_access_token` varchar(200) NOT NULL DEFAULT '' COMMENT 'authorizer_access_token',
  `authorizer_refresh_token` varchar(200) NOT NULL DEFAULT '' COMMENT 'authorizer_refresh_token',
  `authorizer_expires` char(10) NOT NULL COMMENT 'authorizer_expires',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '类型 1 普通订阅号2认证订阅号 3普通服务号 4认证服务号/认证媒体/政府订阅号',
  `web_access_token` varchar(200) DEFAULT '' COMMENT '网页授权token',
  `web_refresh_token` varchar(200) DEFAULT '' COMMENT 'web_refresh_token',
  `web_expires` int(11) NOT NULL COMMENT '过期时间',
  `qr` varchar(200) NOT NULL DEFAULT '' COMMENT 'qr',
  `menu_config` mediumtext COMMENT '菜单',
  `status` tinyint(1) DEFAULT '1' COMMENT '微信接入状态,0待接入1已接入'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='微信公共帐号';

--
-- Dumping data for table `lm_wx_account`
--

INSERT INTO `lm_wx_account` (`id`, `store_id`, `wxname`, `aeskey`, `encode`, `app_id`, `app_secret`, `origin_id`, `weixin`, `logo`, `token`, `w_token`, `related`, `create_time`, `update_time`, `tplcontentid`, `share_ticket`, `share_dated`, `authorizer_access_token`, `authorizer_refresh_token`, `authorizer_expires`, `type`, `web_access_token`, `web_refresh_token`, `web_expires`, `qr`, `menu_config`, `status`) VALUES
(31, 1, 'lemocms', 'adsfda', 0, 'wxecd04cbbfc06a972', 'ec83a45f2a561a90cf5f63e7476bae36', 'gh_8b042cc4ccf9', 'lemomcms', '/storage/uploads/20190905/dfdcecfa905e2858ae45b87542c0c5ab.png', 'weixin', 'weixins', 'https://demo.lemocms.com/wechat/wechatApi/related?store_id=1', 1490691329, 1573788884, '', '', '', '', '', '', 4, '9_ztdL3qhqHHAgFTIANDMStPvneUubYL0sANeFHEYDXu_qzElDwaQeSNwwhi1EfpDXzFwOeP05e0wMRpsJvQVVjnmhiWtZIqOwj4RwIdhXQnB1WPP0yw4pv8x2c_NA2ykcPKD-V6aTa3mFDKO9YJSaAAALWF', '', 1524884051, '/storage/uploads/20190905/2790a6a9cbb9ca1bcdfaca9b25d0316a.jpg', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lm_wx_fans`
--

CREATE TABLE `lm_wx_fans` (
  `fans_id` int(11) NOT NULL COMMENT '粉丝ID',
  `wx_aid` int(11) DEFAULT NULL COMMENT '微信账户id',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '会员编号ID',
  `source_uid` int(11) NOT NULL DEFAULT '0' COMMENT '推广人uid',
  `store_id` int(11) NOT NULL DEFAULT '1' COMMENT '店铺ID',
  `nickname` varchar(255) NOT NULL COMMENT '昵称',
  `nickname_encode` varchar(255) DEFAULT '',
  `headimgurl` varchar(500) NOT NULL DEFAULT '' COMMENT '头像',
  `sex` smallint(6) NOT NULL DEFAULT '1' COMMENT '性别',
  `language` varchar(20) NOT NULL DEFAULT '' COMMENT '用户语言',
  `country` varchar(60) NOT NULL DEFAULT '' COMMENT '国家',
  `province` varchar(255) NOT NULL DEFAULT '' COMMENT '省',
  `city` varchar(255) NOT NULL DEFAULT '' COMMENT '城市',
  `district` varchar(255) NOT NULL DEFAULT '' COMMENT '行政区/县',
  `openid` varchar(255) NOT NULL DEFAULT '' COMMENT '用户的标识，对当前公众号唯一     用户的唯一身份ID',
  `unionid` varchar(255) NOT NULL DEFAULT '' COMMENT '粉丝unionid',
  `groupid` int(11) NOT NULL DEFAULT '0' COMMENT '粉丝所在组id',
  `subscribe` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否订阅',
  `subscribe_scene` varchar(50) DEFAULT NULL COMMENT '订阅场景',
  `remark` varchar(255) NOT NULL COMMENT '备注',
  `tag` varchar(200) DEFAULT NULL COMMENT '标签',
  `tagid_list` varchar(255) DEFAULT NULL COMMENT '标签列表',
  `subscribe_time` int(11) DEFAULT '0' COMMENT '订阅时间',
  `unsubscribe_time` int(11) DEFAULT '0' COMMENT '解订阅时间',
  `qr_scene` varchar(255) DEFAULT NULL COMMENT '二维码扫码场景（开发者自定义）',
  `qr_scene_str` varchar(255) DEFAULT NULL COMMENT '二维码扫码场景描述（开发者自定义）',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `update_time` int(11) DEFAULT '0' COMMENT '粉丝信息最后更新时间',
  `create_time` int(11) DEFAULT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=1638 DEFAULT CHARSET=utf8mb4 COMMENT='微信公众号获取粉丝列表';

--
-- Dumping data for table `lm_wx_fans`
--

INSERT INTO `lm_wx_fans` (`fans_id`, `wx_aid`, `uid`, `source_uid`, `store_id`, `nickname`, `nickname_encode`, `headimgurl`, `sex`, `language`, `country`, `province`, `city`, `district`, `openid`, `unionid`, `groupid`, `subscribe`, `subscribe_scene`, `remark`, `tag`, `tagid_list`, `subscribe_time`, `unsubscribe_time`, `qr_scene`, `qr_scene_str`, `status`, `update_time`, `create_time`) VALUES
(1, 32, 0, 0, 1, '🐘 心之所向🐘', '\"\\ud83d\\udc18 \\u5fc3\\u4e4b\\u6240\\u5411\\ud83d\\udc18\"', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM4VFiaYnBD77jqvXaG55kz8cYgynjUAic5oNcrjkicjIGvVVyRYfLsiceojIlI709OKWPAQr95E2y2Ick6jSHSrIJXgtcn1VnDM4qE/132', 1, 'zh_CN', '中国', '湖南', '衡阳', '', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '', 2, 1, 'ADD_SCENE_QR_CODE', '', '星标组', '[2]', 1568970767, 0, '0', '', 1, 1572230913, 1567909800),
(2, 32, 0, 0, 1, '少年智力开发报订阅', '\"\\u5c11\\u5e74\\u667a\\u529b\\u5f00\\u53d1\\u62a5\\u8ba2\\u9605\"', 'http://thirdwx.qlogo.cn/mmopen/7jOTIafB9k4w5h73kjDCf0o0IXjb7tNuJHk45lY9ZopsqS4rsQ5UxkAgvOqe49UESQyiaHp0jG7u3p1WhiaHpm7g/132', 1, 'zh_CN', '中国', '河北', '石家庄', '', 'oBSasxDCwYJ4QlFRgSbi-SZktfZs', '', 2, 1, 'ADD_SCENE_QR_CODE', '', '其他', '[2]', 1570784081, 0, '0', '', 1, 1572230913, 1571531137),
(3, 32, 0, 0, 1, 'Paopao', '\"Paopao\"', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLCEmdSXx8Koibl0D2p6OVM0aCTsefUrCziaRoRUAnOLDFxa96zBN1qjX8BCJ8FQxF7hoicWgQ2Btzfsw/132', 1, 'zh_CN', '中国', '广东', '江门', '', 'oBSasxBP6FhKCkSW9WYv4ckgBZDI', '', 2, 1, 'ADD_SCENE_QR_CODE', '', NULL, '[2]', 1570811312, 0, '0', '', 1, 1572230913, 1571531137),
(4, 32, 0, 0, 1, '牛一', '\"\\u725b\\u4e00\"', 'http://thirdwx.qlogo.cn/mmopen/iatZI1Yp2aPK6ibDCEesF2S0aWTzicDlyBsgMXhAIlh2droDM6ic8siccU4VeT0vlAf6Zia6n42kNMGE4CuvYpN5pyjQ/132', 1, 'zh_CN', '中国', '湖北', '襄阳', '', 'oBSasxMmOsGQd0M5E8DqYCvg_7rQ', '', 2, 1, 'ADD_SCENE_QR_CODE', '', NULL, '[2]', 1570973591, 0, '0', '', 1, 1572230913, 1571531137),
(5, 32, 0, 0, 1, '、ζ低调ゐ走这条 街る', '\"\\u3001\\u03b6\\u4f4e\\u8c03\\u3090\\u8d70\\u8fd9\\u6761 \\u8857\\u308b\"', 'http://thirdwx.qlogo.cn/mmopen/BA8GZZ2EGwWjjLn9bP76eEhmg9zfsYuVlbdJT9y3Z5KJFrINxlCHvFX2sTxiaskvJAcAORVibwQQVpJictIv7icH9Q/132', 1, 'zh_CN', '中国', '河南', '郑州', '', 'oBSasxK1y2TGZk_xKIf-ZxWYM5rM', '', 0, 1, 'ADD_SCENE_QR_CODE', '', NULL, '[]', 1568970306, 0, '0', '', 1, 1572230913, 1571531137),
(6, 32, 0, 0, 1, '周凯', '\"\\u5468\\u51ef\"', 'http://thirdwx.qlogo.cn/mmopen/iatZI1Yp2aPKU8tXPlI2HO2oCEPEq5rRBZDwQ9PgESvrBvI2tkIpJG2NGNhA0unHbsxP3ImJjnSRVzMu4MscIbAmR8W7beDjB/132', 1, 'zh_CN', '中国', '四川', '成都', '', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '', 2, 1, 'ADD_SCENE_QR_CODE', '', NULL, '[2]', 1569384811, 0, '0', '', 1, 1572230913, 1571531137),
(7, 32, 0, 0, 1, 'IT速学通', '\"\\u901f\\u5b66\\u901a\\u79d1\\u6280\"', 'http://thirdwx.qlogo.cn/mmopen/7jOTIafB9k6e5erQKVrgMJ6o5ibjmtRTbKlshrzyZ1XjYB970MxjaVlic4T0tXR8hqJ2hGPuVqjicS7lVMXoWgRf8akibu8mAKVK/132', 1, 'zh_CN', '中国', '湖北', '武汉', '', 'oBSasxDaZ8eadp7mTiD_f-esL_ss', '', 0, 1, 'ADD_SCENE_QR_CODE', '', NULL, '[]', 1571115872, 0, '0', '', 1, 1572230913, 1571531137),
(8, 32, 0, 0, 1, 'Bill', '\"Bill\"', 'http://thirdwx.qlogo.cn/mmopen/BA8GZZ2EGwXAkCnGwmSqWXvtKBx3taFq32ibUlKS1VNib7ITNtWhiaF52poRpDVW2rS5yUbKibmsOCl0nsSvorciamobS3ibtI9nZg/132', 1, 'zh_CN', '中国', '广东', '中山', '', 'oBSasxOBWqWjGWB22bdzjUMnGbAU', '', 0, 1, 'ADD_SCENE_QR_CODE', '', NULL, '[]', 1570544562, 0, '0', '', 1, 1572230913, 1571531137),
(9, 32, 0, 0, 1, '何若焱', '\"\\u4f55\\u82e5\\u7131\"', 'http://thirdwx.qlogo.cn/mmopen/iatZI1Yp2aPIhorsAYYgpicQYAnYDBNicEic5iayaxnIZq4RbybVNeiad7beZXKVpDDicK5Esq43tgPBWDoJuFC1lhVluBFk8AWJf2Z/132', 0, 'zh_CN', '', '', '', '', 'oBSasxBU2xk2JPnP1x_5mtbDlQ1M', '', 2, 1, 'ADD_SCENE_QR_CODE', '', NULL, '[2]', 1569163118, 0, '0', '', 1, 1572230913, 1571531137),
(10, 32, 0, 0, 1, 'flystone', '\"flystone\"', 'http://thirdwx.qlogo.cn/mmopen/7jOTIafB9k6e5erQKVrgMOEP1x3FKM94q0k7HAALibB0WwOLhLRPVRJJDRcLo5RXua1fytBsRwhM3cYcCbNsnOH7ibcSrvuo5ic/132', 1, 'zh_CN', '中国', '广东', '广州', '', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '', 2, 1, 'ADD_SCENE_QR_CODE', '', NULL, '[2]', 1569231878, 0, '0', '', 1, 1572230913, 1571531137),
(11, 32, 0, 0, 1, 'UI中国', '\"UI\\u4e2d\\u56fd\"', 'http://thirdwx.qlogo.cn/mmopen/7jOTIafB9k6RxhlicynFsqzHSC3CVaAdkzDJibg8MQQRcia4vwZt2ap2uXKCrE6pQEjR3hERXROHjPUBgdHyYRZ3aOnAWsIWR1s/132', 0, 'zh_CN', '', '', '', '', 'oBSasxGjfo7053Gelemw58C4oAwc', '', 2, 1, 'ADD_SCENE_QR_CODE', '', '粉丝', '[2]', 1569297240, 0, '0', '', 1, 1572230913, 1571531137),
(12, 32, 0, 0, 1, '学无止境', '\"\\u5b66\\u65e0\\u6b62\\u5883\"', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLAksKZWwDKrFzfTM4ZvLRYqZtUnib4FQ26TofEYNF8ibopZibiaVfuqkkgLrfnYvw4oiakiauVb6MsrR4Gw/132', 1, 'zh_CN', '中国', '山东', '济南', '', 'oBSasxH1zjO-jahSXEg2k8Ny1m_Y', '', 2, 1, 'ADD_SCENE_QR_CODE', '', '其他', '[2]', 1571794623, 0, '0', '', 1, 1572230913, 1571794794),
(13, 32, 0, 0, 1, 'lyq', '\"lyq\"', 'http://thirdwx.qlogo.cn/mmopen/BA8GZZ2EGwXYBCKkicUlNZ3N9yw90ficpUB7vYuRUVvjZMpZkaouRPQEJfZHsOtJRVnSyZaQQ5QHvBsPMqTZEWdA/132', 1, 'zh_CN', '阿鲁巴', '', '', '', 'oBSasxNSVb3ttEptnlfTqoWSiOpk', '', 0, 1, 'ADD_SCENE_QR_CODE', '', NULL, '[]', 1571896759, 0, '0', '', 1, 1572230913, 1571909844),
(14, 32, 0, 0, 1, '阳光', '\"\\u9633\\u5149\"', 'http://thirdwx.qlogo.cn/mmopen/iatZI1Yp2aPK85QMCfMKAxOV0ZYUz3TT2icZFXJz6ic4TmEK4swqlFO516NBqiaHXzM7geb2BF3ag1rNrXz1Q5dYnqkZu6ia66sQK/132', 1, 'zh_CN', '中国', '', '', '', 'oBSasxE74GTlVwALB0mYBhCYD604', '', 0, 1, 'ADD_SCENE_QR_CODE', '', NULL, '[]', 1571893220, 0, '0', '', 1, 1572230913, 1571909844),
(15, 31, 0, 0, 1, '少年智力开发报订阅', '\"\\u5c11\\u5e74\\u667a\\u529b\\u5f00\\u53d1\\u62a5\\u8ba2\\u9605\"', 'http://thirdwx.qlogo.cn/mmopen/7jOTIafB9k4w5h73kjDCf0o0IXjb7tNuJHk45lY9ZopsqS4rsQ5UxkAgvOqe49UESQyiaHp0jG7u3p1WhiaHpm7g/132', 1, 'zh_CN', '中国', '河北', '石家庄', '', 'oBSasxDCwYJ4QlFRgSbi-SZktfZs', '', 2, 1, 'ADD_SCENE_QR_CODE', '', NULL, '[2]', 1570784081, 0, '0', '', 1, 1573785402, 1572318076),
(16, 31, 0, 0, 1, '🐘 心之所向🐘', '\"\\ud83d\\udc18 \\u5fc3\\u4e4b\\u6240\\u5411\\ud83d\\udc18\"', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM4VFiaYnBD77jqvXaG55kz8cYgynjUAic5oNcrjkicjIGvVVyRYfLsiceojIlI709OKWPAQr95E2y2Ick6jSHSrIJXgtcn1VnDM4qE/132', 1, 'zh_CN', '中国', '湖南', '衡阳', '', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '', 0, 1, 'ADD_SCENE_QR_CODE', '', NULL, '[]', 1573787383, 0, '0', '', 1, 1573787386, 1572318076),
(17, 31, 0, 0, 1, 'Paopao', '\"Paopao\"', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLCEmdSXx8Koibl0D2p6OVM0aCTsefUrCziaRoRUAnOLDFxa96zBN1qjX8BCJ8FQxF7hoicWgQ2Btzfsw/132', 1, 'zh_CN', '中国', '广东', '江门', '', 'oBSasxBP6FhKCkSW9WYv4ckgBZDI', '', 2, 1, 'ADD_SCENE_QR_CODE', '', NULL, '[2]', 1570811312, 0, '0', '', 1, 1573785402, 1572318076),
(18, 31, 0, 0, 1, '学无止境', '\"\\u5b66\\u65e0\\u6b62\\u5883\"', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLAksKZWwDKrFzfTM4ZvLRYqZtUnib4FQ26TofEYNF8ibopZibiaVfuqkkgLrfnYvw4oiakiauVb6MsrR4Gw/132', 1, 'zh_CN', '中国', '山东', '济南', '', 'oBSasxH1zjO-jahSXEg2k8Ny1m_Y', '', 2, 1, 'ADD_SCENE_QR_CODE', '', NULL, '[2]', 1571794623, 0, '0', '', 1, 1573785402, 1572318076),
(19, 31, 0, 0, 1, '牛一', '\"\\u725b\\u4e00\"', 'http://thirdwx.qlogo.cn/mmopen/iatZI1Yp2aPK6ibDCEesF2S0aWTzicDlyBsgMXhAIlh2droDM6ic8siccU4VeT0vlAf6Zia6n42kNMGE4CuvYpN5pyjQ/132', 1, 'zh_CN', '中国', '湖北', '襄阳', '', 'oBSasxMmOsGQd0M5E8DqYCvg_7rQ', '', 2, 1, 'ADD_SCENE_QR_CODE', '', NULL, '[2]', 1570973591, 0, '0', '', 1, 1573785402, 1572318076),
(20, 31, 0, 0, 1, '、ζ低调ゐ走这条 街る', '\"\\u3001\\u03b6\\u4f4e\\u8c03\\u3090\\u8d70\\u8fd9\\u6761 \\u8857\\u308b\"', 'http://thirdwx.qlogo.cn/mmopen/BA8GZZ2EGwWjjLn9bP76eEhmg9zfsYuVlbdJT9y3Z5KJFrINxlCHvFX2sTxiaskvJAcAORVibwQQVpJictIv7icH9Q/132', 1, 'zh_CN', '中国', '河南', '郑州', '', 'oBSasxK1y2TGZk_xKIf-ZxWYM5rM', '', 0, 1, 'ADD_SCENE_QR_CODE', '', NULL, '[]', 1568970306, 0, '0', '', 1, 1573785402, 1572318076),
(21, 31, 0, 0, 1, 'lyq', '\"lyq\"', 'http://thirdwx.qlogo.cn/mmopen/PiajxSqBRaEIJ13iaF4FwznlxdFKibqDpw0hVD6dy7K86hKDrCbZzXyzicvagmt6F4eN2VGLXAF14tSrXobibWPcVQQ/132', 1, 'zh_CN', '阿鲁巴', '', '', '', 'oBSasxNSVb3ttEptnlfTqoWSiOpk', '', 2, 1, 'ADD_SCENE_QR_CODE', '', NULL, '[2]', 1571896759, 0, '0', '', 1, 1573785402, 1572318076),
(22, 31, 0, 0, 1, '周凯', '\"\\u5468\\u51ef\"', 'http://thirdwx.qlogo.cn/mmopen/iatZI1Yp2aPKU8tXPlI2HO2oCEPEq5rRBZDwQ9PgESvrBvI2tkIpJG2NGNhA0unHbsxP3ImJjnSRVzMu4MscIbAmR8W7beDjB/132', 1, 'zh_CN', '中国', '四川', '成都', '', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '', 2, 1, 'ADD_SCENE_QR_CODE', '', NULL, '[2]', 1569384811, 0, '0', '', 1, 1573785403, 1572318076),
(23, 31, 0, 0, 1, 'IT速学通', '\"IT\\u901f\\u5b66\\u901a\"', 'http://thirdwx.qlogo.cn/mmopen/7jOTIafB9k6e5erQKVrgMJ6o5ibjmtRTbKlshrzyZ1XjYB970MxjaVmVgU0u9OPoZicOiaWa0sgc8eibVnyxyV6HcHgoskE8EulC/132', 1, 'zh_CN', '中国', '湖北', '武汉', '', 'oBSasxDaZ8eadp7mTiD_f-esL_ss', '', 0, 1, 'ADD_SCENE_QR_CODE', '', NULL, '[]', 1571115872, 0, '0', '', 1, 1573785403, 1572318076),
(24, 31, 0, 0, 1, 'Bill', '\"Bill\"', 'http://thirdwx.qlogo.cn/mmopen/BA8GZZ2EGwXAkCnGwmSqWXvtKBx3taFq32ibUlKS1VNib7ITNtWhiaF52poRpDVW2rS5yUbKibmsOCl0nsSvorciamobS3ibtI9nZg/132', 1, 'zh_CN', '中国', '广东', '中山', '', 'oBSasxOBWqWjGWB22bdzjUMnGbAU', '', 2, 1, 'ADD_SCENE_QR_CODE', '', '星标组', '[2]', 1570544562, 0, '0', '', 1, 1573785403, 1572318076),
(25, 31, 0, 0, 1, '何若焱', '\"\\u4f55\\u82e5\\u7131\"', 'http://thirdwx.qlogo.cn/mmopen/iatZI1Yp2aPIhorsAYYgpicQYAnYDBNicEic5iayaxnIZq4RbybVNeiad7beZXKVpDDicK5Esq43tgPBWDoJuFC1lhVluBFk8AWJf2Z/132', 0, 'zh_CN', '', '', '', '', 'oBSasxBU2xk2JPnP1x_5mtbDlQ1M', '', 2, 1, 'ADD_SCENE_QR_CODE', '', NULL, '[2]', 1569163118, 0, '0', '', 1, 1573785403, 1572318076),
(26, 31, 0, 0, 1, 'flystone', '\"flystone\"', 'http://thirdwx.qlogo.cn/mmopen/7jOTIafB9k6e5erQKVrgMOEP1x3FKM94q0k7HAALibB0WwOLhLRPVRJJDRcLo5RXua1fytBsRwhM3cYcCbNsnOH7ibcSrvuo5ic/132', 1, 'zh_CN', '中国', '广东', '广州', '', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '', 2, 1, 'ADD_SCENE_QR_CODE', '', NULL, '[2]', 1569231878, 0, '0', '', 1, 1573785403, 1572318076),
(27, 31, 0, 0, 1, '阳光', '\"\\u9633\\u5149\"', 'http://thirdwx.qlogo.cn/mmopen/iatZI1Yp2aPK85QMCfMKAxOV0ZYUz3TT2icZFXJz6ic4TmEK4swqlFO516NBqiaHXzM7geb2BF3ag1rNrXz1Q5dYnqkZu6ia66sQK/132', 1, 'zh_CN', '中国', '', '', '', 'oBSasxE74GTlVwALB0mYBhCYD604', '', 2, 1, 'ADD_SCENE_QR_CODE', '', '粉丝', '[2]', 1571893220, 0, '0', '', 1, 1573785403, 1572318076),
(28, 31, 0, 0, 1, 'UI中国', '\"UI\\u4e2d\\u56fd\"', 'http://thirdwx.qlogo.cn/mmopen/7jOTIafB9k6RxhlicynFsqzHSC3CVaAdkzDJibg8MQQRcia4vwZt2ap2uXKCrE6pQEjR3hERXROHjPUBgdHyYRZ3aOnAWsIWR1s/132', 0, 'zh_CN', '', '', '', '', 'oBSasxGjfo7053Gelemw58C4oAwc', '', 2, 1, 'ADD_SCENE_QR_CODE', '', NULL, '[2]', 1569297240, 0, '0', '', 1, 1573785403, 1572318076),
(29, 31, 0, 0, 1, '多一点辣椒', '\"\\u591a\\u4e00\\u70b9\\u8fa3\\u6912\"', 'http://thirdwx.qlogo.cn/mmopen/iatZI1Yp2aPJFoj3ibYf0Xf1G6WwYiaW2AcUxXh7yeAeib47LgAFLIUWSqJyvZWib8NTRKNEprjuEd9oefg7db91WttDWvaWjTJkG/132', 1, 'zh_CN', '中国', '湖南', '岳阳', '', 'oBSasxLaECL0109tkNDXIeW8wfSs', '', 2, 1, 'ADD_SCENE_QR_CODE', '', '好友', '[2]', 1572456933, 0, '0', 'foo', 1, 1573785403, 1572530547),
(30, 31, 0, 0, 1, 'Mr.Yin🙈', '\"Mr.Yin\\ud83d\\ude48\"', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM7Nbsss8E9XNNIpLTDeFqickoLuTG1xhReibqV7rq35ia1STyEfhLQLvIrEZw8Bsk18xaxH0jP5KjLsw/132', 1, 'zh_CN', '中国', '北京', '朝阳', '', 'oBSasxM9SF1iyF5L0cT49atZ9I3M', '', 2, 1, 'ADD_SCENE_QR_CODE', '', '粉丝', '[2]', 1573205950, 0, '0', '', 1, 1573785402, 1573323289),
(31, 31, 0, 0, 1, 'demo1', '\"demo1\"', 'http://thirdwx.qlogo.cn/mmopen/7jOTIafB9k6yMGKHich2zlzu6UwEkic4ic0BgibXfSE6cRKKPlOJU0ZSicFF4z29A6mibuy386sbqW8iaDicOjn3PS90TG62ico5CTVbm/132', 1, 'zh_CN', '中国', '广东', '广州', '', 'oBSasxI7krlXCQtb4VKpi7woKra0', '', 0, 1, 'ADD_SCENE_QR_CODE', '', NULL, '[]', 1572786547, 0, '0', 'foo', 1, 1573785402, 1573323289),
(32, 31, 0, 0, 1, 'AAA新房团购-二手房交易-房联陈俊', '\"AAA\\u65b0\\u623f\\u56e2\\u8d2d-\\u4e8c\\u624b\\u623f\\u4ea4\\u6613-\\u623f\\u8054\\u9648\\u4fca\"', 'http://thirdwx.qlogo.cn/mmopen/7jOTIafB9k6e5erQKVrgMADjfugQu99Ty7SEzaVH4pDTsVbDHp25Lic9QywqNiaib5uTeYJu4d37RnLhjN8yXsqnOwpxKBPcAD4/132', 1, 'zh_CN', '中国', '江西', '九江', '', 'oBSasxEzh4b72SPdBuBcVY0-iw60', '', 0, 1, 'ADD_SCENE_QR_CODE', '', NULL, '[]', 1573528978, 0, '0', '', 1, 1573785403, 1573544898),
(33, 31, 0, 0, 1, '橙子吃橙子吃撑🍊', '\"\\u6a59\\u5b50\\u5403\\u6a59\\u5b50\\u5403\\u6491\\ud83c\\udf4a\"', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM6HGYLViaBH6KmguI0xibZDaem961EbhYH6Q19upNScu6apB0JeiaEAw0ia80v0pIraibVpToibZIdrEnVkbUadExYXIlcP3X0lH6Abs/132', 1, 'zh_CN', '安道尔', '', '', '', 'oBSasxCS4GoeDw11Bi-wjMP3KOyg', '', 2, 1, 'ADD_SCENE_QR_CODE', '', '好友', '[2]', 1573484677, 0, '0', '', 1, 1573785403, 1573544898),
(34, 31, 0, 0, 1, '灯泡🤗', '\"\\u706f\\u6ce1\\ud83e\\udd17\"', 'http://thirdwx.qlogo.cn/mmopen/FMuxcDB3FibIrFwjFCDcR2s5Pj0VMPJf07nw7un6GzGzKWVicTrg4jRt3MkYiagWluzz8c4V9EGC1lOhgJWspA2e3y856DqvMk5/132', 2, 'zh_CN', '澳大利亚', '西澳大利亚', '卡尔古利', '', 'oBSasxHYOKaNP-ZGVT_hvZ4grgtg', '', 2, 1, 'ADD_SCENE_QR_CODE', '', '粉丝', '[2]', 1573719750, 0, '0', '', 1, 1573785403, 1573720009);

-- --------------------------------------------------------

--
-- Table structure for table `lm_wx_material`
--

CREATE TABLE `lm_wx_material` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '微信公众号素材',
  `store_id` int(11) NOT NULL DEFAULT '1',
  `wx_aid` int(11) DEFAULT NULL,
  `media_id` varchar(64) DEFAULT '' COMMENT '微信媒体id',
  `file_name` varchar(255) DEFAULT NULL COMMENT '视频文件名',
  `media_url` varchar(255) DEFAULT NULL,
  `local_cover` varchar(255) NOT NULL DEFAULT ' ',
  `type` varchar(10) NOT NULL COMMENT '图片（image）、视频（video）、语音 （voice）、图文（news）音乐（music）',
  `des` varchar(150) DEFAULT ' ' COMMENT '视频描述',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(10) UNSIGNED DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lm_wx_material`
--

INSERT INTO `lm_wx_material` (`id`, `store_id`, `wx_aid`, `media_id`, `file_name`, `media_url`, `local_cover`, `type`, `des`, `create_time`, `update_time`) VALUES
(46, 1, 31, 'Mkk-XekVsp2Cvr5VktS-vTFi0SiiaAKNOMl-dUwGKWM', NULL, 'http://mmbiz.qpic.cn/mmbiz_png/nKp1y5rQibOa1WWBbKJLyGeQlFbCLBGeymE4MFmib9h6NlBA0Q9puRlQHoibVwZT2ujGdpPqib8JG5xjgia6a40nmCQ/0?wx_fmt=png', ' ', 'image', ' ', 1573719588, 1573719588),
(58, 1, 31, 'Mkk-XekVsp2Cvr5VktS-vT6z0Fbis24GVHUlhQDnfPM', NULL, 'http://mmbiz.qpic.cn/mmbiz_png/nKp1y5rQibOa1WWBbKJLyGeQlFbCLBGey80nbt8LsjQIDErt9iaXQkyGpFDU8ItdaxVhFCNNQYsrmEammliaj1ZOQ/0?wx_fmt=png', '/storage/uploads/20191114/c7db80925c5cc60f1355ffd5bea9b77e.png', 'image', ' ', 1573721314, 1573721314),
(59, 1, 31, 'Mkk-XekVsp2Cvr5VktS-vRcOhdqmkt7bWiTBZ8H9J78', NULL, 'http://mmbiz.qpic.cn/mmbiz_png/nKp1y5rQibOa1WWBbKJLyGeQlFbCLBGeyJbrtECP8Bru3diaVf7Lla1ODdbkKPTkhKia6HM6c9xo92MPRCJr5TMMQ/0?wx_fmt=png', '/storage/uploads/20191114/2c88a2d1da7169e4c3695bfc66c5a46a.png', 'image', ' ', 1573723415, 1573723415),
(61, 1, 31, 'Mkk-XekVsp2Cvr5VktS-vd3ujeY0Ji6pS77T5FmLmPM', NULL, 'http://mmbiz.qpic.cn/mmbiz_png/nKp1y5rQibOa1WWBbKJLyGeQlFbCLBGeyWP9jwjWqpiarU5F2WgdoMGwiccOFXfhJIiciaU8H3jjUmSYbHibP6wEuibXA/0?wx_fmt=png', ' ', 'news', ' ', 1573785315, 1573785315);

-- --------------------------------------------------------

--
-- Table structure for table `lm_wx_material_info`
--

CREATE TABLE `lm_wx_material_info` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'id',
  `store_id` int(11) NOT NULL DEFAULT '1',
  `wx_aid` int(11) DEFAULT NULL,
  `material_id` int(11) DEFAULT NULL,
  `thumb_media_id` varchar(100) DEFAULT NULL COMMENT '	图文消息的封面图片素材id（必须是永久mediaID）',
  `local_cover` varchar(255) DEFAULT NULL,
  `cover` varchar(200) NOT NULL COMMENT '图文消息封面',
  `title` varchar(100) DEFAULT NULL,
  `author` varchar(50) NOT NULL COMMENT '作者',
  `show_cover` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示封面',
  `digest` text COMMENT '图文消息的摘要，仅有单图文消息才有摘要，多图文此处为空',
  `content` text NOT NULL COMMENT '正文',
  `url` varchar(255) NOT NULL COMMENT '图文页的URL，或者，当获取的列表是图片素材列表时，该字段是图片的URL',
  `content_source_url` varchar(200) NOT NULL DEFAULT '' COMMENT '图文消息的原文地址，即点击“阅读原文”后的URL',
  `need_open_comment` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Uint32 是否打开评论，0不打开，1打开',
  `only_fans_can_comment` tinyint(1) DEFAULT '1' COMMENT 'Uint32 是否粉丝才可评论，0所有人可评论，1粉丝才可评论',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序号',
  `hits` int(11) NOT NULL DEFAULT '0' COMMENT '阅读次数'
) ENGINE=InnoDB AVG_ROW_LENGTH=712 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lm_wx_material_info`
--

INSERT INTO `lm_wx_material_info` (`id`, `store_id`, `wx_aid`, `material_id`, `thumb_media_id`, `local_cover`, `cover`, `title`, `author`, `show_cover`, `digest`, `content`, `url`, `content_source_url`, `need_open_comment`, `only_fans_can_comment`, `sort`, `hits`) VALUES
(53, 1, 31, 32, 'Mkk-XekVsp2Cvr5VktS-vf4uLVp3tFomLPazcjB6IOM', NULL, 'http://mmbiz.qpic.cn/mmbiz_png/nKp1y5rQibOafHyBKbh42d34tu7iagashY3TkAG8vQGvkn0jKYur0219iaibtkvyMP2UrXxPA6QcZOfkgBmd2kOZZA/0?wx_fmt=png', '1', '1', 1, '1', '<p>1</p>', 'http://mp.weixin.qq.com/s?__biz=MzI5OTYxNjI2MQ==&mid=100000046&idx=1&sn=1e6384955fbc4351557633554e7b6778&chksm=6c9290445be519522f735cf999721ba0a4c2d170f585639c1367c2f34e5e4aa59d16609253b6#rd', '1', 1, 0, 0, 0),
(54, 1, 31, 32, 'Mkk-XekVsp2Cvr5VktS-vZUxI_gpEP8F61ypD7kPKao', NULL, 'http://mmbiz.qpic.cn/mmbiz_png/nKp1y5rQibOafHyBKbh42d34tu7iagashYhus2hLcovAMWBqQllicMeQKyiaQABFn4wibLtUyBdK8BXeQ945BSoia4eg/0?wx_fmt=png', '2', '2', 0, '2', '<p>2</p>', 'http://mp.weixin.qq.com/s?__biz=MzI5OTYxNjI2MQ==&mid=100000046&idx=2&sn=cb91de1204dc89ee0fb01732545a70c8&chksm=6c9290445be51952d2580b1e9fee7edb2df8bc8d55be597489e6a30fdd3ab1784e4c9a916238#rd', '2', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lm_wx_menu`
--

CREATE TABLE `lm_wx_menu` (
  `id` int(11) NOT NULL COMMENT '主键',
  `store_id` int(11) NOT NULL DEFAULT '1' COMMENT '店铺id',
  `wx_aid` int(11) DEFAULT NULL,
  `menu_name` varchar(50) NOT NULL DEFAULT '' COMMENT '菜单名称',
  `ico` varchar(32) NOT NULL DEFAULT '' COMMENT '菜图标单',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父菜单',
  `menu_event_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1普通url 2 图文素材 3 功能',
  `media_id` int(11) NOT NULL DEFAULT '0' COMMENT '图文消息ID',
  `menu_event_url` varchar(255) NOT NULL DEFAULT '' COMMENT '菜单url',
  `hits` int(11) NOT NULL DEFAULT '0' COMMENT '触发数',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(11) DEFAULT '0' COMMENT '创建日期',
  `update_time` int(11) DEFAULT '0' COMMENT '修改日期'
) ENGINE=InnoDB AVG_ROW_LENGTH=1638 DEFAULT CHARSET=utf8mb4 COMMENT='微信设置->微信菜单';

--
-- Dumping data for table `lm_wx_menu`
--

INSERT INTO `lm_wx_menu` (`id`, `store_id`, `wx_aid`, `menu_name`, `ico`, `pid`, `menu_event_type`, `media_id`, `menu_event_url`, `hits`, `sort`, `create_time`, `update_time`) VALUES
(1, 0, NULL, '官网', '', 0, 2, 3, 'http://www.lemocms.com/', 0, 1, 1512442512, 0),
(2, 0, NULL, '手册', '', 0, 2, 5, 'http://wx.lemocms.com/', 0, 2, 1512442543, 0),
(3, 0, NULL, '论坛', '', 0, 1, 4, 'http://demo.lemocms.com/', 0, 3, 1512547727, 0),
(4, 0, NULL, '百度', '', 3, 1, 0, 'http://bbs.lemocms.com/', 0, 1, 1542783759, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lm_wx_msg_history`
--

CREATE TABLE `lm_wx_msg_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `store_id` int(10) UNSIGNED DEFAULT '1' COMMENT '商户id',
  `wx_aid` int(11) DEFAULT NULL COMMENT '微信账号id',
  `media_id` int(11) DEFAULT NULL,
  `keyword_id` int(10) DEFAULT '0' COMMENT '关键字id',
  `nickname` varchar(150) DEFAULT NULL COMMENT '昵称',
  `openid` varchar(50) DEFAULT '',
  `content_json` varchar(1000) DEFAULT NULL,
  `content` varchar(1000) DEFAULT '' COMMENT '微信消息',
  `type` varchar(20) DEFAULT '',
  `event` varchar(20) DEFAULT '' COMMENT '详细事件',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态0:禁用;1启用',
  `create_time` int(10) UNSIGNED DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='微信_历史记录表';

--
-- Dumping data for table `lm_wx_msg_history`
--

INSERT INTO `lm_wx_msg_history` (`id`, `store_id`, `wx_aid`, `media_id`, `keyword_id`, `nickname`, `openid`, `content_json`, `content`, `type`, `event`, `status`, `create_time`, `update_time`) VALUES
(2, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568194501\",\"MsgType\":\"text\",\"Content\":\"\\/:weak\",\"MsgId\":\"22451147127726715\"}', '/:weak', 'text', '', 1, 1568194501, 1568194501),
(3, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568194676\",\"MsgType\":\"text\",\"Content\":\"\\/:strong\",\"MsgId\":\"22451149054004352\"}', '/:strong', 'text', '', 1, 1568194676, 1568194677),
(4, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568194710\",\"MsgType\":\"text\",\"Content\":\"\\/:strong\",\"MsgId\":\"22451149113334936\"}', '/:strong', 'text', '', 1, 1568194710, 1568194711),
(5, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568194766\",\"MsgType\":\"text\",\"Content\":\"\\/:P-(\",\"MsgId\":\"22451150878409494\"}', '/:P-(', 'text', '', 1, 1568194766, 1568194767),
(6, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568194789\",\"MsgType\":\"text\",\"Content\":\"\\/:P-(\",\"MsgId\":\"22451148653307010\"}', '/:P-(', 'text', '', 1, 1568194789, 1568194789),
(7, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568194878\",\"MsgType\":\"text\",\"Content\":\"\\/:jj\",\"MsgId\":\"22451153513645534\"}', '/:jj', 'text', '', 1, 1568194878, 1568194878),
(10, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568271575\",\"MsgType\":\"text\",\"Content\":\"\\/:showlove12131\",\"MsgId\":\"22452247197396400\"}', '/:showlove12131', 'text', '', 1, 1568271575, 1568271576),
(11, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568271589\",\"MsgType\":\"text\",\"Content\":\"\\u3010\\u6536\\u5230\\u4e0d\\u652f\\u6301\\u7684\\u6d88\\u606f\\u7c7b\\u578b\\uff0c\\u6682\\u65e0\\u6cd5\\u663e\\u793a\\u3011\",\"MsgId\":\"22452247187462085\"}', '【收到不支持的消息类型，暂无法显示】', 'text', '', 1, 1568271589, 1568271589),
(12, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568272389\",\"MsgType\":\"text\",\"Content\":\"23 \",\"MsgId\":\"22452262710150875\"}', '23 ', 'text', '', 1, 1568272389, 1568272390),
(13, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568272391\",\"MsgType\":\"text\",\"Content\":\"234 234\",\"MsgId\":\"22452261628455202\"}', '234 234', 'text', '', 1, 1568272391, 1568272392),
(14, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568272392\",\"MsgType\":\"text\",\"Content\":\"23 23\",\"MsgId\":\"22452262745190025\"}', '23 23', 'text', '', 1, 1568272392, 1568272392),
(15, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568272392\",\"MsgType\":\"text\",\"Content\":\"4223 42\",\"MsgId\":\"22452262901629290\"}', '4223 42', 'text', '', 1, 1568272392, 1568272393),
(16, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568272393\",\"MsgType\":\"text\",\"Content\":\"3 23\",\"MsgId\":\"22452259545480895\"}', '3 23', 'text', '', 1, 1568272393, 1568272393),
(20, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568272395\",\"MsgType\":\"text\",\"Content\":\"234 23\",\"MsgId\":\"22452260710734561\"}', '234 23', 'text', '', 1, 1568272395, 1568272395),
(23, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568272396\",\"MsgType\":\"text\",\"Content\":\"23 42\",\"MsgId\":\"22452262190050475\"}', '23 42', 'text', '', 1, 1568272396, 1568272396),
(24, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568272396\",\"MsgType\":\"text\",\"Content\":\"3423 \",\"MsgId\":\"22452262483636928\"}', '3423 ', 'text', '', 1, 1568272396, 1568272397),
(25, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568272396\",\"MsgType\":\"text\",\"Content\":\"234 2\",\"MsgId\":\"22452262777618641\"}', '234 2', 'text', '', 1, 1568272396, 1568272397),
(26, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568272397\",\"MsgType\":\"text\",\"Content\":\"34 23\",\"MsgId\":\"22452259389059375\"}', '34 23', 'text', '', 1, 1568272397, 1568272397),
(27, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568272397\",\"MsgType\":\"text\",\"Content\":\"42 34\",\"MsgId\":\"22452260308434253\"}', '42 34', 'text', '', 1, 1568272397, 1568272398),
(34, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568272400\",\"MsgType\":\"text\",\"Content\":\" 234 23\",\"MsgId\":\"22452261884373590\"}', ' 234 23', 'text', '', 1, 1568272400, 1568272401),
(35, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568272401\",\"MsgType\":\"text\",\"Content\":\"4 23\",\"MsgId\":\"22452259482788116\"}', '4 23', 'text', '', 1, 1568272401, 1568272401),
(36, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568272410\",\"MsgType\":\"text\",\"Content\":\"\\/:?\",\"MsgId\":\"22452262005396681\"}', '/:?', 'text', '', 1, 1568272410, 1568272410),
(37, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568294902\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"https:\\/\\/www.lemocms.com\",\"MenuId\":\"426015734\"}', '', 'event', 'VIEW', 1, 1568294902, 1568294903),
(38, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568449371\",\"MsgType\":\"text\",\"Content\":\"1\",\"MsgId\":\"22454794545500502\"}', '1', 'text', '', 1, 1568449371, 1568449372),
(39, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568869050\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"https:\\/\\/www.lemocms.com\",\"MenuId\":\"426020245\"}', '', 'event', 'VIEW', 1, 1568869050, 1568869061),
(40, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568892685\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461143198849412\"}', '你好', 'text', '', 1, 1568892685, 1568892686),
(41, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568892717\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461144047564201\"}', '你好', 'text', '', 1, 1568892717, 1568892717),
(42, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568892924\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461148034546123\"}', '你好', 'text', '', 1, 1568892924, 1568892925),
(43, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568892927\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461149836175226\"}', '你好', 'text', '', 1, 1568892927, 1568892928),
(44, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568892930\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461146088552802\"}', '你好', 'text', '', 1, 1568892930, 1568892930),
(45, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568892931\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461147852289918\"}', '你好', 'text', '', 1, 1568892931, 1568892931),
(46, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568892931\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461148837677542\"}', '你好', 'text', '', 1, 1568892931, 1568892932),
(47, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568892934\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461147075208577\"}', '你好', 'text', '', 1, 1568892934, 1568892934),
(48, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568892935\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461149006257342\"}', '你好', 'text', '', 1, 1568892935, 1568892935),
(49, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568892936\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461146239413239\"}', '你好', 'text', '', 1, 1568892936, 1568892937),
(50, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893012\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461149285107519\"}', '你好', 'text', '', 1, 1568893012, 1568893013),
(51, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893139\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461149753467728\"}', '你好', 'text', '', 1, 1568893139, 1568893140),
(52, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893166\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461148981945230\"}', '你好', 'text', '', 1, 1568893166, 1568893167),
(53, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893170\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461148654267342\"}', '你好', 'text', '', 1, 1568893170, 1568893171),
(54, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893173\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461146380749167\"}', '你好', 'text', '', 1, 1568893173, 1568893174),
(55, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893178\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461147033867881\"}', '你好', 'text', '', 1, 1568893178, 1568893178),
(56, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893181\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461148917310787\"}', '你好', 'text', '', 1, 1568893181, 1568893181),
(57, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893184\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461149129814447\"}', '你好', 'text', '', 1, 1568893184, 1568893184),
(58, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893193\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461149664448749\"}', '你好', 'text', '', 1, 1568893193, 1568893194),
(59, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893211\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461153753576411\"}', '你好', 'text', '', 1, 1568893211, 1568893212),
(60, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893230\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461150862788679\"}', '你好', 'text', '', 1, 1568893230, 1568893230),
(61, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893256\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461152325901460\"}', '你好', 'text', '', 1, 1568893256, 1568893256),
(62, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893262\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461151789717957\"}', '你好', 'text', '', 1, 1568893262, 1568893262),
(63, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893265\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461150573226759\"}', '你好哦', 'text', '', 1, 1568893265, 1568893266),
(64, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893280\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461153676656898\"}', '你好哦', 'text', '', 1, 1568893280, 1568893280),
(65, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893310\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461151218817786\"}', '你好', 'text', '', 1, 1568893310, 1568893311),
(66, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893340\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461152778337371\"}', '你好哦', 'text', '', 1, 1568893340, 1568893340),
(67, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893346\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461151091275046\"}', '你好哦', 'text', '', 1, 1568893346, 1568893347),
(68, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893347\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461150244991439\"}', '你好哦', 'text', '', 1, 1568893347, 1568893347),
(69, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893347\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461152107350957\"}', '你好哦', 'text', '', 1, 1568893347, 1568893347),
(70, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893347\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461152415994817\"}', '你好哦', 'text', '', 1, 1568893347, 1568893348),
(71, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893348\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461152524771884\"}', '你好哦', 'text', '', 1, 1568893348, 1568893348),
(72, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893348\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461153202577833\"}', '你好哦', 'text', '', 1, 1568893348, 1568893348),
(73, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893349\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461153296479664\"}', '你好哦', 'text', '', 1, 1568893349, 1568893349),
(74, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893349\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461151777574771\"}', '你好哦', 'text', '', 1, 1568893349, 1568893349),
(75, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893349\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461150076959092\"}', '你好哦', 'text', '', 1, 1568893349, 1568893350),
(76, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893350\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461152848710580\"}', '你好哦', 'text', '', 1, 1568893350, 1568893350),
(77, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893350\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461150567239019\"}', '你好哦', 'text', '', 1, 1568893350, 1568893351),
(78, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893351\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461152011553948\"}', '你好哦', 'text', '', 1, 1568893351, 1568893351),
(79, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893351\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461153285617758\"}', '你好哦', 'text', '', 1, 1568893351, 1568893352),
(80, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893352\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461151683422085\"}', '你好哦', 'text', '', 1, 1568893352, 1568893352),
(81, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893352\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461151696450891\"}', '你好哦', 'text', '', 1, 1568893352, 1568893353),
(82, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893353\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461151496752689\"}', '你好哦', 'text', '', 1, 1568893353, 1568893353),
(83, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893353\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461151665950445\"}', '你好哦', 'text', '', 1, 1568893353, 1568893353),
(84, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893353\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461152945538922\"}', '你好哦', 'text', '', 1, 1568893353, 1568893354),
(85, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893355\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461152300638346\"}', '你好哦', 'text', '', 1, 1568893355, 1568893355),
(86, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893362\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461154169431248\"}', '你好哦', 'text', '', 1, 1568893362, 1568893362),
(87, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893364\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461153918916528\"}', '你好哦', 'text', '', 1, 1568893364, 1568893364),
(88, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893365\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461151790175705\"}', '你好哦', 'text', '', 1, 1568893365, 1568893365),
(89, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893365\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461152739037723\"}', '你好哦', 'text', '', 1, 1568893365, 1568893366),
(90, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893365\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461151459549030\"}', '你好哦', 'text', '', 1, 1568893365, 1568893366),
(91, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893366\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461152108475080\"}', '你好哦', 'text', '', 1, 1568893366, 1568893367),
(92, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893367\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461150199494269\"}', '你好哦', 'text', '', 1, 1568893367, 1568893367),
(93, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893367\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461150146517896\"}', '你好哦', 'text', '', 1, 1568893367, 1568893368),
(94, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893368\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461153820329736\"}', '你好哦', 'text', '', 1, 1568893368, 1568893368),
(95, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893368\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461153684110137\"}', '你好哦', 'text', '', 1, 1568893368, 1568893369),
(96, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893369\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461150775369741\"}', '你好哦', 'text', '', 1, 1568893369, 1568893369),
(97, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893369\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461154107722635\"}', '你好哦', 'text', '', 1, 1568893369, 1568893369),
(98, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893369\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461153413788663\"}', '你好哦', 'text', '', 1, 1568893369, 1568893370),
(99, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893370\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461152150361596\"}', '你好哦', 'text', '', 1, 1568893370, 1568893370),
(100, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893370\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461153422291984\"}', '你好哦', 'text', '', 1, 1568893370, 1568893371),
(101, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893391\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461153987694342\"}', '你好哦', 'text', '', 1, 1568893391, 1568893391),
(102, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893639\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461157266400619\"}', '你好哦', 'text', '', 1, 1568893639, 1568893639),
(103, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893657\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461156071922065\"}', '你好哦', 'text', '', 1, 1568893657, 1568893657),
(104, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893678\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461155532027489\"}', '你好哦', 'text', '', 1, 1568893678, 1568893679),
(105, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893683\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461158240982060\"}', '你好哦', 'text', '', 1, 1568893683, 1568893684),
(106, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893685\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461154791012855\"}', '你好哦', 'text', '', 1, 1568893685, 1568893686),
(107, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893690\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461156594332346\"}', '你好哦', 'text', '', 1, 1568893690, 1568893690),
(108, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893693\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461156081363950\"}', '你好哦', 'text', '', 1, 1568893693, 1568893693),
(109, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893699\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461156748459273\"}', '你好哦', 'text', '', 1, 1568893699, 1568893700),
(110, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893710\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461154703249566\"}', '你好哦', 'text', '', 1, 1568893710, 1568893710),
(111, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893734\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461154354424707\"}', '你好哦', 'text', '', 1, 1568893734, 1568893735),
(112, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568893882\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461161891377312\"}', '你好', 'text', '', 1, 1568893882, 1568893882),
(113, 1, 31, 0, 1, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894058\",\"MsgType\":\"text\",\"Content\":\"1\",\"MsgId\":\"22461161437673142\"}', '1', 'text', '', 1, 1568894058, 1568894059),
(114, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894112\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461166189244951\"}', '你好', 'text', '', 1, 1568894112, 1568894113),
(115, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894181\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461166528235015\"}', '你好', 'text', '', 1, 1568894181, 1568894182),
(116, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894199\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461163259389154\"}', '你好', 'text', '', 1, 1568894199, 1568894200),
(117, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894204\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461163625765220\"}', '你好', 'text', '', 1, 1568894204, 1568894204),
(118, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894204\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461164710819964\"}', '你好', 'text', '', 1, 1568894204, 1568894205),
(119, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894205\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461165860229163\"}', '你好', 'text', '', 1, 1568894205, 1568894205),
(120, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894205\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461164944362722\"}', '你好', 'text', '', 1, 1568894205, 1568894205),
(121, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894205\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461163092359081\"}', '你好', 'text', '', 1, 1568894205, 1568894206),
(122, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894206\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\n\\u4f60\\u597d\",\"MsgId\":\"22461164431052786\"}', '你好\n你好', 'text', '', 1, 1568894206, 1568894207),
(123, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894207\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461166752214814\"}', '你好', 'text', '', 1, 1568894207, 1568894207),
(124, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894207\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461164001202306\"}', '你好', 'text', '', 1, 1568894207, 1568894207),
(125, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894207\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461164940379225\"}', '你好', 'text', '', 1, 1568894207, 1568894208),
(126, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894208\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461165691930736\"}', '你好', 'text', '', 1, 1568894208, 1568894208),
(127, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894208\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461163156855632\"}', '你好', 'text', '', 1, 1568894208, 1568894209),
(128, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894209\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461163901761527\"}', '你好', 'text', '', 1, 1568894209, 1568894209),
(129, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894241\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461163987499557\"}', '你好', 'text', '', 1, 1568894241, 1568894241),
(130, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894242\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461165841715310\"}', '你好', 'text', '', 1, 1568894242, 1568894243),
(131, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894243\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461166909947702\"}', '你好', 'text', '', 1, 1568894243, 1568894243),
(132, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894243\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461165399753847\"}', '你好', 'text', '', 1, 1568894243, 1568894244),
(133, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894244\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\n\\u4f60\\u597d\",\"MsgId\":\"22461164811476445\"}', '你好\n你好', 'text', '', 1, 1568894244, 1568894245),
(134, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894243\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461164937438772\"}', '你好', 'text', '', 1, 1568894243, 1568894245),
(135, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894252\",\"MsgType\":\"text\",\"Content\":\"return 1;\",\"MsgId\":\"22461165918583730\"}', 'return 1;', 'text', '', 1, 1568894252, 1568894253),
(136, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894253\",\"MsgType\":\"text\",\"Content\":\"return 1;\",\"MsgId\":\"22461166722727804\"}', 'return 1;', 'text', '', 1, 1568894253, 1568894253),
(137, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894253\",\"MsgType\":\"text\",\"Content\":\"return 1;\",\"MsgId\":\"22461163220174659\"}', 'return 1;', 'text', '', 1, 1568894253, 1568894254),
(138, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894254\",\"MsgType\":\"text\",\"Content\":\"return 1;\",\"MsgId\":\"22461162836619916\"}', 'return 1;', 'text', '', 1, 1568894254, 1568894254),
(139, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894254\",\"MsgType\":\"text\",\"Content\":\"return 1;\",\"MsgId\":\"22461166777582536\"}', 'return 1;', 'text', '', 1, 1568894254, 1568894255),
(140, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894255\",\"MsgType\":\"text\",\"Content\":\"return 1;\",\"MsgId\":\"22461166151164270\"}', 'return 1;', 'text', '', 1, 1568894255, 1568894255),
(141, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894255\",\"MsgType\":\"text\",\"Content\":\"return 1;\",\"MsgId\":\"22461163500333304\"}', 'return 1;', 'text', '', 1, 1568894255, 1568894255),
(142, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894255\",\"MsgType\":\"text\",\"Content\":\"return 1;\",\"MsgId\":\"22461165287323131\"}', 'return 1;', 'text', '', 1, 1568894255, 1568894256),
(143, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894256\",\"MsgType\":\"text\",\"Content\":\"return 1;\",\"MsgId\":\"22461165235026315\"}', 'return 1;', 'text', '', 1, 1568894256, 1568894256),
(144, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894256\",\"MsgType\":\"text\",\"Content\":\"return 1;\",\"MsgId\":\"22461163845318916\"}', 'return 1;', 'text', '', 1, 1568894256, 1568894257),
(145, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894257\",\"MsgType\":\"text\",\"Content\":\"return 1;\",\"MsgId\":\"22461166755028354\"}', 'return 1;', 'text', '', 1, 1568894257, 1568894257),
(146, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894257\",\"MsgType\":\"text\",\"Content\":\"return 1;\",\"MsgId\":\"22461166911360766\"}', 'return 1;', 'text', '', 1, 1568894257, 1568894257),
(147, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894260\",\"MsgType\":\"text\",\"Content\":\"return 1;\\n\\nreturn 1;\\n\\nreturn 1;\\n\\nreturn 1;\\n\\nreturn 1;\\n\",\"MsgId\":\"22461163334380067\"}', 'return 1;\n\nreturn 1;\n\nreturn 1;\n\nreturn 1;\n\nreturn 1;\n', 'text', '', 1, 1568894260, 1568894260),
(148, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894261\",\"MsgType\":\"text\",\"Content\":\"return 1;\\n\\nreturn 1;\",\"MsgId\":\"22461165067873258\"}', 'return 1;\n\nreturn 1;', 'text', '', 1, 1568894261, 1568894261),
(149, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894261\",\"MsgType\":\"text\",\"Content\":\"return 1;\",\"MsgId\":\"22461164933439433\"}', 'return 1;', 'text', '', 1, 1568894261, 1568894262),
(150, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894262\",\"MsgType\":\"text\",\"Content\":\"return 1;\",\"MsgId\":\"22461164936809647\"}', 'return 1;', 'text', '', 1, 1568894262, 1568894262),
(151, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894264\",\"MsgType\":\"text\",\"Content\":\"return 1;\\n\\nreturn 1;\\n\\nreturn 1;\",\"MsgId\":\"22461165184027457\"}', 'return 1;\n\nreturn 1;\n\nreturn 1;', 'text', '', 1, 1568894264, 1568894264),
(152, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894266\",\"MsgType\":\"text\",\"Content\":\"return 1;\",\"MsgId\":\"22461166953574342\"}', 'return 1;', 'text', '', 1, 1568894266, 1568894267),
(153, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894271\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461163657380195\"}', '你好', 'text', '', 1, 1568894271, 1568894271),
(154, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894272\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461163279213287\"}', '你好', 'text', '', 1, 1568894272, 1568894272),
(155, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894273\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461164689555169\"}', '你好', 'text', '', 1, 1568894273, 1568894274),
(156, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894274\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461166217066832\"}', '你好', 'text', '', 1, 1568894274, 1568894275),
(157, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894276\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u5bb3\\u6015\",\"MsgId\":\"22461165570059163\"}', '你害怕', 'text', '', 1, 1568894276, 1568894277),
(158, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894281\",\"MsgType\":\"text\",\"Content\":\"\\/::\'|\",\"MsgId\":\"22461166611353242\"}', '/::\'|', 'text', '', 1, 1568894281, 1568894281),
(159, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894291\",\"MsgType\":\"text\",\"Content\":\"return 1;\",\"MsgId\":\"22461165706505589\"}', 'return 1;', 'text', '', 1, 1568894291, 1568894291),
(160, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894294\",\"MsgType\":\"text\",\"Content\":\"return 1;\",\"MsgId\":\"22461166745544027\"}', 'return 1;', 'text', '', 1, 1568894294, 1568894294),
(161, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894297\",\"MsgType\":\"text\",\"Content\":\"return 1;\",\"MsgId\":\"22461163211982703\"}', 'return 1;', 'text', '', 1, 1568894297, 1568894297),
(162, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894305\",\"MsgType\":\"text\",\"Content\":\"return 1;\\n\",\"MsgId\":\"22461165487466963\"}', 'return 1;\n', 'text', '', 1, 1568894305, 1568894305),
(163, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894350\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461167060164544\"}', '你好', 'text', '', 1, 1568894350, 1568894351),
(164, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894360\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461164612686118\"}', '你好', 'text', '', 1, 1568894360, 1568894360),
(165, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894361\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461163148025833\"}', '你好', 'text', '', 1, 1568894361, 1568894362),
(166, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894369\",\"MsgType\":\"text\",\"Content\":\"wf \",\"MsgId\":\"22461167010944400\"}', 'wf ', 'text', '', 1, 1568894369, 1568894369),
(167, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894369\",\"MsgType\":\"text\",\"Content\":\"\\u963f\\u65af\\u8482\\u82ac\",\"MsgId\":\"22461162957825279\"}', '阿斯蒂芬', 'text', '', 1, 1568894369, 1568894370),
(168, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894370\",\"MsgType\":\"text\",\"Content\":\"as \\u963f\\u65af\\u8482\\u82ac\",\"MsgId\":\"22461164856217965\"}', 'as 阿斯蒂芬', 'text', '', 1, 1568894370, 1568894371),
(169, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894371\",\"MsgType\":\"text\",\"Content\":\"\\u963f\\u65af\\u8482\\u82ac\",\"MsgId\":\"22461165542742331\"}', '阿斯蒂芬', 'text', '', 1, 1568894371, 1568894372),
(170, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894372\",\"MsgType\":\"text\",\"Content\":\"\\u6536\\u5230\\u8d27\",\"MsgId\":\"22461165568638577\"}', '收到货', 'text', '', 1, 1568894372, 1568894372),
(171, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894372\",\"MsgType\":\"text\",\"Content\":\"\\u963f\\u65af\\u8482\\u82ac\",\"MsgId\":\"22461166836063124\"}', '阿斯蒂芬', 'text', '', 1, 1568894372, 1568894373),
(172, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894373\",\"MsgType\":\"text\",\"Content\":\"\\u6536\\u5230\\u8d27\",\"MsgId\":\"22461166662519714\"}', '收到货', 'text', '', 1, 1568894373, 1568894374);
INSERT INTO `lm_wx_msg_history` (`id`, `store_id`, `wx_aid`, `media_id`, `keyword_id`, `nickname`, `openid`, `content_json`, `content`, `type`, `event`, `status`, `create_time`, `update_time`) VALUES
(173, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894373\",\"MsgType\":\"text\",\"Content\":\"\\u6c34\\u5cb8\\u4e1c\\u65b9\",\"MsgId\":\"22461164470895730\"}', '水岸东方', 'text', '', 1, 1568894373, 1568894374),
(174, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894420\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461167310927605\"}', '你好哦', 'text', '', 1, 1568894420, 1568894421),
(175, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894434\",\"MsgType\":\"text\",\"Content\":\"$info\",\"MsgId\":\"22461167536870113\"}', '$info', 'text', '', 1, 1568894434, 1568894434),
(176, 1, 31, 0, 3, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894445\",\"MsgType\":\"text\",\"Content\":\"\\u67e5\\u8be2\",\"MsgId\":\"22461167360342800\"}', '查询', 'text', '', 1, 1568894445, 1568894445),
(177, 1, 31, 0, 3, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894451\",\"MsgType\":\"text\",\"Content\":\"\\u67e5\\u8be2\",\"MsgId\":\"22461167630751291\"}', '查询', 'text', '', 1, 1568894451, 1568894451),
(178, 1, 31, 0, 3, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894452\",\"MsgType\":\"text\",\"Content\":\"\\u67e5\\u8be2\",\"MsgId\":\"22461170705580887\"}', '查询', 'text', '', 1, 1568894452, 1568894452),
(179, 1, 31, 0, 3, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894452\",\"MsgType\":\"text\",\"Content\":\"\\u67e5\\u8be2\",\"MsgId\":\"22461170341163442\"}', '查询', 'text', '', 1, 1568894452, 1568894452),
(180, 1, 31, 0, 3, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894452\",\"MsgType\":\"text\",\"Content\":\"\\u67e5\\u8be2\",\"MsgId\":\"22461168486138256\"}', '查询', 'text', '', 1, 1568894452, 1568894453),
(181, 1, 31, 0, 3, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894520\",\"MsgType\":\"text\",\"Content\":\"\\u67e5\\u8be2\",\"MsgId\":\"22461169726483801\"}', '查询', 'text', '', 1, 1568894520, 1568894520),
(182, 1, 31, 0, 3, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894521\",\"MsgType\":\"text\",\"Content\":\"\\u67e5\\u8be2\",\"MsgId\":\"22461170985145793\"}', '查询', 'text', '', 1, 1568894521, 1568894521),
(183, 1, 31, 0, 3, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894522\",\"MsgType\":\"text\",\"Content\":\"\\u67e5\\u8be2\",\"MsgId\":\"22461168897609934\"}', '查询', 'text', '', 1, 1568894522, 1568894522),
(184, 1, 31, 0, 3, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894522\",\"MsgType\":\"text\",\"Content\":\"\\u67e5\\u8be2\",\"MsgId\":\"22461168612786247\"}', '查询', 'text', '', 1, 1568894522, 1568894522),
(185, 1, 31, 0, 3, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894522\",\"MsgType\":\"text\",\"Content\":\"\\u67e5\\u8be2\",\"MsgId\":\"22461168402746551\"}', '查询', 'text', '', 1, 1568894522, 1568894523),
(186, 1, 31, 0, 3, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894523\",\"MsgType\":\"text\",\"Content\":\"\\u67e5\\u8be2\",\"MsgId\":\"22461169282165701\"}', '查询', 'text', '', 1, 1568894523, 1568894523),
(187, 1, 31, 0, 3, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894523\",\"MsgType\":\"text\",\"Content\":\"\\u67e5\\u8be2\",\"MsgId\":\"22461171205799877\"}', '查询', 'text', '', 1, 1568894523, 1568894524),
(188, 1, 31, 0, 3, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894523\",\"MsgType\":\"text\",\"Content\":\"\\u67e5\\u8be2\",\"MsgId\":\"22461170629206367\"}', '查询', 'text', '', 1, 1568894523, 1568894524),
(189, 1, 31, 0, 3, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894524\",\"MsgType\":\"text\",\"Content\":\"\\u67e5\\u8be2\",\"MsgId\":\"22461170469624089\"}', '查询', 'text', '', 1, 1568894524, 1568894524),
(190, 1, 31, 0, 3, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894524\",\"MsgType\":\"text\",\"Content\":\"\\u67e5\\u8be2\",\"MsgId\":\"22461169236582402\"}', '查询', 'text', '', 1, 1568894524, 1568894525),
(191, 1, 31, 0, 3, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894524\",\"MsgType\":\"text\",\"Content\":\"\\u67e5\\u8be2\",\"MsgId\":\"22461170331887965\"}', '查询', 'text', '', 1, 1568894524, 1568894525),
(192, 1, 31, 0, 3, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894526\",\"MsgType\":\"text\",\"Content\":\"\\u67e5\\u8be2\",\"MsgId\":\"22461168392735982\"}', '查询', 'text', '', 1, 1568894526, 1568894527),
(193, 1, 31, 0, 3, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894528\",\"MsgType\":\"text\",\"Content\":\"\\u67e5\\u8be2\",\"MsgId\":\"22461167936970417\"}', '查询', 'text', '', 1, 1568894528, 1568894528),
(194, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894530\",\"MsgType\":\"text\",\"Content\":\"\\u3010\\u6536\\u5230\\u4e0d\\u652f\\u6301\\u7684\\u6d88\\u606f\\u7c7b\\u578b\\uff0c\\u6682\\u65e0\\u6cd5\\u663e\\u793a\\u3011\",\"MsgId\":\"22461168154353110\"}', '【收到不支持的消息类型，暂无法显示】', 'text', '', 1, 1568894530, 1568894531),
(195, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894534\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461169295734089\"}', '你好', 'text', '', 1, 1568894534, 1568894534),
(196, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894535\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461169469935108\"}', '你好', 'text', '', 1, 1568894535, 1568894535),
(197, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894543\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461171018596924\"}', '你好', 'text', '', 1, 1568894543, 1568894544),
(198, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894607\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461167169102860\"}', '你好', 'text', '', 1, 1568894607, 1568894607),
(199, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894647\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461168848826647\"}', '你好', 'text', '', 1, 1568894647, 1568894648),
(200, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894658\",\"MsgType\":\"text\",\"Content\":\"\\ud83d\\udc18 \\u5fc3\\u4e4b\\u6240\\u5411\\ud83d\\udc18:\\n\\u4f60\\u597d\",\"MsgId\":\"22461167939537148\"}', '🐘 心之所向🐘:\n你好', 'text', '', 1, 1568894658, 1568894659),
(201, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894660\",\"MsgType\":\"text\",\"Content\":\"\\ud83d\\udc18 \\u5fc3\\u4e4b\\u6240\\u5411\\ud83d\\udc18:\\n\\u4f60\\u597d\",\"MsgId\":\"22461167584889742\"}', '🐘 心之所向🐘:\n你好', 'text', '', 1, 1568894660, 1568894661),
(202, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894666\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461169894953662\"}', '你好', 'text', '', 1, 1568894666, 1568894667),
(203, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894673\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461167136422592\"}', '你好', 'text', '', 1, 1568894673, 1568894673),
(204, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894799\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461173742873677\"}', '你好', 'text', '', 1, 1568894799, 1568894800),
(205, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894943\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461172097902058\"}', '你好', 'text', '', 1, 1568894943, 1568894943),
(206, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894964\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461173685428313\"}', '你好', 'text', '', 1, 1568894964, 1568894965),
(207, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895009\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461178361475431\"}', '你好', 'text', '', 1, 1568895009, 1568895009),
(208, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895041\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461176268478537\"}', '你好', 'text', '', 1, 1568895041, 1568895042),
(209, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895055\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461177034900289\"}', '你好', 'text', '', 1, 1568895055, 1568895055),
(210, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895057\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461176464678252\"}', '你好', 'text', '', 1, 1568895057, 1568895058),
(211, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895059\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461179974672936\"}', '你好', 'text', '', 1, 1568895059, 1568895059),
(212, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895060\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461178609284600\"}', '你好', 'text', '', 1, 1568895060, 1568895060),
(213, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895069\",\"MsgType\":\"text\",\"Content\":\"msg_type\",\"MsgId\":\"22461176101405840\"}', 'msg_type', 'text', '', 1, 1568895069, 1568895069),
(214, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895077\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461177674125341\"}', '你好', 'text', '', 1, 1568895077, 1568895077),
(215, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895084\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461179896110792\"}', '你好', 'text', '', 1, 1568895084, 1568895085),
(216, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895107\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461178332578683\"}', '你好', 'text', '', 1, 1568895107, 1568895108),
(217, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895121\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461176353303681\"}', '你好', 'text', '', 1, 1568895121, 1568895122),
(218, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895123\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461179844125322\"}', '你好', 'text', '', 1, 1568895123, 1568895124),
(219, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895124\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461177884841854\"}', '你好', 'text', '', 1, 1568895124, 1568895125),
(220, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895126\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461176601526261\"}', '你好', 'text', '', 1, 1568895126, 1568895126),
(221, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895127\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461177210271708\"}', '你好', 'text', '', 1, 1568895127, 1568895128),
(222, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895128\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461177765344605\"}', '你好', 'text', '', 1, 1568895128, 1568895128),
(223, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895129\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461177508862679\"}', '你好', 'text', '', 1, 1568895129, 1568895129),
(224, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895130\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461176517008450\"}', '你好', 'text', '', 1, 1568895130, 1568895130),
(225, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895131\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461177079563887\"}', '你好', 'text', '', 1, 1568895131, 1568895132),
(226, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895134\",\"MsgType\":\"text\",\"Content\":\"\\u6536\\u5230\\u8d27\",\"MsgId\":\"22461178327706950\"}', '收到货', 'text', '', 1, 1568895134, 1568895134),
(227, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895137\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461178796770528\"}', '你好', 'text', '', 1, 1568895137, 1568895138),
(228, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895160\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461176114396102\"}', '你好', 'text', '', 1, 1568895160, 1568895160),
(229, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895162\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461177635253228\"}', '你好', 'text', '', 1, 1568895162, 1568895163),
(230, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895179\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461178129379733\"}', '你好', 'text', '', 1, 1568895179, 1568895179),
(231, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895190\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461178322656175\"}', '你好', 'text', '', 1, 1568895190, 1568895190),
(232, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895226\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461177145425750\"}', '你好', 'text', '', 1, 1568895226, 1568895227),
(233, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895258\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461177693010420\"}', '你好', 'text', '', 1, 1568895258, 1568895259),
(234, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895259\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461178661971731\"}', '你好', 'text', '', 1, 1568895259, 1568895260),
(235, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895260\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461179497428347\"}', '你好', 'text', '', 1, 1568895260, 1568895261),
(236, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895261\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461179701874951\"}', '你好', 'text', '', 1, 1568895261, 1568895262),
(237, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895262\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461176887709185\"}', '你好', 'text', '', 1, 1568895262, 1568895263),
(238, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895263\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461179889138321\"}', '你好', 'text', '', 1, 1568895263, 1568895264),
(239, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895295\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461177743055265\"}', '你好', 'text', '', 1, 1568895295, 1568895295),
(240, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895318\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461181662492282\"}', '你好', 'text', '', 1, 1568895318, 1568895319),
(241, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895319\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461182570337486\"}', '你好', 'text', '', 1, 1568895319, 1568895319),
(242, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895349\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461180659571188\"}', '你好', 'text', '', 1, 1568895349, 1568895350),
(243, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895353\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461181935962628\"}', '你好', 'text', '', 1, 1568895353, 1568895353),
(244, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895354\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461183664272615\"}', '你好', 'text', '', 1, 1568895354, 1568895354),
(245, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895355\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461184085174930\"}', '你好', 'text', '', 1, 1568895355, 1568895356),
(246, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895356\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461180834377549\"}', '你好', 'text', '', 1, 1568895356, 1568895357),
(247, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895400\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461184282171757\"}', '你好', 'text', '', 1, 1568895400, 1568895400),
(248, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895403\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461182051797875\"}', '你好', 'text', '', 1, 1568895403, 1568895403),
(249, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895404\",\"MsgType\":\"text\",\"Content\":\"\\u4e86\",\"MsgId\":\"22461183564939534\"}', '了', 'text', '', 1, 1568895404, 1568895405),
(250, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895406\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461180603546456\"}', '你好', 'text', '', 1, 1568895406, 1568895406),
(251, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895407\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461181372524737\"}', '你好', 'text', '', 1, 1568895407, 1568895407),
(252, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895408\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461180405096823\"}', '你好', 'text', '', 1, 1568895408, 1568895409),
(253, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895411\",\"MsgType\":\"text\",\"Content\":\"\\u5427\",\"MsgId\":\"22461182792019390\"}', '吧', 'text', '', 1, 1568895411, 1568895412),
(254, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895415\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461180536359184\"}', '你好', 'text', '', 1, 1568895415, 1568895415),
(255, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895417\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461180834501247\"}', '你好', 'text', '', 1, 1568895417, 1568895418),
(256, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895430\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461181273167776\"}', '你好', 'text', '', 1, 1568895430, 1568895430),
(257, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895528\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461180537023241\"}', '你好', 'text', '', 1, 1568895528, 1568895529),
(258, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895540\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461183337852236\"}', '你好', 'text', '', 1, 1568895540, 1568895540),
(259, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895562\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461181711282765\"}', '你好', 'text', '', 1, 1568895562, 1568895562),
(260, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895603\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461184456990771\"}', '你好', 'text', '', 1, 1568895603, 1568895603),
(261, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895676\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461185546153838\"}', '你好', 'text', '', 1, 1568895676, 1568895676),
(262, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895679\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461184372767885\"}', '你好', 'text', '', 1, 1568895679, 1568895679),
(263, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895680\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461187135972644\"}', '你好', 'text', '', 1, 1568895680, 1568895680),
(264, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895682\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461187222507582\"}', '你好', 'text', '', 1, 1568895682, 1568895682),
(265, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895683\",\"MsgType\":\"text\",\"Content\":\"\\u963f\\u65af\\u8482\\u82ac\",\"MsgId\":\"22461187537278559\"}', '阿斯蒂芬', 'text', '', 1, 1568895683, 1568895684),
(266, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895687\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461187708747112\"}', '你好', 'text', '', 1, 1568895687, 1568895688),
(267, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895704\",\"MsgType\":\"text\",\"Content\":\"\\u5b89\\u5e08\\u5927\",\"MsgId\":\"22461186380900822\"}', '安师大', 'text', '', 1, 1568895704, 1568895705),
(268, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895725\",\"MsgType\":\"text\",\"Content\":\"\\u963f\\u65af\\u8482\\u82ac\",\"MsgId\":\"22461184374381757\"}', '阿斯蒂芬', 'text', '', 1, 1568895725, 1568895726),
(269, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895728\",\"MsgType\":\"text\",\"Content\":\"\\u6309\\u65f6\\u56de\\u5bb6\\u4e86\",\"MsgId\":\"22461188026982678\"}', '按时回家了', 'text', '', 1, 1568895728, 1568895728),
(270, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895730\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461186015587804\"}', '你好', 'text', '', 1, 1568895730, 1568895731),
(271, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895767\",\"MsgType\":\"text\",\"Content\":\"3 \",\"MsgId\":\"22461185186675902\"}', '3 ', 'text', '', 1, 1568895767, 1568895767),
(272, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568895768\",\"MsgType\":\"text\",\"Content\":\"\\u963f\\u65af\\u8482\\u82ac\",\"MsgId\":\"22461186425111652\"}', '阿斯蒂芬', 'text', '', 1, 1568895768, 1568895768),
(273, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568896023\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461190123442674\"}', '你好', 'text', '', 1, 1568896023, 1568896024),
(274, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568896065\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461192101269540\"}', '你好', 'text', '', 1, 1568896065, 1568896065),
(275, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568896079\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461190537680960\"}', '你好', 'text', '', 1, 1568896079, 1568896080),
(276, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568896080\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461192496709361\"}', '你好', 'text', '', 1, 1568896080, 1568896081),
(277, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568896081\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461191559355398\"}', '你好', 'text', '', 1, 1568896081, 1568896082),
(278, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568896125\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461192386837730\"}', '你好', 'text', '', 1, 1568896125, 1568896125),
(279, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568896133\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461189456930388\"}', '你好', 'text', '', 1, 1568896133, 1568896133),
(280, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568896138\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461189088374211\"}', '你好哦', 'text', '', 1, 1568896138, 1568896138),
(281, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568896808\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22461202933011060\"}', '你好', 'text', '', 1, 1568896808, 1568896809),
(282, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568896816\",\"MsgType\":\"text\",\"Content\":\"\\u6211\\u662f\\u8c01\",\"MsgId\":\"22461201755358278\"}', '我是谁', 'text', '', 1, 1568896816, 1568896817),
(283, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568935990\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461761801546235\"}', '你好哦', 'text', '', 1, 1568935990, 1568935990),
(284, 1, 31, 0, 3, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568936137\",\"MsgType\":\"text\",\"Content\":\"\\u67e5\\u8be2\",\"MsgId\":\"22461767449154511\"}', '查询', 'text', '', 1, 1568936137, 1568936137),
(285, 1, 31, 0, 8, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568940277\",\"MsgType\":\"text\",\"Content\":\"\\u56fe\\u7247\",\"MsgId\":\"22461822126754808\"}', '图片', 'text', '', 1, 1568940277, 1568940278),
(286, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568941946\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461846994480254\"}', '你好哦', 'text', '', 1, 1568941946, 1568941947),
(287, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568941952\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461846360010748\"}', '你好哦', 'text', '', 1, 1568941952, 1568941952),
(288, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568948131\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461937297698151\"}', '你好哦', 'text', '', 1, 1568948131, 1568948131),
(289, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568949604\",\"MsgType\":\"text\",\"Content\":\"112\",\"MsgId\":\"22461959369936702\"}', '112', 'text', '', 1, 1568949604, 1568949605),
(290, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568956416\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22462055954038880\"}', '你好哦', 'text', '', 1, 1568956416, 1568956417),
(291, 1, 31, 0, 2, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568956425\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22462052661949887\"}', '你好', 'text', '', 1, 1568956425, 1568956425),
(292, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568956433\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22462054036257136\"}', '你好哦', 'text', '', 1, 1568956433, 1568956434),
(293, 1, 31, 0, 3, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568956440\",\"MsgType\":\"text\",\"Content\":\"\\u67e5\\u8be2\",\"MsgId\":\"22462054696210295\"}', '查询', 'text', '', 1, 1568956440, 1568956441),
(294, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568956576\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22462056909854253\"}', '你好哦', 'text', '', 1, 1568956576, 1568956577),
(295, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568956580\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22462058946933687\"}', '你好哦', 'text', '', 1, 1568956580, 1568956581),
(296, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568956584\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22462058419740425\"}', '你好哦', 'text', '', 1, 1568956584, 1568956585),
(299, 1, 31, 0, 0, '、ζ低调ゐ走这条 街る', 'oBSasxK1y2TGZk_xKIf-ZxWYM5rM', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxK1y2TGZk_xKIf-ZxWYM5rM\",\"CreateTime\":\"1568970306\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '', 'event', 'subscribe', 1, 1568970306, 1568970306),
(300, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568970579\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '', 'event', 'subscribe', 1, 1568970579, 1568970580),
(301, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568970590\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"22.547701\",\"Longitude\":\"113.934799\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1568970590, 1568970591),
(302, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568970597\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"22.547710\",\"Longitude\":\"113.934776\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1568970597, 1568970597),
(303, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568970603\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"22.547686\",\"Longitude\":\"113.934845\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1568970603, 1568970603),
(304, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568970609\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"22.547686\",\"Longitude\":\"113.934845\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1568970609, 1568970609),
(305, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568970615\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"22.547686\",\"Longitude\":\"113.934845\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1568970615, 1568970615),
(306, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568970645\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"22.547686\",\"Longitude\":\"113.934845\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1568970645, 1568970645),
(307, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568970649\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"22.547670\",\"Longitude\":\"113.934769\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1568970649, 1568970649),
(308, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568970655\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"22.547670\",\"Longitude\":\"113.934769\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1568970655, 1568970655),
(309, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568970661\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"22.547670\",\"Longitude\":\"113.934769\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1568970661, 1568970662),
(310, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568970667\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"22.547680\",\"Longitude\":\"113.934784\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1568970667, 1568970667),
(311, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568970673\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"22.547680\",\"Longitude\":\"113.934784\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1568970673, 1568970674),
(312, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568970687\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"22.547680\",\"Longitude\":\"113.934784\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1568970687, 1568970687),
(313, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568970692\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"22.547680\",\"Longitude\":\"113.934784\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1568970692, 1568970693),
(314, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568970698\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"22.547697\",\"Longitude\":\"113.934784\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1568970698, 1568970699),
(315, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568970704\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"22.547697\",\"Longitude\":\"113.934784\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1568970704, 1568970705),
(316, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568970711\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"22.547697\",\"Longitude\":\"113.934784\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1568970711, 1568970711),
(317, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568970716\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"22.547697\",\"Longitude\":\"113.934784\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1568970716, 1568970717),
(318, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568970722\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"22.547697\",\"Longitude\":\"113.934784\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1568970722, 1568970723),
(319, 1, 31, 0, 3, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568970723\",\"MsgType\":\"text\",\"Content\":\"\\u67e5\\u8be2\",\"MsgId\":\"22462261971127568\"}', '查询', 'text', '', 1, 1568970723, 1568970724),
(321, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568971170\",\"MsgType\":\"image\",\"PicUrl\":\"http:\\/\\/mmbiz.qpic.cn\\/mmbiz_jpg\\/hrm4Dn6o0vSr3ib6MtFKQnf3SR9odvGLyzeicEEBxID9oybGbbLibmevNAVgVbKflvUTFFIaCjKlfo1mB8icdHA8tQ\\/0\",\"MsgId\":\"22462265413584093\",\"MediaId\":\"3qWYi2UckJWNDAxjrJ_S1GSbu2cJn6Ar7zU9aEAp6GqSFzZs9OXHwymrjrVvr9Ow\"}', 'http://mmbiz.qpic.cn/mmbiz_jpg/hrm4Dn6o0vSr3ib6MtFKQnf3SR9odvGLyzeicEEBxID9oybGbbLibmevNAVgVbKflvUTFFIaCjKlfo1mB8icdHA8tQ/0', 'image', '', 1, 1568971170, 1568971172),
(322, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568971194\",\"MsgType\":\"video\",\"MediaId\":\"uv7RanbSRba84YWFBVBRBUXIcn66PUqilzIYt8HKCtc7wD5YtHQxzatrPzS2Wai-\",\"ThumbMediaId\":\"d7QfTY1_GQb3SC0qSqwvYy2dzTaJa4MR2o_P0yBg7RbXZEAUmAw8kBe2dmt8-5Dj\",\"MsgId\":\"22462265765538182\"}', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568971194\",\"MsgType\":\"video\",\"MediaId\":\"uv7RanbSRba84YWFBVBRBUXIcn66PUqilzIYt8HKCtc7wD5YtHQxzatrPzS2Wai-\",\"ThumbMediaId\":\"d7QfTY1_GQb3SC0qSqwvYy2dzTaJa4MR2o_P0yBg7RbXZEAUmAw8kBe2dmt8-5Dj\",\"MsgId\":\"22462265765538182\"}', 'video', '', 1, 1568971194, 1568971195),
(323, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568971247\",\"MsgType\":\"image\",\"PicUrl\":\"http:\\/\\/mmbiz.qpic.cn\\/mmbiz_jpg\\/hrm4Dn6o0vSr3ib6MtFKQnf3SR9odvGLyzeicEEBxID9oybGbbLibmevNAVgVbKflvUTFFIaCjKlfo1mB8icdHA8tQ\\/0\",\"MsgId\":\"22462269944573997\",\"MediaId\":\"lR1a0Sb9Mfqc28PDWsEip5l66WRm5GH_a6OAgfsrdmvXCSkXtYp-cv7smsxd9KHx\"}', 'http://mmbiz.qpic.cn/mmbiz_jpg/hrm4Dn6o0vSr3ib6MtFKQnf3SR9odvGLyzeicEEBxID9oybGbbLibmevNAVgVbKflvUTFFIaCjKlfo1mB8icdHA8tQ/0', 'image', '', 1, 1568971247, 1568971250),
(324, 1, 31, 0, 0, '学无止境', 'oBSasxH1zjO-jahSXEg2k8Ny1m_Y', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxH1zjO-jahSXEg2k8Ny1m_Y\",\"CreateTime\":\"1571794623\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '', 'event', 'subscribe', 1, 1571794623, 1571794624),
(325, 1, 31, 0, 0, '学无止境', 'oBSasxH1zjO-jahSXEg2k8Ny1m_Y', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxH1zjO-jahSXEg2k8Ny1m_Y\",\"CreateTime\":\"1571794626\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"https:\\/\\/developers.weixin.qq.com\\/miniprogram\\/dev\\/api\\/media\\/image\\/wx.previewImage.html\",\"MenuId\":\"426046372\"}', '', 'event', 'VIEW', 1, 1571794626, 1571794626),
(326, 1, 31, 0, 0, '海阔天空', 'oBSasxFrnkl5SXxaY2Qv7J1Prn08', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxFrnkl5SXxaY2Qv7J1Prn08\",\"CreateTime\":\"1571843469\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '', 'event', 'subscribe', 1, 1571843469, 1571843470),
(327, 1, 31, 0, 0, '海阔天空', 'oBSasxFrnkl5SXxaY2Qv7J1Prn08', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxFrnkl5SXxaY2Qv7J1Prn08\",\"CreateTime\":\"1571843472\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"https:\\/\\/developers.weixin.qq.com\\/miniprogram\\/dev\\/api\\/media\\/image\\/wx.previewImage.html\",\"MenuId\":\"426046372\"}', '', 'event', 'VIEW', 1, 1571843472, 1571843472);
INSERT INTO `lm_wx_msg_history` (`id`, `store_id`, `wx_aid`, `media_id`, `keyword_id`, `nickname`, `openid`, `content_json`, `content`, `type`, `event`, `status`, `create_time`, `update_time`) VALUES
(328, 1, 31, 0, 0, '阳光', 'oBSasxE74GTlVwALB0mYBhCYD604', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxE74GTlVwALB0mYBhCYD604\",\"CreateTime\":\"1571893221\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '', 'event', 'subscribe', 1, 1571893221, 1571893221),
(329, 1, 31, 0, 0, '阳光', 'oBSasxE74GTlVwALB0mYBhCYD604', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxE74GTlVwALB0mYBhCYD604\",\"CreateTime\":\"1571893223\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"https:\\/\\/developers.weixin.qq.com\\/miniprogram\\/dev\\/api\\/media\\/image\\/wx.previewImage.html\",\"MenuId\":\"426046372\"}', '', 'event', 'VIEW', 1, 1571893223, 1571893223),
(330, 1, 31, 0, 0, 'lyq', 'oBSasxNSVb3ttEptnlfTqoWSiOpk', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxNSVb3ttEptnlfTqoWSiOpk\",\"CreateTime\":\"1571896759\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '', 'event', 'subscribe', 1, 1571896759, 1571896760),
(331, 1, 31, 0, 0, 'lyq', 'oBSasxNSVb3ttEptnlfTqoWSiOpk', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxNSVb3ttEptnlfTqoWSiOpk\",\"CreateTime\":\"1571896767\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"24.484041\",\"Longitude\":\"118.038612\",\"Precision\":\"15.000000\"}', '', 'event', 'LOCATION', 1, 1571896767, 1571896767),
(333, 1, 31, 0, 0, 'lyq', 'oBSasxNSVb3ttEptnlfTqoWSiOpk', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxNSVb3ttEptnlfTqoWSiOpk\",\"CreateTime\":\"1571896775\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"24.484102\",\"Longitude\":\"118.038612\",\"Precision\":\"35.000000\"}', '', 'event', 'LOCATION', 1, 1571896775, 1571896775),
(334, 1, 31, 0, 0, 'lyq', 'oBSasxNSVb3ttEptnlfTqoWSiOpk', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxNSVb3ttEptnlfTqoWSiOpk\",\"CreateTime\":\"1571896779\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"24.484102\",\"Longitude\":\"118.038612\",\"Precision\":\"35.000000\"}', '', 'event', 'LOCATION', 1, 1571896779, 1571896779),
(335, 1, 31, 0, 0, 'lyq', 'oBSasxNSVb3ttEptnlfTqoWSiOpk', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxNSVb3ttEptnlfTqoWSiOpk\",\"CreateTime\":\"1571896785\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"24.484102\",\"Longitude\":\"118.038612\",\"Precision\":\"35.000000\"}', '', 'event', 'LOCATION', 1, 1571896785, 1571896785),
(336, 1, 31, 0, 0, 'lyq', 'oBSasxNSVb3ttEptnlfTqoWSiOpk', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxNSVb3ttEptnlfTqoWSiOpk\",\"CreateTime\":\"1571896791\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"24.484102\",\"Longitude\":\"118.038612\",\"Precision\":\"35.000000\"}', '', 'event', 'LOCATION', 1, 1571896791, 1571896791),
(337, 1, 31, 0, 0, 'lyq', 'oBSasxNSVb3ttEptnlfTqoWSiOpk', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxNSVb3ttEptnlfTqoWSiOpk\",\"CreateTime\":\"1571896797\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"24.484102\",\"Longitude\":\"118.038612\",\"Precision\":\"35.000000\"}', '', 'event', 'LOCATION', 1, 1571896797, 1571896797),
(338, 1, 31, 0, 0, 'lyq', 'oBSasxNSVb3ttEptnlfTqoWSiOpk', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxNSVb3ttEptnlfTqoWSiOpk\",\"CreateTime\":\"1571897401\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"24.484108\",\"Longitude\":\"118.038559\",\"Precision\":\"35.000000\"}', '', 'event', 'LOCATION', 1, 1571897401, 1571897401),
(339, 1, 31, 0, 0, 'lyq', 'oBSasxNSVb3ttEptnlfTqoWSiOpk', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxNSVb3ttEptnlfTqoWSiOpk\",\"CreateTime\":\"1571897407\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"24.484041\",\"Longitude\":\"118.038612\",\"Precision\":\"15.000000\"}', '', 'event', 'LOCATION', 1, 1571897407, 1571897407),
(340, 1, 31, 0, 0, 'lyq', 'oBSasxNSVb3ttEptnlfTqoWSiOpk', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxNSVb3ttEptnlfTqoWSiOpk\",\"CreateTime\":\"1571897413\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"24.484041\",\"Longitude\":\"118.038612\",\"Precision\":\"15.000000\"}', '', 'event', 'LOCATION', 1, 1571897413, 1571897413),
(341, 1, 31, 0, 0, 'lyq', 'oBSasxNSVb3ttEptnlfTqoWSiOpk', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxNSVb3ttEptnlfTqoWSiOpk\",\"CreateTime\":\"1571897419\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"24.484041\",\"Longitude\":\"118.038612\",\"Precision\":\"15.000000\"}', '', 'event', 'LOCATION', 1, 1571897419, 1571897419),
(342, 1, 31, 0, 0, 'lyq', 'oBSasxNSVb3ttEptnlfTqoWSiOpk', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxNSVb3ttEptnlfTqoWSiOpk\",\"CreateTime\":\"1571897426\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"24.484041\",\"Longitude\":\"118.038612\",\"Precision\":\"15.000000\"}', '', 'event', 'LOCATION', 1, 1571897426, 1571897427),
(343, 1, 31, 0, 0, 'lyq', 'oBSasxNSVb3ttEptnlfTqoWSiOpk', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxNSVb3ttEptnlfTqoWSiOpk\",\"CreateTime\":\"1571897433\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"24.484041\",\"Longitude\":\"118.038612\",\"Precision\":\"15.000000\"}', '', 'event', 'LOCATION', 1, 1571897433, 1571897433),
(344, 1, 31, 0, 0, 'lyq', 'oBSasxNSVb3ttEptnlfTqoWSiOpk', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxNSVb3ttEptnlfTqoWSiOpk\",\"CreateTime\":\"1571897439\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"24.484041\",\"Longitude\":\"118.038612\",\"Precision\":\"15.000000\"}', '', 'event', 'LOCATION', 1, 1571897439, 1571897439),
(349, 1, 31, NULL, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1573806196\",\"MsgType\":\"text\",\"Content\":\"\\uff0c\\u6a21\\u5757\",\"MsgId\":\"22531486508577884\"}', '，模块', 'text', '', 1, 1573806196, 1573806196),
(350, 1, 31, NULL, 13, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1573806226\",\"MsgType\":\"text\",\"Content\":\"123\",\"MsgId\":\"22531487122132930\"}', '123', 'text', '', 1, 1573806226, 1573806226),
(351, 1, 31, NULL, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1573806245\",\"MsgType\":\"text\",\"Content\":\"87\",\"MsgId\":\"22531487182233688\"}', '87', 'text', '', 1, 1573806245, 1573806245),
(352, 1, 31, NULL, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1573806271\",\"MsgType\":\"text\",\"Content\":\"545\",\"MsgId\":\"22531485655531862\"}', '545', 'text', '', 1, 1573806271, 1573806272),
(353, 1, 31, NULL, 13, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1573806280\",\"MsgType\":\"text\",\"Content\":\"123\",\"MsgId\":\"22531485772183586\"}', '123', 'text', '', 1, 1573806280, 1573806280),
(354, 1, 31, NULL, 13, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1573806283\",\"MsgType\":\"text\",\"Content\":\"123\",\"MsgId\":\"22531484831535512\"}', '123', 'text', '', 1, 1573806283, 1573806284),
(355, 1, 31, NULL, 13, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1573806474\",\"MsgType\":\"text\",\"Content\":\"123\",\"MsgId\":\"22531490748582037\"}', '123', 'text', '', 1, 1573806474, 1573806475),
(356, 1, 31, NULL, 13, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1573806478\",\"MsgType\":\"text\",\"Content\":\"123\",\"MsgId\":\"22531489521152053\"}', '123', 'text', '', 1, 1573806478, 1573806479),
(357, 1, 31, NULL, 13, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1573806482\",\"MsgType\":\"text\",\"Content\":\"123\",\"MsgId\":\"22531491552868796\"}', '123', 'text', '', 1, 1573806482, 1573806482),
(358, 1, 31, NULL, 13, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1573806510\",\"MsgType\":\"text\",\"Content\":\"123\",\"MsgId\":\"22531489068997732\"}', '123', 'text', '', 1, 1573806510, 1573806510),
(359, 1, 31, NULL, 13, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1573806513\",\"MsgType\":\"text\",\"Content\":\"123\",\"MsgId\":\"22531492445302601\"}', '123', 'text', '', 1, 1573806513, 1573806514),
(360, 1, 31, NULL, 13, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1573806516\",\"MsgType\":\"text\",\"Content\":\"123\",\"MsgId\":\"22531491023435971\"}', '123', 'text', '', 1, 1573806516, 1573806517),
(361, 1, 31, NULL, 13, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1573806519\",\"MsgType\":\"text\",\"Content\":\"123\",\"MsgId\":\"22531489347910212\"}', '123', 'text', '', 1, 1573806519, 1573806519),
(362, 1, 31, NULL, 13, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1573806557\",\"MsgType\":\"text\",\"Content\":\"123\",\"MsgId\":\"22531489887428972\"}', '123', 'text', '', 1, 1573806557, 1573806558),
(363, 1, 31, NULL, 13, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1573806562\",\"MsgType\":\"text\",\"Content\":\"123\",\"MsgId\":\"22531489298085000\"}', '123', 'text', '', 1, 1573806562, 1573806562),
(364, 1, 31, NULL, 13, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1573806624\",\"MsgType\":\"text\",\"Content\":\"123\",\"MsgId\":\"22531492987522128\"}', '123', 'text', '', 1, 1573806624, 1573806624),
(365, 1, 31, NULL, 13, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1573806668\",\"MsgType\":\"text\",\"Content\":\"123\",\"MsgId\":\"22531494588986585\"}', '123', 'text', '', 1, 1573806668, 1573806669),
(366, 1, 31, NULL, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1573806694\",\"MsgType\":\"text\",\"Content\":\"1\",\"MsgId\":\"22531496748712275\"}', '1', 'text', '', 1, 1573806694, 1573806695),
(367, 1, 31, NULL, 13, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1573806699\",\"MsgType\":\"text\",\"Content\":\"123\",\"MsgId\":\"22531496737979271\"}', '123', 'text', '', 1, 1573806699, 1573806700),
(368, 1, 31, NULL, 13, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1573806710\",\"MsgType\":\"text\",\"Content\":\"123\",\"MsgId\":\"22531493055585089\"}', '123', 'text', '', 1, 1573806710, 1573806711),
(369, 1, 31, NULL, 13, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1573806760\",\"MsgType\":\"text\",\"Content\":\"123\",\"MsgId\":\"22531494969318756\"}', '123', 'text', '', 1, 1573806760, 1573806761),
(370, 1, 31, NULL, 16, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1573807075\",\"MsgType\":\"text\",\"Content\":\"cece\",\"MsgId\":\"22531498521448447\"}', 'cece', 'text', '', 1, 1573807075, 1573807076),
(371, 1, 31, NULL, 17, '灯泡🤗', 'oBSasxHYOKaNP-ZGVT_hvZ4grgtg', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxHYOKaNP-ZGVT_hvZ4grgtg\",\"CreateTime\":\"1573807311\",\"MsgType\":\"text\",\"Content\":\"\\u54c8\\u54c8\",\"MsgId\":\"22531505292143358\"}', '哈哈', 'text', '', 1, 1573807311, 1573807312),
(372, 1, 31, NULL, 0, '灯泡🤗', 'oBSasxHYOKaNP-ZGVT_hvZ4grgtg', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxHYOKaNP-ZGVT_hvZ4grgtg\",\"CreateTime\":\"1573807792\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '', 'event', 'subscribe', 1, 1573807792, 1573807793),
(373, 1, 31, NULL, 1, '灯泡🤗', 'oBSasxHYOKaNP-ZGVT_hvZ4grgtg', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxHYOKaNP-ZGVT_hvZ4grgtg\",\"CreateTime\":\"1573807799\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u5417\",\"MsgId\":\"22531509604228602\"}', '你好吗', 'text', '', 1, 1573807799, 1573807799),
(374, 1, 31, NULL, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1573807926\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '', 'event', 'subscribe', 1, 1573807926, 1573807926),
(375, 1, 31, NULL, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1573807932\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"22.548687\",\"Longitude\":\"113.932716\",\"Precision\":\"290.000000\"}', '', 'event', 'LOCATION', 1, 1573807932, 1573807932),
(376, 1, 31, NULL, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1573807938\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"22.549339\",\"Longitude\":\"113.928802\",\"Precision\":\"357.000000\"}', '', 'event', 'LOCATION', 1, 1573807938, 1573807939),
(377, 1, 31, NULL, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1573807944\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"22.549339\",\"Longitude\":\"113.928802\",\"Precision\":\"357.000000\"}', '', 'event', 'LOCATION', 1, 1573807944, 1573807944),
(378, 1, 31, NULL, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1573807950\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"22.549339\",\"Longitude\":\"113.928802\",\"Precision\":\"357.000000\"}', '', 'event', 'LOCATION', 1, 1573807950, 1573807950),
(379, 1, 31, NULL, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1573807956\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"22.549339\",\"Longitude\":\"113.928802\",\"Precision\":\"357.000000\"}', '', 'event', 'LOCATION', 1, 1573807956, 1573807956),
(380, 1, 31, NULL, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1573807981\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"22.548687\",\"Longitude\":\"113.932716\",\"Precision\":\"290.000000\"}', '', 'event', 'LOCATION', 1, 1573807981, 1573807981),
(381, 1, 31, NULL, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1573807985\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"22.549339\",\"Longitude\":\"113.928802\",\"Precision\":\"357.000000\"}', '', 'event', 'LOCATION', 1, 1573807985, 1573807985),
(382, 1, 31, NULL, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1573808194\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '', 'event', 'subscribe', 1, 1573808194, 1573808195),
(383, 1, 31, NULL, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1573808469\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"22.548691\",\"Longitude\":\"113.932724\",\"Precision\":\"291.000000\"}', '', 'event', 'LOCATION', 1, 1573808469, 1573808470),
(384, 1, 31, NULL, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1573808486\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '', 'event', 'subscribe', 1, 1573808486, 1573808486),
(385, 1, 31, NULL, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1573808583\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '', 'event', 'subscribe', 1, 1573808583, 1573808584),
(386, 1, 31, NULL, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1573808705\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '', 'event', 'subscribe', 1, 1573808705, 1573808706),
(387, 1, 31, NULL, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1573808843\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '', 'event', 'subscribe', 1, 1573808843, 1573808843),
(388, 1, 31, NULL, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1573808934\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '', 'event', 'subscribe', 1, 1573808934, 1573808934);

-- --------------------------------------------------------

--
-- Table structure for table `lm_wx_qrcode`
--

CREATE TABLE `lm_wx_qrcode` (
  `id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `wx_aid` int(11) NOT NULL,
  `name` varchar(50) DEFAULT '',
  `qrcode` varchar(255) NOT NULL,
  `scene_id` int(11) DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 临时，1 永久',
  `ticket` varchar(255) NOT NULL,
  `expire_seconds` int(11) NOT NULL,
  `url` varchar(255) NOT NULL DEFAULT ' ',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lm_wx_qrcode`
--

INSERT INTO `lm_wx_qrcode` (`id`, `store_id`, `wx_aid`, `name`, `qrcode`, `scene_id`, `type`, `ticket`, `expire_seconds`, `url`, `status`, `create_time`, `update_time`) VALUES
(1, 31, 1, 'demo', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQG88DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyczFCWDBkNUNlSTQxX0hWUk50Y2YAAgTrbM5dAwQAjScA', NULL, 0, 'gQG88DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyczFCWDBkNUNlSTQxX0hWUk50Y2YAAgTrbM5dAwQAjScA', 2592000, 'http://weixin.qq.com/q/02s1BX0d5CeI41_HVRNtcf', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lm_wx_reply`
--

CREATE TABLE `lm_wx_reply` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '微信关键词回复表',
  `store_id` int(11) NOT NULL DEFAULT '1' COMMENT '店铺id',
  `wx_aid` int(11) DEFAULT NULL,
  `rule` varchar(32) DEFAULT NULL COMMENT '规则名',
  `keyword` varchar(150) DEFAULT NULL,
  `type` varchar(10) DEFAULT 'keyword' COMMENT '查询类型keyword,subscribe,default',
  `msg_type` varchar(10) DEFAULT NULL COMMENT '回复消息类型  文本（text ）图片（image）、视频（video）、语音 （voice）、图文（news） 音乐（music）',
  `data` mediumtext COMMENT 'text使用该自动存储文本',
  `material_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'news、video voice image music的素材id等',
  `status` tinyint(1) DEFAULT '1',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lm_wx_reply`
--

INSERT INTO `lm_wx_reply` (`id`, `store_id`, `wx_aid`, `rule`, `keyword`, `type`, `msg_type`, `data`, `material_id`, `status`, `create_time`, `update_time`) VALUES
(1, 1, 31, '12852', '你好吗', 'subscribe', 'text', '很好1212', 0, 1, 1524204226, 1573808358),
(4, 1, 31, '售后退货', '是吗', 'default', 'image', '', 0, 1, 0, 1572954343),
(13, 1, 31, NULL, '123', 'keyword', 'text', '测试', 0, 1, 1573722151, 1573722151),
(14, 1, 31, NULL, '123456789', 'keyword', 'text', '1234567', 0, 1, 1573804314, 1573804314),
(15, 1, 31, NULL, '新增', 'keyword', 'text', '12121', 0, 1, 1573806804, 1573806804),
(16, 1, 31, NULL, 'cece', 'keyword', 'text', 'sadf', 0, 1, 1573807059, 1573807059),
(17, 1, 31, NULL, '哈哈', 'keyword', 'text', '123', 0, 1, 1573807272, 1573807272);

-- --------------------------------------------------------

--
-- Table structure for table `lm_wx_tag`
--

CREATE TABLE `lm_wx_tag` (
  `id` int(11) NOT NULL,
  `tag_id` int(11) DEFAULT NULL COMMENT 'tag id',
  `name` varchar(100) NOT NULL COMMENT '标签名',
  `store_id` int(11) NOT NULL DEFAULT '1' COMMENT '店铺id',
  `wx_aid` int(11) DEFAULT NULL COMMENT '微信账号id',
  `status` tinyint(1) DEFAULT '1',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='粉丝标签表';

--
-- Dumping data for table `lm_wx_tag`
--

INSERT INTO `lm_wx_tag` (`id`, `tag_id`, `name`, `store_id`, `wx_aid`, `status`, `create_time`, `update_time`) VALUES
(1, 2, '星标组', 1, 31, 1, 1568000723, 1572404059),
(2, 100, '粉丝', 1, 31, 1, 1568011092, 1572404059),
(3, 101, '其他', 1, 31, 1, 1568011258, 1572404059),
(4, 102, '好友', 1, 31, 1, 1568011277, 1572404059),
(5, 103, '商业合作伙伴', 1, 31, 1, 1571736441, 1573206411),
(6, 103, '商业合作伙伴9', 1, 31, 1, 1572404059, 1572404059);

-- --------------------------------------------------------

--
-- Table structure for table `lm_wx_type`
--

CREATE TABLE `lm_wx_type` (
  `type_id` tinyint(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lm_wx_type`
--

INSERT INTO `lm_wx_type` (`type_id`, `name`, `create_time`, `update_time`) VALUES
(1, '普通订阅号', 0, 0),
(2, '认证订阅号', 0, 0),
(3, '普通服务号', 0, 0),
(4, '认证服务号/认证媒体/政府订阅号', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lm_addon`
--
ALTER TABLE `lm_addon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `lm_admin`
--
ALTER TABLE `lm_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_username` (`username`);

--
-- Indexes for table `lm_admin_log`
--
ALTER TABLE `lm_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `lm_adv`
--
ALTER TABLE `lm_adv`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enabled` (`status`) USING BTREE,
  ADD KEY `position_id` (`pid`) USING BTREE;

--
-- Indexes for table `lm_adv_position`
--
ALTER TABLE `lm_adv_position`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `position_id` (`id`);

--
-- Indexes for table `lm_article`
--
ALTER TABLE `lm_article`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `pid` (`pid`) USING BTREE;

--
-- Indexes for table `lm_article_cate`
--
ALTER TABLE `lm_article_cate`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE;

--
-- Indexes for table `lm_auth_group`
--
ALTER TABLE `lm_auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `lm_auth_rule`
--
ALTER TABLE `lm_auth_rule`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `href` (`href`);

--
-- Indexes for table `lm_column`
--
ALTER TABLE `lm_column`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listorder` (`sort`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `lm_config`
--
ALTER TABLE `lm_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `lm_config_group`
--
ALTER TABLE `lm_config_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lm_field`
--
ALTER TABLE `lm_field`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lm_field_type`
--
ALTER TABLE `lm_field_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lm_link`
--
ALTER TABLE `lm_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lm_module`
--
ALTER TABLE `lm_module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lm_oauth2_client`
--
ALTER TABLE `lm_oauth2_client`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`appid`);

--
-- Indexes for table `lm_position`
--
ALTER TABLE `lm_position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lm_user`
--
ALTER TABLE `lm_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `underling_number` (`underling_number`),
  ADD KEY `mobile` (`mobile_validated`),
  ADD KEY `openid` (`openid`),
  ADD KEY `unionid` (`unionid`);

--
-- Indexes for table `lm_user_level`
--
ALTER TABLE `lm_user_level`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `lm_user_sign`
--
ALTER TABLE `lm_user_sign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lm_wx_account`
--
ALTER TABLE `lm_wx_account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`store_id`) USING BTREE,
  ADD KEY `uid_2` (`store_id`) USING BTREE;

--
-- Indexes for table `lm_wx_fans`
--
ALTER TABLE `lm_wx_fans`
  ADD PRIMARY KEY (`fans_id`),
  ADD KEY `IDX_sys_weixin_fans_openid` (`openid`(191)),
  ADD KEY `IDX_sys_weixin_fans_unionid` (`unionid`(191));

--
-- Indexes for table `lm_wx_material`
--
ALTER TABLE `lm_wx_material`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_id` (`media_id`);

--
-- Indexes for table `lm_wx_material_info`
--
ALTER TABLE `lm_wx_material_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lm_wx_menu`
--
ALTER TABLE `lm_wx_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_biz_shop_menu_orders` (`sort`),
  ADD KEY `IDX_biz_shop_menu_shopId` (`store_id`);

--
-- Indexes for table `lm_wx_msg_history`
--
ALTER TABLE `lm_wx_msg_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lm_wx_qrcode`
--
ALTER TABLE `lm_wx_qrcode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lm_wx_reply`
--
ALTER TABLE `lm_wx_reply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lm_wx_tag`
--
ALTER TABLE `lm_wx_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lm_wx_type`
--
ALTER TABLE `lm_wx_type`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lm_addon`
--
ALTER TABLE `lm_addon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `lm_admin`
--
ALTER TABLE `lm_admin`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '管理员ID', AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `lm_admin_log`
--
ALTER TABLE `lm_admin_log`
  MODIFY `id` bigint(16) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表id', AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `lm_adv`
--
ALTER TABLE `lm_adv`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '广告id', AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `lm_adv_position`
--
ALTER TABLE `lm_adv_position`
  MODIFY `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表id', AUTO_INCREMENT=540;

--
-- AUTO_INCREMENT for table `lm_article`
--
ALTER TABLE `lm_article`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lm_article_cate`
--
ALTER TABLE `lm_article_cate`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `lm_auth_group`
--
ALTER TABLE `lm_auth_group`
  MODIFY `id` smallint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '分组id', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lm_auth_rule`
--
ALTER TABLE `lm_auth_rule`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `lm_column`
--
ALTER TABLE `lm_column`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lm_config`
--
ALTER TABLE `lm_config`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `lm_config_group`
--
ALTER TABLE `lm_config_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lm_field`
--
ALTER TABLE `lm_field`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `lm_field_type`
--
ALTER TABLE `lm_field_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `lm_link`
--
ALTER TABLE `lm_link`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `lm_module`
--
ALTER TABLE `lm_module`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lm_oauth2_client`
--
ALTER TABLE `lm_oauth2_client`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lm_position`
--
ALTER TABLE `lm_position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lm_user`
--
ALTER TABLE `lm_user`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表id', AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `lm_user_level`
--
ALTER TABLE `lm_user_level`
  MODIFY `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表id', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `lm_user_sign`
--
ALTER TABLE `lm_user_sign`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lm_wx_account`
--
ALTER TABLE `lm_wx_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表id', AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `lm_wx_fans`
--
ALTER TABLE `lm_wx_fans`
  MODIFY `fans_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '粉丝ID', AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `lm_wx_material`
--
ALTER TABLE `lm_wx_material`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '微信公众号素材', AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `lm_wx_material_info`
--
ALTER TABLE `lm_wx_material_info`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `lm_wx_menu`
--
ALTER TABLE `lm_wx_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lm_wx_msg_history`
--
ALTER TABLE `lm_wx_msg_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=389;

--
-- AUTO_INCREMENT for table `lm_wx_qrcode`
--
ALTER TABLE `lm_wx_qrcode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lm_wx_reply`
--
ALTER TABLE `lm_wx_reply`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '微信关键词回复表', AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `lm_wx_tag`
--
ALTER TABLE `lm_wx_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lm_wx_type`
--
ALTER TABLE `lm_wx_type`
  MODIFY `type_id` tinyint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

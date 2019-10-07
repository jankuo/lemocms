-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 07, 2019 at 03:01 PM
-- Server version: 5.6.45-log
-- PHP Version: 7.3.8

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
-- Table structure for table `lm_admin`
--

CREATE TABLE `lm_admin` (
  `id` tinyint(4) NOT NULL COMMENT '管理员ID',
  `username` varchar(20) NOT NULL COMMENT '管理员用户名',
  `password` varchar(255) NOT NULL COMMENT '管理员密码',
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
(1, 'admin', '$2y$12$ZyfZvn0qOhs0qmvKmKcIPO2db0p3ak2cem9PlBRKv7p5tV/eZ/bTO', 1, '994927909@qq.com', '', '18397423845', '127.0.0.1', '0', 1, '/storage/uploads/20190817\\294faa45405fa24da59c311f55ce313f.png', 1482132862, 1569466673),
(2, 'yuege', '$2y$12$0sQy3Yc8wt9hKYmPJKVmwOcr6FASBzroq0lJA7XsIFR6fydohrZEC', 3, '994927909@qq.com', '', '18397423845', '127.0.0.1', '0', 1, '/storage/uploads/20190817\\dc25c2714c46a0d2bee894a7d05eb15f.png', 1535512393, 1570111746),
(3, 'demo', '$2y$12$ZyfZvn0qOhs0qmvKmKcIPO2db0p3ak2cem9PlBRKv7p5tV/eZ/bTO', 2, '994927909@qq.com', '', '18397423845', '119.122.91.146', '0', 1, '/storage/uploads/20190817\\a17c794ac7fae7db012aa6e997cf3400.jpg', 1564041575, 1570148665);

-- --------------------------------------------------------

--
-- Table structure for table `lm_admin_log`
--

CREATE TABLE `lm_admin_log` (
  `id` bigint(16) UNSIGNED NOT NULL COMMENT '表id',
  `admin_id` int(10) DEFAULT NULL COMMENT '管理员id',
  `username` varchar(100) DEFAULT NULL,
  `log_url` varchar(100) DEFAULT NULL,
  `log_content` longtext COMMENT 'log 内容',
  `log_title` varchar(100) DEFAULT NULL COMMENT '日志描述',
  `log_agent` varchar(200) DEFAULT NULL,
  `log_ip` varchar(30) DEFAULT NULL COMMENT 'ip地址',
  `create_time` int(11) DEFAULT NULL COMMENT '日志时间',
  `update_time` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(1, 2, 0, '首页', 'javascript:void(0);', '/public/upload/ad/2018/04-24/a7a54a5b527f0b1b069b8421378ad0fa.jpg', 1451577600, 1483286400, '', '', '', 0, 0, 1, 0, 0, '#43d7f6', 0, 0),
(2, 2, 0, '首页', 'javascript:void(0);', '/public/upload/ad/2018/04-25/93bf5c1ebdf4c4359253a107bcbdbe98.jpg', 1451577600, 1767283200, '', '', '', 0, 0, 1, 0, 0, '#ff8000', 0, 1566106884),
(3, 2, 0, '轮播', 'javascript:void(0);', '/public/upload/ad/2018/04-13/6eeaa63e76c946927d0c1e67f6cf4f4f.jpg', 1451577600, 1767283200, '', '', '', 0, 0, 1, 0, 0, '#fea8c1', 0, 0),
(4, 2, 0, '轮播', 'javascript:void(0);', '/public/upload/ad/2018/04-13/8099744a886c2cfad7c837e28aee9d52.jpg', 1451577600, 1767283200, '', '', '', 0, 0, 1, 0, 0, '#f1e6d2', 0, 0),
(7, 2, 0, '其他', 'javascript:void(0);', '/public/upload/ad/2018/04-13/7009c820b93bcf31d3e42df31d78ed71.jpg', 1451577600, 1767283200, '', '', '', 0, 0, 1, 0, 0, '#f1dcf7', 0, 1567574061),
(12, 2, 0, '其他', 'javascript:void(0);', '/public/upload/ad/2018/04-24/44aa330b056f5b090b6d6ac8a9a072dd.jpg', 1451577600, 1767283200, '', '', '', 0, 0, 1, 0, 0, '#000000', 0, 0),
(82, 1, 0, '其他', 'https://www.baidu.com', '/storage/uploads/20190818\\0c2a7f85348cd9ae508ca860388fa021.png', 0, 0, '', '994927909@qq.com', '', 0, 0, 1, 50, 0, '', 1566107420, 1569480715),
(83, 1, 0, '组合套餐', 'https://www.baidu.com', '/storage/uploads/20190818\\2db9e450c251d0d21dac3d3384134bb0.png', 1566130740, 0, '', '994927909@qq.com', '', 0, 0, 1, 50, 0, '', 1566107921, 1567934004),
(84, 4, 0, 'banner6 ', 'https://www.baidu.com', '/storage/uploads/20190818\\8ebd41bd38db53338af00026cb592bc3.png', 1566130740, 0, '', '994927909@qq.com', '', 0, 0, 1, 50, 0, '', 1566107968, 1569160489),
(85, 1, 0, '组合套餐', 'https://www.baidu.com', '/storage/uploads/20190818\\674ca52c87c4552352f35d820c3ce33e.png', 0, 0, '', '994927909@qq.com', '', 0, 0, 1, 50, 0, '', 1566108105, 1567584671),
(86, 2, 0, '组合套餐', 'https://www.baidu.com', '/storage/uploads/20190818\\cd986a75a1be03d8a7af558fda044ca4.png', 1566130740, 0, '', '994927909@qq.com', '', 0, 0, 1, 50, 0, '', 1566108149, 1568273418),
(87, 2, 0, 'banner6 ', 'https://www.baidu.com', '/storage/uploads/20190818\\7e2ca2635af1031871ab121938818a4d.png', 1564588800, 1568908800, '', '994927909@qq.com', '', 0, 0, 1, 50, 0, '', 1566108542, 1570271748);

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
(515, 'Ad页面自动增加广告位 515 ', 0, 0, 'Ad页面', '', 1, 0, 1569482211),
(516, 'Ad页面自动增加广告位 516 ', 0, 0, 'Ad页面', '', 1, 0, 1570414306),
(517, 'Ad页面自动增加广告位 517 ', 0, 0, 'Ad页面', '', 1, 0, 1570414305),
(518, 'Ad页面自动增加广告位 518 ', 0, 0, 'Ad页面', '', 1, 0, 1570414303),
(531, 'Ad页面自动增加广告位 531 ', 0, 0, 'Ad页面', '', 1, 0, 1570414302),
(533, 'Ad页面自动增加广告位 533 ', 0, 0, 'Ad页面', '', 1, 0, 1569838085),
(534, 'Ad页面自动增加广告位 534 ', 0, 0, 'Ad页面', '', 1, 0, 1569838084),
(539, '首页', 1080, 300, '其他1', '', 1, 1566111321, 1569838081);

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
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lm_article`
--

INSERT INTO `lm_article` (`id`, `pid`, `title`, `description`, `content`, `author`, `author_email`, `keywords`, `article_type`, `status`, `file_url`, `open_type`, `link`, `click`, `publish_time`, `sort`, `thumb`, `create_time`, `update_time`) VALUES
(1, 1, '基于TP6 easywechat layui开发的cms 后台管理系统', '基于TP6 easywechat layui开发的cms 后台管理系统', '<p>基于TP6 layui开发的cms 后台管理系统</p>', '', '994927909@qq.com', 'tp6 layui easywechat', 1, 1, '', 0, '', 1206, 0, 0, '/storage/uploads/20190826\\b183bf1681077d0bafd37bc17caf2cdc.png', 1566799075, 1570184149);

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
(1, '新手上路', '', 1, 0, 0, 1, 0, '1233', '', 0, 1569301180),
(2, '购物指南', '', 1, 0, 0, 1, 2, '', '', 0, 0),
(3, '售后服务', '', 1, 0, 0, 1, 2, '', '', 0, 1569471200),
(4, '支付方式', '', 1, 0, 0, 1, 4, '', '', 0, 0),
(5, '配送方式', '', 1, 0, 0, 1, 5, '', '', 0, 0),
(6, '系统公告', '', 1, 0, 0, 1, 6, '', '', 0, 0),
(7, '关于我们', '', 1, 0, 0, 0, 7, '', '', 0, 1570414322),
(8, '测试分类', '测试分类', 0, 7, 0, 1, 50, '', '', 1566801126, 1568276268),
(14, 'adfas', 'asdfa', 0, 0, 0, 0, 50, NULL, NULL, 1569471673, 1570414322);

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
(1, '超级管理员', 1, '1,2,20,21,40,34,39,73,3,4,5,9,10,11,12,22,13,6,7,8,14,15,16,17,18,19,26,27,28,29,30,31,32,33,35,36,37,38,23,24,25,41,47,48,49,50,51,52,67,54,55,56,57,58,66,42,46,53,43,44,45,68,59,60,61,62,65,74,69,70,71,72,75,76,77,78,79,80,81,82,83,84,85,86,87,120,121,122,123,124,125,126,127,88,95,96,97,98,89,99,100,101,102,90,103,104,91,112,113,114,115,116,92,117,118,119,93,105,106,107,108,109,94,110,111,', 1465114224, 1569030382),
(2, '测试1', 1, '1,2,20,21,40,34,39,129,3,9,22,13,6,7,16,26,30,35,38,41,47,48,51,54,55,57,58,66,42,46,53,43,45,68,59,60,61,65,74,69,70,71,75,76,77,81,82,83,87,120,121,122,123,124,125,126,127,128,88,97,89,99,100,101,102,90,103,104,91,112,113,114,115,116,92,117,118,119,93,105,106,107,108,109,94,110,111,', 1565929191, 1570420529),
(3, '测试2', 1, '1,2,20,21,40,34,39,73,129,3,4,5,9,10,11,12,22,13,', 1567485941, 1569563359);

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
(1, 'System', '系统', 1, 1, 0, 1, 'fa fa-home', '', 0, 0, 1446535750, 1569401425),
(2, 'System', '系统设置', 1, 1, 0, 1, 'fa fa-gears', '', 1, 0, 1446535789, 0),
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
(23, 'Addons', '插件', 1, 1, 0, 1, 'fa fa-flickr', '', 0, 0, 0, 1566053592),
(25, 'Addons/index', '插件列表', 1, 1, 0, 1, 'fa fa-flickr', '', 23, 0, 0, 0),
(26, 'Auth/group', '权限组', 1, 1, 0, 1, 'fa fa-globe', '', 6, 0, 0, 0),
(27, 'Auth/groupDel', '用户组删除', 1, 1, 0, 0, '', '', 26, 0, 0, 0),
(28, 'Auth/groupAdd', '用户组添加', 1, 1, 0, 0, '', '', 26, 0, 0, 0),
(29, 'Auth/groupEdit', '用户组修改', 1, 1, 0, 0, '', '', 26, 0, 0, 0),
(30, 'Auth/groupState', '用户组状态修改', 1, 1, 0, 0, '', '', 26, 0, 0, 0),
(31, 'Auth/groupSelectDel', '用户组批量删除', 1, 1, 0, 0, '', '', 26, 0, 0, 0),
(32, 'Auth/groupAccess', '用户组显示权限', 1, 1, 0, 0, '', '', 26, 0, 0, 0),
(33, 'Auth/groupSetaccess', '用户组保存权限', 1, 1, 0, 0, '', '', 26, 0, 0, 0),
(34, 'Uploads/uploads', '上传文件', 1, 1, 0, 0, '', '', 2, 0, 0, 0),
(35, 'Auth/adminList', '管理员列表', 1, 1, 0, 1, 'fa fa-user-circle', '', 6, 0, 1, 0),
(36, 'Auth/adminAdd', '添加管理员', 1, 1, 0, 0, '', '', 35, 0, 0, 0),
(37, 'Auth/adminDel', '删除管理员', 1, 1, 0, 0, '', '', 35, 0, 0, 0),
(38, 'Auth/adminState', '管理员状态', 1, 1, 0, 0, '', '', 35, 0, 0, 0),
(39, 'Index/password', '修改密码', 1, 1, 0, 0, '', '', 2, 0, 0, 0),
(40, 'Adminlog/delete', '删除日志', 1, 1, 0, 0, '', '', 21, 0, 0, 0),
(41, 'Content', '内容', 1, 1, 0, 1, 'fa fa-folder-open', '', 0, 50, 1566092187, 1566092574),
(42, 'Link', '链接管理', 1, 1, 0, 1, 'fa fa-link', '', 41, 50, 1566092432, 1566092684),
(43, 'Link/add', '链接添加', 1, 1, 0, 0, '', '', 46, 50, 1566092486, 1566092801),
(44, 'Link/delete', '链接删除', 1, 1, 0, 0, '', '', 46, 50, 1566092613, 1566092798),
(45, 'Link/state', '链接状态', 1, 1, 0, 0, '', '', 46, 50, 1566092677, 1566092795),
(46, 'Link/index', '链接列表', 1, 1, 0, 1, 'fa fa-link', '', 42, 50, 1566092770, 1566092770),
(47, 'Adv', '广告管理', 1, 1, 0, 1, 'fa fa-audio-description', '', 41, 0, 0, 0),
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
(76, 'User', '会员', 1, 1, 0, 1, 'fa fa-address-card-o', '', 0, 50, 1567327942, 1567564188),
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
(87, 'Wechat', '微信', 1, 1, 0, 1, 'fa fa-comments-o', '', 0, 50, 1567605987, 1567605987),
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
(120, 'Wechat/imageUpload', '图片上传', 1, 1, 0, 0, NULL, '', 87, 0, 0, NULL),
(121, 'Wechat/videoUpload', '视频上传', 1, 1, 0, 0, NULL, '', 87, 0, 0, NULL),
(122, 'Wechat/voiceUpload', '语音上传', 1, 1, 0, 0, NULL, '', 87, 0, 0, NULL),
(123, 'Wechat/thumbUpload', '缩略图上传', 1, 1, 0, 0, NULL, '', 87, 0, 0, NULL),
(124, 'Wechat/UeditUploadImage', '百度编辑器上传图片', 1, 1, 0, 0, NULL, '', 87, 0, 0, NULL),
(125, 'Wechat/UeditUploadVideo', '百度编辑器上传视频', 1, 1, 0, 0, NULL, '', 87, 0, 0, NULL),
(126, 'Wechat/UeditUploaVoice', '百度编辑器上传音频', 1, 1, 0, 0, NULL, '', 87, 0, 0, NULL),
(127, 'Wechat/getListImage', '获取图片列表', 1, 1, 0, 0, NULL, '', 87, 0, 0, NULL),
(128, 'Wechat/getWxAccount', '微信账号', 1, 1, 0, 0, NULL, '', 87, 0, 0, NULL),
(129, 'System/enlang', '切换语言', 1, 1, 0, 0, '', '', 2, 50, 1569038729, 1569039096);

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
(4, 'site_logo', '/storage/uploads/20190921/75803e4c5ade18a1c9c215f7a67f8a50.png', '网站logo图', 'site', 1, 0, 0),
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
(41, 'weixin_appid', '', '微信appid', 'weixin', 1, 0, 0),
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
(54, 'site_version', 'v1.0.5', '版本', 'site', 1, NULL, NULL);

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
(23, 'lemocms', 'https://www.lemocms.com', 0, '994927909@qq.com', '994927909', 50, 1, 1566102829, 1570264844),
(25, '百度', 'https://www.baidu.com', 0, '994927909@qq.com', '994927909', 50, 1, 1566103165, 1569595197),
(26, '新浪', 'https://www.sina.com', 0, '994927909@qq.com', '994927909', 50, 1, 1566103233, 1566103233);

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
(3, 1, '', NULL, '519475228fe35ad067744465c42a19b2', '90600d68b0f56d90c4c34284d8dfd138', 0, 1524067200, '4057.47', '0.00', '0.00', 0, 49513, 0, 1523266058, 1569480979, 0, 0, '', '', '18515156363', 1, '', NULL, NULL, '/public/upload/head_pic/20180419/fec83644525cdd715416db8789cfe222.jpg', 0, 0, 0, 0, '青春', 4, '0.94', '9559.07', 0, 1, 0, 0, 0, '', 63, '190e35f7e07c8658ec6', 0, 0, NULL, NULL),
(4, 1, '15636363522@qq.com', NULL, '519475228fe35ad067744465c42a19b2', '519475228fe35ad067744465c42a19b2', 0, -28800, '0.00', '0.00', '0.00', 0, 110, 0, 1523266117, 1569480978, 1523266117, 0, '', '', '', 0, '', NULL, NULL, '/public/upload/user/4/head_pic//7268f1d4ce9879694c2ec7da77d4dfbb.png', 0, 0, 0, 1, '15636363522@qq.com', 1, '1.00', '0.00', 0, 0, 0, 0, 0, 'eaf8b23d80d7513ab4ffcf3b1129f668', 63, '0', 0, 0, NULL, NULL),
(5, 1, '', NULL, '519475228fe35ad067744465c42a19b2', '519475228fe35ad067744465c42a19b2', 0, 0, '49830.22', '0.00', '0.00', 0, 2410, 0, 1523588976, 1569480974, 1523588976, 0, '', '', '15766212618', 1, '', NULL, NULL, '/public/images/icon_goods_thumb_empty_300.png', 0, 0, 0, 0, '15766212618', 4, '0.94', '7687.08', 0, 1, 0, 0, 0, '91fa24fa9b42dfc79fc37d0acec4ba51', 63, '0', 0, 0, NULL, NULL),
(6, 1, '461799220@qq.com', NULL, '519475228fe35ad067744465c42a19b2', NULL, 0, 0, '1000.00', '0.00', '0.00', 0, 100, 0, 1523601798, 1569480972, 0, 0, '', '461799220', '18664316869', 0, '', NULL, NULL, NULL, 0, 0, 0, 0, '单测试1', 1, '1.00', '0.00', 0, 0, 0, 0, 0, '', 63, '', 0, 0, NULL, NULL),
(7, 1, '', NULL, '519475228fe35ad067744465c42a19b2', NULL, 0, 0, '0.00', '0.00', '0.00', 0, 100, 0, 1523608222, 1569480970, 1523608222, 0, '', '', '15274857485', 1, '', NULL, NULL, '/public/images/icon_goods_thumb_empty_300.png', 0, 0, 0, 0, '15274857485', 1, '1.00', '0.00', 0, 0, 3, 0, 0, '001b3f89dc686ad2f53f5481e8c9fb30', 63, '0', 0, 0, NULL, NULL),
(8, 1, '', NULL, '519475228fe35ad067744465c42a19b2', '519475228fe35ad067744465c42a19b2', 0, 0, '100000.00', '0.00', '0.00', 0, 100000, 0, 1523857661, 1568191348, 1540191996, 0, '', '', '13800138006', 1, '', NULL, NULL, 'http://thirdwx.qlogo.cn/mmopen/vi_32/c58Iiaib1aPodvKHMMGR9ZYmq7XGFUgppvhxgQKrJxdlZTAauZ8dTucEguiamsncVDR3h32TMO4YzppDmSuHIGI9w/132', 0, 0, 0, 0, 'summer', 2, '1.00', '55.00', 0, 0, 3, 0, 0, '', 63, '190e35f7e07c8658ec6', 0, 0, NULL, NULL),
(9, 1, '', NULL, '519475228fe35ad067744465c42a19b2', '519475228fe35ad067744465c42a19b2', 2, 1524153600, '18527.80', '0.00', '0.00', 0, 100210, 0, 1523861478, 1569480995, 0, 0, '', '1546515984', '15274851525', 0, '', NULL, NULL, '/public/upload/head_pic/20180420/b147d911d2d5b3ff252fa948d96fb5d3.jpg', 0, 0, 0, 0, 'nana', 2, '1.00', '871.20', 0, 1, 0, 0, 0, '', 63, '190e35f7e07c8658ec6', 0, 0, NULL, NULL),
(10, 1, '1522585@qq.com', NULL, '519475228fe35ad067744465c42a19b2', '519475228fe35ad067744465c42a19b2', 2, -28800, '5649.60', '0.00', '0.00', 0, 1100, 0, 1523864842, 1568191345, 1524801341, 0, '', '', '15919919433', 0, '', NULL, NULL, '/public/upload/head_pic/20180423/a20e71149cc243fc2df4c6eb5caadbbd.jpg', 0, 0, 0, 0, '等待', 4, '0.94', '6808.66', 0, 1, 0, 0, 0, 'cedbd4ca79a15888d4fd3a636834294f', 63, '140fe1da9e8bbcb28d2', 0, 0, NULL, NULL),
(11, 1, '', NULL, '519475228fe35ad067744465c42a19b2', NULL, 0, 0, '0.00', '0.00', '0.00', 0, 100, 0, 1523933777, 1568191292, 1523933777, 0, '', '', '18585859674', 1, '', NULL, NULL, '/public/images/icon_goods_thumb_empty_300.png', 0, 0, 0, 0, '18585859674', 1, '1.00', '0.00', 0, 1, 0, 0, 0, '2ba708bb3b18ff3b133d19802ddc8559', 63, '0', 0, 0, NULL, NULL),
(12, 1, '1546515984@11.com', NULL, '519475228fe35ad067744465c42a19b2', '519475228fe35ad067744465c42a19b2', 0, 0, '1824.00', '0.00', '0.00', 0, 2400, 0, 1524023190, 1569480994, 1524023190, 0, '', '', '18576762477', 1, '', NULL, NULL, '/public/images/icon_goods_thumb_empty_300.png', 0, 0, 0, 0, '18576762477', 2, '1.00', '88.00', 0, 1, 0, 0, 0, '55a01f6a994fa693a5c6364839475bc9', 63, '0', 0, 0, NULL, NULL),
(13, 1, '15274851694@qq.co', NULL, '519475228fe35ad067744465c42a19b2', NULL, 0, 0, '0.00', '0.00', '0.00', 0, 100, 0, 1524188790, 1569480994, 0, 0, '', '', '', 0, '', NULL, NULL, NULL, 0, 0, 0, 0, '32', 1, '1.00', '0.00', 0, 0, 0, 0, 0, '', 63, '', 0, 0, NULL, NULL),
(14, 1, '18516589423@qq.com', NULL, '519475228fe35ad067744465c42a19b2', NULL, 0, 0, '0.00', '0.00', '0.00', 0, 100, 0, 1524188838, 1569480993, 0, 0, '', '', '', 0, '', NULL, NULL, NULL, 0, 0, 0, 0, '3434', 1, '1.00', '0.00', 0, 0, 0, 0, 0, '', 63, '', 0, 0, NULL, NULL),
(15, 1, '', NULL, '519475228fe35ad067744465c42a19b2', NULL, 0, 0, '0.00', '0.00', '0.00', 0, 100, 0, 1524189831, 1569480993, 1524189831, 0, '', '', '15274851515', 1, '', NULL, NULL, '/public/images/icon_goods_thumb_empty_300.png', 0, 0, 0, 0, '15274851515', 2, '1.00', '0.00', 0, 1, 0, 0, 0, '002322068d39e76fbc9afbaa98001828', 63, '0', 0, 0, NULL, NULL),
(16, 1, '123@qq.com', NULL, '519475228fe35ad067744465c42a19b2', NULL, 1, 0, '0.00', '0.00', '0.00', 0, 100, 0, 1524470536, 1569480993, 0, 0, '', '', '13978520397', 0, '', NULL, NULL, NULL, 0, 0, 0, 0, '125', 3, '1.00', '0.00', 0, 0, 0, 0, 0, '', 63, '', 0, 0, NULL, NULL),
(17, 1, '', NULL, '519475228fe35ad067744465c42a19b2', '519475228fe35ad067744465c42a19b2', 0, 1524499200, '8977.90', '0.00', '0.00', 0, 190, 0, 1524554349, 1569483226, 1524822517, 0, '', '', '15247471414', 1, '', NULL, NULL, '/public/upload/head_pic/20180424/47684cc3e684a14cc2aae4a9294bf87e.jpg', 0, 0, 0, 0, '15247471414', 3, '0.99', '1266.00', 0, 1, 0, 0, 0, 'af20aa77641d815ff645ee524d2cdd73', 63, '190e35f7e07c8658ec6', 0, 0, NULL, NULL),
(18, 1, '', NULL, '519475228fe35ad067744465c42a19b2', NULL, 0, 0, '0.00', '0.00', '0.00', 0, 100, 0, 1524623385, 1569480992, 1524623385, 0, '', '', '15889560679', 1, '', NULL, NULL, '/public/images/icon_goods_thumb_empty_300.png', 0, 0, 0, 0, '15889560679', 2, '1.00', '0.00', 0, 1, 0, 0, 0, '94c54e14ccdddf8f39ffa86262ea2b2e', 63, '0', 0, 0, NULL, NULL),
(19, 1, '258282@163.com', NULL, '519475228fe35ad067744465c42a19b2', NULL, 0, 0, '0.00', '0.00', '0.00', 0, 100, 0, 1524706705, 1569480991, 0, 0, '', '', '15915407591', 0, '', NULL, NULL, NULL, 0, 0, 0, 0, '添加会员', 2, '1.00', '0.00', 0, 0, 0, 0, 0, '', 63, '', 0, 0, NULL, NULL),
(20, 1, '', NULL, '519475228fe35ad067744465c42a19b2', NULL, 0, 0, '0.00', '0.00', '0.00', 0, 0, 0, 1524714610, 1570264886, 1524714610, 0, '', '', '18515858596', 1, '', NULL, NULL, '/public/images/icon_goods_thumb_empty_300.png', 0, 0, 0, 0, '18515858596', 2, '1.00', '0.00', 1, 1, 0, 0, 0, '2ffa0713419b11ca86b8f3c81744a387', 63, '0', 0, 0, NULL, NULL),
(21, 1, '', NULL, '519475228fe35ad067744465c42a19b2', '519475228fe35ad067744465c42a19b2', 0, 1524672000, '49256.00', '0.00', '0.00', 0, 100, 0, 1524723726, 1570264883, 0, 0, '', '', '15274851596', 1, '', NULL, NULL, '/public/images/icon_goods_thumb_empty_300.png', 0, 0, 0, 0, '路人甲', 2, '1.00', '744.00', 1, 1, 3, 0, 0, '', 63, '100d855909727631376', 0, 0, NULL, NULL),
(22, 1, '', NULL, '519475228fe35ad067744465c42a19b2', '519475228fe35ad067744465c42a19b2', 0, 0, '57.62', '0.00', '0.00', 0, 44985, 0, 1524726905, 1570264881, 1524738073, 0, '', '', '13243434343', 1, '', NULL, NULL, '/public/upload/head_pic/20180427/dd96cecf4bc0bd6414351cd9574d01e7.jpg', 0, 0, 0, 0, '13243434343', 3, '0.99', '1760.14', 1, 1, 0, 0, 0, '16bc4823350241a1d942777f58e74457', 63, '', 0, 0, NULL, NULL),
(23, 1, '', NULL, '519475228fe35ad067744465c42a19b2', '519475228fe35ad067744465c42a19b2', 0, 0, '996778.79', '0.00', '0.00', 0, 1997520, 0, 1524730504, 1569545656, 1524824026, 0, '', '', '18679683657', 1, '', NULL, NULL, 'https://thirdqq.qlogo.cn/qqapp/1106296395/B0C344E52B6012FDABEE9ECD0557C0CC/100', 0, 0, 0, 0, '18679683657', 2, '1.00', '973.60', 1, 1, 0, 0, 0, '4ce10de3f32357294373107e321a8b60', 63, '190e35f7e07c8658ec6', 0, 0, NULL, NULL);

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
(1, '倔强青铜', '0.00', 100, 0, NULL, '人生若只如初相见', NULL, 1570414332),
(2, '秩序白银', '1000.00', 99, 0, NULL, '', NULL, 1570414331),
(3, '荣耀黄金', '3000.00', 94, 0, NULL, '', NULL, 1570414330),
(4, '尊贵铂金', '10000.00', 95, 1, NULL, '', NULL, NULL),
(5, '永恒钻石', '50000.00', 93, 0, NULL, '', NULL, 1570256743),
(6, '至尊星耀', '100000.00', 91, 0, NULL, '', NULL, 1570414329),
(7, '最强王者', '3000000.00', 90, 0, NULL, '', NULL, 1570414329),
(8, '任性', '99999999.99', 70, 0, 0, '', 1568098240, 1570414330);

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
  `encode` varchar(150) DEFAULT NULL COMMENT 'encode',
  `app_id` varchar(50) NOT NULL DEFAULT '' COMMENT 'appid',
  `app_secret` varchar(50) NOT NULL DEFAULT '' COMMENT 'appsecret',
  `origin_id` varchar(64) NOT NULL DEFAULT '' COMMENT '公众号原始ID',
  `weixin` char(64) DEFAULT NULL COMMENT '微信号',
  `logo` varchar(255) DEFAULT NULL COMMENT '头像地址',
  `token` varchar(255) DEFAULT NULL COMMENT 'token',
  `w_token` varchar(150) NOT NULL DEFAULT '' COMMENT '微信对接token',
  `related` varchar(200) NOT NULL DEFAULT 'https://demo.lemocms.com/wechat/wechatApi/related?store_id=1' COMMENT '微信对接地址',
  `create_time` int(11) NOT NULL COMMENT 'create_time',
  `update_time` int(11) NOT NULL COMMENT 'updatetime',
  `tplcontentid` varchar(2) DEFAULT NULL COMMENT '内容模版ID',
  `share_ticket` varchar(150) DEFAULT NULL COMMENT '分享ticket',
  `share_dated` char(15) DEFAULT NULL COMMENT 'share_dated',
  `authorizer_access_token` varchar(200) NOT NULL DEFAULT '' COMMENT 'authorizer_access_token',
  `authorizer_refresh_token` varchar(200) DEFAULT NULL COMMENT 'authorizer_refresh_token',
  `authorizer_expires` char(10) DEFAULT NULL COMMENT 'authorizer_expires',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '类型 1 普通订阅号2认证订阅号 3普通服务号 4认证服务号/认证媒体/政府订阅号',
  `web_access_token` varchar(200) DEFAULT NULL COMMENT '网页授权token',
  `web_refresh_token` varchar(200) DEFAULT NULL COMMENT 'web_refresh_token',
  `web_expires` int(11) DEFAULT NULL COMMENT '过期时间',
  `qr` varchar(200) DEFAULT NULL COMMENT 'qr',
  `menu_config` mediumtext COMMENT '菜单',
  `status` tinyint(1) DEFAULT '1' COMMENT '微信接入状态,0待接入1已接入'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='微信公共帐号';

--
-- Dumping data for table `lm_wx_account`
--

INSERT INTO `lm_wx_account` (`id`, `store_id`, `wxname`, `aeskey`, `encode`, `app_id`, `app_secret`, `origin_id`, `weixin`, `logo`, `token`, `w_token`, `related`, `create_time`, `update_time`, `tplcontentid`, `share_ticket`, `share_dated`, `authorizer_access_token`, `authorizer_refresh_token`, `authorizer_expires`, `type`, `web_access_token`, `web_refresh_token`, `web_expires`, `qr`, `menu_config`, `status`) VALUES
(31, 1, 'lemocms', 'adsfda', '0', 'wxecd04cbbfc06a972', 'ec83a45f2a561a90cf5f63e7476bae36', 'gh_e29462503ebe', 'lemomcms', '/storage/uploads/20190905/dfdcecfa905e2858ae45b87542c0c5ab.png', 'b96561beca83877b0df8eda9f0cea2b4', 'b96561beca83877b0df8eda9f0cea2b4', 'https://demo.lemocms.com/wechat/wechatApi/related?store_id=1', 1490691329, 1569572524, '', '', '', '', '', '', 4, '9_ztdL3qhqHHAgFTIANDMStPvneUubYL0sANeFHEYDXu_qzElDwaQeSNwwhi1EfpDXzFwOeP05e0wMRpsJvQVVjnmhiWtZIqOwj4RwIdhXQnB1WPP0yw4pv8x2c_NA2ykcPKD-V6aTa3mFDKO9YJSaAAALWF', '', 1524884051, '/storage/uploads/20190905/2790a6a9cbb9ca1bcdfaca9b25d0316a.jpg', NULL, 1),
(34, 1, 'asdf12312', 'sadf', '', 'asdf123121241', 'asdfasdf', 'asdfasdf234234', '', '', '', 'asdf', 'https://demo.lemocms.com/wechat/wechatApi/related?store_id=1', 1569305046, 1569572524, '', '', '', '', '', '', 4, '', '', 0, '', NULL, 0);

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
(1, 34, 0, 0, 1, '🐘 心之所向🐘', '\"\\ud83d\\udc18 \\u5fc3\\u4e4b\\u6240\\u5411\\ud83d\\udc18\"', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM4VFiaYnBD77jqvXaG55kz8cYgynjUAic5oNcrjkicjIGvVVyRYfLsiceojIlI709OKWPAQr95E2y2Ick6jSHSrIJXgtcn1VnDM4qE/132', 1, 'zh_CN', '中国', '湖南', '衡阳', '', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '', 2, 1, 'ADD_SCENE_QR_CODE', '', '其他', '[2]', 1568970767, 0, '0', '', 1, 1570254145, 1567909800),
(2, 34, 0, 0, 1, '、ζ低调ゐ走这条 街る', '\"\\u3001\\u03b6\\u4f4e\\u8c03\\u3090\\u8d70\\u8fd9\\u6761 \\u8857\\u308b\"', 'http://thirdwx.qlogo.cn/mmopen/BA8GZZ2EGwWjjLn9bP76eEhmg9zfsYuVlbdJT9y3Z5KJFrINxlCHvFX2sTxiaskvJAcAORVibwQQVpJictIv7icH9Q/132', 1, 'zh_CN', '中国', '河南', '郑州', '', 'oBSasxK1y2TGZk_xKIf-ZxWYM5rM', '', 0, 1, 'ADD_SCENE_QR_CODE', '', NULL, '[]', 1568970306, 0, '0', '', 1, 1570254145, 1569035960),
(3, 34, 0, 0, 1, '橙皮', '\"\\u6a59\\u76ae\"', 'http://thirdwx.qlogo.cn/mmopen/0YNSjjHibkfmbsIFFFqR5qRBdObAWLsjzLWtGGIencXPzTLveiaQwwiciapF7FgLlcIia9NUaViavQBdv6P3FzviaegmZtJSXfxl0wib/132', 1, 'zh_CN', '中国', '', '', '', 'oBSasxOGadD6Gd5-HF6FjtUJNXZs', '', 2, 1, 'ADD_SCENE_QR_CODE', '', '星标组', '[2]', 1569224897, 0, '0', '', 1, 1570254145, 1569287958),
(4, 34, 0, 0, 1, '何若焱', '\"\\u4f55\\u82e5\\u7131\"', 'http://thirdwx.qlogo.cn/mmopen/iatZI1Yp2aPIhorsAYYgpicQYAnYDBNicEic5iayaxnIZq4RbybVNeiad7beZXKVpDDicK5Esq43tgPBWDoJuFC1lhVluBFk8AWJf2Z/132', 0, 'zh_CN', '', '', '', '', 'oBSasxBU2xk2JPnP1x_5mtbDlQ1M', '', 2, 1, 'ADD_SCENE_QR_CODE', '', '星标组', '[2]', 1569163118, 0, '0', '', 1, 1570254145, 1569287958),
(5, 34, 0, 0, 1, 'flystone', '\"flystone\"', 'http://thirdwx.qlogo.cn/mmopen/7jOTIafB9k6e5erQKVrgMOEP1x3FKM94q0k7HAALibB0WwOLhLRPVRJJDRcLo5RXua1fytBsRwhM3cYcCbNsnOH7ibcSrvuo5ic/132', 1, 'zh_CN', '中国', '广东', '广州', '', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '', 2, 1, 'ADD_SCENE_QR_CODE', '', '其他', '[2]', 1569231878, 0, '0', '', 1, 1570254145, 1569287958),
(6, 34, 0, 0, 1, 'UI中国', '\"UI\\u4e2d\\u56fd\"', 'http://thirdwx.qlogo.cn/mmopen/7jOTIafB9k6RxhlicynFsqzHSC3CVaAdkzDJibg8MQQRcia4vwZt2ap2uXKCrE6pQEjR3hERXROHjPUBgdHyYRZ3aOnAWsIWR1s/132', 0, 'zh_CN', '', '', '', '', 'oBSasxGjfo7053Gelemw58C4oAwc', '', 2, 1, 'ADD_SCENE_QR_CODE', '', '星标组', '[2]', 1569297240, 0, '0', '', 1, 1570254145, 1569315518),
(7, 34, 0, 0, 1, '周凯', '\"\\u5468\\u51ef\"', 'http://thirdwx.qlogo.cn/mmopen/iatZI1Yp2aPKU8tXPlI2HO2oCEPEq5rRBZDwQ9PgESvrBvI2tkIpJG2NGNhA0unHbsxP3ImJjnSRVzMu4MscIbAmR8W7beDjB/132', 1, 'zh_CN', '中国', '四川', '成都', '', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '', 2, 1, 'ADD_SCENE_QR_CODE', '', '粉丝', '[2]', 1569384811, 0, '0', '', 1, 1570254145, 1569386740),
(8, 31, 0, 0, 1, '🐘 心之所向🐘', '\"\\ud83d\\udc18 \\u5fc3\\u4e4b\\u6240\\u5411\\ud83d\\udc18\"', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM4VFiaYnBD77jqvXaG55kz8cYgynjUAic5oNcrjkicjIGvVVyRYfLsiceojIlI709OKWPAQr95E2y2Ick6jSHSrIJXgtcn1VnDM4qE/132', 1, 'zh_CN', '中国', '湖南', '衡阳', '', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '', 2, 1, 'ADD_SCENE_QR_CODE', '', NULL, '[2]', 1568970767, 0, '0', '', 1, 1570430152, 1570277099),
(9, 31, 0, 0, 1, '、ζ低调ゐ走这条 街る', '\"\\u3001\\u03b6\\u4f4e\\u8c03\\u3090\\u8d70\\u8fd9\\u6761 \\u8857\\u308b\"', 'http://thirdwx.qlogo.cn/mmopen/BA8GZZ2EGwWjjLn9bP76eEhmg9zfsYuVlbdJT9y3Z5KJFrINxlCHvFX2sTxiaskvJAcAORVibwQQVpJictIv7icH9Q/132', 1, 'zh_CN', '中国', '河南', '郑州', '', 'oBSasxK1y2TGZk_xKIf-ZxWYM5rM', '', 0, 1, 'ADD_SCENE_QR_CODE', '', NULL, '[]', 1568970306, 0, '0', '', 1, 1570430152, 1570277099),
(10, 31, 0, 0, 1, '周凯', '\"\\u5468\\u51ef\"', 'http://thirdwx.qlogo.cn/mmopen/iatZI1Yp2aPKU8tXPlI2HO2oCEPEq5rRBZDwQ9PgESvrBvI2tkIpJG2NGNhA0unHbsxP3ImJjnSRVzMu4MscIbAmR8W7beDjB/132', 1, 'zh_CN', '中国', '四川', '成都', '', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '', 2, 1, 'ADD_SCENE_QR_CODE', '', NULL, '[2]', 1569384811, 0, '0', '', 1, 1570430152, 1570277099),
(11, 31, 0, 0, 1, '橙皮', '\"\\u6a59\\u76ae\"', 'http://thirdwx.qlogo.cn/mmopen/0YNSjjHibkfmbsIFFFqR5qRBdObAWLsjzLWtGGIencXPzTLveiaQwwiciapF7FgLlcIia9NUaViavQBdv6P3FzviaegmZtJSXfxl0wib/132', 1, 'zh_CN', '中国', '', '', '', 'oBSasxOGadD6Gd5-HF6FjtUJNXZs', '', 2, 1, 'ADD_SCENE_QR_CODE', '', NULL, '[2]', 1569224897, 0, '0', '', 1, 1570430153, 1570277099),
(12, 31, 0, 0, 1, '何若焱', '\"\\u4f55\\u82e5\\u7131\"', 'http://thirdwx.qlogo.cn/mmopen/iatZI1Yp2aPIhorsAYYgpicQYAnYDBNicEic5iayaxnIZq4RbybVNeiad7beZXKVpDDicK5Esq43tgPBWDoJuFC1lhVluBFk8AWJf2Z/132', 0, 'zh_CN', '', '', '', '', 'oBSasxBU2xk2JPnP1x_5mtbDlQ1M', '', 2, 1, 'ADD_SCENE_QR_CODE', '', NULL, '[2]', 1569163118, 0, '0', '', 1, 1570430153, 1570277099),
(13, 31, 0, 0, 1, 'flystone', '\"flystone\"', 'http://thirdwx.qlogo.cn/mmopen/7jOTIafB9k6e5erQKVrgMOEP1x3FKM94q0k7HAALibB0WwOLhLRPVRJJDRcLo5RXua1fytBsRwhM3cYcCbNsnOH7ibcSrvuo5ic/132', 1, 'zh_CN', '中国', '广东', '广州', '', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '', 2, 1, 'ADD_SCENE_QR_CODE', '', NULL, '[2]', 1569231878, 0, '0', '', 1, 1570430153, 1570277099),
(14, 31, 0, 0, 1, 'UI中国', '\"UI\\u4e2d\\u56fd\"', 'http://thirdwx.qlogo.cn/mmopen/7jOTIafB9k6RxhlicynFsqzHSC3CVaAdkzDJibg8MQQRcia4vwZt2ap2uXKCrE6pQEjR3hERXROHjPUBgdHyYRZ3aOnAWsIWR1s/132', 0, 'zh_CN', '', '', '', '', 'oBSasxGjfo7053Gelemw58C4oAwc', '', 2, 1, 'ADD_SCENE_QR_CODE', '', NULL, '[2]', 1569297240, 0, '0', '', 1, 1570430153, 1570277099);

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
  `local_cover` varchar(255) NOT NULL DEFAULT '',
  `media_url` varchar(255) DEFAULT NULL,
  `type` varchar(10) NOT NULL COMMENT '图片（image）、视频（video）、语音 （voice）、图文（news）音乐（music）',
  `des` varchar(150) DEFAULT '' COMMENT '视频描述',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(10) UNSIGNED DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lm_wx_material`
--

INSERT INTO `lm_wx_material` (`id`, `store_id`, `wx_aid`, `media_id`, `file_name`, `local_cover`, `media_url`, `type`, `des`, `create_time`, `update_time`) VALUES
(17, 1, 31, 'Mkk-XekVsp2Cvr5VktS-vWJohUlSRgKE0O3vNSzysB0', NULL, '', 'http://mmbiz.qpic.cn/mmbiz_png/nKp1y5rQibObCXqbVj5SL2ZsDxlJ7iaic7iaL0ubiac0ZceFOJ9LybTGsSM563OGB5IDfK7tvpczBEjLj9dyb06mI8g/0?wx_fmt=png', 'image', '', 1568768779, 1568768779),
(19, 1, 31, 'Mkk-XekVsp2Cvr5VktS-vTeRfZgpyG6WM3xEIYMqs4g', NULL, '', 'http://mmbiz.qpic.cn/mmbiz_jpg/nKp1y5rQibObCXqbVj5SL2ZsDxlJ7iaic7iaDqkayiaz14l4AHVlCAYyVicFqb0Q95iaaYabtveniag4mNUICBbaypPXjA/0?wx_fmt=jpeg', 'image', '', 1568770822, 1568770822),
(26, 1, 31, 'Mkk-XekVsp2Cvr5VktS-vf4uLVp3tFomLPazcjB6IOM', NULL, '', 'http://mmbiz.qpic.cn/mmbiz_png/nKp1y5rQibOafHyBKbh42d34tu7iagashY3TkAG8vQGvkn0jKYur0219iaibtkvyMP2UrXxPA6QcZOfkgBmd2kOZZA/0?wx_fmt=png', 'image', '', 1568856598, 1568856598),
(32, 1, 31, 'Mkk-XekVsp2Cvr5VktS-vZ7L6evjz2HyZQWuwq_JBLI', NULL, '', NULL, 'news', '', 1568858056, 1568858056),
(37, 1, 31, 'Mkk-XekVsp2Cvr5VktS-vWtBCrMpwwR_IHX2MpGrpoc', NULL, '', 'http://mmbiz.qpic.cn/mmbiz_png/nKp1y5rQibOYE5UibSIrwLn6mFYy8L2SN7HvCEAvQAGna6ZxmLotrx93hfqof9aoRmICxfIJjkTn8ZFdvO4wiaPAg/0?wx_fmt=png', 'image', '', 1568946808, 1568946808),
(40, 1, 31, 'Mkk-XekVsp2Cvr5VktS-vYvKCa97MeIyGRQM4b2F0ic', NULL, '', 'http://mmbiz.qpic.cn/mmbiz_png/nKp1y5rQibOaoSmicTHWTebJGx7b1sZe833Gzyt43TTwGdrJ1J1U6PNtXrQU8YBuoa703PdI2Ye62cxXOz0spKCQ/0?wx_fmt=png', 'image', '', 1569313687, 1569313687),
(46, 1, 31, 'Mkk-XekVsp2Cvr5VktS-vbu13GxWU-Q2o6WYU1f0uS4', NULL, '', 'http://mmbiz.qpic.cn/mmbiz_jpg/nKp1y5rQibOaoSmicTHWTebJGx7b1sZe83bcB5njdJprxnhhx1w2OJjzM0cQrvuG1FOlYAS7P9GkDdVENLicxT9OQ/0?wx_fmt=jpeg', 'image', '', 1569315715, 1569315715),
(48, 1, 31, 'Mkk-XekVsp2Cvr5VktS-valalpsXZ8Msh0VomkhdN4o', NULL, '', NULL, 'news', '', 1569315796, 1569315796),
(49, 1, 31, 'Mkk-XekVsp2Cvr5VktS-vfTtk2zqU3dV--4mLOwAK_0', NULL, '', NULL, 'news', '', 1569316866, 1569316866),
(50, 1, 31, 'Mkk-XekVsp2Cvr5VktS-vXTcP7375tpy32tuqnLX5XI', NULL, '', NULL, 'news', '', 1569317000, 1569317000),
(51, 1, 31, 'Mkk-XekVsp2Cvr5VktS-vYj8kWWMwGkbQRS-UDft53w', NULL, '', NULL, 'news', '', 1569317008, 1569317008),
(52, 1, 31, 'Mkk-XekVsp2Cvr5VktS-vYkXRp0qtw4yZ1uSv6xslQo', NULL, '', NULL, 'news', '', 1569317017, 1569317017),
(57, 1, 31, 'Mkk-XekVsp2Cvr5VktS-vbwGKUplOdrPabWWMKmT9V0', NULL, '/storage/uploads/20190925/d8f277c81eada3c8dbfbf4da5e6166ec.jpg', 'http://mmbiz.qpic.cn/mmbiz_jpg/nKp1y5rQibObBPLOQXuxRjEQT8Q8cksQeFEJQ6IMYDx9WXKLBcSk8s7DbEb6AbPABnsjPzJK9RVPOkrNfxVOy6A/0?wx_fmt=jpeg', 'image', '', 1569390216, 1569390216),
(58, 1, 31, 'Mkk-XekVsp2Cvr5VktS-vUiITu7E_h8B1SciMb-J8-o', NULL, '/storage/uploads/20190925/a51d175fd8238a39551518fc0474542a.jpg', 'http://mmbiz.qpic.cn/mmbiz_jpg/nKp1y5rQibObBPLOQXuxRjEQT8Q8cksQeZW2iaKdoiaG1JskE6MS0PfbAJPzMxt3lWHNGMibicthq2HmjiaSEnTpaLTg/0?wx_fmt=jpeg', 'image', '', 1569396856, 1569396856),
(59, 1, 31, 'Mkk-XekVsp2Cvr5VktS-vehQwCZXzWdVq0qC8NjOXAk', NULL, '/storage/uploads/20190925/de6a43a895bc773dfcb2e6df58e8cfe6.jpg', 'http://mmbiz.qpic.cn/mmbiz_jpg/nKp1y5rQibObBPLOQXuxRjEQT8Q8cksQenMzm9HCHcjzrkuc9eMMxBTgetwSAR1BhiaAH9ibUmoE1ibnvGfrpRNjZA/0?wx_fmt=jpeg', 'image', '', 1569396859, 1569396859);

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
(53, 1, 31, 32, 'Mkk-XekVsp2Cvr5VktS-vf4uLVp3tFomLPazcjB6IOM', NULL, 'http://mmbiz.qpic.cn/mmbiz_png/nKp1y5rQibOafHyBKbh42d34tu7iagashY3TkAG8vQGvkn0jKYur0219iaibtkvyMP2UrXxPA6QcZOfkgBmd2kOZZA/0?wx_fmt=png', '2', '1', 1, '1', '<p>1</p>', 'http://mp.weixin.qq.com/s?__biz=MzI5OTYxNjI2MQ==&mid=100000046&idx=1&sn=1e6384955fbc4351557633554e7b6778&chksm=6c9290445be519526ae64449e5026b1bbad6d170f585639c1367c2f34e5e4aa59d16609253b6#rd', '1', 1, 0, 0, 0),
(54, 1, 31, 32, 'Mkk-XekVsp2Cvr5VktS-vZUxI_gpEP8F61ypD7kPKao', NULL, '', '2', '2', 0, '2', '<p>2</p>', 'http://mp.weixin.qq.com/s?__biz=MzI5OTYxNjI2MQ==&mid=100000046&idx=2&sn=cb91de1204dc89ee0fb01732545a70c8&chksm=6c9290445be51952d2580b1e9fee7edb2df8bc8d55be597489e6a30fdd3ab1784e4c9a916238#rd', '2', 1, 0, 0, 0),
(56, 1, 31, 52, 'Mkk-XekVsp2Cvr5VktS-vSxbv_o0dCdKsECT5_AI3NE', '', 'http://mmbiz.qpic.cn/mmbiz_png/nKp1y5rQibOaoSmicTHWTebJGx7b1sZe83eII0woTg24p0PxjZltYLMrIbmbtsth9At2WvSL7gRbTnkCFzuQibxXA/0?wx_fmt=png', '测试', '测试', 1, '2', '<p>2</p>', 'http://mp.weixin.qq.com/s?__biz=MzI5OTYxNjI2MQ==&mid=100000080&idx=1&sn=3460a29e1fb0c0dfa610367fa81f4981&chksm=6c92903a5be5192c3c79fa346d4d73e273c513f3d268345b1641cfb6a03c7719cf8290d8bf72#rd', '', 1, 0, 0, 0),
(57, 1, 31, 50, 'Mkk-XekVsp2Cvr5VktS-vSxbv_o0dCdKsECT5_AI3NE', '', 'http://mmbiz.qpic.cn/mmbiz_png/nKp1y5rQibOaoSmicTHWTebJGx7b1sZe83eII0woTg24p0PxjZltYLMrIbmbtsth9At2WvSL7gRbTnkCFzuQibxXA/0?wx_fmt=png', '测试', '测试', 1, '1', '<p><img class=\"loadingclass\" id=\"loading_k0xm21s9\" src=\"https://demo.lemocms.com/static/plugins/ueditor/themes/default/images/spacer.gif\" title=\"正在上传...\"/></p>', 'http://mp.weixin.qq.com/s?__biz=MzI5OTYxNjI2MQ==&mid=100000078&idx=1&sn=fbbcc858628e9f53b465442a67c371ab&chksm=6c9290245be519321bb15aed12220c99bc8aa67e3bfc872be896e26a2d0559df237e2c38cec2#rd', '', 1, 0, 0, 0),
(58, 1, 31, 51, 'Mkk-XekVsp2Cvr5VktS-vSxbv_o0dCdKsECT5_AI3NE', '', 'http://mmbiz.qpic.cn/mmbiz_png/nKp1y5rQibOaoSmicTHWTebJGx7b1sZe83eII0woTg24p0PxjZltYLMrIbmbtsth9At2WvSL7gRbTnkCFzuQibxXA/0?wx_fmt=png', '测试', '测试', 1, '1', '<p><img class=\"loadingclass\" id=\"loading_k0xm21s9\" src=\"https://demo.lemocms.com/static/plugins/ueditor/themes/default/images/spacer.gif\" title=\"正在上传...\"/></p>', 'http://mp.weixin.qq.com/s?__biz=MzI5OTYxNjI2MQ==&mid=100000079&idx=1&sn=93dcfe2c22ee22b4a1e2c5ebaeb88a5e&chksm=6c9290255be519331634c392cf7de7445cb9699d0d3d2c484b08f7e54b93dc6987bae9debdd0#rd', '', 1, 0, 0, 0),
(59, 1, 31, 52, 'Mkk-XekVsp2Cvr5VktS-vSxbv_o0dCdKsECT5_AI3NE', '', 'http://mmbiz.qpic.cn/mmbiz_png/nKp1y5rQibOaoSmicTHWTebJGx7b1sZe83eII0woTg24p0PxjZltYLMrIbmbtsth9At2WvSL7gRbTnkCFzuQibxXA/0?wx_fmt=png', '测试', '测试', 1, '1', '<p><img class=\"loadingclass\" id=\"loading_k0xm21s9\" src=\"https://demo.lemocms.com/static/plugins/ueditor/themes/default/images/spacer.gif\" title=\"正在上传...\"/></p>', 'http://mp.weixin.qq.com/s?__biz=MzI5OTYxNjI2MQ==&mid=100000080&idx=1&sn=3460a29e1fb0c0dfa610367fa81f4981&chksm=6c92903a5be5192c3c79fa346d4d73e273c560cf03b768a616662b71a03c7719cf8290d8bf72#rd', '', 1, 0, 0, 0);

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
) ENGINE=InnoDB AVG_ROW_LENGTH=1638 DEFAULT CHARSET=utf8mb4 COMMENT='微信菜单';

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
  `media_id` int(11) NOT NULL,
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
(12, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568272389\",\"MsgType\":\"text\",\"Content\":\"23 \",\"MsgId\":\"22452262710150875\"}', '23 ', 'text', '', 1, 1568272389, 1568272390),
(13, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568272391\",\"MsgType\":\"text\",\"Content\":\"234 234\",\"MsgId\":\"22452261628455202\"}', '234 234', 'text', '', 1, 1568272391, 1568272392),
(14, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568272392\",\"MsgType\":\"text\",\"Content\":\"23 23\",\"MsgId\":\"22452262745190025\"}', '23 23', 'text', '', 1, 1568272392, 1568272392),
(15, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568272392\",\"MsgType\":\"text\",\"Content\":\"4223 42\",\"MsgId\":\"22452262901629290\"}', '4223 42', 'text', '', 1, 1568272392, 1568272393),
(16, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568272393\",\"MsgType\":\"text\",\"Content\":\"3 23\",\"MsgId\":\"22452259545480895\"}', '3 23', 'text', '', 1, 1568272393, 1568272393),
(20, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568272395\",\"MsgType\":\"text\",\"Content\":\"234 23\",\"MsgId\":\"22452260710734561\"}', '234 23', 'text', '', 1, 1568272395, 1568272395),
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
(172, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894373\",\"MsgType\":\"text\",\"Content\":\"\\u6536\\u5230\\u8d27\",\"MsgId\":\"22461166662519714\"}', '收到货', 'text', '', 1, 1568894373, 1568894374),
(173, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894373\",\"MsgType\":\"text\",\"Content\":\"\\u6c34\\u5cb8\\u4e1c\\u65b9\",\"MsgId\":\"22461164470895730\"}', '水岸东方', 'text', '', 1, 1568894373, 1568894374),
(174, 1, 31, 0, 7, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894420\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u54e6\",\"MsgId\":\"22461167310927605\"}', '你好哦', 'text', '', 1, 1568894420, 1568894421),
(175, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894434\",\"MsgType\":\"text\",\"Content\":\"$info\",\"MsgId\":\"22461167536870113\"}', '$info', 'text', '', 1, 1568894434, 1568894434),
(176, 1, 31, 0, 3, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894445\",\"MsgType\":\"text\",\"Content\":\"\\u67e5\\u8be2\",\"MsgId\":\"22461167360342800\"}', '查询', 'text', '', 1, 1568894445, 1568894445),
(177, 1, 31, 0, 3, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894451\",\"MsgType\":\"text\",\"Content\":\"\\u67e5\\u8be2\",\"MsgId\":\"22461167630751291\"}', '查询', 'text', '', 1, 1568894451, 1568894451),
(178, 1, 31, 0, 3, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894452\",\"MsgType\":\"text\",\"Content\":\"\\u67e5\\u8be2\",\"MsgId\":\"22461170705580887\"}', '查询', 'text', '', 1, 1568894452, 1568894452),
(179, 1, 31, 0, 3, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894452\",\"MsgType\":\"text\",\"Content\":\"\\u67e5\\u8be2\",\"MsgId\":\"22461170341163442\"}', '查询', 'text', '', 1, 1568894452, 1568894452),
(180, 1, 31, 0, 3, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894452\",\"MsgType\":\"text\",\"Content\":\"\\u67e5\\u8be2\",\"MsgId\":\"22461168486138256\"}', '查询', 'text', '', 1, 1568894452, 1568894453),
(181, 1, 31, 0, 3, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568894520\",\"MsgType\":\"text\",\"Content\":\"\\u67e5\\u8be2\",\"MsgId\":\"22461169726483801\"}', '查询', 'text', '', 1, 1568894520, 1568894520);
INSERT INTO `lm_wx_msg_history` (`id`, `store_id`, `wx_aid`, `media_id`, `keyword_id`, `nickname`, `openid`, `content_json`, `content`, `type`, `event`, `status`, `create_time`, `update_time`) VALUES
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
(319, 1, 31, 0, 3, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568970723\",\"MsgType\":\"text\",\"Content\":\"\\u67e5\\u8be2\",\"MsgId\":\"22462261971127568\"}', '查询', 'text', '', 1, 1568970723, 1568970724),
(321, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568971170\",\"MsgType\":\"image\",\"PicUrl\":\"http:\\/\\/mmbiz.qpic.cn\\/mmbiz_jpg\\/hrm4Dn6o0vSr3ib6MtFKQnf3SR9odvGLyzeicEEBxID9oybGbbLibmevNAVgVbKflvUTFFIaCjKlfo1mB8icdHA8tQ\\/0\",\"MsgId\":\"22462265413584093\",\"MediaId\":\"3qWYi2UckJWNDAxjrJ_S1GSbu2cJn6Ar7zU9aEAp6GqSFzZs9OXHwymrjrVvr9Ow\"}', 'http://mmbiz.qpic.cn/mmbiz_jpg/hrm4Dn6o0vSr3ib6MtFKQnf3SR9odvGLyzeicEEBxID9oybGbbLibmevNAVgVbKflvUTFFIaCjKlfo1mB8icdHA8tQ/0', 'image', '', 1, 1568971170, 1568971172),
(322, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568971194\",\"MsgType\":\"video\",\"MediaId\":\"uv7RanbSRba84YWFBVBRBUXIcn66PUqilzIYt8HKCtc7wD5YtHQxzatrPzS2Wai-\",\"ThumbMediaId\":\"d7QfTY1_GQb3SC0qSqwvYy2dzTaJa4MR2o_P0yBg7RbXZEAUmAw8kBe2dmt8-5Dj\",\"MsgId\":\"22462265765538182\"}', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568971194\",\"MsgType\":\"video\",\"MediaId\":\"uv7RanbSRba84YWFBVBRBUXIcn66PUqilzIYt8HKCtc7wD5YtHQxzatrPzS2Wai-\",\"ThumbMediaId\":\"d7QfTY1_GQb3SC0qSqwvYy2dzTaJa4MR2o_P0yBg7RbXZEAUmAw8kBe2dmt8-5Dj\",\"MsgId\":\"22462265765538182\"}', 'video', '', 1, 1568971194, 1568971195),
(323, 1, 31, 0, 0, '🐘 心之所向🐘', 'oBSasxCSibhs0U_O8d1QCLRR6woQ', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxCSibhs0U_O8d1QCLRR6woQ\",\"CreateTime\":\"1568971247\",\"MsgType\":\"image\",\"PicUrl\":\"http:\\/\\/mmbiz.qpic.cn\\/mmbiz_jpg\\/hrm4Dn6o0vSr3ib6MtFKQnf3SR9odvGLyzeicEEBxID9oybGbbLibmevNAVgVbKflvUTFFIaCjKlfo1mB8icdHA8tQ\\/0\",\"MsgId\":\"22462269944573997\",\"MediaId\":\"lR1a0Sb9Mfqc28PDWsEip5l66WRm5GH_a6OAgfsrdmvXCSkXtYp-cv7smsxd9KHx\"}', 'http://mmbiz.qpic.cn/mmbiz_jpg/hrm4Dn6o0vSr3ib6MtFKQnf3SR9odvGLyzeicEEBxID9oybGbbLibmevNAVgVbKflvUTFFIaCjKlfo1mB8icdHA8tQ/0', 'image', '', 1, 1568971247, 1568971250),
(324, 1, 31, 0, 0, '何若焱', 'oBSasxBU2xk2JPnP1x_5mtbDlQ1M', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxBU2xk2JPnP1x_5mtbDlQ1M\",\"CreateTime\":\"1569163118\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '', 'event', 'subscribe', 1, 1569163118, 1569163118),
(325, 1, 31, 0, 0, '橙皮', 'oBSasxOGadD6Gd5-HF6FjtUJNXZs', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOGadD6Gd5-HF6FjtUJNXZs\",\"CreateTime\":\"1569224897\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '', 'event', 'subscribe', 1, 1569224897, 1569224898),
(326, 1, 31, 0, 0, '橙皮', 'oBSasxOGadD6Gd5-HF6FjtUJNXZs', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOGadD6Gd5-HF6FjtUJNXZs\",\"CreateTime\":\"1569225999\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"https:\\/\\/demo.lemocms.com\\/admin\\/index\\/index.html\",\"MenuId\":\"426022765\"}', '', 'event', 'VIEW', 1, 1569225999, 1569225999),
(327, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569231878\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '', 'event', 'subscribe', 1, 1569231878, 1569231879),
(328, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569231913\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445271\",\"Longitude\":\"114.396652\",\"Precision\":\"65.000000\"}', '', 'event', 'LOCATION', 1, 1569231913, 1569231914),
(329, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569231922\",\"MsgType\":\"text\",\"Content\":\"\\u95ee\\u95ee\",\"MsgId\":\"22466001479821808\"}', '问问', 'text', '', 1, 1569231922, 1569231923),
(330, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569231923\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445271\",\"Longitude\":\"114.396637\",\"Precision\":\"65.000000\"}', '', 'event', 'LOCATION', 1, 1569231923, 1569231923),
(331, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569231924\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445271\",\"Longitude\":\"114.396637\",\"Precision\":\"65.000000\"}', '', 'event', 'LOCATION', 1, 1569231924, 1569231925),
(332, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569231929\",\"MsgType\":\"text\",\"Content\":\"\\u53bb\",\"MsgId\":\"22465999610814848\"}', '去', 'text', '', 1, 1569231929, 1569231930),
(333, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569231930\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445292\",\"Longitude\":\"114.396545\",\"Precision\":\"98.397247\"}', '', 'event', 'LOCATION', 1, 1569231930, 1569231931),
(334, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569231936\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445288\",\"Longitude\":\"114.396454\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569231936, 1569231936),
(335, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569231942\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445454\",\"Longitude\":\"114.396553\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569231942, 1569231942),
(336, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569231947\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445454\",\"Longitude\":\"114.396553\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569231947, 1569231947),
(337, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569231953\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445454\",\"Longitude\":\"114.396553\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569231953, 1569231953),
(338, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569231958\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445454\",\"Longitude\":\"114.396553\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569231958, 1569231958),
(339, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569231959\",\"MsgType\":\"text\",\"Content\":\"111\",\"MsgId\":\"22466000436435174\"}', '111', 'text', '', 1, 1569231959, 1569231959),
(340, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569231964\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445454\",\"Longitude\":\"114.396553\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569231964, 1569231964),
(341, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569231970\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445454\",\"Longitude\":\"114.396553\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569231970, 1569231970),
(342, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569231976\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445454\",\"Longitude\":\"114.396553\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569231976, 1569231976),
(343, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569231981\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445454\",\"Longitude\":\"114.396553\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569231981, 1569231981),
(344, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569231987\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445454\",\"Longitude\":\"114.396553\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569231987, 1569231987),
(345, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569231992\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445454\",\"Longitude\":\"114.396553\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569231992, 1569231992),
(346, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569231998\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445454\",\"Longitude\":\"114.396553\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569231998, 1569231998),
(347, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232004\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445454\",\"Longitude\":\"114.396553\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569232004, 1569232004),
(348, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232010\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445454\",\"Longitude\":\"114.396553\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569232010, 1569232010),
(349, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232016\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445454\",\"Longitude\":\"114.396553\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569232016, 1569232016);
INSERT INTO `lm_wx_msg_history` (`id`, `store_id`, `wx_aid`, `media_id`, `keyword_id`, `nickname`, `openid`, `content_json`, `content`, `type`, `event`, `status`, `create_time`, `update_time`) VALUES
(350, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232021\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445454\",\"Longitude\":\"114.396553\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569232021, 1569232021),
(351, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232027\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445454\",\"Longitude\":\"114.396553\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569232027, 1569232027),
(352, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232032\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445454\",\"Longitude\":\"114.396553\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232032, 1569232032),
(353, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232037\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445454\",\"Longitude\":\"114.396553\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569232037, 1569232037),
(354, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232042\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569232042, 1569232042),
(355, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232048\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232048, 1569232048),
(356, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232053\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232053, 1569232053),
(357, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232059\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232059, 1569232059),
(358, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232065\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232065, 1569232065),
(359, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232071\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232071, 1569232071),
(360, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232076\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569232076, 1569232076),
(361, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232082\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232082, 1569232082),
(362, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232088\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232088, 1569232088),
(363, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232093\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232093, 1569232093),
(364, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232098\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232098, 1569232098),
(365, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232103\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232103, 1569232103),
(366, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232109\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232109, 1569232109),
(367, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232115\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"50.000000\"}', '', 'event', 'LOCATION', 1, 1569232115, 1569232115),
(368, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232121\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232121, 1569232121),
(369, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232127\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232127, 1569232127),
(370, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232132\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569232132, 1569232132),
(371, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232138\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232138, 1569232138),
(372, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232143\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232143, 1569232143),
(373, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232149\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232149, 1569232149),
(374, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232155\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232155, 1569232155),
(375, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232160\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232160, 1569232160),
(376, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232166\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232166, 1569232166),
(377, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232171\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232171, 1569232171),
(378, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232177\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232177, 1569232177),
(379, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232182\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232182, 1569232182),
(380, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232187\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232187, 1569232187),
(381, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232192\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232192, 1569232192),
(382, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232197\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232197, 1569232197),
(383, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232203\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232203, 1569232203),
(384, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232208\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232208, 1569232208),
(385, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232214\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232214, 1569232214),
(386, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232220\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232220, 1569232220),
(387, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232226\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232226, 1569232226),
(388, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232231\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569232231, 1569232231),
(389, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232236\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569232236, 1569232236),
(390, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232241\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569232241, 1569232241),
(391, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232247\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232247, 1569232247),
(392, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232253\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232253, 1569232253),
(393, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232258\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232258, 1569232258),
(394, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232264\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232264, 1569232264),
(395, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232270\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232270, 1569232270),
(396, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232275\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232275, 1569232275),
(397, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232281\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232281, 1569232281),
(398, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232287\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569232287, 1569232287),
(399, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232293\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232293, 1569232293),
(400, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232298\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232298, 1569232298),
(401, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232303\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232303, 1569232303),
(402, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232308\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232308, 1569232308),
(403, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232314\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232314, 1569232314),
(404, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232319\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569232319, 1569232319),
(405, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232325\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569232325, 1569232325),
(406, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232330\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569232330, 1569232330),
(407, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232336\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232336, 1569232336),
(408, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232341\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232341, 1569232341),
(409, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232347\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232347, 1569232347),
(410, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232353\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232353, 1569232353),
(411, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232359\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569232359, 1569232359),
(412, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232364\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569232364, 1569232364),
(413, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232369\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569232369, 1569232369),
(414, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232375\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232375, 1569232375),
(415, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232381\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569232381, 1569232381),
(416, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232387\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569232387, 1569232387),
(417, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232392\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569232392, 1569232392),
(418, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232397\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569232397, 1569232397),
(419, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232403\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569232403, 1569232403),
(420, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232409\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569232409, 1569232409),
(421, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232414\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569232414, 1569232414),
(422, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232419\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569232419, 1569232419),
(423, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232425\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569232425, 1569232425),
(424, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232430\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569232430, 1569232430),
(425, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232433\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569232433, 1569232433),
(426, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232433\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569232433, 1569232434),
(427, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232439\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232439, 1569232439),
(428, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232445\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569232445, 1569232445),
(429, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232451\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569232451, 1569232451),
(430, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232457\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232457, 1569232457),
(431, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232463\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232463, 1569232463),
(432, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232469\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232469, 1569232469),
(433, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232475\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569232475, 1569232475),
(434, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232481\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569232481, 1569232481),
(435, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232486\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569232486, 1569232486),
(436, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232491\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"10.000000\"}', '', 'event', 'LOCATION', 1, 1569232491, 1569232491),
(437, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232497\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232497, 1569232497),
(438, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232502\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232502, 1569232502),
(439, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232508\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232508, 1569232508),
(440, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232514\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232514, 1569232514),
(441, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232519\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232519, 1569232519),
(442, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232525\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232525, 1569232525),
(443, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232672\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445459\",\"Longitude\":\"114.396591\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569232672, 1569232673),
(444, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232677\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445316\",\"Longitude\":\"114.396683\",\"Precision\":\"65.000000\"}', '', 'event', 'LOCATION', 1, 1569232677, 1569232677),
(445, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232790\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445265\",\"Longitude\":\"114.396721\",\"Precision\":\"65.000000\"}', '', 'event', 'LOCATION', 1, 1569232790, 1569232790),
(446, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232790\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445265\",\"Longitude\":\"114.396721\",\"Precision\":\"65.000000\"}', '', 'event', 'LOCATION', 1, 1569232790, 1569232790),
(447, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232793\",\"MsgType\":\"text\",\"Content\":\"\\u54c8\\u54c8\",\"MsgId\":\"22466010363810110\"}', '哈哈', 'text', '', 1, 1569232793, 1569232794),
(448, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232806\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445269\",\"Longitude\":\"114.396706\",\"Precision\":\"65.000000\"}', '', 'event', 'LOCATION', 1, 1569232806, 1569232806),
(449, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232824\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445271\",\"Longitude\":\"114.396698\",\"Precision\":\"65.000000\"}', '', 'event', 'LOCATION', 1, 1569232824, 1569232825),
(450, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232851\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445272\",\"Longitude\":\"114.396690\",\"Precision\":\"65.000000\"}', '', 'event', 'LOCATION', 1, 1569232851, 1569232852),
(451, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232886\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445269\",\"Longitude\":\"114.396606\",\"Precision\":\"65.000000\"}', '', 'event', 'LOCATION', 1, 1569232886, 1569232886),
(452, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232901\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445269\",\"Longitude\":\"114.396606\",\"Precision\":\"65.000000\"}', '', 'event', 'LOCATION', 1, 1569232901, 1569232901),
(453, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232910\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445280\",\"Longitude\":\"114.396667\",\"Precision\":\"50.000000\"}', '', 'event', 'LOCATION', 1, 1569232910, 1569232910),
(454, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232916\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445280\",\"Longitude\":\"114.396667\",\"Precision\":\"100.000000\"}', '', 'event', 'LOCATION', 1, 1569232916, 1569232916),
(455, 1, 31, 0, 0, 'flystone', 'oBSasxPs-IA9dp03EcmHmPmQ88Mw', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxPs-IA9dp03EcmHmPmQ88Mw\",\"CreateTime\":\"1569232922\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.445280\",\"Longitude\":\"114.396667\",\"Precision\":\"50.000000\"}', '', 'event', 'LOCATION', 1, 1569232922, 1569232922),
(456, 1, 31, 0, 0, '。。。', 'oBSasxH0DUpC2-UHWeRrFwULX7U0', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxH0DUpC2-UHWeRrFwULX7U0\",\"CreateTime\":\"1569294533\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '', 'event', 'subscribe', 1, 1569294533, 1569294534),
(458, 1, 31, 0, 2, '。。。', 'oBSasxH0DUpC2-UHWeRrFwULX7U0', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxH0DUpC2-UHWeRrFwULX7U0\",\"CreateTime\":\"1569294557\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22466896556933818\"}', '你好', 'text', '', 1, 1569294557, 1569294558),
(459, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569384812\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '', 'event', 'subscribe', 1, 1569384812, 1569384812),
(460, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569384820\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568455\",\"Longitude\":\"104.014328\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569384820, 1569384820),
(461, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569384826\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568455\",\"Longitude\":\"104.014343\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569384826, 1569384826),
(462, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569384833\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568455\",\"Longitude\":\"104.014336\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569384833, 1569384833),
(463, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569384837\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568270\",\"Longitude\":\"104.014343\",\"Precision\":\"36.000000\"}', '', 'event', 'LOCATION', 1, 1569384837, 1569384837),
(464, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569384842\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568302\",\"Longitude\":\"104.014343\",\"Precision\":\"13.000000\"}', '', 'event', 'LOCATION', 1, 1569384842, 1569384842),
(465, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569384847\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568296\",\"Longitude\":\"104.014366\",\"Precision\":\"19.000000\"}', '', 'event', 'LOCATION', 1, 1569384847, 1569384847),
(466, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569384852\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568295\",\"Longitude\":\"104.014374\",\"Precision\":\"11.000000\"}', '', 'event', 'LOCATION', 1, 1569384852, 1569384852),
(467, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569384857\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568295\",\"Longitude\":\"104.014374\",\"Precision\":\"9.000000\"}', '', 'event', 'LOCATION', 1, 1569384857, 1569384857),
(468, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569384862\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568296\",\"Longitude\":\"104.014374\",\"Precision\":\"11.000000\"}', '', 'event', 'LOCATION', 1, 1569384862, 1569384862),
(469, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569384867\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568296\",\"Longitude\":\"104.014374\",\"Precision\":\"23.000000\"}', '', 'event', 'LOCATION', 1, 1569384867, 1569384867),
(470, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569384872\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568296\",\"Longitude\":\"104.014374\",\"Precision\":\"35.000000\"}', '', 'event', 'LOCATION', 1, 1569384872, 1569384872),
(471, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569384877\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568296\",\"Longitude\":\"104.014374\",\"Precision\":\"24.000000\"}', '', 'event', 'LOCATION', 1, 1569384877, 1569384877),
(472, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569384882\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568298\",\"Longitude\":\"104.014381\",\"Precision\":\"15.000000\"}', '', 'event', 'LOCATION', 1, 1569384882, 1569384882),
(473, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569384887\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568298\",\"Longitude\":\"104.014374\",\"Precision\":\"12.000000\"}', '', 'event', 'LOCATION', 1, 1569384887, 1569384887),
(474, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569384892\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568300\",\"Longitude\":\"104.014374\",\"Precision\":\"15.000000\"}', '', 'event', 'LOCATION', 1, 1569384892, 1569384892),
(475, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569384897\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568300\",\"Longitude\":\"104.014374\",\"Precision\":\"25.000000\"}', '', 'event', 'LOCATION', 1, 1569384897, 1569384897),
(476, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569384902\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568300\",\"Longitude\":\"104.014374\",\"Precision\":\"38.000000\"}', '', 'event', 'LOCATION', 1, 1569384902, 1569384902),
(477, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569384907\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568300\",\"Longitude\":\"104.014374\",\"Precision\":\"79.000000\"}', '', 'event', 'LOCATION', 1, 1569384907, 1569384907),
(478, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569384912\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568300\",\"Longitude\":\"104.014374\",\"Precision\":\"134.000000\"}', '', 'event', 'LOCATION', 1, 1569384912, 1569384912),
(479, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569384917\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568300\",\"Longitude\":\"104.014374\",\"Precision\":\"165.000000\"}', '', 'event', 'LOCATION', 1, 1569384917, 1569384917),
(480, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569384922\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568300\",\"Longitude\":\"104.014374\",\"Precision\":\"219.000000\"}', '', 'event', 'LOCATION', 1, 1569384922, 1569384922),
(481, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569384929\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568300\",\"Longitude\":\"104.014374\",\"Precision\":\"256.000000\"}', '', 'event', 'LOCATION', 1, 1569384929, 1569384929),
(482, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569384933\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568302\",\"Longitude\":\"104.014374\",\"Precision\":\"210.000000\"}', '', 'event', 'LOCATION', 1, 1569384933, 1569384933),
(483, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569384938\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568302\",\"Longitude\":\"104.014374\",\"Precision\":\"128.000000\"}', '', 'event', 'LOCATION', 1, 1569384938, 1569384938),
(484, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569384943\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568302\",\"Longitude\":\"104.014374\",\"Precision\":\"64.000000\"}', '', 'event', 'LOCATION', 1, 1569384943, 1569384943),
(485, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569384948\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568302\",\"Longitude\":\"104.014374\",\"Precision\":\"65.000000\"}', '', 'event', 'LOCATION', 1, 1569384948, 1569384948),
(486, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569384953\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568302\",\"Longitude\":\"104.014374\",\"Precision\":\"61.000000\"}', '', 'event', 'LOCATION', 1, 1569384953, 1569384953),
(487, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569384958\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568302\",\"Longitude\":\"104.014374\",\"Precision\":\"51.000000\"}', '', 'event', 'LOCATION', 1, 1569384958, 1569384958),
(488, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569384963\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568302\",\"Longitude\":\"104.014374\",\"Precision\":\"49.000000\"}', '', 'event', 'LOCATION', 1, 1569384963, 1569384963);
INSERT INTO `lm_wx_msg_history` (`id`, `store_id`, `wx_aid`, `media_id`, `keyword_id`, `nickname`, `openid`, `content_json`, `content`, `type`, `event`, `status`, `create_time`, `update_time`) VALUES
(489, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569384968\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568302\",\"Longitude\":\"104.014374\",\"Precision\":\"48.000000\"}', '', 'event', 'LOCATION', 1, 1569384968, 1569384968),
(490, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569384973\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568302\",\"Longitude\":\"104.014374\",\"Precision\":\"80.000000\"}', '', 'event', 'LOCATION', 1, 1569384973, 1569384973),
(491, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569384978\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568302\",\"Longitude\":\"104.014374\",\"Precision\":\"58.000000\"}', '', 'event', 'LOCATION', 1, 1569384978, 1569384979),
(492, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569384983\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568302\",\"Longitude\":\"104.014374\",\"Precision\":\"36.000000\"}', '', 'event', 'LOCATION', 1, 1569384983, 1569384983),
(493, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569384988\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568302\",\"Longitude\":\"104.014374\",\"Precision\":\"62.000000\"}', '', 'event', 'LOCATION', 1, 1569384988, 1569384988),
(494, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569384993\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568302\",\"Longitude\":\"104.014374\",\"Precision\":\"68.000000\"}', '', 'event', 'LOCATION', 1, 1569384993, 1569384993),
(495, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569384997\",\"MsgType\":\"text\",\"Content\":\"\\/:jump\\ue415\\ue409\\/:shake\",\"MsgId\":\"22468192571415760\"}', '/:jump/:shake', 'text', '', 1, 1569384997, 1569384998),
(496, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569384998\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568302\",\"Longitude\":\"104.014374\",\"Precision\":\"40.000000\"}', '', 'event', 'LOCATION', 1, 1569384998, 1569384998),
(497, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385003\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568302\",\"Longitude\":\"104.014374\",\"Precision\":\"39.000000\"}', '', 'event', 'LOCATION', 1, 1569385003, 1569385003),
(498, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385008\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568302\",\"Longitude\":\"104.014374\",\"Precision\":\"32.000000\"}', '', 'event', 'LOCATION', 1, 1569385008, 1569385008),
(499, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385013\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568302\",\"Longitude\":\"104.014374\",\"Precision\":\"31.000000\"}', '', 'event', 'LOCATION', 1, 1569385013, 1569385013),
(500, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385018\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568302\",\"Longitude\":\"104.014374\",\"Precision\":\"32.000000\"}', '', 'event', 'LOCATION', 1, 1569385018, 1569385018),
(501, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385024\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568302\",\"Longitude\":\"104.014374\",\"Precision\":\"40.000000\"}', '', 'event', 'LOCATION', 1, 1569385024, 1569385024),
(502, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385028\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568300\",\"Longitude\":\"104.014374\",\"Precision\":\"60.000000\"}', '', 'event', 'LOCATION', 1, 1569385028, 1569385029),
(503, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385033\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568302\",\"Longitude\":\"104.014374\",\"Precision\":\"87.000000\"}', '', 'event', 'LOCATION', 1, 1569385033, 1569385033),
(504, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385038\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568302\",\"Longitude\":\"104.014381\",\"Precision\":\"158.000000\"}', '', 'event', 'LOCATION', 1, 1569385038, 1569385038),
(505, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385043\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568300\",\"Longitude\":\"104.014374\",\"Precision\":\"53.000000\"}', '', 'event', 'LOCATION', 1, 1569385043, 1569385043),
(506, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385048\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568300\",\"Longitude\":\"104.014374\",\"Precision\":\"27.000000\"}', '', 'event', 'LOCATION', 1, 1569385048, 1569385048),
(507, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385053\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568300\",\"Longitude\":\"104.014374\",\"Precision\":\"24.000000\"}', '', 'event', 'LOCATION', 1, 1569385053, 1569385053),
(508, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385058\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568300\",\"Longitude\":\"104.014374\",\"Precision\":\"23.000000\"}', '', 'event', 'LOCATION', 1, 1569385058, 1569385058),
(509, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385063\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568300\",\"Longitude\":\"104.014374\",\"Precision\":\"23.000000\"}', '', 'event', 'LOCATION', 1, 1569385063, 1569385063),
(510, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385068\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568300\",\"Longitude\":\"104.014374\",\"Precision\":\"24.000000\"}', '', 'event', 'LOCATION', 1, 1569385068, 1569385068),
(511, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385073\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568300\",\"Longitude\":\"104.014374\",\"Precision\":\"46.000000\"}', '', 'event', 'LOCATION', 1, 1569385073, 1569385073),
(512, 1, 31, 0, 2, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385077\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22468193191567922\"}', '你好', 'text', '', 1, 1569385077, 1569385078),
(513, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385078\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568300\",\"Longitude\":\"104.014374\",\"Precision\":\"98.000000\"}', '', 'event', 'LOCATION', 1, 1569385078, 1569385078),
(514, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385083\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568300\",\"Longitude\":\"104.014374\",\"Precision\":\"155.000000\"}', '', 'event', 'LOCATION', 1, 1569385083, 1569385083),
(515, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385088\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568300\",\"Longitude\":\"104.014374\",\"Precision\":\"236.000000\"}', '', 'event', 'LOCATION', 1, 1569385088, 1569385089),
(516, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385093\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568300\",\"Longitude\":\"104.014374\",\"Precision\":\"228.000000\"}', '', 'event', 'LOCATION', 1, 1569385093, 1569385093),
(517, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385098\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568300\",\"Longitude\":\"104.014374\",\"Precision\":\"186.000000\"}', '', 'event', 'LOCATION', 1, 1569385098, 1569385098),
(518, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385103\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568300\",\"Longitude\":\"104.014374\",\"Precision\":\"91.000000\"}', '', 'event', 'LOCATION', 1, 1569385103, 1569385103),
(519, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385108\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568300\",\"Longitude\":\"104.014374\",\"Precision\":\"62.000000\"}', '', 'event', 'LOCATION', 1, 1569385108, 1569385108),
(520, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385113\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568300\",\"Longitude\":\"104.014374\",\"Precision\":\"76.000000\"}', '', 'event', 'LOCATION', 1, 1569385113, 1569385113),
(521, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385118\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568302\",\"Longitude\":\"104.014374\",\"Precision\":\"108.000000\"}', '', 'event', 'LOCATION', 1, 1569385118, 1569385118),
(522, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385130\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568302\",\"Longitude\":\"104.014374\",\"Precision\":\"107.000000\"}', '', 'event', 'LOCATION', 1, 1569385130, 1569385131),
(523, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385135\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568382\",\"Longitude\":\"104.014320\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569385135, 1569385135),
(524, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385141\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568371\",\"Longitude\":\"104.014305\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569385141, 1569385141),
(525, 1, 31, 0, 3, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385146\",\"MsgType\":\"text\",\"Content\":\"\\u67e5\\u8be2\",\"MsgId\":\"22468191612790841\"}', '查询', 'text', '', 1, 1569385146, 1569385146),
(526, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385147\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568371\",\"Longitude\":\"104.014305\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569385147, 1569385147),
(527, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385153\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568405\",\"Longitude\":\"104.014336\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569385153, 1569385153),
(528, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385159\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568405\",\"Longitude\":\"104.014336\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569385159, 1569385159),
(529, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385164\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568340\",\"Longitude\":\"104.014359\",\"Precision\":\"57.000000\"}', '', 'event', 'LOCATION', 1, 1569385164, 1569385164),
(530, 1, 31, 0, 8, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385165\",\"MsgType\":\"text\",\"Content\":\"\\u56fe\\u7247\",\"MsgId\":\"22468192501389591\"}', '图片', 'text', '', 1, 1569385165, 1569385165),
(531, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385169\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568340\",\"Longitude\":\"104.014359\",\"Precision\":\"48.000000\"}', '', 'event', 'LOCATION', 1, 1569385169, 1569385169),
(532, 1, 31, 0, 2, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385174\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22468189958877220\"}', '你好', 'text', '', 1, 1569385174, 1569385174),
(533, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385174\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568340\",\"Longitude\":\"104.014351\",\"Precision\":\"28.000000\"}', '', 'event', 'LOCATION', 1, 1569385174, 1569385174),
(534, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385179\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568340\",\"Longitude\":\"104.014351\",\"Precision\":\"27.000000\"}', '', 'event', 'LOCATION', 1, 1569385179, 1569385180),
(535, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385185\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568342\",\"Longitude\":\"104.014336\",\"Precision\":\"30.000000\"}', '', 'event', 'LOCATION', 1, 1569385185, 1569385185),
(536, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385189\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568342\",\"Longitude\":\"104.014343\",\"Precision\":\"22.000000\"}', '', 'event', 'LOCATION', 1, 1569385189, 1569385189),
(537, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385194\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568342\",\"Longitude\":\"104.014343\",\"Precision\":\"20.000000\"}', '', 'event', 'LOCATION', 1, 1569385194, 1569385194),
(538, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385199\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568342\",\"Longitude\":\"104.014343\",\"Precision\":\"26.000000\"}', '', 'event', 'LOCATION', 1, 1569385199, 1569385199),
(539, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385204\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568342\",\"Longitude\":\"104.014343\",\"Precision\":\"75.000000\"}', '', 'event', 'LOCATION', 1, 1569385204, 1569385204),
(540, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385209\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568342\",\"Longitude\":\"104.014343\",\"Precision\":\"136.000000\"}', '', 'event', 'LOCATION', 1, 1569385209, 1569385209),
(541, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385214\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568342\",\"Longitude\":\"104.014343\",\"Precision\":\"127.000000\"}', '', 'event', 'LOCATION', 1, 1569385214, 1569385214),
(542, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385219\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568342\",\"Longitude\":\"104.014343\",\"Precision\":\"48.000000\"}', '', 'event', 'LOCATION', 1, 1569385219, 1569385219),
(543, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385224\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568342\",\"Longitude\":\"104.014343\",\"Precision\":\"72.000000\"}', '', 'event', 'LOCATION', 1, 1569385224, 1569385224),
(544, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569385229\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568342\",\"Longitude\":\"104.014343\",\"Precision\":\"57.000000\"}', '', 'event', 'LOCATION', 1, 1569385229, 1569385229),
(545, 1, 31, 0, 0, '周凯', 'oBSasxOrNTAGtcrkOFG_8gKQ7HfI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxOrNTAGtcrkOFG_8gKQ7HfI\",\"CreateTime\":\"1569386617\",\"MsgType\":\"event\",\"Event\":\"LOCATION\",\"Latitude\":\"30.568359\",\"Longitude\":\"104.014313\",\"Precision\":\"53.000000\"}', '', 'event', 'LOCATION', 1, 1569386617, 1569386617),
(546, 1, 31, 0, 0, '小康啊我是', 'oBSasxEcCdsysBO1YWJnaW82KiRM', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxEcCdsysBO1YWJnaW82KiRM\",\"CreateTime\":\"1569460668\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '', 'event', 'subscribe', 1, 1569460668, 1569460669),
(547, 1, 31, 0, 0, '小康啊我是', 'oBSasxEcCdsysBO1YWJnaW82KiRM', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxEcCdsysBO1YWJnaW82KiRM\",\"CreateTime\":\"1569460674\",\"MsgType\":\"text\",\"Content\":\"\\u6d4b\\u8bd5\",\"MsgId\":\"22469274753078859\"}', '测试', 'text', '', 1, 1569460674, 1569460674),
(548, 1, 31, 0, 0, '小康啊我是', 'oBSasxEcCdsysBO1YWJnaW82KiRM', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxEcCdsysBO1YWJnaW82KiRM\",\"CreateTime\":\"1569460688\",\"MsgType\":\"image\",\"PicUrl\":\"http:\\/\\/mmbiz.qpic.cn\\/mmbiz_jpg\\/4bSxwia4PWPgut6KbEDD4Tz7QyFzgJYRiaS18j7t01OLGtW1pzmcXbGricMdFiaDJeRHU2R0JGnrz9OSNYbw5InhRA\\/0\",\"MsgId\":\"22469275571813930\",\"MediaId\":\"HjWu_rFYUQnGWWzc59ceCL9ZWUIwglFIOUp8NslWXMCUFE6yy03TYfbjnCqcNu9S\"}', 'http://mmbiz.qpic.cn/mmbiz_jpg/4bSxwia4PWPgut6KbEDD4Tz7QyFzgJYRiaS18j7t01OLGtW1pzmcXbGricMdFiaDJeRHU2R0JGnrz9OSNYbw5InhRA/0', 'image', '', 1, 1569460688, 1569460689),
(549, 1, 31, 0, 0, ' ', 'oBSasxM45uQA71o5C6HcItTMG2RI', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxM45uQA71o5C6HcItTMG2RI\",\"CreateTime\":\"1569466266\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '', 'event', 'subscribe', 1, 1569466266, 1569466266),
(550, 1, 31, 0, 0, '七王爷', 'oBSasxGKWw4B0ABfi2GGDnClap-M', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxGKWw4B0ABfi2GGDnClap-M\",\"CreateTime\":\"1569551993\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '', 'event', 'subscribe', 1, 1569551993, 1569551993),
(551, 1, 31, 0, 0, '七王爷', 'oBSasxGKWw4B0ABfi2GGDnClap-M', '{\"ToUserName\":\"gh_8b042cc4ccf9\",\"FromUserName\":\"oBSasxGKWw4B0ABfi2GGDnClap-M\",\"CreateTime\":\"1569551996\",\"MsgType\":\"text\",\"Content\":\"hello\",\"MsgId\":\"22470579401836481\"}', 'hello', 'text', '', 1, 1569551996, 1569551997);

-- --------------------------------------------------------

--
-- Table structure for table `lm_wx_qrcode`
--

CREATE TABLE `lm_wx_qrcode` (
  `id` int(10) UNSIGNED NOT NULL,
  `store_id` int(10) UNSIGNED DEFAULT '1' COMMENT '商户id',
  `wx_aid` int(11) DEFAULT NULL COMMENT '公众号id',
  `name` varchar(50) DEFAULT '' COMMENT '场景名称',
  `keyword` varchar(100) DEFAULT '' COMMENT '关联关键字',
  `scene_id` int(10) UNSIGNED DEFAULT '0' COMMENT '场景ID',
  `scene_str` varchar(64) DEFAULT '' COMMENT '场景值',
  `ticket` varchar(250) DEFAULT '' COMMENT 'ticket',
  `expire_seconds` int(10) UNSIGNED DEFAULT '2592000' COMMENT '有效期',
  `subnum` int(10) UNSIGNED DEFAULT '0' COMMENT '扫描次数',
  `type` varchar(10) DEFAULT '' COMMENT '二维码类型',
  `extra` int(10) UNSIGNED DEFAULT '0',
  `url` varchar(80) DEFAULT '' COMMENT 'url',
  `end_time` int(10) DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:正常)',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) UNSIGNED DEFAULT '0' COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='微信_二维码表';

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='回复表';

--
-- Dumping data for table `lm_wx_reply`
--

INSERT INTO `lm_wx_reply` (`id`, `store_id`, `wx_aid`, `rule`, `keyword`, `type`, `msg_type`, `data`, `material_id`, `status`, `create_time`, `update_time`) VALUES
(1, 1, 31, '12852', '你好吗', 'subscribe', 'image', '很好', 12, 1, 1524204226, 1568970661),
(2, 1, 31, '12852', '你好', 'keyword', 'text', '你好，很高兴为你服务，', NULL, 1, 0, 1524204244),
(3, 1, 31, '12852', '查询', 'keyword', 'text', '那不是我的菜', NULL, 1, 0, 1524204255),
(4, 1, 31, '售后退货', '是吗1213121111333333', 'default', 'image', '售后退货，七天无理由退货11', 0, 1, 0, 1569231951),
(5, 1, 31, '售后退货', NULL, 'keyword', 'news', '售后退货，七天无理由退货', NULL, 1, 0, 1524446154),
(6, 1, 31, '欢迎关注lemocms', '你好1', 'keyword', 'text', '你好，很高兴为你服务，', 0, 1, 0, 1568880267),
(7, 1, 31, NULL, '你好哦', 'keyword', 'news', '', 30, 1, 1568880788, 1568880788),
(8, 1, 31, NULL, '图片', 'keyword', 'image', '', 12, 1, 1568940255, 1568940255);

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
(1, 2, '星标组', 1, 31, 1, 1568000723, 1569723107),
(2, 100, '粉丝', 1, 31, 1, 1568011092, 1569723107),
(3, 101, '其他', 1, 31, 1, 1568011258, 1569723107),
(4, 102, '好友', 1, 31, 1, 1568011277, 1569723107);

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
-- Indexes for table `lm_config`
--
ALTER TABLE `lm_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `lm_link`
--
ALTER TABLE `lm_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lm_oauth2_client`
--
ALTER TABLE `lm_oauth2_client`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`appid`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_qrcid` (`scene_id`),
  ADD KEY `ticket` (`ticket`(191));

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
-- AUTO_INCREMENT for table `lm_admin`
--
ALTER TABLE `lm_admin`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '管理员ID', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lm_admin_log`
--
ALTER TABLE `lm_admin_log`
  MODIFY `id` bigint(16) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表id';

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `lm_auth_group`
--
ALTER TABLE `lm_auth_group`
  MODIFY `id` smallint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '分组id', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lm_auth_rule`
--
ALTER TABLE `lm_auth_rule`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `lm_config`
--
ALTER TABLE `lm_config`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `lm_link`
--
ALTER TABLE `lm_link`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `lm_oauth2_client`
--
ALTER TABLE `lm_oauth2_client`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lm_user`
--
ALTER TABLE `lm_user`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表id', AUTO_INCREMENT=44;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表id', AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `lm_wx_fans`
--
ALTER TABLE `lm_wx_fans`
  MODIFY `fans_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '粉丝ID', AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `lm_wx_material`
--
ALTER TABLE `lm_wx_material`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '微信公众号素材', AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `lm_wx_material_info`
--
ALTER TABLE `lm_wx_material_info`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `lm_wx_menu`
--
ALTER TABLE `lm_wx_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lm_wx_msg_history`
--
ALTER TABLE `lm_wx_msg_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=552;

--
-- AUTO_INCREMENT for table `lm_wx_qrcode`
--
ALTER TABLE `lm_wx_qrcode`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lm_wx_reply`
--
ALTER TABLE `lm_wx_reply`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '微信关键词回复表', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `lm_wx_tag`
--
ALTER TABLE `lm_wx_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lm_wx_type`
--
ALTER TABLE `lm_wx_type`
  MODIFY `type_id` tinyint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

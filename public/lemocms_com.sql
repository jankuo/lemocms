-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2019-09-04 11:41:43
-- 服务器版本： 5.6.45-log
-- PHP 版本： 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `demo_lemocms_com`
--

-- --------------------------------------------------------

--
-- 表的结构 `lm_admin`
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
-- 转存表中的数据 `lm_admin`
--

INSERT INTO `lm_admin` (`id`, `username`, `password`, `group_id`, `email`, `realname`, `mobile`, `ip`, `mdemail`, `status`, `avatar`, `create_time`, `update_time`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 1, '994927909@qq.com', '', '18397423845', '127.0.0.1', '0', 1, '/storage/uploads/20190817\\294faa45405fa24da59c311f55ce313f.png', 1482132862, 1566131029),
(2, 'yuege', 'e10adc3949ba59abbe56e057f20f883e', 2, '994927909@qq.com', '', '18397423845', '127.0.0.1', '0', 1, '/storage/uploads/20190817\\dc25c2714c46a0d2bee894a7d05eb15f.png', 1535512393, 1566030896),
(3, 'demo', 'e10adc3949ba59abbe56e057f20f883e', 2, '994927909@qq.com', '', '18397423845', '119.122.91.146', '0', 1, '/storage/uploads/20190817\\a17c794ac7fae7db012aa6e997cf3400.jpg', 1564041575, 1566001700);

-- --------------------------------------------------------

--
-- 表的结构 `lm_admin_log`
--

CREATE TABLE `lm_admin_log` (
  `id` bigint(16) UNSIGNED NOT NULL COMMENT '表id',
  `admin_id` int(10) DEFAULT NULL COMMENT '管理员id',
  `username` varchar(100) DEFAULT NULL,
  `log_url` varchar(100) DEFAULT NULL,
  `log_content` varchar(255) DEFAULT NULL,
  `log_title` varchar(100) DEFAULT NULL COMMENT '日志描述',
  `log_agent` varchar(200) DEFAULT NULL,
  `log_ip` varchar(30) DEFAULT NULL COMMENT 'ip地址',
  `create_time` int(11) DEFAULT NULL COMMENT '日志时间',
  `update_time` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `lm_admin_log`
--

INSERT INTO `lm_admin_log` (`id`, `admin_id`, `username`, `log_url`, `log_content`, `log_title`, `log_agent`, `log_ip`, `create_time`, `update_time`, `status`) VALUES
(1753, 0, 'Unknown', '/index.php/admin/login/index.html', '{\"username\":\"admin\",\"captcha\":\"luvc\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; ', '127.0.0.1', 1566546358, 1566546358, 1),
(1754, 0, 'Unknown', '/index.php/admin/login/index.html', '{\"username\":\"admin\",\"captcha\":\"fu7b\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; ', '127.0.0.1', 1566546365, 1566546365, 1),
(1755, 0, 'Unknown', '/index.php/admin/login/index.html', '{\"username\":\"admin\",\"captcha\":\"fcfj\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; ', '127.0.0.1', 1566546376, 1566546376, 1),
(1756, 0, 'Unknown', '/index.php/admin/login/index.html', '{\"username\":\"admin\",\"captcha\":\"apyn\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; ', '127.0.0.1', 1566546412, 1566546412, 1),
(1757, 0, 'Unknown', '/index.php/admin/login/index.html', '{\"username\":\"admin\",\"captcha\":\"rmrd\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566785805, 1566785805, 1),
(1758, 0, 'Unknown', '/index.php/admin/login/index.html', '{\"username\":\"admin\",\"captcha\":\"mkyn\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566785810, 1566785810, 1),
(1759, 1, 'admin', '/index.php/admin/system/site.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566786642, 1566786642, 1),
(1760, 1, 'admin', '/index.php/admin/system/site.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566786643, 1566786643, 1),
(1761, 1, 'admin', '/index.php/admin/database/index.html', '', '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566786647, 1566786647, 1),
(1762, 1, 'admin', '/index.php/admin/database/index.html', '', '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566786647, 1566786647, 1),
(1763, 1, 'admin', '/index.php/admin/adminlog/index.html', '', '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566786648, 1566786648, 1),
(1764, 1, 'admin', '/index.php/admin/adminlog/index.html', '', '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566786648, 1566786648, 1),
(1765, 1, 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566786653, 1566786653, 1),
(1766, 1, 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566786653, 1566786653, 1),
(1767, 1, 'admin', '/index.php/admin/auth/adminlist.html', '', '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566787482, 1566787482, 1),
(1768, 1, 'admin', '/index.php/admin/auth/adminlist.html', '', '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566787482, 1566787482, 1),
(1769, 1, 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566787483, 1566787483, 1),
(1770, 1, 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566787483, 1566787483, 1),
(1771, 1, 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566787516, 1566787516, 1),
(1772, 1, 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566787516, 1566787516, 1),
(1773, 1, 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566787720, 1566787720, 1),
(1774, 1, 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566787720, 1566787720, 1),
(1775, 1, 'admin', '/index.php/admin/auth/adminlist.html', '', '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566787780, 1566787780, 1),
(1776, 1, 'admin', '/index.php/admin/auth/adminlist.html', '', '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566787780, 1566787780, 1),
(1777, 1, 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566787781, 1566787781, 1),
(1778, 1, 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566787781, 1566787781, 1),
(1779, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566787854, 1566787854, 1),
(1780, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566787854, 1566787854, 1),
(1781, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566787914, 1566787914, 1),
(1782, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566787915, 1566787915, 1),
(1783, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566787959, 1566787959, 1),
(1784, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566788233, 1566788233, 1),
(1785, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566788267, 1566788267, 1),
(1786, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566788322, 1566788322, 1),
(1787, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566788373, 1566788373, 1),
(1788, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566788565, 1566788565, 1),
(1789, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566788575, 1566788575, 1),
(1790, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566788604, 1566788604, 1),
(1791, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566788613, 1566788613, 1),
(1792, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566789999, 1566789999, 1),
(1793, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566789999, 1566789999, 1),
(1794, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566790884, 1566790884, 1),
(1795, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566790885, 1566790885, 1),
(1796, 1, 'admin', '/index.php/admin/uploads/uploads.html', '', '上传文件', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566793561, 1566793561, 1),
(1797, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566793858, 1566793858, 1),
(1798, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566793859, 1566793859, 1),
(1799, 1, 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566795112, 1566795112, 1),
(1800, 1, 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566795112, 1566795112, 1),
(1801, 1, 'admin', '/index.php/admin/uploads/uploads.html', '', '上传文件', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566799065, 1566799065, 1),
(1802, 1, 'admin', '/index.php/admin/auth/adminlist.html', '', '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566799474, 1566799474, 1),
(1803, 1, 'admin', '/index.php/admin/auth/adminlist.html', '', '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566799475, 1566799475, 1),
(1804, 1, 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566799476, 1566799476, 1),
(1805, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566799514, 1566799514, 1),
(1806, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566799514, 1566799514, 1),
(1807, 1, 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566799854, 1566799854, 1),
(1808, 1, 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566799854, 1566799854, 1),
(1809, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566800023, 1566800023, 1),
(1810, 1, 'admin', '/index.php/admin/article/articlecate.html', '', '分类列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566800030, 1566800030, 1),
(1811, 1, 'admin', '/index.php/admin/article/articlecate.html', '', '分类列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566800030, 1566800030, 1),
(1812, 1, 'admin', '/index.php/admin/article/articlecate.html', '', '分类列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566800048, 1566800048, 1),
(1813, 1, 'admin', '/index.php/admin/article/articlecate.html', '', '分类列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566800126, 1566800126, 1),
(1814, 1, 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566800136, 1566800136, 1),
(1815, 1, 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566800136, 1566800136, 1),
(1816, 1, 'admin', '/index.php/admin/article/articlecate.html', '', '分类列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566800188, 1566800188, 1),
(1817, 1, 'admin', '/index.php/admin/article/articlecate.html', '', '分类列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566800190, 1566800190, 1),
(1818, 1, 'admin', '/index.php/admin/article/articlecate.html', '', '分类列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566800236, 1566800236, 1),
(1819, 1, 'admin', '/index.php/admin/article/articlecate.html', '', '分类列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566800302, 1566800302, 1),
(1820, 1, 'admin', '/index.php/admin/article/articlecate.html', '', '分类列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566800564, 1566800564, 1),
(1821, 1, 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566800571, 1566800571, 1),
(1822, 1, 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566800571, 1566800571, 1),
(1823, 1, 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566800596, 1566800596, 1),
(1824, 1, 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566800649, 1566800649, 1),
(1825, 1, 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566800665, 1566800665, 1),
(1826, 1, 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566800723, 1566800723, 1),
(1827, 1, 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566800746, 1566800746, 1),
(1828, 1, 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566800747, 1566800747, 1),
(1829, 1, 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566800749, 1566800749, 1),
(1830, 1, 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566800777, 1566800777, 1),
(1831, 1, 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566800802, 1566800802, 1),
(1832, 1, 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566800802, 1566800802, 1),
(1833, 1, 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566800887, 1566800887, 1),
(1834, 1, 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566800890, 1566800890, 1),
(1835, 1, 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566800890, 1566800890, 1),
(1836, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566800979, 1566800979, 1),
(1837, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566800979, 1566800979, 1),
(1838, 1, 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566801033, 1566801033, 1),
(1839, 1, 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566801037, 1566801037, 1),
(1840, 1, 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566801038, 1566801038, 1),
(1841, 1, 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566801065, 1566801065, 1),
(1842, 1, 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566801074, 1566801074, 1),
(1843, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566801080, 1566801080, 1),
(1844, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566801081, 1566801081, 1),
(1845, 1, 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566801082, 1566801082, 1),
(1846, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566802455, 1566802455, 1),
(1847, 1, 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566802456, 1566802456, 1),
(1848, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566802458, 1566802458, 1),
(1849, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566802459, 1566802459, 1),
(1850, 1, 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566802464, 1566802464, 1),
(1851, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566802491, 1566802491, 1),
(1852, 1, 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566802492, 1566802492, 1),
(1853, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566803059, 1566803059, 1),
(1854, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566803061, 1566803061, 1),
(1855, 1, 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566803077, 1566803077, 1),
(1856, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566803080, 1566803080, 1),
(1857, 1, 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566803081, 1566803081, 1),
(1858, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566804618, 1566804618, 1),
(1859, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566804618, 1566804618, 1),
(1860, 1, 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566804619, 1566804619, 1),
(1861, 1, 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566804619, 1566804619, 1),
(1862, 1, 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566804626, 1566804626, 1),
(1863, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566804710, 1566804710, 1),
(1864, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1566804710, 1566804710, 1),
(1865, 1, 'admin', '/index.php/admin/adminlog/index.html', '', '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567227750, 1567227750, 1),
(1866, 1, 'admin', '/index.php/admin/adminlog/index.html', '', '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567227750, 1567227750, 1),
(1867, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567227755, 1567227755, 1),
(1868, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567227755, 1567227755, 1),
(1869, 1, 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567227777, 1567227777, 1),
(1870, 1, 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567227777, 1567227777, 1),
(1871, 1, 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567227780, 1567227780, 1),
(1872, 1, 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567227780, 1567227780, 1),
(1873, 1, 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567227803, 1567227803, 1),
(1874, 1, 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567227803, 1567227803, 1),
(1875, 1, 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567227842, 1567227842, 1),
(1876, 1, 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567227842, 1567227842, 1),
(1877, 1, 'admin', '/index.php/admin/adminlog/index.html', '', '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567227842, 1567227842, 1),
(1878, 1, 'admin', '/index.php/admin/adminlog/index.html', '', '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567227843, 1567227843, 1),
(1879, 0, 'Unknown', '/index.php/admin/login/index', '{\"username\":\"admin\",\"captcha\":\"vqph\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567228111, 1567228111, 1),
(1880, 1, 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567228118, 1567228118, 1),
(1881, 1, 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567228118, 1567228118, 1),
(1882, 1, 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567228127, 1567228127, 1),
(1883, 0, 'Unknown', '/index.php/admin/login/index', '{\"username\":\"admin\",\"captcha\":\"i4me\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567228347, 1567228347, 1),
(1884, 1, 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567228353, 1567228353, 1),
(1885, 1, 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567228353, 1567228353, 1),
(1886, 1, 'admin', '/index.php/admin/adminlog/index.html', '', '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567228354, 1567228354, 1),
(1887, 1, 'admin', '/index.php/admin/adminlog/index.html', '', '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567228355, 1567228355, 1),
(1888, 1, 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567228575, 1567228575, 1),
(1889, 1, 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567228576, 1567228576, 1),
(1890, 1, 'admin', '/index.php/admin/database/restore.html', '', '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567228736, 1567228736, 1),
(1891, 1, 'admin', '/index.php/admin/database/index.html', '', '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567228737, 1567228737, 1),
(1892, 1, 'admin', '/index.php/admin/database/restore.html', '', '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567228808, 1567228808, 1),
(1893, 1, 'admin', '/index.php/admin/database/restore.html', '', '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567228808, 1567228808, 1),
(1894, 1, 'admin', '/index.php/admin/database/index.html', '', '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567228810, 1567228810, 1),
(1895, 1, 'admin', '/index.php/admin/database/index.html', '', '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567228811, 1567228811, 1),
(1896, 1, 'admin', '/index.php/admin/database/index.html', '', '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567228902, 1567228902, 1),
(1897, 1, 'admin', '/index.php/admin/database/index.html', '', '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567228902, 1567228902, 1),
(1898, 1, 'admin', '/index.php/admin/database/backup.html', '', '数据库备份', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567228904, 1567228904, 1),
(1899, 1, 'admin', '/index.php/admin/database/optimize.html', '', '数据库优化', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567228906, 1567228906, 1),
(1900, 1, 'admin', '/index.php/admin/database/repair.html', '', '数据库修复', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567228907, 1567228907, 1),
(1901, 1, 'admin', '/index.php/admin/database/optimize.html', '', '数据库优化', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567228908, 1567228908, 1),
(1902, 1, 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567228912, 1567228912, 1),
(1903, 1, 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567228912, 1567228912, 1),
(1904, 1, 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567228948, 1567228948, 1),
(1905, 1, 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567228948, 1567228948, 1),
(1906, 1, 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567229176, 1567229176, 1),
(1907, 1, 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567229180, 1567229180, 1),
(1908, 1, 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567229180, 1567229180, 1),
(1909, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567229232, 1567229232, 1),
(1910, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567229233, 1567229233, 1),
(1911, 1, 'admin', '/index.php/admin/link/index.html', '', '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567229240, 1567229240, 1),
(1912, 1, 'admin', '/index.php/admin/link/index.html', '', '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567229240, 1567229240, 1),
(1913, 1, 'admin', '/index.php/admin/adv/edit.html', '', '广告编辑', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567229244, 1567229244, 1),
(1914, 1, 'admin', '/index.php/admin/adv/edit.html', '', '广告编辑', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567229244, 1567229244, 1),
(1915, 1, 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567229256, 1567229256, 1),
(1916, 1, 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567229256, 1567229256, 1),
(1917, 1, 'admin', '/index.php/admin/adv/edit.html', '', '广告编辑', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567229296, 1567229296, 1),
(1918, 1, 'admin', '/index.php/admin/adv/edit.html', '', '广告编辑', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567229296, 1567229296, 1),
(1919, 1, 'admin', '/index.php/admin/adv/posedit.html', '', '广告编辑', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567229297, 1567229297, 1),
(1920, 1, 'admin', '/index.php/admin/adv/posedit.html', '', '广告编辑', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567229298, 1567229298, 1),
(1921, 1, 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567229302, 1567229302, 1),
(1922, 1, 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567229302, 1567229302, 1),
(1923, 1, 'admin', '/index.php/admin/adv/edit.html', '', '广告编辑', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567229305, 1567229305, 1),
(1924, 1, 'admin', '/index.php/admin/adv/edit.html', '', '广告编辑', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567229305, 1567229305, 1),
(1925, 1, 'admin', '/index.php/admin/auth/group.html', '', '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567229312, 1567229312, 1),
(1926, 1, 'admin', '/index.php/admin/auth/group.html', '', '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567229312, 1567229312, 1),
(1927, 1, 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567229316, 1567229316, 1),
(1928, 1, 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567229316, 1567229316, 1),
(1929, 1, 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567229351, 1567229351, 1),
(1930, 1, 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567229351, 1567229351, 1),
(1931, 1, 'admin', '/index.php/admin/adv/edit.html', '', '广告编辑', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567229356, 1567229356, 1),
(1932, 1, 'admin', '/index.php/admin/adv/edit.html', '', '广告编辑', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567229356, 1567229356, 1),
(1933, 1, 'admin', '/index.php/admin/adv/edit.html', '', '广告编辑', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567229368, 1567229368, 1),
(1934, 1, 'admin', '/index.php/admin/adv/index.html', '', '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567229373, 1567229373, 1),
(1935, 1, 'admin', '/index.php/admin/adv/index.html', '', '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567229373, 1567229373, 1),
(1936, 1, 'admin', '/index.php/admin/adv/pos.html', '', '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567229375, 1567229375, 1),
(1937, 1, 'admin', '/index.php/admin/adv/pos.html', '', '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567229376, 1567229376, 1),
(1938, 1, 'admin', '/index.php/admin/link/index.html', '', '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567229378, 1567229378, 1),
(1939, 1, 'admin', '/index.php/admin/link/index.html', '', '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567229378, 1567229378, 1),
(1940, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567229380, 1567229380, 1),
(1941, 1, 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567229380, 1567229380, 1),
(1942, 1, 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567229381, 1567229381, 1),
(1943, 1, 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567229381, 1567229381, 1),
(1944, 1, 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567229505, 1567229505, 1),
(1945, 1, 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567229505, 1567229505, 1),
(1946, 1, 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567230120, 1567230120, 1),
(1947, 1, 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567230120, 1567230120, 1),
(1948, 1, 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567230127, 1567230127, 1),
(1949, 0, 'Unknown', '/index.php/admin/login/index.html', '{\"username\":\"admin\",\"captcha\":\"yvgr\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567298102, 1567298102, 1),
(1950, 0, 'Unknown', '/index.php/admin/login/index.html', '{\"username\":\"admin\",\"captcha\":\"tqdk\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567298107, 1567298107, 1),
(1951, 1, 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567298113, 1567298113, 1),
(1952, 1, 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567298113, 1567298113, 1),
(1953, 1, 'admin', '/index.php/admin/system/site.html', '{\"site_name\":\"lemocm\",\"site_domain\":\"https:\\/\\/www.lemocms.com\",\"site_email\":\"858761000@qq.com\",\"site_logo\":\"\\/storage\\/uploads\\/logo.png\",\"file\":\"\",\"site_seo_title\":\"LEMOCMS-PHP-THINKPHP\\u5185\\u5bb9\\u7ba1\\u7406\\u7cfb\\u7edf\",\"site_seo_keywords\":\"LEMOCMS,L', '站点修改', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567298115, 1567298115, 1),
(1954, 1, 'admin', '/index.php/admin/adminlog/index.html', '', '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567298117, 1567298117, 1),
(1955, 1, 'admin', '/index.php/admin/adminlog/index.html', '', '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567298117, 1567298117, 1),
(1957, 1, 'admin', '/index.php/admin/database/restore.html', '', '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567298123, 1567298123, 1),
(1958, 1, 'admin', '/index.php/admin/database/restore.html', '', '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567298124, 1567298124, 1),
(1959, 1, 'admin', '/index.php/admin/database/index.html', '', '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567298125, 1567298125, 1),
(1960, 1, 'admin', '/index.php/admin/database/index.html', '', '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567298125, 1567298125, 1),
(1961, 1, 'admin', '/index.php/admin/database/backup.html', '', '数据库备份', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567298127, 1567298127, 1),
(1962, 1, 'admin', '/index.php/admin/database/backup.html', '{\"tables\":[\"lm_admin\",\"lm_admin_log\",\"lm_adv\",\"lm_adv_position\",\"lm_article\",\"lm_article_cate\",\"lm_auth_group\",\"lm_auth_rule\",\"lm_config\",\"lm_link\"]}', '数据库备份', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567298130, 1567298130, 1),
(1963, 4, 'demo', '/index.php/admin/database/restore.html', '', '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567299897, 1567299897, 1),
(1964, 4, 'demo', '/index.php/admin/database/restore.html', '', '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567299897, 1567299897, 1),
(1965, 4, 'demo', '/index.php/admin/database/index.html', '', '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567299908, 1567299908, 1),
(1966, 4, 'demo', '/index.php/admin/database/index.html', '', '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567299908, 1567299908, 1),
(1967, 4, 'demo', '/index.php/admin/database/backup.html', '{\"tables\":[\"lm_admin\",\"lm_admin_log\",\"lm_adv\",\"lm_adv_position\",\"lm_article\",\"lm_article_cate\",\"lm_auth_group\",\"lm_auth_rule\",\"lm_config\",\"lm_link\"]}', '数据库备份', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567299911, 1567299911, 1),
(1968, 4, 'demo', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567300098, 1567300098, 1),
(1969, 4, 'demo', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567300099, 1567300099, 1),
(1970, 0, 'Unknown', '/index.php/admin/login/index', '{\"username\":\"admin\",\"captcha\":\"p4p5\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567300116, 1567300116, 1),
(1971, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567300124, 1567300124, 1),
(1972, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567300124, 1567300124, 1),
(1973, 0, 'Unknown', '/index.php/admin/login/index', '{\"username\":\"demo\",\"captcha\":\"ckpb\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567300178, 1567300178, 1),
(1974, 0, 'Unknown', '/index.php/admin/login/index', '{\"username\":\"demo\",\"captcha\":\"fgkt\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567300185, 1567300185, 1),
(1975, 0, 'Unknown', '/index.php/admin/login/index', '{\"username\":\"demo\",\"captcha\":\"uzya\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567300201, 1567300201, 1),
(1976, 0, 'Unknown', '/index.php/admin/login/index', '{\"username\":\"demo\",\"captcha\":\"ny3z\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567300208, 1567300208, 1),
(1977, 0, 'Unknown', '/index.php/admin/login/index', '{\"username\":\"dmo\",\"captcha\":\"vvtc\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567300219, 1567300219, 1),
(1978, 0, 'Unknown', '/index.php/admin/login/index', '{\"username\":\"dmo\",\"captcha\":\"e7h3\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567300232, 1567300232, 1);
INSERT INTO `lm_admin_log` (`id`, `admin_id`, `username`, `log_url`, `log_content`, `log_title`, `log_agent`, `log_ip`, `create_time`, `update_time`, `status`) VALUES
(1979, 0, 'Unknown', '/index.php/admin/login/index', '{\"username\":\"dmo\",\"captcha\":\"mmvm\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567300243, 1567300243, 1),
(1980, 0, 'Unknown', '/index.php/admin/login/index', '{\"username\":\"demo\",\"captcha\":\"zm2c\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567300255, 1567300255, 1),
(1981, 3, 'demo', '/index.php/admin/adv/index.html', NULL, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567300262, 1567300262, 1),
(1982, 3, 'demo', '/index.php/admin/adv/index.html', NULL, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567300262, 1567300262, 1),
(1983, 3, 'demo', '/index.php/admin/adv/pos.html', NULL, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567300263, 1567300263, 1),
(1984, 3, 'demo', '/index.php/admin/adv/pos.html', NULL, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567300263, 1567300263, 1),
(1985, 3, 'demo', '/index.php/admin/link/index.html', NULL, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567300265, 1567300265, 1),
(1986, 3, 'demo', '/index.php/admin/link/index.html', NULL, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567300265, 1567300265, 1),
(1987, 3, 'demo', '/index.php/admin/article/index.html', NULL, '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567300275, 1567300275, 1),
(1988, 3, 'demo', '/index.php/admin/article/index.html', NULL, '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567300275, 1567300275, 1),
(1989, 3, 'demo', '/index.php/admin/article/articlecate.html', NULL, '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567300279, 1567300279, 1),
(1990, 3, 'demo', '/index.php/admin/article/articlecate.html', NULL, '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567300280, 1567300280, 1),
(1991, 3, 'demo', '/index.php/admin/article/articlecate.html', NULL, '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567300342, 1567300342, 1),
(1992, 3, 'demo', '/index.php/admin/link/index.html', NULL, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567300345, 1567300345, 1),
(1993, 3, 'demo', '/index.php/admin/adv/index.html', NULL, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567300725, 1567300725, 1),
(1994, 3, 'demo', '/index.php/admin/adv/index.html', NULL, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567300725, 1567300725, 1),
(1995, 3, 'demo', '/index.php/admin/adv/pos.html', NULL, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567300727, 1567300727, 1),
(1996, 3, 'demo', '/index.php/admin/adv/pos.html', NULL, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567300727, 1567300727, 1),
(1997, 3, 'demo', '/index.php/admin/link/index.html', NULL, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567300728, 1567300728, 1),
(1998, 3, 'demo', '/index.php/admin/link/index.html', NULL, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567300728, 1567300728, 1),
(1999, 3, 'demo', '/index.php/admin/article/index.html', NULL, '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567300730, 1567300730, 1),
(2000, 3, 'demo', '/index.php/admin/article/index.html', NULL, '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567300730, 1567300730, 1),
(2001, 3, 'demo', '/index.php/admin/article/articlecate.html', NULL, '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567300731, 1567300731, 1),
(2002, 3, 'demo', '/index.php/admin/article/articlecate.html', NULL, '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567300731, 1567300731, 1),
(2003, 3, 'demo', '/index.php/admin/index/system.html', NULL, '系统面板', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567301719, 1567301719, 1),
(2004, 3, 'demo', '/index.php/admin/index/system.html', NULL, '系统面板', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567301719, 1567301719, 1),
(2005, 3, 'demo', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567301720, 1567301720, 1),
(2006, 3, 'demo', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567301720, 1567301720, 1),
(2007, 1, 'admin', '/index.php/admin/index/system.html', NULL, '系统面板', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', 1567302861, 1567302861, 1),
(2008, 3, 'demo', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567304442, 1567304442, 1),
(2009, 3, 'demo', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567304443, 1567304443, 1),
(2010, 3, 'demo', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567304445, 1567304445, 1),
(2011, 3, 'demo', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567304445, 1567304445, 1),
(2012, 3, 'demo', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567327274, 1567327274, 1),
(2013, 3, 'demo', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567327274, 1567327274, 1),
(2014, 0, 'Unknown', '/index.php/admin/login/index', '{\"username\":\"admin\",\"captcha\":\"wyet\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567327351, 1567327351, 1),
(2015, 0, 'Unknown', '/index.php/admin/login/index', '{\"username\":\"admin\",\"captcha\":\"xfcd\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567327358, 1567327358, 1),
(2016, 1, 'admin', '/index.php/admin/index/system.html', NULL, '系统面板', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567327366, 1567327366, 1),
(2017, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567327367, 1567327367, 1),
(2018, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567327368, 1567327368, 1),
(2019, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567327369, 1567327369, 1),
(2020, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567327369, 1567327369, 1),
(2021, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567327375, 1567327375, 1),
(2022, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567327375, 1567327375, 1),
(2023, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567327377, 1567327377, 1),
(2024, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567327379, 1567327379, 1),
(2025, 1, 'admin', '/index.php/admin/addons/index.html', NULL, '插件列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567327412, 1567327412, 1),
(2026, 1, 'admin', '/index.php/admin/addons/index.html', NULL, '插件列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567327412, 1567327412, 1),
(2027, 1, 'admin', '/index.php/admin/link/index.html', NULL, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567327417, 1567327417, 1),
(2028, 1, 'admin', '/index.php/admin/link/index.html', NULL, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567327417, 1567327417, 1),
(2029, 1, 'admin', '/index.php/admin/article/index.html', NULL, '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567327419, 1567327419, 1),
(2030, 1, 'admin', '/index.php/admin/article/index.html', NULL, '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567327419, 1567327419, 1),
(2031, 1, 'admin', '/index.php/admin/link/index.html', NULL, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567327420, 1567327420, 1),
(2032, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567327469, 1567327469, 1),
(2033, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567327469, 1567327469, 1),
(2034, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567327470, 1567327470, 1),
(2035, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567327470, 1567327470, 1),
(2036, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567327480, 1567327480, 1),
(2037, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567327481, 1567327481, 1),
(2038, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567327481, 1567327481, 1),
(2039, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567328001, 1567328001, 1),
(2040, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567328001, 1567328001, 1),
(2041, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567328003, 1567328003, 1),
(2042, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567328003, 1567328003, 1),
(2043, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567328015, 1567328015, 1),
(2044, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567328508, 1567328508, 1),
(2045, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567328508, 1567328508, 1),
(2046, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567329742, 1567329742, 1),
(2047, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567329743, 1567329743, 1),
(2048, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567330432, 1567330432, 1),
(2049, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Ve', '127.0.0.1', 1567330604, 1567330604, 1),
(2050, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Ve', '127.0.0.1', 1567330616, 1567330616, 1),
(2051, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Ve', '127.0.0.1', 1567330616, 1567330616, 1),
(2052, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Ve', '127.0.0.1', 1567330689, 1567330689, 1),
(2053, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Ve', '127.0.0.1', 1567330706, 1567330706, 1),
(2054, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Ve', '127.0.0.1', 1567330725, 1567330725, 1),
(2055, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Ve', '127.0.0.1', 1567330726, 1567330726, 1),
(2056, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567330732, 1567330732, 1),
(2057, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Ve', '127.0.0.1', 1567330758, 1567330758, 1),
(2058, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Ve', '127.0.0.1', 1567330794, 1567330794, 1),
(2059, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Ve', '127.0.0.1', 1567330818, 1567330818, 1),
(2060, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Ve', '127.0.0.1', 1567330922, 1567330922, 1),
(2061, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Ve', '127.0.0.1', 1567330940, 1567330940, 1),
(2062, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Ve', '127.0.0.1', 1567330968, 1567330968, 1),
(2063, 1, 'admin', '/index.php/admin/system/site.html', '{\"site_name\":\"lemocm\",\"site_domain\":\"https:\\/\\/www.lemocms.com\",\"site_email\":\"858761000@qq.com\",\"site_logo\":\"\\/storage\\/uploads\\/logo.png\",\"file\":\"\",\"site_seo_title\":\"LEMOCMS-PHP-THINKPHP\\u5185\\u5bb9\\u7ba1\\u7406\\u7cfb\\u7edf\",\"site_seo_keywords\":\"LEMOCMS,L', '站点修改', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Ve', '127.0.0.1', 1567330969, 1567330969, 1),
(2064, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Ve', '127.0.0.1', 1567330971, 1567330971, 1),
(2065, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Ve', '127.0.0.1', 1567330980, 1567330980, 1),
(2066, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Ve', '127.0.0.1', 1567330980, 1567330980, 1),
(2067, 1, 'admin', '/index.php/admin/database/restore.html', NULL, '还原数据库', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Ve', '127.0.0.1', 1567330992, 1567330992, 1),
(2068, 1, 'admin', '/index.php/admin/database/restore.html', NULL, '还原数据库', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Ve', '127.0.0.1', 1567330992, 1567330992, 1),
(2069, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Ve', '127.0.0.1', 1567330995, 1567330995, 1),
(2070, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Ve', '127.0.0.1', 1567330995, 1567330995, 1),
(2071, 0, 'Unknown', '/index.php/admin/login/index.html', '{\"username\":\"admin\",\"captcha\":\"2k4y\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567412183, 1567412183, 1),
(2072, 0, 'Unknown', '/index.php/admin/login/index.html', '{\"username\":\"admin\",\"captcha\":\"tcvd\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567412188, 1567412188, 1),
(2073, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567412203, 1567412203, 1),
(2074, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567412203, 1567412203, 1),
(2075, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567413402, 1567413402, 1),
(2076, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567413440, 1567413440, 1),
(2077, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567413470, 1567413470, 1),
(2078, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567413485, 1567413485, 1),
(2079, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567413495, 1567413495, 1),
(2080, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567413495, 1567413495, 1),
(2081, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567413521, 1567413521, 1),
(2082, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567413523, 1567413523, 1),
(2083, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567413546, 1567413546, 1),
(2084, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567413591, 1567413591, 1),
(2085, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567413620, 1567413620, 1),
(2086, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567413650, 1567413650, 1),
(2087, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567413651, 1567413651, 1),
(2088, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567413703, 1567413703, 1),
(2089, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567413704, 1567413704, 1),
(2090, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567413710, 1567413710, 1),
(2091, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567413731, 1567413731, 1),
(2092, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567413802, 1567413802, 1),
(2093, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567413850, 1567413850, 1),
(2094, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567413875, 1567413875, 1),
(2095, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567414003, 1567414003, 1),
(2096, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567414045, 1567414045, 1),
(2097, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567414056, 1567414056, 1),
(2098, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567414080, 1567414080, 1),
(2099, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567414090, 1567414090, 1),
(2100, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567414097, 1567414097, 1),
(2101, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567414370, 1567414370, 1),
(2102, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567414950, 1567414950, 1),
(2103, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567414951, 1567414951, 1),
(2104, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567414969, 1567414969, 1),
(2105, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567415039, 1567415039, 1),
(2106, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', 1567416002, 1567416002, 1),
(2107, 0, 'Unknown', '/index.php/admin/login/index.html', '{\"username\":\"admin\",\"captcha\":\"vvnx\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567473950, 1567473950, 1),
(2108, 0, 'Unknown', '/index.php/admin/login/index.html', '{\"username\":\"admin\",\"captcha\":\"uipw\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567473954, 1567473954, 1),
(2109, 1, 'admin', '/index.php/admin/database/restore.html', NULL, '还原数据库', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567473964, 1567473964, 1),
(2110, 1, 'admin', '/index.php/admin/database/restore.html', NULL, '还原数据库', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567473965, 1567473965, 1),
(2111, 1, 'admin', '/index.php/admin/adv/index.html', NULL, '广告列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567474150, 1567474150, 1),
(2112, 1, 'admin', '/index.php/admin/adv/index.html', NULL, '广告列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567474150, 1567474150, 1),
(2113, 1, 'admin', '/index.php/admin/adv/index.html', NULL, '广告列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567474222, 1567474222, 1),
(2114, 1, 'admin', '/index.php/admin/adv/index.html', NULL, '广告列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567474378, 1567474378, 1),
(2115, 1, 'admin', '/index.php/admin/adv/index.html', NULL, '广告列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567474409, 1567474409, 1),
(2116, 1, 'admin', '/index.php/admin/adv/index.html', NULL, '广告列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567474409, 1567474409, 1),
(2117, 1, 'admin', '/index.php/admin/adv/index.html', NULL, '广告列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567474422, 1567474422, 1),
(2118, 1, 'admin', '/index.php/admin/adv/index.html', NULL, '广告列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567474756, 1567474756, 1),
(2119, 1, 'admin', '/index.php/admin/adv/index.html', NULL, '广告列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567474874, 1567474874, 1),
(2120, 1, 'admin', '/index.php/admin/adv/pos.html', NULL, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567475164, 1567475164, 1),
(2121, 1, 'admin', '/index.php/admin/adv/pos.html', NULL, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567475164, 1567475164, 1),
(2122, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567475309, 1567475309, 1),
(2123, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567475310, 1567475310, 1),
(2124, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567475312, 1567475312, 1),
(2125, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567475312, 1567475312, 1),
(2126, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567475379, 1567475379, 1),
(2127, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567475408, 1567475408, 1),
(2128, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567475595, 1567475595, 1),
(2129, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567475834, 1567475834, 1),
(2130, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567475957, 1567475957, 1),
(2131, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567475957, 1567475957, 1),
(2132, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567475959, 1567475959, 1),
(2133, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567475959, 1567475959, 1),
(2134, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567475994, 1567475994, 1),
(2135, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567476021, 1567476021, 1),
(2136, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567476083, 1567476083, 1),
(2137, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567476123, 1567476123, 1),
(2138, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567476129, 1567476129, 1),
(2139, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567476154, 1567476154, 1),
(2140, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567476169, 1567476169, 1),
(2141, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567476200, 1567476200, 1),
(2142, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567476274, 1567476274, 1),
(2143, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567476281, 1567476281, 1),
(2144, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567476333, 1567476333, 1),
(2145, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567476351, 1567476351, 1),
(2146, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567476395, 1567476395, 1),
(2148, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567476548, 1567476548, 1),
(2150, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567476668, 1567476668, 1),
(2151, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567476688, 1567476688, 1),
(2152, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567476689, 1567476689, 1),
(2154, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567476732, 1567476732, 1),
(2155, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567476861, 1567476861, 1),
(2156, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567476865, 1567476865, 1),
(2157, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567476865, 1567476865, 1),
(2158, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567476866, 1567476866, 1),
(2159, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567476866, 1567476866, 1),
(2160, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567476866, 1567476866, 1),
(2161, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567476866, 1567476866, 1),
(2162, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567476998, 1567476998, 1),
(2163, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567477010, 1567477010, 1),
(2164, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567477059, 1567477059, 1),
(2165, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567477062, 1567477062, 1),
(2166, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567477063, 1567477063, 1),
(2167, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567477064, 1567477064, 1),
(2168, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567477095, 1567477095, 1),
(2169, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567477096, 1567477096, 1),
(2170, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567477129, 1567477129, 1),
(2171, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567477146, 1567477146, 1),
(2172, 1, 'admin', '/index.php/admin/database/restore.html', NULL, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567477173, 1567477173, 1),
(2173, 1, 'admin', '/index.php/admin/database/restore.html', NULL, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567477173, 1567477173, 1),
(2174, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567477186, 1567477186, 1),
(2175, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567477189, 1567477189, 1),
(2176, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567477192, 1567477192, 1),
(2177, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567477197, 1567477197, 1),
(2178, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567477205, 1567477205, 1),
(2179, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567477205, 1567477205, 1),
(2180, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567477208, 1567477208, 1),
(2181, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567477208, 1567477208, 1),
(2182, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567477269, 1567477269, 1),
(2183, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567477301, 1567477301, 1),
(2184, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567477312, 1567477312, 1),
(2185, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567477335, 1567477335, 1),
(2186, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567477335, 1567477335, 1),
(2187, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567477338, 1567477338, 1),
(2188, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567477338, 1567477338, 1),
(2189, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567477373, 1567477373, 1),
(2190, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567477405, 1567477405, 1),
(2191, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567477424, 1567477424, 1),
(2192, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567477451, 1567477451, 1),
(2193, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567477473, 1567477473, 1),
(2194, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567477476, 1567477476, 1),
(2195, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567477509, 1567477509, 1),
(2196, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567477509, 1567477509, 1),
(2197, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567477514, 1567477514, 1),
(2198, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567477514, 1567477514, 1),
(2199, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567477539, 1567477539, 1),
(2200, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567477758, 1567477758, 1),
(2201, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567477846, 1567477846, 1),
(2202, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567477956, 1567477956, 1),
(2203, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567478018, 1567478018, 1),
(2204, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567478101, 1567478101, 1),
(2205, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567478123, 1567478123, 1),
(2208, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567478613, 1567478613, 1),
(2209, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567478676, 1567478676, 1),
(2210, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567478691, 1567478691, 1),
(2211, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPad; CPU OS 11_0 like Mac OS X) AppleWebKit/604.1.34 (KHTML, like Gecko) Version/11.0 ', '127.0.0.1', 1567478711, 1567478711, 1);
INSERT INTO `lm_admin_log` (`id`, `admin_id`, `username`, `log_url`, `log_content`, `log_title`, `log_agent`, `log_ip`, `create_time`, `update_time`, `status`) VALUES
(2212, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPad; CPU OS 11_0 like Mac OS X) AppleWebKit/604.1.34 (KHTML, like Gecko) Version/11.0 ', '127.0.0.1', 1567478730, 1567478730, 1),
(2213, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPad; CPU OS 11_0 like Mac OS X) AppleWebKit/604.1.34 (KHTML, like Gecko) Version/11.0 ', '127.0.0.1', 1567478742, 1567478742, 1),
(2214, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPad; CPU OS 11_0 like Mac OS X) AppleWebKit/604.1.34 (KHTML, like Gecko) Version/11.0 ', '127.0.0.1', 1567478758, 1567478758, 1),
(2215, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567478827, 1567478827, 1),
(2216, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567478887, 1567478887, 1),
(2218, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567478926, 1567478926, 1),
(2221, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567479075, 1567479075, 1),
(2222, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479089, 1567479089, 1),
(2223, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479096, 1567479096, 1),
(2224, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479112, 1567479112, 1),
(2225, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479125, 1567479125, 1),
(2226, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479139, 1567479139, 1),
(2227, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479153, 1567479153, 1),
(2228, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479175, 1567479175, 1),
(2229, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479184, 1567479184, 1),
(2230, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479190, 1567479190, 1),
(2231, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479338, 1567479338, 1),
(2232, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479347, 1567479347, 1),
(2233, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479352, 1567479352, 1),
(2234, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479360, 1567479360, 1),
(2235, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479365, 1567479365, 1),
(2236, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479427, 1567479427, 1),
(2237, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479435, 1567479435, 1),
(2238, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479442, 1567479442, 1),
(2239, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479449, 1567479449, 1),
(2240, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479468, 1567479468, 1),
(2241, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479486, 1567479486, 1),
(2242, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479494, 1567479494, 1),
(2243, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479502, 1567479502, 1),
(2244, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479511, 1567479511, 1),
(2245, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479522, 1567479522, 1),
(2246, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479531, 1567479531, 1),
(2247, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479541, 1567479541, 1),
(2248, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479547, 1567479547, 1),
(2249, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479548, 1567479548, 1),
(2250, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479564, 1567479564, 1),
(2251, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479569, 1567479569, 1),
(2252, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479577, 1567479577, 1),
(2253, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479629, 1567479629, 1),
(2254, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479629, 1567479629, 1),
(2255, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479632, 1567479632, 1),
(2256, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479632, 1567479632, 1),
(2257, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567479681, 1567479681, 1),
(2258, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567479683, 1567479683, 1),
(2259, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567479683, 1567479683, 1),
(2260, 1, 'admin', '/index.php/admin/database/restore.html', NULL, '还原数据库', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479696, 1567479696, 1),
(2261, 1, 'admin', '/index.php/admin/database/restore.html', NULL, '还原数据库', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479696, 1567479696, 1),
(2262, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479702, 1567479702, 1),
(2263, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479702, 1567479702, 1),
(2264, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479754, 1567479754, 1),
(2265, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479820, 1567479820, 1),
(2266, 1, 'admin', '/index.php/admin/addons/index.html', NULL, '插件列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479838, 1567479838, 1),
(2267, 1, 'admin', '/index.php/admin/addons/index.html', NULL, '插件列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479838, 1567479838, 1),
(2268, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479947, 1567479947, 1),
(2269, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479950, 1567479950, 1),
(2270, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479957, 1567479957, 1),
(2271, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567479957, 1567479957, 1),
(2272, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567480010, 1567480010, 1),
(2273, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567480012, 1567480012, 1),
(2274, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567480038, 1567480038, 1),
(2275, 1, 'admin', '/index.php/admin/database/restore.html', NULL, '还原数据库', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567480043, 1567480043, 1),
(2276, 1, 'admin', '/index.php/admin/database/restore.html', NULL, '还原数据库', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567480043, 1567480043, 1),
(2277, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567480048, 1567480048, 1),
(2278, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567480048, 1567480048, 1),
(2279, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567480054, 1567480054, 1),
(2280, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567480076, 1567480076, 1),
(2281, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567480082, 1567480082, 1),
(2282, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567480153, 1567480153, 1),
(2283, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567480167, 1567480167, 1),
(2284, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567480228, 1567480228, 1),
(2285, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Ve', '127.0.0.1', 1567480299, 1567480299, 1),
(2286, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Ve', '127.0.0.1', 1567480374, 1567480374, 1),
(2287, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Ve', '127.0.0.1', 1567480410, 1567480410, 1),
(2288, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Ve', '127.0.0.1', 1567480418, 1567480418, 1),
(2289, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Ve', '127.0.0.1', 1567480524, 1567480524, 1),
(2290, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Ve', '127.0.0.1', 1567480544, 1567480544, 1),
(2291, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Ve', '127.0.0.1', 1567480564, 1567480564, 1),
(2292, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Ve', '127.0.0.1', 1567480656, 1567480656, 1),
(2293, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567480756, 1567480756, 1),
(2294, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567480793, 1567480793, 1),
(2295, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567480817, 1567480817, 1),
(2296, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567480928, 1567480928, 1),
(2297, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567480928, 1567480928, 1),
(2298, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567480971, 1567480971, 1),
(2299, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567480974, 1567480974, 1),
(2300, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567480976, 1567480976, 1),
(2301, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567481003, 1567481003, 1),
(2302, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567481204, 1567481204, 1),
(2303, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567481321, 1567481321, 1),
(2304, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567481323, 1567481323, 1),
(2305, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567481345, 1567481345, 1),
(2306, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567481356, 1567481356, 1),
(2307, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567481378, 1567481378, 1),
(2308, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567481401, 1567481401, 1),
(2309, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567481404, 1567481404, 1),
(2310, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567481404, 1567481404, 1),
(2311, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567481407, 1567481407, 1),
(2312, 1, 'admin', '/index.php/admin/database/restore.html', NULL, '还原数据库', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567481412, 1567481412, 1),
(2313, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567481414, 1567481414, 1),
(2314, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567481491, 1567481491, 1),
(2315, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567481492, 1567481492, 1),
(2316, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567481495, 1567481495, 1),
(2317, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567481512, 1567481512, 1),
(2318, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567481532, 1567481532, 1),
(2319, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567481576, 1567481576, 1),
(2320, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567481593, 1567481593, 1),
(2321, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567481606, 1567481606, 1),
(2322, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567481606, 1567481606, 1),
(2323, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567481688, 1567481688, 1),
(2324, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567481710, 1567481710, 1),
(2325, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567481711, 1567481711, 1),
(2326, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567481716, 1567481716, 1),
(2327, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567481716, 1567481716, 1),
(2328, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567481958, 1567481958, 1),
(2329, 1, 'admin', '/index.php/admin/adv/index.html', NULL, '广告列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567482052, 1567482052, 1),
(2330, 1, 'admin', '/index.php/admin/adv/index.html', NULL, '广告列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567482053, 1567482053, 1),
(2331, 1, 'admin', '/index.php/admin/adv/index.html', NULL, '广告列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567482117, 1567482117, 1),
(2332, 1, 'admin', '/index.php/admin/adv/index.html', NULL, '广告列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567482136, 1567482136, 1),
(2333, 1, 'admin', '/index.php/admin/adv/index.html', NULL, '广告列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567482168, 1567482168, 1),
(2334, 1, 'admin', '/index.php/admin/adv/index.html', NULL, '广告列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567482189, 1567482189, 1),
(2335, 1, 'admin', '/index.php/admin/adv/index.html', NULL, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567482234, 1567482234, 1),
(2336, 1, 'admin', '/index.php/admin/adv/index.html', NULL, '广告列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567482237, 1567482237, 1),
(2337, 1, 'admin', '/index.php/admin/adv/index.html', NULL, '广告列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567482271, 1567482271, 1),
(2338, 1, 'admin', '/index.php/admin/adv/index.html', NULL, '广告列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567482299, 1567482299, 1),
(2339, 1, 'admin', '/index.php/admin/adv/index.html', NULL, '广告列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567482374, 1567482374, 1),
(2340, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567482403, 1567482403, 1),
(2341, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567482403, 1567482403, 1),
(2342, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567482405, 1567482405, 1),
(2343, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567482405, 1567482405, 1),
(2344, 1, 'admin', '/index.php/admin/database/restore.html', NULL, '还原数据库', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567482408, 1567482408, 1),
(2345, 1, 'admin', '/index.php/admin/database/restore.html', NULL, '还原数据库', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567482408, 1567482408, 1),
(2346, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567482410, 1567482410, 1),
(2347, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567482410, 1567482410, 1),
(2348, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567482414, 1567482414, 1),
(2349, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567482414, 1567482414, 1),
(2350, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567482417, 1567482417, 1),
(2351, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567482417, 1567482417, 1),
(2352, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567482449, 1567482449, 1),
(2353, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567482455, 1567482455, 1),
(2354, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567482455, 1567482455, 1),
(2355, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567482476, 1567482476, 1),
(2356, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567482490, 1567482490, 1),
(2357, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567482506, 1567482506, 1),
(2358, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567482596, 1567482596, 1),
(2359, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567482630, 1567482630, 1),
(2360, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567482706, 1567482706, 1),
(2361, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567482708, 1567482708, 1),
(2362, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567482731, 1567482731, 1),
(2363, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567482733, 1567482733, 1),
(2364, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567482758, 1567482758, 1),
(2365, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567482802, 1567482802, 1),
(2366, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567482863, 1567482863, 1),
(2367, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567482916, 1567482916, 1),
(2368, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567482936, 1567482936, 1),
(2369, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567482957, 1567482957, 1),
(2370, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567482973, 1567482973, 1),
(2371, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567483003, 1567483003, 1),
(2372, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567483004, 1567483004, 1),
(2373, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567484100, 1567484100, 1),
(2374, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567484100, 1567484100, 1),
(2375, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567484102, 1567484102, 1),
(2376, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567484103, 1567484103, 1),
(2377, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567484117, 1567484117, 1),
(2378, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567484121, 1567484121, 1),
(2379, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567484123, 1567484123, 1),
(2380, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567484123, 1567484123, 1),
(2381, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567484154, 1567484154, 1),
(2382, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567484160, 1567484160, 1),
(2383, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567484161, 1567484161, 1),
(2384, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567484185, 1567484185, 1),
(2385, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567484205, 1567484205, 1),
(2386, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (iPad; CPU OS 11_0 like Mac OS X) AppleWebKit/604.1.34 (KHTML, like Gecko) Version/11.0 ', '127.0.0.1', 1567484244, 1567484244, 1),
(2387, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (iPad; CPU OS 11_0 like Mac OS X) AppleWebKit/604.1.34 (KHTML, like Gecko) Version/11.0 ', '127.0.0.1', 1567484265, 1567484265, 1),
(2388, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (iPad; CPU OS 11_0 like Mac OS X) AppleWebKit/604.1.34 (KHTML, like Gecko) Version/11.0 ', '127.0.0.1', 1567484299, 1567484299, 1),
(2389, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567484307, 1567484307, 1),
(2390, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567484309, 1567484309, 1),
(2391, 1, 'admin', '/index.php/admin/database/restore.html', NULL, '还原数据库', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567484313, 1567484313, 1),
(2392, 1, 'admin', '/index.php/admin/database/restore.html', NULL, '还原数据库', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567484313, 1567484313, 1),
(2393, 1, 'admin', '/index.php/admin/adv/index.html', NULL, '广告列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567484320, 1567484320, 1),
(2394, 1, 'admin', '/index.php/admin/adv/index.html', NULL, '广告列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567484320, 1567484320, 1),
(2395, 1, 'admin', '/index.php/admin/adv/index.html', NULL, '广告列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567484336, 1567484336, 1),
(2396, 1, 'admin', '/index.php/admin/adv/index.html', NULL, '广告列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567484364, 1567484364, 1),
(2397, 1, 'admin', '/index.php/admin/adv/pos.html', NULL, '广告位置', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567484407, 1567484407, 1),
(2398, 1, 'admin', '/index.php/admin/adv/pos.html', NULL, '广告位置', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567484407, 1567484407, 1),
(2399, 1, 'admin', '/index.php/admin/adv/pos.html', NULL, '广告位置', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567484455, 1567484455, 1),
(2400, 1, 'admin', '/index.php/admin/link/index.html', NULL, '链接列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567484463, 1567484463, 1),
(2401, 1, 'admin', '/index.php/admin/link/index.html', NULL, '链接列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567484463, 1567484463, 1),
(2402, 1, 'admin', '/index.php/admin/link/index.html', NULL, '链接列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567484542, 1567484542, 1),
(2403, 1, 'admin', '/index.php/admin/link/index.html', NULL, '链接列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567484557, 1567484557, 1),
(2404, 1, 'admin', '/index.php/admin/article/index.html', NULL, '文章列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567484560, 1567484560, 1),
(2405, 1, 'admin', '/index.php/admin/article/index.html', NULL, '文章列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567484560, 1567484560, 1),
(2406, 1, 'admin', '/index.php/admin/article/index.html', NULL, '文章列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567484621, 1567484621, 1),
(2407, 1, 'admin', '/index.php/admin/article/index.html', NULL, '文章列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567484661, 1567484661, 1),
(2408, 1, 'admin', '/index.php/admin/article/index.html', NULL, '文章列表', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567484669, 1567484669, 1),
(2409, 1, 'admin', '/index.php/admin/article/articlecate.html', NULL, '文章分类', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567484675, 1567484675, 1),
(2410, 1, 'admin', '/index.php/admin/article/articlecate.html', NULL, '文章分类', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567484675, 1567484675, 1),
(2411, 1, 'admin', '/index.php/admin/article/articlecate.html', NULL, '文章分类', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567484705, 1567484705, 1),
(2412, 1, 'admin', '/index.php/admin/article/articlecate.html', NULL, '文章分类', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567484725, 1567484725, 1),
(2413, 1, 'admin', '/index.php/admin/article/articlecate.html', NULL, '文章分类', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567484758, 1567484758, 1),
(2414, 1, 'admin', '/index.php/admin/article/articlecate.html', NULL, '文章分类', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567484768, 1567484768, 1),
(2415, 1, 'admin', '/index.php/admin/article/articlecate.html', NULL, '文章分类', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567484783, 1567484783, 1),
(2416, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567484966, 1567484966, 1),
(2417, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567484966, 1567484966, 1),
(2418, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567485074, 1567485074, 1),
(2419, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485097, 1567485097, 1),
(2420, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485228, 1567485228, 1),
(2421, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485244, 1567485244, 1),
(2422, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485339, 1567485339, 1),
(2423, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485352, 1567485352, 1),
(2424, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485378, 1567485378, 1),
(2425, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485463, 1567485463, 1),
(2426, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485512, 1567485512, 1),
(2427, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485523, 1567485523, 1),
(2428, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485739, 1567485739, 1),
(2429, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485746, 1567485746, 1),
(2430, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485752, 1567485752, 1),
(2431, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485752, 1567485752, 1),
(2432, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485754, 1567485754, 1),
(2433, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485754, 1567485754, 1),
(2434, 1, 'admin', '/index.php/admin/database/restore.html', NULL, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485755, 1567485755, 1),
(2435, 1, 'admin', '/index.php/admin/database/restore.html', NULL, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485755, 1567485755, 1),
(2436, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485756, 1567485756, 1),
(2437, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485757, 1567485757, 1),
(2438, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485759, 1567485759, 1),
(2439, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485759, 1567485759, 1),
(2440, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485761, 1567485761, 1),
(2441, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485761, 1567485761, 1),
(2442, 1, 'admin', '/index.php/admin/adv/index.html', NULL, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485898, 1567485898, 1),
(2443, 1, 'admin', '/index.php/admin/adv/index.html', NULL, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485898, 1567485898, 1),
(2444, 1, 'admin', '/index.php/admin/adv/pos.html', NULL, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485899, 1567485899, 1),
(2445, 1, 'admin', '/index.php/admin/adv/pos.html', NULL, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485899, 1567485899, 1);
INSERT INTO `lm_admin_log` (`id`, `admin_id`, `username`, `log_url`, `log_content`, `log_title`, `log_agent`, `log_ip`, `create_time`, `update_time`, `status`) VALUES
(2446, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485904, 1567485904, 1),
(2447, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485905, 1567485905, 1),
(2448, 1, 'admin', '/index.php/admin/database/restore.html', NULL, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485907, 1567485907, 1),
(2449, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485908, 1567485908, 1),
(2450, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485909, 1567485909, 1),
(2451, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485934, 1567485934, 1),
(2452, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485945, 1567485945, 1),
(2453, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485947, 1567485947, 1),
(2454, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485948, 1567485948, 1),
(2455, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485957, 1567485957, 1),
(2456, 1, 'admin', '/index.php/admin/adv/index.html', NULL, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485962, 1567485962, 1),
(2457, 1, 'admin', '/index.php/admin/adv/pos.html', NULL, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485963, 1567485963, 1),
(2458, 1, 'admin', '/index.php/admin/link/index.html', NULL, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485973, 1567485973, 1),
(2459, 1, 'admin', '/index.php/admin/link/index.html', NULL, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485973, 1567485973, 1),
(2460, 1, 'admin', '/index.php/admin/link/index.html', NULL, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485992, 1567485992, 1),
(2461, 1, 'admin', '/index.php/admin/article/index.html', NULL, '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485994, 1567485994, 1),
(2462, 1, 'admin', '/index.php/admin/article/index.html', NULL, '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567485994, 1567485994, 1),
(2463, 1, 'admin', '/index.php/admin/article/index.html', NULL, '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567486055, 1567486055, 1),
(2464, 1, 'admin', '/index.php/admin/article/articlecate.html', NULL, '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567486057, 1567486057, 1),
(2465, 1, 'admin', '/index.php/admin/article/articlecate.html', NULL, '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567486057, 1567486057, 1),
(2466, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567491010, 1567491010, 1),
(2467, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567491010, 1567491010, 1),
(2468, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567491290, 1567491290, 1),
(2469, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567491331, 1567491331, 1),
(2470, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567491356, 1567491356, 1),
(2471, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567491369, 1567491369, 1),
(2472, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567491369, 1567491369, 1),
(2473, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567491579, 1567491579, 1),
(2474, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567491686, 1567491686, 1),
(2475, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567491688, 1567491688, 1),
(2476, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567491865, 1567491865, 1),
(2477, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567491866, 1567491866, 1),
(2478, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567491867, 1567491867, 1),
(2479, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567491868, 1567491868, 1),
(2480, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567491868, 1567491868, 1),
(2481, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567491870, 1567491870, 1),
(2482, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492003, 1567492003, 1),
(2483, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492024, 1567492024, 1),
(2484, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492031, 1567492031, 1),
(2485, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492038, 1567492038, 1),
(2486, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492051, 1567492051, 1),
(2488, 1, 'admin', '/index.php/admin/database/restore.html', NULL, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492077, 1567492077, 1),
(2489, 1, 'admin', '/index.php/admin/database/restore.html', NULL, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492077, 1567492077, 1),
(2490, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492079, 1567492079, 1),
(2491, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492079, 1567492079, 1),
(2492, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492176, 1567492176, 1),
(2493, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492179, 1567492179, 1),
(2494, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492179, 1567492179, 1),
(2495, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492182, 1567492182, 1),
(2496, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492183, 1567492183, 1),
(2497, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492188, 1567492188, 1),
(2498, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492189, 1567492189, 1),
(2499, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567492244, 1567492244, 1),
(2500, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567492247, 1567492247, 1),
(2501, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Vers', '127.0.0.1', 1567492266, 1567492266, 1),
(2502, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492287, 1567492287, 1),
(2503, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492308, 1567492308, 1),
(2504, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492310, 1567492310, 1),
(2505, 1, 'admin', '/index.php/admin/database/restore.html', NULL, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492310, 1567492310, 1),
(2506, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492318, 1567492318, 1),
(2507, 1, 'admin', '/index.php/admin/database/restore.html', NULL, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492319, 1567492319, 1),
(2508, 1, 'admin', '/index.php/admin/database/restore.html', NULL, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492343, 1567492343, 1),
(2509, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492374, 1567492374, 1),
(2510, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492387, 1567492387, 1),
(2511, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492394, 1567492394, 1),
(2512, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492404, 1567492404, 1),
(2513, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492404, 1567492404, 1),
(2514, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492411, 1567492411, 1),
(2515, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492417, 1567492417, 1),
(2516, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492443, 1567492443, 1),
(2517, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492444, 1567492444, 1),
(2518, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492446, 1567492446, 1),
(2519, 1, 'admin', '/index.php/admin/adv/index.html', NULL, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492497, 1567492497, 1),
(2520, 1, 'admin', '/index.php/admin/adv/index.html', NULL, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492497, 1567492497, 1),
(2521, 1, 'admin', '/index.php/admin/adv/pos.html', NULL, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492500, 1567492500, 1),
(2522, 1, 'admin', '/index.php/admin/adv/pos.html', NULL, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492501, 1567492501, 1),
(2523, 1, 'admin', '/index.php/admin/link/index.html', NULL, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492503, 1567492503, 1),
(2524, 1, 'admin', '/index.php/admin/link/index.html', NULL, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492504, 1567492504, 1),
(2525, 1, 'admin', '/index.php/admin/article/index.html', NULL, '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492507, 1567492507, 1),
(2526, 1, 'admin', '/index.php/admin/article/index.html', NULL, '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492507, 1567492507, 1),
(2527, 1, 'admin', '/index.php/admin/article/articlecate.html', NULL, '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492510, 1567492510, 1),
(2528, 1, 'admin', '/index.php/admin/article/articlecate.html', NULL, '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567492510, 1567492510, 1),
(2529, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567501098, 1567501098, 1),
(2530, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567501098, 1567501098, 1),
(2531, 0, 'Unknown', '/index.php/admin/login/index.html?username=admin&password=123456&captcha=xzyz&rememberMe=true', '{\"username\":\"admin\",\"captcha\":\"xszg\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567559855, 1567559855, 1),
(2532, 0, 'Unknown', '/index.php/admin/login/index.html?username=admin&password=123456&captcha=xzyz&rememberMe=true', '{\"username\":\"admin\",\"captcha\":\"dhcu\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567559862, 1567559862, 1),
(2533, 1, 'admin', '/index.php/admin/database/restore.html', NULL, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567559869, 1567559869, 1),
(2534, 1, 'admin', '/index.php/admin/database/restore.html', NULL, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567559869, 1567559869, 1),
(2535, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567559872, 1567559872, 1),
(2536, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567559872, 1567559872, 1),
(2537, 1, 'admin', '/index.php/admin/database/restore.html', NULL, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567559970, 1567559970, 1),
(2538, 1, 'admin', '/index.php/admin/database/restore.html', NULL, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567559971, 1567559971, 1),
(2539, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567559972, 1567559972, 1),
(2540, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567559974, 1567559974, 1),
(2541, 1, 'admin', '/index.php/admin/database/repair.html', NULL, '数据库修复', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567559976, 1567559976, 1),
(2542, 1, 'admin', '/index.php/admin/database/repair.html', '{\"tables\":[\"lm_admin\",\"lm_admin_log\",\"lm_adv\",\"lm_adv_position\",\"lm_article\",\"lm_article_cate\",\"lm_auth_group\",\"lm_auth_rule\",\"lm_config\",\"lm_link\",\"lm_user\",\"lm_user_address\",\"lm_user_level\",\"lm_user_sign\"]}', '数据库修复', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567559979, 1567559979, 1),
(2543, 1, 'admin', '/index.php/admin/database/optimize.html', '{\"tables\":[\"lm_admin\",\"lm_admin_log\",\"lm_adv\",\"lm_adv_position\",\"lm_article\",\"lm_article_cate\",\"lm_auth_group\",\"lm_auth_rule\",\"lm_config\",\"lm_link\",\"lm_user\",\"lm_user_address\",\"lm_user_level\",\"lm_user_sign\"]}', '数据库优化', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567559980, 1567559980, 1),
(2544, 1, 'admin', '/index.php/admin/database/restore.html', NULL, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567559991, 1567559991, 1),
(2545, 1, 'admin', '/index.php/admin/database/restore.html', NULL, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567559993, 1567559993, 1),
(2546, 1, 'admin', '/index.php/admin/database/restore.html', NULL, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567560005, 1567560005, 1),
(2547, 1, 'admin', '/index.php/admin/database/restore.html', NULL, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567560088, 1567560088, 1),
(2548, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567560091, 1567560091, 1),
(2549, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567560091, 1567560091, 1),
(2550, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567560098, 1567560098, 1),
(2551, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567560256, 1567560256, 1),
(2552, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567560344, 1567560344, 1),
(2553, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567560912, 1567560912, 1),
(2554, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567560937, 1567560937, 1),
(2555, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567561016, 1567561016, 1),
(2556, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567561063, 1567561063, 1),
(2557, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567561073, 1567561073, 1),
(2558, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567561358, 1567561358, 1),
(2559, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567561358, 1567561358, 1),
(2560, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567561443, 1567561443, 1),
(2561, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567561443, 1567561443, 1),
(2562, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567561481, 1567561481, 1),
(2563, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567561512, 1567561512, 1),
(2564, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567561565, 1567561565, 1),
(2565, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567561808, 1567561808, 1),
(2566, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567561970, 1567561970, 1),
(2567, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567561997, 1567561997, 1),
(2568, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567562098, 1567562098, 1),
(2569, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567562119, 1567562119, 1),
(2570, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567562179, 1567562179, 1),
(2571, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567562186, 1567562186, 1),
(2572, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567562221, 1567562221, 1),
(2573, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567562221, 1567562221, 1),
(2574, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567562278, 1567562278, 1),
(2575, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567562299, 1567562299, 1),
(2576, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567562311, 1567562311, 1),
(2577, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567562333, 1567562333, 1),
(2578, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567562341, 1567562341, 1),
(2579, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567562439, 1567562439, 1),
(2580, 1, 'admin', '/index.php/admin/uploads/uploads.html', NULL, '上传文件', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567562841, 1567562841, 1),
(2581, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567562881, 1567562881, 1),
(2582, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567562882, 1567562882, 1),
(2583, 1, 'admin', '/index.php/admin/uploads/uploads.html', NULL, '上传文件', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567562897, 1567562897, 1),
(2584, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567563010, 1567563010, 1),
(2585, 1, 'admin', '/index.php/admin/uploads/uploads.html', NULL, '上传文件', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567563017, 1567563017, 1),
(2586, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567563061, 1567563061, 1),
(2587, 1, 'admin', '/index.php/admin/uploads/uploads.html', NULL, '上传文件', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567563064, 1567563064, 1),
(2588, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567563080, 1567563080, 1),
(2589, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567563080, 1567563080, 1),
(2590, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567563082, 1567563082, 1),
(2591, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567563086, 1567563086, 1),
(2592, 1, 'admin', '/index.php/admin/uploads/uploads.html', NULL, '上传文件', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567563089, 1567563089, 1),
(2593, 1, 'admin', '/index.php/admin/uploads/uploads.html', NULL, '上传文件', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567563628, 1567563628, 1),
(2594, 1, 'admin', '/index.php/admin/uploads/uploads.html', NULL, '上传文件', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567563655, 1567563655, 1),
(2595, 1, 'admin', '/index.php/admin/uploads/uploads.html', NULL, '上传文件', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567563770, 1567563770, 1),
(2596, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567563804, 1567563804, 1),
(2597, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567563805, 1567563805, 1),
(2598, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567563809, 1567563809, 1),
(2599, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567563863, 1567563863, 1),
(2600, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567563863, 1567563863, 1),
(2601, 1, 'admin', '/index.php/admin/index/userlevel.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567563883, 1567563883, 1),
(2602, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567563886, 1567563886, 1),
(2603, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567563886, 1567563886, 1),
(2604, 1, 'admin', '/index.php/admin/index/userlevel.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567563901, 1567563901, 1),
(2605, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567563905, 1567563905, 1),
(2606, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567563906, 1567563906, 1),
(2607, 1, 'admin', '/index.php/admin/index/userlevel.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567563919, 1567563919, 1),
(2608, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567563936, 1567563936, 1),
(2609, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.13', '127.0.0.1', 1567563936, 1567563936, 1),
(2610, 1, 'admin', '/index.php/admin/index/userlevel.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567564219, 1567564219, 1),
(2611, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567564233, 1567564233, 1),
(2612, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567564234, 1567564234, 1),
(2613, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567564286, 1567564286, 1),
(2614, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567564286, 1567564286, 1),
(2615, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567564318, 1567564318, 1),
(2616, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567564318, 1567564318, 1),
(2617, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567564348, 1567564348, 1),
(2618, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567564348, 1567564348, 1),
(2619, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567564352, 1567564352, 1),
(2620, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567564352, 1567564352, 1),
(2621, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567564361, 1567564361, 1),
(2622, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567564361, 1567564361, 1),
(2623, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567564628, 1567564628, 1),
(2624, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567564628, 1567564628, 1),
(2625, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567564630, 1567564630, 1),
(2626, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567564630, 1567564630, 1),
(2627, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567564633, 1567564633, 1),
(2628, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567564633, 1567564633, 1),
(2629, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567564655, 1567564655, 1),
(2630, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567564655, 1567564655, 1),
(2631, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567564691, 1567564691, 1),
(2632, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567564692, 1567564692, 1),
(2633, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567565135, 1567565135, 1),
(2634, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567565211, 1567565211, 1),
(2635, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567565227, 1567565227, 1),
(2636, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567565232, 1567565232, 1),
(2637, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567565232, 1567565232, 1),
(2638, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567565260, 1567565260, 1),
(2639, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567565347, 1567565347, 1),
(2640, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567565362, 1567565362, 1),
(2641, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567565374, 1567565374, 1),
(2642, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567565380, 1567565380, 1),
(2643, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567565400, 1567565400, 1),
(2644, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', '127.0.0.1', 1567565418, 1567565418, 1),
(2645, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', '127.0.0.1', 1567565434, 1567565434, 1),
(2646, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', '127.0.0.1', 1567565443, 1567565443, 1),
(2647, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', '127.0.0.1', 1567565494, 1567565494, 1),
(2648, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', '127.0.0.1', 1567565516, 1567565516, 1),
(2649, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', '127.0.0.1', 1567565580, 1567565580, 1),
(2650, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', '127.0.0.1', 1567565600, 1567565600, 1),
(2651, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567565848, 1567565848, 1),
(2652, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567565920, 1567565920, 1),
(2653, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567565920, 1567565920, 1),
(2654, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567565921, 1567565921, 1),
(2655, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567565925, 1567565925, 1),
(2656, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567565931, 1567565931, 1),
(2657, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567565931, 1567565931, 1),
(2658, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567565941, 1567565941, 1),
(2659, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567565976, 1567565976, 1),
(2660, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567565982, 1567565982, 1),
(2661, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567565994, 1567565994, 1),
(2662, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567565994, 1567565994, 1),
(2663, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567565998, 1567565998, 1),
(2664, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567566003, 1567566003, 1),
(2665, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567566003, 1567566003, 1),
(2666, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567566007, 1567566007, 1),
(2667, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567566009, 1567566009, 1),
(2668, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567566009, 1567566009, 1),
(2669, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567566011, 1567566011, 1);
INSERT INTO `lm_admin_log` (`id`, `admin_id`, `username`, `log_url`, `log_content`, `log_title`, `log_agent`, `log_ip`, `create_time`, `update_time`, `status`) VALUES
(2670, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567566013, 1567566013, 1),
(2671, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567566013, 1567566013, 1),
(2672, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567566029, 1567566029, 1),
(2673, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567566029, 1567566029, 1),
(2674, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567566058, 1567566058, 1),
(2675, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567566058, 1567566058, 1),
(2676, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567566310, 1567566310, 1),
(2677, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567566310, 1567566310, 1),
(2678, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567566326, 1567566326, 1),
(2679, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567566343, 1567566343, 1),
(2680, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567566351, 1567566351, 1),
(2681, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567566363, 1567566363, 1),
(2682, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567566433, 1567566433, 1),
(2683, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567566445, 1567566445, 1),
(2684, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567566502, 1567566502, 1),
(2685, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '127.0.0.1', 1567566502, 1567566502, 1),
(2686, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '121.35.103.229', 1567567402, 1567567402, 1),
(2687, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '121.35.103.229', 1567567402, 1567567402, 1),
(2688, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '121.35.103.229', 1567567404, 1567567404, 1),
(2689, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '121.35.103.229', 1567567404, 1567567404, 1),
(2690, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '121.35.103.229', 1567567405, 1567567405, 1),
(2691, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '121.35.103.229', 1567567405, 1567567405, 1),
(2692, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '121.35.103.229', 1567567406, 1567567406, 1),
(2693, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '121.35.103.229', 1567567406, 1567567406, 1),
(2694, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '121.35.103.229', 1567567409, 1567567409, 1),
(2695, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '121.35.103.229', 1567567423, 1567567423, 1),
(2696, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '121.35.103.229', 1567567423, 1567567423, 1),
(2697, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '121.35.103.229', 1567567424, 1567567424, 1),
(2698, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '121.35.103.229', 1567567424, 1567567424, 1),
(2699, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '121.35.103.229', 1567567432, 1567567432, 1),
(2700, 3, 'demo', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '113.67.224.30', 1567567601, 1567567601, 1),
(2701, 3, 'demo', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '113.67.224.30', 1567567601, 1567567601, 1),
(2702, 3, 'demo', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '113.67.224.30', 1567567602, 1567567602, 1),
(2703, 3, 'demo', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '113.67.224.30', 1567567602, 1567567602, 1),
(2704, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '121.35.103.229', 1567567603, 1567567603, 1),
(2705, 3, 'demo', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '113.67.224.30', 1567567604, 1567567604, 1),
(2706, 3, 'demo', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '113.67.224.30', 1567567604, 1567567604, 1),
(2707, 3, 'demo', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '113.67.224.30', 1567567618, 1567567618, 1),
(2708, 3, 'demo', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '113.67.224.30', 1567567618, 1567567618, 1),
(2709, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '121.35.103.229', 1567567644, 1567567644, 1),
(2710, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '121.35.103.229', 1567567648, 1567567648, 1),
(2711, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '121.35.103.229', 1567567654, 1567567654, 1),
(2712, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '121.35.103.229', 1567567672, 1567567672, 1),
(2713, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '121.35.103.229', 1567567672, 1567567672, 1),
(2714, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '121.35.103.229', 1567567679, 1567567679, 1),
(2715, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '121.35.103.229', 1567567679, 1567567679, 1),
(2716, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '121.35.103.229', 1567567686, 1567567686, 1),
(2717, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '121.35.103.229', 1567567686, 1567567686, 1),
(2718, 0, 'Unknown', '/index.php/admin/login/index.html', '{\"username\":\"admin\",\"captcha\":\"xszg\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', '110.184.132.14', 1567567726, 1567567726, 1),
(2719, 0, 'Unknown', '/index.php/admin/login/index.html', '{\"username\":\"admin\",\"captcha\":\"nnys\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', '110.184.132.14', 1567567739, 1567567739, 1),
(2720, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', '110.184.132.14', 1567567747, 1567567747, 1),
(2721, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', '110.184.132.14', 1567567747, 1567567747, 1),
(2722, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', '110.184.132.14', 1567567748, 1567567748, 1),
(2723, 1, 'admin', '/index.php/admin/adminlog/index.html', NULL, '日志管理', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', '110.184.132.14', 1567567749, 1567567749, 1),
(2724, 1, 'admin', '/index.php/admin/addons/index.html', NULL, '插件列表', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', '110.184.132.14', 1567567753, 1567567753, 1),
(2725, 1, 'admin', '/index.php/admin/addons/index.html', NULL, '插件列表', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', '110.184.132.14', 1567567753, 1567567753, 1),
(2726, 1, 'admin', '/index.php/admin/link/index.html', NULL, '链接列表', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', '110.184.132.14', 1567567758, 1567567758, 1),
(2727, 1, 'admin', '/index.php/admin/link/index.html', NULL, '链接列表', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', '110.184.132.14', 1567567758, 1567567758, 1),
(2728, 1, 'admin', '/index.php/admin/article/index.html', NULL, '文章列表', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', '110.184.132.14', 1567567759, 1567567759, 1),
(2729, 1, 'admin', '/index.php/admin/article/index.html', NULL, '文章列表', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', '110.184.132.14', 1567567760, 1567567760, 1),
(2730, 1, 'admin', '/index.php/admin/article/articlecate.html', NULL, '文章分类', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', '110.184.132.14', 1567567760, 1567567760, 1),
(2731, 1, 'admin', '/index.php/admin/article/articlecate.html', NULL, '文章分类', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', '110.184.132.14', 1567567760, 1567567760, 1),
(2732, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', '110.184.132.14', 1567567769, 1567567769, 1),
(2733, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', '110.184.132.14', 1567567770, 1567567770, 1),
(2734, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '121.35.103.229', 1567567775, 1567567775, 1),
(2735, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '121.35.103.229', 1567567797, 1567567797, 1),
(2736, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '121.35.103.229', 1567567800, 1567567800, 1),
(2737, 3, 'demo', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '61.138.255.132', 1567567822, 1567567822, 1),
(2738, 0, 'Unknown', '/index.php/admin/login/index.html', '{\"username\":\"admin\",\"captcha\":\"xszg\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '220.162.225.210', 1567567972, 1567567972, 1),
(2739, 0, 'Unknown', '/index.php/admin/login/index.html', '{\"username\":\"admin\",\"captcha\":\"qd8x\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '220.162.225.210', 1567567980, 1567567980, 1),
(2740, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '220.162.225.210', 1567567999, 1567567999, 1),
(2741, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '220.162.225.210', 1567567999, 1567567999, 1),
(2742, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '220.162.225.210', 1567568008, 1567568008, 1),
(2743, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '220.162.225.210', 1567568008, 1567568008, 1),
(2744, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '220.162.225.210', 1567568011, 1567568011, 1),
(2745, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '220.162.225.210', 1567568011, 1567568011, 1),
(2746, 0, 'Unknown', '/index.php/admin/login/index.html', '{\"username\":\"admin\",\"captcha\":\"evlg\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '111.121.76.3', 1567568012, 1567568012, 1),
(2747, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '220.162.225.210', 1567568013, 1567568013, 1),
(2748, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '220.162.225.210', 1567568014, 1567568014, 1),
(2749, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '111.121.76.3', 1567568020, 1567568020, 1),
(2750, 1, 'admin', '/index.php/admin/system/index.html', NULL, '站点设置', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '111.121.76.3', 1567568020, 1567568020, 1),
(2751, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '111.121.76.3', 1567568026, 1567568026, 1),
(2752, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '111.121.76.3', 1567568026, 1567568026, 1),
(2753, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '121.35.103.229', 1567568045, 1567568045, 1),
(2754, 0, 'Unknown', '/index.php/admin/login/index.html', '{\"username\":\"admin\",\"captcha\":\"pueq\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '111.121.76.3', 1567568051, 1567568051, 1),
(2755, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '121.35.103.229', 1567568072, 1567568072, 1),
(2756, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '121.35.103.229', 1567568073, 1567568073, 1),
(2757, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '111.121.76.3', 1567568092, 1567568092, 1),
(2758, 1, 'admin', '/index.php/admin/auth/adminlist.html', NULL, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '111.121.76.3', 1567568092, 1567568092, 1),
(2759, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '111.121.76.3', 1567568101, 1567568101, 1),
(2760, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '111.121.76.3', 1567568101, 1567568101, 1),
(2761, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '111.121.76.3', 1567568102, 1567568102, 1),
(2762, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '111.121.76.3', 1567568102, 1567568102, 1),
(2763, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '111.121.76.3', 1567568104, 1567568104, 1),
(2764, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '111.121.76.3', 1567568108, 1567568108, 1),
(2765, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '111.121.76.3', 1567568115, 1567568115, 1),
(2766, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '111.121.76.3', 1567568115, 1567568115, 1),
(2767, 1, 'admin', '/index.php/admin/database/restore.html', NULL, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '111.121.76.3', 1567568341, 1567568341, 1),
(2768, 1, 'admin', '/index.php/admin/database/restore.html', NULL, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '111.121.76.3', 1567568341, 1567568341, 1),
(2769, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '111.121.76.3', 1567568342, 1567568342, 1),
(2770, 1, 'admin', '/index.php/admin/database/index.html', NULL, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '111.121.76.3', 1567568342, 1567568342, 1),
(2771, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '111.121.76.3', 1567568380, 1567568380, 1),
(2772, 1, 'admin', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '111.121.76.3', 1567568381, 1567568381, 1),
(2773, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '111.121.76.3', 1567568381, 1567568381, 1),
(2774, 1, 'admin', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '111.121.76.3', 1567568381, 1567568381, 1),
(2775, 1, 'admin', '/index.php/admin/auth/group.html', NULL, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '121.35.103.229', 1567568384, 1567568384, 1),
(2776, 1, 'admin', '/index.php/admin/link/index.html', NULL, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '111.121.76.3', 1567568384, 1567568384, 1),
(2777, 1, 'admin', '/index.php/admin/link/index.html', NULL, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '111.121.76.3', 1567568384, 1567568384, 1),
(2778, 1, 'admin', '/index.php/admin/article/index.html', NULL, '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '111.121.76.3', 1567568386, 1567568386, 1),
(2779, 1, 'admin', '/index.php/admin/article/index.html', NULL, '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '111.121.76.3', 1567568386, 1567568386, 1),
(2780, 1, 'admin', '/index.php/admin/article/articlecate.html', NULL, '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '111.121.76.3', 1567568387, 1567568387, 1),
(2781, 1, 'admin', '/index.php/admin/article/articlecate.html', NULL, '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '111.121.76.3', 1567568387, 1567568387, 1),
(2782, 1, 'admin', '/index.php/admin/article/index.html', NULL, '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '111.121.76.3', 1567568388, 1567568388, 1),
(2783, 1, 'admin', '/index.php/admin/addons/index.html', NULL, '插件列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '111.121.76.3', 1567568413, 1567568413, 1),
(2784, 1, 'admin', '/index.php/admin/addons/index.html', NULL, '插件列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '111.121.76.3', 1567568413, 1567568413, 1),
(2785, 0, 'Unknown', '/index.php/admin/login/index', '{\"username\":\"demo\",\"captcha\":\"pync\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '121.35.103.229', 1567568414, 1567568414, 1),
(2786, 1, 'admin', '/index.php/admin/database/restore.html', NULL, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '111.121.76.3', 1567568418, 1567568418, 1),
(2787, 1, 'admin', '/index.php/admin/database/restore.html', NULL, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '111.121.76.3', 1567568418, 1567568418, 1),
(2788, 0, 'Unknown', '/index.php/admin/login/index', '{\"username\":\"demo\",\"captcha\":\"bnft\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '121.35.103.229', 1567568420, 1567568420, 1),
(2789, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '111.121.76.3', 1567568420, 1567568420, 1),
(2790, 1, 'admin', '/index.php/admin/auth/adminrule.html', NULL, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '111.121.76.3', 1567568420, 1567568420, 1),
(2791, 3, 'demo', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '121.35.103.229', 1567568428, 1567568428, 1),
(2792, 3, 'demo', '/index.php/admin/user/index.html', NULL, '会员管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '121.35.103.229', 1567568428, 1567568428, 1),
(2793, 3, 'demo', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '121.35.103.229', 1567568440, 1567568440, 1),
(2794, 3, 'demo', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '121.35.103.229', 1567568440, 1567568440, 1),
(2795, 1, 'admin', '/index.php/admin/adv/index.html', NULL, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '111.121.76.3', 1567568442, 1567568442, 1),
(2796, 1, 'admin', '/index.php/admin/adv/index.html', NULL, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '111.121.76.3', 1567568442, 1567568442, 1),
(2797, 1, 'admin', '/index.php/admin/adv/pos.html', NULL, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '111.121.76.3', 1567568443, 1567568443, 1),
(2798, 1, 'admin', '/index.php/admin/adv/pos.html', NULL, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '111.121.76.3', 1567568443, 1567568443, 1),
(2799, 3, 'demo', '/index.php/admin/user/levelindex.html', NULL, '会员等级', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', '121.35.103.229', 1567568446, 1567568446, 1);

-- --------------------------------------------------------

--
-- 表的结构 `lm_adv`
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
-- 转存表中的数据 `lm_adv`
--

INSERT INTO `lm_adv` (`id`, `pid`, `media_type`, `ad_name`, `ad_link`, `ad_image`, `start_time`, `end_time`, `link_admin`, `link_email`, `link_phone`, `click_count`, `sort`, `status`, `orderby`, `target`, `bgcolor`, `create_time`, `update_time`) VALUES
(1, 2, 0, '首页', 'javascript:void(0);', '/public/upload/ad/2018/04-24/a7a54a5b527f0b1b069b8421378ad0fa.jpg', 1451577600, 1483286400, '', '', '', 0, 0, 1, 0, 0, '#43d7f6', 0, 0),
(2, 2, 0, '首页', 'javascript:void(0);', '/public/upload/ad/2018/04-25/93bf5c1ebdf4c4359253a107bcbdbe98.jpg', 1451577600, 1767283200, '', '', '', 0, 0, 1, 0, 0, '#ff8000', 0, 1566106884),
(3, 2, 0, '轮播', 'javascript:void(0);', '/public/upload/ad/2018/04-13/6eeaa63e76c946927d0c1e67f6cf4f4f.jpg', 1451577600, 1767283200, '', '', '', 0, 0, 1, 0, 0, '#fea8c1', 0, 0),
(4, 2, 0, '轮播', 'javascript:void(0);', '/public/upload/ad/2018/04-13/8099744a886c2cfad7c837e28aee9d52.jpg', 1451577600, 1767283200, '', '', '', 0, 0, 1, 0, 0, '#f1e6d2', 0, 0),
(7, 2, 0, '其他', 'javascript:void(0);', '/public/upload/ad/2018/04-13/7009c820b93bcf31d3e42df31d78ed71.jpg', 1451577600, 1767283200, '', '', '', 0, 0, 1, 0, 0, '#f1dcf7', 0, 0),
(12, 2, 0, '其他', 'javascript:void(0);', '/public/upload/ad/2018/04-24/44aa330b056f5b090b6d6ac8a9a072dd.jpg', 1451577600, 1767283200, '', '', '', 0, 0, 1, 0, 0, '#000000', 0, 0),
(82, 1, 0, '', 'https://www.baidu.com', '/storage/uploads/20190818\\0c2a7f85348cd9ae508ca860388fa021.png', 0, 0, '', '994927909@qq.com', '', 0, 0, 1, 50, 0, '', 1566107420, 1566107420),
(83, 1, 0, '组合套餐', 'https://www.baidu.com', '/storage/uploads/20190818\\2db9e450c251d0d21dac3d3384134bb0.png', 1566130740, 0, '', '994927909@qq.com', '', 0, 0, 1, 50, 0, '', 1566107921, 1566107921),
(84, 4, 0, 'banner6 ', 'https://www.baidu.com', '/storage/uploads/20190818\\8ebd41bd38db53338af00026cb592bc3.png', 1566130740, 0, '', '994927909@qq.com', '', 0, 0, 1, 50, 0, '', 1566107968, 1566107968),
(85, 1, 0, '组合套餐', 'https://www.baidu.com', '/storage/uploads/20190818\\674ca52c87c4552352f35d820c3ce33e.png', 0, 0, '', '994927909@qq.com', '', 0, 0, 1, 50, 0, '', 1566108105, 1566108105),
(86, 2, 0, '组合套餐', 'https://www.baidu.com', '/storage/uploads/20190818\\cd986a75a1be03d8a7af558fda044ca4.png', 1566130740, 0, '', '994927909@qq.com', '', 0, 0, 1, 50, 0, '', 1566108149, 1566108149),
(87, 2, 0, 'banner6 ', 'https://www.baidu.com', '/storage/uploads/20190818\\7e2ca2635af1031871ab121938818a4d.png', 1564588800, 1568908800, '', '994927909@qq.com', '', 0, 0, 1, 50, 0, '', 1566108542, 1566108542);

-- --------------------------------------------------------

--
-- 表的结构 `lm_adv_position`
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
-- 转存表中的数据 `lm_adv_position`
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
(510, 'Ad页面自动增加广告位 510 ', 0, 0, 'Ad页面', '', 1, 0, 0),
(511, 'Ad页面自动增加广告位 511 ', 0, 0, 'Ad页面', '', 1, 0, 0),
(512, 'Ad页面自动增加广告位 512 ', 0, 0, 'Ad页面', '', 1, 0, 0),
(513, 'Ad页面自动增加广告位 513 ', 0, 0, 'Ad页面', '', 1, 0, 0),
(514, 'Ad页面自动增加广告位 514 ', 0, 0, 'Ad页面', '', 1, 0, 0),
(515, 'Ad页面自动增加广告位 515 ', 0, 0, 'Ad页面', '', 1, 0, 0),
(516, 'Ad页面自动增加广告位 516 ', 0, 0, 'Ad页面', '', 1, 0, 0),
(517, 'Ad页面自动增加广告位 517 ', 0, 0, 'Ad页面', '', 1, 0, 0),
(518, 'Ad页面自动增加广告位 518 ', 0, 0, 'Ad页面', '', 1, 0, 0),
(531, 'Ad页面自动增加广告位 531 ', 0, 0, 'Ad页面', '', 1, 0, 0),
(533, 'Ad页面自动增加广告位 533 ', 0, 0, 'Ad页面', '', 1, 0, 0),
(534, 'Ad页面自动增加广告位 534 ', 0, 0, 'Ad页面', '', 1, 0, 0),
(539, '首页', 1080, 300, '其他1', '', 1, 1566111321, 1566111456);

-- --------------------------------------------------------

--
-- 表的结构 `lm_article`
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
-- 转存表中的数据 `lm_article`
--

INSERT INTO `lm_article` (`id`, `pid`, `title`, `description`, `content`, `author`, `author_email`, `keywords`, `article_type`, `status`, `file_url`, `open_type`, `link`, `click`, `publish_time`, `sort`, `thumb`, `create_time`, `update_time`) VALUES
(1, 1, '基于TP6 layui开发的cms 后台管理系统', '基于TP6 layui开发的cms 后台管理系统', '<p>基于TP6 layui开发的cms 后台管理系统</p>', '', '994927909@qq.com', 'tp6 layui', 1, 1, '', 0, '', 1206, 0, 0, '/storage/uploads/20190826\\b183bf1681077d0bafd37bc17caf2cdc.png', 1566799075, 1566801008);

-- --------------------------------------------------------

--
-- 表的结构 `lm_article_cate`
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
-- 转存表中的数据 `lm_article_cate`
--

INSERT INTO `lm_article_cate` (`id`, `title`, `title_alias`, `title_type`, `pid`, `show_in_nav`, `status`, `sort`, `cat_desc`, `keywords`, `create_time`, `update_time`) VALUES
(1, '新手上路', '', 1, 0, 0, 1, 0, '1233', '', 0, 1567486060),
(2, '购物指南', '', 1, 0, 0, 1, 2, '', '', 0, 0),
(3, '售后服务', '', 1, 0, 0, 1, 2, '', '', 0, 0),
(4, '支付方式', '', 1, 0, 0, 1, 4, '', '', 0, 0),
(5, '配送方式', '', 1, 0, 0, 1, 5, '', '', 0, 0),
(6, '系统公告', '', 1, 0, 0, 1, 6, '', '', 0, 0),
(7, '关于我们', '', 1, 0, 0, 1, 7, '', '', 0, 0),
(8, '测试分类', '测试分类', 0, 7, 0, 1, 50, '', '', 1566801126, 1566801126);

-- --------------------------------------------------------

--
-- 表的结构 `lm_auth_group`
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
-- 转存表中的数据 `lm_auth_group`
--

INSERT INTO `lm_auth_group` (`id`, `title`, `status`, `rules`, `create_time`, `update_time`) VALUES
(1, '超级管理员', 1, '1,2,20,21,40,34,39,73,3,4,5,9,10,11,12,22,13,6,7,8,14,15,16,17,18,19,26,27,28,29,30,31,32,33,35,36,37,38,23,24,25,41,47,48,49,50,51,52,54,55,56,57,58,66,59,60,61,62,65,74,69,72,70,71,75,42,46,53,44,45,68,43,', 1465114224, 1567327402),
(2, '测试1', 1, '1,6,35,38,26,30,7,16,2,39,34,3,13,76,77,81,82,83,41,47,48,51,54,57,59,60,74,69,75,42,46,45,', 1565929191, 1567568398),
(3, '测试2', 1, NULL, 1567485941, 1567485943);

-- --------------------------------------------------------

--
-- 表的结构 `lm_auth_rule`
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
-- 转存表中的数据 `lm_auth_rule`
--

INSERT INTO `lm_auth_rule` (`id`, `href`, `title`, `type`, `status`, `auth_open`, `menu_status`, `icon`, `condition`, `pid`, `sort`, `create_time`, `update_time`) VALUES
(1, 'System', '系统面板', 1, 1, 0, 1, 'fa fa-home', '', 0, 0, 1446535750, 0),
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
(23, 'Addons', '插件管理', 1, 1, 0, 1, 'fa fa-flickr', '', 0, 0, 0, 1566053592),
(24, 'Addons', '插件设置', 1, 1, 0, 1, 'fa fa-flickr', '', 23, 0, 0, 0),
(25, 'Addons/index', '插件列表', 1, 1, 0, 1, 'fa fa-globe', '', 24, 0, 0, 0),
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
(41, 'Content', '内容管理', 1, 1, 0, 1, 'fa fa-folder-open', '', 0, 50, 1566092187, 1566092574),
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
(86, 'User/levelEdit', '会员等级编辑', 1, 1, 0, 0, '', '', 82, 50, 1567568357, 1567568372);

-- --------------------------------------------------------

--
-- 表的结构 `lm_config`
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
-- 转存表中的数据 `lm_config`
--

INSERT INTO `lm_config` (`id`, `code`, `value`, `remark`, `type`, `status`, `create_time`, `update_time`) VALUES
(1, 'site_name', 'lemocm', '网站名称', 'site', 1, 0, 0),
(2, 'site_phone', '3', '网站客服服务电话', 'site', 1, 0, 0),
(3, 'site_state', '1', '状态', 'site', 1, 0, 0),
(4, 'site_logo', '/storage/uploads/logo.png', '网站logo图', 'site', 1, 0, 0),
(5, 'site_mobile_logo', 'site_mobile_logo.png', '默认网站手机端logo', 'site', 1, 0, 0),
(6, 'site_logowx', 'site_logowx.jpg', '微信网站二维码', 'site', 1, 0, 0),
(7, 'site_icp', '2', 'ICP备案号', 'site', 1, 0, 0),
(8, 'site_tel400', '40002541852', '解释,备注', 'site', 1, 0, 0),
(9, 'site_email', '858761000@qq.com', '电子邮件', 'site', 1, 0, 0),
(10, 'site_copyright', 'LEMOCMS版权所有@2018', '底部版权信息', 'site', 1, 0, 0),
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
(40, 'weixin_isuse', '', '是否微信登录', 'weixin', 1, 0, 0),
(41, 'weixin_appid', '', '微信appid', 'weixin', 1, 0, 0),
(42, 'weixin_secret', '', '微信appserite', 'weixin', 1, 0, 0),
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
(53, 'sms_template', 'SMS_158941284', '模板id', 'sms', 1, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `lm_link`
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
-- 转存表中的数据 `lm_link`
--

INSERT INTO `lm_link` (`id`, `name`, `url`, `type_id`, `email`, `qq`, `sort`, `status`, `create_time`, `update_time`) VALUES
(23, 'lemocms', 'https://www.lemocms.com', 0, '994927909@qq.com', '994927909', 50, 1, 1566102829, 1566103652),
(25, '百度', 'https://www.baidu.com', 0, '994927909@qq.com', '994927909', 50, 1, 1566103165, 1566103165),
(26, '新浪', 'https://www.sina.com', 0, '994927909@qq.com', '994927909', 50, 1, 1566103233, 1566103233);

-- --------------------------------------------------------

--
-- 表的结构 `lm_user`
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
-- 转存表中的数据 `lm_user`
--

INSERT INTO `lm_user` (`id`, `store_id`, `email`, `username`, `password`, `paypwd`, `sex`, `birthday`, `user_money`, `frozen_money`, `distribut_money`, `underling_number`, `pay_points`, `address_id`, `create_time`, `update_time`, `last_login`, `login_num`, `last_ip`, `qq`, `mobile`, `mobile_validated`, `oauth`, `openid`, `unionid`, `avatar`, `province`, `city`, `district`, `email_validated`, `nickname`, `level_id`, `discount`, `total_amount`, `status`, `is_distribut`, `first_leader`, `second_leader`, `third_leader`, `token`, `message_mask`, `push_id`, `distribut_level`, `is_vip`, `min_qrcode`, `poster`) VALUES
(1, 1, '15915407513@163.com', NULL, '519475228fe35ad067744465c42a19b2', '519475228fe35ad067744465c42a19b2', 0, -28800, '100000.00', '0.00', '0.00', 0, 100000, 0, 1523235674, NULL, 1523235674, 0, '', '', '', 0, '', NULL, NULL, '/public/upload/user/1/head_pic//1673d08c39ff9d1103611a7585a8ae0f.jpg', 0, 0, 0, 1, '15915407513@163.com', 4, '0.94', '4939.90', 1, 0, 0, 0, 0, '81953a80817fdf7c25e682ca3311abc9', 63, '0', 0, 0, NULL, NULL),
(2, 1, '123', NULL, '519475228fe35ad067744465c42a19b2', '5317bc949fb15f19cdf1be43cf9a5ae6', 2, 662659200, '1376.12', '100.00', '1120.00', 1, 57409, 0, 1523238708, NULL, 1524877594, 0, '', '', '15915407513', 1, '', NULL, NULL, '/public/upload/head_pic/20180426/a803dc7558982208df046e7e9e558125.jpg', 0, 0, 0, 0, '15915407513', 7, '0.91', '135988.54', 1, 1, 0, 0, 0, 'e9f5a1dc07f3674e5234667126f14d6a', 63, '140fe1da9e8bbcb28d2', 3, 0, NULL, NULL),
(3, 1, '', NULL, '519475228fe35ad067744465c42a19b2', '90600d68b0f56d90c4c34284d8dfd138', 0, 1524067200, '4057.47', '0.00', '0.00', 0, 49513, 0, 1523266058, NULL, 0, 0, '', '', '18515156363', 1, '', NULL, NULL, '/public/upload/head_pic/20180419/fec83644525cdd715416db8789cfe222.jpg', 0, 0, 0, 0, '青春', 4, '0.94', '9559.07', 1, 1, 0, 0, 0, '', 63, '190e35f7e07c8658ec6', 0, 0, NULL, NULL),
(4, 1, '15636363522@qq.com', NULL, '519475228fe35ad067744465c42a19b2', '519475228fe35ad067744465c42a19b2', 0, -28800, '0.00', '0.00', '0.00', 0, 110, 0, 1523266117, NULL, 1523266117, 0, '', '', '', 0, '', NULL, NULL, '/public/upload/user/4/head_pic//7268f1d4ce9879694c2ec7da77d4dfbb.png', 0, 0, 0, 1, '15636363522@qq.com', 1, '1.00', '0.00', 1, 0, 0, 0, 0, 'eaf8b23d80d7513ab4ffcf3b1129f668', 63, '0', 0, 0, NULL, NULL),
(5, 1, '', NULL, '519475228fe35ad067744465c42a19b2', '519475228fe35ad067744465c42a19b2', 0, 0, '49830.22', '0.00', '0.00', 0, 2410, 0, 1523588976, NULL, 1523588976, 0, '', '', '15766212618', 1, '', NULL, NULL, '/public/images/icon_goods_thumb_empty_300.png', 0, 0, 0, 0, '15766212618', 4, '0.94', '7687.08', 1, 1, 0, 0, 0, '91fa24fa9b42dfc79fc37d0acec4ba51', 63, '0', 0, 0, NULL, NULL),
(6, 1, '461799220@qq.com', NULL, '519475228fe35ad067744465c42a19b2', NULL, 0, 0, '1000.00', '0.00', '0.00', 0, 100, 0, 1523601798, NULL, 0, 0, '', '461799220', '18664316869', 0, '', NULL, NULL, NULL, 0, 0, 0, 0, '单测试1', 1, '1.00', '0.00', 1, 0, 0, 0, 0, '', 63, '', 0, 0, NULL, NULL),
(7, 1, '', NULL, '519475228fe35ad067744465c42a19b2', NULL, 0, 0, '0.00', '0.00', '0.00', 0, 100, 0, 1523608222, NULL, 1523608222, 0, '', '', '15274857485', 1, '', NULL, NULL, '/public/images/icon_goods_thumb_empty_300.png', 0, 0, 0, 0, '15274857485', 1, '1.00', '0.00', 1, 0, 3, 0, 0, '001b3f89dc686ad2f53f5481e8c9fb30', 63, '0', 0, 0, NULL, NULL),
(8, 1, '', NULL, '519475228fe35ad067744465c42a19b2', '519475228fe35ad067744465c42a19b2', 0, 0, '100000.00', '0.00', '0.00', 0, 100000, 0, 1523857661, NULL, 1540191996, 0, '', '', '13800138006', 1, '', NULL, NULL, 'http://thirdwx.qlogo.cn/mmopen/vi_32/c58Iiaib1aPodvKHMMGR9ZYmq7XGFUgppvhxgQKrJxdlZTAauZ8dTucEguiamsncVDR3h32TMO4YzppDmSuHIGI9w/132', 0, 0, 0, 0, 'summer', 2, '1.00', '55.00', 1, 0, 3, 0, 0, '', 63, '190e35f7e07c8658ec6', 0, 0, NULL, NULL),
(9, 1, '', NULL, '519475228fe35ad067744465c42a19b2', '519475228fe35ad067744465c42a19b2', 2, 1524153600, '18527.80', '0.00', '0.00', 0, 100210, 0, 1523861478, NULL, 0, 0, '', '1546515984', '15274851525', 0, '', NULL, NULL, '/public/upload/head_pic/20180420/b147d911d2d5b3ff252fa948d96fb5d3.jpg', 0, 0, 0, 0, 'nana', 2, '1.00', '871.20', 1, 1, 0, 0, 0, '', 63, '190e35f7e07c8658ec6', 0, 0, NULL, NULL),
(10, 1, '1522585@qq.com', NULL, '519475228fe35ad067744465c42a19b2', '519475228fe35ad067744465c42a19b2', 2, -28800, '5649.60', '0.00', '0.00', 0, 1100, 0, 1523864842, NULL, 1524801341, 0, '', '', '15919919433', 0, '', NULL, NULL, '/public/upload/head_pic/20180423/a20e71149cc243fc2df4c6eb5caadbbd.jpg', 0, 0, 0, 0, '等待', 4, '0.94', '6808.66', 1, 1, 0, 0, 0, 'cedbd4ca79a15888d4fd3a636834294f', 63, '140fe1da9e8bbcb28d2', 0, 0, NULL, NULL),
(11, 1, '', NULL, '519475228fe35ad067744465c42a19b2', NULL, 0, 0, '0.00', '0.00', '0.00', 0, 100, 0, 1523933777, NULL, 1523933777, 0, '', '', '18585859674', 1, '', NULL, NULL, '/public/images/icon_goods_thumb_empty_300.png', 0, 0, 0, 0, '18585859674', 1, '1.00', '0.00', 1, 1, 0, 0, 0, '2ba708bb3b18ff3b133d19802ddc8559', 63, '0', 0, 0, NULL, NULL),
(12, 1, '1546515984@11.com', NULL, '519475228fe35ad067744465c42a19b2', '519475228fe35ad067744465c42a19b2', 0, 0, '1824.00', '0.00', '0.00', 0, 2400, 0, 1524023190, NULL, 1524023190, 0, '', '', '18576762477', 1, '', NULL, NULL, '/public/images/icon_goods_thumb_empty_300.png', 0, 0, 0, 0, '18576762477', 2, '1.00', '88.00', 1, 1, 0, 0, 0, '55a01f6a994fa693a5c6364839475bc9', 63, '0', 0, 0, NULL, NULL),
(13, 1, '15274851694@qq.co', NULL, '519475228fe35ad067744465c42a19b2', NULL, 0, 0, '0.00', '0.00', '0.00', 0, 100, 0, 1524188790, NULL, 0, 0, '', '', '', 0, '', NULL, NULL, NULL, 0, 0, 0, 0, '32', 1, '1.00', '0.00', 1, 0, 0, 0, 0, '', 63, '', 0, 0, NULL, NULL),
(14, 1, '18516589423@qq.com', NULL, '519475228fe35ad067744465c42a19b2', NULL, 0, 0, '0.00', '0.00', '0.00', 0, 100, 0, 1524188838, NULL, 0, 0, '', '', '', 0, '', NULL, NULL, NULL, 0, 0, 0, 0, '3434', 1, '1.00', '0.00', 1, 0, 0, 0, 0, '', 63, '', 0, 0, NULL, NULL),
(15, 1, '', NULL, '519475228fe35ad067744465c42a19b2', NULL, 0, 0, '0.00', '0.00', '0.00', 0, 100, 0, 1524189831, NULL, 1524189831, 0, '', '', '15274851515', 1, '', NULL, NULL, '/public/images/icon_goods_thumb_empty_300.png', 0, 0, 0, 0, '15274851515', 2, '1.00', '0.00', 1, 1, 0, 0, 0, '002322068d39e76fbc9afbaa98001828', 63, '0', 0, 0, NULL, NULL),
(16, 1, '123@qq.com', NULL, '519475228fe35ad067744465c42a19b2', NULL, 1, 0, '0.00', '0.00', '0.00', 0, 100, 0, 1524470536, NULL, 0, 0, '', '', '13978520397', 0, '', NULL, NULL, NULL, 0, 0, 0, 0, '125', 3, '1.00', '0.00', 1, 0, 0, 0, 0, '', 63, '', 0, 0, NULL, NULL),
(17, 1, '', NULL, '519475228fe35ad067744465c42a19b2', '519475228fe35ad067744465c42a19b2', 0, 1524499200, '8977.90', '0.00', '0.00', 0, 190, 0, 1524554349, NULL, 1524822517, 0, '', '', '15247471414', 1, '', NULL, NULL, '/public/upload/head_pic/20180424/47684cc3e684a14cc2aae4a9294bf87e.jpg', 0, 0, 0, 0, '15247471414', 3, '0.99', '1266.00', 1, 1, 0, 0, 0, 'af20aa77641d815ff645ee524d2cdd73', 63, '190e35f7e07c8658ec6', 0, 0, NULL, NULL),
(18, 1, '', NULL, '519475228fe35ad067744465c42a19b2', NULL, 0, 0, '0.00', '0.00', '0.00', 0, 100, 0, 1524623385, NULL, 1524623385, 0, '', '', '15889560679', 1, '', NULL, NULL, '/public/images/icon_goods_thumb_empty_300.png', 0, 0, 0, 0, '15889560679', 2, '1.00', '0.00', 1, 1, 0, 0, 0, '94c54e14ccdddf8f39ffa86262ea2b2e', 63, '0', 0, 0, NULL, NULL),
(19, 1, '258282@163.com', NULL, '519475228fe35ad067744465c42a19b2', NULL, 0, 0, '0.00', '0.00', '0.00', 0, 100, 0, 1524706705, NULL, 0, 0, '', '', '15915407591', 0, '', NULL, NULL, NULL, 0, 0, 0, 0, '添加会员', 2, '1.00', '0.00', 1, 0, 0, 0, 0, '', 63, '', 0, 0, NULL, NULL),
(20, 1, '', NULL, '519475228fe35ad067744465c42a19b2', NULL, 0, 0, '0.00', '0.00', '0.00', 0, 0, 0, 1524714610, NULL, 1524714610, 0, '', '', '18515858596', 1, '', NULL, NULL, '/public/images/icon_goods_thumb_empty_300.png', 0, 0, 0, 0, '18515858596', 2, '1.00', '0.00', 1, 1, 0, 0, 0, '2ffa0713419b11ca86b8f3c81744a387', 63, '0', 0, 0, NULL, NULL),
(21, 1, '', NULL, '519475228fe35ad067744465c42a19b2', '519475228fe35ad067744465c42a19b2', 0, 1524672000, '49256.00', '0.00', '0.00', 0, 100, 0, 1524723726, NULL, 0, 0, '', '', '15274851596', 1, '', NULL, NULL, '/public/images/icon_goods_thumb_empty_300.png', 0, 0, 0, 0, '路人甲', 2, '1.00', '744.00', 1, 1, 3, 0, 0, '', 63, '100d855909727631376', 0, 0, NULL, NULL),
(22, 1, '', NULL, '519475228fe35ad067744465c42a19b2', '519475228fe35ad067744465c42a19b2', 0, 0, '57.62', '0.00', '0.00', 0, 44985, 0, 1524726905, NULL, 1524738073, 0, '', '', '13243434343', 1, '', NULL, NULL, '/public/upload/head_pic/20180427/dd96cecf4bc0bd6414351cd9574d01e7.jpg', 0, 0, 0, 0, '13243434343', 3, '0.99', '1760.14', 1, 1, 0, 0, 0, '16bc4823350241a1d942777f58e74457', 63, '', 0, 0, NULL, NULL),
(23, 1, '', NULL, '519475228fe35ad067744465c42a19b2', '519475228fe35ad067744465c42a19b2', 0, 0, '996778.79', '0.00', '0.00', 0, 1997520, 0, 1524730504, NULL, 1524824026, 0, '', '', '18679683657', 1, '', NULL, NULL, 'https://thirdqq.qlogo.cn/qqapp/1106296395/B0C344E52B6012FDABEE9ECD0557C0CC/100', 0, 0, 0, 0, '18679683657', 2, '1.00', '973.60', 1, 1, 0, 0, 0, '4ce10de3f32357294373107e321a8b60', 63, '190e35f7e07c8658ec6', 0, 0, NULL, NULL),
(24, 1, '', NULL, '519475228fe35ad067744465c42a19b2', '519475228fe35ad067744465c42a19b2', 0, 0, '98942.66', '0.00', '210.00', 1, 700, 0, 1524795728, NULL, 1524877186, 0, '', '', '18516589423', 1, '', NULL, NULL, '/public/upload/head_pic/20180427/76c696c4fef54d356f31ac6ac5e7836b.png', 0, 0, 0, 0, '18516589423', 3, '0.99', '1503.34', 1, 1, 0, 0, 0, '7eb905f8c6a08e6400e9d3d3e2c5e8f7', 63, '100d855909727631376', 3, 0, NULL, NULL),
(25, 1, '424077952@qq.com', NULL, '519475228fe35ad067744465c42a19b2', NULL, 0, 1524758400, '900.00', '100.00', '0.00', 0, 1650, 0, 1524801616, NULL, 0, 0, '', '', '15915407197', 0, '', NULL, NULL, '/public/upload/head_pic/20180427/349394fbb68b9b83d84acc8ea8b9bcae.jpg', 0, 0, 0, 0, '15915407197', 4, '0.94', '8406.10', 1, 0, 0, 0, 0, '', 63, '140fe1da9e8bbcb28d2', 0, 0, NULL, NULL),
(26, 1, '', NULL, '', NULL, 0, 0, '0.00', '0.00', '0.00', 0, 0, 0, 1524807993, NULL, 0, 0, '', '', '', 0, 'wx', 'oGMnQ1HqUFRg4dum-GVONjO5jnno', NULL, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIia8vDXHVeygaglict2Dl5T083zryibRSQznmOp5lpgjbyR8fwMcwgNhPAaY5LPHYGM0eOePV2icCJ2g/132', 0, 0, 0, 0, '咻咻', 2, '1.00', '152.00', 1, 1, 0, 0, 0, '', 63, '', 0, 0, NULL, NULL),
(28, 1, '', NULL, '', NULL, 1, 0, '0.00', '0.00', '0.00', 0, 0, 0, 1524823542, NULL, 1524823548, 0, '', '', '', 0, '', NULL, NULL, 'http://thirdwx.qlogo.cn/mmopen/PiajxSqBRaELISygfibpicKgw6UDPAMkC8heWGaoia4UWwzwKXfCOJ2yWPLMKVmPUAeeHdicOCGSniccDOiaRr7ribAxeQ/132', 0, 0, 0, 0, '承诺', 1, '1.00', '0.00', 1, 1, 0, 0, 0, 'd1ebce2f921d4d6a976523dc6c4c0bb8', 63, '', 0, 0, NULL, NULL),
(29, 1, '', NULL, '', NULL, 1, 0, '0.00', '0.00', '0.00', 0, 0, 0, 1524823620, NULL, 1524823620, 0, '', '', '', 0, 'weixin', 'o9cTBwb9m33ZB0MCH3N816ZKAjfg', NULL, 'http://thirdwx.qlogo.cn/mmopen/vi_32/h3xnlXLyIUwuUdl1tlHZGiatDgjthtMHUVkFg8tX9VPUGfnWHjDaynTKs0fMfWpoPLSOmCaVL5Es92iar7BPtnaA/132', 0, 0, 0, 0, '海南本土歌手陈建强', 1, '1.00', '0.00', 1, 1, 0, 0, 0, '6f953ee36d49c10eada4b030feb57336', 63, '', 0, 0, NULL, NULL),
(30, 1, '', NULL, '', NULL, 1, 0, '0.00', '0.00', '0.00', 0, 0, 0, 1524823875, NULL, 1524823901, 0, '', '', '', 0, '', NULL, NULL, 'http://thirdwx.qlogo.cn/mmopen/uJrMaWkMNhuNZVicusbq7252Wb3ia2mz9R5d4GYs7niatXvibiafDJQlcicTT9QEcFu8uMgia25yLRtlNyVOIo483KPLsuPaQEbIO4ic/132', 0, 0, 0, 0, '独一无二', 1, '1.00', '0.00', 1, 1, 0, 0, 0, '3cafd0658e0a7184e63b252fc07023cf', 63, '', 0, 0, NULL, NULL),
(31, 1, '', NULL, '519475228fe35ad067744465c42a19b2', '519475228fe35ad067744465c42a19b2', 0, 0, '99498.00', '0.00', '0.00', 0, 100, 0, 1524825281, NULL, 1524825281, 0, '', '', '18516589633', 1, '', NULL, NULL, '/public/images/icon_goods_thumb_empty_300.png', 0, 0, 0, 0, '18516589633', 3, '0.99', '1019.00', 1, 1, 24, 0, 0, '4f5b5aa5d7aed92baabd8a80616846e0', 63, '0', 0, 0, NULL, NULL),
(32, 1, '', NULL, '', NULL, 0, 0, '0.00', '0.00', '0.00', 0, 0, 0, 1524825369, NULL, 1524877618, 0, '', '', '', 0, 'weixin', 'o9cTBwS0VxKjNkxe6NM9sYIorhAM', NULL, '/public/images/icon_goods_thumb_empty_300.png', 0, 0, 0, 0, '傅傅', 3, '0.99', '2378.60', 1, 1, 2, 0, 0, 'a552ca2c3b6ad9c02cf45afb44d7d6e4', 63, '', 0, 0, NULL, NULL),
(33, 1, '', NULL, '519475228fe35ad067744465c42a19b2', '4710767206f1985084aee312c1e8c15c', 2, 0, '0.00', '0.00', '0.00', 0, 0, 0, 1524825395, NULL, 1524827692, 0, '', '', '13923797247', 0, '', NULL, NULL, NULL, 0, 0, 0, 0, '你值得拥有', 1, '1.00', '0.00', 1, 0, 0, 0, 0, '7a790bd2706dc332db102b6b2080d2b1', 63, '', 0, 0, NULL, NULL),
(34, 1, '', NULL, '', NULL, 1, 0, '0.00', '0.00', '0.00', 0, 0, 0, 1524828616, NULL, 1524828729, 0, '', '', '', 0, '', NULL, NULL, 'http://thirdwx.qlogo.cn/mmopen/1eiaFuQxQFhwfU2lUVgOuoLudu9NbLgOZB6GtoRAG5ZtOeOeMW9iaqegd2zF3ltgLmpQYmpF6xZGCPoibzMVT5PyVVuFQbLRpics/132', 0, 0, 0, 0, '哦', 1, '1.00', '0.00', 1, 1, 0, 0, 0, '5479315adb1092740b3533f5747355c0', 63, '', 0, 0, NULL, NULL),
(35, 1, '', NULL, '', NULL, 1, 0, '0.00', '0.00', '0.00', 0, 0, 0, 1524834667, NULL, 1524834676, 0, '', '', '', 0, '', NULL, NULL, 'http://thirdwx.qlogo.cn/mmopen/1eiaFuQxQFhxicd52FQVGFnVc8HPcwxversDFAjm9MvIO0vibtiaGibrjnMyN7EnN9uEpJ8J4iaLeicw2z35wwmVZ8CPQnEMibh1YSF6/132', 0, 0, 0, 0, '呼拉耶', 1, '1.00', '0.00', 1, 1, 0, 0, 0, '70a24136b0a7608762722d8ccd8900a9', 63, '', 0, 0, NULL, NULL),
(36, 1, '', NULL, '', NULL, 1, 0, '0.00', '0.00', '0.00', 0, 0, 0, 1524841123, NULL, 1524841142, 0, '', '', '', 0, '', NULL, NULL, 'http://thirdwx.qlogo.cn/mmopen/kYOuNqHYNuAHbhuCfOrlyDqibMK5Za5HRl7AVuq2ib0Je0UPMozwY9xQHxVcoIYUFvFhmgo1GeRViaxqXvAk8yhu61NBxLhmXF1/132', 0, 0, 0, 0, '睿佳科技李健', 1, '1.00', '0.00', 1, 1, 0, 0, 0, '78a50ff12ab85f8bc8221ecc2994306d', 63, '', 0, 0, NULL, NULL),
(37, 1, '', NULL, '', NULL, 1, 0, '0.00', '0.00', '0.00', 0, 0, 0, 1524841193, NULL, 1524841203, 0, '', '', '', 0, '', NULL, NULL, 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM7Pct41m8E7oTHtGt6XncCmDgttK7s6Ftws0JibWNhQaC1vVpLrdbbqUKkwIAOxZIKtF30O235LKkw/132', 0, 0, 0, 0, '猪鼓励', 1, '1.00', '0.00', 1, 1, 0, 0, 0, 'd1c78c6eed15cc6f90cd00b4160c1a95', 63, '', 0, 0, NULL, NULL),
(38, 1, '', NULL, '', NULL, 1, 0, '0.00', '0.00', '0.00', 0, 0, 0, 1524842949, NULL, 1524842982, 0, '', '', '', 0, '', NULL, NULL, 'http://thirdwx.qlogo.cn/mmopen/PiajxSqBRaEIXMLyayEJ2ehsKcQQ1qYmZxJUQs0bAbLk1KOd9QKnVU1dWrX6ZD2F6wDBWtn3xDLl0TlaDCeibSmw/132', 0, 0, 0, 0, '小胡科技&趣闪租', 1, '1.00', '0.00', 1, 1, 0, 0, 0, '774231d44f815bf2380f196d63d18c15', 63, '', 0, 0, NULL, NULL),
(39, 1, '', NULL, '', NULL, 1, 0, '0.00', '0.00', '0.00', 0, 0, 0, 1524877064, NULL, 1524877079, 0, '', '', '', 0, '', NULL, NULL, 'http://thirdwx.qlogo.cn/mmopen/PiajxSqBRaEJeHCYeLS7zGtp9yP3G7R6v2BH3sLCQvUgfNnlk7oqm1rHq11btzP96dnBF510PVbTpZDzF3yMfLQ/132', 0, 0, 0, 0, '[爱心]等待…', 1, '1.00', '0.00', 1, 1, 0, 0, 0, '3d2660223342811f4f09170aed8d696b', 63, '', 0, 0, NULL, NULL),
(40, 1, '', NULL, '', NULL, 1, 0, '0.00', '0.00', '0.00', 0, 0, 0, 1524877295, NULL, 1524877295, 0, '', '', '', 0, 'weixin', 'o9cTBwUDY08LVZUAXIvagXZrrp10', NULL, 'http://thirdwx.qlogo.cn/mmopen/vi_32/cTRpAMg0XXiaeh8tSPPjib3dwobK7N79OzKL1ic42S9KbEKHuvTgWfRjPYphc7kXDsazdJAhlbDCseOPuenjC9KIg/132', 0, 0, 0, 0, '王', 1, '1.00', '0.00', 1, 1, 0, 0, 0, '54a80199155e63b5cc4a3dbc2a27dc84', 63, '', 0, 0, NULL, NULL),
(41, 1, '994927909@qq.com', '心之所向', '', NULL, 1, 0, '0.00', '0.00', '0.00', 0, 0, 0, 1524877656, 1567563697, 1524877664, 0, '', '', '18397423845', 0, '', NULL, NULL, '/storage/uploads/20190904\\454cd1e3d232615e1cab49a54abe1274.png', 0, 0, 0, 0, 'AM༊྄ཻ ㎕࿐', 1, '1.00', '0.00', 1, 1, 0, 0, 0, '9ca781b13e3dd896fd809ba46ddd9734', 63, '', 0, 0, NULL, NULL),
(43, 1, '9949279099@qq.com', 'ny8zxovm', '', NULL, 1, 0, '0.00', '0.00', '0.00', 0, 0, 0, 1567563788, 1567563788, 0, 0, '', '', '18397423846', 0, '', NULL, NULL, '/storage/uploads/20190904\\1b44b01f2becc018458ca9a995871fb8.jpg', 0, 0, 0, 0, NULL, 1, '1.00', '0.00', 1, 0, 0, 0, 0, '', 63, '', 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `lm_user_address`
--

CREATE TABLE `lm_user_address` (
  `id` mediumint(8) UNSIGNED NOT NULL COMMENT '表id',
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户id',
  `consignee` varchar(60) NOT NULL DEFAULT '' COMMENT '收货人',
  `email` varchar(60) NOT NULL DEFAULT '' COMMENT '邮箱地址',
  `country` int(11) NOT NULL DEFAULT '0' COMMENT '国家',
  `province` int(11) NOT NULL DEFAULT '0' COMMENT '省份',
  `city` int(11) NOT NULL DEFAULT '0' COMMENT '城市',
  `district` int(11) NOT NULL DEFAULT '0' COMMENT '地区',
  `twon` int(11) DEFAULT '0' COMMENT '乡镇',
  `address` varchar(120) NOT NULL DEFAULT '' COMMENT '地址',
  `zipcode` varchar(60) NOT NULL DEFAULT '' COMMENT '邮政编码',
  `mobile` varchar(60) NOT NULL DEFAULT '' COMMENT '手机',
  `is_default` tinyint(1) DEFAULT '0' COMMENT '默认收货地址',
  `longitude` decimal(10,7) NOT NULL DEFAULT '0.0000000' COMMENT '地址经度',
  `latitude` decimal(10,7) NOT NULL DEFAULT '0.0000000' COMMENT '地址纬度',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户地址表';

--
-- 转存表中的数据 `lm_user_address`
--

INSERT INTO `lm_user_address` (`id`, `user_id`, `consignee`, `email`, `country`, `province`, `city`, `district`, `twon`, `address`, `zipcode`, `mobile`, `is_default`, `longitude`, `latitude`, `create_time`, `update_time`) VALUES
(4, 4, '春夏秋冬', '', 0, 1, 2, 3, 0, '飞跃千山万水', '', '15274851694', 1, '0.0000000', '0.0000000', NULL, NULL),
(5, 5, '直径4CM棒棒', '', 0, 636, 1188, 1190, 1195, '棒棒', '', '13800138006', 0, '0.0000000', '0.0000000', NULL, NULL),
(6, 6, '测试单商家1', '', 0, 28240, 28241, 28308, 28312, '123456', '', '0755-86140485', 0, '0.0000000', '0.0000000', NULL, NULL),
(7, 6, '测试单商家2', '', 0, 21387, 21388, 21508, 21519, '123456789', '', '0755-86140485', 0, '0.0000000', '0.0000000', NULL, NULL),
(8, 6, '测试单3', '', 0, 28240, 28558, 28604, 28613, '坂田国际中心', '', '0755-86140485', 1, '0.0000000', '0.0000000', NULL, NULL),
(12, 11, '欧沃', '', 0, 46047, 46380, 46410, 46420, '11区', '60082252', '17785858585', 1, '0.0000000', '0.0000000', NULL, NULL),
(13, 8, '成都', '', 0, 636, 1291, 1319, 1322, '12345666', '', '15274851694', 1, '0.0000000', '0.0000000', NULL, NULL),
(14, 3, '咖啡', '', 0, 1, 2, 14, 17, '站北地区11号大街12号', '12345665', '15274851694', 1, '0.0000000', '0.0000000', NULL, NULL),
(15, 1, '小小', '', 0, 3102, 3224, 3225, 0, '西城工业区12栋', '51828482', '15915407513', 1, '0.0000000', '0.0000000', NULL, NULL),
(18, 3, '夏夏', '', 0, 636, 637, 639, 4, '炫舞大厅112', '', '15274851694', 0, '0.0000000', '0.0000000', NULL, NULL),
(19, 12, '夏夏', '', 0, 1, 2, 3, 0, '123456489', '', '15274851694', 0, '0.0000000', '0.0000000', NULL, NULL),
(20, 12, '夏夏', '', 0, 1, 2, 3, 0, '123456489', '', '15274851694', 1, '0.0000000', '0.0000000', NULL, NULL),
(24, 1, 'DDD', '', 0, 28240, 28558, 28590, 28593, '西城工业区12栋', '', '15915407513', 0, '0.0000000', '0.0000000', NULL, NULL),
(25, 1, '傅曼', '', 0, 28240, 28558, 28590, 0, '西城工业区12栋', '58282514', '15915407513', 0, '0.0000000', '0.0000000', NULL, NULL),
(26, 3, 'xiasj', '', 0, 28240, 28558, 28581, 28582, '433434344', '60025569', '18516589423', 0, '0.0000000', '0.0000000', NULL, NULL),
(27, 5, '好好', '', 0, 3102, 3379, 3388, 0, '123485788', '', '15274851684', 0, '0.0000000', '0.0000000', NULL, NULL),
(36, 5, '代代', '', 0, 1, 2, 3, 0, '123456', '', '18516589423', 0, '0.0000000', '0.0000000', NULL, NULL),
(37, 5, '代代', '', 0, 1, 2, 3, 0, '123456', '', '18516589423', 1, '0.0000000', '0.0000000', NULL, NULL),
(42, 9, '夏夏', '', 0, 1, 2, 3, 4, '123456786', '', '15274851694', 1, '0.0000000', '0.0000000', NULL, NULL),
(43, 9, 'trrr', '', 0, 10543, 10544, 10560, 10567, '这是上海地区', '', '18516589423', 0, '0.0000000', '0.0000000', NULL, NULL),
(46, 10, 'XIAO', '', 0, 636, 936, 952, 0, 'SKFHKSHFKSF', '', '15919919433', 1, '0.0000000', '0.0000000', NULL, NULL),
(47, 3, '罗华', '', 0, 7531, 7986, 8008, 8009, '34343434334', '600', '18515453456', 0, '0.0000000', '0.0000000', NULL, NULL),
(48, 3, '华晨宇', '', 0, 7531, 7706, 7708, 7717, '1233455', '60025536', '18516589423', 0, '0.0000000', '0.0000000', NULL, NULL),
(49, 10, '方法', '', 0, 28240, 28558, 28590, 0, '西城工业区12栋', '582', '15915407513', 0, '0.0000000', '0.0000000', NULL, NULL),
(52, 3, '可可', '', 0, 1, 2, 105, 110, '站北地区11号大街12', '12345665', '18516589423', 0, '0.0000000', '0.0000000', NULL, NULL),
(54, 21, '七七', '', 0, 1, 2, 3, 0, 'yuyuyuyuyuyuyuyuu', '', '15274851694', 1, '0.0000000', '0.0000000', NULL, NULL),
(55, 22, '夏夏', '', 0, 1, 2, 3, 4, '法国红酒', '', '15274851694', 0, '0.0000000', '0.0000000', NULL, NULL),
(56, 23, '罗', '', 0, 3102, 3379, 3388, 3391, '哦用', '', '18679683657', 1, '0.0000000', '0.0000000', NULL, NULL),
(57, 22, '风格过', '', 0, 338, 339, 340, 341, '36746888', '', '15274851694', 1, '0.0000000', '0.0000000', NULL, NULL),
(58, 10, '傅', '', 0, 3102, 3431, 3466, 3471, '啦他家', '', '15915407513', 0, '0.0000000', '0.0000000', NULL, NULL),
(59, 24, '夏夏', '', 0, 1, 2, 3, 0, '3545454545454', '', '15274851694', 1, '0.0000000', '0.0000000', NULL, NULL),
(61, 2, '拉锯', '', 0, 3102, 3597, 3673, 3679, '啦啊龙', '', '15915407513', 1, '0.0000000', '0.0000000', NULL, NULL),
(66, 2, '啊卡通', '', 0, 636, 2400, 2494, 2501, '糖醋里脊', '', '15915407813', 0, '0.0000000', '0.0000000', NULL, NULL),
(68, 2, '啊他家', '', 0, 7531, 8216, 8311, 8316, '我哦陌陌哦', '', '15915407513', 0, '0.0000000', '0.0000000', NULL, NULL),
(78, 2, '笑笑', '', 0, 1, 2, 14, 16, '北京大学', '', '15915407513', 0, '0.0000000', '0.0000000', NULL, NULL),
(79, 23, '英子', '', 0, 636, 936, 938, 941, '下塘路12号', '', '15274851694', 0, '0.0000000', '0.0000000', NULL, NULL),
(80, 25, '梅子', '', 0, 636, 1188, 1218, 1220, '河北省', '', '15915407513', 1, '0.0000000', '0.0000000', NULL, NULL),
(81, 25, 'fghh', '', 0, 1, 2, 14, 15, '北京大学', '', '15915407513', 0, '0.0000000', '0.0000000', NULL, NULL),
(82, 26, '越来五八了的', '', 0, 1, 2, 3, 4, '1255688555', '', '18516586423', 1, '0.0000000', '0.0000000', NULL, NULL),
(83, 17, '洽洽', '', 0, 636, 637, 639, 641, '哦某某路', '', '18516589423', 1, '0.0000000', '0.0000000', NULL, NULL),
(84, 31, '夏夏', '', 0, 1, 2, 3, 0, '2123323323', '', '15274851685', 1, '0.0000000', '0.0000000', NULL, NULL),
(85, 32, '傅曼', '', 0, 636, 936, 938, 0, '他卡里路JJ', '', '13923797247', 1, '0.0000000', '0.0000000', NULL, NULL),
(86, 33, '何凤兰', '', 0, 28240, 28558, 28590, 0, '宝安西乡宝田一路铁岗路拓展工业园', '', '13923797247', 1, '0.0000000', '0.0000000', NULL, NULL),
(87, 8, '张谷泉', '', 0, 28240, 28558, 28581, 28582, '市民中心170号909', '', '13554754722', 0, '113.9275180', '22.5308400', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `lm_user_level`
--

CREATE TABLE `lm_user_level` (
  `id` smallint(4) UNSIGNED NOT NULL COMMENT '表id',
  `level_name` varchar(30) DEFAULT NULL COMMENT '头衔名称',
  `amount` decimal(10,2) DEFAULT NULL COMMENT '等级必要金额',
  `discount` smallint(4) DEFAULT '100' COMMENT '折扣',
  `status` tinyint(1) DEFAULT '1',
  `sort` int(5) DEFAULT '0',
  `description` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '头街 描述',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户等级表';

--
-- 转存表中的数据 `lm_user_level`
--

INSERT INTO `lm_user_level` (`id`, `level_name`, `amount`, `discount`, `status`, `sort`, `description`, `create_time`, `update_time`) VALUES
(1, '倔强青铜', '0.00', 100, 1, NULL, '若如初相见，若如初相恋', NULL, 1567566329),
(2, '秩序白银', '1000.00', 99, 1, NULL, '', NULL, NULL),
(3, '荣耀黄金', '3000.00', 94, 1, NULL, '', NULL, NULL),
(4, '尊贵铂金', '10000.00', 95, 1, NULL, '', NULL, NULL),
(5, '永恒钻石', '50000.00', 93, 1, NULL, '', NULL, NULL),
(6, '至尊星耀', '100000.00', 91, 1, NULL, '', NULL, NULL),
(7, '最强王者', '3000000.00', 90, 1, NULL, '', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `lm_user_sign`
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
-- 转存表中的数据 `lm_user_sign`
--

INSERT INTO `lm_user_sign` (`id`, `user_id`, `sign_total`, `sign_count`, `sign_last`, `sign_time`, `points`, `this_month`) VALUES
(1, 4, 1, 1, '2018-4-10', '2018-4-10', 10, 10),
(2, 2, 3, 2, '2018-4-27', '2018-4-17,2018-4-26,2018-4-27', 30, 30),
(3, 5, 1, 1, '2018-4-19', '2018-4-19', 10, 10),
(4, 3, 3, 1, '2018-4-23', '2018-4-19,2018-4-20,2018-4-23', 30, 30),
(5, 9, 1, 1, '2018-4-19', '2018-4-19', 10, 10),
(6, 22, 1, 1, '2018-4-27', '2018-4-27', 10, 10);

--
-- 转储表的索引
--

--
-- 表的索引 `lm_admin`
--
ALTER TABLE `lm_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_username` (`username`);

--
-- 表的索引 `lm_admin_log`
--
ALTER TABLE `lm_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD KEY `admin_id` (`admin_id`);

--
-- 表的索引 `lm_adv`
--
ALTER TABLE `lm_adv`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enabled` (`status`) USING BTREE,
  ADD KEY `position_id` (`pid`) USING BTREE;

--
-- 表的索引 `lm_adv_position`
--
ALTER TABLE `lm_adv_position`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `position_id` (`id`);

--
-- 表的索引 `lm_article`
--
ALTER TABLE `lm_article`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `pid` (`pid`) USING BTREE;

--
-- 表的索引 `lm_article_cate`
--
ALTER TABLE `lm_article_cate`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE;

--
-- 表的索引 `lm_auth_group`
--
ALTER TABLE `lm_auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD UNIQUE KEY `title` (`title`);

--
-- 表的索引 `lm_auth_rule`
--
ALTER TABLE `lm_auth_rule`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `href` (`href`);

--
-- 表的索引 `lm_config`
--
ALTER TABLE `lm_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- 表的索引 `lm_link`
--
ALTER TABLE `lm_link`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `lm_user`
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
-- 表的索引 `lm_user_address`
--
ALTER TABLE `lm_user_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- 表的索引 `lm_user_level`
--
ALTER TABLE `lm_user_level`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- 表的索引 `lm_user_sign`
--
ALTER TABLE `lm_user_sign`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `lm_admin`
--
ALTER TABLE `lm_admin`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '管理员ID', AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `lm_admin_log`
--
ALTER TABLE `lm_admin_log`
  MODIFY `id` bigint(16) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表id', AUTO_INCREMENT=2800;

--
-- 使用表AUTO_INCREMENT `lm_adv`
--
ALTER TABLE `lm_adv`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '广告id', AUTO_INCREMENT=88;

--
-- 使用表AUTO_INCREMENT `lm_adv_position`
--
ALTER TABLE `lm_adv_position`
  MODIFY `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表id', AUTO_INCREMENT=540;

--
-- 使用表AUTO_INCREMENT `lm_article`
--
ALTER TABLE `lm_article`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `lm_article_cate`
--
ALTER TABLE `lm_article_cate`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `lm_auth_group`
--
ALTER TABLE `lm_auth_group`
  MODIFY `id` smallint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '分组id', AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `lm_auth_rule`
--
ALTER TABLE `lm_auth_rule`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- 使用表AUTO_INCREMENT `lm_config`
--
ALTER TABLE `lm_config`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- 使用表AUTO_INCREMENT `lm_link`
--
ALTER TABLE `lm_link`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- 使用表AUTO_INCREMENT `lm_user`
--
ALTER TABLE `lm_user`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表id', AUTO_INCREMENT=44;

--
-- 使用表AUTO_INCREMENT `lm_user_address`
--
ALTER TABLE `lm_user_address`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表id', AUTO_INCREMENT=88;

--
-- 使用表AUTO_INCREMENT `lm_user_level`
--
ALTER TABLE `lm_user_level`
  MODIFY `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表id', AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `lm_user_sign`
--
ALTER TABLE `lm_user_sign`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

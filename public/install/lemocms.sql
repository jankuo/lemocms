-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 09, 2020 at 02:36 PM
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
(1, 'admin', '$2y$12$jJNSWOS.8he.z3s17YCRtesZ1v6F6Ck3zUGBhniRDr2LNHfUUwH5.', 1, '994927909@qq.com', '', '18397423845', '127.0.0.1', '0', 1, '/storage/uploads/20190817\\294faa45405fa24da59c311f55ce313f.png', 1482132862, 1577337495),
(3, 'demo', '$2y$12$jJNSWOS.8he.z3s17YCRtesZ1v6F6Ck3zUGBhniRDr2LNHfUUwH5.', 2, '994927909@qq.com', '', '18397423845', '119.122.91.146', '0', 1, '/storage/uploads/20190817\\a17c794ac7fae7db012aa6e997cf3400.jpg', 1564041575, 1579511952);
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
(2, '测试1', 1, '76,77,81,82,83,41,137,142,129,131,133,134,136,147,141,42,46,45,47,48,51,54,57,59,60,74,69,75,87,120,121,122,123,124,125,126,127,128,88,97,89,99,100,101,102,90,103,104,91,112,113,114,115,116,92,117,118,119,93,105,106,107,108,109,94,110,111,143,144,145,146,155,156,1,2,20,21,40,34,39,3,9,22,13,6,7,16,26,30,35,38,', 1565929191, 1578809974),
(3, '测试2', 1, NULL, 1567485941, 1578731269);

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
(1, 'admin/Sys.System', '系统', 1, 1, 0, 1, 'fa fa-home', '', 0, 58, 1446535750, 1571966892),
(2, 'admin/Sys.System', '系统设置', 1, 1, 0, 1, 'fa fa-gears', '', 1, 0, 1446535789, 1571882291),
(3, 'admin/Sys.Database', '数据库管理', 1, 1, 0, 1, 'fa fa-database', '', 1, 0, 1446535805, 0),
(4, 'admin/Sys.Database/restore', '还原数据库', 2, 1, 0, 1, 'fa fa-database', '', 3, 0, 1446535750, 0),
(5, 'admin/Sys.Database/backup', '数据库备份', 2, 1, 0, 0, 'fa fa-database', '', 3, 0, 1446535834, 0),
(6, 'admin/Sys.Auth', '权限管理', 1, 1, 0, 1, 'fa fa-cog', '', 1, 0, 0, 0),
(7, 'admin/Sys.Auth/adminRule', '权限列表', 1, 1, 0, 1, 'fa fa-cog', '', 6, 0, 0, 0),
(8, 'admin/Sys.Auth/ruleEdit', '权限编辑', 2, 1, 0, 0, 'fa fa-cog', '', 7, 0, 0, 0),
(9, 'admin/Sys.Database/repair', '数据库修复', 2, 1, 0, 0, '', '', 3, 0, 0, 0),
(10, 'admin/Sys.Database/import', '数据还原', 2, 1, 0, 0, '', '', 3, 0, 0, 0),
(11, 'admin/Sys.Database/downFile', '数据下载', 2, 1, 0, 0, '', '', 3, 0, 0, 0),
(12, 'admin/Sys.Database/delSqlFiles', '删除数据库', 2, 1, 0, 0, '', '', 3, 0, 0, 0),
(13, 'admin/Sys.Database/index', '数据库列表', 1, 1, 0, 1, 'fa fa-database', '', 3, 1, 0, 0),
(14, 'admin/Sys.Auth/ruleState', '菜单显示或者隐藏', 2, 1, 0, 0, '', '', 7, 0, 0, 0),
(15, 'admin/Sys.Auth/ruleOpen', '权限是否验证', 2, 1, 0, 0, '', '', 7, 0, 0, 0),
(16, 'admin/Sys.Auth/ruleSort', '权限排序', 2, 1, 0, 0, '', '', 7, 0, 0, 0),
(17, 'admin/Sys.Auth/ruleDel', '权限删除', 2, 1, 0, 0, '', '', 7, 0, 0, 0),
(18, 'admin/Sys.Auth/ruleSelectDel', '权限批量删除', 2, 1, 0, 0, '', '', 7, 0, 0, 0),
(19, 'admin/Sys.Auth/ruleAdd', '权限增加', 2, 1, 0, 0, '', '', 7, 0, 0, 0),
(20, 'admin/Sys.System/index', '站点设置', 1, 1, 0, 1, 'fa fa-gears', '', 2, 0, 0, 1567228601),
(21, 'admin/Sys.Adminlog/index', '日志管理', 1, 1, 0, 1, 'fa fa-life-ring', '', 2, 0, 0, 1566007925),
(22, 'admin/Sys.Database/optimize', '数据库优化', 1, 1, 0, 0, '', '', 3, 0, 0, 0),
(26, 'admin/Sys.Auth/group', '权限组', 1, 1, 0, 1, 'fa fa-globe', '', 6, 0, 0, 0),
(27, 'admin/Sys.Auth/groupDel', '用户组删除', 1, 1, 0, 0, '', '', 26, 0, 0, 0),
(28, 'admin/Sys.Auth/groupAdd', '用户组添加', 1, 1, 0, 0, '', '', 26, 0, 0, 0),
(29, 'admin/Sys.Auth/groupEdit', '用户组修改', 1, 1, 0, 0, '', '', 26, 0, 0, 0),
(30, 'admin/Sys.Auth/groupState', '用户组状态修改', 1, 1, 0, 0, '', '', 26, 0, 0, 0),
(31, 'admin/Sys.Auth/groupSelectDel', '用户组批量删除', 1, 1, 0, 0, '', '', 26, 0, 0, 0),
(32, 'admin/Sys.Auth/groupAccess', '用户组显示权限', 1, 1, 0, 0, '', '', 26, 0, 0, 0),
(33, 'admin/Sys.Auth/groupSetaccess', '用户组保存权限', 1, 1, 0, 0, '', '', 26, 0, 0, 0),
(34, 'admin/Sys.Uploads/uploads', '上传文件', 1, 1, 0, 0, 'fa fa-adjust', '', 2, 0, 0, 1571966280),
(35, 'admin/Sys.Auth/adminList', '管理员列表', 1, 1, 0, 1, 'fa fa-user-circle', '', 6, 0, 1, 0),
(36, 'admin/Sys.Auth/adminAdd', '添加管理员', 1, 1, 0, 0, '', '', 35, 0, 0, 0),
(37, 'admin/Sys.Auth/adminDel', '删除管理员', 1, 1, 0, 0, '', '', 35, 0, 0, 0),
(38, 'admin/Sys.Auth/adminState', '管理员状态', 1, 1, 0, 0, '', '', 35, 0, 0, 0),
(39, 'admin/Index/password', '修改密码', 1, 1, 0, 0, '', '', 2, 0, 0, 0),
(40, 'admin/Sys.Adminlog/delete', '删除日志', 1, 1, 0, 0, '', '', 21, 0, 0, 0),
(73, 'admin/Sys.System/site', '站点修改', 1, 1, 0, 0, '', '', 2, 50, 1567225373, 1567225410),
(74, 'admin/Content.Article/state', '文章状态', 1, 1, 0, 0, '', '', 60, 50, 1567225947, 1567225947),
(75, 'admin/Content.Article/cateState', '文章分类状态', 1, 1, 0, 0, '', '', 69, 50, 1567225975, 1567225975),
(76, 'admin/Ucenter.User', '会员', 1, 1, 0, 1, 'fa fa-address-card-o', '', 0, 50, 1567327942, 1567564188),
(77, 'admin/Ucenter.User/index', '会员管理', 1, 1, 0, 1, 'fa fa-address-card-o', '', 76, 50, 1567327992, 1567327992),
(78, 'admin/Ucenter.User/add', '会员添加', 1, 1, 0, 0, NULL, '', 77, 0, 0, NULL),
(79, 'admin/Ucenter.User/del', '会员删除', 1, 1, 0, 0, NULL, '', 77, 0, 0, NULL),
(80, 'admin/Ucenter.User/edit', '会员编辑', 1, 1, 0, 0, NULL, '', 77, 0, 0, NULL),
(81, 'admin/Ucenter.User/state', '会员状态', 1, 1, 0, 0, NULL, '', 77, 0, 0, NULL),
(82, 'admin/Ucenter.User/levelIndex', '会员等级', 1, 1, 0, 1, 'fa fa-align-center', '', 76, 50, 1567563846, 1567565085),
(83, 'admin/Ucenter.User/levelState', '会员等级状态', 1, 1, 0, 0, '', '', 82, 50, 1567568251, 1567568323),
(84, 'admin/Ucenter.User/levelDel', '会员等级删除', 1, 1, 0, 0, '', '', 82, 50, 1567568283, 1567568283),
(85, 'admin/Ucenter.User/levelAdd', '会员等级添加', 1, 1, 0, 0, '', '', 82, 50, 1567568305, 1567568333),
(86, 'admin/Ucenter.User/levelEdit', '会员等级编辑', 1, 1, 0, 0, '', '', 82, 50, 1567568357, 1567568372),
(148, 'admin/Sys.System/configlist', '配置列表', 1, 1, 0, 1, 'fa fa-align-justify', '', 2, 0, 0, NULL),
(149, 'admin/Sys.System/configAdd', '添加配置', 1, 1, 0, 0, NULL, '', 148, 0, 0, NULL),
(150, 'admin/Sys.System/configEdit', '编辑配置', 1, 1, 0, 0, NULL, '', 148, 0, 0, NULL),
(151, 'admin/Sys.System/configDel', '删除配置', 1, 1, 0, 0, NULL, '', 148, 0, 0, NULL),
(152, 'admin/Sys.System/configState', '配置状态', 1, 1, 0, 0, NULL, '', 148, 0, 0, NULL),
(153, 'admin/Sys.System/configGroupAdd', '配置组添加', 1, 1, 0, 0, NULL, '', 148, 0, 0, NULL),
(154, 'admin/Sys.System/configGroupDel', '配置组删除', 1, 1, 0, 0, NULL, '', 148, 0, 0, NULL),
(174, 'admin/addon.addon', '插件管理', 1, 1, 0, 1, 'fa fa-futbol-o', '', 0, 50, 1580880615, 1580880717),
(175, 'admin/sys.addon/index', '插件列表', 1, 1, 0, 1, 'fa fa-adjust', '', 174, 50, 1580880674, 1580880674);

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
(54, 'site_version', 'v1.6', '版本', 'site', 1, NULL, NULL);

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
(93, 6, 'occ_id', '土味乡情', 0, 0, 0, '', '', 'files', 0, '', 'varchar(255) NOT NULL DEFAULT \'\'', NULL, 50, 1, 1573720440, 1573720440),
(94, 7, 'column_id', '栏目', 1, 0, 6, '', '必须选择一个栏目', 'column_id', 0, '', NULL, '', 1, 0, 1574005523, 0),
(95, 7, 'title', '标题', 1, 0, 80, '', '标题必须为1-80个字符', 'text', 0, '', NULL, '', 2, 0, 1574005523, 0),
(96, 7, 'keywords', '关键词', 1, 0, 200, '', '关键词必须在0-200个内', 'text', 0, '', NULL, '', 3, 0, 1574005523, 0),
(97, 7, 'description', 'SEO简介', 1, 0, 0, '', '', 'textarea', 0, '', NULL, '', 4, 0, 1574005523, 0),
(98, 7, 'content', '内容', 0, 0, 255, '', '', 'editor', 0, 'ueditor', NULL, '0|ueditor', 5, 0, 1574005523, 0),
(99, 7, 'create_time', '创建时间', 1, 0, 11, '', '', 'datetime', 0, '', NULL, '', 6, 1, 1574005523, 0),
(100, 7, 'update_time', '更新时间', 1, 0, 11, '', '', 'datetime', 0, '', NULL, '', 6, 1, 1574005523, 0),
(101, 7, 'status', '状态', 1, 0, 1, '', '', 'radio', 0, '1', NULL, '0|未发布,1|发布', 7, 0, 1574005523, 0),
(102, 7, 'recommend', '允许评论', 0, 0, 1, '', '', 'radio', 0, '1', NULL, '0|禁止评论,1|允许评论', 8, 1, 1574005523, 0),
(103, 7, 'readpoint', '阅读收费', 0, 0, 5, '', '', 'number', 0, '0', NULL, '', 9, 0, 1574005523, 0),
(104, 7, 'is_read', '是否可阅读', 0, 0, 1, '', '', 'radio', 0, '1', NULL, '0|禁止,1|允许', 9, 0, 1574005523, 0),
(105, 7, 'hits', '点击次数', 0, 0, 8, '', '', 'number', 0, '1', NULL, '', 10, 1, 1574005523, 0),
(106, 7, 'visite', '访问权限', 0, 0, 1, '', '', 'radio', 0, '1', NULL, '0|开启,1|关闭', 11, 1, 1574005523, 0),
(107, 7, 'posid', '推荐位', 0, 0, 1, '', '', 'posid', 0, '', NULL, '', 12, 12, 1574005523, 0),
(108, 7, 'tags', '标签', 0, 0, 255, '', '', 'text', 0, '', NULL, '', 14, 1, 1574005523, 0),
(109, 8, 'column_id', '栏目', 1, 0, 6, '', '必须选择一个栏目', 'column_id', 0, '', NULL, '', 1, 1, 1574752277, 0),
(110, 8, 'title', '标题', 1, 0, 180, '', '标题必须为1-180个字符', 'text', 0, '', NULL, '', 2, 1, 1574752277, 0),
(111, 8, 'keywords', '关键词', 1, 0, 80, '', '', 'text', 0, '', NULL, '', 3, 1, 1574752277, 0),
(112, 8, 'description', 'SEO简介', 1, 0, 0, '', '', 'textarea', 0, '', NULL, '', 4, 1, 1574752277, 0),
(113, 8, 'tags', '标签', 0, 0, 0, '', '', 'text', 0, '', NULL, '', 5, 1, 1, 0),
(114, 8, 'content', '内容', 0, 0, 0, '', '', 'editor', 0, 'ueditor', NULL, '0|ueditor', 6, 1, 1574752277, 0),
(115, 9, 'column_id', '栏目', 1, 0, 6, '', '必须选择一个栏目', 'column_id', 0, '', NULL, '', 1, 1, 1576332607, 0),
(116, 9, 'title', '标题', 1, 0, 80, '', '标题必须为1-80个字符', 'text', 0, '', NULL, '', 2, 1, 1576332607, 0),
(117, 9, 'keywords', '关键词', 1, 0, 200, '', '关键词必须在0-200个内', 'text', 0, '', NULL, '', 3, 1, 1576332607, 0),
(118, 9, 'description', 'SEO简介', 1, 0, 0, '', '', 'textarea', 0, '', NULL, '', 4, 1, 1576332608, 0),
(119, 9, 'content', '内容', 0, 0, 255, '', '', 'editor', 0, 'ueditor', NULL, '0|ueditor', 5, 1, 1576332608, 0),
(120, 9, 'create_time', '创建时间', 1, 0, 11, '', '', 'datetime', 0, '', NULL, '', 6, 1, 1576332608, 0),
(121, 9, 'update_time', '更新时间', 1, 0, 11, '', '', 'datetime', 0, '', NULL, '', 6, 1, 1576332608, 0),
(122, 9, 'status', '状态', 1, 0, 1, '', '', 'radio', 0, '1', NULL, '0|未发布,1|发布', 7, 1, 1576332608, 0),
(123, 9, 'recommend', '允许评论', 0, 0, 1, '', '', 'radio', 0, '1', NULL, '0|禁止评论,1|允许评论', 8, 1, 1576332608, 0),
(124, 9, 'readpoint', '阅读收费', 0, 0, 5, '', '', 'number', 0, '0', NULL, '', 9, 1, 1576332608, 0),
(125, 9, 'is_read', '是否可阅读', 0, 0, 1, '', '', 'radio', 0, '1', NULL, '0|禁止,1|允许', 9, 1, 1576332608, 0),
(126, 9, 'hits', '点击次数', 0, 0, 8, '', '', 'number', 0, '1', NULL, '', 10, 1, 1576332608, 0),
(127, 9, 'visite', '访问权限', 0, 0, 1, '', '', 'radio', 0, '1', NULL, '0|开启,1|关闭', 11, 1, 1576332608, 0),
(128, 9, 'posid', '推荐位', 0, 0, 1, '', '', 'posid', 0, '', NULL, '', 12, 12, 1576332608, 0),
(129, 9, 'tags', '标签', 0, 0, 255, '', '', 'text', 0, '', NULL, '', 14, 1, 1576332608, 0),
(130, 10, 'column_id', '栏目', 1, 0, 6, '', '必须选择一个栏目', 'column_id', 0, '', NULL, '', 1, 1, 1576585037, 0),
(131, 10, 'title', '标题', 1, 0, 80, '', '标题必须为1-80个字符', 'text', 0, '', NULL, '', 2, 1, 1576585037, 0),
(132, 10, 'keywords', '关键词', 1, 0, 200, '', '关键词必须在0-200个内', 'text', 0, '', NULL, '', 3, 1, 1576585037, 0),
(133, 10, 'description', 'SEO简介', 1, 0, 0, '', '', 'checkbox', 0, '', 'varchar(50) NOT NULL DEFAULT \'\'', '', 4, 1, 1576585037, 1578810231),
(134, 10, 'content', '内容', 0, 0, 255, '', '', 'checkbox', 0, 'ueditor', 'varchar(50) NOT NULL DEFAULT \'\'', '0|ueditor', 5, 1, 1576585037, 1578810105),
(135, 10, 'create_time', '创建时间', 1, 0, 11, '', '', 'datetime', 0, '', NULL, '', 6, 1, 1576585037, 0),
(136, 10, 'update_time', '更新时间', 1, 0, 11, '', '', 'datetime', 0, '', NULL, '', 6, 1, 1576585037, 0),
(137, 10, 'status', '状态', 1, 0, 1, '', '', 'radio', 0, '1', NULL, '0|未发布,1|发布', 7, 1, 1576585037, 0),
(138, 10, 'recommend', '允许评论', 0, 0, 1, '', '', 'radio', 0, '1', NULL, '0|禁止评论,1|允许评论', 8, 1, 1576585037, 0),
(139, 10, 'readpoint', '阅读收费', 0, 0, 5, '', '', 'number', 0, '0', NULL, '', 9, 1, 1576585037, 0),
(140, 10, 'is_read', '是否可阅读', 0, 0, 1, '', '', 'radio', 0, '1', NULL, '0|禁止,1|允许', 9, 1, 1576585037, 0),
(141, 10, 'hits', '点击次数', 0, 0, 8, '', '', 'number', 0, '1', NULL, '', 10, 1, 1576585037, 0),
(142, 10, 'visite', '访问权限', 0, 0, 1, '', '', 'radio', 0, '1', NULL, '0|开启,1|关闭', 11, 1, 1576585037, 0),
(143, 10, 'posid', '推荐位', 0, 0, 1, '', '', 'posid', 0, '', NULL, '', 12, 12, 1576585037, 0),
(144, 10, 'tags', '标签', 0, 0, 255, '', '', 'text', 0, '', NULL, '', 14, 1, 1576585037, 0);

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
(3, 1, '', NULL, '519475228fe35ad067744465c42a19b2', '90600d68b0f56d90c4c34284d8dfd138', 0, 1524067200, '4057.47', '0.00', '0.00', 0, 49513, 0, 1523266058, 1573454861, 0, 0, '', '', '18515156363', 1, '', NULL, NULL, '/public/upload/head_pic/20180419/fec83644525cdd715416db8789cfe222.jpg', 0, 0, 0, 0, '青春', 4, '0.94', '9559.07', 0, 1, 0, 0, 0, '', 63, '190e35f7e07c8658ec6', 0, 0, NULL, NULL),
(4, 1, '15636363522@qq.com', NULL, '519475228fe35ad067744465c42a19b2', '519475228fe35ad067744465c42a19b2', 0, -28800, '0.00', '0.00', '0.00', 0, 110, 0, 1523266117, 1574844266, 1523266117, 0, '', '', '', 0, '', NULL, NULL, '/public/upload/user/4/head_pic//7268f1d4ce9879694c2ec7da77d4dfbb.png', 0, 0, 0, 1, '15636363522@qq.com', 1, '1.00', '0.00', 0, 0, 0, 0, 0, 'eaf8b23d80d7513ab4ffcf3b1129f668', 63, '0', 0, 0, NULL, NULL),
(5, 1, '', NULL, '519475228fe35ad067744465c42a19b2', '519475228fe35ad067744465c42a19b2', 0, 0, '49830.22', '0.00', '0.00', 0, 2410, 0, 1523588976, 1574844266, 1523588976, 0, '', '', '15766212618', 1, '', NULL, NULL, '/public/images/icon_goods_thumb_empty_300.png', 0, 0, 0, 0, '15766212618', 4, '0.94', '7687.08', 0, 1, 0, 0, 0, '91fa24fa9b42dfc79fc37d0acec4ba51', 63, '0', 0, 0, NULL, NULL),
(6, 1, '461799220@qq.com', NULL, '519475228fe35ad067744465c42a19b2', NULL, 0, 0, '1000.00', '0.00', '0.00', 0, 100, 0, 1523601798, NULL, 0, 0, '', '461799220', '18664316869', 0, '', NULL, NULL, NULL, 0, 0, 0, 0, '单测试1', 1, '1.00', '0.00', 1, 0, 0, 0, 0, '', 63, '', 0, 0, NULL, NULL),
(7, 1, '', NULL, '519475228fe35ad067744465c42a19b2', NULL, 0, 0, '0.00', '0.00', '0.00', 0, 100, 0, 1523608222, 1577260812, 1523608222, 0, '', '', '15274857485', 1, '', NULL, NULL, '/public/images/icon_goods_thumb_empty_300.png', 0, 0, 0, 0, '15274857485', 1, '1.00', '0.00', 1, 0, 3, 0, 0, '001b3f89dc686ad2f53f5481e8c9fb30', 63, '0', 0, 0, NULL, NULL),
(8, 1, '', NULL, '519475228fe35ad067744465c42a19b2', '519475228fe35ad067744465c42a19b2', 0, 0, '100000.00', '0.00', '0.00', 0, 100000, 0, 1523857661, 1580137648, 1540191996, 0, '', '', '13800138006', 1, '', NULL, NULL, 'http://thirdwx.qlogo.cn/mmopen/vi_32/c58Iiaib1aPodvKHMMGR9ZYmq7XGFUgppvhxgQKrJxdlZTAauZ8dTucEguiamsncVDR3h32TMO4YzppDmSuHIGI9w/132', 0, 0, 0, 0, 'summer', 2, '1.00', '55.00', 0, 0, 3, 0, 0, '', 63, '190e35f7e07c8658ec6', 0, 0, NULL, NULL),
(9, 1, '', NULL, '519475228fe35ad067744465c42a19b2', '519475228fe35ad067744465c42a19b2', 2, 1524153600, '18527.80', '0.00', '0.00', 0, 100210, 0, 1523861478, 1579614603, 0, 0, '', '1546515984', '15274851525', 0, '', NULL, NULL, '/public/upload/head_pic/20180420/b147d911d2d5b3ff252fa948d96fb5d3.jpg', 0, 0, 0, 0, 'nana', 2, '1.00', '871.20', 1, 1, 0, 0, 0, '', 63, '190e35f7e07c8658ec6', 0, 0, NULL, NULL),
(10, 1, '1522585@qq.com', NULL, '519475228fe35ad067744465c42a19b2', '519475228fe35ad067744465c42a19b2', 2, -28800, '5649.60', '0.00', '0.00', 0, 1100, 0, 1523864842, 1577718363, 1524801341, 0, '', '', '15919919433', 0, '', NULL, NULL, '/public/upload/head_pic/20180423/a20e71149cc243fc2df4c6eb5caadbbd.jpg', 0, 0, 0, 0, '等待', 4, '0.94', '6808.66', 1, 1, 0, 0, 0, 'cedbd4ca79a15888d4fd3a636834294f', 63, '140fe1da9e8bbcb28d2', 0, 0, NULL, NULL),
(11, 1, '', NULL, '519475228fe35ad067744465c42a19b2', NULL, 0, 0, '0.00', '0.00', '0.00', 0, 100, 0, 1523933777, 1580137645, 1523933777, 0, '', '', '18585859674', 1, '', NULL, NULL, '/public/images/icon_goods_thumb_empty_300.png', 0, 0, 0, 0, '18585859674', 1, '1.00', '0.00', 1, 1, 0, 0, 0, '2ba708bb3b18ff3b133d19802ddc8559', 63, '0', 0, 0, NULL, NULL);

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
(1, '倔强青铜', '0.00', 100, 1, NULL, '人生若只如初相见', NULL, 1576155565),
(2, '秩序白银', '1000.00', 99, 1, NULL, '', NULL, 1575531170),
(3, '荣耀黄金', '3000.00', 94, 1, NULL, '', NULL, 1575531169),
(4, '尊贵铂金', '10000.00', 95, 1, NULL, '', NULL, 1575531168),
(5, '永恒钻石', '50000.00', 93, 1, NULL, '', NULL, 1576723983),
(6, '至尊星耀', '100000.00', 91, 1, NULL, '', NULL, 1576724646),
(7, '最强王者', '3000000.00', 90, 1, NULL, '', NULL, 1580137654),
(8, '任性', '99999999.99', 70, 1, 0, '', 1568098240, 1580499030);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lm_addon`
--
ALTER TABLE `lm_addon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `lm_admin`
--
ALTER TABLE `lm_admin`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '管理员ID', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lm_admin_log`
--
ALTER TABLE `lm_admin_log`
  MODIFY `id` bigint(16) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表id';

--
-- AUTO_INCREMENT for table `lm_auth_group`
--
ALTER TABLE `lm_auth_group`
  MODIFY `id` smallint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '分组id', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lm_auth_rule`
--
ALTER TABLE `lm_auth_rule`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1467;

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
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `lm_field_type`
--
ALTER TABLE `lm_field_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `lm_oauth2_client`
--
ALTER TABLE `lm_oauth2_client`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

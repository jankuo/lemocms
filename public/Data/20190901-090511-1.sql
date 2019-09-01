
-- -----------------------------
-- Table structure for `lm_admin`
-- -----------------------------
DROP TABLE IF EXISTS `lm_admin`;
CREATE TABLE `lm_admin` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `username` varchar(20) NOT NULL COMMENT '管理员用户名',
  `password` varchar(70) NOT NULL COMMENT '管理员密码',
  `group_id` mediumint(8) DEFAULT NULL COMMENT '分组ID',
  `email` varchar(30) DEFAULT NULL COMMENT '邮箱',
  `realname` varchar(10) DEFAULT NULL COMMENT '真实姓名',
  `mobile` varchar(30) DEFAULT NULL COMMENT '电话号码',
  `ip` varchar(20) DEFAULT NULL COMMENT 'IP地址',
  `mdemail` varchar(50) DEFAULT '0' COMMENT '传递修改密码参数加密',
  `status` tinyint(2) DEFAULT '1' COMMENT '审核状态',
  `avatar` varchar(120) DEFAULT '' COMMENT '头像',
  `create_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='后台管理员';

-- -----------------------------
-- Records of `lm_admin`
-- -----------------------------
INSERT INTO `lm_admin` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '1', '994927909@qq.com', '', '18397423845', '127.0.0.1', '0', '1', '/storage/uploads/20190817\\294faa45405fa24da59c311f55ce313f.png', '1482132862', '1566131029');
INSERT INTO `lm_admin` VALUES ('2', 'yuege', 'e10adc3949ba59abbe56e057f20f883e', '2', '994927909@qq.com', '', '18397423845', '127.0.0.1', '0', '1', '/storage/uploads/20190817\\dc25c2714c46a0d2bee894a7d05eb15f.png', '1535512393', '1566030896');
INSERT INTO `lm_admin` VALUES ('3', 'dandan', '69d9387a9f1e957872943a2b957e4947', '2', '994927909@qq.com', '', '18397423845', '119.122.91.146', '0', '1', '/storage/uploads/20190817\\a17c794ac7fae7db012aa6e997cf3400.jpg', '1564041575', '1566001700');
INSERT INTO `lm_admin` VALUES ('4', 'admin1', 'e10adc3949ba59abbe56e057f20f883e', '1', '994927909@qq.com', '', '18397423845', '119.122.91.146', '0', '1', '/storage/uploads/20190816\\824fbacce27ce094eb3b1e115dfdb709.png', '1565941890', '1565942219');
INSERT INTO `lm_admin` VALUES ('5', 'admin2', 'e10adc3949ba59abbe56e057f20f883e', '2', '994927909@qq.com', '', '18397423845', '119.122.91.146', '0', '1', '/storage/uploads/20190816\\97255951134abef478f1af5a83b40523.jpg', '1565942044', '1565942280');
INSERT INTO `lm_admin` VALUES ('6', 'admin3', 'e10adc3949ba59abbe56e057f20f883e', '2', '994927909@qq.com', '', '18397423845', '119.122.91.146', '0', '1', '/storage/uploads/20190816\\97255951134abef478f1af5a83b40523.jpg', '1565942140', '1565942281');

-- -----------------------------
-- Table structure for `lm_admin_log`
-- -----------------------------
DROP TABLE IF EXISTS `lm_admin_log`;
CREATE TABLE `lm_admin_log` (
  `id` bigint(16) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `admin_id` int(10) DEFAULT NULL COMMENT '管理员id',
  `username` varchar(100) DEFAULT NULL,
  `log_url` varchar(100) DEFAULT NULL,
  `log_content` varchar(255) DEFAULT NULL,
  `log_title` varchar(100) DEFAULT NULL COMMENT '日志描述',
  `log_agent` varchar(100) DEFAULT NULL,
  `log_ip` varchar(30) DEFAULT NULL COMMENT 'ip地址',
  `create_time` int(11) DEFAULT NULL COMMENT '日志时间',
  `update_time` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE,
  KEY `admin_id` (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1968 DEFAULT CHARSET=utf8mb4;

-- -----------------------------
-- Records of `lm_admin_log`
-- -----------------------------
INSERT INTO `lm_admin_log` VALUES ('1753', '0', 'Unknown', '/index.php/admin/login/index.html', '{\"username\":\"admin\",\"captcha\":\"luvc\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; ', '127.0.0.1', '1566546358', '1566546358', '1');
INSERT INTO `lm_admin_log` VALUES ('1754', '0', 'Unknown', '/index.php/admin/login/index.html', '{\"username\":\"admin\",\"captcha\":\"fu7b\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; ', '127.0.0.1', '1566546365', '1566546365', '1');
INSERT INTO `lm_admin_log` VALUES ('1755', '0', 'Unknown', '/index.php/admin/login/index.html', '{\"username\":\"admin\",\"captcha\":\"fcfj\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; ', '127.0.0.1', '1566546376', '1566546376', '1');
INSERT INTO `lm_admin_log` VALUES ('1756', '0', 'Unknown', '/index.php/admin/login/index.html', '{\"username\":\"admin\",\"captcha\":\"apyn\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; ', '127.0.0.1', '1566546412', '1566546412', '1');
INSERT INTO `lm_admin_log` VALUES ('1757', '0', 'Unknown', '/index.php/admin/login/index.html', '{\"username\":\"admin\",\"captcha\":\"rmrd\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566785805', '1566785805', '1');
INSERT INTO `lm_admin_log` VALUES ('1758', '0', 'Unknown', '/index.php/admin/login/index.html', '{\"username\":\"admin\",\"captcha\":\"mkyn\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566785810', '1566785810', '1');
INSERT INTO `lm_admin_log` VALUES ('1759', '1', 'admin', '/index.php/admin/system/site.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566786642', '1566786642', '1');
INSERT INTO `lm_admin_log` VALUES ('1760', '1', 'admin', '/index.php/admin/system/site.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566786643', '1566786643', '1');
INSERT INTO `lm_admin_log` VALUES ('1761', '1', 'admin', '/index.php/admin/database/index.html', '', '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566786647', '1566786647', '1');
INSERT INTO `lm_admin_log` VALUES ('1762', '1', 'admin', '/index.php/admin/database/index.html', '', '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566786647', '1566786647', '1');
INSERT INTO `lm_admin_log` VALUES ('1763', '1', 'admin', '/index.php/admin/adminlog/index.html', '', '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566786648', '1566786648', '1');
INSERT INTO `lm_admin_log` VALUES ('1764', '1', 'admin', '/index.php/admin/adminlog/index.html', '', '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566786648', '1566786648', '1');
INSERT INTO `lm_admin_log` VALUES ('1765', '1', 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566786653', '1566786653', '1');
INSERT INTO `lm_admin_log` VALUES ('1766', '1', 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566786653', '1566786653', '1');
INSERT INTO `lm_admin_log` VALUES ('1767', '1', 'admin', '/index.php/admin/auth/adminlist.html', '', '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566787482', '1566787482', '1');
INSERT INTO `lm_admin_log` VALUES ('1768', '1', 'admin', '/index.php/admin/auth/adminlist.html', '', '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566787482', '1566787482', '1');
INSERT INTO `lm_admin_log` VALUES ('1769', '1', 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566787483', '1566787483', '1');
INSERT INTO `lm_admin_log` VALUES ('1770', '1', 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566787483', '1566787483', '1');
INSERT INTO `lm_admin_log` VALUES ('1771', '1', 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566787516', '1566787516', '1');
INSERT INTO `lm_admin_log` VALUES ('1772', '1', 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566787516', '1566787516', '1');
INSERT INTO `lm_admin_log` VALUES ('1773', '1', 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566787720', '1566787720', '1');
INSERT INTO `lm_admin_log` VALUES ('1774', '1', 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566787720', '1566787720', '1');
INSERT INTO `lm_admin_log` VALUES ('1775', '1', 'admin', '/index.php/admin/auth/adminlist.html', '', '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566787780', '1566787780', '1');
INSERT INTO `lm_admin_log` VALUES ('1776', '1', 'admin', '/index.php/admin/auth/adminlist.html', '', '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566787780', '1566787780', '1');
INSERT INTO `lm_admin_log` VALUES ('1777', '1', 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566787781', '1566787781', '1');
INSERT INTO `lm_admin_log` VALUES ('1778', '1', 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566787781', '1566787781', '1');
INSERT INTO `lm_admin_log` VALUES ('1779', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566787854', '1566787854', '1');
INSERT INTO `lm_admin_log` VALUES ('1780', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566787854', '1566787854', '1');
INSERT INTO `lm_admin_log` VALUES ('1781', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566787914', '1566787914', '1');
INSERT INTO `lm_admin_log` VALUES ('1782', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566787915', '1566787915', '1');
INSERT INTO `lm_admin_log` VALUES ('1783', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566787959', '1566787959', '1');
INSERT INTO `lm_admin_log` VALUES ('1784', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566788233', '1566788233', '1');
INSERT INTO `lm_admin_log` VALUES ('1785', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566788267', '1566788267', '1');
INSERT INTO `lm_admin_log` VALUES ('1786', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566788322', '1566788322', '1');
INSERT INTO `lm_admin_log` VALUES ('1787', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566788373', '1566788373', '1');
INSERT INTO `lm_admin_log` VALUES ('1788', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566788565', '1566788565', '1');
INSERT INTO `lm_admin_log` VALUES ('1789', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566788575', '1566788575', '1');
INSERT INTO `lm_admin_log` VALUES ('1790', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566788604', '1566788604', '1');
INSERT INTO `lm_admin_log` VALUES ('1791', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566788613', '1566788613', '1');
INSERT INTO `lm_admin_log` VALUES ('1792', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566789999', '1566789999', '1');
INSERT INTO `lm_admin_log` VALUES ('1793', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566789999', '1566789999', '1');
INSERT INTO `lm_admin_log` VALUES ('1794', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566790884', '1566790884', '1');
INSERT INTO `lm_admin_log` VALUES ('1795', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566790885', '1566790885', '1');
INSERT INTO `lm_admin_log` VALUES ('1796', '1', 'admin', '/index.php/admin/uploads/uploads.html', '', '上传文件', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566793561', '1566793561', '1');
INSERT INTO `lm_admin_log` VALUES ('1797', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566793858', '1566793858', '1');
INSERT INTO `lm_admin_log` VALUES ('1798', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566793859', '1566793859', '1');
INSERT INTO `lm_admin_log` VALUES ('1799', '1', 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566795112', '1566795112', '1');
INSERT INTO `lm_admin_log` VALUES ('1800', '1', 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566795112', '1566795112', '1');
INSERT INTO `lm_admin_log` VALUES ('1801', '1', 'admin', '/index.php/admin/uploads/uploads.html', '', '上传文件', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566799065', '1566799065', '1');
INSERT INTO `lm_admin_log` VALUES ('1802', '1', 'admin', '/index.php/admin/auth/adminlist.html', '', '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566799474', '1566799474', '1');
INSERT INTO `lm_admin_log` VALUES ('1803', '1', 'admin', '/index.php/admin/auth/adminlist.html', '', '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566799475', '1566799475', '1');
INSERT INTO `lm_admin_log` VALUES ('1804', '1', 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566799476', '1566799476', '1');
INSERT INTO `lm_admin_log` VALUES ('1805', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566799514', '1566799514', '1');
INSERT INTO `lm_admin_log` VALUES ('1806', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566799514', '1566799514', '1');
INSERT INTO `lm_admin_log` VALUES ('1807', '1', 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566799854', '1566799854', '1');
INSERT INTO `lm_admin_log` VALUES ('1808', '1', 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566799854', '1566799854', '1');
INSERT INTO `lm_admin_log` VALUES ('1809', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566800023', '1566800023', '1');
INSERT INTO `lm_admin_log` VALUES ('1810', '1', 'admin', '/index.php/admin/article/articlecate.html', '', '分类列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566800030', '1566800030', '1');
INSERT INTO `lm_admin_log` VALUES ('1811', '1', 'admin', '/index.php/admin/article/articlecate.html', '', '分类列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566800030', '1566800030', '1');
INSERT INTO `lm_admin_log` VALUES ('1812', '1', 'admin', '/index.php/admin/article/articlecate.html', '', '分类列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566800048', '1566800048', '1');
INSERT INTO `lm_admin_log` VALUES ('1813', '1', 'admin', '/index.php/admin/article/articlecate.html', '', '分类列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566800126', '1566800126', '1');
INSERT INTO `lm_admin_log` VALUES ('1814', '1', 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566800136', '1566800136', '1');
INSERT INTO `lm_admin_log` VALUES ('1815', '1', 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566800136', '1566800136', '1');
INSERT INTO `lm_admin_log` VALUES ('1816', '1', 'admin', '/index.php/admin/article/articlecate.html', '', '分类列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566800188', '1566800188', '1');
INSERT INTO `lm_admin_log` VALUES ('1817', '1', 'admin', '/index.php/admin/article/articlecate.html', '', '分类列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566800190', '1566800190', '1');
INSERT INTO `lm_admin_log` VALUES ('1818', '1', 'admin', '/index.php/admin/article/articlecate.html', '', '分类列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566800236', '1566800236', '1');
INSERT INTO `lm_admin_log` VALUES ('1819', '1', 'admin', '/index.php/admin/article/articlecate.html', '', '分类列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566800302', '1566800302', '1');
INSERT INTO `lm_admin_log` VALUES ('1820', '1', 'admin', '/index.php/admin/article/articlecate.html', '', '分类列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566800564', '1566800564', '1');
INSERT INTO `lm_admin_log` VALUES ('1821', '1', 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566800571', '1566800571', '1');
INSERT INTO `lm_admin_log` VALUES ('1822', '1', 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566800571', '1566800571', '1');
INSERT INTO `lm_admin_log` VALUES ('1823', '1', 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566800596', '1566800596', '1');
INSERT INTO `lm_admin_log` VALUES ('1824', '1', 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566800649', '1566800649', '1');
INSERT INTO `lm_admin_log` VALUES ('1825', '1', 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566800665', '1566800665', '1');
INSERT INTO `lm_admin_log` VALUES ('1826', '1', 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566800723', '1566800723', '1');
INSERT INTO `lm_admin_log` VALUES ('1827', '1', 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566800746', '1566800746', '1');
INSERT INTO `lm_admin_log` VALUES ('1828', '1', 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566800747', '1566800747', '1');
INSERT INTO `lm_admin_log` VALUES ('1829', '1', 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566800749', '1566800749', '1');
INSERT INTO `lm_admin_log` VALUES ('1830', '1', 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566800777', '1566800777', '1');
INSERT INTO `lm_admin_log` VALUES ('1831', '1', 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566800802', '1566800802', '1');
INSERT INTO `lm_admin_log` VALUES ('1832', '1', 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566800802', '1566800802', '1');
INSERT INTO `lm_admin_log` VALUES ('1833', '1', 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566800887', '1566800887', '1');
INSERT INTO `lm_admin_log` VALUES ('1834', '1', 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566800890', '1566800890', '1');
INSERT INTO `lm_admin_log` VALUES ('1835', '1', 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566800890', '1566800890', '1');
INSERT INTO `lm_admin_log` VALUES ('1836', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566800979', '1566800979', '1');
INSERT INTO `lm_admin_log` VALUES ('1837', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566800979', '1566800979', '1');
INSERT INTO `lm_admin_log` VALUES ('1838', '1', 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566801033', '1566801033', '1');
INSERT INTO `lm_admin_log` VALUES ('1839', '1', 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566801037', '1566801037', '1');
INSERT INTO `lm_admin_log` VALUES ('1840', '1', 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566801038', '1566801038', '1');
INSERT INTO `lm_admin_log` VALUES ('1841', '1', 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566801065', '1566801065', '1');
INSERT INTO `lm_admin_log` VALUES ('1842', '1', 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566801074', '1566801074', '1');
INSERT INTO `lm_admin_log` VALUES ('1843', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566801080', '1566801080', '1');
INSERT INTO `lm_admin_log` VALUES ('1844', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566801081', '1566801081', '1');
INSERT INTO `lm_admin_log` VALUES ('1845', '1', 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566801082', '1566801082', '1');
INSERT INTO `lm_admin_log` VALUES ('1846', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566802455', '1566802455', '1');
INSERT INTO `lm_admin_log` VALUES ('1847', '1', 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566802456', '1566802456', '1');
INSERT INTO `lm_admin_log` VALUES ('1848', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566802458', '1566802458', '1');
INSERT INTO `lm_admin_log` VALUES ('1849', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566802459', '1566802459', '1');
INSERT INTO `lm_admin_log` VALUES ('1850', '1', 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566802464', '1566802464', '1');
INSERT INTO `lm_admin_log` VALUES ('1851', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566802491', '1566802491', '1');
INSERT INTO `lm_admin_log` VALUES ('1852', '1', 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566802492', '1566802492', '1');
INSERT INTO `lm_admin_log` VALUES ('1853', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566803059', '1566803059', '1');
INSERT INTO `lm_admin_log` VALUES ('1854', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566803061', '1566803061', '1');
INSERT INTO `lm_admin_log` VALUES ('1855', '1', 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566803077', '1566803077', '1');
INSERT INTO `lm_admin_log` VALUES ('1856', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566803080', '1566803080', '1');
INSERT INTO `lm_admin_log` VALUES ('1857', '1', 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566803081', '1566803081', '1');
INSERT INTO `lm_admin_log` VALUES ('1858', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566804618', '1566804618', '1');
INSERT INTO `lm_admin_log` VALUES ('1859', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566804618', '1566804618', '1');
INSERT INTO `lm_admin_log` VALUES ('1860', '1', 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566804619', '1566804619', '1');
INSERT INTO `lm_admin_log` VALUES ('1861', '1', 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566804619', '1566804619', '1');
INSERT INTO `lm_admin_log` VALUES ('1862', '1', 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566804626', '1566804626', '1');
INSERT INTO `lm_admin_log` VALUES ('1863', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566804710', '1566804710', '1');
INSERT INTO `lm_admin_log` VALUES ('1864', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1566804710', '1566804710', '1');
INSERT INTO `lm_admin_log` VALUES ('1865', '1', 'admin', '/index.php/admin/adminlog/index.html', '', '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567227750', '1567227750', '1');
INSERT INTO `lm_admin_log` VALUES ('1866', '1', 'admin', '/index.php/admin/adminlog/index.html', '', '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567227750', '1567227750', '1');
INSERT INTO `lm_admin_log` VALUES ('1867', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567227755', '1567227755', '1');
INSERT INTO `lm_admin_log` VALUES ('1868', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567227755', '1567227755', '1');
INSERT INTO `lm_admin_log` VALUES ('1869', '1', 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567227777', '1567227777', '1');
INSERT INTO `lm_admin_log` VALUES ('1870', '1', 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567227777', '1567227777', '1');
INSERT INTO `lm_admin_log` VALUES ('1871', '1', 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567227780', '1567227780', '1');
INSERT INTO `lm_admin_log` VALUES ('1872', '1', 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567227780', '1567227780', '1');
INSERT INTO `lm_admin_log` VALUES ('1873', '1', 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567227803', '1567227803', '1');
INSERT INTO `lm_admin_log` VALUES ('1874', '1', 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567227803', '1567227803', '1');
INSERT INTO `lm_admin_log` VALUES ('1875', '1', 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567227842', '1567227842', '1');
INSERT INTO `lm_admin_log` VALUES ('1876', '1', 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567227842', '1567227842', '1');
INSERT INTO `lm_admin_log` VALUES ('1877', '1', 'admin', '/index.php/admin/adminlog/index.html', '', '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567227842', '1567227842', '1');
INSERT INTO `lm_admin_log` VALUES ('1878', '1', 'admin', '/index.php/admin/adminlog/index.html', '', '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567227843', '1567227843', '1');
INSERT INTO `lm_admin_log` VALUES ('1879', '0', 'Unknown', '/index.php/admin/login/index', '{\"username\":\"admin\",\"captcha\":\"vqph\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567228111', '1567228111', '1');
INSERT INTO `lm_admin_log` VALUES ('1880', '1', 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567228118', '1567228118', '1');
INSERT INTO `lm_admin_log` VALUES ('1881', '1', 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567228118', '1567228118', '1');
INSERT INTO `lm_admin_log` VALUES ('1882', '1', 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567228127', '1567228127', '1');
INSERT INTO `lm_admin_log` VALUES ('1883', '0', 'Unknown', '/index.php/admin/login/index', '{\"username\":\"admin\",\"captcha\":\"i4me\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567228347', '1567228347', '1');
INSERT INTO `lm_admin_log` VALUES ('1884', '1', 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567228353', '1567228353', '1');
INSERT INTO `lm_admin_log` VALUES ('1885', '1', 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567228353', '1567228353', '1');
INSERT INTO `lm_admin_log` VALUES ('1886', '1', 'admin', '/index.php/admin/adminlog/index.html', '', '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567228354', '1567228354', '1');
INSERT INTO `lm_admin_log` VALUES ('1887', '1', 'admin', '/index.php/admin/adminlog/index.html', '', '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567228355', '1567228355', '1');
INSERT INTO `lm_admin_log` VALUES ('1888', '1', 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567228575', '1567228575', '1');
INSERT INTO `lm_admin_log` VALUES ('1889', '1', 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567228576', '1567228576', '1');
INSERT INTO `lm_admin_log` VALUES ('1890', '1', 'admin', '/index.php/admin/database/restore.html', '', '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567228736', '1567228736', '1');
INSERT INTO `lm_admin_log` VALUES ('1891', '1', 'admin', '/index.php/admin/database/index.html', '', '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567228737', '1567228737', '1');
INSERT INTO `lm_admin_log` VALUES ('1892', '1', 'admin', '/index.php/admin/database/restore.html', '', '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567228808', '1567228808', '1');
INSERT INTO `lm_admin_log` VALUES ('1893', '1', 'admin', '/index.php/admin/database/restore.html', '', '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567228808', '1567228808', '1');
INSERT INTO `lm_admin_log` VALUES ('1894', '1', 'admin', '/index.php/admin/database/index.html', '', '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567228810', '1567228810', '1');
INSERT INTO `lm_admin_log` VALUES ('1895', '1', 'admin', '/index.php/admin/database/index.html', '', '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567228811', '1567228811', '1');
INSERT INTO `lm_admin_log` VALUES ('1896', '1', 'admin', '/index.php/admin/database/index.html', '', '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567228902', '1567228902', '1');
INSERT INTO `lm_admin_log` VALUES ('1897', '1', 'admin', '/index.php/admin/database/index.html', '', '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567228902', '1567228902', '1');
INSERT INTO `lm_admin_log` VALUES ('1898', '1', 'admin', '/index.php/admin/database/backup.html', '', '数据库备份', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567228904', '1567228904', '1');
INSERT INTO `lm_admin_log` VALUES ('1899', '1', 'admin', '/index.php/admin/database/optimize.html', '', '数据库优化', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567228906', '1567228906', '1');
INSERT INTO `lm_admin_log` VALUES ('1900', '1', 'admin', '/index.php/admin/database/repair.html', '', '数据库修复', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567228907', '1567228907', '1');
INSERT INTO `lm_admin_log` VALUES ('1901', '1', 'admin', '/index.php/admin/database/optimize.html', '', '数据库优化', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567228908', '1567228908', '1');
INSERT INTO `lm_admin_log` VALUES ('1902', '1', 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567228912', '1567228912', '1');
INSERT INTO `lm_admin_log` VALUES ('1903', '1', 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567228912', '1567228912', '1');
INSERT INTO `lm_admin_log` VALUES ('1904', '1', 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567228948', '1567228948', '1');
INSERT INTO `lm_admin_log` VALUES ('1905', '1', 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567228948', '1567228948', '1');
INSERT INTO `lm_admin_log` VALUES ('1906', '1', 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567229176', '1567229176', '1');
INSERT INTO `lm_admin_log` VALUES ('1907', '1', 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567229180', '1567229180', '1');
INSERT INTO `lm_admin_log` VALUES ('1908', '1', 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567229180', '1567229180', '1');
INSERT INTO `lm_admin_log` VALUES ('1909', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567229232', '1567229232', '1');
INSERT INTO `lm_admin_log` VALUES ('1910', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567229233', '1567229233', '1');
INSERT INTO `lm_admin_log` VALUES ('1911', '1', 'admin', '/index.php/admin/link/index.html', '', '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567229240', '1567229240', '1');
INSERT INTO `lm_admin_log` VALUES ('1912', '1', 'admin', '/index.php/admin/link/index.html', '', '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567229240', '1567229240', '1');
INSERT INTO `lm_admin_log` VALUES ('1913', '1', 'admin', '/index.php/admin/adv/edit.html', '', '广告编辑', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567229244', '1567229244', '1');
INSERT INTO `lm_admin_log` VALUES ('1914', '1', 'admin', '/index.php/admin/adv/edit.html', '', '广告编辑', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567229244', '1567229244', '1');
INSERT INTO `lm_admin_log` VALUES ('1915', '1', 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567229256', '1567229256', '1');
INSERT INTO `lm_admin_log` VALUES ('1916', '1', 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567229256', '1567229256', '1');
INSERT INTO `lm_admin_log` VALUES ('1917', '1', 'admin', '/index.php/admin/adv/edit.html', '', '广告编辑', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567229296', '1567229296', '1');
INSERT INTO `lm_admin_log` VALUES ('1918', '1', 'admin', '/index.php/admin/adv/edit.html', '', '广告编辑', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567229296', '1567229296', '1');
INSERT INTO `lm_admin_log` VALUES ('1919', '1', 'admin', '/index.php/admin/adv/posedit.html', '', '广告编辑', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567229297', '1567229297', '1');
INSERT INTO `lm_admin_log` VALUES ('1920', '1', 'admin', '/index.php/admin/adv/posedit.html', '', '广告编辑', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567229298', '1567229298', '1');
INSERT INTO `lm_admin_log` VALUES ('1921', '1', 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567229302', '1567229302', '1');
INSERT INTO `lm_admin_log` VALUES ('1922', '1', 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567229302', '1567229302', '1');
INSERT INTO `lm_admin_log` VALUES ('1923', '1', 'admin', '/index.php/admin/adv/edit.html', '', '广告编辑', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567229305', '1567229305', '1');
INSERT INTO `lm_admin_log` VALUES ('1924', '1', 'admin', '/index.php/admin/adv/edit.html', '', '广告编辑', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567229305', '1567229305', '1');
INSERT INTO `lm_admin_log` VALUES ('1925', '1', 'admin', '/index.php/admin/auth/group.html', '', '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567229312', '1567229312', '1');
INSERT INTO `lm_admin_log` VALUES ('1926', '1', 'admin', '/index.php/admin/auth/group.html', '', '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567229312', '1567229312', '1');
INSERT INTO `lm_admin_log` VALUES ('1927', '1', 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567229316', '1567229316', '1');
INSERT INTO `lm_admin_log` VALUES ('1928', '1', 'admin', '/index.php/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567229316', '1567229316', '1');
INSERT INTO `lm_admin_log` VALUES ('1929', '1', 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567229351', '1567229351', '1');
INSERT INTO `lm_admin_log` VALUES ('1930', '1', 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567229351', '1567229351', '1');
INSERT INTO `lm_admin_log` VALUES ('1931', '1', 'admin', '/index.php/admin/adv/edit.html', '', '广告编辑', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567229356', '1567229356', '1');
INSERT INTO `lm_admin_log` VALUES ('1932', '1', 'admin', '/index.php/admin/adv/edit.html', '', '广告编辑', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567229356', '1567229356', '1');
INSERT INTO `lm_admin_log` VALUES ('1933', '1', 'admin', '/index.php/admin/adv/edit.html', '', '广告编辑', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567229368', '1567229368', '1');
INSERT INTO `lm_admin_log` VALUES ('1934', '1', 'admin', '/index.php/admin/adv/index.html', '', '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567229373', '1567229373', '1');
INSERT INTO `lm_admin_log` VALUES ('1935', '1', 'admin', '/index.php/admin/adv/index.html', '', '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567229373', '1567229373', '1');
INSERT INTO `lm_admin_log` VALUES ('1936', '1', 'admin', '/index.php/admin/adv/pos.html', '', '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567229375', '1567229375', '1');
INSERT INTO `lm_admin_log` VALUES ('1937', '1', 'admin', '/index.php/admin/adv/pos.html', '', '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567229376', '1567229376', '1');
INSERT INTO `lm_admin_log` VALUES ('1938', '1', 'admin', '/index.php/admin/link/index.html', '', '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567229378', '1567229378', '1');
INSERT INTO `lm_admin_log` VALUES ('1939', '1', 'admin', '/index.php/admin/link/index.html', '', '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567229378', '1567229378', '1');
INSERT INTO `lm_admin_log` VALUES ('1940', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567229380', '1567229380', '1');
INSERT INTO `lm_admin_log` VALUES ('1941', '1', 'admin', '/index.php/admin/article/index.html', '', '文章列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567229380', '1567229380', '1');
INSERT INTO `lm_admin_log` VALUES ('1942', '1', 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567229381', '1567229381', '1');
INSERT INTO `lm_admin_log` VALUES ('1943', '1', 'admin', '/index.php/admin/article/articlecate.html', '', '文章分类', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567229381', '1567229381', '1');
INSERT INTO `lm_admin_log` VALUES ('1944', '1', 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567229505', '1567229505', '1');
INSERT INTO `lm_admin_log` VALUES ('1945', '1', 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567229505', '1567229505', '1');
INSERT INTO `lm_admin_log` VALUES ('1946', '1', 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567230120', '1567230120', '1');
INSERT INTO `lm_admin_log` VALUES ('1947', '1', 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567230120', '1567230120', '1');
INSERT INTO `lm_admin_log` VALUES ('1948', '1', 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3829.0 ', '127.0.0.1', '1567230127', '1567230127', '1');
INSERT INTO `lm_admin_log` VALUES ('1949', '0', 'Unknown', '/index.php/admin/login/index.html', '{\"username\":\"admin\",\"captcha\":\"yvgr\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1567298102', '1567298102', '1');
INSERT INTO `lm_admin_log` VALUES ('1950', '0', 'Unknown', '/index.php/admin/login/index.html', '{\"username\":\"admin\",\"captcha\":\"tqdk\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1567298107', '1567298107', '1');
INSERT INTO `lm_admin_log` VALUES ('1951', '1', 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1567298113', '1567298113', '1');
INSERT INTO `lm_admin_log` VALUES ('1952', '1', 'admin', '/index.php/admin/system/index.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1567298113', '1567298113', '1');
INSERT INTO `lm_admin_log` VALUES ('1953', '1', 'admin', '/index.php/admin/system/site.html', '{\"site_name\":\"lemocm\",\"site_domain\":\"https:\\/\\/www.lemocms.com\",\"site_email\":\"858761000@qq.com\",\"site_logo\":\"\\/storage\\/uploads\\/logo.png\",\"file\":\"\",\"site_seo_title\":\"LEMOCMS-PHP-THINKPHP\\u5185\\u5bb9\\u7ba1\\u7406\\u7cfb\\u7edf\",\"site_seo_keywords\":\"LEMOCMS,L', '站点修改', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1567298115', '1567298115', '1');
INSERT INTO `lm_admin_log` VALUES ('1954', '1', 'admin', '/index.php/admin/adminlog/index.html', '', '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1567298117', '1567298117', '1');
INSERT INTO `lm_admin_log` VALUES ('1955', '1', 'admin', '/index.php/admin/adminlog/index.html', '', '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1567298117', '1567298117', '1');
INSERT INTO `lm_admin_log` VALUES ('1957', '1', 'admin', '/index.php/admin/database/restore.html', '', '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1567298123', '1567298123', '1');
INSERT INTO `lm_admin_log` VALUES ('1958', '1', 'admin', '/index.php/admin/database/restore.html', '', '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1567298124', '1567298124', '1');
INSERT INTO `lm_admin_log` VALUES ('1959', '1', 'admin', '/index.php/admin/database/index.html', '', '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1567298125', '1567298125', '1');
INSERT INTO `lm_admin_log` VALUES ('1960', '1', 'admin', '/index.php/admin/database/index.html', '', '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1567298125', '1567298125', '1');
INSERT INTO `lm_admin_log` VALUES ('1961', '1', 'admin', '/index.php/admin/database/backup.html', '', '数据库备份', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1567298127', '1567298127', '1');
INSERT INTO `lm_admin_log` VALUES ('1962', '1', 'admin', '/index.php/admin/database/backup.html', '{\"tables\":[\"lm_admin\",\"lm_admin_log\",\"lm_adv\",\"lm_adv_position\",\"lm_article\",\"lm_article_cate\",\"lm_auth_group\",\"lm_auth_rule\",\"lm_config\",\"lm_link\"]}', '数据库备份', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1567298130', '1567298130', '1');
INSERT INTO `lm_admin_log` VALUES ('1963', '4', 'demo', '/index.php/admin/database/restore.html', '', '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1567299897', '1567299897', '1');
INSERT INTO `lm_admin_log` VALUES ('1964', '4', 'demo', '/index.php/admin/database/restore.html', '', '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1567299897', '1567299897', '1');
INSERT INTO `lm_admin_log` VALUES ('1965', '4', 'demo', '/index.php/admin/database/index.html', '', '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1567299908', '1567299908', '1');
INSERT INTO `lm_admin_log` VALUES ('1966', '4', 'demo', '/index.php/admin/database/index.html', '', '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1567299908', '1567299908', '1');
INSERT INTO `lm_admin_log` VALUES ('1967', '4', 'demo', '/index.php/admin/database/backup.html', '{\"tables\":[\"lm_admin\",\"lm_admin_log\",\"lm_adv\",\"lm_adv_position\",\"lm_article\",\"lm_article_cate\",\"lm_auth_group\",\"lm_auth_rule\",\"lm_config\",\"lm_link\"]}', '数据库备份', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.10', '127.0.0.1', '1567299911', '1567299911', '1');

-- -----------------------------
-- Table structure for `lm_adv`
-- -----------------------------
DROP TABLE IF EXISTS `lm_adv`;
CREATE TABLE `lm_adv` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '广告id',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '广告位置ID',
  `media_type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '广告类型',
  `ad_name` varchar(60) NOT NULL DEFAULT '' COMMENT '广告名称',
  `ad_link` varchar(255) DEFAULT '' COMMENT '链接地址',
  `ad_image` mediumtext NOT NULL COMMENT '图片地址',
  `start_time` int(11) NOT NULL DEFAULT '0' COMMENT '投放时间',
  `end_time` int(11) NOT NULL DEFAULT '0' COMMENT '结束时间',
  `link_admin` varchar(60) NOT NULL DEFAULT '' COMMENT '添加人',
  `link_email` varchar(60) NOT NULL DEFAULT '' COMMENT '添加人邮箱',
  `link_phone` varchar(60) NOT NULL DEFAULT '' COMMENT '添加人联系电话',
  `click_count` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '点击量',
  `sort` int(20) DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `orderby` smallint(6) DEFAULT '50' COMMENT '排序',
  `target` tinyint(1) DEFAULT '0' COMMENT '是否开启浏览器新窗口',
  `bgcolor` varchar(20) DEFAULT NULL COMMENT '背景颜色',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `enabled` (`status`) USING BTREE,
  KEY `position_id` (`pid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4;

-- -----------------------------
-- Records of `lm_adv`
-- -----------------------------
INSERT INTO `lm_adv` VALUES ('1', '2', '0', '首页', 'javascript:void(0);', '/public/upload/ad/2018/04-24/a7a54a5b527f0b1b069b8421378ad0fa.jpg', '1451577600', '1483286400', '', '', '', '0', '0', '1', '0', '0', '#43d7f6', '0', '0');
INSERT INTO `lm_adv` VALUES ('2', '2', '0', '首页', 'javascript:void(0);', '/public/upload/ad/2018/04-25/93bf5c1ebdf4c4359253a107bcbdbe98.jpg', '1451577600', '1767283200', '', '', '', '0', '0', '1', '0', '0', '#ff8000', '0', '1566106884');
INSERT INTO `lm_adv` VALUES ('3', '2', '0', '轮播', 'javascript:void(0);', '/public/upload/ad/2018/04-13/6eeaa63e76c946927d0c1e67f6cf4f4f.jpg', '1451577600', '1767283200', '', '', '', '0', '0', '1', '0', '0', '#fea8c1', '0', '0');
INSERT INTO `lm_adv` VALUES ('4', '2', '0', '轮播', 'javascript:void(0);', '/public/upload/ad/2018/04-13/8099744a886c2cfad7c837e28aee9d52.jpg', '1451577600', '1767283200', '', '', '', '0', '0', '1', '0', '0', '#f1e6d2', '0', '0');
INSERT INTO `lm_adv` VALUES ('7', '2', '0', '其他', 'javascript:void(0);', '/public/upload/ad/2018/04-13/7009c820b93bcf31d3e42df31d78ed71.jpg', '1451577600', '1767283200', '', '', '', '0', '0', '1', '0', '0', '#f1dcf7', '0', '0');
INSERT INTO `lm_adv` VALUES ('12', '2', '0', '其他', 'javascript:void(0);', '/public/upload/ad/2018/04-24/44aa330b056f5b090b6d6ac8a9a072dd.jpg', '1451577600', '1767283200', '', '', '', '0', '0', '1', '0', '0', '#000000', '0', '0');
INSERT INTO `lm_adv` VALUES ('82', '1', '0', '', 'https://www.baidu.com', '/storage/uploads/20190818\\0c2a7f85348cd9ae508ca860388fa021.png', '0', '0', '', '994927909@qq.com', '', '0', '0', '1', '50', '0', '', '1566107420', '1566107420');
INSERT INTO `lm_adv` VALUES ('83', '1', '0', '组合套餐', 'https://www.baidu.com', '/storage/uploads/20190818\\2db9e450c251d0d21dac3d3384134bb0.png', '1566130740', '0', '', '994927909@qq.com', '', '0', '0', '1', '50', '0', '', '1566107921', '1566107921');
INSERT INTO `lm_adv` VALUES ('84', '4', '0', 'banner6 ', 'https://www.baidu.com', '/storage/uploads/20190818\\8ebd41bd38db53338af00026cb592bc3.png', '1566130740', '0', '', '994927909@qq.com', '', '0', '0', '1', '50', '0', '', '1566107968', '1566107968');
INSERT INTO `lm_adv` VALUES ('85', '1', '0', '组合套餐', 'https://www.baidu.com', '/storage/uploads/20190818\\674ca52c87c4552352f35d820c3ce33e.png', '0', '0', '', '994927909@qq.com', '', '0', '0', '1', '50', '0', '', '1566108105', '1566108105');
INSERT INTO `lm_adv` VALUES ('86', '2', '0', '组合套餐', 'https://www.baidu.com', '/storage/uploads/20190818\\cd986a75a1be03d8a7af558fda044ca4.png', '1566130740', '0', '', '994927909@qq.com', '', '0', '0', '1', '50', '0', '', '1566108149', '1566108149');
INSERT INTO `lm_adv` VALUES ('87', '2', '0', 'banner6 ', 'https://www.baidu.com', '/storage/uploads/20190818\\7e2ca2635af1031871ab121938818a4d.png', '1564588800', '1568908800', '', '994927909@qq.com', '', '0', '0', '1', '50', '0', '', '1566108542', '1566108542');

-- -----------------------------
-- Table structure for `lm_adv_position`
-- -----------------------------
DROP TABLE IF EXISTS `lm_adv_position`;
CREATE TABLE `lm_adv_position` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `position_name` varchar(60) NOT NULL DEFAULT '' COMMENT '广告位置名称',
  `ad_width` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '广告位宽度',
  `ad_height` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '广告位高度',
  `position_desc` varchar(255) NOT NULL DEFAULT '' COMMENT '广告描述',
  `position_style` mediumtext COMMENT '模板',
  `status` tinyint(1) DEFAULT '0' COMMENT '0关闭1开启',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `position_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=540 DEFAULT CHARSET=utf8mb4;

-- -----------------------------
-- Records of `lm_adv_position`
-- -----------------------------
INSERT INTO `lm_adv_position` VALUES ('1', 'Cart页面自动增加广告位 1 ', '0', '0', 'Cart页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('2', 'Index页面自动增加广告位 2 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('4', 'Topic页面自动增加广告位 4 ', '0', '0', 'Topic页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('9', 'Index页面自动增加广告位 9 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('10', 'Index页面自动增加广告位 10 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('11', 'Index页面自动增加广告位 11 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('12', 'Index页面自动增加广告位 12 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('13', 'Index页面自动增加广告位 13 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('14', 'Index页面自动增加广告位 14 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('15', 'Index页面自动增加广告位 15 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('16', 'Index页面自动增加广告位 16 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('17', 'Index页面自动增加广告位 17 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('18', 'Index页面自动增加广告位 18 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('19', 'Index页面自动增加广告位 19 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('20', 'Index页面自动增加广告位 20 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('21', 'Index页面自动增加广告位 21 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('22', 'Index页面自动增加广告位 22 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('23', 'Index页面自动增加广告位 23 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('24', 'Index页面自动增加广告位 24 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('25', 'Index页面自动增加广告位 25 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('26', 'Index页面自动增加广告位 26 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('27', 'Index页面自动增加广告位 27 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('28', 'Index页面自动增加广告位 28 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('49', 'Index页面自动增加广告位 49 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('50', 'Index页面自动增加广告位 50 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('51', 'Index页面自动增加广告位 51 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('52', 'Index页面自动增加广告位 52 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('101', 'Index页面自动增加广告位 101 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('102', 'Index页面自动增加广告位 102 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('103', 'Index页面自动增加广告位 103 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('104', 'Index页面自动增加广告位 104 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('105', 'Index页面自动增加广告位 105 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('106', 'Index页面自动增加广告位 106 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('107', 'Index页面自动增加广告位 107 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('108', 'Index页面自动增加广告位 108 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('204', 'Activity页面自动增加广告位 204 ', '0', '0', 'Activity页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('205', 'Activity页面自动增加广告位 205 ', '0', '0', 'Activity页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('206', 'Activity页面自动增加广告位 206 ', '0', '0', 'Activity页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('207', 'Activity页面自动增加广告位 207 ', '0', '0', 'Activity页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('208', 'Activity页面自动增加广告位 208 ', '0', '0', 'Activity页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('300', 'Index页面自动增加广告位 300 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('301', 'Index页面自动增加广告位 301 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('302', 'Index页面自动增加广告位 302 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('303', 'Index页面自动增加广告位 303 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('304', 'Index页面自动增加广告位 304 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('305', 'Index页面自动增加广告位 305 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('306', 'Index页面自动增加广告位 306 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('307', 'Index页面自动增加广告位 307 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('400', 'Index页面自动增加广告位 400 ', '0', '0', 'Index页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('401', 'Goods页面自动增加广告位 401 ', '0', '0', 'Goods页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('500', 'Ad页面自动增加广告位 500 ', '0', '0', 'Ad页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('506', 'Ad页面自动增加广告位 506 ', '0', '0', 'Ad页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('507', 'Ad页面自动增加广告位 507 ', '0', '0', 'Ad页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('508', 'Ad页面自动增加广告位 508 ', '0', '0', 'Ad页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('509', 'Ad页面自动增加广告位 509 ', '0', '0', 'Ad页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('510', 'Ad页面自动增加广告位 510 ', '0', '0', 'Ad页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('511', 'Ad页面自动增加广告位 511 ', '0', '0', 'Ad页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('512', 'Ad页面自动增加广告位 512 ', '0', '0', 'Ad页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('513', 'Ad页面自动增加广告位 513 ', '0', '0', 'Ad页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('514', 'Ad页面自动增加广告位 514 ', '0', '0', 'Ad页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('515', 'Ad页面自动增加广告位 515 ', '0', '0', 'Ad页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('516', 'Ad页面自动增加广告位 516 ', '0', '0', 'Ad页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('517', 'Ad页面自动增加广告位 517 ', '0', '0', 'Ad页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('518', 'Ad页面自动增加广告位 518 ', '0', '0', 'Ad页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('531', 'Ad页面自动增加广告位 531 ', '0', '0', 'Ad页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('533', 'Ad页面自动增加广告位 533 ', '0', '0', 'Ad页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('534', 'Ad页面自动增加广告位 534 ', '0', '0', 'Ad页面', '', '1', '0', '0');
INSERT INTO `lm_adv_position` VALUES ('539', '首页', '1080', '300', '其他1', '', '1', '1566111321', '1566111456');

-- -----------------------------
-- Table structure for `lm_article`
-- -----------------------------
DROP TABLE IF EXISTS `lm_article`;
CREATE TABLE `lm_article` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(5) NOT NULL DEFAULT '0' COMMENT '类别ID',
  `title` varchar(150) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文章标题',
  `description` mediumtext CHARACTER SET utf8 COMMENT '文章摘要',
  `content` longtext CHARACTER SET utf8 NOT NULL,
  `author` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文章作者',
  `author_email` varchar(60) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '作者邮箱',
  `keywords` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '关键字,用逗号隔开',
  `article_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示,1:显示;0:不显示',
  `file_url` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '附件地址',
  `open_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `link` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '链接地址',
  `click` int(11) DEFAULT '0' COMMENT '浏览量',
  `publish_time` int(11) DEFAULT NULL COMMENT '文章预告发布时间',
  `sort` tinyint(1) DEFAULT '0',
  `thumb` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '文章缩略图',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `pid` (`pid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- -----------------------------
-- Records of `lm_article`
-- -----------------------------
INSERT INTO `lm_article` VALUES ('1', '1', '基于TP6 layui开发的cms 后台管理系统', '基于TP6 layui开发的cms 后台管理系统', '<p>基于TP6 layui开发的cms 后台管理系统</p>', '', '994927909@qq.com', 'tp6 layui', '1', '1', '', '0', '', '1206', '0', '0', '/storage/uploads/20190826\\b183bf1681077d0bafd37bc17caf2cdc.png', '1566799075', '1566801008');

-- -----------------------------
-- Table structure for `lm_article_cate`
-- -----------------------------
DROP TABLE IF EXISTS `lm_article_cate`;
CREATE TABLE `lm_article_cate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '类别名称',
  `title_alias` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '别名',
  `title_type` smallint(6) DEFAULT '0' COMMENT '默认分组',
  `pid` smallint(6) DEFAULT '0' COMMENT '上级ID',
  `show_in_nav` tinyint(1) DEFAULT '0' COMMENT '是否导航显示',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `sort` smallint(6) DEFAULT '50' COMMENT '排序',
  `cat_desc` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '分类描述',
  `keywords` varchar(30) CHARACTER SET utf8 DEFAULT NULL COMMENT '搜索关键词',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- -----------------------------
-- Records of `lm_article_cate`
-- -----------------------------
INSERT INTO `lm_article_cate` VALUES ('1', '新手上路', '', '1', '0', '0', '0', '0', '1233', '', '0', '1566801852');
INSERT INTO `lm_article_cate` VALUES ('2', '购物指南', '', '1', '0', '0', '1', '2', '', '', '0', '0');
INSERT INTO `lm_article_cate` VALUES ('3', '售后服务', '', '1', '0', '0', '1', '2', '', '', '0', '0');
INSERT INTO `lm_article_cate` VALUES ('4', '支付方式', '', '1', '0', '0', '1', '4', '', '', '0', '0');
INSERT INTO `lm_article_cate` VALUES ('5', '配送方式', '', '1', '0', '0', '1', '5', '', '', '0', '0');
INSERT INTO `lm_article_cate` VALUES ('6', '系统公告', '', '1', '0', '0', '1', '6', '', '', '0', '0');
INSERT INTO `lm_article_cate` VALUES ('7', '关于我们', '', '1', '0', '0', '1', '7', '', '', '0', '0');
INSERT INTO `lm_article_cate` VALUES ('8', '测试分类', '测试分类', '0', '7', '0', '1', '50', '', '', '1566801126', '1566801126');

-- -----------------------------
-- Table structure for `lm_auth_group`
-- -----------------------------
DROP TABLE IF EXISTS `lm_auth_group`;
CREATE TABLE `lm_auth_group` (
  `id` smallint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '分组id',
  `title` char(100) NOT NULL DEFAULT '' COMMENT '标题',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态',
  `rules` longtext COMMENT '规则',
  `create_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE,
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='管理员分组';

-- -----------------------------
-- Records of `lm_auth_group`
-- -----------------------------
INSERT INTO `lm_auth_group` VALUES ('1', '超级管理员', '1', '1,2,20,21,40,34,39,3,4,5,9,10,11,12,22,13,6,7,8,14,15,16,17,18,19,26,27,28,29,30,31,32,33,35,36,37,38,23,24,25,41,47,48,51,49,50,52,54,57,58,55,56,42,46,53,43,45,44,', '1465114224', '1566098022');
INSERT INTO `lm_auth_group` VALUES ('2', '测试1', '1', '1,2,39,20,21,34,6,35,36,38,', '1565929191', '1566019644');

-- -----------------------------
-- Table structure for `lm_auth_rule`
-- -----------------------------
DROP TABLE IF EXISTS `lm_auth_rule`;
CREATE TABLE `lm_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `href` char(80) NOT NULL DEFAULT '' COMMENT '链接',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '类型',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态1 可以用，0 所有禁止使用',
  `auth_open` tinyint(2) NOT NULL DEFAULT '0' COMMENT '1公开 0不公开',
  `menu_status` tinyint(1) DEFAULT '0' COMMENT '0 不显示，1 显示',
  `icon` varchar(30) DEFAULT NULL COMMENT '图标样式',
  `condition` char(100) DEFAULT '' COMMENT '条件',
  `pid` int(5) NOT NULL DEFAULT '0' COMMENT '父栏目ID',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `href` (`href`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COMMENT='权限节点';

-- -----------------------------
-- Records of `lm_auth_rule`
-- -----------------------------
INSERT INTO `lm_auth_rule` VALUES ('1', 'System', '系统面板', '1', '1', '0', '1', 'fa fa-home', '', '0', '0', '1446535750', '0');
INSERT INTO `lm_auth_rule` VALUES ('2', 'System', '系统设置', '1', '1', '0', '1', 'fa fa-gears', '', '1', '0', '1446535789', '0');
INSERT INTO `lm_auth_rule` VALUES ('3', 'Database', '数据库管理', '1', '1', '0', '1', 'fa fa-database', '', '1', '0', '1446535805', '0');
INSERT INTO `lm_auth_rule` VALUES ('4', 'Database/restore', '还原数据库', '2', '1', '0', '1', 'fa fa-database', '', '3', '0', '1446535750', '0');
INSERT INTO `lm_auth_rule` VALUES ('5', 'Database/backup', '数据库备份', '2', '1', '0', '0', 'fa fa-database', '', '3', '0', '1446535834', '0');
INSERT INTO `lm_auth_rule` VALUES ('6', 'Auth', '权限管理', '1', '1', '0', '1', 'fa fa-cog', '', '1', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('7', 'Auth/adminRule', '权限列表', '1', '1', '0', '1', 'fa fa-cog', '', '6', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('8', 'Auth/ruleEdit', '权限编辑', '2', '1', '0', '0', 'fa fa-cog', '', '7', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('9', 'Database/repair', '数据库修复', '2', '1', '0', '0', '', '', '3', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('10', 'Database/import', '数据还原', '2', '1', '0', '0', '', '', '3', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('11', 'Database/downFile', '数据下载', '2', '1', '0', '0', '', '', '3', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('12', 'Database/delSqlFiles', '删除数据库', '2', '1', '0', '0', '', '', '3', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('13', 'Database/index', '数据库列表', '1', '1', '0', '1', 'fa fa-database', '', '3', '1', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('14', 'Auth/ruleState', '菜单显示或者隐藏', '2', '1', '0', '0', '', '', '7', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('15', 'Auth/ruleOpen', '权限是否验证', '2', '1', '0', '0', '', '', '7', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('16', 'Auth/ruleSort', '权限排序', '2', '1', '0', '0', '', '', '7', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('17', 'Auth/ruleDel', '权限删除', '2', '1', '0', '0', '', '', '7', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('18', 'Auth/ruleSelectDel', '权限批量删除', '2', '1', '0', '0', '', '', '7', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('19', 'Auth/ruleAdd', '权限增加', '2', '1', '0', '0', '', '', '7', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('20', 'System/index', '站点设置', '1', '1', '0', '1', 'fa fa-gears', '', '2', '0', '0', '1567228601');
INSERT INTO `lm_auth_rule` VALUES ('21', 'Adminlog/index', '日志管理', '1', '1', '0', '1', 'fa fa-life-ring', '', '2', '0', '0', '1566007925');
INSERT INTO `lm_auth_rule` VALUES ('22', 'Database/optimize', '数据库优化', '1', '1', '0', '0', '', '', '3', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('23', 'Addons', '插件管理', '1', '1', '0', '1', 'fa fa-flickr', '', '0', '0', '0', '1566053592');
INSERT INTO `lm_auth_rule` VALUES ('24', 'Addons', '插件设置', '1', '1', '0', '1', 'fa fa-flickr', '', '23', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('25', 'Addons/index', '插件列表', '1', '1', '0', '1', 'fa fa-globe', '', '24', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('26', 'Auth/group', '权限组', '1', '1', '0', '1', 'fa fa-globe', '', '6', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('27', 'Auth/groupDel', '用户组删除', '1', '1', '0', '0', '', '', '26', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('28', 'Auth/groupAdd', '用户组添加', '1', '1', '0', '0', '', '', '26', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('29', 'Auth/groupEdit', '用户组修改', '1', '1', '0', '0', '', '', '26', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('30', 'Auth/groupState', '用户组状态修改', '1', '1', '0', '0', '', '', '26', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('31', 'Auth/groupSelectDel', '用户组批量删除', '1', '1', '0', '0', '', '', '26', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('32', 'Auth/groupAccess', '用户组显示权限', '1', '1', '0', '0', '', '', '26', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('33', 'Auth/groupSetaccess', '用户组保存权限', '1', '1', '0', '0', '', '', '26', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('34', 'Uploads/uploads', '上传文件', '1', '1', '0', '0', '', '', '2', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('35', 'Auth/adminList', '管理员列表', '1', '1', '0', '1', 'fa fa-user-circle', '', '6', '0', '1', '0');
INSERT INTO `lm_auth_rule` VALUES ('36', 'Auth/adminAdd', '添加管理员', '1', '1', '0', '0', '', '', '35', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('37', 'Auth/adminDel', '删除管理员', '1', '1', '0', '0', '', '', '35', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('38', 'Auth/adminState', '管理员状态', '1', '1', '0', '0', '', '', '35', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('39', 'Index/password', '修改密码', '1', '1', '0', '0', '', '', '2', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('40', 'Adminlog/delete', '删除日志', '1', '1', '0', '0', '', '', '21', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('41', 'Content', '内容管理', '1', '1', '0', '1', 'fa fa-folder-open', '', '0', '50', '1566092187', '1566092574');
INSERT INTO `lm_auth_rule` VALUES ('42', 'Link', '链接管理', '1', '1', '0', '1', 'fa fa-link', '', '41', '50', '1566092432', '1566092684');
INSERT INTO `lm_auth_rule` VALUES ('43', 'Link/add', '链接添加', '1', '1', '0', '0', '', '', '46', '50', '1566092486', '1566092801');
INSERT INTO `lm_auth_rule` VALUES ('44', 'Link/delete', '链接删除', '1', '1', '0', '0', '', '', '46', '50', '1566092613', '1566092798');
INSERT INTO `lm_auth_rule` VALUES ('45', 'Link/state', '链接状态', '1', '1', '0', '0', '', '', '46', '50', '1566092677', '1566092795');
INSERT INTO `lm_auth_rule` VALUES ('46', 'Link/index', '链接列表', '1', '1', '0', '1', 'fa fa-link', '', '42', '50', '1566092770', '1566092770');
INSERT INTO `lm_auth_rule` VALUES ('47', 'Adv', '广告管理', '1', '1', '0', '1', 'fa fa-audio-description', '', '41', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('48', 'Adv/index', '广告列表', '1', '1', '0', '1', 'fa fa-audio-description', '', '47', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('49', 'Adv/add', '广告添加', '1', '1', '0', '0', '', '', '48', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('50', 'Adv/delete', '广告删除', '1', '1', '0', '0', '', '', '48', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('51', 'Adv/state', '广告状态', '1', '1', '0', '0', '', '', '48', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('52', 'Adv/order', '广告排序', '1', '1', '0', '0', '', '', '48', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('53', 'Link/order', '链接排序', '1', '1', '0', '0', '', '', '46', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('54', 'Adv/pos', '广告位置', '1', '1', '0', '1', 'fa fa-audio-description', '', '47', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('55', 'Adv/posAdd', '广告位添加', '1', '1', '0', '0', '', '', '54', '0', '0', '1566263212');
INSERT INTO `lm_auth_rule` VALUES ('56', 'Adv/posDel', '广告位删除', '1', '1', '0', '0', '', '', '54', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('57', 'Adv/posState', '广告位状态', '1', '1', '0', '0', '', '', '54', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('58', 'Adv/posOrder', '广告位排序', '1', '1', '0', '0', '', '', '54', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('59', 'Article', '文章管理', '1', '1', '0', '1', 'fa fa-align-left', '', '41', '50', '1566262787', '1566787746');
INSERT INTO `lm_auth_rule` VALUES ('60', 'Article/index', '文章列表', '1', '1', '0', '1', 'fa fa-bars', '', '59', '50', '1566262825', '1566799505');
INSERT INTO `lm_auth_rule` VALUES ('61', 'Article/add', '添加文章', '1', '1', '0', '0', '', '', '60', '50', '1566262896', '1566263088');
INSERT INTO `lm_auth_rule` VALUES ('62', 'Article/delete', '删除文章', '1', '1', '0', '0', '', '', '60', '50', '1566262920', '1566263087');
INSERT INTO `lm_auth_rule` VALUES ('65', 'Article/edit', '文章编辑', '1', '1', '0', '0', '', '', '60', '50', '1566263048', '1566263082');
INSERT INTO `lm_auth_rule` VALUES ('66', 'Adv/posEdit', '广告编辑', '1', '1', '0', '0', '', '', '54', '50', '1566264182', '1567229269');
INSERT INTO `lm_auth_rule` VALUES ('67', 'Adv/edit', '广告编辑', '1', '1', '0', '0', '', '', '48', '50', '1566264200', '1567229266');
INSERT INTO `lm_auth_rule` VALUES ('68', 'Link/edit', '链接编辑', '1', '1', '0', '0', '', '', '46', '50', '1566264281', '1566264281');
INSERT INTO `lm_auth_rule` VALUES ('69', 'Article/articleCate', '文章分类', '1', '1', '0', '1', 'fa fa-folder-o', '', '59', '50', '1566799875', '1566800015');
INSERT INTO `lm_auth_rule` VALUES ('70', 'Article/cateAdd', '添加文章分类', '1', '1', '0', '0', '', '', '69', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('71', 'Article/cateEdit', '编辑文章分类', '1', '1', '0', '0', '', '', '69', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('72', 'Article/cateDel', '删除文章分类', '1', '1', '0', '0', '', '', '69', '0', '0', '0');
INSERT INTO `lm_auth_rule` VALUES ('73', 'System/site', '站点修改', '1', '1', '0', '0', 'fa undefined', '', '20', '50', '1567225373', '1567225410');
INSERT INTO `lm_auth_rule` VALUES ('74', 'Article/state', '文章状态', '1', '1', '0', '0', 'fa undefined', '', '60', '50', '1567225947', '1567225947');
INSERT INTO `lm_auth_rule` VALUES ('75', 'Article/cateState', '文章分类状态', '1', '1', '0', '0', 'fa undefined', '', '69', '50', '1567225975', '1567225975');

-- -----------------------------
-- Table structure for `lm_config`
-- -----------------------------
DROP TABLE IF EXISTS `lm_config`;
CREATE TABLE `lm_config` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `code` varchar(30) NOT NULL,
  `value` mediumtext,
  `remark` varchar(100) DEFAULT '解释,备注',
  `type` varchar(20) DEFAULT 'site',
  `status` tinyint(1) DEFAULT '1',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COMMENT='配置参数表';

-- -----------------------------
-- Records of `lm_config`
-- -----------------------------
INSERT INTO `lm_config` VALUES ('1', 'site_name', 'lemocm', '网站名称', 'site', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('2', 'site_phone', '3', '网站客服服务电话', 'site', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('3', 'site_state', '1', '状态', 'site', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('4', 'site_logo', '/storage/uploads/logo.png', '网站logo图', 'site', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('5', 'site_mobile_logo', 'site_mobile_logo.png', '默认网站手机端logo', 'site', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('6', 'site_logowx', 'site_logowx.jpg', '微信网站二维码', 'site', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('7', 'site_icp', '2', 'ICP备案号', 'site', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('8', 'site_tel400', '40002541852', '解释,备注', 'site', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('9', 'site_email', '858761000@qq.com', '电子邮件', 'site', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('10', 'site_copyright', 'LEMOCMS版权所有@2018', '底部版权信息', 'site', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('11', 'captcha_status_login', '1', '会员登录是否需要验证码', 'site', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('12', 'captcha_status_register', '1', '会员注册是否验证码', 'site', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('14', 'sms_appid', 'LTAIesI7qxnHLgKE', '短信平台账号', 'sms', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('15', 'sms_secret', 'sbA6wnefJLD7pv7WipcxL0M3IMb3l9', '短信平台密钥', 'sms', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('16', 'email_host', 'smtp.qq.com', '邮箱地址', 'email', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('17', 'email_port', '25', '邮箱端口', 'email', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('18', 'email_addr', '994927909@qq.com', '邮箱发件人地址', 'email', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('19', 'email_id', '994927909@qq.com', '身份验证用户名', 'email', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('20', 'email_pass', '11211', '用户名密码', 'email', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('21', 'email_secure', 'smtp', '邮箱发送协议', 'email', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('22', 'upload_file_type', 'bmp|png|gif|jpg|jpeg|zip|rar|txt|ppt|xls|doc|mp3|mp4', '图片上传保存方式', 'upload', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('23', 'cache_open', '0', '是否开启缓存', 'site', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('24', 'alioss_accessid', '', 'accessid', 'oss', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('25', 'alioss_accesssecret', '', 'oss_accesssecret', 'oss', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('26', 'alioss_bucket', '', 'oss_bucket', 'oss', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('27', 'alioss_endpoint', '', 'oss_endpoint', 'oss', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('28', 'aliendpoint_type', '0', 'aliendpoint_type', 'oss', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('29', 'node_site_url', '', '站内IM服务器地址', 'im', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('30', 'node_site_use', '0', '是否启用im', 'im', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('31', 'qq_isuse', '1', '是否使用QQ互联', 'qq', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('32', 'qq_appid', '', 'qq互联id', 'qq', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('33', 'qq_appkey', '', 'qq秘钥', 'qq', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('34', 'sina_isuse', '1', '是的使用微博登录', 'sina', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('35', 'sina_wb_akey', '', '新浪id', 'sina', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('36', 'sina_wb_skey', '', '新浪秘钥', 'sina', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('37', 'sms_register', '0', '是否手机注册', 'mobile', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('38', 'sms_login', '0', '是否手机登录', 'mobile', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('39', 'sms_password', '0', '是否手机找回密码', 'mobile', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('40', 'weixin_isuse', '', '是否微信登录', 'weixin', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('41', 'weixin_appid', '', '微信appid', 'weixin', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('42', 'weixin_secret', '', '微信appserite', 'weixin', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('43', 'baidu_ak', '22bb7221fc279a484895afcc6a0bb33a', '百度地图AK密钥', 'baidu', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('44', 'site_licence', '', '营业执照', 'site', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('45', 'site_domain', 'https://www.lemocms.com', '网站地址', 'site', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('46', 'upload_file_max', '200', '最大文件上传大小', 'upload', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('47', 'site_seo_title', 'LEMOCMS-PHP-THINKPHP内容管理系统', '首页标题', 'site', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('48', 'site_seo_keywords', 'LEMOCMS,LEMOCMS官网,LEMOCMS社区,PHP内容管理系统,开源CMS,php cms,thinkphp', '首页关键词', 'site', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('49', 'site_seo_desc', 'LEMOCMS内容管理系统是一款高效建站的PHP内容管理系统，同时也是一款开源CMS系统。LEMOCMS官网主要发布一些官网最新动态，同时也为广大建站爱好者提供一个交流探讨的平台。 - Powered by LEMOCMS', '首页描述', 'site', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('50', 'upload_water', '1', '水印开始关闭', 'upload', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('51', 'upload_water_position', '', '水印位置', 'upload', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('52', 'sms_product', 'lemocms', '产品', 'sms', '1', '0', '0');
INSERT INTO `lm_config` VALUES ('53', 'sms_template', 'SMS_158941284', '模板id', 'sms', '1', '0', '0');

-- -----------------------------
-- Table structure for `lm_link`
-- -----------------------------
DROP TABLE IF EXISTS `lm_link`;
CREATE TABLE `lm_link` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '链接名称',
  `url` varchar(200) NOT NULL COMMENT '链接URL',
  `type_id` tinyint(4) DEFAULT NULL COMMENT '所属栏目ID',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `qq` varchar(20) DEFAULT NULL COMMENT '联系QQ',
  `sort` int(5) NOT NULL DEFAULT '50' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '0禁用1启用',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;

-- -----------------------------
-- Records of `lm_link`
-- -----------------------------
INSERT INTO `lm_link` VALUES ('23', 'lemocms2', 'https://www.lemocms.com', '0', '994927909@qq.com', '994927909', '50', '1', '1566102829', '1566103652');
INSERT INTO `lm_link` VALUES ('25', '百度', 'https://www.baidu.com', '0', '994927909@qq.com', '994927909', '50', '1', '1566103165', '1566103165');
INSERT INTO `lm_link` VALUES ('26', '新浪', 'https://www.sina.com', '0', '994927909@qq.com', '994927909', '50', '1', '1566103233', '1566103233');

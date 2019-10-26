## 使用环境以及和部署  
 + Lemocms 1.0.8 的运行环境要求必须PHP7.1以及以上。
    
 + 配置apache，nginx 虚拟目录，把根目录指向public/（请务必将域名解析到public目录，通过域名来访问项目。用“域名+public”来访问，会导致页面错乱）
 
 + 导入sql 下的数据库*.sql数据库（已安装了的导入新增的文件就可以）
  
 + 修改config/database.php里面配置

 + 后台访问地址 域名/index.php/admin 后台账号 admin 密码 123456

 + 后台示例地址 http://demo.lemocms.com/index.php/admin   账号密码加群获取




##[微信开发文档](developer-wechat.md)
##[api开发文档](developer-api.md)
##[升级历史](start-log.md)



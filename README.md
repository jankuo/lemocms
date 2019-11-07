### 导读
+ Lemocms 1.09 本系统长期更新,欢迎star和提出和反馈问题 
+ QQ群：[455018252](https://jq.qq.com/?_wv=1027&k=5RWLxx7) 加群获取账号密码（看置顶公告）

+ 演示地址 ： https://demo.lemocms.com/index.php/admin/login/index.html
 
### 前言
Lemocms1.09管理系统：为二次开发而生，让开发变得更简单
 + 这是一款快速、高效、便捷、灵活的应用开发框架。
 + 采用最新thinkphp6框架，后续随官网升级而升级
 + layui采用最新layui2.5.5 框架
 + easywechat 采用最新的4.*版本
 + 后台权限
 + 站点管理
 + 管理员登录LOG
 + 插件管理
 + 内容管理
 + 模型管理
 + 会员管理
 + 微信管理
 + restful api 接口
 + ...更多
  
###[开发文档](docs/developer.md)

###[更新历史](docs/start-log.md) 



### 系统快照

【系统 - 首页】
![image](docs/images/index.png)

【系统 - 内容管理】
![image](docs/images/content.png)

【系统 - 会员管理】
![image](docs/images/user.png)


【系统 - 微信管理】
![image](docs/images/wechat1.png)
![image](docs/images/wechat2.png)
![image](docs/images/wechat3.png)
![image](docs/images/wechat4.png)
![image](docs/images/wechat5.png)




若此项目能得到你的青睐，支持开源项目，可以捐赠支持作者持续开发与维护,这样小哥哥小姐姐更加努力哦。

![image](docs/images/pay.png)


### 问题反馈
在使用中有任何问题，欢迎反馈给我，可以用以下联系方式跟我交流
QQ群：[455018252](https://jq.qq.com/?_wv=1027&k=5RWLxx7)

Github：https://github.com/yue909/lemocms/issues
Gitee : https://gitee.com/limingyue0312/lemocms/issues

### 版权信息
lemocms 方便二次开发，您可以方便的使用到自己或企业的项目中；

本项目包含的第三方源码和二进制文件之版权信息另行标注。

版权所有Copyright © 2018-2020 by lemocms [www.lemocms.com](https://www.lemocms.com) All rights reserved。

## 项目目录结构

初始的目录结构如下：

~~~
www  WEB部署目录（或者子目录）
├─app           目录
│  ├─admin      应用目录
│  ├───controller      控制器目录
│  ├───model      model目录
│  ├───config      config目录
│  ├───route      route目录
│  ├───view      视图目录
│  ├─api      应用目录
│  ├───controller      控制器目录
│  ├───model      model目录
│  ├─ ...            更多类库目录
│  │
│  ├─common.php         公共函数文件
│  └─event.php          事件定义文件
│
├─config                应用配置目录
│  ├─app_name           应用配置目录
│  │  ├─database.php    数据库配置
│  │  ├─cache           缓存配置
│  │  └─ ...            
│  │
│  ├─app.php            应用配置
│  ├─cache.php          缓存配置
│  ├─cookie.php         Cookie配置
│  ├─database.php       数据库配置
│  ├─log.php            日志配置
│  ├─route.php          路由和URL配置
│  ├─session.php        Session配置
│  ├─template.php       模板引擎配置
│  └─trace.php          Trace配置
│
├─view                 视图目录
│  ├─app_name          应用视图目录
│  └─ ...   
│
├─route                 路由定义目录
│  │  ├─route.php       路由定义文件
│  │  └─ ...   
│
├─public                WEB目录（对外访问目录）
│  ├─index.php          入口文件
│  ├─router.php         快速测试文件
│  └─.htaccess          用于apache的重写
│
├─extend                扩展类库目录
├─runtime               应用的运行时目录（可写，可定制）
├─vendor                第三方类库目录（Composer依赖库）
├─build.php             自动生成定义文件（参考）
├─composer.json         composer 定义文件
├─LICENSE.txt           授权说明文件
├─README.md             README 文件
├─think                 命令行入口文件





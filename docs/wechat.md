## 微信开发文档
后台添加微信服务号，以及对应的参数
微信服务器对接地址   域名/wechat/wechatApi/related?store_id=1
域名换成你服务器的域名 如果添加有多个微信，请把其他微信状态改成未对接,只保留一个
   
###控制器调用
 1  引入 
        use util\WechatApp;
    
 2  实例化 
        $wechatApp  = new WechatApp();
 3 获取微信对象实例 
        $app =  $wechatApp->wechatApp;
 4  调用方法 发起网页授权
        $$response = $app->oauth->scopes(['snsapi_userinfo'])
                                   ->redirect();
    
其他请参照easywechat 开发文档

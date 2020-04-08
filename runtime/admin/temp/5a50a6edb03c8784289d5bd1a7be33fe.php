<?php /*a:1:{s:42:"E:\lemocms\app\admin\view\login\index.html";i:1582778546;}*/ ?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title><?php echo site_name(); ?>后台管理-登陆</title>
    <meta name="keywords" content="lemocms 基于thinkphp6,thinkphp,layui,easywechat框架,框架,组件">
    <meta name="description" content="lemocms 是一款采用 layui开发的极简后台管理框架 基于thinkphp6 ,easywechat,开发的cms后台管理系统,thinkphp,cms,php后台管理系统,cms,cms系统,restful api,thinkphp后台管理系统">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Access-Control-Allow-Origin" content="*">
    <meta name="viewport" content="width=device-width, initial-scale=1,user-scalable=no, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="renderer" content="webkit">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <?php echo token_meta(); ?>
    <link rel="stylesheet" href="/static/plugins/layui/css/layui.css" media="all">
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
        html, body { -ms-text-size-adjust:100%;-webkit-text-size-adjust:100%;width: 100%;height: 100%;overflow: hidden;background: #f0ad4e;  background:url(<?php echo htmlentities($loginbg); ?>);background-size: cover;}
        body:after {content:'';background-repeat:no-repeat;background-size:cover;-webkit-filter:blur(3px);-moz-filter:blur(3px);-o-filter:blur(3px);-ms-filter:blur(3px);filter:blur(3px);position:absolute;top:0;left:0;right:0;bottom:0;z-index:-1;}
        .layui-container {width: 100%;height: 100%;overflow: hidden;}
        .admin-login-background {width:360px;height:375px;position:absolute;left:50%;top:40%;margin-left:-180px;margin-top:-100px;    -webkit-box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);background: rgba(255,255,255, 0.2);}
        .login-form .layui-form-item label{color: #009688!important;}
        .logo-title {text-align:center;letter-spacing:2px;padding:14px 0;}
        .logo-title h1 {color:#009688;font-size:25px;font-weight:bold;}
        .login-form {border:1px solid #d2d2d2;border-radius:3px;padding:14px 20px;box-shadow:0 0 8px #eeeeee;}
        .login-form .layui-form-item {position:relative;}
        .login-form .layui-form-item label {position:absolute;left:1px;top:1px;width:38px;line-height:36px;text-align:center;color:#d2d2d2;}
        .login-form .layui-form-item input {padding-left:36px;}
        .captcha {width:65%;display:inline-block;}
        .captcha-img {display:inline-block;width:34%;float:right;}
        .captcha-img img {height:34px;border:1px solid #e6e6e6;height:36px;width:100%;}
        .copyright{font-size:12px;color: #fff; text-align: center;}.copyright a{color: #009688}
        @media screen  and (max-width: 320px) {
            .admin-login-background {
                width:300px;
                left: 59%;
            }
        }

    </style>
</head>
<body>
<div class="layui-container">
    <div class="admin-login-background">
        <div class="layui-form login-form">
            <form class="layui-form" action="">
                <div class="layui-form-item logo-title">
                    <h1>LEMO后台登录</h1>
                </div>
                <div class="layui-form-item">
                    <label class="layui-icon layui-icon-username" for="username"></label>
                    <input type="text" name="username" lay-verify="required|account" placeholder="用户名或者邮箱" autocomplete="off" class="layui-input" value="">
                </div>
                <div class="layui-form-item">
                    <label class="layui-icon layui-icon-password" for="password"></label>
                    <input type="password" name="password" lay-verify="required|password" placeholder="密码" autocomplete="off" class="layui-input" value="">
                </div>
                <div class="layui-form-item">
                    <label class="layui-icon layui-icon-vercode" for="captcha"></label>
                    <input type="text" name="captcha" lay-verify="required|captcha" placeholder="图形验证码" autocomplete="off" class="layui-input verification captcha" value="">
                    <div class="captcha-img">
                        <img  id="captchaPic" src="<?php echo url('verify'); ?>?<?php echo time(); ?>" alt="captcha" onclick="this.src='<?php echo url("verify"); ?>?'+'id='+Math.random()"/>
                    </div>
                </div>
                <div class="layui-form-item">
                    <input type="checkbox" name="rememberMe" checked value="true" lay-skin="primary" title="记住密码">
                </div>
                <div class="layui-form-item">
                    <button class="layui-btn layui-btn-fluid" lay-submit="" lay-filter="login">登 入</button>
                </div>
                <div class="copyright">
                    © 2018-2020 <a href="https://www.lemocms.com" target="_blank">Lemocms.com</a> All Rights Reserved.
                </div>
            </form>
        </div>
    </div>
</div>
<script src="/static/plugins/jquery-3.4.1/jquery-3.4.1.min.js" charset="utf-8"></script>
<script src="/static/plugins/layui/layui.js" charset="utf-8"></script>
<script>
    layui.use(['form'], function () {
        var form = layui.form,
            layer = layui.layer;
        // 登录过期的时候，跳出ifram框架
        if (top.location != self.location) top.location = self.location;

        form.on('submit(login)', function (data) {
            data = data.field;

            if (data.username == '') {
                layer.msg('用户名不能为空');
                return false;
            }
            if (data.password == '') {
                layer.msg('密码不能为空');
                return false;
            }
            if (data.captcha == '') {
                layer.msg('验证码不能为空');
                return false;
            }

            $.ajax({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                method:'post',
                data:data,
                success:function (res) {
                    if(res.code>0){
                        layer.msg(res.msg, function () {
                            window.location = "<?php echo url('index/index'); ?>";
                        });
                    }else{
                        layer.msg(res.msg);
                        $('#captchaPic').attr('src','<?php echo url("verify"); ?>?id='+Math.random());
                        return false;
                    }

                },fail:function (res) {
                    layer.msg(res.msg, function () {
                        $('#captchaPic').attr('src','<?php echo url("verify"); ?>?id='+Math.random());
                        return false;
                    });
                }
            });

            return false;
        });
    });
</script>
</body>
</html>
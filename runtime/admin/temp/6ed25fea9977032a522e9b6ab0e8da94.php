<?php /*a:3:{s:46:"E:\lemocms\app\admin\view\sys\addon\index.html";i:1583037531;s:44:"E:\lemocms\app\admin\view\common\header.html";i:1583038741;s:44:"E:\lemocms\app\admin\view\common\footer.html";i:1582960894;}*/ ?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title><?php echo config('admin.sys_name'); ?>后台管理</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="/static/plugins/layui/css/layui.css" media="all" />
    <link rel="stylesheet" href="/static/admin/css/main.css?v=<?php echo time(); ?>" media="all">
    <link rel="stylesheet" href="/static/plugins/font-awesome-4.7.0/css/font-awesome.min.css" media="all">
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style id="lemo-bg-color">
    </style>
</head>
<div class="lemo-container">
    <div class="lemo-main">
        <fieldset class="layui-elem-field layui-field-title">
            <legend><?php echo lang('addons'); ?><?php echo lang('list'); ?></legend>
        </fieldset>

        <table class="layui-table layui-hide" id="list" lay-filter="list"></table>

    </div>
</div>

<!--登陆页面-->
<div style="display: none;padding: 20px" id="login">
    <blockquote class="layui-elem-quote layui-text">
        登录提示：账号为 <a  target="_blank" href="https://bbs.lemocms.com">lemocms</a> 官方账号
    </blockquote>
    <br>
    <br>
    <form class="layui-form layui-form-pane" action="">
        <div class="layui-form-item">
            <label class="layui-form-label">账号<i class="fa fa-user"></i></label>
            <div class="layui-input-block">
                <input type="text" class="layui-input" id="inputUsername" value=""
                       placeholder="<?php echo lang('username or email'); ?>">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">密码<i class="fa fa-lock"></i></label>
            <div class="layui-input-block">
                <input type="password" class="layui-input" id="inputPassword" value=""
                       placeholder="<?php echo lang('Your password'); ?>">
            </div>
        </div>
    </form>
</div>

<script type="text/html" id="action">
    {{# if(d.install==1){ }}
    <a href="javascript:;" class="layui-btn  layui-btn-xs" lay-event="config"><?php echo lang('config'); ?></a>
        {{#  if(d.status == 1){ }}
        <a class="layui-btn layui-btn-xs layui-btn-normal" lay-event='status'>启用</a>
        {{#  } else { }}
        <a class="layui-btn layui-btn-xs layui-btn-warm" lay-event='status'>禁用</a>
        {{#  } }}
    <a href="javascript:;" class="layui-btn layui-btn-danger layui-btn-xs" lay-event="uninstall"><?php echo lang('uninstall'); ?></a>

    {{# }else{ }}
        <a href="javascript:;" class="layui-btn layui-btn-danger layui-btn-xs" lay-event="install"><?php echo lang('install'); ?></a>

    {{# } }}

    {{# if(d.install==1){ }}
        {{# if(d.website !=''){ }}
        <a  href="{{d.website}}"  target="_blank" class="layui-btn  layui-btn-xs"><?php echo lang('demo'); ?></a>
        {{# } }}
    {{# } }}
</script>


<script type="text/html" id="name">
    {{d.name}}<img src="/static/admin/images/image.gif" onmouseover="layer.tips('<img src={{d.image}}>',this,{tips: [1, '#fff']});" onmouseout="layer.closeAll();">
</script>
<script type="text/html" id="create_time">
    {{layui.util.toDateString(d.create_time*1000, 'yyyy-MM-dd HH:mm:ss')}}
</script>
<script type="text/html" id="update_time">
    {{layui.util.toDateString(d.update_time*1000, 'yyyy-MM-dd HH:mm:ss')}}
</script>

<script src="/static/plugins/layui/layui.js" charset="utf-8"></script>
<!--<script>-->
<!--    layui.config({-->
<!--        base: "/static/admin/js/",-->
<!--        version: true-->
<!--    }).extend({-->
<!--        Admin: 'Admin'-->
<!--    }).use(['Admin'], function () {-->
<!--        Admin = layui.Admin;-->
<!--    });-->
<!--</script>-->

<script src="/static/plugins/md5/md5.min.js"></script>
<script>
    var data = {};
    layui.config({
        base: "/static/admin/js/",
        version: true
    }).extend({
        Addon: "Addon"
    }).use(['element', 'layer', 'Addon'], function () {

        Addon.init(data);

    });

</script>
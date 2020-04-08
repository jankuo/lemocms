<?php /*a:3:{s:49:"E:\lemocms\app\admin\view\sys\adminlog\index.html";i:1583037531;s:44:"E:\lemocms\app\admin\view\common\header.html";i:1583038741;s:44:"E:\lemocms\app\admin\view\common\footer.html";i:1582960894;}*/ ?>
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
            <legend>日志<?php echo lang('list'); ?></legend>
            <blockquote class="layui-elem-quote">
                <div class="tabletop">
                    <div class="layui-inline">
                        <!--                        <label class="layui-form-label">搜索<?php echo lang('username'); ?></label>-->
                        <div class="layui-input-inline">
                            <input type="text" name="keys" id="keys" lay-verify="required" autocomplete="off"
                                   class="layui-input">
                        </div>
                        <button type="submit" class="layui-btn layui-btn-sm" lay-submit lay-filter="submit" id="search">
                            <?php echo lang('search'); ?>
                        </button>
                        <a href="javascript:;"  class="layui-btn layui-btn-sm layui-btn-danger"
                           data-href="<?php echo url('delete'); ?>" id="delAll"><?php echo lang('delete checked'); ?></a>

                    </div>

                </div>

            </blockquote>
        </fieldset>
        <table class="layui-table" id="list" lay-filter="list"></table>
    </div>
</div>


<script type="text/html" id="action">
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del" data-href="<?php echo url('delete'); ?>"><?php echo lang('del'); ?></a>
</script>
<script type="text/html" id="create_time">
    {{layui.util.toDateString(d.create_time*1000, 'yyyy-MM-dd HH:mm:ss')}}
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

<script>
    var tableIn=null;
    layui.config({
        base: "/static/admin/js/",
        version: true
    }).extend({
        Admin: 'Admin'
    }).use(['table','Admin'], function () {
        var table = layui.table;
        tableIn = table.render({
            elem: '#list',
            url: '<?php echo url("index"); ?>',
            method: 'post',
            cols: [[
                {checkbox: true, fixed: 'left'},
                {field: 'id', title: 'ID', width: 80, sort: true},
                {field: 'admin_id', title: 'admin_id', width: 80, sort: true},
                {field: 'username', title: '账号', width: 150, sort: true},
                {field: 'log_url', title: '地址', width: 150, templet: '#size', sort: true,},
                {field: 'log_content', title: '内容', width: 150, sort: true,},
                {field: 'log_title', title: '标题', width: 150, sort: true,},
                {field: 'log_agent', title: '浏览器', width: 120, sort: true,},
                {field: 'log_ip', title: 'ip', width: 80},
                {field: 'create_time', title: '时间', width: 180,templet:'#create_time'},
                {title:'操作',width:100, toolbar: '#action',align:"center"}
            ]],
            limits: [10, 15, 20, 25, 50, 100],
            limit: 15,
            page: true,
       });
    });


</script>
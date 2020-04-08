<?php /*a:3:{s:50:"E:\lemocms\app\admin\view\sys\auth\admin_list.html";i:1583037531;s:44:"E:\lemocms\app\admin\view\common\header.html";i:1583038741;s:44:"E:\lemocms\app\admin\view\common\footer.html";i:1582960894;}*/ ?>
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
            <legend><?php echo lang('admin'); ?><?php echo lang('list'); ?></legend>

            <blockquote class="layui-elem-quote">
                <div class="lemo-table">
                    <div class="layui-inline">
                        <input type="text" name="keys" id="keys" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">

                    </div>
                    <button class="layui-btn data-add-btn layui-btn-sm" lay-submit="" lay-filter="search" id="search">搜索</button>
                    <a data-href='<?php echo url("adminAdd"); ?>' href="javascript:;" class="layui-btn layui-btn-sm layui-btn-warm add"><?php echo lang('add'); ?><?php echo lang('admin'); ?></a>

                </div>

            </blockquote>

        </fieldset>

        <table class="layui-table" id="list" lay-filter="list"></table>
    </div>
</div>
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


<script type="text/html" id="action">
    <a data-href="<?php echo url('adminEdit'); ?>?id={{d.id}}" class="layui-btn layui-btn-xs" lay-event="edit"><?php echo lang('edit'); ?></a>
    {{# if(d.id==1){ }}
    <a href="#" class="layui-btn layui-btn-xs layui-btn-disabled"><?php echo lang('del'); ?></a>
    {{# }else{  }}
    <a data-href="<?php echo url('adminDel'); ?>" class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del"><?php echo lang('del'); ?></a>
    {{# } }}
</script>
<script type="text/html" id="status">
    {{# if(d.id==1){ }}
    <input data-href="<?php echo url('adminState'); ?>" type="checkbox" disabled name="status" value="{{d.id}}" lay-skin="switch" lay-text="开启|关闭" lay-filter="status" checked>
    {{# }else{  }}
    <input data-href="<?php echo url('adminState'); ?>" type="checkbox" name="status" value="{{d.id}}" lay-skin="switch" lay-text="开启|关闭" lay-filter="status" {{ d.status == 1 ? 'checked' : '' }}>
    {{# } }}
</script>
<script>
    var tableIn;
    layui.config({
        base: "/static/admin/js/",
        version: true
    }).extend({
        Admin: 'Admin'
    }).use(['element', 'layer', 'Admin'], function () {
        var $ = layui.jquery,
            form = layui.form,
            table = layui.table;
        tableIn = table.render({
            elem: '#list',
            url: '<?php echo url("adminList"); ?>',
            method:'post',
            title:'<?php echo lang("admin"); ?><?php echo lang("list"); ?>',
            cols: [[
                {field:'id', title: 'ID', width:60,fixed: true}
                ,{field:'username', title: '用户名', width:180}
                ,{field:'title', title: '<?php echo lang("adminGroup"); ?>', width:100}
                ,{field:'email', title: '<?php echo lang("email"); ?>', width:200}
                ,{field:'mobile', title: '<?php echo lang("mobile"); ?>', width:150}
                ,{field:'ip', title: '<?php echo lang("ip"); ?>',width:150,hide:true}
                ,{field:'status', title: '<?php echo lang("status"); ?>',width:150,toolbar: '#status'}
                ,{title:'操作',width:150, toolbar: '#action',align:"center"}
            ]]
        });

    });
</script>

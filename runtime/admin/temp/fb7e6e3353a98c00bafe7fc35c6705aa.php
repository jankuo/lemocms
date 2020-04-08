<?php /*a:3:{s:52:"E:\lemocms\app\admin\view\sys\system\configlist.html";i:1583037531;s:44:"E:\lemocms\app\admin\view\common\header.html";i:1583038741;s:44:"E:\lemocms\app\admin\view\common\footer.html";i:1582960894;}*/ ?>
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
                <legend><?php echo lang('config'); ?><?php echo lang('list'); ?></legend>
                <blockquote class="layui-elem-quote">

                    <div class="lemo-table">
                        <div class="layui-inline">
                            <input type="text" id='keys' name="keys" lay-verify="required" placeholder="<?php echo lang('pleaseEnter'); ?>" autocomplete="off" class="layui-input">
                        </div>
                        <a href="javascript:;" class="layui-btn data-add-btn layui-btn-sm" lay-submit="" lay-filter="search" id="search"><?php echo lang('search'); ?></a>
                        <a href="javascript:;"  class="layui-btn layui-btn-sm layui-btn-warm add" lay-filter="add"  data-href="<?php echo url('configAdd'); ?>" ><?php echo lang('add'); ?><?php echo lang('config'); ?></a>
                        <a href="javascript:;"  class="layui-btn layui-btn-sm layui-btn-danger add" lay-filter="group" data-href="<?php echo url('configGroupAdd'); ?>" ><?php echo lang('add'); ?><?php echo lang('config group'); ?></a>
                        <a href="javascript:;"  class="layui-btn layui-btn-sm layui-btn-normal add" lay-filter="grouplist" data-href="<?php echo url('configGroup'); ?>"><?php echo lang('config group'); ?><?php echo lang('list'); ?></a>

                    </div>

                </blockquote>

            </fieldset>

            <table class="layui-table layui-hide" id="list" lay-filter="list"></table>
    </div>
</div>


<script type="text/html" id="action">
    <a  class="layui-btn  layui-btn-xs" lay-event="edit" data-href="<?php echo url('configEdit'); ?>?id={{d.id}}"><?php echo lang('edit'); ?></a>
    <a  class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del" data-href="<?php echo url('configDel'); ?>"><?php echo lang('del'); ?></a>
</script>
<script type="text/html" id="status">
    <input type="checkbox" name="status" value="{{d.id}}" lay-skin="switch" lay-text="开启|关闭" data-href="<?php echo url('configState'); ?>" lay-filter="status" {{ d.status == 1 ? 'checked' : '' }}>
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
    }).use(['form', 'table','Admin'], function () {
        var table = layui.table;
        tableIn = table.render({
            elem: '#list',
            url: '<?php echo url("configlist"); ?>',
            method: 'post',
            cols: [[
                {checkbox: true, fixed: true},
                {field: 'id', title: 'ID', width: 80,  sort: true},
                {field: 'code', title: '配置键', width: 120,sort: true},
                {field: 'value', title: '配置值', width: 250,sort: true},
                {field: 'type', title: '分组', width: 250,sort: true},
                {field: 'remark', title: '备注', width: 220,sort:true},
                {field: 'status', title: '状态', width: 180, templet:'#status'},
                {title:'操作',width:120, toolbar: '#action',align:"center"}
            ]],
            limits: [10, 15, 20, 25, 50, 100],
            limit: 15,
            page: true
        });

    });


</script>
<?php /*a:3:{s:45:"E:\lemocms\app\admin\view\sys\auth\group.html";i:1583037531;s:44:"E:\lemocms\app\admin\view\common\header.html";i:1583038741;s:44:"E:\lemocms\app\admin\view\common\footer.html";i:1582960894;}*/ ?>
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
        <div class="admin-main layui-anim layui-anim-upbit">
            <fieldset class="layui-elem-field layui-field-title">
                <legend>权限组<?php echo lang('list'); ?></legend>
                <blockquote class="layui-elem-quote">
                    <div class="lemo-table">
                        <form class="layui-form layui-form-pane" action="<?php echo url('groupAdd'); ?>" lay-filter="form" method="post" >
                            <div class="layui-inline">
                                <input type="text" name="title" lay-verify="required" placeholder="<?php echo lang('pleaseEnter'); ?>添加" autocomplete="off" class="layui-input">
                            </div>
                            <button class="layui-btn data-add-btn layui-btn-sm" lay-submit="" lay-filter="submit"><?php echo lang('add'); ?></button>
                        </form>
                    </div>
                  </blockquote>

            </fieldset>



            <table class="layui-table" id="list" lay-filter="list"></table>
        </div>
    </div>
</div>


<script type="text/html" id="action">
    <a data-href="<?php echo url('groupAccess'); ?>?id={{d.id}}" class="layui-btn layui-btn-xs layui-btn-normal" lay-event="edit">配置规则</a>
    <a data-href="<?php echo url('groupEdit'); ?>?id={{d.id}}" class="layui-btn layui-btn-warm layui-btn-xs" lay-event="edit"><?php echo lang('edit'); ?></a>
    {{# if(d.id==1){ }}
    <a class="layui-btn layui-btn-danger layui-btn-xs layui-btn-disabled"><?php echo lang('del'); ?></a>
    {{# }else{  }}
    <a class="layui-btn layui-btn-danger layui-btn-xs"  data-href="<?php echo url('groupDel'); ?>" lay-event="del"><?php echo lang('del'); ?></a>
    {{# } }}
</script>
<script type="text/html" id="status">
    {{# if(d.id==1){ }}
    <input type="checkbox" disabled name="status" value="{{d.id}}" lay-skin="switch" lay-text="开启|关闭" data-href="<?php echo url('groupState'); ?>" lay-filter="status" checked>
    {{# }else{  }}
    <input type="checkbox" name="status"  value="{{d.id}}" lay-skin="switch" lay-text="开启|关闭" data-href="<?php echo url('groupState'); ?>" lay-filter="status" {{ d.status == 1 ? 'checked' : '' }}>
    {{# } }}
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

<script>
    var tableIn;
    layui.config({
        base: "/static/admin/js/",
        version: true
    }).extend({
        Admin: 'Admin'
    }).use(['element','form', 'layer', 'Admin','table'], function () {
        var $ = layui.jquery,
            form = layui.form,
            table = layui.table;
        tableIn = table.render({
            elem: '#list',
            url: '<?php echo url("group"); ?>',
            method: 'post',
            cols: [[
                {checkbox: true, fixed: true},
                {field: 'id', title: 'ID', width: 80, fixed: true, sort: true},
                {field: 'title', title: '组名', width: 150,},
                {field: 'status', title: '状态', width: 180, templet:'#status'},
                {field: 'create_time', title: '添加时间', width: 180,templet:'#create_time'},
                {field: 'update_time', title: '修改时间', width: 180,templet:'#update_time'},
                {title:'操作',width:250, toolbar: '#action',align:"center"},

            ]],

        });
    });

</script>
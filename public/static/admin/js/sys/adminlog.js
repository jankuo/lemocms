define(["jquery", "backend",], function ($, admin) {

    var table = layui.table;
    var form = layui.form;

    var init = {
        index_url: 'sys.adminlog/index',
        add_url: 'system.admin/add',
        del_url: 'system.admin/delete',
        modify_url: 'system.admin/modify',
        tableId: 'list',
    };

    var Controller = {

        index: function () {
            table.render({
                elem: '#' + init.tableId,
                url: backend.url(init.index_url),
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
            backend.listen();
        },
        add: function () {
            backend.listen();
        },
        edit: function () {
            backend.listen();
        },
        delete: function () {
            backend.listen();
        }
    };
    return Controller;
});
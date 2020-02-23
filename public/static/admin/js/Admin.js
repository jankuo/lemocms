layui.define(['form','layer', 'table','upload'], function (exports) {
    var $ = layui.jquery,
        form = layui.form,
        table = layui.table,
        upload = layui.upload,
        layer = layui.layer;
    var iframe=null;
    var tablelist = $('.layui-table').attr('id');
    Admin = new function () {
        /* 成功
            * @param title
            * @returns {*}
        */
        function msg_success (title) {
             layer.msg(title, {icon: 1, shade: this.shade, scrollbar: false, time: 2000, shadeClose: true});
        };

        /**
         * 失败
         * @param title
         * @returns {*}
         */
        function msg_error(title) {
             layer.msg(title, {icon: 1, shade: this.shade, scrollbar: false, time: 3000, shadeClose: true});
        };
        table.on('tool('+tablelist+')', function(obj){
            var data = obj.data;
            var url = $(this).attr('data-href');
            if(obj.event === 'del'){
                layer.confirm('Are you sure you want to delete it', function(index){
                    loading =layer.load(1, {shade: [0.1,'#fff']});
                    $.post(url?url:'delete',{ids:[data.id]},function(res){
                        layer.close(loading);
                        if(res.code>0){
                            if(iframe){
                                layer.closeAll();
                            }
                            msg_success(res.msg);
                            obj.del();
                        }else{
                            msg_error(res.msg);
                        }
                    });
                });
            }else if(obj.event === 'add'){
                iframe = layer.open({
                    type: 2,
                    content: url?url:'add',
                    area: ['800px', '600px'],
                    maxmin: true
                });
                layer.full(iframe);

            }else if(obj.event === 'edit'){

                iframe = layer.open({
                    type: 2,
                    content: url?url:'edit',
                    area: ['600px', '800px'],
                    maxmin: true
                });
                layer.full(iframe);

            }

        });

        //监听状态
        form.on('switch(status)', function(obj){
            loading =layer.load(1, {shade: [0.1,'#fff']});
            var field = obj.elem.name;
            var url = $(obj.elem).attr('data-href')?$(obj.elem).attr('data-href'):'state';
            $.post(url,{id:obj.value,field:field},function(res){
                layer.close(loading);
                if(res.code>0){
                    msg_success(res.msg);
                }else{
                    msg_error(res.msg);
                }
            });
        });
        //表单提交
        form.on('submit(submit)', function (data) {
            loading =layer.load(1, {shade: [0.1,'#fff']});
            var url = data.form.action;
            $.post(url?url:'', data.field, function (res) {
                layer.close(loading);
                if (res.code > 0) {
                    layer.msg(res.msg, {time: 1800, icon: 1}, function () {
                        if(iframe){
                            layer.closeAll();
                            window.parent.location.href = res.url;
                        }else{
                            window.location.href = res.url;

                        }

                    });
                } else {
                    msg_error(res.msg)
                }
                return false;
            });
            return false;
        });

        //添加
        $(document).on('click','.add',function(){
            var url = $(this).attr('data-href');
            iframe = layer.open({
                type: 2,
                content: url?url:'add',
                area: ['800px', '600px'],
                maxmin: true
            });
            layer.full(iframe);

        });
        //搜索
        $(document).on('click','#search',function(){
            var $keys = $('#keys').val();
            // if(!$keys){
            //     return layer.msg('请输入关键词');
            // }
            tableIn.reload({ page: {page: 1},where: {keys: $keys}});

        });

        //删除
        $(document).on('click','#delAll',function(){
            var url = $(this).attr('data-href');
            url = url?url:'delete';
            layer.confirm("Are you sure you want to delete it", {icon: 3}, function(index) {
                layer.close(iframe);
                var checkStatus = table.checkStatus(tablelist); //list即为参数id设定的值
                var ids = [];
                $(checkStatus.data).each(function (index, item) {
                    ids.push(item.id);
                });
                if(ids == ''){
                    msg_error("please choose data");
                    return false;
                }
                var loading = layer.load(1, {shade: [0.1, '#fff']});
                $.post(url, {ids: ids}, function (res) {
                    layer.close(loading);
                    if (res.code > 0) {
                        msg_success(res.msg);
                        tableIn.reload();
                    } else {
                        msg_error(res.msg);
                    }
                });
            });
        });

        //失去焦点
        $('body').on('blur','.list_order',function() {
            var id = $(this).attr('data-id');
            var sort = $(this).val();
            $.post('ruleSort',{id:id,sort:sort},function(res){
                if(res.code > 0){
                    layer.msg(res.msg,{time:1000,icon:1},function(){
                        location.href = res.url;
                    });
                }else{
                    msg_error(res.msg);
                    treeGrid.render;
                }
            })
        });
        //返回页面
        $('body').on('click','.back',function() {
            var url = $(this).attr('data-href');
            layer.closeAll();
            window.parent.location.href=url;

        });
        $('body').on('click','#selectAttach',function(data) {
            var url = $(this).attr('data-href');
            iframe = layer.open({
                type: 2,
                content: url?url:'add',
                area: ['800px', '600px'],
                maxmin: true
            });
            layer.full(iframe)
        })
        if($('#uploads')){
            //普通图片上传
            var uploadInt = upload.render({
                elem: '#uploads'
                ,url: '/admin/sys.uploads/uploads'
                ,before: function(obj){
                    //预读本地文件示例，不支持ie8
                    obj.preview(function(index, file, result){
                        $('#addPic').attr('src', result); //图片链接（base64）
                    });
                },
                done: function(res){
                    if(res.code>0){
                        $('#avatar').val(res.url);
                        return msg_error('上传成功');
                    }else{
                        //如果上传失败
                        return msg_error('上传失败');
                    }
                }
                ,error: function(){
                    //演示失败状态，并实现重传
                    var notice = $('#notice');
                    notice.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-mini demo-reload">重试</a>');
                    notice.find('.demo-reload').on('click', function(){
                        uploadInt.upload();
                    });
                }
            });
        }

    };
    exports("Admin", Admin);
});
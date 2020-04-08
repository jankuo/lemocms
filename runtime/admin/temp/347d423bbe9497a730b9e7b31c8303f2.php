<?php /*a:3:{s:47:"E:\lemocms\app\admin\view\sys\system\index.html";i:1583037531;s:44:"E:\lemocms\app\admin\view\common\header.html";i:1583038741;s:44:"E:\lemocms\app\admin\view\common\footer.html";i:1582960894;}*/ ?>
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
        </fieldset>

        <div class="layui-tab">
            <ul class="layui-tab-title">
                <li class="layui-this"><?php echo lang('site setting'); ?></li>
                <li class=""><?php echo lang('email setting'); ?></li>
                <li class=""><?php echo lang('sms setting'); ?></li>
                <li class=""><?php echo lang('upload setting'); ?></li>
            </ul>
            <div class="layui-tab-content">
<!--网站配置-->
                    <div class="layui-tab-item layui-show">
                        <form class="layui-form layui-form-pane" action="<?php echo url('site'); ?>" lay-filter="form-config">

                            <div class="layui-form-item">
                                <label class="layui-form-label required"><?php echo lang('site name'); ?></label>
                                <div class="layui-input-block">
                                    <input type="text" name="site_name" lay-verify="required" lay-reqtext="<?php echo lang('site name can not empty'); ?>"
                                           placeholder="<?php echo lang('site name'); ?>" value="" class="layui-input">
                                    <!--                                    <tip>填写自己部署网站的名称。</tip>-->
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <label class="layui-form-label required"><?php echo lang('site domain'); ?></label>
                                <div class="layui-input-block">
                                    <input type="text" name="site_domain" lay-verify="url" lay-reqtext="<?php echo lang('site domain can not empty'); ?>"
                                           placeholder="<?php echo lang('site domain'); ?>" value="" class="layui-input">
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label required"><?php echo lang('site email'); ?></label>
                                <div class="layui-input-block">
                                    <input type="text" name="site_email" lay-verify="email" lay-reqtext="<?php echo lang('site email can not empty'); ?>"
                                           placeholder="<?php echo lang('site email'); ?>" value="" class="layui-input">
                                </div>
                            </div>


                            <div class="layui-form-item">
                                <label class="layui-form-label"><?php echo lang('site logo'); ?></label>
                                <input type="hidden" name="site_logo" id="avatar" class="attach">
                                <div class="layui-input-block">
                                    <div class="layui-upload">
                                        <button type="button" class="layui-btn layui-btn-primary" data-path="logo" id="uploads"><i
                                                class="icon icon-upload3"></i><?php echo lang('upload'); ?>
                                            <button type="button" class="layui-btn layui-btn-primary" id="selectAttach" data-href="<?php echo url('sys.attach/select'); ?>?mime=image"><i class="icon icon-upload3"></i><?php echo lang('select attach'); ?></button>

                                        </button>
                                        <div class="layui-upload-list">
                                            <img class="layui-upload-img" id="addPic">
                                            <p id="demoText"></p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="layui-form-item layui-form-text">
                                <label class="layui-form-label required"><?php echo lang('site title'); ?></label>
                                <div class="layui-input-block">
                                    <textarea name="site_seo_title" placeholder="<?php echo lang('site title'); ?>" class="layui-textarea"></textarea>
                                </div>
                            </div>
                            <div class="layui-form-item layui-form-text">
                                <label class="layui-form-label"><?php echo lang('meta keywords'); ?></label>
                                <div class="layui-input-block">
                                    <textarea name="site_seo_keywords" class="layui-textarea"
                                              placeholder="多个关键词用英文状态 , 号分割"></textarea>
                                </div>
                            </div>
                            <div class="layui-form-item layui-form-text">
                                <label class="layui-form-label"><?php echo lang('meta description'); ?></label>
                                <div class="layui-input-block">
                                    <textarea name="site_seo_desc" placeholder="建议200字以内"
                                              class="layui-textarea"></textarea>
                                </div>
                            </div>
                            <div class="layui-form-item layui-form-text">
                                <label class="layui-form-label required"><?php echo lang('all right'); ?></label>
                                <div class="layui-input-block">
                                    <textarea name="site_copyright" class="layui-textarea">© 2019 www.lemocms.com MIT license</textarea>
                                </div>
                            </div>

                            <div class="layui-form-item">

                                <button type="button" class="layui-btn" lay-submit lay-filter="submit"><?php echo lang('submit'); ?></button>
                                <button type="reset" class="layui-btn layui-btn-primary" lay-submit lay-filter="cancel"><?php echo lang('reset'); ?></button>

                            </div>

                        </form>
                    </div>

<!--邮箱设置-->
                    <div class="layui-tab-item">
                        <form class="layui-form layui-form-pane" action="<?php echo url('site'); ?>" lay-filter="form-config">

                            <div class="layui-form-item">
                                <label class="layui-form-label required"><?php echo lang('email server'); ?></label>
                                <div class="layui-input-block">
                                    <input type="text" name="email_host" lay-verify="required" lay-reqtext="<?php echo lang('email server is not empty'); ?>"
                                           placeholder="<?php echo lang('email server'); ?>" value="" class="layui-input">
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <label class="layui-form-label required"><?php echo lang('email port'); ?></label>
                                <div class="layui-input-block">
                                    <input type="text" name="email_port" lay-verify="required" lay-reqtext="<?php echo lang('port can not empty'); ?>"
                                           placeholder="<?php echo lang('email port'); ?>" value="" class="layui-input">
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label required"><?php echo lang('email addr'); ?></label>
                                <div class="layui-input-block">
                                    <input type="text" name="email_addr" lay-verify="required" lay-reqtext="<?php echo lang('email addr can not empty'); ?>"
                                           placeholder="<?php echo lang('email addr'); ?>" value="" class="layui-input">
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label required"><?php echo lang('send email person'); ?></label>
                                <div class="layui-input-block">
                                    <input type="text" name="email_id" placeholder="<?php echo lang('send email person'); ?>" value=""
                                           class="layui-input">
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label required"><?php echo lang('email password'); ?></label>
                                <div class="layui-input-block">
                                    <input type="text" name="email_pass" placeholder="<?php echo lang('email password'); ?>" value=""
                                           class="layui-input">
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <label class="layui-form-label required"><?php echo lang('server mailbox protocol'); ?></label>
                                <div class="layui-input-block">
                                    <input type="text" name="email_secure" placeholder="<?php echo lang('Server mailbox protocol'); ?>" value=""
                                           class="layui-input">
                                </div>
                            </div>

                            <div class="layui-form-item">
                                    <button type="button" class="layui-btn" lay-submit lay-filter="submit"><?php echo lang('submit'); ?></button>
                                    <button type="reset" class="layui-btn layui-btn-primary" lay-submit lay-filter="cancel"><?php echo lang('reset'); ?></button>
                            </div>

                        </form>
                    </div>

<!--                    短信设置-->
                    <div class="layui-tab-item">
                        <form class="layui-form layui-form-pane" action="<?php echo url('site'); ?>" lay-filter="form-config">
                            <div class="layui-form-item">
                                <label class="layui-form-label required"><?php echo lang('sms appid'); ?></label>
                                <div class="layui-input-block">
                                    <input type="text" name="sms_appid" lay-verify="required" placeholder="<?php echo lang('sms appid'); ?>" value=""
                                           class="layui-input">
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label required"><?php echo lang('sms appsecret'); ?></label>
                                <div class="layui-input-block">
                                    <input type="text" name="sms_secret" lay-verify="required" placeholder="<?php echo lang('sms appsecret'); ?>" value=""
                                           class="layui-input">
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label required"><?php echo lang('sms product name'); ?></label>
                                <div class="layui-input-block">
                                    <input type="text" name="sms_product" lay-verify="required" placeholder="<?php echo lang('sms product name'); ?>" value=""
                                           class="layui-input">
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label required"><?php echo lang('sms template id'); ?></label>
                                <div class="layui-input-block">
                                    <input type="text" name="sms_template" lay-verify="required" placeholder="<?php echo lang('sms template id'); ?>" value=""
                                           class="layui-input">
                                </div>
                            </div>


                            <div class="layui-form-item">
                                    <button type="button" class="layui-btn" lay-submit lay-filter="submit"><?php echo lang('submit'); ?></button>
                                    <button type="reset" class="layui-btn layui-btn-primary" lay-submit lay-filter="cancel"><?php echo lang('reset'); ?></button>

                            </div>

                        </form>
                    </div>

<!--上传配置-->
                    <div class="layui-tab-item">
                        <form class="layui-form layui-form-pane" action="<?php echo url('site'); ?>" lay-filter="form-config">

                            <div class="layui-form-item">
                                <label class="layui-form-label"><?php echo lang('file type'); ?></label>
                                <div class="layui-input-block">
                                    <input type="text" name="upload_file_type"
                                           value="bmp|png|gif|jpg|jpeg|zip|rar|txt|ppt|xls|doc|mp3|mp4"
                                           class="layui-input">
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label"><?php echo lang('maxfilesize'); ?></label>
                                <div class="layui-input-inline" style="width: 80px;">
                                    <input type="text" name="upload_file_max" lay-verify="number" value="2048"
                                           class="layui-input">
                                </div>
                                <div class="layui-input-inline layui-input-company"><label class="layui-form-label">M</label></div>
                                <div class="layui-form-mid layui-word-aux"><?php echo lang('tips'); ?>：1 M = 1024 KB</div>
                            </div>

                            <div class="layui-form-item">
                                <div class="layui-input-inline">
                                    <button type="button" class="layui-btn" lay-submit lay-filter="submit"><?php echo lang('submit'); ?></button>
                                    <button type="reset" class="layui-btn layui-btn-primary" lay-submit lay-filter="cancel"><?php echo lang('reset'); ?></button>

                                </div>

                            </div>

                        </form>
                    </div>

                </div>
        </div>

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

<script>
    var tableIn;
    layui.config({
        base: "/static/admin/js/",
        version: true
    }).extend({
        Admin: 'Admin'
    }).use(['element','form', 'layer', 'Admin','table'], function () {
        var form = layui.form,$ = layui.jquery,element = layui.element;
        var config = <?php echo $config; ?>;
        form.val("form-config", config);
        $('#addPic').attr('src',config.site_logo);


    })
</script>

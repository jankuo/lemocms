<?php
// +----------------------------------------------------------------------
// | 应用公共文件
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 
// +----------------------------------------------------------------------


use \think\facade\Db; 

error_reporting(0);

/**
 * @return mixed
 * 获取站点信息
 */
if (!function_exists('site_name')) {

    function site_name()
    {
        return Db::name('config')->where('code', 'site_name')
            ->value('value');
    }
}

if (!function_exists('site_logo')) {

    function site_logo()
    {
        return Db::name('config')->where('code', 'site_logo')
            ->value('value');
    }
}
//获取配置信息
if (!function_exists('getConfigByCode')) {

    function getConfigByCode($code)
    {
        return Db::name('config')->where('code', $code)
            ->value('value');

    }
}
/*
 * 百度编辑器内容 多个编辑器单独引入js，重复会导致出错
 */
if (!function_exists('build_ueditor_js')) {
    function build_ueditor_js($params = array()){

     return $include_js = '<script type="text/javascript" charset="utf-8" src="/static/plugins/ueditor/ueditor.config.js"></script> <script type="text/javascript" charset="utf-8" src="/static/plugins/ueditor/ueditor.all.min.js""> </script><script type="text/javascript" charset="utf-8" src="' . $lang . '"></script>';
    }
}

if (!function_exists('build_ueditor')) {
function build_ueditor($params = array())
{
    $name = isset($params['name']) ? $params['name'] : null;
    $theme = isset($params['theme']) ? $params['theme'] : 'normal';
    $content = isset($params['content']) ? $params['content'] : null;
    //http://fex.baidu.com/ueditor/#start-toolbar
    /* 指定使用哪种主题 */
    $themes = array(
        'normal' => "[   
           'fullscreen', 'source', '|', 'undo', 'redo', '|',
            'bold', 'italic', 'underline', 'fontborder', 'strikethrough', 'superscript', 'subscript', 'removeformat', 'formatmatch', 'autotypeset', 'blockquote', 'pasteplain', '|', 'forecolor', 'backcolor', 'insertorderedlist', 'insertunorderedlist', 'selectall', 'cleardoc', '|',
            'rowspacingtop', 'rowspacingbottom', 'lineheight', '|',
            'customstyle', 'paragraph', 'fontfamily', 'fontsize', '|',
            'directionalityltr', 'directionalityrtl', 'indent', '|',
            'justifyleft', 'justifycenter', 'justifyright', 'justifyjustify', '|', 'touppercase', 'tolowercase', '|',
            'link', 'unlink', 'anchor', '|', 'imagenone', 'imageleft', 'imageright', 'imagecenter', '|',
            'simpleupload', 'insertimage', 'emotion', 'scrawl', 'insertvideo', 'music', 'attachment', 'map', 'gmap', 'insertframe', 'insertcode', 'webapp', 'pagebreak', 'template', 'background', '|',
            'horizontal', 'date', 'time', 'spechars', 'snapscreen', 'wordimage', '|',
            'inserttable', 'deletetable', 'insertparagraphbeforetable', 'insertrow', 'deleterow', 'insertcol', 'deletecol', 'mergecells', 'mergeright', 'mergedown', 'splittocells', 'splittorows', 'splittocols', 'charts', '|',
            'print', 'preview', 'searchreplace', 'drafts', 'help'
       ]", 'simple' => " ['fullscreen', 'source', 'undo', 'redo', 'bold']",
    );
    switch ($theme) {
        case 'simple':
            $theme_config = $themes['simple'];
            break;
        case 'normal':
            $theme_config = $themes['normal'];
            break;
        default:
            $theme_config = $themes['normal'];
            break;
    }
    /* 配置界面语言 */
    switch (config('default_lang')) {
        case 'zh-cn':
            $lang = '/static/plugins/ueditor/lang/zh-cn/zh-cn.js';
            break;
        case 'en-us':
            $lang =  '/static/plugins/ueditor/lang/en/en.js';
            break;
        default:
            $lang = '/static/plugins/ueditor/lang/zh-cn/zh-cn.js';
            break;
    }
    if($params['type']==0 || !isset($params['type']) ){

        $include_js = '<script type="text/javascript" charset="utf-8" src="/static/plugins/ueditor/ueditor.config.js"></script> <script type="text/javascript" charset="utf-8" src="/static/plugins/ueditor/ueditor.all.min.js""> </script><script type="text/javascript" charset="utf-8" src="' . $lang . '"></script>';
    }elseif($params['type']==1 ){
        $include_js = '';
    }

    $content = json_encode($content);
    $str = <<<EOT
$include_js
<script type="text/javascript">
var ue_{$name} = UE.getEditor('{$name}',{
    toolbars:[{$theme_config}],
        });

    if($content){
ue_{$name}.ready(function() {
       this.setContent($content);	
})
   }
      
</script>
EOT;
    return $str;
}
}

if (!function_exists('p')) {
    function p($var, $die = 0) {
        print_r($var);
        $die && die();
    }
}
if (!function_exists('isMobile')) {
    function isMobile()
    {
        if (isset ($_SERVER['HTTP_X_WAP_PROFILE'])) {
            return true;
        }
        if (isset ($_SERVER['HTTP_VIA'])) {
            return stristr($_SERVER['HTTP_VIA'], "wap") ? true : false;
        }
        if (isset ($_SERVER['HTTP_USER_AGENT'])) {
            $clientkeywords = array('nokia',
                'sony',
                'ericsson',
                'mot',
                'samsung',
                'htc',
                'sgh',
                'lg',
                'sharp',
                'sie-',
                'philips',
                'panasonic',
                'alcatel',
                'lenovo',
                'iphone',
                'ipod',
                'blackberry',
                'meizu',
                'android',
                'netfront',
                'symbian',
                'ucweb',
                'windowsce',
                'palm',
                'operamini',
                'operamobi',
                'openwave',
                'nexusone',
                'cldc',
                'midp',
                'wap',
                'mobile'
            );
            if (preg_match("/(" . implode('|', $clientkeywords) . ")/i", strtolower($_SERVER['HTTP_USER_AGENT']))) {
                return true;
            }
        }
        if (isset ($_SERVER['HTTP_ACCEPT'])) {
            if ((strpos($_SERVER['HTTP_ACCEPT'], 'vnd.wap.wml') !== false) && (strpos($_SERVER['HTTP_ACCEPT'], 'text/html') === false || (strpos($_SERVER['HTTP_ACCEPT'], 'vnd.wap.wml') < strpos($_SERVER['HTTP_ACCEPT'], 'text/html')))) {
                return true;
            }
        }
        return false;
    }
}

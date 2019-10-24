<?php
/**
 * lemocms
 * ============================================================================
 * 版权所有 2018-2027 lemocms，并保留所有权利。
 * 网站地址: https://www.lemocms.com
 * ----------------------------------------------------------------------------
 * 采用最新Thinkphp6实现
 * ============================================================================
 * Author: yuege
 * Date: 2019/8/2
 */
namespace app\admin\model;

use lemo\helper\DataHelper;
use think\facade\Request;
use think\facade\Session;
use think\facade\Db;
use think\facade\Route;
use app\admin\model\AuthRule;

class AdminLog extends AdminModel
{

    protected static $log_title = '';
    //自定义日志内容
    protected static $log_content = '';
    protected static $log_url = '';

    /*
     * 管理员日志记录
     */
    public static function record()
    {
        //入库信息
        $admin_id   = Session::get('admin.id',0);
        $username   = Session::get('admin.username','Unknown');
        $url        = Request::url();
        $title      = self::$log_title;
        $ip         = Request::ip();
        $agent      = Request::server('HTTP_USER_AGENT');
        $content    = Request::param();

        if(stripos($url,'?')){
            $url = explode('?',$url)[0];
            $url = strtolower($url);
        }
        if ($content) {
            //去除登录密码
            foreach ($content as $k => $v) {
                if (stripos($k, 'password') !== false) {
                    unset($content[$k]);
                }
            }
            $content = json_encode($content);
        }elseif (!$content && Request::isGet()){
            $content = '点击菜单';
        }elseif (!$content && Request::isPost()){
            $content = '清除缓存|切换语言';
        }
        //登录处理
        if (strpos($url, 'login/index') !== false && Request::isPost()) {
            $title = '[登录成功]';
        }else{
            //权限
            $auth = AuthRule::column('href','href');
            foreach ($auth as $k=>$v){
                $auth[$k] = strtolower((string)url($v));
            }
            $key = array_search($url,$auth);
            if($key){
                $auth = AuthRule::where('href',$key)->find();
                if($auth) $title=$auth->title;
            }

        }
        //插入数据
        if (!empty($title)) {
            self::create([
                'log_title'       => $title ? $title : '',
                'log_content'       => $content,
                'log_url'         => $url,
                'admin_id'    => $admin_id,
                'username'    => $username,
                'log_agent'   => $agent,
                'log_ip'          => $ip,
             ]);
        }


    }

}
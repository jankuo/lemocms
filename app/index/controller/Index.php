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
namespace app\index\controller;


use think\facade\View;

class Index extends \app\BaseController{

    public function index(){
        echo '欢迎访问lemocms,开启您的旅途吧';
//        return View::fetch();
    }

}
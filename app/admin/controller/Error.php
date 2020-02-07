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
namespace app\admin\controller;

use app\BaseController;
use app\common\controller\Base;
use think\facade\View;

class Error extends Base {

    public function __call($method, $args)
    {
        return view('error/error');
    }
}
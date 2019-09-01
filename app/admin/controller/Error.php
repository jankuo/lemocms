<?php
namespace app\admin\controller;

use app\BaseController;
use think\facade\View;

class Error extends BaseController{

    public function __call($method, $args)
    {
        return View::fetch('error/error');
    }
}
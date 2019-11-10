<?php
namespace addons\test\controller\admin;

use app\admin\controller\Base;
use think\facade\View;

class Index extends Base
{
    public function index(){
        echo 1;
    }
    public function link()
    {
        echo 'hello link1';
    }

    public function add(){

        return View::fetch();
    }
}
<?php
namespace addons\test\controller\admin;

use app\common\controller\Backend;
use think\facade\View;

class Index extends Backend
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
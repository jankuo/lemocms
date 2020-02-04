<?php
namespace addons\test\controller;

use app\common\controller\Base;
use think\facade\View;

class Index extends Base
{
    public function index(){
        echo 1;
    }
    public function link()
    {
        echo 'hello link11';

        hook('testhook', ['id'=>1]);


    }

    public function add(){

        return view();
    }
}
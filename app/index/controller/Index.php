<?php
namespace app\index\controller;

class Index extends \app\BaseController{

    public function index(){
        $data = '欢迎使用lemocms';
        return $data;
    }

}
<?php
namespace app\index\controller;

class Index extends \app\BaseController{

    public function index(){

       $this->redirect('http://www.lemocms.com');
    }

}
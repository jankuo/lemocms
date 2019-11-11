<?php


namespace app\common\model;

use app\common\model\Common;
use think\facade\Request;

class GoodsCate extends Common {

    protected $name = 'goods_category';
    public function __construct(array $data = [])
    {
        parent::__construct($data);
    }


    public static  function get_category($pid=0){

        $data = GoodsCate::where('status',1)->where('pid',$pid)->select()->toArray();

        return $data;
    }


}

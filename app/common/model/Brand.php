<?php


namespace app\common\model;

use app\common\model\Common;
use lemo\helper\DataHelper;

class Brand extends Common {

    public function __construct(array $data = [])
    {
        parent::__construct($data);
    }

//    获取所有品牌
    public static  function get_brand_tree(){

        $cate = self::column('cate_id');
        sort($cate);
        $brand = [];
        foreach ($cate as $k=>$v) {
            $cate_name = GoodsCate::find($v)->name;
            $catearr = ['id'=>'','name'=>$cate_name,'cate_id'=>''];
            $brand[$k] = self::where('cate_id',$v)->field('name,id,cate_id')->cache(3600*2)->select()->toArray();
            foreach ($brand[$k] as $kk=>$vv){
                $brand[$k][$kk]['name'] = $cate_name.' |--'. $brand[$k][$kk]['name'];
            }
            $brand[$k] = array_merge([$catearr],$brand[$k]);

        }

        $brand = DataHelper::arrayTone($brand);
        return $brand;
    }


    //获取一个
    public static function get_one($id){
        return self::find($id);
    }

    //添加编辑
    public  static function add($data){
        if($data['id']){

            self::update($data);
        }else{
            self::create($data);
        }

    }

    //删除
    public static function del($id){

        return self::destroy($id);
    }

    //分类；
    public  function cate()
    {
        return $this->hasOne(GoodsCate::class);
    }

}

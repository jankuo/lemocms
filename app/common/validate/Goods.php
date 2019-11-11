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
 * Date: 2019/9/2
 */

namespace app\admin\validate;

use think\Validate;

class Goods extends Validate
{
    protected $rule = [
        'goods_name|商品名' => [
            'require' => 'require',
        ],
        'spu|货号' => [
            'require' => 'require',
            'min'     => '5',
            'max'     => '100',
            'unique'  => 'goods',
        ],
        'cate_id|分类' => [
            'unique'  => 'goods',
        ],
        'price|价格' => [
            'unique'  => 'goods',
        ],
    ];
}
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

class UserLevel extends Validate
{
    protected $rule = [
        'level_name|会员组名称' => [
            'require' => 'require',
            'max'     => '255',
            'unique'  => 'user_level',
        ],

        'description|描述' => [
            'max' => '255',
        ],

    ];
}
<?php


namespace app\admin\validate;

use think\validate;

class Link extends validate
{
    protected $rule = [
        'name|名字' => [
            'require' => 'require',
            'max'     => '255',
        ],
        'url|网站地址' => [
            'require' => 'require',
            'max'     => '255',
        ],
    ];
}
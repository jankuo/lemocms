<?php
namespace app\admin\validate;
use think\Validate;

class Field extends Validate
{
    protected $rule = [
        'moduleid|模型名称' => [
            'require' => 'require',
            'max'     => '3',
        ],
        'type|字段类型' => [
            'require' => 'require',
            'max'     => '20',
        ],
        'field|字段名' => [
            'require' => 'require',
            'max'     => '20',
        ],
        'name|别名' => [
            'require' => 'require',
            'max'     => '50',
        ],
        'minlength|字符长度' => [
            'max' => '10',
        ],
        'maxlength|字符长度' => [
            'min' => '10',
        ],
        'sort|排序' => [
            'require' => 'require',
            'number'  => 'number',
            'max'     => '10',
        ]
    ];
}
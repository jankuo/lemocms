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
 * Date: 2019/8/2
 */

namespace lemo\api\validate;
use think\Validate;
/**
 * 生成token参数验证器
 */
class Token extends Validate
{

    protected $rule = [
        'appid'       =>  'require',
        'mobile'      =>    'require',
        'nonce'       =>  'require',
        'timestamp'   =>  'number|require',
        'sign'        =>  'require'
    ];
    protected $message  =   [
        'appid.require'    => 'appid不能为空',
        'mobile.require'   =>'mobile不能为空',
        'nonce.require'    => '随机数不能为空',
        'timestamp.number' => '时间戳格式错误',
        'sign.require'     => '签名不能为空',
    ];
}
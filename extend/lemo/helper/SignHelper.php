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
 * Date: 2019/9/26
 */
namespace lemo\helper;
class SignHelper{
    /**
     * 数据后台签名加密认证
     * @param  array  $data 被认证的数据
     * @return string       签名
     */
    public static function authSign($data) {
        //数据类型检测
        if(!is_array($data)){
            $data = (array)$data;
        }
        ksort($data); //排序
        $code = http_build_query($data); //url编码并生成query字符串
        $sign = sha1($code); //生成签名
        return $sign;
    }

    public static function passwordSalt($cost=12){

        return ['cost'=>$cost];
    }
    /**
     * rc4加解密
     */
    public static function rc4_code($pwd, $data) {
        $key[] ="";
        $box[] ="";

        $pwd_length = strlen($pwd);
        $data_length = strlen($data);

        for ($i = 0; $i < 256; $i++)
        {
            $key[$i] = ord($pwd[$i % $pwd_length]);
            $box[$i] = $i;
        }

        for ($j = $i = 0; $i < 256; $i++)
        {
            $j = ($j + $box[$i] + $key[$i]) % 256;
            $tmp = $box[$i];
            $box[$i] = $box[$j];
            $box[$j] = $tmp;
        }
        $cipher='';
        for ($a = $j = $i = 0; $i < $data_length; $i++)
        {
            $a = ($a + 1) % 256;
            $j = ($j + $box[$a]) % 256;

            $tmp = $box[$a];
            $box[$a] = $box[$j];
            $box[$j] = $tmp;

            $k = $box[(($box[$a] + $box[$j]) % 256)];
            $cipher .= chr(ord($data[$i]) ^ $k);
        }

        return $cipher;
    }


    /**
     * 安全URL编码
     * @param $data
     * @return mixed
     *
     */
    public static function base64_encode_new($data) {
        return str_replace(array('+', '/', '='), array('-', '_', ''), base64_encode(serialize($data)));
    }

    /**
     * 安全URL解码
     * @param $data
     * @return mixed

     */
    public static function base64_decode_new($string) {
        $data = str_replace(array('-', '_'), array('+', '/'), $string);
        $mod4 = strlen($data) % 4;
        ($mod4) && $data .= substr('====', $mod4);
        return unserialize(base64_decode($data));
    }

    /**
     * @param $str
     * @return mixed
     * rc4对称加密&base64编码
     */
    public static function rc4_base64_encode($str) {
        return self::base64_encode_new(self::rc4_code(C('CODE_KEY'), $str));
    }

    /**
     * rc4对称解密&base64解码
     * @param $str
     * @return mixed
     */
    public static function rc4_base64_decode($str) {
        return self::rc4_code(C('CODE_KEY'), self::base64_decode_new($str));
    }

}
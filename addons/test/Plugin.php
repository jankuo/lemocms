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
 * Date: 2019/11/7
 */

namespace addons\test;
// 注意命名空间规范
use think\Addons;

/**
 * 插件测试
 *
 */
class Plugin extends Addons    // 需继承think\Addons类
{
    // 该插件的基础信息
    public $info = [
        'name' => 'test',    // 插件标识唯一
        'title' => '插件测试',    // 插件名称
        'description' => 'thinkph6插件测试',    // 插件简介
        'status' => 1,    // 状态
        'author' => 'yuege',
        'require' => '0.1',
        'version' => '0.1',
        'website' => 'https://www.lemocms.com'

    ];
    public $menu = [
        [
            'href' => 'test',
            'title' => '测试',
            'status' => 1,
            'auth_open' => 1,
            'menu_status' => 1,
            'icon' => 'fa fa-wechat',
            'menulist' => [
                [
                    'href' => 'test/index/index',
                    'title' => '测试1',
                    'status' => 1,
                    'menu_status' => 1,
                    'icon' => 'fa fa-reply-all',
                    'menulist' => [
                        ['href' => 'test/index/link', 'title' => '查看', 'status' => 1,
                            'menu_status' => 0,],
                        ['href' => 'test/index/add', 'title' => '添加', 'status' => 1,
                            'menu_status' => 0,],

                    ]
                ],


            ]
        ]
    ];

    /**
     * 插件安装方法
     * @return bool
     */
    public function install()
    {

        return true;
    }

    /**
     * 插件卸载方法
     * @return bool
     */
    public function uninstall()
    {
        return true;
    }

    /**
     * 实现的testhook钩子方法
     * @return mixed
     */
    public function testhook($param)
    {
        // 调用钩子时候的参数信息
        dump($param);
        // 当前插件的配置信息，配置信息存在当前目录的config.php文件中，见下方
        dump($this->getInfo());
        dump($this->getConfig(true));
        // 可以返回模板，模板文件默认读取的为插件目录中的文件。模板名不能为空！
        return $this->fetch('info');
    }

}
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
use think\App;
use think\facade\View;
use think\facade\Config;
class AddonHelper{
    /**
     * 获得插件列表
     * @return array
     */
    public static function getAddonList()
    {
        $results = scandir(ADDONS_PATH);

        $list = [];
        foreach ($results as $name) {
            if ($name === '.' or $name === '..')
                continue;
            if (is_file(ADDONS_PATH . $name))
                continue;
            $addonsDir = ADDONS_PATH . $name . DS;
            if (!is_dir($addonsDir))
                continue;

            if (!is_file($addonsDir . ucfirst($name) . '.php'))
                continue;

            $info_file = $addonsDir . 'info.ini';
            if (!is_file($info_file))
                continue;
            $info = Config::load($info_file,  "addon-info-{$name}");
            var_dump($list);die;
            $info['url'] = self::getAddonUrl($name);
            $list[$name] = $info;
        }

        return $list;
    }


    /**
     * 获取插件类的类名
     * @param $name 插件名
     * @param string $type 返回命名空间类型
     * @param string $class 当前类名
     * @return string
     */
    public static function getAddonClass($name, $type = 'Event', $class = null)
    {
        $name = App::getNamespace($name);
        // 处理多级控制器情况
        if (!is_null($class) && strpos($class, '.')) {
            $class = explode('.', $class);

            $class[count($class) - 1] = App::getNamespace(end($class), 1);
            $class = implode('\\', $class);
        } else {
            $class = App::getNamespace(is_null($class) ? $name : $class, 1);
        }
        switch ($type) {
            case 'controller':
                $namespace = "\\addons\\" . $name . "\\controller\\" . $class;
                break;
            default:
                $namespace = "\\addons\\" . $name . "\\" . $class;
        }
        return class_exists($namespace) ? $namespace : '';
    }

    /**
     * 读取插件的基础信息
     * @param string $name 插件名
     * @return array
     */
    public static function getAddonInfo($name)
    {
        $addons = self::getAddonInstance($name);
        if (!$addons) {
            return [];
        }
        return $addons->getInfo($name);
    }

    /**
     * 获取插件类的配置数组
     * @param string $name 插件名
     * @return array
     */
    public static function getAddonFullconfig($name)
    {
        $addons = getAddonsInstance($name);
        if (!$addons) {
            return [];
        }
        return $addons->getFullConfig($name);
    }

    /**
     * 获取插件类的配置值值
     * @param string $name 插件名
     * @return array
     */
    public static function getAddonConfig($name)
    {
        $addons = self::getAddonInstance($name);
        if (!$addons) {
            return [];
        }
        return $addons->getConfig($name);
    }

    /**
     * 获取插件的单例
     * @param $name
     * @return mixed|null
     */
    public static function getAddonInstance($name)
    {
        static $_addons = [];
        if (isset($_addons[$name])) {
            return $_addons[$name];
        }
        $class = self::getAddonClass($name);
        if (class_exists($class)) {
            $_addons[$name] = new $class();
            return $_addons[$name];
        } else {
            return null;
        }
    }

    /**
     * 插件显示内容里生成访问插件的url
     * @param $url 地址 格式：插件名/控制器/方法
     * @param array $vars 变量参数
     * @param bool|string $suffix 生成的URL后缀
     * @param bool|string $domain 域名
     * @return bool|string
     */
    public static function getAddonUrl($url, $vars = [], $suffix = true, $domain = false)
    {
        $url = ltrim($url, '/');
        $addons = substr($url, 0, stripos($url, '/'));
        if (!is_array($vars)) {
            parse_str($vars, $params);
            $vars = $params;
        }
        $params = [];
        foreach ($vars as $k => $v) {
            if (substr($k, 0, 1) === ':') {
                $params[$k] = $v;
                unset($vars[$k]);
            }
        }
        $val = "@addons/{$url}";
        $config = self::getAddonConfig($addons);
        var_dump($config);
        $dispatch = (array)\think\facade\Request::instance()->dispatch();
        $indomain = isset($dispatch['var']['indomain']) && $dispatch['var']['indomain'] ? true : false;
        $domainprefix = $config && isset($config['domain']) && $config['domain'] ? $config['domain'] : '';
        $rewrite = $config && isset($config['rewrite']) && $config['rewrite'] ? $config['rewrite'] : [];
        if ($rewrite) {
            $path = substr($url, stripos($url, '/') + 1);
            if (isset($rewrite[$path]) && $rewrite[$path]) {
                $val = $rewrite[$path];
                array_walk($params, function ($value, $key) use (&$val)
                {
                    $val = str_replace("[{$key}]", $value, $val);
                });
                $val = str_replace(['^', '$'], '', $val);
                if (substr($val, -1) === '/') {
                    $suffix = false;
                }
            } else {
                // 如果采用了域名部署,则需要去掉前两段
                if ($indomain && $domainprefix) {
                    $arr = explode("/", $val);
                    $val = implode("/", array_slice($arr, 2));
                }
            }
        } else {
            // 如果采用了域名部署,则需要去掉前两段
            if ($indomain && $domainprefix) {
                $arr = explode("/", $val);
                $val = implode("/", array_slice($arr, 2));
            }
            foreach ($params as $k => $v) {
                $vars[substr($k, 1)] = $v;
            }
        }
        return url($val, [], $suffix, $domain) . ($vars ? '?' . http_build_query($vars) : '');
    }

    /**
     * 设置基础配置信息
     * @param string $name 插件名
     * @param array $array
     * @return boolean
     * @throws Exception
     */
    public static function setAddonInfo($name, $array)
    {
        $file = ADDONS_PATH . $name . DS . 'info.ini';

        $addons = self::getAddonInstance($name);

        $array = $addons->setInfo($name, $array);

        $res = array();
        foreach ($array as $key => $val) {
            if (is_array($val)) {
                if (count($val) < 1) continue;
                $res[] = "[$key]";
                foreach ($val as $skey => $sval)
                    $res[] = "$skey = " . (is_numeric($sval) ? $sval : $sval);
            } else
                $res[] = "$key = " . (is_numeric($val) ? $val : $val);
        }

        if ($handle = fopen($file, 'w')) {
            fwrite($handle, implode("\n", $res) . "\n");
            fclose($handle);
            //清空当前配置缓存
            Config::set($name, NULL);
        } else {
            throw new Exception("文件没有写入权限");
        }
        return true;
    }

    /**
     * 写入配置文件
     * @param string $name 插件名
     * @param array $config 配置数据
     * @param boolean $writefile 是否写入配置文件
     */
    public static function setAddonConfig($name, $config, $writefile = true)
    {
        $addons = self::getAddonsInstance($name);
        $addons->setConfig($name, $config);
        $fullconfig = self::get_addons_fullconfig($name);
        foreach ($fullconfig as $k => &$v) {
            if (isset($config[$v['name']])) {
                $value = $v['type'] !== 'array' && is_array($config[$v['name']]) ? implode(',', $config[$v['name']]) : $config[$v['name']];
                $v['value'] = $value;
            }
        }
        if ($writefile) {
            // 写入配置文件
            self::setAddonsFullconfig($name, $fullconfig);
        }
        return true;
    }

    /**
     * 写入配置文件
     *
     * @param string $name 插件名
     * @param array $array
     * @return boolean
     * @throws Exception
     */
    public static function setAddonFullconfig($name, $array)
    {
        $file = ADDONS_PATH . $name . DIRECTORY_SEPARATOR . 'config.php';
        if (!FileHelper::isWritable($file)) {
            throw new Exception("文件没有写入权限");
        }
        if ($handle = fopen($file, 'w')) {
            fwrite($handle, "<?php\n\n" . "return " . var_export($array, TRUE) . ";\n");
            fclose($handle);
        } else {
            throw new Exception("文件没有写入权限");
        }
        return true;
    }


}
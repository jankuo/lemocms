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

namespace app\admin\controller\sys;

use app\admin\model\AuthRule;
use app\common\controller\Backend;
use lemo\helper\FileHelper;
use think\addons\Service;
use think\db\exception\PDOException;
use think\Exception;
use think\facade\Db;
use think\facade\Request;
use think\facade\View;
use app\common\model\Addon as AddonModel;

/**
 * 插件控制器
 */
class Addon extends Backend
{
    public function initialize()
    {
        parent::initialize(); // TODO: Change the autogenerated stub
    }


    /**
     * 插件列表
     */
    public function index()
    {

        if (Request::isPost()) {
            $list = get_addons_list();
            $addons = AddonModel::order('id desc')->column('*', 'name');
            foreach ($list as $key => $value) {
                //是否已经安装过
                if (!isset($addons[$key])) {
                    $class = get_addons_instance($key);
                    $addons[$key] = $class->getInfo();
                    $config = $class->getConfig(true);
                    $addons[$key]['config'] = $config;
                    if ($addons[$key]) {
                        $addons[$key]['install'] = 0;
                        $addons[$key]['status'] = 0;
                    }
                } else {

                    $addons[$key]['install'] = 1;
                    $addons[$key]['config'] = unserialize($addons[$key]['config']);

                }
            }
            return $result = ['code' => 0, 'msg' => lang('get info success'), 'data' => $addons, 'count' => count($addons)];
        }
        return view();
    }

    /**
     * 执行插件安装
     */
    /**
     * 安装
     */
    public function install()
    {
        $name = $this->request->post("name");
//        插件名是否为空
        if (!$name) {
            $this->error(lang('Parameter %s can not be empty', ['name']));
        }
        //插件名是否符合规范
        if (!preg_match("/^[a-zA-Z0-9]+$/", $name)) {
            $this->error(lang('Addon name incorrect'));
        }
        //检查插件是否安装
        if ($this->isInstall($name)) {

            $this->error(lang('addons %s is already installed', ['name']));
        }
        $class = get_addons_instance($name);
        if (empty($class)) {
            $this->error(lang('addons %s is not ready', ['name']));
        }
        //安装插件
        $install = $class->install();
        // 安装菜单
        $menu_config=$this->get_menu_config($class);
        if(isset($menu_config['is_nav']) && $menu_config['is_nav']==1){
            $pid = 0;
        }else{
            $pid = $this->addAddonManager()->id;
        }
        $menu[] = $menu_config['menu'];
        $this->addAddonMenu($menu,$pid);
        //添加数据库
        $info = get_addons_info($name);
        $info['status'] = 1;
        $info['config'] =  serialize($class->getConfig(true));
        $res = AddonModel::create($info);
        if (!$res) {
            $this->error(lang('addon install fail'));
        }
        importsql($name);//导入数据库
        $sourceAssetsDir = Service::getSourceAssetsDir($name);
        $destAssetsDir = Service::getDestAssetsDir($name);
        if (is_dir($sourceAssetsDir)) {
            FileHelper::copyDir($sourceAssetsDir, $destAssetsDir);
        }
        //复制文件到目录
        if(Service::getCheckDirs()){
            foreach (Service::getCheckDirs() as $k => $dir) {
                $sourcedir = Service::getAddonsNamePath($name). $dir;
                if (is_dir($sourcedir)) {
                    FileHelper::copyDir($sourcedir, app()->getRootPath() . $dir);
                }
            }
        }

        try {
            Service::updateAddonsInfo($name,1);
            Service::updateAdddonsConfig();

        }catch (\Exception $e){
            $this->error($e->getMessage());
        }
        $this->success(lang('Install success'));


    }

    /**
     * 卸载
     */
    public function uninstall()
    {
        $name = $this->request->post("name");
        if (!$name) {
            $this->error(lang('Parameter Addon name can not be empty'));
        }
//        插件名匹配
        if (!preg_match("/^[a-zA-Z0-9]+$/", $name)) {
            $this->error(lang('Addon name is not correct'));
        }

        //获取插件信息
        $info = AddonModel::where('name', $name)->find();
        if (empty($info)) {
            $this->error(lang('addon is not exist'));
        }
        if (!$info->delete()) {
            $this->error(lang('addon uninstall fail'));
        }
        //卸载插件
        $class = get_addons_instance($name);
        $uninstall = $class->uninstall();
        //删除菜单
        $menu_config=$this->get_menu_config($class);
        $menu[] = $menu_config['menu'];
        $this->delAddonMenu($menu);
        //卸载sql;
        uninstallsql($name);
        // 移除插件基础资源目录
        $destAssetsDir = Service::getDestAssetsDir($name);
        if (is_dir($destAssetsDir)) {
            FileHelper::delDir($destAssetsDir);
        }
        //删除文件
        $list = Service::getGlobalAddonsFiles($name);
        foreach ($list as $k => $v) {
            @unlink(app()->getRootPath() . $v);
        }
        Service::updateAddonsInfo($name,0);

        try {
            Service::updateAdddonsConfig();

        }catch (\Exception $e){
            $this->error($e->getMessage());
        }

        $this->success(lang('Uninstall successful'));
    }

    /**
     * 禁用启用
     */
    public function state()
    {
        $id = $this->request->post("id");
        $name = $this->request->post("name");

        if (!$id) {
            $this->error(lang('Parameter %s can not be empty', ['id']));
        }
        if (!preg_match("/^[a-zA-Z0-9]+$/", $name)) {
            $this->error(lang('Addon name is not correct'));
        }
        $info = AddonModel::find($id);
        $info->status = $info->status == 1 ? 0 : 1;
        if ($info->save()) {
            $this->success(lang('edit success'));
        } else {

            $this->error(lang(lang('edit fail')));
        }

    }

    /**
     * 插件配置
     */
    public function config()
    {
        if (Request::isPost()) {
            $params = $this->request->post('config/a',[],'trim');
            $name   =  $this->request->get("name");
            $info = AddonModel::find(input('id'));
            if ($params) {
                $class = get_addons_instance($name);
                $config = $class->getConfig(true);
                foreach ($config as $k => &$v) {
                    if (isset($params[$k])) {
                        if ($v['type'] == 'array') {
                            $arr = [];
                            $params[$k] = is_array($params[$k]) ? $params[$k] :serialize($params[$k]);
                            foreach ($params[$k] as $kk=>$vv){
                                $arr[$vv['key']] =  $vv['value'];
                            }
                            $params[$k] = $arr;
                            $value = $params[$k];
                            $v['content'] = $value;
                        } else {
                            $value = is_array($params[$k]) ? serialize($params[$k]) : $params[$k];
                        }
                        $v['value'] = $value;
                    }
                }
                $params = serialize($params);
                if($info->save(['config'=>$params])){
                    Service::updateAdddonsConfig();
                    $this->success(lang('edit success'));
                }else{
                    $this->error(lang('edit fail'));
                }
            }
            $this->error(lang('Parameter can not be empty'));
        }

        $name = $this->request->get("name");
        $id = $this->request->get("id");
        if (!$name) {
            $this->error(lang('Parameter addon name can not be empty'));
        }
        if (!preg_match("/^[a-zA-Z0-9]+$/", $name)) {
            $this->error(lang('addon name is not correct'));
        }

        $info = AddonModel::find($id);
        if (!$info) {
            $this->error(lang('addon config is not found'));
        }

        $info->config = get_addons_instance($name)->getConfig(true);
//        //模板引擎初始化
//        View::engine('Think')->config([
//            'view_path' => 'view' .DIRECTORY_SEPARATOR.'admin'. DIRECTORY_SEPARATOR
//        ]);
        View::assign("info", $info);
        $configFile = app()->getRootPath() . 'addons' . DIRECTORY_SEPARATOR . $name . DIRECTORY_SEPARATOR . 'config.html';
        $viewFile = is_file($configFile) ? $configFile : '';
        return view($viewFile);
    }

    //  是否安装
    public function isInstall($name)
    {
        if (empty($name)) {
            return false;
        }
        $addons = AddonModel::where('name', $name)->find();
        return $addons;
    }



    //获取菜单配置
    protected function get_menu_config($class){
        $menu = $class->menu;
        return $menu;
    }
    //添加菜单
    protected function addAddonMenu($menu,$pid = 0){

        foreach ($menu as $k=>$v){
            $hasChild = isset($v['menulist']) && $v['menulist'] ? true : false;
            try {
               $v['pid'] = $pid ;
                if(strpos(trim($v['href'],'/'),'admin/')===false){
                    $v['href'] = 'admin/'.trim($v['href'],'/');
                }
                if(AuthRule::where('href',$v['href'])->find()){
                    continue;
                }


                $menu = AuthRule::create($v);
                if ($hasChild) {
                    $this->addAddonMenu($v['menulist'], $menu->id);
                }
            } catch (PDOException $e) {
                throw new Exception($e->getMessage());
            }
        }

    }
    //循环删除菜单
    protected function delAddonMenu($menu){
        foreach ($menu as $k=>$v){
            $hasChild = isset($v['menulist']) && $v['menulist'] ? true : false;
            try {
                if(strpos(trim($v['href'],'/'),'admin/')===false){
                    $v['href'] = 'admin/'.trim($v['href'],'/');
                }
                $menu_rule = AuthRule::where('href',$v['href'])->find();
                if($menu_rule){
                    $menu_rule->delete();
                    if ($hasChild) {
                        $this->delAddonMenu($v['menulist']);
                    }
                }
                //删除主菜单；
                $manager = AuthRule::where('href','admin/Addon/manager')->find();
                if($manager){
                    $manager_child =  AuthRule::where('pid',$manager->id)->find();
                    if(!$manager_child){
                        $manager->delete();
                    }

                }
            } catch (PDOException $e) {
                throw new Exception($e->getMessage());
            }
        }


    }
    //添加管理菜单
    protected function addAddonManager(){
        $addon_auth =  AuthRule::where('href','admin/addon')->cache(3600)->find();
        $data = array(
            "title" => '插件管理',
            'href'=>'admin/Addon/manager',
            'menu_status'=>1,

            //状态，1是显示，0是不显示
            "status" => 1,

            "icon" =>'fa fa-circle-o',
            //父ID
            "pid" => $addon_auth->id,
            //排序
            "sort" => 50,
        );
        $manager = AuthRule::where('href','admin/Addon/manager')->find();
        if(!$manager){
            $manager = AuthRule::create($data);
        }elseif($manager and $manager->menu_status==0){
            $manager->menu_status=1;
            $manager->status=1;
            $manager->save();
        }
        return $manager;

    }


}

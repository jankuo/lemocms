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
 * Date: 2019/10/12
 */
namespace app\admin\controller;

use app\common\controller\Backend;
use lemo\helper\TreeHelper;
use think\facade\Config;
use think\facade\Db;
use think\facade\Request;
use think\facade\View;
use app\common\model\Column as CModel;

class Column extends Backend
{

    public function initialize()
    {
        parent::initialize();
        //取得当前内容模型模板存放目录
        $this->filepath = app()->getRootPath().'view/'."cms" . DIRECTORY_SEPARATOR;
        //取得栏目频道模板列表
        $this->_column = str_replace($this->filepath . DIRECTORY_SEPARATOR, '', glob($this->filepath . DIRECTORY_SEPARATOR . 'column*'));
        //取得栏目列表模板列表
        $this->_list = str_replace($this->filepath . DIRECTORY_SEPARATOR, '', glob($this->filepath . DIRECTORY_SEPARATOR . 'list*'));
        //取得内容页模板列表
        $this->_show = str_replace($this->filepath . DIRECTORY_SEPARATOR, '', glob($this->filepath . DIRECTORY_SEPARATOR . 'show*'));

    }
    /*-----------------------栏目管理----------------------*/
    // 栏目列表
    public function index()
    {
        if(Request::isPost()){
            $keys = Request::post('keys','','trim');
            $page = Request::post('page') ? Request::post('page') : 1;
            $list = Db::name('column')
                ->where('title','like','%'.$keys.'%')
                ->order('id desc,sort desc')
                ->paginate(['list_rows' => $this->pageSize, 'page' => $page])
                ->toArray();
            foreach($list['data'] as $k=>$v){
                $list['data'][$k]['lay_is_open']=true;
            }
            return $result = ['code'=>0,'msg'=>lang('get info success'),'data'=>$list['data'],'count'=>$list['total']];
        }
        CModel::fixColumn();
        return View::fetch();

    }

    // 添加栏目
    public function add()
    {
        if (Request::isPost()) {
            $data = Request::post();
            $moduleid = Request::post('moduleid');
            $module = \app\common\model\Module::find($moduleid);
            $moduleid = Request::post('moduleid');
            $module = \app\common\model\Module::find($moduleid);
            if($module){
                $data['module'] = $module->name;
            }else{
                $this->error('模型不存在');
            }

            //添加
            $result = CModel::create($data);
            CModel::fixinfo();

            if ($result) {
                $this->success(lang('add success'), url('index'));
            } else {
                $this->error(lang('add fail'));
            }
        } else {
            $info = '';
            $colGroup = CModel::select();
            $colGroup = TreeHelper::cateTree($colGroup);
            $moduleGroup = \app\common\model\Module::select()->toArray();
            $view = [
                'info' => $info,
                'colGroup' => $colGroup,
                'moduleGroup' => $moduleGroup,
                'title' => '添加',
                '_column'=>$this->_column,
                '_list'=>$this->_list,
                '_show'=>$this->_show,
            ];
            View::assign($view);
            return View::fetch();
        }
    }

    /**
     * 栏目修改
     */
    public function edit()
    {
        if (Request::isPost()) {
            $data = Request::post();
            $moduleid = Request::post('moduleid');
            $module = \app\common\model\Module::find($moduleid);
            if($module){
                $data['module'] = $module->name;
            }else{
               $this->error(lang('module is not exist'));
            }
            if(CModel::update($data)){
                CModel::fixColumn();
                $this->success(lang('edit success'), url('index'));
            }else{
                $this->error(lang('edit fail'));
            }

        }
        $id = Request::param('id');
        if ($id) {
            $colGroup = CModel::select();
            $colGroup = TreeHelper::cateTree($colGroup);
            $moduleGroup = \app\common\model\Module::select()->toArray();
            $info = CModel::find($id);
            $view = [
                'info' => $info,
                'colGroup' => $colGroup,
                'moduleGroup' => $moduleGroup,
                'title' => '编辑',
                '_column'=>$this->_column,
                '_list'=>$this->_list,
                '_show'=>$this->_show,
            ];
            View::assign($view);
            return View::fetch('add');
        }

    }


    // 栏目删除
    public function delete()
    {
        $id = Request::post('id');
        CModel::destroy($id);
        CModel::fixColumn();
        $this->success(lang('delete success'));

    }


    // 栏目状态修改
    public function state()
    {
        if (Request::isPost()) {
            $id = Request::post('id');
            if (empty($id)) {
                $this->error('id' . lang('not exist'));
            }
            $info = CModel::find($id);
            $status = $info->status == 1 ? 0 : 1;
            $info->status = $status;
            $info->save();
            $this->success(lang('edit success'));
        }
    }
    // 刷新缓存
    public function flashCache(){

        CModel::flashCache();
        $this->success(lang('清理成功'));
    }

}
<?php
/**
 * +----------------------------------------------------------------------
 * | 模型管理控制器
 * +----------------------------------------------------------------------
 *                      .::::.
 *                    .::::::::.            | AUTHOR: siyu
 *                    :::::::::::           | EMAIL: 407593529@qq.com
 *                 ..:::::::::::'           | QQ: 407593529
 *             '::::::::::::'               | WECHAT: zhaoyingjie4125
 *                .::::::::::               | DATETIME: 2019/03/27
 *           '::::::::::::::..
 *                ..::::::::::::.
 *              ``::::::::::::::::
 *               ::::``:::::::::'        .:::.
 *              ::::'   ':::::'       .::::::::.
 *            .::::'      ::::     .:::::::'::::.
 *           .:::'       :::::  .:::::::::' ':::::.
 *          .::'        :::::.:::::::::'      ':::::.
 *         .::'         ::::::::::::::'         ``::::.
 *     ...:::           ::::::::::::'              ``::.
 *   ```` ':.          ':::::::::'                  ::::..
 *                      '.:::::'                    ':'````..
 * +----------------------------------------------------------------------
 */
namespace app\admin\controller;

use app\common\model\Module as M;
use app\common\model\Field;
use app\common\model\FieldType;
use lemo\helper\DataHelper;
use think\facade\Config;
use think\facade\Db;
use think\facade\Request;
use think\facade\View;

class Module extends Base
{
    public $prefix = '';
    public function initialize()
    {
        parent::initialize();
        $this->prefix = Config::get('database.connections.mysql.prefix');
        //取得当前内容模型模板存放目录
        $this->filepath = app()->getRootPath().'view/'."cms" . DIRECTORY_SEPARATOR;
        //取得栏目频道模板列表
        $this->_column = str_replace($this->filepath . DIRECTORY_SEPARATOR, '', glob($this->filepath . DIRECTORY_SEPARATOR . 'column*'));
        //取得栏目列表模板列表
        $this->_list = str_replace($this->filepath . DIRECTORY_SEPARATOR, '', glob($this->filepath . DIRECTORY_SEPARATOR . 'list*'));
        //取得内容页模板列表
        $this->_show = str_replace($this->filepath . DIRECTORY_SEPARATOR, '', glob($this->filepath . DIRECTORY_SEPARATOR . 'show*'));

    }

    // 模型列表
    public function index(){
        //全局查询条件
        if(Request::isPost()){

            $keys = Request::post('keys', '', 'trim');
            $page = Request::post('page') ? Request::post('page') : 1;
            $list = M::where('name|title', 'like', '%' . $keys . '%')
                ->paginate(['list_rows' => $this->pageSize, 'page' => $page])
                ->toArray();
            return $result = ['code' => 0, 'msg' => lang('get info success'), 'data' => $list['data'], 'count' => $list['total']];

        }
        return View::fetch();
    }

    // 模型状态
    public function state(){
        if (Request::isPost()) {
            $id = Request::param('id');
            $status = M::where('id='.$id)
                ->value('status');
            $status = $status == 1 ? 0 : 1;
            if (M::where('id',$id)->update(['status'=>$status]) !== false) {
                $this->success(lang('edit success'));
            }else{
                $this->error(lang('edit fail'));
            }
        }
    }

    // 模型删除
    public function delete(){
        if (Request::isPost()) {
            $id = Request::param('id');
            $info = M::find($id);
            $tables = $this->prefix.$info->name;
            $res = M::destroy($id);
            if($res){
                Db::execute("DROP TABLE IF EXISTS `".$tables."`");
                Field::where('moduleid',$info->id)->delete();
                $this->success(lang('delete success'));
            }else{
                $this->error(lang('delete fail'));
            }
        }
    }


    // 模型添加
    public function add()
    {
        if (Request::isPost()) {
            //获取数据库所有表名
            $tables = Db::getConnection()->getTables();
            $tablename = $this->prefix . Request::param('name');
            if (in_array($tablename, $tables)) {
                $this->error(lang('table is already exist'));
            }
            $data = Request::except(['emptytable']);
            try {
                $this->validate($data, 'Module');
            } catch (\Exception $e) {
                $this->error($e->getMessage());
            }
            $data['template'] = serialize($data['template']);
            $module = M::create($data);

            $moduleid = $module->id;
            if (empty($moduleid)) {
                $this->error('添加模型失败！');
            }
            $emptytable = Request::post('emptytable');
            \app\common\model\Module::addTable($tablename,$this->prefix,$moduleid,$emptytable);

            $this->success(lang('add success'), url('index'));
        }
        $view =[
            'title'=>lang('add'),
            'info' => null,
            '_column'=>$this->_column,
            '_list'=>$this->_list,
            '_show'=>$this->_show,
            ''
        ];

        View::assign($view);
        return View::fetch();
    }


    // 模型修改
    public function edit(){
        if (Request::isPost()) {
            $data = Request::post();
            $result = $this->validate($data, 'Module');
            if (true !== $result) {
                // 验证失败 输出错误信息
                $this->error($result);
            } else {
                if (M::update($data) !== false) {
                    $this->success('修改成功!', url('index'));
                } else {
                    $this->error('修改失败！');
                }
            }
        }

        $id     = Request::param('id');
        $info   = M::find($id);
        $view = [
            'title'=>lang('edit'),
            'info' => $info,
            '_column'=>$this->_column,
            '_list'=>$this->_list,
            '_show'=>$this->_show,
        ];
        View::assign($view);
        return View::fetch('add');
    }



    /****************************模型字段管理******************************/

    /*
     * 字段列表
     */
    public function field(){

        if(Request::isPost()){
            //不可控字段
//            $sysfield = array('column_id','title','thumb','keywords','hits','description','status','create_time','update_time','url','template');
            $sysfield = array('column_id','title','keywords','hits','description','status','create_time','update_time','template');
            $list = Field::where("moduleid",'=',Request::param('id'))
                ->order('sort asc,id asc')
                ->select()->toArray();
            foreach ($list as $k=>$v){
                if(in_array($v['field'],$sysfield)){
                    $list[$k]['del']=0;
                }else{
                    $list[$k]['del']=1;
                }
            }
            return $result = ['code' => 0, 'msg' => lang('get info success'), 'data' => $list, 'count' => count($list)];
        }
        $view = [
            'moduleid' => Request::param('id')
        ];
        View::assign($view);
        return View::fetch();
    }


    // 添加字段
    public function fieldAdd(){
        if (Request::isPost()) {
            //增加字段
            $data = Request::param();
            try{
                $result = $this->validate($data, 'Field');

            }catch (\Exception $e){
                $this->error($e->getMessage());

            }
            try {
                $res = Field::addField($data);
            } catch (\Exception $e) {
                $this->error($e->getMessage());
            }
            $this->success(lang('add success'));

        }

        $view = [
            'moduleid'  => Request::param('moduleid'),
            'info'      => null,
            'title'=>lang('add'),
            'fieldType'=>FieldType::select(),
        ];
        View::assign($view);
        return View::fetch('field_add');
    }



    // 编辑字段
    public function fieldEdit(){
        if (Request::isPost()) {
            //增加字段
            $data = Request::param();
            try{
                $result = $this->validate($data, 'Field');

            }catch (\Exception $e){
                $this->error($e->getMessage());

            }
            try {
                $res = Field::editField($data);
            } catch (\Exception $e) {
                $this->error($e->getMessage());
            }
            $this->success(lang('add success'));

        }

        $id = Request::param('id');
        $fieldInfo = Field::where('id','=',$id)
            ->find();

        $view = [
            'moduleid'  => $fieldInfo['moduleid'],
            'fieldType'=>FieldType::select(),
            'info'      => $fieldInfo,
            'title'=>lang('edit'),
        ];
        View::assign($view);
        return View::fetch('field_add');
    }

    // 删除字段
    public function fieldDel() {
        $id = Request::param('id');
        $f  = Db::name('field')->find($id);
        //删除字段表中的记录
        Field::destroy($id);
        $moduleid = $f['moduleid'];
        $field    = $f['field'];
        $name   = M::where('id','=',$moduleid)->value('name');
        $tablename = $this->prefix.$name;
        //实际查询表中是否有该字段
        if(Field::isset_field($tablename,$field)){
            Db::name($tablename)->execute("ALTER TABLE `$tablename` DROP `$field`");
        }
        $this->success(lang('删除成功'));
    }

    // 字段排序
    public function fieldSort(){
        $data = Request::post();
        if (Field::update($data) !== false) {
            $this->success(lang('edit success'));
        } else {
            $this->error(lang('edit fail'));
        }
    }

    // 字段状态
    public function fieldState(){
        if (Request::isPost()) {
            $id = Request::param('id');
            $status = Field::where('id','=',$id)
                ->value('status');
            $status = $status == 1 ? 0 : 1;
            if (Field::where('id','=',$id)->update(['status'=>$status]) !== false) {
                $this->success(lang('edit success'));
            } else {
                $this->error(lang('edit fail'));
            }
        }
    }




}

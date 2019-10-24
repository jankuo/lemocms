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
 */

namespace app\common\model;

use app\common\model\Common;

class Column extends Common {
    public static $column;

    public function __construct(array $data = [])
    {
        parent::__construct($data);
    }
    public static function fixColumn()
    {
        self::$column = $column = array();
        //取出需要处理的栏目数据
        $column = self::order('sort ASC, id ASC')->select()->toArray();
        self::set_column($column);
        if (is_array(self::$column)) {
            foreach (self::$column as $catid => $cat) {
                //获取父栏目ID列表
                $arrpid = self::get_arrpid($catid);
                //获取子栏目ID列表
                $arrchildid = self::get_arrchildid($catid);
                //检查所有父id 子栏目id 等相关数据是否正确，不正确更新
                if (self::$column[$catid]['arrpid'] != $arrpid || self::$column[$catid]['arrchildid'] != $arrchildid ) {
                    self::update(['arrpid' => $arrpid, 'arrchildid' => $arrchildid,'id' => $catid]);
                }

            }
        }
        return true;
    }

    public static function set_column($column){
        if($column){
            foreach ($column as $v) {
                $column[$v['id']] = $v;
            }
            self::$column = $column;
            cache('Column',$column);
        }
    }
    //获取父id
    public static function get_arrpid($id, $arrpid = '') {
        if (empty(self::$column)) {
            self::$column = cache('Column');
        }
        if(!is_array(self::$column) || !isset(self::$column[$id])) return false;
        $pid = self::$column[$id]['pid'];
        $arrpid = $arrpid ? $pid.','.$arrpid : $pid;
        if($pid) {
            $arrpid = self::get_arrpid($pid, $arrpid);
        } else {
            self::$column[$id]['arrpid'] = $arrpid;
        }
        return $arrpid;
    }
    //获取子id
    public static function get_arrchildid($catid) {
        if (empty(self::$column)) {
            self::$column = cache('Column');
        }
        $arrchildid = $catid;
        if(is_array(self::$column)) {
            foreach(self::$column as $id => $cat) {
                if($cat['pid'] && $catid != $id) {
                    $arrpids = explode(',', $cat['arrpid']);
                    if(in_array($catid, $arrpids)){
                        $arrchildid .= ','.$id;
                    }
                }
            }
        }
        return $arrchildid;
    }


    //刷新栏目索引缓存
    public static function flashCache()
    {
        $data = self::order("sort ASC")->select();
        $ids = array();
        foreach ($data as $r) {
            $ids[$r['id']] = array(
                'id' => $r['id'],
                'parentid' => $r['parentid'],
            );
        }
        cache("Category", $ids);
        return $ids;
    }


}

<?php


namespace app\common\model;

use app\common\model\Common;
use app\common\model\Module as M;
use think\facade\Config;

class Field extends Common {

    public function __construct(array $data = [])
    {
        parent::__construct($data);
    }

    public static function get_filed_sql($info,$action){
        $comment = $info['name'];
        $fieldtype = $info['type'];

        if (isset($info['value']['fieldtype'])) {
            $fieldtype=$info['value']['fieldtype'];
        }
        $moduleid = $info['moduleid'];
        $default = '';
        if (isset($info['value']['default'])) {
            $default = $info['value']['default'];
        }
        $field = $info['field'];
        $prefix = Config::get('database.connections.mysql.prefix');
        $name =M::where('id',$moduleid)
            ->value('name');
        $tablename = $prefix.$name;
        $maxlength = intval($info['maxlength']);
        $minlength = intval($info['minlength']);
        $numbertype = '';
        if (isset($info['value']['numbertype'])) {
            $numbertype=$info['value']['numbertype'];
        }
        if ($action == 'add') {
            $action = ' ADD ';
        } else {
            $oldfield = $info['oldfield'];
            $action =  " CHANGE `".$oldfield."` ";
        }
        switch ($fieldtype) {
            case 'varchar':
                if (!$maxlength) {
                    $maxlength = 255;
                }
                $maxlength = min($maxlength, 255);
                $sql = "ALTER TABLE `$tablename` $action `$field` VARCHAR( $maxlength ) NOT NULL DEFAULT '$default' COMMENT '$comment'";
                break;


            case 'float':
                    $sql = "ALTER TABLE `$tablename` $action `$field` FLOAT( $maxlength )  NOT NULL DEFAULT '$default'  COMMENT '$comment'";
                break;
            case 'tinyint':
                if (!$maxlength) {
                    $maxlength = 3;
                }
                $maxlength = min($maxlength,3);
                $default = intval($default);
                $sql = "ALTER TABLE `$tablename` $action `$field` TINYINT( $maxlength ) ".($numbertype ==1 ? 'UNSIGNED' : '')." NOT NULL DEFAULT '$default'  COMMENT '$comment'";
                break;
            case 'smallint':
                $default = intval($default);
                $sql = "ALTER TABLE `$tablename` $action `$field` SMALLINT ".($numbertype ==1 ? 'UNSIGNED' : '')." NOT NULL DEFAULT '$default' COMMENT '$comment'";
                break;
            case 'int':
                $default = intval($default);
                $sql = "ALTER TABLE `$tablename` $action `$field` INT ".($numbertype ==1 ? 'UNSIGNED' : '')." NOT NULL DEFAULT '$default' COMMENT '$comment'";
                break;
            case 'mediumint':
                $default = intval($default);
                $sql = "ALTER TABLE `$tablename` $action `$field` INT ".($numbertype ==1 ? 'UNSIGNED' : '')." NOT NULL DEFAULT '$default' COMMENT '$comment'";
                break;
            case 'longtext':
                $sql = "ALTER TABLE `$tablename` $action `$field` LONGTEXT NOT NULL COMMENT '$comment'";
                break;
            case 'mediumtext':
                $sql = "ALTER TABLE `$tablename` $action `$field` MEDIUMTEXT NOT NULL COMMENT '$comment'";
                break;
            case 'text':
                $sql = "ALTER TABLE `$tablename` $action `$field` TEXT NOT NULL COMMENT '$comment'";
                break;
            case 'date':
                $sql = "ALTER TABLE `$tablename` $action `$field` INT(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '$comment'";
                break;
            case 'editor':
                $sql = "ALTER TABLE `$tablename` $action `$field` TEXT NOT NULL COMMENT '$comment'";
                break;
            case 'image':
                $sql = "ALTER TABLE `$tablename` $action `$field` VARCHAR( 255 ) NOT NULL DEFAULT '' COMMENT '$comment'";
                break;
            case 'images':
                $sql = "ALTER TABLE `$tablename` $action `$field` MEDIUMTEXT NOT NULL COMMENT '$comment'";
                break;
            case 'file':
                $sql = "ALTER TABLE `$tablename` $action `$field` VARCHAR( 255 ) NOT NULL DEFAULT '' COMMENT '$comment'";
                break;
            case 'files':
                $sql = "ALTER TABLE `$tablename` $action `$field` MEDIUMTEXT NOT NULL COMMENT '$comment'";
                break;
            case 'template':
                $sql = "ALTER TABLE `$tablename` $action `$field` VARCHAR( 100 ) NOT NULL DEFAULT '' COMMENT '$comment'";
                break;
            case 'json':
                $sql = "ALTER TABLE `$tablename` $action `$field` JSON VARCHAR( 100 ) NOT NULL DEFAULT '' COMMENT '$comment'";
                break;
        }
        return $sql;
    }


}

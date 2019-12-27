<?php 
 return 
array (
  'default' => 'mysql',
  'time_query_rule' => 
  array (
  ),
  'auto_timestamp' => true,
  'datetime_format' => 'Y-m-d H:i:s',
  'connections' => 
  array (
    'mysql' => 
    array (
      'type' => 'mysql',
      'hostname' => '127.0.0.1',
      'database' => 'lemocms666',
      'username' => 'root',
      'password' => 'root',
      'hostport' => '3306',
      'params' => 
      array (
      ),
      'charset' => 'utf8mb4',
      'prefix' => 'lm_',
      'debug' => true,
      'deploy' => 0,
      'rw_separate' => false,
      'master_num' => 1,
      'slave_no' => '',
      'fields_strict' => true,
      'break_reconnect' => false,
      'schema_cache_path' => '..\\runtime\\schema\\',
    ),
  ),
)
;
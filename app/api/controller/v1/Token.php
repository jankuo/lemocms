<?php
namespace app\api\controller\v1;

use lemo\api\Token as TokenApi;
use think\facade\Request;

/**
 * 生成token
 */
class Token extends TokenApi
{

    public function __construct(Request $request)
    {
        parent::__construct($request);
    }



}
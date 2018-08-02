<?php
namespace app\mobile\validate;
use think\Validate;
class User extends Validate
{
    protected $rule = [
        'username|用户名'  	=> 'require|max:30|unique:user',
        'password|密码' 	=> 'require|min:6|max:30',
    ];
    protected $message = [
    ];
    protected $scene = [
        'register'  =>  ['username','password'],
    ];
}
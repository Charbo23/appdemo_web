<?php
namespace app\mobile\validate;
use think\Validate;
class Item extends Validate
{
    protected $rule = [
        'title|条目名'  	=> 'require|max:30|unique:item',
        'content|条目内容' 	=> 'require',
    ];
    protected $message = [
    ];
    protected $scene = [
        'add'  =>  ['title','content'],
    ];
}
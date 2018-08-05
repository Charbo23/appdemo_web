<?php
namespace app\mobile\model;
use think\Model;
class Item extends Model
{
    public function user(){
        return $this->belongsTo('user','uid')->field('username');
    }
}
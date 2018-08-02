<?php
namespace app\mobile\model;
use think\Model;
class User extends Model
{
    public function login($data){
        $user=db('user')->where('username',$data['username'])->find();
        if($user){
            if($user['password']==md5($data['password'])){
                return 1;
            }else{
                return 0;
            }
        }else{
            return -1;
        }
    }
}
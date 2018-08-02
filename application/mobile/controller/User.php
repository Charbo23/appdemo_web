<?php
namespace app\mobile\controller;
use think\Controller;
use think\Loader;
use app\mobile\model\User as UserModel;
class User extends Controller
{
    public function login()
    {
        if(request()->isPost()){
            $data=input('post.');
            $userModel = new UserModel();
            switch ($userModel->login($data)) {
                case '-1':
                    return $this->error('用户不存在');
                    break;
                case '0':
                    return $this->error('密码错误');
                    break;
                case '1':
                    return $this->success('登录成功','',UserModel::getByUsername($data['username']));
                    break;
                default:
                    return $this->error('登录异常');
                    break;
            }
        }
    }
    
    public function register()
    {
        if(request()->isPost()){
            $data=input('post.');
            $validate = Loader::validate('User');
            if (!$validate->scene('register')->check($data)) {
                return $this->error($validate->getError());
            }	
            $data['password']=md5($data['password']);
            $userModel = new UserModel();
            if($userModel->save($data)!==false){
                return $this->success('注册成功','',UserModel::getByUsername($data['username']));
            }else{
                return $this->error('注册失败');
            }
        }
    }
    
}

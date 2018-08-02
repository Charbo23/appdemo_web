<?php
namespace app\mobile\controller;
use think\Controller;
use think\Loader;
use app\mobile\model\Item as ItemModel;
class Item extends Controller
{
    public function lst() {
        if(request()->isPost()){
            
            $itemList=db('item')->select();
            return $this->success('','',$itemList);
        }
    }
    
    public function add() {
        if(request()->isPost()){
            $data=input('post.');
            $validate = Loader::validate('Item');
            if (!$validate->scene('add')->check($data)) {
                return $this->error($validate->getError());
            }	
            $itemModel = new ItemModel();
            if($itemModel->save($data)!==false){
                return $this->success('添加条目成功');
            }else{
                return $this->error('添加条目失败');
            }
        }
    }
}

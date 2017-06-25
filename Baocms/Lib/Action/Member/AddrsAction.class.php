<?php
class AddrsAction extends CommonAction {

	public function index() {
		$u = D('Users');
		$ud = D('UserAddr');
                $addr = $ud -> where('user_id='.$this->uid) -> select();
                $this->assign('addr',$addr);
		$this->assign('citys', D('City')->fetchAll());
		$this->assign('areas', D('Area')->fetchAll());
        $this->assign('business', D('Business')->fetchAll());
		$this->display(); // 输出模板
	}
	
	 public function delete(){
        $addr_id = (int)$this->_param('addr_id');
        if(empty($addr_id)){
            $this->ajaxReturn(array('status'=>'error','msg'=>'地址不存在'));
        }
        if(!$detail = D('Useraddr')->find($addr_id)){
            $this->ajaxReturn(array('status'=>'error','msg'=>'地址不存在'));
        }
        if($detail['user_id'] != $this->uid){
            $this->ajaxReturn(array('status'=>'error','msg'=>'不要操作别人的地址'));
        }
        if(D('Useraddr')->delete($addr_id)){
            $this->ajaxReturn(array('status'=>'success','msg'=>'恭喜您删除成功'));
        }
    }
  
}
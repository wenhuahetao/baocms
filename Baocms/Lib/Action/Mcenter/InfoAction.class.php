<?php

class InfoAction extends CommonAction {

    public function face() {
		 $this->display();
	}
	
    public function nickname() {
		if($this->isPost()){
			$nickname = $this->_post('nickname');
			$user = D('Users')->where(array('nickname'=>$nickname))->find();
			if(!empty($user)){
				$this->fengmiMsg('该昵称已被使用');
			}
			D('Users')->save(array('nickname'=>$nickname,'user_id'=>$this->uid));
			$this->fengmiMsg('昵称已经更新', U('info/nickname'));
		}
		
		
		 $this->display();
	}
	
    public function nickcheck() {
		$nickname = $this->_get('nickname');
		$user = D('Users')->where(array('nickname'=>$nickname))->find();
		if(empty($user)){
			echo '1';
		}else{
			echo '0';
		}
	}
	
	
	
    public function sendsms() {
        $mobile = $this->_post('mobile');
        if (isMobile($mobile)) {
            session('mobile', $mobile);
            $randstring = session('code');
            if (empty($randstring)) {
                $randstring = rand_string(6, 1);
                session('code', $randstring);
            }
			//大鱼短信
			if($this->_CONFIG['sms']['dxapi'] == 'dy'){
            D('Sms')->DySms($this->_CONFIG['site']['sitename'], 'sms_yzm', $mobile, array(
			'sitename'=>$this->_CONFIG['site']['sitename'],
			'code' => $randstring
			));
			}else{
				D('Sms')->sendSms('sms_code', $mobile, array('code' => $randstring));
			}

        }
    }

    public function password() {
        if ($this->isPost()) {
            $newpwd = $this->_post('newpwd', 'htmlspecialchars');
            if (empty($newpwd)) {
                $this->fengmiMsg('请输入新密码');
            }
            $pwd2 = $this->_post('pwd2', 'htmlspecialchars');
            if (empty($pwd2) || $newpwd != $pwd2) {
                $this->fengmiMsg('两次密码输入不一致！');
            }
            if (D('Users')->save(array('user_id' => $this->uid, 'password' => md5($newpwd)))) {
                $this->fengmiMsg('更改密码成功！', U('index/index'));
            }
            $this->fengmiMsg('修改密码失败！');
        } else {
            $this->display();
        }
    }
	
	
    public function account() {
		if($this->isPost()){
			$mobile = $this->_post('mobile');
            $yzm = $this->_post('yzm');
            if (empty($mobile) || empty($yzm)){
				$this->fengmiMsg('请填写正确的手机及手机收到的验证码！');
			}
            $s_mobile = session('mobile');
            $s_code = session('code');
            if ($mobile != $s_mobile){
				$this->fengmiMsg('手机号码和收取验证码的手机号不一致！');
			}
            if ($yzm != $s_code){
				$this->fengmiMsg('验证码不正确');
			}
			$user_id = D('Users')->where(array('mobile'=>$mobile))->getField('user_id'); 
			$uids = D('Users')->where(array('user_id'=>$this->uid))->getField('user_id');
			
			$connect = M('Connect'); //连接connect表
			$open_id = $connect->where(array('uid'=>$uids))->getField('open_id'); 
			
			$result = $connect -> where(array('open_id'=>$open_id))->setField('uid',$user_id); 
			D('Passport')->logout();
			$this->fengmiMsg('您的帐号已经更新！', U('mobile/index/index'));
		}
		$this->display();
	}
	
}

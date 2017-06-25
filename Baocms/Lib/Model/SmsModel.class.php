<?php
class SmsModel extends CommonModel
{
    protected $pk = 'sms_id';
    protected $tableName = 'sms';
    protected $token = 'bao_sms';
    public function sendSms($code, $mobile, $data)
    {
        $tmpl = $this->fetchAll();
        if (!empty($tmpl[$code]['is_open'])) {
            $content = $tmpl[$code]['sms_tmpl'];
            $config = D('Setting')->fetchAll();
            $data['sitename'] = $config['site']['sitename'];
            $data['tel'] = $config['site']['tel'];
            foreach ($data as $k => $val) {
                $val = str_replace('【', '', $val);
                $val = str_replace('】', '', $val);
                $content = str_replace('{' . $k . '}', $val, $content);
            }
            if (is_array($mobile)) {
                $mobile = join(',', $mobile);
            }
            if ($config['sms']['charset']) {
                $content = auto_charset($content, 'UTF8', 'gbk');
            }
            $local = array('mobile' => $mobile, 'content' => $content);
            $http = tmplToStr($config['sms']['url'], $local);
            $res = file_get_contents($http);
            if ($res == $config['sms']['code']) {
                return true;
            }
        }
        return false;
    }
    /**
     * 大鱼短信发送
     * 下面是调用示例：
     * D('Sms')->DySms('登录验证', '模板ID', '手机号码', array('模板变量' => '值'));
     */
    public function DySms($sign, $code, $mobile, $data)
    {
        $config = D('Setting')->fetchAll();
        $dycode = D('Dayu')->where(array("dayu_local='{$code}'"))->find();
        if (!empty($dycode['is_open'])) {
            //p($sign,$code,$mobile,$data);die;
            import('ORG.Util.Dayu');
            $obj = new AliSms($config['sms']['dykey'], $config['sms']['dysecret']);
            //print_r($data);die;
            if ($obj->sign($sign)->data($data)->code($dycode['dayu_tag'])->send($mobile)) {
                return true;
            }
        }
        return false;
    }
    public function mallTZshop($order_id)
    {
        if (is_numeric($order_id) && ($order_id = (int) $order_id)) {
            $order_id = array($order_id);
        }
        $config = D('Setting')->fetchAll();
        $orders = D('Order')->itemsByIds($order_id);
        $shop = array();
        foreach ($orders as $val) {
            $shop[$val['shop_id']] = $val['shop_id'];
        }
        $shops = D('Shop')->itemsByIds($shop);
        foreach ($shops as $val) {
            if ($config['sms']['dxapi'] == 'dy') {
                $this->DySms($config['site']['sitename'], 'sms_mall_tz_shop', $shop['mobile'], array(
					'sitename' => $config['site']['sitename']
				));
            } else {
                $this->sendSms('sms_shop_mall', $val['mobile'], array());
            }
        }
        return true;
    }
    public function eleTZshop($order_id){
        if (is_numeric($order_id) && ($order_id = (int) $order_id)) {
            $order = D('Eleorder')->find($order_id);
            $config = D('Setting')->fetchAll();
            $shop = D('Shop')->find($order['shop_id']);
            if ($config['sms']['dxapi'] == 'dy') {
                $this->DySms($config['site']['sitename'], 'sms_ele_tz_shop', $shop['mobile'], array('sitename' => $config['site']['sitename'], 'sitename' => $config['site']['sitename']));
            } else {
                $this->sendSms('sms_shop_ele', $shop['mobile'], array());
            }
        }
        return true;
    }
	
	public function breaksTZshop($order_id){
        if (is_numeric($order_id) && ($order_id = (int) $order_id)) {
            $order = D('Breaksorder')->find($order_id);
            $config = D('Setting')->fetchAll();
            $shop = D('Shop')->find($order['shop_id']);
			$users = D('Users')->find($order['user_id']);
			if(!empty($users['nickname'])){
				$user_name = $users['nickname'];
			}else{
				$user_name = $users['account'];
			}
			if(!empty($shop['mobile'])){
				if ($config['sms']['dxapi'] == 'dy') {
					$this->DySms($config['site']['sitename'], 'sms_breaks_tz_shop', $shop['mobile'], array(
						'shop_name' => $shop['shop_name'], //商家名字
						'user_name' => $user_name, //会员名字
						'amount' => $order['amount'], //买单金额
						'money' => $order['need_pay']//实际付款
					));
				} else {
					$this->sendSms('sms_breaks_tz_shop', $shop['mobile'], array(
						'shop_name' => $shop['shop_name'], //商家名字
						'user_name' => $user_name, //会员名字
						'amount' => $order['amount'], //买单金额
						'money' => $order['need_pay']//实际付款
					));
				}
			}
        }
        return true;
    }
	
	
	public function breaksTZuser($order_id){
        if (is_numeric($order_id) && ($order_id = (int) $order_id)) {
            $order = D('Breaksorder')->find($order_id);
            $config = D('Setting')->fetchAll();
            $users = D('Users')->find($order['user_id']);
			if(!empty($users['nickname'])){
				$user_name = $users['nickname'];
			}else{
				$user_name = $users['account'];
			}
			$shop = D('Shop')->find($order['shop_id']);
			$t = time();
            $date = date('Y-m-d H:i:s ', $t);
			if(!empty($users['mobile'])){
				if ($config['sms']['dxapi'] == 'dy') {
					$this->DySms($config['site']['sitename'], 'sms_breaks_tz_user', $users['mobile'], array(
						'user_name' => $user_name, //会员名字
						'shop_name' => $shop['shop_name'], //商家名字
						'money' => $order['need_pay'], //实付金额
						'data' => $date, //买单时间
					));
				} else {
					$this->sendSms('sms_breaks_tz_user', $user['mobile'], array(
						'user_name' => $user_name, //会员名字
						'shop_name' => $shop['shop_name'], //商家名字
						'money' => $order['need_pay'], //实付金额
						'data' => $date, //买单时间
					));
				}
			}
        }
        return true;
    }
	
	
    public function tuan_TZ_user($order_id){
        if (is_numeric($order_id) && ($order_id = (int) $order_id)) {
            $order = D('Eleorder')->find($order_id);
            $config = D('Setting')->fetchAll();
            $user = D('Users')->find($order['user_id']);
            //用户手机号
            $tuan = D('Tuan')->find($order['tuan_id']);
            $t = time();
            $date = date('Y-m-d H:i:s ', $t);
            if ($config['sms']['dxapi'] == 'dy') {
                $this->DySms($config['site']['sitename'], 'tuan_TZ_user', $user['mobile'], array(
					'name' => $tuan['title'], 
					'data' => $date, 
					'tel' => $config['site']['tel']
				));
            } else {
                $this->sendSms('tuan_TZ_user', $user['mobile'], array());
            }
        }
        return true;
    }
    public function dingTZshop($order_id)
    {
        if (is_numeric($order_id) && ($order_id = (int) $order_id)) {
            $config = D('Setting')->fetchAll();
            $order = D('Shopdingorder')->find($order_id);
            $shop = D('Shop')->find($order['shop_id']);
            if ($config['sms']['dxapi'] == 'dy') {
                $this->DySms($config['site']['sitename'], 'sms_ele_shop', $shop['mobile'], array('sitename' => $config['site']['sitename']));
            } else {
                $this->sendSms('sms_shop_ele', $shop['mobile'], array());
            }
        }
        return true;
    }
    public function tuanTZshop($shop_id)
    {
        $shop_id = (int) $shop_id;
        $shop = D('Shop')->find($shop_id);
        $config = D('Setting')->fetchAll();
        if ($config['sms']['dxapi'] == 'dy') {
            $this->DySms($config['site']['sitename'], 'sms_tuan_tz_shop', $shop['mobile'], array('sitename' => $config['site']['sitename']));
        } else {
            $this->sendSms('sms_shop_tuan', $shop['mobile'], array());
        }
        return true;
    }
    public function fetchAll()
    {
        $cache = cache(array('type' => 'File', 'expire' => $this->cacheTime));
        if (!($data = $cache->get($this->token))) {
            $result = $this->order($this->orderby)->select();
            $data = array();
            foreach ($result as $row) {
                $data[$row['sms_key']] = $row;
            }
            $cache->set($this->token, $data);
        }
        return $data;
    }
}
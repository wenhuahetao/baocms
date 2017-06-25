<?php
class PaymentModel extends CommonModel {
   protected $pk = 'payment_id';
    protected $tableName = 'payment';
    protected $token = 'payment';
    protected $types = array(
        'goods' => '商城购物',
        'gold' => '金块充值',
        'tuan' => '生活购物',
        'money' => '余额充值',
        'ele' => '在线订餐',
        'ding'  => '在线订座',
        'fzmoney'=> '冻结金充值',
        'breaks'=>'优惠买单',
		'pintuan' => '拼团',//拼团添加
    );
    protected $type = null;
    protected $log_id = null;
    public function getType() {
        return $this->type;
    }

    public function getLogId() {
        return $this->log_id;
    }

    public function getTypes() {
        return $this->types;
    }

    public function getPayments($mobile = false) {
        $datas = $this->fetchAll();
        $return = array();
        foreach ($datas as $val) {
            if ($val['is_open']) {
                if ($mobile == false) {
                    if (!$val['is_mobile_only'])
                        $return[$val['code']] = $val;
                }else {
                   if ( $val['code'] != 'tenpay' && $val['code'] != 'native' && $val['code'] != 'micro' ) {
                            $return[$val['code']] = $val;
                      }
                }
            }
        }

        if (!is_weixin()) {
            unset($return['weixin']);
        }

        if (is_weixin()) {
            unset($return['alipay']);
        }
        return $return;
    }
	//外卖关闭在线支付
	 public function getPayments_delivery($mobile = false) {
        $datas = $this->fetchAll();
        $return = array();
        foreach ($datas as $val) {
            if ($val['is_open']) {
                if ($mobile == false) {
                    if (!$val['is_mobile_only'])
                        $return[$val['code']] = $val;
                }else {
                    if ($val['code'] != 'tenpay') {
                        $return[$val['code']] = $val;
                    }
                }
            }
        }
        unset($return['money']);
		unset($return['tenpay']);
		unset($return['native']);
        unset($return['weixin']);
        unset($return['alipay']);
        return $return;
    }

    public function _format($data) {
        $data['setting'] = unserialize($data['setting']);
        return $data;
    }



  

		
	public function respond($code) {
        $payment = $this->checkPayment($code);
        if (empty($payment))
            return false;
		
		if ( $code == 'native' || $code == 'micro' ) {
			  require_cache( APP_PATH . 'Lib/Payment/' . $code . '.weixin' . '.class.php' );//扫码支付
		}elseif (defined('IN_MOBILE')) {
            require_cache(APP_PATH . 'Lib/Payment/' . $code . '.mobile.class.php');
        } else {
            require_cache(APP_PATH . 'Lib/Payment/' . $code . '.class.php');
        }
        $obj = new $code();
        return $obj->respond();
    }
		
	public function getCode($logs) {
        $CONFIG = D('Setting')->fetchAll();
        $datas = array(
            'subject' => $CONFIG['site']['sitename'] . $this->types[$logs['type']],
            'logs_id' => $logs['log_id'],
            'logs_amount' => $logs['need_pay'] / 100,
        );

        $payment = $this->getPayment($logs['code']);
		if ( $logs['code'] == 'native' || $logs['code'] == 'micro' ) {
			 require_cache( APP_PATH . 'Lib/Payment/' . $logs['code'] . '.weixin' . '.class.php' );//扫码支付
		} elseif (defined('IN_MOBILE')) {
            require_cache(APP_PATH . 'Lib/Payment/' . $logs['code'] . '.mobile.class.php');
        } else {
            require_cache(APP_PATH . 'Lib/Payment/' . $logs['code'] . '.class.php');

        }

        $obj = new $logs['code']();
        return $obj->getCode($datas, $payment);

    }
	
	
	

    public function checkMoney($logs_id, $money) {
        $money = (int) ($money );
        $logs = D('Paymentlogs')->find($logs_id);
        if ($logs['need_pay'] == $money)
            return true;
        return false;

    }
	
    public function logsPaid($logs_id) {
        $this->log_id = $logs_id; //用于外层回调
        $logs = D('Paymentlogs')->find($logs_id);
        if (!empty($logs) && !$logs['is_paid']) {
            $data = array(
                'log_id' => $logs_id,
                'is_paid' => 1,
            );

            if (D('Paymentlogs')->save($data)) { //总之 先更新 然后再处理逻辑  这里保障并发是安全的
                $ip = get_client_ip();
                D('Paymentlogs')->save(array(
                    'log_id' => $logs_id,
                    'pay_time' => NOW_TIME,
                    'pay_ip' => $ip
                ));

                $this->type = $logs['type'];
                if ($logs['type'] == 'gold') {
                    D('Users') -> updateCount($logs['user_id'], 'gold', (int)($logs['need_pay'] / 100));
					D('Usergoldlogs') -> add(array(
						'user_id' => $logs['user_id'], 
						'gold' => (int)($logs['need_pay'] / 100), 
						'create_time' => NOW_TIME,
						'create_ip' => $ip,
						'intro' => '充值金块，支付记录ID：' . $logs['log_id'],
					 ));

					//====================微信余额变动通知===========================



					$limit = round($logs['need_pay'] / 100, 2);
					$users = D('Users') -> find($logs['user_id']);
					$balance = round($users['money'] / 100, 2);
					include_once "Baocms/Lib/Net/Wxmesg.class.php";					

					$_data_balance = array(
						'url' => 'http://' . $_SERVER['HTTP_HOST'] . '/mcenter/index/index', 
						'topcolor' => '#F55555', 'first' => '您的账户余额发生变动，信息如下：', 
						'remark' => '如对上述余额变动有异议，请联系客服人员协助处理。' . $CONFIG['site']['tel'], 
						'accountType' => '会员账户', 
						'operateType' => '费用支出', 
						'operateInfo' => '充值金块', 
						'limit' => '-' . $limit . '元', 
						'balance' => $balance . '元'
					);

					$balance_data = Wxmesg::pay($_data_balance);
					$return = Wxmesg::net($logs['user_id'], 'OPENTM201495900', $balance_data);

                    //====================微信余额变动通知==============================
                    return true;
                }elseif($logs['type'] == 'fzmoney'){
                    $CONFIG = D('Setting')->fetchAll();
                    D('Usersex')->save(array(
						'user_id'=>$logs['user_id'],
						'frozen_money'=>$logs['need_pay'],
						'frozen_date'=>NOW_TIME + $CONFIG['quanming']['money_day']*86400)
					);
                    D('Quanming')->fzmoney($logs['user_id']);
                    return true;
                }elseif($logs['type'] == 'breaks'){   //优惠买单
                    $order = D('Breaksorder')->find($logs['order_id']);
                    $shop = D('Shop')->find($order['shop_id']);
                    D('Users')->updateCount($shop['user_id'], 'money', $logs['need_pay']);
                    D('Usermoneylogs')->add(array(
                        'user_id' => $shop['user_id'],
                        'money' => $logs['need_pay'],
                        'create_time' => NOW_TIME,
                        'create_ip' => $ip,
                        'intro' => '优惠买单，支付记录ID：' . $logs['log_id'],
                    ));
					//写入商户资金日志
                    D('Shopmoney')->add(array(
                        'shop_id' => $order['shop_id'],
						'city_id' => $shop['city_id'], 
						'area_id' => $shop['area_id'], 
						'branch_id' => $data['branch_id'], 
                        'money' => $logs['need_pay'],
                        'type'=>'breaks',
                        'order_id' =>$logs['order_id'],
                        'create_time' => NOW_TIME,
                        'create_ip' => $ip,
                        'intro' => '优惠买单，支付记录ID：' . $logs['log_id'],
                    ));
					
					D('Users')->Money($shop['user_id'], $logs['need_pay'], '用户买单，订单号:' . $order['order_id']);//写入商户资金
					
                    $youhui = D('Shopyouhui')->where(array('shop_id'=>$order['shop_id']))->find();
                    D('Breaksorder')->save(array('order_id' => $logs['order_id'], 'status' => 1)); //设置已付款
                    D('Shopyouhui')->updateCount($youhui['yh_id'], 'use_count',1);
					D('Sms') -> breaksTZshop($order['order_id']);//发送短信给商家
					D('Sms') -> breaksTZuser($order['order_id']);//发送短信给用户
                    //微信通知开始
                    $limit = round($logs['need_pay'] / 100, 2);
                    $users = D('Users')->find($logs['user_id']);
                    $balance = round($users['money'] / 100, 2);
                    include_once "Baocms/Lib/Net/Wxmesg.class.php";
                    $_data_balance = array(
                        'url' => 'http://' . $_SERVER['HTTP_HOST'] . '/mcenter/index/index',
                        'topcolor' => '#F55555',
                        'first' => '亲,您的哈土豆账户有变动',
                        'remark' => '有疑问请联系哈土豆：' . $this->CONFIG['site']['tel'],
                        'accountType' => '哈土豆会员账户',
                        'operateType' => '费用支出',
                        'operateInfo' => '优惠买单',
                        'limit' => '-' . $limit . '元',
                        'balance' => $balance . '元'
                    );
                    $balance_data = Wxmesg::pay($_data_balance);
                    $return = Wxmesg::net($logs['user_id'], 'OPENTM201495900', $balance_data);
					//微信通知结束
					return true;
					

				} elseif ($logs['type'] == 'money') {

					D('Users') -> updateCount($logs['user_id'], 'money', $logs['need_pay']);
					D('Usermoneylogs') -> add(array(
						'user_id' => $logs['user_id'], 
						'money' => $logs['need_pay'], 
						'create_time' => NOW_TIME, 
						'create_ip' => $ip, 
						'intro' => '余额充值
						，支付记录ID：' . $logs['log_id'], 
					));

					//====================微信余额变动通知===========================

					$limit = round($logs['need_pay'] / 100, 2);
					$users = D('Users') -> find($logs['user_id']);
					$balance = round($users['money'] / 100, 2);
					include_once "Baocms/Lib/Net/Wxmesg.class.php";

					$_data_balance = array(
						'url' => 'http://' . $_SERVER['HTTP_HOST'] . '/mcenter/index/index', 
						'topcolor' => '#F55555', 'first' => '您的账户余额发生变动，信息如下：', 
						'remark' => '如对上述余额变动有异议，请联系客服人员协助处理。' . $this -> CONFIG['site']['tel'], 
						'accountType' => '蜂蜜源码会员账户', 
						'operateType' => '费用收入', 
						'operateInfo' => '充值余额', 
						'limit' => '+' . $limit . '元', 
						'balance' => $balance . '元');

					$balance_data = Wxmesg::pay($_data_balance);
					$return = Wxmesg::net($logs['user_id'], 'OPENTM201495900', $balance_data);

					//====================微信余额变动通知==============================
					return true;

                } elseif ($logs['type'] == 'tuan') {//抢购都是发送抢购券！
                    $member = D('Users') -> find($logs['user_id']);
					$codes = array();
					//抢购券
					$obj = D('Tuancode');
					$order = D('Tuanorder') -> find($logs['order_id']);
					$tuan = D('Tuan') -> find($order['tuan_id']);
					//这里逻辑要修改
					//团购余额变动微信通知：OPENTM205454780
					$limit = round($logs['need_pay'] / 100, 2);
					$users = D('Users') -> find($logs['user_id']);
					$balance = round($users['money'] / 100, 2);
					include_once "Baocms/Lib/Net/Wxmesg.class.php";

					$_data_balance = array(
						'url' => 'http://' . $_SERVER['HTTP_HOST'] . '/mcenter/index/index', 
						'topcolor' => '#F55555', 'first' => '您的账户余额发生变动，信息如下：', 
						'remark' => '如对上述余额变动有异议，请联系客服人员协助处理。' . $this -> CONFIG['site']['tel'], 
						'accountType' => '444加会员账户', 
						'operateType' => '费用支出', 
						'operateInfo' => '购物消费', 
						'limit' => '-' . $limit . '元', 
						'balance' => $balance . '元'
					);
					$balance_data = Wxmesg::pay($_data_balance);
					$return = Wxmesg::net($logs['user_id'], 'OPENTM201495900', $balance_data);
					//结束
					for ($i = 0; $i < $order['num']; $i++) {
						$local = $obj -> getCode();
						$insert = array(
							'user_id' => $logs['user_id'], 
							'shop_id' => $tuan['shop_id'], 
							'order_id' => $order['order_id'], 
							'tuan_id' => $order['tuan_id'], 
							'code' => $local, 
							'price' => $tuan['price'], 
							'real_money' => (int)($order['need_pay'] / $order['num']), //退款的时候用
							'real_integral' => (int)($order['use_integral'] / $order['num']), //退款的时候用
							'fail_date' => $tuan['fail_date'], 
							'settlement_price' => $tuan['settlement_price'], 
							'create_time' => NOW_TIME, 
							'create_ip' => $ip, 
						);
						$codes[] = $local;
						$obj -> add($insert);

					}

					D('Tuanorder') -> save(array('order_id' => $order['order_id'], 'status' => 1));
					//设置已付款
					D('Tuan') -> updateCount($tuan['tuan_id'], 'sold_num');
					//更新卖出产品
					D('Tuan') -> updateCount($tuan['tuan_id'], 'num', -$order['num']);
					
					$this->_CONFIG = D('Setting')->fetchAll();
					
					if($this->_CONFIG['sms']['dxapi'] == 'dy'){
					
                    D('Sms')->DySms($this->_CONFIG['site']['sitename'], 'sms_tuan_user', $member['mobile'], array(
                        'code' => join(',', $codes),
                        'user' => $member['nickname'],
                        'shop_name' => $tuan['title']
                        ));
					}else{
						D('Sms')->sendSms('sms_tuan',$member['mobile'], array(
							'code' => join(',', $codes),
							'nickname' => $member['nickname'],
							'shop_name' => $tuan['title'],
						));
					}
 					
					D('Users') -> prestige($member['user_id'], 'tuan');
					$tg = D('Users') -> checkInvite($order['user_id'], $tuan['price']);
					if ($tg !== false) {
						D('Users') -> addIntegral($tg['uid'], $tg['integral'], "分享获得积分！");
					}
					D('Tongji') -> log(1, $logs['need_pay']);//统计
					D('Sms') -> tuanTZshop($tuan['shop_id']);//发送短信
					
					
					$tuan_is_profit = D('Shop') -> find($order['shop_id']);
					if($tuan_is_profit['is_profit'] == 1){
						$this->profitFusers(0, $logs['user_id'], $logs['order_id']);//单个商品奖励分成和升级等级
					}
					return true;
                } elseif ($logs['type'] == 'ele') {//餐饮订餐
                    D('Eleorder') -> save(array('order_id' => $logs['order_id'], 'status' => 1, 'is_pay' => 1));
					$order = D('EleOrder') -> where('order_id =' . $logs['order_id']) -> find();
					$member = D('Users') -> find($logs['user_id']);
					$shops = D('Shop') -> find($order['shop_id']);
					$shop_id=  $shops['shop_id'];
					$dv = D('DeliveryOrder');
					
					$uaddr = D('UserAddr')-> where('addr_id =' . $order['addr_id']) -> find();

					
					$limit = round($logs['need_pay'] / 100, 2);
					$users = D('Users') -> find($logs['user_id']);
					$balance = round($users['money'] / 100, 2);
					
					//==========这里是通知哪里的暂时还是不是很清楚==========//
					include_once "Baocms/Lib/Net/Wxmesg.class.php";

					$_data_balance = array(
						'url' => 'http://' . $_SERVER['HTTP_HOST'] . '/mcenter/index/index', 
						'topcolor' => '#F55555', 'first' => '您的账户余额发生变动，信息如下：', 
						'remark' => '如对上述余额变动有异议，请联系客服人员协助处理。' . $this -> CONFIG['site']['tel'], 
						'accountType' => '会员账户', 
						'operateType' => '费用支出', 
						'operateInfo' => '购物消费', 
						'limit' => '-' . $limit . '元', 
						'balance' => $balance . '元'
					);

					$balance_data = Wxmesg::pay($_data_balance);
					$return = Wxmesg::net($logs['user_id'], 'OPENTM201495900', $balance_data);
					//====================微信余额变动通知==============================
					//在线支付成功以后，进入配送员判断
					if ($shops['is_pei'] == 0) {
						$dv_data = array(
							'type' => 1, 
							'type_order_id' => $order['order_id'], 
							'delivery_id' => 0, 
							'shop_id' => $order['shop_id'],
							'city_id' => $shops['city_id'], 
							'lat' => $shops['lat'], 
							'lng' => $shops['lng'],  
							'user_id' => $order['user_id'], 
							'shop_name' => $shops['shop_name'], 
							'shop_addr' => $shops['addr'], 
							'shop_mobile' => $shops['tel'], 
							'user_name' => $uaddr['name'], 
							'user_addr' => $uaddr['addr'], 
							'user_mobile' => $uaddr['mobile'], 
							'create_time' => time(), 
							'update_time' => 0, 
							'status' => 1
						);
						$dv -> add($dv_data);
					}
					
					D('Tongji') -> log(3, $logs['need_pay']);//统计
					D('Sms') -> eleTZshop($logs['order_id']);//通知商家
					if($shops['is_ele_print'] ==1){//打印
						$msg = D('Eleorder')->ele_print($order['order_id'],$order['addr_id']);
						$result = D('Print')->printOrder($msg, $shop_id);
						Log::record('打印订单结果：' . $result);
					}
                } elseif ($logs['type'] == 'ding') {//订座定金
                    $order_no = D('Shopdingorder')->where('order_id = ' . $logs['order_id'])->find();
                    D('Shopdingorder')->save(array(
                        'order_id' => $logs['order_id'],
                        'status' => 1
                    ));
                    D('Shopdingyuyue')->where('order_no = ' . $order_no['order_no'])->save(array('is_pay' => 1));
                    $member = D('Users')->find($logs['user_id']);
                    $order = D('Shopdingorder')->find($logs['order_id']);
                    $shops = D('Shop')->find($order['shop_id']);
					$limit = round($logs['need_pay'] / 100, 2);
					$users = D('Users') -> find($logs['user_id']);
					$balance = round($users['money'] / 100, 2);
					
					//==========这里是通知哪里的暂时还是不是很清楚==========//
					include_once "Baocms/Lib/Net/Wxmesg.class.php";
					$_data_balance = array(
						'url' => 'http://' . $_SERVER['HTTP_HOST'] . '/mcenter/index/index', 
						'topcolor' => '#F55555', 'first' => '您的账户余额发生变动，信息如下：', 
						'remark' => '如对上述余额变动有异议，请联系客服人员协助处理。' . $this -> CONFIG['site']['tel'], 
						'accountType' => '会员账户', 
						'operateType' => '费用支出', 
						'operateInfo' => '购物消费', 
						'limit' => '-' . $limit . '元', 
						'balance' => $balance . '元'
					);

					$balance_data = Wxmesg::pay($_data_balance);
					$return = Wxmesg::net($logs['user_id'], 'OPENTM201495900', $balance_data);
					//==========订座微信通知结束==========//
					//短信通知订座
                    D('Sms')->sendSms('sms_ding', $member['mobile'], array('nickname' => $member['nickname'],'shopname' => $shops['shop_name'],));

                    D('Tongji')->log(3, $logs['need_pay']); //统计
                    //通知商家
                    D('Sms')->dingTZshop($logs['order_id']);
					
					//拼团二开开始
                } elseif ($logs['type'] == 'pintuan') {
					$obj = D('Porder');
					$tuan = $obj -> find($logs['order_id']);
					$uid = $tuan['user_id'];
					if ($tuan['tstatus'] == 0) {
						$obj -> save(array(
							'id' => $logs['order_id'], 
							'pay_time' => NOW_TIME, 
							'order_no' => $logs_id, 
							'pay_name' => $logs['code'], 
							'tuan_status' => 3, 
							'order_status' => 2
						));
						//====================普通订单通知===========================
						include_once "Baocms/Lib/Net/Wxmesg.class.php";
						$_data_order = array(//整体变更
							'url' => "http://" . $_SERVER['HTTP_HOST'] . "/mcenter/pintuan/order/id/" . $logs['order_id'] . ".html", 
							'topcolor' => '#F55555', 
							'first' => '亲,您的直接购买订单已经创建，我们将尽快为您发货！', 
							'remark' => '更多信息,请登录http://' . $_SERVER['HTTP_HOST'] . '！再次感谢您的惠顾！', 
							'money' => round($logs['need_pay'] / 100, 2) . '元', 
							'goodsName' => $tuan['goods_name'], 
							'payType' => $logs['code'], 
							'orderNum' => $logs_id, 
							'buyNum' => '点击查看详单', 
						);
						$order_data = Wxmesg::order($_data_order);
						$return = Wxmesg::net($uid, 'OPENTM202297555', $order_data);
						//结束
						//====================普通订单通知===============================
					} else {
						$obj -> save(array(
							'id' => $logs['order_id'], 
							'pay_time' => NOW_TIME, 
							'order_no' => $logs_id, 
							'pay_name' => $logs['code'], 
							'tuan_status' => 2, 
							'order_status' => 2
						));
						D('Ptuan') -> save(array('id' => $tuan['tuan_id'], 'tuan_status' => 2));
						D('Ptuanteam') -> where(array('order_id' => $logs['order_id'])) -> setField('tuan_status', '2');
						if ($tuan['tstatus'] == 1) {
							$num = $tuan['renshu'] - 1;
							//====================开团订单通知===========================
							include_once "Baocms/Lib/Net/Wxmesg.class.php";
							$_data_kaituan = array(
								'url' => "http://" . $_SERVER['HTTP_HOST'] . "/mobile/pintuan/tuan/id/" . $tuan['tuan_id'] . ".html", 
								'topcolor' => '#F55555', 'first' => '亲,您成功开启了一个新的拼团', 
								'remark' => '还差' . $num . '人成团，快快邀请您的小伙伴们一起参团吧', 
								'goodsName' => $tuan['goods_name'], 'orderno' => $logs_id, 
								'pintuannum' => $tuan['renshu'],
							 );
							$kaituan_data = Wxmesg::kaituan($_data_kaituan);
							$return = Wxmesg::net($uid, 'OPENTM206953801', $kaituan_data);
							//结束
							//====================开团订单通知===============================
						} elseif ($tuan['tstatus'] == 2) {
							//====================参团订单通知===========================
							include_once "Baocms/Lib/Net/Wxmesg.class.php";
							$_data_cantuan = array(
								'url' => "http://" . $_SERVER['HTTP_HOST'] . "/mobile/pintuan/tuan/id/" . $tuan['tuan_id'] . ".html", 
								'topcolor' => '#F55555', 'first' => '您已参团成功，请等待成团', 
								'payprice' => round($logs['need_pay'] / 100, 2) . '元', 
								'goodsName' => $tuan['goods_name'], 
								'dizhi' => $tuan['address'], 
								'remark' => '更多详情可点击查看',
							 );
							$cantuan_data = Wxmesg::cantuan($_data_cantuan);
							$return = Wxmesg::net($uid, 'OPENTM400890529', $cantuan_data);
							//结束
							//====================参团订单通知===============================
						}
					}
					$pgoods = D('Pgoods');
					$pgoods -> where(array('id' => $tuan['goods_id'])) -> setDec('xiangou_num', $tuan['goods_num']);//更新减掉库存
					$pgoods -> where(array('id' => $tuan['goods_id'])) -> setInc('sales_num', $tuan['goods_num']);//更新销售数量
					$tuanrenCount = D('Ptuanteam') -> where(array('tuan_id' => $tuan['tuan_id'], 'tuan_status' => 2)) -> count();//拼团二开结束
					
				}else { // 商城购物
                    if (empty($logs['order_id']) && !empty($logs['order_ids'])) {//合并付款
                        $order_ids = explode(',', $logs['order_ids']);

						$goods_order_profit = D('Order')->where(array('order_id'=>$logs['order_id']))->find();
						$goods_is_profit = D('Shop') -> find($goods_order_profit['shop_id']);
						if($goods_is_profit['is_profit'] == 1){
							foreach ($order_ids as $order_id) {
								$this->profitFusers(1, $logs['user_id'], $order_id);//foreach循环分成
							}
						}
                        D('Order')->save(array('status' => 1), array('where' => array('order_id' => array('IN', $order_ids))));
                        D('Sms')->mallTZshop($order_ids); //通知商家
                        $this->mallSold($order_ids);
                        $this->mallPeisong(array($order_ids),0);
						
                    } else {
                        D('Order')->save(array(
                            'order_id' => $logs['order_id'],
                            'status' => 1
                        ));
                        $this->mallPeisong(array($logs['order_id']),0);
                        $this->mallSold($logs['order_id']);//通知商家
                        D('Sms')->mallTZshop($logs['order_id']);
						
						$goods_order_profit = D('Order')->where(array('order_id'=>$logs['order_id']))->find();
						$goods_is_profit = D('Shop') -> find($goods_order_profit['shop_id']);
						if($goods_is_profit['is_profit'] == 1){
							$this->profitFusers(1, $logs['user_id'], $logs['order_id']);//单个商品奖励分成和升级等级
						}
						
                    }
					//==========这里是通知哪里的暂时还是不是很清楚==========//
					$limit = round($logs['need_pay'] / 100, 2);
					$users = D('Users') -> find($logs['user_id']);
					$balance = round($users['money'] / 100, 2);
					include_once "Baocms/Lib/Net/Wxmesg.class.php";

					$_data_balance = array(
						'url' => 'http://' . $_SERVER['HTTP_HOST'] . '/mcenter/index/index', 
						'topcolor' => '#F55555', 'first' => '您的账户余额发生变动，信息如下：', 
						'remark' => '如对上述余额变动有异议，请联系客服人员协助处理。' . $this -> CONFIG['site']['tel'], 
						'accountType' => '蜂蜜源码加会员账户', 
						'operateType' => '费用支出', 
						'operateInfo' => '购物消费', 
						'limit' => '-' . $limit . '元', 
						'balance' => $balance . '元'
					);

					$balance_data = Wxmesg::pay($_data_balance);
					$return = Wxmesg::net($logs['user_id'], 'OPENTM201495900', $balance_data);

					//==========商城付款后微信通知结束==========////
                    D('Tongji')->log(2, $logs['need_pay']); //统计

                }
            }
        }
        return true;
    }


	

    //更新商城销售接口
    public function mallSold($order_ids) {
        if (is_array($order_ids)) {
            $order_ids = join(',', $order_ids);
            $ordergoods = D('Ordergoods')->where("order_id IN ({$order_ids})")->select();
            foreach ($ordergoods as $k => $v) {
                D('Goods')->updateCount($v['goods_id'], 'sold_num', $v['num']);
				D('Goods') -> updateCount($v['goods_id'], 'num', -$v['num']);//减去库存
            }
        } else {
            $order_ids = (int) $order_ids;
            $ordergoods = D('Ordergoods')->where('order_id =' . $order_ids)->select();
            foreach ($ordergoods as $k => $v) {
                D('Goods')->updateCount($v['goods_id'], 'sold_num', $v['num']);
				D('Goods') -> updateCount($v['goods_id'], 'num', -$v['num']);//减去库存
            }
        }
        return TRUE;
    }



    //商城购物配送接口

    public function mallPeisong($order_ids,$wait = 0) {
        if($wait == 0){
            $status = 1;
        }else{
            $status = 0;
        }
        foreach ($order_ids as $order_id) {
            $order = D('Order')->where('order_id =' . $order_id)->find();
            $shops = D('Shop')->find($order['shop_id']);
            if (!empty($shops['tel'])) {
                $mobile = $shops['tel'];
            } else {
                $mobile = $shops['mobile'];
            }

            if ($shops['is_pei'] == 0) {
                $member = D('Users')->find($order['user_id']);
                $ua = D('UserAddr');
                $dv = D('DeliveryOrder');
                $uaddr = $ua->where(array('addr_id'=>$order['addr_id']))->find();
                //在线支付成功以后，进入配送员判断
                $dv_data = array(
                    'type' => 0,
                    'type_order_id' => $order['order_id'],
                    'delivery_id' => 0,
                    'shop_id' => $order['shop_id'],
                    'city_id' => $shops['city_id'],
                    'user_id' => $order['user_id'],
                    'shop_name' => $shops['shop_name'],
                    'lat' => $shops['lat'],
                    'lng' => $shops['lng'],
                    'shop_addr' => $shops['addr'],
                    'shop_mobile' => $mobile,
                    'user_name' => $member['nickname'],
                    'user_addr' => $uaddr['addr'],
                    'user_mobile' => $member['mobile'],
                    'create_time' => NOW_TIME,
                    'update_time' => 0,
                    'status' => $status
                );
                $dv->add($dv_data);
            }
        }
        return true;
    }



    //外卖配送接口

    public function elePeisong($order_id) {
        $order = D('Eleorder')->where('order_id =' . $order_id)->find();
        $shops = D('Shop')->find($order['shop_id']);
        if (!empty($shops['tel'])) {
            $mobile = $shops['tel'];
        } else {
            $mobile = $shops['mobile'];
        }

        if ($shops['is_pei'] == 0) {
            $member = D('Users')->find($order['user_id']);
            $ua = D('UserAddr');
            $dv = D('DeliveryOrder');
            $uaddr = $ua->where(array('addr_id'=>$order['addr_id']))->find();
            //在线支付成功以后，进入配送员判断
            $dv_data = array(
                'type' => 1,
                'type_order_id' => $order_id,
                'delivery_id' => 0,
                'shop_id' => $order['shop_id'],
                'city_id' => $shops['city_id'],
                'user_id' => $order['user_id'],
                'shop_name' => $shops['shop_name'],
                'lat' => $shops['lat'],
                'lng' => $shops['lng'],
                'shop_addr' => $shops['addr'],
                'shop_mobile' => $mobile,
                'user_name' => $member['nickname'],
                'user_addr' => $uaddr['addr'],
                'user_mobile' => $member['mobile'],
                'create_time' => NOW_TIME,
                'update_time' => 0,
                'status' => 1

            );
            $dv->add($dv_data);
        }
        return true;
    }



    public function checkPayment($code) {
        $datas = $this->fetchAll();
        foreach ($datas as $val) {
            if ($val['code'] == $code)
                return $val;
        }
        return array();
    }



    public function getPayment($code) {
        $datas = $this->fetchAll();
        foreach ($datas as $val) {
            if ($val['code'] == $code)
                return $val['setting'];
        }
        return array();
    }

	

	


  //分销
	private function profitFusers($order_type = 0, $uid = 0, $order_id = 0) {
		if ($order_type === 0) {
			$model = D('Tuan');
			$map['o.order_id'] = $order_id;
			$join = ' INNER JOIN ' . C('DB_PREFIX') . 'tuan_order o ON o.tuan_id = t.tuan_id INNER JOIN ' . C('DB_PREFIX') . 'users u ON o.user_id = u.user_id';
			$goods = $model->alias('t')->field('t.*, o.total_price, u.fuid1, u.fuid2, u.fuid3, o.is_separate')->join($join)->where($map)->limit(0, 1)->select();
		}
		else {
			$model = D('Goods');
			$map['og.order_id'] = $order_id;

			$join = ' INNER JOIN ' . C('DB_PREFIX') . 'order_goods og ON g.goods_id = og.goods_id INNER JOIN ' . C('DB_PREFIX') . 'order o ON o.order_id = og.order_id INNER JOIN ' . C('DB_PREFIX') . 'users u ON o.user_id = u.user_id';
			$goods = $model->alias('g')->field('g.*, og.total_price, u.fuid1, u.fuid2, u.fuid3, o.is_separate')->join($join)->where($map)->limit(0, 1)->select();
		}
		$goods = $goods[0];
		if ($goods) {
			$userModel = D('Users');
			if ($goods['profit_rank_id']) {
				$rank = D('Userrank')->find($goods['profit_rank_id']);
				if ($rank) {
					$userModel->save(array('user_id' => $uid, 'rank_id' => $rank['rank_id'], 'prestige' => $rank['prestige']));
				}
			}
			if ($goods['profit_enable']  && !$goods['is_separate']) {
				if ($order_type === 0) {
					$modelOrder = D('Tuanorder');
					$orderTypeName = '团购';
				}
				else {
					$modelOrder = D('Order');
					$orderTypeName = '商城';
				}
				$profit_rate1 = (int)$goods['profit_rate1'];
				if ($goods['fuid1']) {
					$money1 = round($profit_rate1 * $goods['total_price'] / 100);
					if ($money1 > 0) {
						$info1 = $orderTypeName . '订单ID:' . $order_id . ', 分成: ' . round($money1 / 100, 2);
						$fuser1 = $userModel->find($goods['fuid1']);
						if ($fuser1) {
							$userModel->addMoney($goods['fuid1'], $money1, $info1);
							$userModel->addProfit($goods['fuid1'], $order_type, $order_id, $money1, 1);
						}
					}
				}
				$profit_rate2 = (int)$goods['profit_rate2'];
				if ($goods['fuid2']) {
					$money2 = round($profit_rate2 * $goods['total_price'] / 100);
					if ($money2 > 0) {
						$info2 = $orderTypeName . '订单ID:' . $order_id . ', 分成: ' . round($money2 / 100, 2);
						$fuser2 = $userModel->find($goods['fuid2']);
						if ($fuser2) {
							$userModel->addMoney($goods['fuid2'], $money2, $info2);
							$userModel->addProfit($goods['fuid2'], $order_type, $order_id, $money2, 1);
						}

					}

				}
				$profit_rate3 = (int)$goods['profit_rate3'];
				if ($goods['fuid3']) {
					$money3 = round($profit_rate3 * $goods['total_price'] / 100);
					if ($money3 > 0) {
						$info3 = $orderTypeName . '订单ID:' . $order_id . ', 分成: ' . round($money3 / 100, 2);
						$fuser3 = $userModel->find($goods['fuid3']);
						if ($fuser3) {
							$userModel->addMoney($goods['fuid3'], $money3, $info3);
							$userModel->addProfit($goods['fuid3'], $order_type, $order_id, $money3, 1);
						}
					}
				}
				$modelOrder->save(array('order_id' => $order_id, 'is_separate' => 0));
			}
		}
	}
   //三级分销结束


}


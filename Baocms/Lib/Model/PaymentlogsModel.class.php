<?php
    class PaymentlogsModel extends CommonModel{
        protected $pk   = 'log_id';
        protected $tableName =  'payment_logs';
        protected $type = array(
            goods => '商城购物',
            gold => '金块充值',
            tuan => '抢购',
            money => '余额充值',
            ele => '外卖',
			pintuan => '拼团',
            ding => '座位预定',
        );

        protected $is_paid = array(
            0 => '未支付',
            1 => '已支付',
        );

        protected $code = array(
            weixin => '微信',
            alipay => '支付宝支付',
            money => '余额支付',
            jsapi => '微信公众号支付',
            native => '微信扫码支付',
            chinapay => '银联支付',
            chinabank => '网银在线',
            tenpay => '财付通',
            micro => '微信刷卡支付',

        );

        public function getType() {
            return $this->type;
        }

        public function getis_paid() {
            return $this->is_paid;
        }

        public function getcode() {
            return $this->code;
        }

        public function getLogsByOrderId($type,$order_id){
            $order_id = (int)$order_id;
            $type = addslashes($type);
            return $this->find(array('where'=>array('type'=>$type, 'order_id'=>$order_id)));
			//return $this->where('type = '.$type.' and order_id ='.$order_id)->find();
        }
    }
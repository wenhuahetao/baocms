<?php
class ShopyouhuiModel extends CommonModel {

    protected $pk = 'yh_id';
    protected $tableName = 'shop_youhui';

    public function get_amount($shop_id,$amount,$exception){
        $youhui = $this->where(array('shop_id'=>$shop_id,'is_open'=>1))->find();
        $need = $amount - $exception;
        if($youhui['type_id'] == 0){
            $result = round($need *$youhui['discount']/10,2) + $exception; 
        }else{
            $t = (int)$need/$youhui['min_amount'];
            $result = $need - $t*$youhui['amount'] + $exception;
        }
        return $result;
    }
    
    
}

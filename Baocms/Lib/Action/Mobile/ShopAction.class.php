<?php

class ShopAction extends CommonAction {
	
	public function _initialize() {
        parent::_initialize();
        $this->lifecate    = D('Lifecate')->fetchAll();
        $this->lifechannel = D('Lifecate')->getChannelMeans();
        $this->assign('lifecate', $this->lifecate);
        $this->assign('channel',  $this->lifechannel);
		
		//统计商家分类数量代码开始
		$shopcates = D('Shopcate')->fetchAll();
	    foreach ($shopcates as $key => $v) {
           if ($v['cate_id']) {
            $catids = D('Shopcate')->getChildren($v['cate_id']);
            if (!empty($catids)) {
				$count = D('Shop')->where(array('cate_id' => array('IN', $catids), 'closed' => 0, 'audit' => 1, 'city_id' => $this->city_id))->count();
            } else {
				$count = D('Shop')->where(array('cate_id' => $cat, 'closed' => 0, 'audit' => 1, 'city_id' => $this->city_id))->count();
            }
        }
            $shopcates[$key]['count'] = $count;
        }

        $this->assign('shopcates',$shopcates);
		//结束
		
    }
	

    public function index() {
        $cat = (int) $this->_param('cat');
        $this->assign('cat', $cat);
        $order = (int) $this->_param('order');
        $this->assign('order', $order);
        $keyword = $this->_param('keyword', 'htmlspecialchars');
        $this->assign('keyword', $keyword);
        $areas = D('Area')->fetchAll();
        $area = (int) $this->_param('area');
        $this->assign('area_id', $area);
        $biz = D('Business')->fetchAll();
        $business = (int) $this->_param('business');
        $this->assign('business_id', $business);
        $this->assign('areas', $areas);
        $this->assign('biz', $biz);
        $this->assign('nextpage', LinkTo('shop/loaddata', array('cat' => $cat, 'area' => $area, 'business' => $business, 'order' => $order, 't' => NOW_TIME, 'keyword' => $keyword, 'p' => '0000')));
        $this->display(); // 输出模板   
    }
    
    
	
	//二维码名片开始
	 public function qrcode($shop_id){
        $shop_id = (int)$shop_id;
        if(empty($shop_id)){
            $this->error('该商家不存在');
        }
        $shop = D('Shop')->find($shop_id);
        
		//商家二维码
        $file = D('Weixin')->getCode($shop_id,1);
        $this->assign('file', $file);
		
        $this->assign('shop',$shop);
        $this->display();
    }
//二维码名片结束



    
    public function branch(){
        
        $shop_id = I('shop_id',0,'intval,trim');
		$branch_id = (int) $this->_get('branch_id');
		$shopbranch = D('Shopbranch');
		import('ORG.Util.Page'); // 导入分页类
		
		$map = array('shop_id'=>$shop_id,'closed'=>0,'audit'=>1);
			
		$count = $shopbranch->where($map)->count(); // 查询满足要求的总记录数 
        $Page = new Page($count, 8); // 实例化分页类 传入总记录数和每页显示的记录数
        $show = $Page->show(); // 分页显示输出


		$branch = $shopbranch->where($map)->select();

		if (empty($shop_id) && empty($branch_id)) {
            $this->error('该分店已删除或者未通过审核');
        }
        
        $lat = addslashes(cookie('lat'));
        $lng = addslashes(cookie('lng'));
        if (empty($lat) || empty($lng)) {
            $lat = $this->city['lat'];
            $lng = $this->city['lng'];
        }
        
        foreach ($branch as $k => $val) {
            $branch[$k]['d'] = getDistance($lat, $lng, $val['lat'], $val['lng']);
        }
        
        $this->assign('branch_id',$branch_id);
		$this->assign('count',$count);
		$this->assign('page', $show); // 赋值分页输出
        $this->assign('branch',$branch);
		$this->display();
        
    }
    
    public function gps($shop_id){
        $shop_id = (int)$shop_id;
        if(empty($shop_id)){
            $this->error('该商家不存在');
        }
        $shop = D('Shop')->find($shop_id);
        
        $this->assign('shop',$shop);
        $this->display();
    }
    
    public function main() {

        $this->display();
    }

    public function loaddata() {

        $Shop = D('Shop');
        //var_dump($Shop);die;
        import('ORG.Util.Page'); // 导入分页类
        //初始数据
        $map = array('closed' => 0, 'audit' => 1,'city_id'=>$this->city_id);
        $cat = (int) $this->_param('cat');
        if ($cat) {
            $catids = D('Shopcate')->getChildren($cat);
            if (!empty($catids)) {
                $map['cate_id'] = array('IN', $catids);
            } else {
                $map['cate_id'] = $cat;
            }
        }

        if ($keyword = $this->_param('keyword', 'htmlspecialchars')) {
            $map['shop_name|addr'] = array('LIKE', '%' . $keyword . '%');
        }
        $area = (int) $this->_param('area');
        if ($area) {
            $map['area_id'] = $area;
        }
        $business = (int) $this->_param('business');
        if ($business) {
            $map['business_id'] = $business;
        }

        $order=(int) $this->_param('order');
		
        $lat = addslashes(cookie('lat'));
        $lng = addslashes(cookie('lng'));
        if (empty($lat) || empty($lng)) {
            $lat = $this->city['lat'];
            $lng = $this->city['lng'];
        }
        switch ($order) {
            case 2:
                $orderby = array('orderby' => 'asc', 'ranking' => 'desc');
                break;
            default:
                $orderby = " (ABS(lng - '{$lng}') +  ABS(lat - '{$lat}') ) asc ";

                break;
        }
        $count = $Shop->where($map)->count(); // 查询满足要求的总记录数 
        $Page = new Page($count, 8); // 实例化分页类 传入总记录数和每页显示的记录数
        $show = $Page->show(); // 分页显示输出

        $var = C('VAR_PAGE') ? C('VAR_PAGE') : 'p';
        $p = $_GET[$var];
        if ($Page->totalPages < $p) {
            die('0');
        }
        $list = $Shop->where($map)->order($orderby)->limit($Page->firstRow . ',' . $Page->listRows)->select();
	
        foreach ($list as $k => $val) {
            $list[$k]['d'] = getDistance($lat, $lng, $val['lat'], $val['lng']);
        }
        $shop_ids = array();
        foreach ($list as $key => $v) {
            $shop_ids[$v['shop_id']] = $v['shop_id'];
        }
        $shopdetails = D('Shopdetails')->itemsByIds($shop_ids);
		
        foreach ($list as $k => $val) {
            $list[$k]['price'] = $shopdetails[$val['shop_id']]['price'];
        }
        $this->assign('list', $list); // 赋值数据集
        $this->assign('page', $show); // 赋值分页输出
        $this->display(); // 输出模板   
    }

    public function detail() {

        $shop_id = (int) $this->_get('shop_id');
        if (!$detail = D('Shop')->find($shop_id)) {
            $this->error('没有该商家');
            die;
        }
        if ($detail['closed']) {
            $this->error('该商家已经被删除');
            die;
        }       
		$Shopdianping = D('Shopdianping');
        import('ORG.Util.Page'); // 导入分页类
        $map = array('closed' => 0, 'shop_id' => $shop_id, 'show_date' => array('ELT', TODAY));
        $count = $Shopdianping->where($map)->count(); // 查询满足要求的总记录数 
        $Page = new Page($count, 4); // 实例化分页类 传入总记录数和每页显示的记录数
        $show = $Page->show(); // 分页显示输出
        $list = $Shopdianping->where($map)->order(array('dianping_id' => 'desc'))->limit(0,4)->select();
        $all_ping = $Shopdianping->where('shop_id ='.$shop_id)->count();
        $this->assign('all_ping',$all_ping);
        $user_ids = $dianping_ids = array();
        foreach ($list as $k => $val) {
            $list[$k] = $val;
            $user_ids[$val['user_id']] = $val['user_id'];
            $dianping_ids[$val['dianping_id']] = $val['dianping_id'];
        }
        if (!empty($user_ids)) {
            $this->assign('users', D('Users')->itemsByIds($user_ids));
        }
        if (!empty($dianping_ids)) {
            $this->assign('pics', D('Shopdianpingpics')->where(array('dianping_id' => array('IN', $dianping_ids)))->select());
        }
        $this->assign('totalnum', $count);
        $this->assign('list', $list); // 赋值数据集
        $this->assign('page', $show); // 赋值分页输出		
		$this->assign('favnum', D('Shopfavorites')->where(array('shop_id'=>$shop_id))->count());
        $this->assign('detail', $detail);
		$this->seodatas['title'] = $detail['shop_name'];
        $this->assign('ex', D('Shopdetails')->find($shop_id));
        $this->assign('cates', D('Shopcate')->fetchAll());
	     //推荐不同类目商家开始
	    $shop_tuan = D('Shop')->where(array('cate_id' => array('neq',$detail['cate_id'])))->order(array('shop_id' => 'desc'))->select();
		$shop_ids = array();
        foreach ($shop_tuan as $k => $val) {
            $list[$k] = $val;
            $shop_ids[$val['shop_id']] = $val['shop_id'];
        }
    
		$map_tuan['shop_id'] =  array('IN', $shop_ids);
		$map_tuan['closed'] = array('eq','0'); 
		$map_tuan['bg_date'] = array('ELT', TODAY);   
		$map_tuan['end_date'] =  array('EGT', TODAY);   
		
		$tuans = D('Tuan')->where($map_tuan)->order(array('top_date' => 'desc', 'create_time' => 'desc'))->limit(0, 6)->select();
		foreach ($tuans as $k => $val) {
            $tuans[$k]['d'] = getDistance($lat, $lng, $val['lat'], $val['lng']);
        }
        $this->assign('tuans', $tuans);
		 //推荐不同类目商家结束
		
		
		/***********20150915新增********/
		//招聘
        $work = D('work')->order('work_id desc ')->where(array('shop_id' => $shop_id, 'audit' => 1,'city_id'=>$this->city_id, 'closed' => 0, 'expire_date' => array('EGT', TODAY)))->select();
        $this->assign('work', $work);
		
		//微店
		 $weidian = D('WeidianDetails')->where(array('audit' => 1,'city_id'=>$this->city_id, 'closed' => 0, ))->order('id desc')->limit(0, 1)->select();
		$this->assign('weidian', $weidian); 
		 
		//商品
        $goods = D('Goods')->where(array('shop_id' => $shop_id, 'audit' => 1,'city_id'=>$this->city_id, 'closed' => 0, 'end_date' => array('EGT', TODAY)))->order('goods_id desc')->select();

        $this->assign('goods', $goods);
		//优惠
        $coupon = D('Coupon')->order('coupon_id desc ')->where(array('shop_id' => $shop_id, 'audit' => 1,'city_id'=>$this->city_id, 'closed' => 0, 'expire_date' => array('EGT', TODAY)))->select();

        $this->assign('coupon', $coupon);
		//活动
        $huodong = D('Activity')->order('activity_id desc ')->where(array('shop_id' => $shop_id,'city_id'=>$this->city_id, 'audit' => 1, 'closed' => 0, 'end_date' => array('EGT', TODAY), 'bg_date' => array('ELT', TODAY)))->select();

        $this->assign('huodong', $huodong);
		//外卖
		 $ele_menu = D('ele_product')->order('product_id desc ')->where(array('shop_id' => $shop_id,'city_id'=>$this->city_id))->select();

        $this->assign('ele_menu', $ele_menu);
		
		//菜单
		 $ding_menu = D('shop_ding_menu')->order('menu_id desc ')->where(array('shop_id' => $shop_id,'city_id'=>$this->city_id))->select();

        $this->assign('ding_menu', $ding_menu);
		
		/******************/
		
		
        D('Shop')->updateCount($shop_id, 'view');
        if ($this->uid) {
            D('Userslook')->look($this->uid, $shop_id);
        }
		/*******查询商家微店***********/
		$Weidian = D('Weidian_details');       
        $weidianid=$Weidian->where('shop_id='.$shop_id.' ')->find();
		$this->assign('weidian_id', $weidianid['id']);
		
		/********查询商家微店结束**********/
		$this->assign('pic',$pic = D('Shoppic')->where(array('shop_id' => $shop_id))->order(array('pic_id' => 'desc'))->count());
		
		$shopyouhui = D('Shopyouhui')->where(array('shop_id'=>$shop_id,'is_open'=>1))->find();
		$this->assign('shopyouhui', $shopyouhui);
		 
		$this->mobile_title = $detail['shop_name'];
		$this->mobile_keywords = $detail['addr'].','.$detail['tel'];
		$this->mobile_description =$detail['addr'];
        $this->display();
    }

    public function favorites() {
        if (empty($this->uid)) {
            header("Location:" . U('passport/login'));
            die;
        }
        $shop_id = (int) $this->_get('shop_id');
        if (!$detail = D('Shop')->find($shop_id)) {
            $this->error('没有该商家');
        }
        if ($detail['closed']) {
            $this->error('该商家已经被删除');
        }
        if (D('Shopfavorites')->check($shop_id, $this->uid)) {
            $this->error('您已经收藏过了！');
        }
        $data = array(
            'shop_id' => $shop_id,
            'user_id' => $this->uid,
            'create_time' => NOW_TIME,
            'create_ip' => get_client_ip()
        );
        if (D('Shopfavorites')->add($data)) {
            $this->success('恭喜您收藏成功！', U('shop/detail', array('shop_id' => $shop_id)));
        }
        $this->error('收藏失败！');
    }

    //点评
    public function dianping() {
        $shop_id = (int) $this->_get('shop_id');
        if (!$detail = D('Shop')->find($shop_id)) {
            $this->error('没有该商家');
            die;
        }
        if ($detail['closed']) {
            $this->error('该商家已经被删除');
            die;
        }
        $this->assign('detail', $detail);
        $this->display();
    }

    public function dianpingloading() {
        $shop_id = (int) $this->_get('shop_id');
        if (!$detail = D('Shop')->find($shop_id)) {
            die('0');
        }
        if ($detail['closed']) {
            die('0');
        }
        $Shopdianping = D('Shopdianping');
        import('ORG.Util.Page'); // 导入分页类
        $map = array('closed' => 0, 'shop_id' => $shop_id, 'show_date' => array('ELT', TODAY));
        $count = $Shopdianping->where($map)->count(); // 查询满足要求的总记录数 
        $Page = new Page($count, 5); // 实例化分页类 传入总记录数和每页显示的记录数

        $var = C('VAR_PAGE') ? C('VAR_PAGE') : 'p';
        $p = $_GET[$var];
        if ($Page->totalPages < $p) {
            die('0');
        }

        $show = $Page->show(); // 分页显示输出
        $list = $Shopdianping->where($map)->order(array('dianping_id' => 'desc'))->limit($Page->firstRow . ',' . $Page->listRows)->select();
        $user_ids = $dianping_ids = array();
        foreach ($list as $k => $val) {
            $list[$k] = $val;
            $user_ids[$val['user_id']] = $val['user_id'];
            $dianping_ids[$val['dianping_id']] = $val['dianping_id'];
        }
        if (!empty($user_ids)) {
            $this->assign('users', D('Users')->itemsByIds($user_ids));
        }
        if (!empty($dianping_ids)) {
            $this->assign('pics', D('Shopdianpingpics')->where(array('dianping_id' => array('IN', $dianping_ids)))->select());
        }
        $this->assign('totalnum', $count);
        $this->assign('list', $list); // 赋值数据集
        $this->assign('detail', $detail);
        $this->display();
    }
	
	
	//新添加预约商家开始
	
	 public function book($shop_id) {
        if (empty($this->uid)) {
            $this->error('登录状态失效!', U('passport/login'));
        }
        $shop_id = (int) $shop_id;
        $detail = D('Shop')->find($shop_id);
        if (empty($detail)) {
            $this->error('商家不存在');
        }
        if ($detail['closed']) {
            $this->error('该商家已经被删除');
            die;
        }
		//去除商家手机号开始
		$sj_user=$detail['user_id'];
		$shangjia_mobile=D('Users')->find($sj_user);
		$sj_mobile=$shangjia_mobile['mobile'];	
		$sj_email = $shangjia_mobile['email'];//获得商家的邮件
		//去除商家手机号结束	
		
        if ($this->isPost()) {
            $data = $this->checkBook($shop_id);
            $obj = D('Shopyuyue');
            $data['shop_id'] = (int) $shop_id;
			$data['type'] = 0;
            $data['code'] = $obj->getCode();
            if ($obj->add($data)) {
				//通知用户
				
				 
				
               if($this->_CONFIG['sms']['dxapi'] == 'dy'){
                    D('Sms')->DySms($this->_CONFIG['site']['sitename'], 'sms_shop_yuyue_code', $data['mobile'], array(
                        'sitename'=>$this->_CONFIG['site']['sitename'], 
                        'shop_name' => $detail['shop_name'],
                        'shop_tel' => $detail['tel'],
                        'shop_addr' => $detail['addr'],
                        'code' => $data['code']
                        ));
                }else{
                    D('Sms')->sendSms('sms_shop_yuyue', $data['mobile'], array(
                        'shop_name' => $detail['shop_name'],
                        'shop_tel' => $detail['tel'],
                        'shop_addr' => $detail['addr'],
                        'code' => $data['code']
                    ));
                }

				//预约通知商家功能开始
			   if(!empty($sj_mobile)){
				 
			
               if($this->_CONFIG['sms']['dxapi'] == 'dy'){
                     D('Sms')->DySms($this->_CONFIG['site']['sitename'], 'sms_dytz', $sj_mobile, array(
                            'sitename'=>$this->_CONFIG['site']['sitename'], 
                            'name'=>$data['name'],
                            'content'=>$data['content'],
                            'yuyue_time'=>$data['yuyue_time'],
                            'mobile'=>$data['mobile'],
                            'number'=>$data['number'],
                            'yuyue_date'=>$data['yuyue_date']
                            ));
                    }else{
                        D('Sms')->sendSms('sms_shangjia_yuyue',$sj_mobile,array(
                            'name'=>$data['name'],
                            'content'=>$data['content'],
                            'yuyue_time'=>$data['yuyue_time'],
                            'mobile'=>$data['mobile'],
                            'number'=>$data['number'],
                            'yuyue_date'=>$data['yuyue_date']
                        ));
                    }
				  }
                //预约通知商家功能结束
              //邮件功能
              if(!empty($sj_email)){
                 D('Email')->sendMail('email_yuyue', $sj_email, '邮件标题', array(
					 'name'=>$data['name'],
					 'content'=>$data['content'],
					 'yuyue_time'=>$data['yuyue_time'],
					 'mobile'=>$data['mobile'],
					 'number'=>$data['number'],
					 'yuyue_date'=>$data['yuyue_date'
				 ]));
                } //邮件功能
                D('Shop')->updateCount($shop_id, 'yuyue_total');
                $this->fengmiMsg('预约成功！', U('mcenter/yuyue/index'));
            }
            $this->fengmiMsg('操作失败！');
        } else {
            $this->assign('shop_id', $shop_id);
            $this->assign('detail', $detail);
            $this->display();
        }
    }

    public function checkBook() {
        $data = $this->checkFields($this->_post('data', false), array('name', 'mobile','type','content', 'yuyue_date', 'yuyue_time', 'number'));
        $data['user_id'] = (int) $this->uid;
        $data['name'] = htmlspecialchars($data['name']);
        if (empty($data['name'])) {
            $this->fengmiMsg('称呼不能为空');
        }
        $data['content'] = htmlspecialchars($data['content']);
        if (empty($data['content'])) {
            $this->fengmiMsg('留言不能为空');
        }
        $data['mobile'] = htmlspecialchars($data['mobile']);
        if (empty($data['mobile'])) {
            $this->fengmiMsg('手机不能为空');
        }
        if (!isMobile($data['mobile'])) {
            $this->fengmiMsg('手机格式不正确');
        }
        $data['yuyue_date'] = htmlspecialchars($data['yuyue_date']);
        $data['yuyue_time'] = htmlspecialchars($data['yuyue_time']);
        if (empty($data['yuyue_date']) || empty($data['yuyue_time'])) {
            $this->fengmiMsg('预定日期不能为空');
        }
        if (!isDate($data['yuyue_date'])) {
            $this->fengmiMsg('预定日期格式错误！');
        }
        $data['number'] = (int) $data['number'];
        $data['create_time'] = NOW_TIME;
        $data['create_ip'] = get_client_ip();
        return $data;
    }
	//预约商家结束
	
	
	//增加分店开始
	public function shop() {
        $shop_id = (int) $this->_get('shop_id');
        $branch_id = (int) $this->_get('branch_id');
        $branch = D('Shopbranch')->where(array('shop_id'=>$shop_id,'closed'=>0,'audit'=>1))->select();
        if (empty($shop_id) && empty($branch_id)) {
            $this->error('该商家不存在');
        }
        $Shopdianping = D('Shopdianping');
        import('ORG.Util.Page'); // 导入分页类
        if (empty($branch_id)) {
            if (!$detail = D('Shop')->find($shop_id)) {
                $this->error('该商家不存在');
                die;
            }
            if ($detail['closed'] != 0 || $detail['audit'] != 1) {
                $this->error('该商家不存在');
                die;
            }
            if(!$rs = D('Shopfavorites')->where(array('shop_id'=>$shop_id,'user_id'=>$this->uid))->find()){
               $detail['fav'] = 0; 
            }else{
                $detail['fav'] = 1; 
            }
            
            $goods = D('Goods')->where(array('shop_id' => $shop_id, 'city_id'=>$this->city_id, 'audit' => 1, 'closed' => 0, 'end_date' => array('EGT', TODAY)))->order('goods_id desc')->limit(0,12)->select();
            $this->assign('goods', $goods);
            $tuan = D('Tuan')->where(array('shop_id' => $shop_id,'city_id'=>$this->city_id, 'audit' => 1, 'closed' => 0, 'end_date' => array('EGT', TODAY)))->order(' tuan_id desc ')->limit(0,10)->select();
            $this->assign('tuan', $tuan);
            
            $map = array('closed' => 0, 'shop_id' => $shop_id,'branch_id'=>0, 'show_date' => array('ELT', TODAY));
            $count = $Shopdianping->where($map)->count(); // 查询满足要求的总记录数 
            $Page = new Page($count, 25); // 实例化分页类 传入总记录数和每页显示的记录数
            $show = $Page->show(); // 分页显示输出
            $list = $Shopdianping->where($map)->order(array('dianping_id' => 'desc'))->limit($Page->firstRow . ',' . $Page->listRows)->select();
            $user_ids = $dianping_ids = array();
            foreach ($list as $k => $val) {
                $list[$k] = $val;
                $user_ids[$val['user_id']] = $val['user_id'];
                $dianping_ids[$val['dianping_id']] = $val['dianping_id'];
            }
            if (!empty($user_ids)) {
                $this->assign('users', D('Users')->itemsByIds($user_ids));
            }
            if (!empty($dianping_ids)) {
                $this->assign('pics', D('Shopdianpingpics')->where(array('dianping_id' => array('IN', $dianping_ids)))->select());
            }

            $ex = D('Shopdetails')->find($shop_id);
            $detail['business_time'] = $ex['business_time'];
            $detail['details'] = $ex['details'];
            $this->assign('detail', $detail);
        } else {
            $detail = D('Shopbranch')->find($branch_id);
            if(empty($detail)||$detail['shop_id'] != $shop_id){
                $this->error('该分店不存在');
            }
            if ($detail['closed'] != 0 || $detail['audit'] != 1) {
                $this->error('该分店不存在');
                die;
            }
            $goods = D('Goods')->where(array('shop_id' => $shop_id, 'branch_id'=>$branch_id, 'audit' => 1,'city_id'=>$this->city_id, 'closed' => 0, 'end_date' => array('EGT', TODAY)))->order('goods_id desc')->select();
            $this->assign('goods', $goods);
            $tuan = D('Tuan')->where(array('shop_id' => $shop_id, 'branch_id'=>$branch_id, 'audit' => 1,'city_id'=>$this->city_id, 'closed' => 0, 'end_date' => array('EGT', TODAY)))->order(' tuan_id desc ')->select();
            $this->assign('tuan', $tuan);
            $map = array('closed' => 0, 'shop_id' => $shop_id,'branch_id'=>$branch_id, 'show_date' => array('ELT', TODAY));
            $count = $Shopdianping->where($map)->count(); // 查询满足要求的总记录数 
            $Page = new Page($count, 25); // 实例化分页类 传入总记录数和每页显示的记录数
            $show = $Page->show(); // 分页显示输出
            $list = $Shopdianping->where($map)->order(array('dianping_id' => 'desc'))->limit($Page->firstRow . ',' . $Page->listRows)->select();
            $user_ids = $dianping_ids = array();
            foreach ($list as $k => $val) {
                $list[$k] = $val;
                $user_ids[$val['user_id']] = $val['user_id'];
                $dianping_ids[$val['dianping_id']] = $val['dianping_id'];
            }
            if (!empty($user_ids)) {
                $this->assign('users', D('Users')->itemsByIds($user_ids));
            }
            if (!empty($dianping_ids)) {
                $this->assign('pics', D('Shopdianpingpics')->where(array('dianping_id' => array('IN', $dianping_ids)))->select());
            }
            $shopdetail = D('Shop')->find($shop_id);
            $ex = D('Shopdetails')->find($shop_id);
            array_unshift($branch,$shopdetail);
            foreach($branch as $k=>$val){
                if($val['branch_id'] == $branch_id){
                    unset($branch[$k]);
                }
            }
            $detail['logo'] = $shopdetail['logo'];
            $detail['shop_name'] = $shopdetail['shop_name'];
            $detail['details'] = $ex['details'];
            $detail['shop_id'] = $shop_id;
            $this->assign('detail', $detail);
        }
		
		
        $this->assign('list',$list);
        $this->assign('page',$show);
        $this->assign('branch_id',$branch_id);
        $this->assign('branch',$branch);
		
		$this->assign('height_num',350);
		
		
		D('Shopbranch')->updateCount($branch_id, 'view');//分店详情页浏览量小灰灰增加的哦
		//$this->assign('view', D('Shopbranch')->where(array('branch_id'=>$branch_id))->count());//收藏商家
		$this->assign('favnum', D('Shopfavorites')->where(array('shop_id'=>$shop_id))->count());//收藏商家有严重问题的,暂时调用下应急，懒得新建字段了！、
		//后期有空调整
		
        $this->display();
    }
	
	
	//增加团购
	public function tuan() {
         $shop_id = (int) $this->_get('shop_id');
        if (!$detail = D('Shop')->find($shop_id)) {
            $this->error('没有该商家');
            die;
        }
        if ($detail['closed']) {
            $this->error('该商家已经被删除');
            die;
        }
        $this->assign('detail', $detail);
        $this->assign('nextpage', LinkTo('shop/tuanload', array('shop_id' => $shop_id, 't' => NOW_TIME, 'keyword' => $keyword, 'p' => '0000')));
        $this->display(); // 输出模板   
    }
	
	public function tuanload() {
        $shop_id = (int) $this->_get('shop_id');
		$tuanload = D('Tuan');//定义数据库
        import('ORG.Util.Page'); // 导入分页类
        $map = array('closed' => 0, 'shop_id' => $shop_id, 'show_date' => array('ELT', TODAY));//查询当前shop下面的团购
        $count = $tuanload->where($map)->count(); // 查询满足要求的总记录数 
        $Page = new Page($count, 5); // 实例化分页类 传入总记录数和每页显示的记录数
        $show = $Page->show(); // 分页显示输出
		 $var = C('VAR_PAGE') ? C('VAR_PAGE') : 'p';
        $p = $_GET[$var];
        if ($Page->totalPages < $p) {
            die('0');
        }
        $list = $tuanload->where($map)->order(array('tuan_id' => 'desc'))->limit($Page->firstRow . ',' . $Page->listRows)->select();
		$this->assign('list',$list);
		
		
        $this->display(); // 输出模板   
    }
	
	//增加优惠劵
	public function coupon() {
         $shop_id = (int) $this->_get('shop_id');
        if (!$detail = D('Shop')->find($shop_id)) {
            $this->error('没有该商家');
            die;
        }
        if ($detail['closed']) {
            $this->error('该商家已经被删除');
            die;
        }
        $this->assign('detail', $detail);
        $this->assign('nextpage', LinkTo('shop/couponload', array('shop_id' => $shop_id, 't' => NOW_TIME, 'keyword' => $keyword, 'p' => '0000')));
        $this->display(); // 输出模板   
    }
	
	public function couponload() {
        $shop_id = (int) $this->_get('shop_id');
        $couponload = D('Coupon');//定义数据库
        import('ORG.Util.Page'); // 导入分页类
        $map = array('closed' => 0, 'shop_id' => $shop_id, 'show_date' => array('ELT', TODAY));//查询当前shop下面的团购
        $count = $couponload->where($map)->count(); // 查询满足要求的总记录数 
        $Page = new Page($count, 5); // 实例化分页类 传入总记录数和每页显示的记录数
        $show = $Page->show(); // 分页显示输出
		 $var = C('VAR_PAGE') ? C('VAR_PAGE') : 'p';
        $p = $_GET[$var];
        if ($Page->totalPages < $p) {
            die('0');
        }
        $list = $couponload->where($map)->order(array('coupon_id' => 'desc'))->limit($Page->firstRow . ',' . $Page->listRows)->select();
		$this->assign('list',$list);
		
        $this->display(); // 输出模板   
    }

	//团购图文详情

    public function pic() {

        $shop_id = (int) $this->_get('shop_id');
        if (!$detail = D('Shop')->find($shop_id)) {
            $this->error('没有该商家');
            die;
        }
        if ($detail['closed']) {
            $this->error('该商家已经被删除');
            die;
        }
		$map = array('shop_id' => $shop_id);//查询当前shop下面的团购
		$list = D('Shoppic')->where($map)->order(array('pic_id' => 'desc'))->select();
		$this->assign('list',$list);
		$thumb = unserialize($detail['thumb']);
        $this->assign('thumb', $thumb);
        $this->assign('detail', $detail);
        $this->display();

    }
	
	public function life() {
        $shop_id = (int) $this->_get('shop_id');
        if (!$detail = D('Shop')->find($shop_id)) {
            $this->error('没有该商家');
            die;
        }
        if ($detail['closed']) {
            $this->error('该商家已经被删除');
            die;
        }
        $this->assign('nextpage', LinkTo('shop/lifeload', array('shop_id' => $shop_id, 't' => NOW_TIME, 'p' => '0000')));
        $this->assign('detail', $detail);
        $this->display();

    }
	public function lifeload() {
		$shop_id = (int) $this->_get('shop_id');
        if (!$detail = D('Shop')->find($shop_id)) {
            $this->error('没有该商家');
            die;
        }
		
        $Life = D('Life');
        import('ORG.Util.Page'); // 导入分页类
		$map = array('audit' => 1,'city_id'=>$this->city_id,'user_id'=>$detail['user_id'],);
        $count = $Life->where($map)->count(); // 查询满足要求的总记录数 
        $Page = new Page($count, 25); // 实例化分页类 传入总记录数和每页显示的记录数
        $show = $Page->show(); // 分页显示输出
        $var = C('VAR_PAGE') ? C('VAR_PAGE') : 'p';
        $p = $_GET[$var];
        if ($Page->totalPages < $p) {
            die('0');
        }
        $list = $Life->where($map)->order(array('top_date' => 'desc', 'last_time' => 'desc'))->limit($Page->firstRow . ',' . $Page->listRows)->select();
	
        $this->assign('list', $list); // 赋值数据集
        $this->assign('page', $show); // 赋值分页输出
		$this->display();
    }
	
	public function news() {
        $shop_id = (int) $this->_get('shop_id');
        if (!$detail = D('Shop')->find($shop_id)) {
            $this->error('没有该商家');
            die;
        }
        if ($detail['closed']) {
            $this->error('该商家已经被删除');
            die;
        }
        $this->assign('nextpage', LinkTo('shop/newsload', array('shop_id' => $shop_id, 't' => NOW_TIME, 'p' => '0000')));
        $this->assign('detail', $detail);
        $this->display();

    }
	
	public function newsload() {
        $shop_id = (int) $this->_get('shop_id');
        if (!$detail = D('Shop')->find($shop_id)) {
            $this->error('没有该商家');
            die;
        }
        if ($detail['closed']) {
            $this->error('该商家已经被删除');
            die;
        }
        $article = D('Article');
        import('ORG.Util.Page'); // 导入分页类
		$map = array('audit' => 1,'city_id'=>$this->city_id,'shop_id'=>$shop_id,);
	
        $count = $article->where($map)->count(); // 查询满足要求的总记录数 
        $Page = new Page($count, 10); // 实例化分页类 传入总记录数和每页显示的记录数
        $show = $Page->show(); // 分页显示输出
        $var = C('VAR_PAGE') ? C('VAR_PAGE') : 'p';
        $p = $_GET[$var];
        if ($Page->totalPages < $p) {
            die('0');
        }
        $list = $article->where($map)->order(array('create_time' => 'desc'))->limit($Page->firstRow . ',' . $Page->listRows)->select();
        $this->assign('list', $list); // 赋值数据集
        $this->assign('page', $show); // 赋值分页输出
        $this->display();

    }
	
	//增加优惠劵
	public function mall() {
         $shop_id = (int) $this->_get('shop_id');
        if (!$detail = D('Shop')->find($shop_id)) {
            $this->error('没有该商家');
            die;
        }
        if ($detail['closed']) {
            $this->error('该商家已经被删除');
            die;
        }
        $this->assign('detail', $detail);
        $this->assign('nextpage', LinkTo('shop/mallload', array('shop_id' => $shop_id, 't' => NOW_TIME, 'keyword' => $keyword, 'p' => '0000')));
        $this->display(); // 输出模板   
    }
	
	public function mallonload() {
        $shop_id = (int) $this->_get('shop_id');
        $Goods = D('Goods');//定义数据库
        import('ORG.Util.Page'); // 导入分页类
        $map = array('closed' => 0,'audit' => 1, 'shop_id' => $shop_id, 'end_date' => array('ELT', TODAY));//查询当前shop下面的团购
        $count = $Goods->where($map)->count(); // 查询满足要求的总记录数 
        $Page = new Page($count, 5); // 实例化分页类 传入总记录数和每页显示的记录数
        $show = $Page->show(); // 分页显示输出
        $list = $Goods->where($map)->order(array('goods_id' => 'desc'))->limit($Page->firstRow . ',' . $Page->listRows)->select();
		$this->assign('list',$list);
		
        $this->display(); // 输出模板   
    }
	
	 public function recognition(){
        $shop_id = (int) $this->_get('shop_id');
        if (!($detail = D('Shop')->find($shop_id))) {
            $this->error('没有该商家');
            die;
        }
        if ($detail['closed']) {
            $this->error('该商家已经被删除');
            die;
        }
        if ($this->isPost()) {
            $data = $this->checkFields($this->_post('data', false), array('name', 'mobile', 'content'));
            if (D('Shop')->find(array('where' => array('user_id' => $this->uid)))) {
                $this->fengmiMsg('您已经拥有一家店铺了！不能认领了！', U('store/index/index'));
            }
            if (D('Shoprecognition')->where(array('user_id' => $this->uid))->find()) {
                $this->fengmiMsg('您已经认领过一家商铺了，不能认领了哦！');
            }
            $data['user_id'] = (int) $this->uid;
            $data['shop_id'] = (int) $shop_id;
            $data['name'] = htmlspecialchars($data['name']);
            if (empty($data['name'])) {
                $this->fengmiMsg('称呼不能为空');
            }
            $data['content'] = htmlspecialchars($data['content']);
            if (empty($data['content'])) {
                $this->fengmiMsg('留言不能为空');
            }
            $data['mobile'] = htmlspecialchars($data['mobile']);
            if (empty($data['mobile'])) {
                $this->fengmiMsg('手机不能为空');
            }
            if (!isMobile($data['mobile'])) {
                $this->fengmiMsg('手机格式不正确');
            }
            $data['create_time'] = NOW_TIME;
            $data['create_ip'] = get_client_ip();
            $obj = D('Shoprecognition');
            $data['code'] = $obj->getCode();
            //保证唯一性
            if ($obj->add($data)) {
			   $mobile = $this->_CONFIG['site']['config_mobile'];
			  //通知用户
               if($this->_CONFIG['sms']['dxapi'] == 'dy'){
                    D('Sms')->DySms($this->_CONFIG['site']['sitename'], 'sms_shop_recognition_admin', $mobile, array(
							'shop_name' => $detail['shop_name'],
							'name' => $data['name'], 
                        ));
                }
            }
            $this->fengmiMsg('恭喜，认领成功，等待管理员审核',U('mobile/shop/index'));
        } else {
            $this->assign('shop_id', $shop_id);
            $this->assign('detail', $detail);
            $this->display();
        }
    }
	
	public function breaks($shop_id) { //优惠买单
        if (!$this->uid) {
            $this->error('请登录',U('passport/login'));
        }
        $shop_id = (int) $shop_id;
        if (!$shop_id) {
            $this->error('该商家没有设置买单优惠');
        } elseif (!$detail = D('Shopyouhui')->where(array('shop_id'=>$shop_id,'is_open'=>1))->find()) {
            $this->error('该商家没有设置买单优惠或已关闭');
        }
        if ($this->isPost()) {
            $amount = floatval($_POST['amount']);
            if(empty($amount)){
                $this->fengmiMsg('消费金额不能为空');
            }
            $exception = floatval($_POST['exception']);
            $need_pay = D('Shopyouhui')->get_amount($shop_id, $amount, $exception);
            $data = array(
                'shop_id' => $shop_id,
                'user_id' => $this->uid,
                'amount' => $amount,
                'exception' => $exception,
                'need_pay' => $need_pay,
                'create_time' => NOW_TIME,
                'create_ip' => get_client_ip(),
            );
            if ($order_id = D('Breaksorder')->add($data)) {
                $this->fengmiMsg('创建订单成功！', U('shop/breakspay', array('order_id' => $order_id)),U('shop/breakspay', array('order_id' => $order_id)));
            } else {
                $this->fengmiMsg('创建订单失败！');
            }
        } else {
            $this->assign('detail', $detail);
            $this->mobile_title = '优惠买单';
            $this->display();
        }
    }

    public function breakspay() {
        if (empty($this->uid)) {
           $this->error('请登录',U('passport/login'));
        }
        $order_id = (int) $this->_get('order_id');
        $order = D('Breaksorder')->find($order_id);
        if (empty($order) || $order['status'] != 0 || $order['user_id'] != $this->uid) {
            $this->fengmiMsg('该订单不存在');
        }
        $shop = D('Shop')->find($order['shop_id']);
        $this->assign('payment', D('Payment')->getPayments(true));
        $this->assign('shop', $shop);
        $this->assign('order', $order);
        $this->display();
    }

    public function breakspay2() {
        if (empty($this->uid)) {
            $this->error('请登录',U('passport/login'));
        }
        $order_id = (int) $this->_get('order_id');
        $order = D('Breaksorder')->find($order_id);
        if (empty($order) || (int) $order['status'] != 0 || $order['user_id'] != $this->uid) {
            $this->fengmiMsg('该订单不存在');
        }
        if (!$code = $this->_post('code')) {
            $this->fengmiMsg('请选择支付方式！');
        }
        $logs = D('Paymentlogs')->getLogsByOrderId('breaks', $order_id);
        if (empty($logs)) {
            $logs = array(
                'type' => 'breaks',
                'user_id' => $this->uid,
                'order_id' => $order_id,
                'code' => $code,
                'need_pay' => $order['need_pay']*100,
                'create_time' => NOW_TIME,
                'create_ip' => get_client_ip(),
                'is_paid' => 0
            );
            $logs['log_id'] = D('Paymentlogs')->add($logs);
        } else {
            $logs['need_pay'] = $order['need_pay']*100;
            $logs['code'] = $code;
            D('Paymentlogs')->save($logs);
        }
        $this->fengmiMsg('买单订单设置完毕，即将进入付款。', U('payment/payment', array('log_id' => $logs['log_id'])));
    }
	
}

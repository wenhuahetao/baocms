<?php
class LifeAction extends CommonAction {

    protected $lifecate = array();
    private $create_fields = array('title','city_id', 'cate_id', 'area_id', 'business_id', 'text1', 'text2', 'text3', 'num1', 'num2', 'select1', 'select2', 'select3', 'select4', 'select5', 'photo', 'contact', 'mobile', 'qq', 'addr','lng','lat');

    public function _initialize() {
        parent::_initialize();
		$life = (int)$this->_CONFIG['operation']['life'];
		if ($life == 0) {
				$this->error('此功能已关闭');
				die;
		}
        $this->lifecate    = D('Lifecate')->fetchAll();
        $this->lifechannel = D('Lifecate')->getChannelMeans();
        $this->assign('lifecate', $this->lifecate);
        $this->assign('channel',  $this->lifechannel);
		//二开
		$this->cates = D('Lifecate')->fetchAll();
        $this->assign('cates', $this->cates);
		
		$life_code = session('life_code');//获取life_code
		
		
    }

    public function index() {
        foreach($this->lifechannel as $k=>$channel){
            foreach($this->lifecate as $k1=>$cate){
                if($k==$cate['channel_id']){
                    $list[$k]['cate'][]= $cate;
                    if(!isset($list[$k]['channel'])){
                       $list[$k]['channel']  = $channel;
                    }    
                }
            }
        }   
        $this->assign('list',$list);
        $this->display(); // 输出模板   
    }
	//发布分类信息
	 public function release() {
        foreach($this->lifechannel as $k=>$channel){
            foreach($this->lifecate as $k1=>$cate){
                if($k==$cate['channel_id']){
                    $list[$k]['cate'][]= $cate;
                    if(!isset($list[$k]['channel'])){
                       $list[$k]['channel']  = $channel;
                    }    
                }
            }
        }   
        $this->assign('list',$list);
        $this->display(); // 输出模板   
    }

    public function channel() {
        $map = $linkArr = array();
        if ($channel = (int) $this->_param('channel')) {
            $cates_ids = array();
            foreach ($this->lifecate as $val) {
                if ($val['channel_id'] == $channel) {
                    $cates_ids[] = $val['cate_id'];
                }
            }
            if (!empty($cates_ids))
                $map['cate_id'] = array('IN', $cates_ids); //这个保留 因为下面有 cate_id 的时候 会覆盖条件     
            $this->assign('cates_ids', $cates_ids);
            $this->assign('channel_id', $channel);
            $linkArr['channel'] = $channel;
        }
        $this->assign('linkArr', $linkArr);
        $linkArr['p'] = '0000';
        $this->assign('nextpage', U('life/load', $linkArr));
        $this->display(); // 输出模板
    }

    public function load() {
        $Life = D('Life');
        import('ORG.Util.Page'); // 导入分页类
		$map = array('audit' => 1,'city_id'=>$this->city_id,'closed'=>0);

        if ($channel = (int) $this->_param('channel')) {
            $cates_ids = array();
            foreach ($this->lifecate as $val) {
                if ($val['channel_id'] == $channel) {
                    $cates_ids[] = $val['cate_id'];
                }
            }
        }
        if (!empty($cates_ids)) {
            $map['cate_id'] = array('IN', $cates_ids);
        } else {
            die('0');
        }
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
        $this->display(); // 输出模板
    }

    public function lists() {
        $cat = (int) $this->_param('cat');
        $cate = $this->lifecate[$cat];
        if (empty($cate)) {
            $this->error('请选择分类！');
        }
        $linkArr = array('cat' => $cat, 'area' => 0, 's1' => 0, 's2' => 0, 's3' => 0, 's4' => 0, 's5' => 0);
        $this->assign('cate', $cate);
        $attrs = D('Lifecateattr')->getAttrs($cat);
        for ($i = 1; $i <= 5; $i++) {
            if (!empty($cate['select' . $i])) {
                $s{$i} = (int) $this->_param('s' . $i);
                if ($attrs['select' . $i][$s{$i}]) {
					$map['select' . $i] = $s{$i};//解决搜索问题
                    $this->assign('s' . $i, $s{$i});
                    $linkArr['s' . $i] = $s{$i};
                }
            }
        }
        $area = (int) $this->_param('area');
        if (!empty($area)) {
            $linkArr['area'] = $area;
            $this->assign('area', $area);
        }
        $this->assign('areas', D('Area')->fetchAll());
		 $this->assign('city_id', $this->city_id);//查询城市
        $this->assign('business', D('Business')->fetchAll());
        $this->assign('attrs', $attrs);
        $this->assign('linkArr', $linkArr);
        $linkArr['p'] = '0000';
        $this->assign('nextpage', U('life/loaddata', $linkArr));
        $this->display(); // 输出模板
    }

    public function loaddata() {

        $Life = D('Life');
        import('ORG.Util.Page'); // 导入分页类
       // $map = array('audit' => 1);
	    $map = array('city_id' => $this->city_id,'audit' => 1,'closed'=>0);//获取城市ID
		
        $cat = (int) $this->_param('cat');

        $cate = $this->lifecate[$cat];
        if (empty($cate)) {
            $this->error('请选择分类！1');
        }
        $linkArr = array('cat' => $cat, 'area' => 0, 's1' => 0, 's2' => 0, 's3' => 0, 's4' => 0, 's5' => 0);
        $this->assign('cate', $cate);
        $map['cate_id'] = $cat;

        $attrs = D('Lifecateattr')->getAttrs($cat);
        for ($i = 1; $i <= 5; $i++) {
            if (!empty($cate['select' . $i])) {
                $s{$i} = (int) $this->_param('s' . $i);
                if ($attrs['select' . $i][$s{$i}]) {
					$map['select' . $i] = $s{$i};//解决搜索问题
                    $this->assign('s' . $i, $s{$i});
                    $linkArr['s' . $i] = $map['select' . $i] = $s{$i};
                }
            }
        }
        $area = (int) $this->_param('area');
        if (!empty($area)) {
            $map['area_id'] = $area;
            $this->assign('area', $area);
        }

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
        $this->assign('areas', D('Area')->fetchAll());
        $this->assign('business', D('Business')->fetchAll());
        $this->assign('attrs', $attrs);
        $this->assign('linkArr', $linkArr);
        $this->display(); // 输出模板
    }

    public function detail($life_id) {
        if (empty($life_id)) {
            $this->error('参数错误');
        }
        if (!$detail = D('Life')->find($life_id)) {
            $this->error('该消息不存在或者已经删除！');
        }
		 if ($detail['audit'] != 1) {
            $this->error('该消息不存在或者已经删除！');
        }
        if ($detail['closed'] != 0) {
            $this->error('该消息不存在或者已经删除！');
        }
        $cate = $this->lifecate[$detail['cate_id']];
        if (empty($cate)) {
            $this->error('该信息不能正常显示！');
        }
		D('Life')->updateCount($life_id, 'views');
        $this->assign('cate', $cate);
		$this->assign('city_id', $this->city_id);//添加获取城市
        $this->assign('areas', D('Area')->fetchAll());
        $this->assign('business', D('Business')->fetchAll());
        $this->assign('detail', $detail);
        $this->assign('ex', D('Lifedetails')->find($life_id));
        $attrs = D('Lifecateattr')->getAttrs($detail['cate_id']);
		//二次开发分类信息SEO
		$ex = D('Lifedetails')->find($detail['life_id']);
		$chl = D('Lifecate')->getChannelMeans();
		$this->seodatas['title'] = $detail['title'];
		$this->seodatas['channel'] = $chl[$this->cates[$detail['cate_id']]['channel_id']];
		$this->seodatas['cate'] = $this->cates[$detail['cate_id']]['cate_name'];
		
		if(!empty($detail['num2'])){
			$this->seodatas['num'] =  $detail['num2'];
		}else{
			$this->seodatas['num'] = $detail['num1'];
		}
		
		if(!empty($detail['text1'])){
			$this->seodatas['text1'] =  $detail['text1'];
		}else{
			$this->seodatas['text1'] =  '最新';
		}
		
		if(!empty($ex[details])){
			$this->seodatas['desc'] =  bao_Msubstr($ex['details'],0,200,false);
		}else{
			$this->seodatas['desc'] =  $detail['title'];
		}
		//二次开发结束
		$this->assign('pics', D('Lifephoto')->getPics($detail['life_id']));//调用图片
        $this->display();
    }

    public function fabu($cat) {
        if (empty($this->uid)) {
            $this->error('您还未登录', U('passport/login'));
        }

        $cat = (int) $cat;
        $cate = $this->lifecate[$cat];
        if (empty($cate)) {
            $this->display('post');
        }
        if ($this->isPost()) {
            $data = $this->createCheck();
            $shop = D('Shop')->find(array("where" => array('user_id' => $this->uid, 'closed' => 0, 'audit' => 1)));
            if ($shop) {
                $data['is_shop'] = 1;
            }
            $data['user_id'] = $this->uid;
			$data['city_id'] = $this->city_id;
            $data['cate_id'] = $cat;
            $details = $this->_post('details', 'SecurityEditorHtml');
            if ($words = D('Sensitive')->checkWords($details)) {
                $this->fengmiMsg('商家介绍含有敏感词：' . $words);
            }
            if ($life_id = D('Life')->add($data)) {

                if ($details) {
                    D('Lifedetails')->updateDetails($life_id, $details);
                }
				
                $photos = $this->_post('photo', false);
                if (!empty($photos)) {
                    D('Lifephoto')->upload($life_id, $photos);
                }
				
                $this->fengmiMsg('发布信息成功，通过审核后将会显示！', U('life/index'));
            }
            $this->fengmiMsg('发布信息失败！');
        } else {
            $lat = cookie('lat');
            $lng = cookie('lng');
            if (empty($lat) || empty($lng)) {
                $lat = $this->_CONFIG['site']['lat'];
                $lng = $this->_CONFIG['site']['lng'];
            }
            $this->assign('areas', D('Area')->fetchAll());
            $this->assign('business', D('Business')->fetchAll());
            $this->assign('cate', $cate);
            $attrs = D('Lifecateattr')->getAttrs($cat);
            $this->assign('attrs', $attrs);
            $this->assign('lng', $lng);
            $this->assign('lat', $lat);
			if (!empty($cate)) {
				$this->display('');
			}
        }
    }

    private function createCheck() {
        $data = $this->checkFields($this->_post('data', false), $this->create_fields);
        $data['title'] = htmlspecialchars($data['title']);
        if (empty($data['title'])) {
            $this->fengmiMsg('标题不能为空');
        }

        $data['area_id'] = (int) $data['area_id'];
        if (empty($data['area_id'])) {
            $this->fengmiMsg('地区不能为空');
        }
        $data['business_id'] = (int) $data['business_id'];
        if (empty($data['business_id'])) {
            $this->fengmiMsg('商圈不能为空');
        }
		
	   $data['photo'] = htmlspecialchars($data['photo']);
        if (!empty($data['photo']) && !isImage($data['photo'])) {
            $this->fengmiMsg('缩略图格式不正确');
        }
		 
		 
        $data['lng'] = htmlspecialchars(trim($data['lng']));
        $data['lat'] = htmlspecialchars(trim($data['lat']));
        $data['text1'] = htmlspecialchars($data['text1']);
        $data['text2'] = htmlspecialchars($data['text2']);
        $data['text3'] = htmlspecialchars($data['text3']);
        $data['num1'] = (int) $data['num1'];
        $data['num2'] = (int) $data['num2'];
        $data['select1'] = (int) $data['select1'];
        $data['select2'] = (int) $data['select2'];
        $data['select3'] = (int) $data['select3'];
        $data['select4'] = (int) $data['select4'];
        $data['select5'] = (int) $data['select5'];
        $data['urgent_date'] = TODAY;
        $data['top_date'] = TODAY;
        $data['contact'] = htmlspecialchars($data['contact']);
        if (empty($data['contact'])) {
            $this->fengmiMsg('联系人不能为空');
        } $data['mobile'] = htmlspecialchars($data['mobile']);
        if (empty($data['mobile'])) {
            $this->fengmiMsg('电话不能为空');
        }
        if (!isMobile($data['mobile']) && !isPhone($data['mobile'])) {
            $this->fengmiMsg('电话格式不正确');
        }
        $data['qq'] = htmlspecialchars($data['qq']);
        $data['addr'] = htmlspecialchars($data['addr']);
        $data['views'] = (int) $data['views'];
        $data['create_time'] = NOW_TIME;
        $data['last_time'] = NOW_TIME + 86400*30;
        $data['create_ip'] = get_client_ip();
        return $data;
    }

    public function business($area_id) {
        $datas = D('Business')->fetchAll();
        $str = '<option value="0">请选择</option>';
        foreach ($datas as $val) {
            if ($val['area_id'] == $area_id) {
                $str.='<option value="' . $val['business_id'] . '">' . $val['business_name'] . '</option>';
            }
        }
        echo $str;
        die;
    }


    public function report($life_id) {
        if (empty($this->uid)) {
			$this->fengmiMsg('请先登陆', U('mobile/passport/login'));
        }
        $life_id = (int) $life_id;
        if (!$detail = D('Life')->find($life_id)) {
            $this->fengmiMsg('该信息不存在');
        }
        if (D('Lifereport')->check($life_id, $this->uid)) {
            $this->fengmiMsg('您已经举报过了！');
        }
        $arr = array(
            'user_id' => $this->uid,
            'life_id' => $life_id,
            'create_time' => NOW_TIME,
            'create_ip' => get_client_ip()
        );
        D('Lifereport')->add($arr);
        $this->fengmiMsg('举报成功', U('life/detail', array('life_id' => $life_id)));
    }
	
	public function search (){
		$keyword = $this->_param('keyword', 'htmlspecialchars');
        $this->assign('keyword', $keyword);
		
		$cat = (int) $this->_param('cat');
        $this->assign('cat', $cat);
		
        $order = (int) $this->_param('order');
		$this->assign('order', $order);
		
        $area_id = (int) $this->_param('area_id');
        $this->assign('area_id', $area_id);
		
        $this->assign('nextpage', LinkTo('life/searchload', array('keyword' => $keyword,'cat' => $cat,'order' => $order, 't' => NOW_TIME,  'p' => '0000')));
		$this->display();
    }
	
	public function searchload() {
		$keyword = $this->_param('keyword');
        if ($keyword) {
            $map['qq|mobile|contact|title|num1|num2'] = array('LIKE', '%' . $keyword . '%');
            $this->assign('keyword', $keyword);
        }
        $Life = D('Life');
        import('ORG.Util.Page'); 
        $count = $Life->where(array('audit' => 1,'city_id'=>$this->city_id, 'closed' => 0))->count(); 
        $Page = new Page($count, 25); 
        $show = $Page->show();
        $var = C('VAR_PAGE') ? C('VAR_PAGE') : 'p';
        $p = $_GET[$var];
        if ($Page->totalPages < $p) {
            die('0');
        }
        $list = $Life->where($map)->order(array('top_date' => 'desc', 'last_time' => 'desc'))->limit($Page->firstRow . ',' . $Page->listRows)->select();
        $this->assign('list', $list); 
        $this->assign('page', $show);
		$this->display();
    }
	


	public function phonedelete() {
		$keyword = $this->_param('keyword');
        if ($keyword) {
            $map['mobile'] = array('LIKE', '%' . $keyword . '%');
            $this->assign('keyword', $keyword);
            $linkArr['keyword'] = $keyword;
        }
        $Life = D('Life');
        import('ORG.Util.Page'); // 导入分页类
		$map['mobile'] = array('eq', $keyword);
		$map['audit'] = array('eq', 1);
		$map['closed'] = array('eq', 0);
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
	
   public function life_mobile(){
        $this->life_yzm();
    }
	
	 public function delete(){
		 
		 //找到提交上来的life_id，再判断下session('code');跟提交上来code是否相等，如果是，就删除这个分类信息，如果不是就提示错误。
        $life_id = (int)$this->_param('life_id');
		$yzm = $this->_post('yzm');
		
		//$this->ajaxReturn(array('status'=>'error','msg'=>$life_id));
		
		$life_code = session('life_code');//获取session
	
	if(empty($yzm))
		$this->ajaxReturn(array('status' => 'error', 'msg' => '请输入验证码！'));
		
		if ($yzm != $life_code) {
          $this->ajaxReturn(array('status' => 'error', 'msg' => '短信验证码不正确！'));
       }
	   
        if(empty($life_id)){
            $this->ajaxReturn(array('status'=>'error','msg'=>'预约不存在'));
        }
		
		
		
        if(!$detail = D('Life')->find($life_id)){
            $this->ajaxReturn(array('status'=>'error','msg'=>'预约不存在'));
        }
        if(D('Life')->save(array('life_id' => $life_id, 'closed' => 1))){
            $this->ajaxReturn(array('status'=>'success','msg'=>'恭喜您删除成功'));
        }else{
			$this->ajaxReturn(array('status'=>'error','msg'=>'操作失败'));
		}
    }
    
	
}

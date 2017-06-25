<?php
class CunAction extends CommonAction {

	public function index($area = 0)
	{
		$areas = D("Area")->fetchAll();
		$this->assign("nextpage", LinkTo("cun/loadtown", array("area" => $area,  't' => NOW_TIME, "p" => "0000")));
		$this->assign("areas", $areas);
		$this->assign("area", $area);
		$this->display();
	}

	public function loadtown($area = 0){
		 import('ORG.Util.Page'); // 导入分页类
		$map = array();

		if ($area != 0) {
			$map["area"] = $area;
		}

		$count = D("Town")->where($map)->count();
		$Page = new Page($count, 8); // 实例化分页类 传入总记录数和每页显示的记录数
        $show = $Page->show(); // 分页显示输出
        $var = C('VAR_PAGE') ? C('VAR_PAGE') : 'p';
        $p = $_GET[$var];
        if ($Page->totalPages < $p) {
            die('0');
        }

		$list = D("Town")->where($map)->order("id desc")->limit($Page->firstRow . "," . $Page->listRows)->select();
		$this->assign("list", $list);
		$this->display();
	}

	public function town($id)
	{
		$detail = D("Town")->find($id);
		$this->assign("detail", $detail);
		$this->display();
	}

	public function post()
	{
		$this->display();
	}

	public function offer()
	{
		if (empty($this->uid)) {
			$this->niuLogin();
		}

		if ($this->isPost()) {
			$data['data'] = htmlspecialchars($data['data']);
			$data['ssid'] = (int) $data['ssid'];
            $photos = $this->_post('photos', false);
			
			//$data['photo'] = htmlspecialchars($data['photo']);
			if (!empty($data['photo']) && !isImage($data['photo'])) {
				$this->fengmiMsg('缩略图格式不正确');
			}

			if ($ssid != session("ssid")) {
				$this->fengmiError("请不要重复提交发布！");
			}

			if (empty($data["area"])) {
				$this->fengmiError("请选择信息所在区县！");
			}

			if (empty($data["town"])) {
				$this->fengmiError("请选择信息所在乡镇！");
			}

			if (empty($data["cun"])) {
				$this->fengmiError("请选择信息所在村社！");
			}

			if (empty($data["title"])) {
				$this->fengmiError("请输入供应产品名称！");
			}

			if (empty($data["total"])) {
				$this->fengmiError("请输入供应的总数量！");
			}

			$data["price"] = (int) $data["price"];

			if (empty($data["unit"])) {
				$this->fengmiError("请填写供应产品单位！");
			}

			$data["content"] = htmlspecialchars($data["content"]);

			if (empty($data["content"])) {
				$this->fengmiError("请填写供应产品描述！");
			}

			if (empty($data["name"])) {
				$this->fengmiError("请填写联系人的称呼！");
			}

			if (empty($data["mobile"])) {
				$this->fengmiError("请填写联系手机号码！");
			}

			if (!isMobile($data["mobile"])) {
				$this->fengmiError("填写手机号码不正确！");
			}

			if (empty($data["end_time"])) {
				$this->fengmiError("请选择信息结束日期！");
			}

			$data["end_time"] = strtotime($data["end_time"]);
			$data["uid"] = $this->uid;
			$data["type"] = 1;
			$data['create_time'] = NOW_TIME;
			$data['create_ip'] = get_client_ip();

			if (D('Cuninfo')->add($data)) {
				$this->fengmiSuccess("信息发布成功了！", LinkTo("cun/info", array("type" => 1)));
			}

			$this->fengmiError("信息发布失败！");
		}

		$ssid = NOW_TIME;
		session('ssid', $ssid);
		$this->assign("ssid", $ssid);
		$areas = D("Area")->fetchAll();
		$this->assign("areas", $areas);
		$this->display();
	}

	public function need()
	{
		if (empty($this->uid)) {
			$this->niuLogin();
		}

		if ($this->isPost()) {
			$data['data'] = htmlspecialchars($data['data']);
			$data['ssid'] = (int) $data['ssid'];

			if ($ssid != session("ssid")) {
				$this->fengmiError("请不要重复提交发布！");
			}

			if (empty($data["area"])) {
				$this->fengmiError("请选择需求所在区县！");
			}

			if (empty($data["town"])) {
				$this->fengmiError("请选择需求所在乡镇！");
			}

			if (empty($data["cun"])) {
				$this->fengmiError("请选择需求所在村社！");
			}

			if (empty($data["title"])) {
				$this->fengmiError("请输入需求产品名称！");
			}

			if (empty($data["total"])) {
				$this->fengmiError("请输入需求的总数量！");
			}

			$data["price"] = (int) $data["price"];

			if (empty($data["unit"])) {
				$this->fengmiError("请填写需求产品单位！");
			}

			$data["content"] = htmlspecialchars($data["content"]);

			if (empty($data["content"])) {
				$this->fengmiError("请填写更多详细要求！");
			}

			if (empty($data["name"])) {
				$this->fengmiError("请填写联系人的称呼！");
			}

			if (empty($data["mobile"])) {
				$this->fengmiError("请填写联系手机号码！");
			}

			if (!isMobile($data["mobile"])) {
				$this->fengmiError("填写手机号码不正确！");
			}

			if (empty($data["end_time"])) {
				$this->fengmiError("请选择信息结束日期！");
			}

			$data["end_time"] = strtotime($data["end_time"]);
			$data["uid"] = $this->uid;
			$data["type"] = 2;
			$data['create_time'] = NOW_TIME;
			$data['create_ip'] = get_client_ip();

			if (D('Cuninfo')->add($data)) {
				$this->fengmiSuccess("信息发布成功了！", LinkTo("cun/info", array("type" => 2)));
			}

			$this->fengmiError("信息发布失败！");
		}

		$ssid = NOW_TIME;
		session('ssid', $ssid);
		$this->assign("ssid", $ssid);
		$areas = D("Area")->fetchAll();
		$this->assign("areas", $areas);
		$this->display();
	}

	public function stown($area_id = 0){
		$datas = D("Town")->where(array("area" => $area_id))->select();
		$str = "<option value=\"\">请选择</option>\n\r";

		foreach ($datas as $var ) {
			$str .= "<option value=\"" . $var["id"] . "\">" . $var["name"] . "</option>\n\r";
		}

		echo $str;
		exit();
	}

	public function scun($id = 0){
		$datas = D("Cun")->where(array("town" => $id))->select();
		$str = "<option value=\"\">请选择</option>\n\r";

		foreach ($datas as $var ) {
			$str .= "<option value=\"" . $var["id"] . "\">" . $var["name"] . "</option>\n\r";
		}

		echo $str;
		exit();
	}

	public function info(){
		$type = (int) $type;
		$this->assign("type", $type);
		$town = (int) $town;
		$this->assign("town", $town);
		$area = (int) $area;
		$this->assign("area", $area);
		$areas = D("Area")->fetchAll();
		$this->assign("areas", $areas);

		if ($area != 0) {
			$towns = D("Town")->where(array("area" => $area))->select();
			$this->assign("towns", $towns);
		}

		$this->assign("nextpage", LinkTo("cun/loadinfo", array("type" => $type, "area" => $area, "town" => $town, "t" => NOW_TIME, "p" => "0000")));
		$this->display();
	}

	public function loadinfo(){
		 import('ORG.Util.Page'); // 导入分页类
		$obj = D("Cuninfo");
		$map = array("audit" => 0, "closed" => 0);

		if ($keyword = $this->_param("keyword", "", "htmlspecialchars")) {
			$map["title"] = array("LIKE", "%" . $keyword . "%");
		}

		$type = (int) $type;

		if ($type) {
			$map["type"] = $type;
		}
        $area = (int) $area;

		if ($area) {
			$map["area"] = $area;
		}

		$order = $this->_param("order", "", "htmlspecialchars");
		$count = $obj->where($map)->count();
		 $Page = new Page($count, 10); // 实例化分页类 传入总记录数和每页显示的记录数
        $show = $Page->show(); // 分页显示输出

        $var = C('VAR_PAGE') ? C('VAR_PAGE') : 'p';
        $p = $_GET[$var];
        if ($Page->totalPages < $p) {
            die('0');
        }

		$list = $obj->where($map)->order("id desc")->limit($Page->firstRow . "," . $Page->listRows)->select();

		foreach ($list as $key => $val ) {
			if (!empty($val[photo])) {
				$photo = $list($val["photo"]);//有错误
				$list[$key]["photo"] = $photo[0];
			}

			$cun_ids[$val["cun"]] = $val["cun"];
			$town_ids[$val["town"]] = $val["town"];
		}

		if (!empty($cun_ids)) {
			$cuns = D("Cun")->itemsByIds($cun_ids);
			$this->assign("cuns", $cuns);
		}

		if (!empty($town_ids)) {
			$towns = D("Town")->itemsByIds($town_ids);
			$this->assign("towns", $towns);
		}

		$this->assign("list", $list);
		$this->assign("page", $show);
		$this->display();
	}

	public function detail($id)
	{
		$detail = D("Cuninfo")->find($id);

		if (empty($detail)) {
			$this->error("没有这条信息记录！");
		}

		//$photo = Controller\json_decode($detail["photo"]);//有问题
		$area = D("Area")->find($detail["area"]);
		$town = D("Town")->find($detail["town"]);
		$cun = D("Cun")->find($detail["cun"]);
		$this->assign("area", $area);
		$this->assign("town", $town);
		$this->assign("cun", $cun);
		$this->assign("photo", $photo);
		$this->assign("detail", $detail);
		$this->display();
	}

	public function venient(){
        $$id = (int) $this->_param('id');
		if (!empty($id)) {
			$map = array();
			$map["type"] = 1;
			$map["res"] = $id;
			$detail = D("Venient")->where($map)->select($id);
		}

		$this->assign("detail", $detail);
		$this->display();
	}

	public function estimate()
	{
		$this->display();
	}

	public function charm()
	{
		$this->display();
	}

	public function special()
	{
		$this->display();
	}

	public function activity()
	{
		$this->display();
	}

	public function introduce()
	{
		$this->display();
	}
}


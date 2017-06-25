<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="zh-cn">
	<head>
		<meta charset="utf-8">
		<title>商家管理中心-<?php echo ($CONFIG["site"]["title"]); ?></title>
		<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
		<link rel="stylesheet" href="/static/default/wap/css/base.css">
		<link rel="stylesheet" href="/static/default/wap/css/<?php echo ($ctl); ?>.css"/>
        <link rel="stylesheet" href="/static/default/wap/css/store.css">
		<script src="/static/default/wap/js/jquery.js"></script>
		<script src="/static/default/wap/js/base.js"></script>
		<script src="/static/default/wap/other/layer.js"></script>
		<script src="/static/default/wap/other/roll.js"></script>
		<script src="/static/default/wap/js/public.js"></script>


        <script src="/static/default/wap/js/dingwei.js"></script>
		 <script>
            function bd_encrypt(gg_lat, gg_lon)   // 百度地图测距偏差 问题修复
            {
                var x_pi = 3.14159265358979324 * 3000.0 / 180.0;
                var x = gg_lon;
                var y = gg_lat;
                var z = Math.sqrt(x * x + y * y) + 0.00002 * Math.sin(y * x_pi);
                var theta = Math.atan2(y, x) + 0.000003 * Math.cos(x * x_pi);
                var bd_lon = z * Math.cos(theta) + 0.0065;
                var bd_lat = z * Math.sin(theta) + 0.006;
                dingwei('<?php echo U("mobile/index/dingwei",array("t"=>$nowtime,"lat"=>"llaatt","lng"=>"llnngg"));?>', bd_lat, bd_lon);

            }

            navigator.geolocation.getCurrentPosition(function (position) {
                bd_encrypt(position.coords.latitude, position.coords.longitude);
            });
        </script>
	</head>
	<body>   
<header class="top-fixed bg-yellow bg-inverse">
	<div class="top-back">
		<a class="top-addr" href="<?php echo U('store/index/index');?>"><i class="icon-angle-left"></i></a>
	</div>
	<div class="top-title">
		基本设置
	</div>
</header>

<style>
ul { padding-left: 0px;}
.xiaoqu-search { margin-top:2rem;}
</style>
<!-- 筛选TAB -->
<ul id="shangjia_tab">
        <li style="width: 25%;"><a href="<?php echo U('store/branch/index');?>">分店管理</a></li>
        <li style="width: 25%;"><a href="<?php echo U('store/worker/index');?>">员工管理</a></li>
        <li style="width: 25%;"><a href="<?php echo U('store/shop/about');?>" class="on" >基本设置</a></li>
        <li style="width: 25%;"><a href="<?php echo U('store/shop/photo/');?>">环境图</a></li>
</ul>	


<style>
.fabu-form .form-content {border: none;resize: none;width: 100%;height: 80px;padding: 10px;font-size: 12px;}
.fabu-form .form-content1 {border: none;resize: none;width: 100%;height: 150px;padding: 10px;font-size: 12px;}
.shuxing{width: 20px; height: 20px;margin-bottom: 10px;}
</style>
<div class="blank-40"></div>
<form class="fabu-form" method="post"  target="x-frame" action="<?php echo U('shop/about');?>">
<div class="row">
	<div class="line">
		<span class="x3">店铺地址：</span>
		<span class="x9">
			<input type="text" class="text-input" name="data[addr]" value="<?php echo (($SHOP["addr"])?($SHOP["addr"]):''); ?>" />
		</span>
	</div>
</div>

<div class="row">
	<div class="line">
		<span class="x3">联系人：</span>
		<span class="x9">
			<input type="text" class="text-input" name="data[contact]" value="<?php echo (($SHOP["contact"])?($SHOP["contact"]):''); ?>" />
		</span>
	</div>
</div>

<div class="row">
	<div class="line">
		<span class="x3">附近坐标：</span>
		<span class="x9">
			<input type="text" class="text-input" name="data[near]" value="<?php echo (($ex["near"])?($ex["near"]):''); ?>" />
		</span>
	</div>
</div>

<div class="row">
	<div class="line">
		<span class="x3">营业时间：</span>
		<span class="x9">
			<input type="text" class="text-input" name="data[business_time]" value="<?php echo (($ex["business_time"])?($ex["business_time"]):''); ?>" />
		</span>
	</div>
</div>

<div class="row">
	<div class="line">
		<span class="x3">配送时间：</span>
		<span class="x9">
			<input type="text" class="text-input" name="data[delivery_time]" value="<?php echo (($ex["delivery_time"])?($ex["delivery_time"]):'30'); ?>" />
		</span>
	</div>
</div>
<div class="blank-10 bg"></div>


<em class="text-small text-gray"><em>
	<div class="container">
		<div class="blank-10"></div>
		<p><span class="text-dot">小提示：</span> 下面内容选填，如需打印机联系电话：<?php echo ($CONFIG["site"]["tel"]); ?>购买</p>
    </div>   


<div class="row">
	<div class="line">
		<span class="x5">打印标识(apiKey)：</span>
		<span class="x7">
			<input type="text" class="text-input" name="data[apiKey]" value="<?php echo (($SHOP["apiKey"])?($SHOP["apiKey"]):''); ?>" />
		</span>
	</div>
</div>

<div class="row">
	<div class="line">
		<span class="x5">密钥(mKey)：</span>
		<span class="x7">
			<input type="text" class="text-input" name="data[mKey]" value="<?php echo (($SHOP["apiKey"])?($SHOP["apiKey"]):''); ?>" />
		</span>
	</div>
</div>

<div class="row">
	<div class="line">
		<span class="x5">密钥(mKey)：</span>
		<span class="x7">
			<input type="text" class="text-input" name="data[mKey]" value="<?php echo (($SHOP["mKey"])?($SHOP["mKey"]):''); ?>" />
		</span>
	</div>
</div>

<div class="row">
	<div class="line">
		<span class="x5">用户id(partner)：</span>
		<span class="x7">
			<input type="text" class="text-input" name="data[partner]" value="<?php echo (($SHOP["partner"])?($SHOP["partner"]):''); ?>" />
		</span>
	</div>
</div>

<div class="row">
	<div class="line">
		<span class="x5">打印机终端号：</span>
		<span class="x7">
			<input type="text" class="text-input" name="data[machine_code]" value="<?php echo (($SHOP["machine_code"])?($SHOP["machine_code"]):''); ?>" />
		</span>
	</div>
</div>


<div class="line border-bottom">
	<textarea class="form-content1" name="details" placeholder="店铺介绍，建议不超过200字！"><?php echo ($ex["details"]); ?></textarea>
</div> 
<div class="blank-10 bg"></div>  


  


	<div class="container">
		<div class="blank-30"></div>
		<button  type="submit" class="button button-block button-big bg-dot">确认编辑</button>
		<div class="blank-30"></div>
	</div>
</form>
   
    <footer class="foot-fixed">		
           <a class="foot-item <?php if(($ctl == 'index') AND ($act != 'more')): ?>active<?php endif; ?>" href="<?php echo U('index/index');?>">		
    	    <span class="icon icon-home"></span>		
        	<span class="foot-label">首页</span>		
            </a>		

            <a class="foot-item <?php if(($ctl) == "tuan"): ?>active<?php endif; ?>" href="<?php echo U('store/tuan/index');?>">		
            	<span class="icon icon-plus"></span>			
                <span class="foot-label">上单</span>
            </a>		
            
           <a class="foot-item <?php if(($ctl) == "mart"): ?>active<?php endif; ?>" href="<?php echo U('store/mart/index');?>">		
            	<span class="icon icon-recycle"></span>			
                <span class="foot-label">微店</span>
            </a>
            
            <a class="foot-item <?php if(($ctl) == "money"): ?>active<?php endif; ?>" href="<?php echo U('store/money/index');?>">		
            	<span class="icon icon-calendar"></span>			
                <span class="foot-label">结算</span>
            </a>
            
            <a class="foot-item <?php if(($ctl) == "dianping"): ?>active<?php endif; ?>" href="<?php echo U('store/dianping/index');?>">		
            	<span class="icon icon-commenting-o"></span>			
                <span class="foot-label">点评</span>
            </a>

            </footer>	
            <iframe id="x-frame" name="x-frame" style="display:none;"></iframe>
        </body>
 </html>
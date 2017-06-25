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
			分店地址
		</div>
		<div class="top-share">
			<a href="<?php echo U('store/branch/create');?>" class="top-addr icon-plus"> 增加</a>
		</div>
	</header>

<style>
ul { padding-left: 0px;}
.xiaoqu-search { margin-top:2rem;}
</style>
<!-- 筛选TAB -->
<ul id="shangjia_tab">
        <li style="width: 25%;"><a href="<?php echo U('store/branch/index');?>" class="on">分店管理</a></li>
        <li style="width: 25%;"><a href="<?php echo U('store/worker/index');?>">员工管理</a></li>
        <li style="width: 25%;"><a href="<?php echo U('store/shop/about');?>">基本设置</a></li>
        <li style="width: 25%;"><a href="<?php echo U('store/shop/photo/');?>">环境图</a></li>
</ul>	
	

	<div class="line xiaoqu-search">
		<form method="post"  action="<?php echo U('branch/index');?>" id="form1" class="form1">
			<div class="form-group">
				<div class="field">
					<div class="input-group">
						<span class="addbtn"><button type="button" class="button icon-search"></button></span>
						<input type="text" class="input" name="keyword" size="50" value="<?php echo ($keyword); ?>" placeholder="分店名称/地址"  />
						<span class="addbtn"><button type="submit" class="button">搜索</button></span>
					</div>
				</div>
			</div>
		</form>
	</div>

	<div class="xiaoqu-list">
		<ul id="xiaoqu-list">
        <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$var): $mod = ($i % 2 );++$i;?><li class="line">
                <div class="x10">	
                    <h5>分店名称：<?php echo ($var["name"]); ?> </h5>	
                    <p class="addr">所属城市：<?php echo ($city[$var['city_id']]['name']); ?></p>
                    <p class="addr">分店地址：<?php echo ($area[$var['area_id']]['area_name']); echo ($business[$var['business_id']]['business_name']); ?></p>
                    <p class="addr">申请时间：<?php echo (date('Y-m-d H:i',$var["create_time"])); ?></eq></p>
                    <p class="addr">审核状态：<?php if(($var["audit"]) == "0"): ?>等待审核<?php else: ?>正常<?php endif; ?></p>
                </div>
                <div class="x2">
                <a class="button button-small bg-blue"  href="<?php echo U('mobile/shop/shop',array('shop_id'=>$var['shop_id'],'branch_id'=>$var['branch_id']));?>">详情</a>
                <a class="button button-small margin-top bg-dot "  href="<?php echo U('branch/edit',array('branch_id'=>$var['branch_id']));?>">编辑</a>
                <a href="javascript:void(0);" rel="<?php echo ($var["branch_id"]); ?>"  class="jquery-delete button button-small margin-top bg-blue">删除</a>
                </div>
        </li>
        <div class="blank-10 bg"></div><?php endforeach; endif; else: echo "" ;endif; ?>

</ul> 

<script>
	$(document).ready(function () {
		$(document).on('click', ".jquery-delete", function (e) {
			var branch_id = $(this).attr('rel');
			layer.confirm('您确定要删除该分店？', {
				skin: 'layer-ext-demo', 
				area: ['50%', 'auto'], //宽高
				btn: ['是的', '不'], //按钮
				shade: false //不显示遮罩
			}, function () {
				$.post("<?php echo U('store/branch/delete');?>", {branch_id: branch_id}, function (result) {
					if (result.status == "success") {
						layer.msg(result.msg);
						setTimeout(function () {
							location.reload();
						}, 1000);
					} else {
						layer.msg(result.msg);
					}
				}, 'json');
			});
		});
	});
</script>

<div class="blank-20"></div>
<div class="container login-open">
<h5 style="text-align:center"><?php echo ($page); ?><!--分页代码不要忘记加--> </h5>
</div>
</div>
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
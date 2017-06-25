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
		店铺环境图管理
	</div>
    <div class="top-share">
        <a href="<?php echo U('store/shop/photo_create');?>" class="top-addr icon-plus"> 传图片</a>
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
        <li style="width: 25%;"><a href="<?php echo U('store/shop/about');?>">基本设置</a></li>
        <li style="width: 25%;"><a href="<?php echo U('store/shop/photo/');?>" class="on" >环境图</a></li>
</ul>	


<div class="list-media-x" id="list-media">
	<ul>
    <div class="blank-10 bg"></div> 
    <?php if(is_array($list)): foreach($list as $key=>$var): ?><li class="line">
          <dt><a class="x2">ID：<?php echo ($var["pic_id"]); ?></a><a class="x10 text-right text-gray">上传时间：<?php echo (date('Y-m-d H:i:s',$var["create_time"])); ?></a></dt>
          <dd class="zhong">
            <div class="x3">
                   <img src="__ROOT__/attachs/<?php echo ($var["photo"]); ?>" style="width:90%;">
              </div>
             <div class="9">
             	<?php if(!empty($var['title'])): ?><p class="text-small">标题：<?php echo ($var["title"]); ?></p>
                <?php else: ?>
                <p class="text-small">未设置标题</p><?php endif; ?>
                
                <p class="text-gray">排序：<?php echo ($var["orderby"]); ?>
                  <a href="javascript:void(0);" rel="<?php echo ($var["pic_id"]); ?>" class="jquery-delete button button-small bg-gray ">删除</a>
                  <?php if(($var["audit"]) == "0"): ?><a class="button button-small bg-gray">待审</a>
                  <?php else: ?>
                  <a class="button button-small bg-dot">正常</a><?php endif; ?>
                  </p>     
             </div>
          </dd>
        </li>
        <div class="blank-10 bg"></div><?php endforeach; endif; ?>
            
  </ul>
</div>

<script>
	$(document).ready(function () {
		$(document).on('click', ".jquery-delete", function (e) {
			var pic_id = $(this).attr('rel');
			layer.confirm('您确定要删除该图片？', {
				skin: 'layer-ext-demo', 
				area: ['50%', 'auto'], //宽高
				btn: ['是的', '不'], //按钮
				shade: false //不显示遮罩
			}, function () {
				$.post("<?php echo U('shop/photo_delete');?>", {pic_id: pic_id}, function (result) {
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
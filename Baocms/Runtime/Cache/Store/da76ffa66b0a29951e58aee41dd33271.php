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
			点评管理
		</div>
		<div class="top-share">
		
		</div>
	</header>

<style>ul { padding-left: 0px;}</style>
    

<!-- 筛选TAB -->
<ul id="shangjia_tab">
        <li style="width: 25%;"><a href="<?php echo U('dianping/index');?>" class="on">商家点评</a></li>
        <li style="width: 25%;"><a href="<?php echo U('dianping/tuan');?>">抢购点评</a></li>
        <li style="width: 25%;"><a href="<?php echo U('dianping/waimai');?>">外卖点评</a></li>
        <li style="width: 25%;"><a href="<?php echo U('dianping/ding');?>">订座点评</a></li>
</ul>









<div class="list-media-x" id="list-media">
	<ul>
   <?php if(is_array($list)): foreach($list as $key=>$var): ?><li class="line ">
        <dt><a class="x3">点评ID:<?php echo ($var["dianping_id"]); ?></a><a class="x9 text-right"><?php if(!empty($var['cost'])): ?>人均消费:<?php echo ($var["cost"]); ?>元<?php endif; ?></a></dt>
        
      <dd class="zhong">
            <div class="12">
            <p class="text-small">评价用户：<?php echo ($users[$var['user_id']]['nickname']); ?>  &nbsp; (ID:<?php echo ($var["user_id"]); ?>)</p>
            <p><span class="ui-starbar"><span style="width:<?php echo round($var['score']*20,2);?>%"></span></span></a></p>
            <p class="text-small">评价IP：<?php echo ($var["create_ip"]); ?>(来自<?php echo ($var["create_ip_area"]); ?>)</p>
          </div>
         </dd>
         
         
         <?php if(!empty($var['contents'])): ?><dt style="background: #F7F7F7;">
             <div class="x12">
             <span class="margin-right">评价内容：<?php echo ($var["contents"]); ?></span>
             </div>
         </dt><?php endif; ?> 
         
         <?php if(!empty($var['reply'])): ?><dt style="background:#FFE5E5;">
             <div class="x12">
             <span class="margin-right">商家回复:<?php echo ($var["reply"]); ?></span>
             </div>
         </dt><?php endif; ?> 
            
      <dl>
      <p class="text-left padding-top x6"><a class="text-smal text-dot1" style=" font-size:12px; letter-spacing:0px;">生效日期：<?php echo ($var["show_date"]); ?></a></p>
      <?php if(empty($var['reply'])): ?><p class="text-right padding-top x6"> <a href="<?php echo U('dianping/reply',array('dianping_id'=>$var['dianping_id']));?>" class="button button-small bg-dot">回复</a> </p>
      <?php else: ?>
      <p class="text-right padding-top x6"> <a class="button button-small bg-gray">商家已回复</a> </p><?php endif; ?>
      </dl>
    </li>
    <div class="blank-10 bg"></div><?php endforeach; endif; ?>   
    
  </ul>
</div> 



<div class="blank-20"></div>

<div class="container login-open">
<h5 style="text-align:center"><?php echo ($page); ?><!--分页代码不要忘记加--> </h5>
<div class="blank-20"></div>
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
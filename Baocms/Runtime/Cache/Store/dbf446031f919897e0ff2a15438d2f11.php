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
<style>
.xiaoqu-search { margin-top:2rem;}
.list-media-x { margin-top: 0.0rem !important;}
.list-media-x p {margin-top: .01rem; line-height:20px;font-size: 12px;}
</style>

	<header class="top-fixed bg-yellow bg-inverse">
		<div class="top-back">
			<a class="top-addr" href="<?php echo U('store/index/index');?>"><i class="icon-angle-left"></i></a>
		</div>
		<div class="top-title">
			微店产品
		</div>
		<div class="top-share">
        <a  href="javascript:void(0);" id="cate-btn" class="top-addr icon-chevron-down"> 添加</a>
		</div>
	</header>
    
   <div class="serch-bar-mask" id="cate_menu" style="display:none;top:50px;">
		<div class="serch-bar-mask-list">
			<ul>
            <li><a href="<?php echo U('store/goods/create');?>">添加商品</a></li>
            <li><a href="<?php echo U('store/mart/goodscate');?>">添加商品分类</a></li>
			</ul>
		</div>
	</div>
	<script>
		$(document).ready(function () {
			$("#cate-btn").click(function () {
				$("#cate_menu").toggle();
			});
			
			$("#cate_menu ul li a").click(function () {
				$("#cate_menu").toggle();
			});

		});
	</script>  

	<div class="line xiaoqu-search">
		<form method="post"  action="<?php echo U('goods/index');?>" id="form1" class="form1">
			<div class="form-group">
				<div class="field">
					<div class="input-group">
						<span class="addbtn"><button type="button" class="button icon-search"></button></span>
						<input type="text" class="input" name="keyword" size="50" value="<?php echo ($keyword); ?>" placeholder="商品名称"  />
						<span class="addbtn"><button type="submit" class="button">搜索</button></span>
					</div>
				</div>
			</div>
		</form>
	</div>

    

<style>ul { padding-left: 0px;}</style>
<!-- 筛选TAB -->
<?php if($SHOP['is_pei'] == 0): ?><ul id="shangjia_tab">
        <li style="width:50%;"><a href="<?php echo U('mart/index');?>" class="on">商城商品</a></li>
        <li style="width:50%;"><a href="<?php echo U('mart/all');?>">全部订单</a></li>
</ul>    
<?php else: ?>
<ul id="shangjia_tab">
        <li style="width: 25%;"><a href="<?php echo U('mart/index');?>" class="on">商城商品</a></li>
        <li style="width: 25%;"><a href="<?php echo U('mart/order');?>">卖出商品</a></li>
        <li style="width: 25%;"><a href="<?php echo U('mart/wait');?>">付款订单</a></li>
        <li style="width: 25%;"><a href="<?php echo U('mart/wait2');?>">货到付款</a></li>
</ul><?php endif; ?>

    

<div class="list-media-x" id="list-media">
	<ul>
<div class="blank-10 bg"></div>
<?php if(is_array($list)): foreach($list as $key=>$var): ?><li class="line ">
      <dt><a class="x4">商品ID：<?php echo ($var["goods_id"]); ?></a><a class="x8 text-right">剩余库存：<?php echo ($var["num"]); ?> <?php echo ($var["guige"]); ?></a></dt>
        
      <dd class="zhong">
        <div class="x4">
               <img src="__ROOT__/attachs/<?php echo ($var["photo"]); ?>"  style="width:90%;">
               <?php if($var['profit_enable'] == 1): ?><span class="album" style="width:70px;">分销商品</span><?php endif; ?>
         </div>
            
         <div class="8">
            <p class="text-small">标题：<?php echo bao_msubstr($var['title'],0,24,false);?></p>
            <p class="text-small">销量：<?php echo ($var["sold_num"]); ?> &nbsp; 浏览：<?php echo ($var["views"]); ?> &nbsp; </p>
            <?php if($var['use_integral'] > 0): ?><p class="text-gray">可使用积分：<span class="text-dot"><?php echo ($var["use_integral"]); ?></span></p>
            <?php else: ?>
            <p class="text-gray">未设置积分抵现</p><?php endif; ?>
            
            <?php if($var['mobile_fan'] > 0): ?><p class="text-gray">手机下单立减：<span class="text-dot"><?php echo ($var['mobile_fan']); ?></span></p>
            <?php else: ?>
            <p class="text-gray">未设置手机下单立减</p><?php endif; ?>
            <p class="text-small">
               <span class="text-dot1 margin-right">商城价：<span class="text-dot"><?php echo ($var["mall_price"]); ?></span>&nbsp;  
               <?php if($var['settlement_price'] > 0): ?>结算价：<?php echo ($var['settlement_price']); endif; ?>
              </span>
            </p>
         </div>
      </dd>
         
      <?php if(!empty($var['intro'])): ?><dt>
         <div class="x12">
           <span class="margin-right text-gray">副标题：<?php echo ($var["intro"]); ?></span>
         </div>
      </dt><?php endif; ?>     
      <dl>
         <p class="text-left padding-top x6"><a class="text-smal text-dot1" style=" font-size:12px; letter-spacing:0px;">发布日期：<?php echo (date('Y-m-d ',$var["create_time"])); ?></a></p>
           
          
         <p class="text-right padding-top x6"> 
         <?php if(($var["audit"]) == "0"): ?><a class="button button-small bg-gray">待审</a>
         <?php else: ?>
         <a class="button button-small bg-dot">正常</a>
         <a href="<?php echo U('mobile/mall/detail',array('goods_id'=>$var['goods_id']));?>" class="button button-small bg-dot">详情</a><?php endif; ?>
         <a  href="javascript:void(0);" rel="<?php echo ($var["goods_id"]); ?>"  class="jquery-delete button button-small bg-dot">删除</a>
         
         
          </p>
      </dl>
    </li>
 
    <div class="blank-10 bg"></div><?php endforeach; endif; ?>   
  </ul>
</div> 

<div class="blank-20"></div>
<div class="container login-open">
<h5 style="text-align:center"><?php echo ($page); ?><!--分页代码不要忘记加--> </h5>
</div>

<script>
	$(document).ready(function () {
		$(document).on('click', ".jquery-delete", function (e) {
			var goods_id = $(this).attr('rel');
			layer.confirm('您确定要删除该商品？', {
				skin: 'layer-ext-demo', 
				area: ['50%', 'auto'], //宽高
				btn: ['是的', '不'], //按钮
				shade: false //不显示遮罩
			}, function () {
				$.post("<?php echo U('mart/delete2');?>", {goods_id: goods_id}, function (result) {
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
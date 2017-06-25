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
		<a class="top-addr" href="<?php echo U('index/index');?>"><i class="icon-angle-left"></i></a>
	</div>
		<div class="top-title">
			商户中心
		</div>
	<div class="top-signed">
		<a href="<?php echo U('passport/logout');?>"><i class="icon-sign-out"></i></a>
	</div>
</header>
<div class="blank-10 bg"></div>
<div class="container">
		<div class="line detail-base">
			<div class="x5">
				<div class="pic">
					<a href="<?php echo U('audit/index');?>"><img src="__ROOT__/attachs/<?php echo ($SHOP["logo"]); ?>"></a>	
                    <?php if($SHOP['is_renzheng'] == 1): ?><span class="album">已认证</span>	
                    <?php else: ?>
                    <span class="album" style="width:60px;">申请认证</span><?php endif; ?> 
                </div>
			</div>
			<div class="x7">
				<h1><?php echo ($SHOP["shop_name"]); ?>（<?php echo ($SHOP["shop_id"]); ?>）</h1>
                <?php if(!empty($SHOP['score'])): ?><p><span class="ui-starbar"><span style="width:<?php echo round($SHOP['score']*2,2);?>%"></span></span></p>
                <?php else: ?>
                <p>暂无评价</p><?php endif; ?>
                <p>类型：<?php echo ($shopcates[$SHOP['cate_id']]['cate_name']); ?></p>
                <p>商户资金： &yen; <?php echo round($MEMBER['gold']/100,2);?> 元&nbsp;</p>
                <p>员工：<?php echo ($counts['shopworker']); ?>人 &nbsp;<a href="<?php echo U('store/worker/index');?>">管理</a></p>
			</div>
			
		</div>
       </div>
<div class="blank-10 bg"></div>

<div class="panel-list">

	<ul>

<li><a href="<?php echo U('branch/index');?>"><span class="icon-gears "></span>
基本设置
<?php if($shop_branch > 0): ?><font><?php echo ($shop_branch); ?>家分店<?php if($shop_branch_audit > 0): ?>，待审核<b><?php echo ($shop_branch_audit); ?></b>家。<?php endif; ?></font><?php endif; ?>
               
<i class="icon-angle-right"></i></a></li>

<li><a href="<?php echo U('tuan/index');?>"><span class="icon-tags"></span>抢购优惠
<font>
<?php if($counts['tuan_order_code_is_used'] > 0): ?>待验证<?php echo ($counts['tuan_order_code_is_used']); ?>单<?php endif; ?>
<?php if($counts['tuan_order_code_is_used_ture'] > 0): ?>，已验证<?php echo ($counts['tuan_order_code_is_used_ture']); ?>单<?php endif; ?>
<?php if($counts['tuan'] > 0): ?>，抢购<?php echo ($counts['tuan']); ?>单<?php endif; ?>
<?php if($counts['tuan_audit'] > 0): ?>，待审核<b><?php echo ($counts['tuan_audit']); ?></b>单<?php endif; ?>
</font>
<i class="icon-angle-right"></i></a></li>


<li><a href="<?php echo U('coupon/index');?>"><span class="icon-key"></span>优惠劵
<font>

<?php if($counts['coupon'] > 0): ?>共<?php echo ($counts['coupon']); ?>优惠劵<?php endif; ?>

<?php if($counts['coupon_audit'] > 0): ?>，<b><?php echo ($counts['coupon_audit']); ?></b>待审<?php endif; ?>

<?php if($counts['coupon_download'] > 0): ?>，总<?php echo ($counts['coupon_download']); ?>次下载<?php endif; ?>

<?php if($counts['coupon_download_is_used'] > 0): ?>，待验<b><?php echo ($counts['coupon_download_is_used']); ?></b>。<?php endif; ?>

</font>
<i class="icon-angle-right"></i></a></li>


<?php if($open_mall == 1): ?><li><a href="<?php echo U('mart/index');?>"><span class="icon-home"></span>微店管理
<font>
<?php if($counts['goods_order_two'] > 0): ?>已付款<?php echo ($counts['goods_order_two']); ?>单<?php endif; ?>
<?php if($counts['goods_order_one'] > 0): ?>，已发货<b><?php echo ($counts['goods_order_one']); ?></b>单。<?php endif; ?>
</font>
<i class="icon-angle-right"></i></a></li><?php endif; ?>
<li><a href="<?php echo U('fans/index');?>"><span class="icon-group"></span>粉丝
<font>

<?php if($counts['favorites'] > 0): echo ($counts['favorites']); ?>粉丝<?php endif; ?>
<?php if($counts['totay_favorites'] > 0): ?>，今增加<b><?php echo ($counts['totay_favorites']); ?></b>粉丝。<?php endif; ?>
</font>
<i class="icon-angle-right"></i></a></li>



<li><a href="<?php echo U('ele/index');?>"><span class="icon-home"></span>外卖
<font>
<?php if($counts['ele_order_two'] > 0): ?>已发货<?php echo ($counts['ele_order_two']); ?>单，<?php endif; ?>
<?php if($counts['totay_ele_order'] > 0): ?>今日新增<b><?php echo ($counts['totay_ele_order']); ?></b>单<?php endif; ?>
</font>
<i class="icon-angle-right"></i></a></li>

<?php if($open_life == 1): ?><li><a href="<?php echo U('life/index');?>"><span class="icon-truck"></span>同城信息
<font>
<?php if($counts['life'] > 0): echo ($counts['life']); ?>条，<?php endif; ?>
<?php if($counts['life_audit'] > 0): ?><b><?php echo ($counts['life_audit']); ?></b>待审核<?php endif; ?>
</font>
<i class="icon-angle-right"></i></a></li><?php endif; ?>

<?php if($open_ding == 1): ?><li><a href="<?php echo U('Ding/index');?>"><span class="icon-cog"></span>订座
<font>
<?php if($counts['ding_order'] > 0): echo ($counts['ding_order']); ?>人订座<?php endif; ?>
<?php if($counts['totay_ding_order'] > 0): ?>，今日新增<b><?php echo ($counts['totay_ding_order']); ?></b>单<?php endif; ?>
</font>
<i class="icon-angle-right"></i></a></li><?php endif; ?>


<li><a href="<?php echo U('nearwork/index');?>"><span class="icon-github"></span>人才招聘
<font>
<?php if($counts['work'] > 0): echo ($counts['work']); ?>条招聘<?php endif; ?>
<?php if($counts['work_audit'] > 0): ?>，<b><?php echo ($counts['work_audit']); ?></b>条待审核<?php endif; ?>
</font>
<i class="icon-angle-right"></i></a></li>



<li><a href="<?php echo U('yuyue/index');?>"><span class="icon-phone-square"></span>预约管理
<font>
<?php if($counts['shopyuyue_one'] > 0): echo ($counts['shopyuyue_one']); ?>条预约<?php endif; ?>
<?php if($counts['shopyuyue_eight'] > 0): ?>，<b><?php echo ($counts['shopyuyue_eight']); ?></b>条待确认<?php endif; ?>
</font>
<i class="icon-angle-right"></i></a></li>


<li><a href="<?php echo U('news/index');?>"><span class="icon-newspaper-o"></span>文章管理
<font>
<?php if($counts['news'] > 0): echo ($counts['news']); ?>篇文章<?php endif; ?>
<?php if($counts['news_autit'] > 0): ?>，<b><?php echo ($counts['news_autit']); ?></b>篇待审核<?php endif; ?>
</font>
<i class="icon-angle-right"></i></a></li>

<?php if($open_lifeservice == 1): ?><li><a href="<?php echo U('housework/index');?>"><span class="icon-random"></span>家政服务<i class="icon-angle-right"></i></a></li><?php endif; ?>
<li><a href="<?php echo U('money/index');?>"><span class="icon-calendar"></span>结算<i class="icon-angle-right"></i></a></li>


<li><a href="<?php echo U('passport/logout');?>"><span class="icon-sign-out"></span>注销登录<i class="icon-angle-right"></i></a></li>

		

        

       

	</ul>

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
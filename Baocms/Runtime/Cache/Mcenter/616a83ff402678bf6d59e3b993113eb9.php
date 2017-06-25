<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="zh-cn">
	<head>
		<meta charset="utf-8">
		<title><?php if(!empty($seo_title)): echo ($seo_title); ?>_<?php endif; echo ($CONFIG["site"]["sitename"]); ?>会员中心</title>
		<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
		<?php if($CONFIG[site][concat] != 1): ?><link rel="stylesheet" href="/static/default/wap/css/base.css">
		<link rel="stylesheet" href="/static/default/wap/css/mcenter.css"/>
		<script src="/static/default/wap/js/jquery.js"></script>
		<script src="/static/default/wap/js/base.js"></script>
		<script src="/static/default/wap/other/layer.js"></script>
		<script src="/static/default/wap/other/roll.js"></script>
		<script src="/static/default/wap/js/public.js"></script>
		<?php else: ?>
		<link rel="stylesheet" href="/static/default/wap/css/??base.css,mcenter.css" />
		<script src="/static/default/wap/js/??jquery.js,base.js,roll.js,layer.js,public.js"></script><?php endif; ?>
	</head>
	<body>
<style>
.icon-sign-out, .top-fixed .top-back i { font-size: 18px;}
.top-fixed { background: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0))!important;position: absolute;border: none;}
.top-fixed .top-search input {border-radius: 0px;}
.tuan-detail{overflow: hidden;position: relative; margin-top: -50px;}
.tuan-detail .banner{width:100%;position:relative;}
.tuan-detail .banner img{width:100%; max-height:180px;}
.tuan-detail .title{position:absolute;bottom:0;padding:10px;color:#FFF;background:rgba(0,0,0,0.5);width:100%;}
.tuan-detail .title h1{font-size:18px;height:20px;line-height:20px;}
.tuan-detail .title p{height:20px;line-height:20px;font-size:12px;overflow:hidden;margin:5px 0 0 0;}
.tuan-detail .price{padding:20px 10px 10px 10px;font-family:"Helvetica Neue",Helvetica,Arial,sans-serif;}
.tuan-detail .price em{font-size:30px;font-weight:bold;margin-right:5px;}
.tuan-detail .price del{color:#999;margin-left:20px;}
.tuan-detail .button{text-align:center;}
.tuan-detail .info{padding:10px;}
.tuan-detail .status{padding:10px;color:#999;}
.tuan-detail .ui-starbar{margin-top:5px;}
.tuan-detail .shop{padding:10px;}
.tuan-detail .shop .tel{font-size:40px;width:100%;display:block;text-align:center;}
.tuan-detail .shop h2{font-size:16px;}
.tuan-detail .shop p{font-size:12px;color:#999;margin:5px 0 0 0;width:90%;overflow:hidden;height:20px;}
.tuan-detail hr{margin:0;}
.tuan-detail .intro h2{height:40px;line-height:40px;font-size:16px;padding:0 10px;border-bottom:thin solid #DDD;}
.tuan-detail .intro .container{padding:10px;}
.tuan-detail .intro .container *{max-width:100%;}
.top-fixed .top-share a {width: 50px !important;}
p, .p {margin-bottom: 0px;}
</style>
<script src="/static/default/wap/other/roll.js"></script>

	<header class="top-fixed bg-yellow bg-inverse">
		<div class="top-back">
			<a id="search-btn" href="javascript:void(0);"><i class="icon-search"></i></a>
		</div>
		<div class="top-title">
			会员中心
		</div>
        <div class="top-search" style="display:none;">
			<form method="post" action="<?php echo U('all/index');?>">
				<input name="keyword" placeholder="输入关键字"  />
				<button type="submit" class="icon-search"></button> 
			</form>
		</div>
		<div class="top-share">
			<?php if($msg_day > 0): ?><a href="<?php echo U('mcenter/message/index');?>">
<i class="icon-envelope"></i>
<span class="badge bg-red jiaofei"><?php echo ($msg_day); ?></span>
</a>
<?php else: ?>
    <?php if(empty($sign_day)): ?><a href="<?php echo U('mobile/sign/signed');?>" class="top-addr icon-plus"> 签到</a>    
    <?php else: ?>
    <a href="<?php echo U('mobile/passport/logout');?>" class="top-addr icon-sign-out"></a><?php endif; endif; ?>
		</div>
	</header>
	

    
    
<div class="tuan-detail">
<div class="line banner">	
			<div id="focus" class="focus">
		<div class="hd">
			<ul></ul>
		</div>
		<div class="bd">
			<ul>
          		<li>
              <img src="<?php echo config_img($MEMBER['face']);?>" />
           		</li>
			</ul>
		</div>
	</div>
			<div class="title">
				<h1>
                
                <?php $h=date('G'); if ($h<11) echo '早上好，'; else if ($h<13) echo '中午好，'; else if ($h<17) echo '下午好，'; else echo '晚上好，'; ?>
                <?php if(!empty($MEMBER['nickname'])): echo ($MEMBER["nickname"]); ?> 
                <?php else: ?>
                <?php echo ($MEMBER["account"]); endif; ?>
                <?php if($MEMBER['rank_id'] == 0): ?><!--暂时留空-->
                <?php else: ?>
                <a style="font-size:12px; color:#fff;">（VIP <?php echo ($MEMBER['rank_id']); ?>）</a><?php endif; ?>
                </h1>
				<p><?php if(!empty($MEMBER['integral'])): ?>您的积分：<?php echo ($MEMBER["integral"]); ?> &nbsp;&nbsp;<?php endif; ?>
                您当前余额：<?php echo round($MEMBER['money']/100,2);?> 元
                <?php if($MEMBER['money'] < 1000): ?><a href="<?php echo U('mcenter/money/index');?>">充值</a><?php endif; ?>
                </p>
			</div>	
		</div>
</div>   

       
 
  <script type="text/javascript">
	$(function(){
		$("#search-btn").click(function(){
			if($(".top-search").css("display")=='block'){
				$(".top-search").hide();
				$(".top-title").show(200);
			}
			else{
				$(".top-search").show();
				$(".top-title").hide(200);
			}
		});
		$("#search-bar li").each(function(e){
			$(this).click(function(){
				if($(this).hasClass("on")){
					$(this).parent().find("li").removeClass("on");
					$(this).removeClass("on");
					$(".serch-bar-mask").hide();
				}
				else{
					$(this).parent().find("li").removeClass("on");
					$(this).addClass("on");
					$(".serch-bar-mask").show();
				}
				$(".serch-bar-mask .serch-bar-mask-list").each(function(i){
					
					if(e==i){
						$(this).parent().find(".serch-bar-mask-list").hide();
						$(this).show();
					}
					else{
						$(this).hide();
					}
					$(this).find("li").click(function(){
						$(this).parent().find("li").removeClass("on");
						$(this).addClass("on");
					});
				});
			});
		});
	});
	</script>  

<div class="index-top">
		<div class="line">
			<a class="x2 btn btn-1"  href="<?php echo U('mobile/favorites/index');?>"><i class="icon-star-o"></i><p>收藏</p></a>
			<a class="x2 btn btn-2"  href="<?php echo U('tuan/index');?>"><i class="icon-bookmark-o"></i><p>抢购</p></a>
            <?php if($open_mall == 1): ?><a class="x2 btn btn-3"  href="<?php echo LinkTo('goods/index',array('aready'=>1));?>"><i class="icon-cart-plus"></i><p>购物</p></a><?php endif; ?>
			<a class="x2 btn btn-4"  href="<?php echo U('eleorder/index');?>"><i class="icon-cutlery"></i><p>外卖</p></a>
            <?php if($open_ding == 1): ?><a class="x2 btn btn-5"  href="<?php echo LinkTo('ding/index',array('aready'=>-2));?>"><i class="icon-tty"></i><p>订座</p></a><?php endif; ?>
			<a class="x2 btn btn-6"  href="<?php echo LinkTo('yuyue/index',array('status'=>2));?>"><i class="icon-history"></i><p>预约</p></a>
		</div>

</div>

<div class="blank-10 bg"></div>
<div class="panel-list">
	<ul>

<li><a href="<?php echo U('information/index');?>"><span class="icon-gears"></span>账户管理<i class="icon-angle-right"></i></a></li>

<?php if($is_shop != null): ?><li><a href="<?php echo U('store/index/index');?>"><span class="icon-home"></span>管理我的商家<font>（<?php echo ($is_shop_name); ?>）</font><i class="icon-angle-right"></i></a></li><?php endif; ?>
<?php $worker = D('Shopworker')->where(array('user_id'=>$MEMBER['user_id']))->find(); ?>
<?php if(!empty($worker)): ?><li><a href="<?php echo U('worker/index/index');?>"><span class="icon-paper-plane-o"></span>店员中心登录<font>（<?php echo ($worker['name']); ?>）</font><i class="icon-angle-right"></i></a></li><?php endif; ?>

<li><a href="<?php echo U('mcenter/money/index');?>"><span class="icon-money"></span>余额充值<i class="icon-angle-right"></i></a></li>

	</ul>

</div>

<div class="blank-10 bg"></div>



<div class="panel-list">

	<ul>

		<li>

			<a href="<?php echo U('tuancode/index');?>">

				<span class="icon-credit-card"></span>

				我的团购券&nbsp; 

                <?php if($code > 0): ?><font>待消费：(<b><?php echo ($code); ?></b>)</font>

                <?php else: endif; ?> 

                

				<i class="icon-angle-right"></i>

			</a>

		</li>

		<li>

			<a href="<?php echo U('coupon/index');?>">
				<span class="icon-tags"></span>
				我的优惠券&nbsp; 
                <?php if($coupon > 0): ?><font>未使用：(<b><?php echo ($coupon); ?></b>)</font>
                <?php else: endif; ?> 
				<i class="icon-angle-right"></i>
			</a>
		</li>

         <!--<li>

			<a href="<?php echo U('yuyue/index');?>">
				<span class="icon-tty"></span>
				我的预约
                <?php if($shop_yuyue > 0): ?><font>未使用：(<b><?php echo ($shop_yuyue); ?></b>)</font>
                <?php else: endif; ?> 
				<i class="icon-angle-right"></i>
			</a>
		</li> -->

<li><a href="<?php echo U('breaks/index');?>"><span class="icon-car"></span>优惠买单<i class="icon-angle-right"></i></a></li> 
  

<?php if($open_tieba == 1): ?><li><a href="<?php echo U('tieba/index');?>"><span class="icon-comments"></span>我的贴吧&nbsp; 
        <?php if($tieba > 0): ?><!--如果贴吧不等于0-->
        <font>(<?php echo ($tieba); ?>)</font><!--显示数据-->
        <?php else: endif; ?>  
        <?php if($counts['tieba'] != null): ?><font>今日：(<b><?php echo ($counts["tieba"]); ?></b>)</font>  
        <?php else: endif; ?>  
        <i class="icon-angle-right"></i>
        </a>
    </li><?php endif; ?>
<?php if($open_community == 1): ?><li><a href="<?php echo U('mcenter/member/xiaoqu');?>"><span class="icon-ils"></span>我的小区 
				<?php if($xiaoqu > 0): ?><font>(<?php echo ($xiaoqu); ?>)</font> 
                <?php else: endif; ?> <i class="icon-angle-right"></i></a>
</li><?php endif; ?> 
<?php if($open_huodong == 1): ?><li><a href="<?php echo U('huodong/index');?>"><span class="icon-star-o"></span>我报名的活动<i class="icon-angle-right"></i></a></li><?php endif; ?>
        <div class="blank-10 bg"></div>

<?php if($open_life == 1): ?><li>
        <a href="<?php echo U('life/index');?>"><span class="icon-truck"></span>我的同城信息&nbsp; 
        <?php if($life > 0): ?><font>(<?php echo ($life); ?>)</font>  
        <?php else: endif; ?>  
        <i class="icon-angle-right"></i>
        </a>
    </li><?php endif; ?>   
   
<?php if($open_jifen == 1): ?><li>
        <a href="<?php echo U('exchange/index');?>"><span class="icon-gift"></span>我的礼品&nbsp; 
        <?php if($lipin > 0): ?><font>(<?php echo ($lipin); ?>)</font>
        <?php else: endif; ?> 
        <i class="icon-angle-right"></i>
        </a>
    </li><?php endif; ?> 


<?php if($open_cloud == 1): ?><li>
        <a href="<?php echo U('cloud/index');?>"><span class="icon-send"></span>我的一元云购&nbsp; 
        <i class="icon-angle-right"></i>
        </a>
    </li><?php endif; ?> 

<?php if($open_lifeservice == 1): ?><li><a href="<?php echo U('Lifeservice/index');?>"><span class="icon-umbrella"></span>我的家政<i class="icon-angle-right"></i></a></li><?php endif; ?> 
<li><a href="<?php echo U('mcenter/message/index');?>"><span class="icon-volume-up"></span>消息中心<i class="icon-angle-right"></i></a></li>

 <div class="blank-10 bg"></div>
 
 	   <?php if($profit == 1): ?><!--如果开启分销-->
       <li><a href="<?php echo U('distribution/index');?>"><span class="icon-users"></span>我的分销<i class="icon-angle-right"></i></a></li>
       <?php else: endif; ?> 
<?php if($open_express == 1): ?><li><a href="<?php echo U('express/index');?>"><span class="icon-plane"></span>我的快递&nbsp; <i class="icon-angle-right"></i></a></li><?php endif; ?>         


	</ul>

</div>
<div class="blank-10"></div>
<div class="container text-center">
		<a class="button button-block button-big bg-dot" href="<?php echo U('mobile/passport/logout');?>">退出后台</a>
</div>


<div class="blank-20"></div>
<?php if($CONFIG[other][footer] == 1): ?><footer class="foot-fixed">
  
    <a class="foot-item <?php if(($ctl == 'index') AND ($act != 'more')): ?>active<?php endif; ?>" href="<?php echo u('mobile/index/index');?>">		
    <span class="icon icon-home"></span>
    <span class="foot-label">首页</span>
    </a>
   
    
    <a class="foot-item   <?php if(($ctl == 'tuan') || ($ctl == 'goods') || ($ctl == 'eleorder') || ($ctl == 'ding') ): ?>active<?php endif; ?>" href="      <?php echo LinkTo('tuan/index');?>">			
    <span class="icon icon-cart-plus"></span><span class="foot-label">订单</span></a>
    
     <a class="foot-item  <?php if(($ctl == 'tuancode')): ?>active<?php endif; ?>" href="<?php echo u('mcenter/tuancode/index');?>">			
    <span class="icon icon-tags"></span><span class="foot-label">抢购劵</span></a>
    
    
    
    <a class="foot-item  <?php if(($ctl == 'message') ||($act == 'xiaoxizhongxin')): ?>active<?php endif; ?>" href="<?php echo u('mcenter/message/someone');?>">			
    <span class="icon icon-volume-up"></span><span class="foot-label">消息</span></a>
    
    <a class="foot-item  <?php if(($ctl == 'money') || ($ctl == 'logs') || ($ctl == 'cash') ||($act == 'zijinguanli')): ?>active<?php endif; ?>" href="<?php echo u('mcenter/information/index');?>">			
    <span class="icon icon-gears"></span><span class="foot-label">设置</span></a>
    
   
    </footer><?php endif; ?>

<iframe id="x-frame" name="x-frame" style="display:none;">
</iframe>
</body>
</html>
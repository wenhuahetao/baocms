<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>商家管理中心-<?php echo ($CONFIG["site"]["title"]); ?></title>
<meta name="description" content="<?php echo ($CONFIG["site"]["title"]); ?>商户中心" />
<meta name="keywords" content="<?php echo ($CONFIG["site"]["title"]); ?>商户中心" />
<link href="__TMPL__statics/css/newstyle.css" rel="stylesheet" type="text/css" />
 <link href="__PUBLIC__/js/jquery-ui.css" rel="stylesheet" type="text/css" />
<script>
var BAO_PUBLIC = '__PUBLIC__'; var BAO_ROOT = '__ROOT__';
</script>
<script src="__PUBLIC__/js/jquery.js"></script>
<script src="__PUBLIC__/js/jquery-ui.min.js"></script>
<script src="__PUBLIC__/js/web.js"></script>
<script src="__PUBLIC__/js/layer/layer.js"></script>

</head>

<body>
<iframe id="baocms_frm" name="baocms_frm" style="display:none;"></iframe>

<div id="musicHidden" style="position:absolute;top:-6000px">
<div id="sound"></div>
<script type="text/javascript" src="__PUBLIC__/js/swfobject.js"></script>
<script type="text/javascript">
	//订单提醒语音
	var url = "<?php echo U('reminded/musicord');?>";    
  /*订单相关*/
    function musicOrder(){
    	 $.ajax({
            type: "POST",//提交方式
            async: true,
            dataType: "text",//数据格式
            url: url,
            data: {},
            success: function (data) {
				if(data == 1){
					var flashvars = {
					};
					var params = {
						wmode: "transparent"
					}; 
					var attributes = {};
					swfobject.embedSWF("__PUBLIC__/js/online.swf", "sound", "1", "1", "9.0.0", "__PUBLIC__/js/expressInstall.swf", flashvars, params, attributes);
				}else{
					
				}
            }
    	 })
    }

  //定时
    setInterval(function(){
    	musicOrder();
    }
    ,10000);
</script>
</div>


<script type="text/javascript">
	$(document).ready(function(){
		$(".leftMenu_a").click(function(){ 
			$(".leftMenu_a").removeClass("on");
			$(this).addClass("on");
			$(".leftNav2").hide();
			$(this).parent().find(".leftNav2").show();  
		});
		$(".leftNav2 li").click(function(){
			$(".leftNav2 li a").removeClass('on');
			$(this).find('a').addClass('on');
		});
	});
</script>
<div class="sjgl_top">
    <div class="left sjgl_toplogo">商家后台</div>
    <div class="right sjgl_top_r">
        <ul>
            <li class="left sjgl_topli sjgl_toplixl"><a href="<?php echo U('shangjia/index/index');?>"><?php echo ($SHOP["shop_name"]); ?></a>
            	<div class="sjgl_topxl">
                    <div class="sjgl_topcz">
                        <div class="left"><p class="sjgl_topyet sjgl_topye">您的商户资金余额：<big><?php echo round($MEMBER['gold']/100,0,2);?></big>元</p></div>
                    </div>
                    <a class="sjgl_topA sjgl_topA1" target="main_frm" href="<?php echo U('shop/about');?>">去资料中心>></a>
                    <a class="sjgl_topA" href="<?php echo U('login/logout');?>"><em>&nbsp;</em>退出</a>
                </div>
            </li>
            
            <li class="left sjgl_topli"><a target="_blank" href="<?php echo U('pchome/index/index');?>">网站首页</a></li>
            <li class="left sjgl_topli"><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo ($CONFIG["site"]["qq"]); ?>&site=qq&menu=yes">联系客服</a></li>
             <li class="left sjgl_topli"><a  target="main_frm" href="<?php echo U('message/index');?>">网站通知 <?php if($msg_day > 0): ?><i class="tongzhi"><?php echo ($msg_day); ?></i><?php endif; ?></a></li>
             
            <li class="left sjgl_topli"><a href="<?php echo U('login/logout');?>"><em class="toptc"><img src="__TMPL__statics/images/toptc_03.png" /></em>退出</a></li>
        </ul>
    </div>
</div>
<div class="sjglBox">
    <div class="left sjgl_leftmenu">
        <ul>
            <li class="leftMenu_li"><a class="leftMenu_a on2" target="main_frm" href="<?php echo U('index/main');?>"><em>&nbsp;</em>首页</a></li>
            <li class="leftMenu_li"><a class="leftMenu_a leftMenu_a2"  target="main_frm" href="<?php echo U('branch/index');?>"><em>&nbsp;</em>商家管理</a>
                <div class="leftNav2">
                    <ul>

                        <li><a class="on" target="main_frm" href="<?php echo U('info/password');?>"><em>&nbsp;</em>修改密码</a></li>
                        <li><a target="main_frm" href="<?php echo U('shop/about');?>"><em>&nbsp;</em>店铺管理</a></li>
						<li><a target="main_frm" href="<?php echo U('audit/index');?>"><em>&nbsp;</em>认证管理</a></li>
                    	<li><a  target="main_frm" href="<?php echo U('branch/index');?>"><em>&nbsp;</em>分店地址</a></li>
                        <li><a  target="main_frm" href="<?php echo U('shop/service');?>"><em>&nbsp;</em>其他设置</a></li>
                        <li><a  target="main_frm" href="<?php echo U('shopyouhui/index');?>"><em>&nbsp;</em>优惠买单</a></li>
                        <li><a  target="main_frm" href="<?php echo U('worker/index');?>"><em>&nbsp;</em>员工管理</a></li>

                    </ul>

                </div>

            </li>

            <li class="leftMenu_li"><a class="leftMenu_a leftMenu_a3" target="main_frm" href="<?php echo U('tuan/index');?>"><em>&nbsp;</em>团购优惠</a>
            	<div class="leftNav2">
                    <ul>
                        <li><a target="main_frm" href="<?php echo U('tuan/index');?>"><em>&nbsp;</em>团购管理</a></li>
                        <li><a target="main_frm" href="<?php echo U('coupon/index');?>"><em>&nbsp;</em>优惠券</a></li>
                    </ul>
                </div>
            </li>
			<?php if(($open_mall) == "1"): ?><li class="leftMenu_li"><a class="leftMenu_a leftMenu_a4" target="main_frm" href="<?php echo U('goods/index');?>"><em>&nbsp;</em>商城</a>
                    <div class="leftNav2">
                        <ul>
                            <?php if(!empty($wd)): ?><!--如果入驻微店-->
                                <li><a target="main_frm" href="<?php echo U('goodsshopcate/index');?>"><em>&nbsp;</em>产品分类</a></li>
                                <li><a target="main_frm" href="<?php echo U('goods/index');?>"><em>&nbsp;</em>出售中的商品</a></li>
                                <li><a target="main_frm" href="<?php echo U('order/index');?>"><em>&nbsp;</em>全部订单列表</a></li>
                                    <?php if($ding['is_pei'] == 1): ?><!--如果不开通配送-->
                                    <li><a target="main_frm" href="<?php echo U('order/wait');?>"><em>&nbsp;</em>已付款订单</a></li>
                                    <li><a target="main_frm" href="<?php echo U('order/wait2');?>"><em>&nbsp;</em>货到付款订单</a></li>
                                    <li><a target="main_frm" href="<?php echo U('order/picks');?>"><em>&nbsp;</em>捡货单管理</a></li>
                                    <li><a target="main_frm" href="<?php echo U('shangjia/order/delivery');?>"><em>&nbsp;</em>待确认订单</a></li>	
                                    <li><a target="main_frm" href="<?php echo U('goods/weidian');?>"><em>&nbsp;</em>商城资料修改</a></li><?php endif; ?>
                                    <?php if($ding['is_pei'] == 0): ?><!--如果开通配送-->
                                    <li><a target="main_frm" href="<?php echo U('order/count');?>"><em>&nbsp;</em>配送员订单统计</a></li>
                                    <li><a target="main_frm" href="<?php echo U('shangjia/order/delivery');?>"><em>&nbsp;</em>待确认订单</a></li>
                                    <li><a target="main_frm" href="<?php echo U('goods/weidian');?>"><em>&nbsp;</em>商城资料修改</a></li><?php endif; endif; ?>
                            <?php if(empty($wd)): ?><!--如果没开通微店-->
                            <li><a target="main_frm" href="<?php echo U('shangjia/goods/weidian');?>"><em>&nbsp;</em>申请入驻商城</a></li><?php endif; ?>
                        </ul>
                    </div>
                </li><?php endif; ?>

         

            
             <?php if(!empty($waimai)): ?><!--如果商户开通外卖-->
                <li class="leftMenu_li"><a class="leftMenu_a leftMenu_a19" target="main_frm" href="<?php echo U('ele/index');?>"><em>&nbsp;</em>外卖</a>
            	<div class="leftNav2">
                    <ul>
                        <li><a target="main_frm" href="<?php echo U('elecate/index');?>"><em>&nbsp;</em>菜系分类</a></li>
                        <li><a target="main_frm" href="<?php echo U('eleproduct/index');?>"><em>&nbsp;</em>菜单管理</a></li>
                        <?php if(($SHOP["is_pei"]) == "1"): ?><li><a class="on" target="main_frm" href="<?php echo U('ele/index');?>"><em>&nbsp;</em>营业设置</a></li>
                        <li><a target="main_frm" href="<?php echo U('eleorder/index');?>"><em>&nbsp;</em>确认订单</a></li>
                        <li><a target="main_frm" href="<?php echo U('eleorder/wait');?>"><em>&nbsp;</em>配送订单</a></li>
                        <li><a target="main_frm" href="<?php echo U('eleorder/over');?>"><em>&nbsp;</em>完成订单</a></li><?php endif; ?>
                        <?php if(($SHOP["is_pei"]) == "0"): ?><li><a target="main_frm" href="<?php echo U('eleorder/wait');?>"><em>&nbsp;</em>确认订单</a></li>
                        	<li><a target="main_frm" href="<?php echo U('eleorder/count');?>"><em>&nbsp;</em>配送员订单统计</a></li>
                            <li><a target="main_frm" href="<?php echo U('eleorder/whole');?>"><em>&nbsp;</em>全部订单</a></li><?php endif; ?>
                    </ul>
                </div>
            </li>
            <?php else: ?>
            <li class="leftMenu_li"><a class="leftMenu_a leftMenu_a19" target="main_frm" href="<?php echo U('ele/apply');?>"><em>&nbsp;</em>外卖</a>
            	<div class="leftNav2">
                    <ul>
                        <li><a target="main_frm" href="<?php echo U('ele/apply');?>"><em>&nbsp;</em>申请入驻外卖频道</a></li>
                    </ul>
                </div>
            </li><?php endif; ?>
            
            

          <?php if($ding['is_biz'] != 0): ?><!--如果后台开通黄页-->
          <li class="leftMenu_li"><a class="leftMenu_a leftMenu_a11" target="main_frm" href="<?php echo U('pois/index');?>"><em>&nbsp;</em>黄页管理</a>
            	<div class="leftNav2">
                    <ul>
                        <li><a target="main_frm" href="<?php echo U('pois/index');?>"><em>&nbsp;</em>黄页列表</a></li>
                        <li><a target="main_frm" href="<?php echo U('pois/me');?>"><em>&nbsp;</em>我的黄页</a></li>
                        <li><a target="main_frm" href="<?php echo U('pois/create');?>"><em>&nbsp;</em>黄页生成</a></li>
                        <li><a target="main_frm" href="<?php echo U('pois/stick');?>"><em>&nbsp;</em>我的包年</a></li>
                        <li><a target="main_frm" href="<?php echo U('pois/word');?>"><em>&nbsp;</em>购买包年</a></li>
                   </ul>
                </div>
            </li>
           <?php else: endif; ?>
            
         

      

       <?php if($open_ding == '1' ): if($ding['is_ding'] == 1): ?><li class="leftMenu_li"><a class="leftMenu_a leftMenu_a11" target="main_frm" href="<?php echo U('ding/setting');?>"><em>&nbsp;</em>订座</a>
                    <div class="leftNav2">
                        <ul>
                            <li><a class="on" target="main_frm" href="<?php echo U('ding/setting');?>"><em>&nbsp;</em>订座配置</a></li>
                            <li><a target="main_frm" href="<?php echo U('dingorder/index');?>"><em>&nbsp;</em>订座列表</a></li>
                            <li><a target="main_frm" href="<?php echo U('ding/room');?>"><em>&nbsp;</em>包厢设置</a></li>
                            <li><a target="main_frm" href="<?php echo U('dingcate/index');?>"><em>&nbsp;</em>菜品分类</a></li>
                            <li><a target="main_frm" href="<?php echo U('dingmenu/index');?>"><em>&nbsp;</em>菜品配置</a></li>
                        </ul>
                    </div>
                </li><?php endif; endif; ?>   
        
        
           <li class="leftMenu_li"><a class="leftMenu_a leftMenu_a5" target="main_frm" href="<?php echo U('fans/index');?>"><em>&nbsp;</em>粉丝</a>
            	<div class="leftNav2">
                    <ul>
                        <li><a class="on"  target="main_frm" href="<?php echo U('fans/index');?>"><em>&nbsp;</em>粉丝列表</a></li>
                        <li><a target="main_frm" href="<?php echo U('integrallogs/index');?>"><em>&nbsp;</em>积分日志</a></li>
                        <li><a target="main_frm" href="<?php echo U('news/index');?>"><em>&nbsp;</em>推送文章</a></li>
                    </ul>
                </div>
            </li>
            
            
             <li class="leftMenu_li"><a class="leftMenu_a leftMenu_a10" target="main_frm" href="<?php echo U('weixin/index');?>"><em>&nbsp;</em>营销管理</a>
            	<div class="leftNav2">
                    <ul>
                        <li><a target="main_frm" href="<?php echo U('weixin/index');?>"><em>&nbsp;</em>微信设置</a></li>
                        <li><a target="main_frm" href="<?php echo U('scratch/index');?>"><em>&nbsp;</em>刮刮卡</a></li>
                        <li><a target="main_frm" href="<?php echo U('lottery/index');?>"><em>&nbsp;</em>大转盘</a></li>
                        <li><a target="main_frm" href="<?php echo U('goldegg/index');?>"><em>&nbsp;</em>砸金蛋</a></li>
                        <li><a target="main_frm" href="<?php echo U('packet/index');?>"><em>&nbsp;</em>红包</a></li>
                        <li><a target="main_frm" href="<?php echo U('card/index');?>"><em>&nbsp;</em>卡券</a></li>
                        <!--<li><a target="main_frm" href="<?php echo U('help/index');?>"><em>&nbsp;</em>微助力</a></li>-->
                        <li><a target="main_frm" href="<?php echo U('relay/index');?>"><em>&nbsp;</em>微接力</a></li>
                        <li><a target="main_frm" href="<?php echo U('shake/index');?>"><em>&nbsp;</em>摇一摇</a></li>
                    </ul>
                </div>
            </li>
            
             

             <li class="leftMenu_li"><a class="leftMenu_a leftMenu_a12" target="main_frm" href="<?php echo U('dianping/index');?>"><em>&nbsp;</em>评价管理</a>
            	<div class="leftNav2">
                    <ul>  
                        <li><a target="main_frm" href="<?php echo U('dianping/index');?>"><em>&nbsp;</em>商家评价</a></li>
                        <li><a target="main_frm" href="<?php echo U('dianping/tuan');?>"><em>&nbsp;</em>团购评价</a></li>
                        <?php if($open_mall == '1' ): ?><li><a target="main_frm" href="<?php echo U('dianping/mall');?>"><em>&nbsp;</em>商城（微店）评价</a></li><?php endif; ?>
                        <li><a target="main_frm" href="<?php echo U('dianping/waimai');?>"><em>&nbsp;</em>外卖点评</a></li>
						<?php if($open_ding == '1' ): ?><li><a target="main_frm" href="<?php echo U('dianping/ding');?>"><em>&nbsp;</em>订座评价</a></li><?php endif; ?>
                    </ul>

                </div>

            </li>

              <li class="leftMenu_li"><a class="leftMenu_a leftMenu_a13" target="main_frm" href="<?php echo U('money/index');?>"><em>&nbsp;</em>结算</a>
            	<div class="leftNav2">
                    <ul>  
                         <li><a target="main_frm" href="<?php echo U('money/index');?>"><em>&nbsp;</em>资金记录</a></li>
                         <li><a target="main_frm" href="<?php echo U('money/shopmoney');?>"><em>&nbsp;</em>商家资金</a></li>
                         <li><a target="main_frm" href="<?php echo U('money/tixianlog');?>"><em>&nbsp;</em>提现申请</a></li>
                    </ul>
                </div>
            </li>
 			
           <?php if($open_life == '1' ): ?><li class="leftMenu_li"><a class="leftMenu_a leftMenu_a18" target="main_frm" href="<?php echo U('life/index');?>"><em>&nbsp;</em>同城信息</a>
            	<div class="leftNav2">
                    <ul>
                        <li><a target="main_frm" href="<?php echo U('life/index');?>"><em>&nbsp;</em>生活信息</a></li>
                    </ul>
                </div>
            </li><?php endif; ?>
            

                <li class="leftMenu_li"><a class="leftMenu_a leftMenu_a12" target="main_frm" href="<?php echo U('work/index');?>"><em>&nbsp;</em>其他</a>
            	<div class="leftNav2">
                    <ul>
                        <li><a target="main_frm" href="<?php echo U('breaks/index');?>"><em>&nbsp;</em>优惠买单订单</a></li>
                        <li><a class="on" target="main_frm" href="<?php echo U('work/index');?>"><em>&nbsp;</em>人才招聘</a></li>
                        <?php if($open_lifeservice == '1' ): ?><li><a target="main_frm" href="<?php echo U('housework/index');?>"><em>&nbsp;</em>家政服务</a></li><?php endif; ?>
                        <li><a target="main_frm" href="<?php echo U('yuyue/index');?>"><em>&nbsp;</em>预约列表</a></li>
                        <li><a target="main_frm" href="<?php echo U('yuyue/used');?>"><em>&nbsp;</em>消费确认</a></li>

                    </ul>

                </div>

            </li>

        </ul>

    </div>

    <div id="sjgl_right" style="padding-left:200px; height:100%;">
        <div class="sjgl_main" style="height:1000px;">
            <iframe src="<?php echo U('index/main');?>" marginheight="0" marginwidth="0" frameborder="0" width="100%" height=100% id="main_frm" name="main_frm"></iframe>
        </div>

    </div>
</div>



<script>
function require() {
      var url = "{U('order1/checkNotify')}";
        　　
      $.get(url,null,function(data) {
        　　　　　　
            // 如果获得的数据不为空，则显示提醒
           if ($.trim(data) != '') {

               // 这里写提醒的方式
        　　　　alert('您有新订单来了，还在测试');
           }
      });

      // 每三秒请求一次
      setTimeout('require()',3000);
}
</script>
<!--<body onload="javascript:return require();">-->
</html>
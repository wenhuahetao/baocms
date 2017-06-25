<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="zh-cn">
	<head>
		<meta charset="utf-8">
		<title><?php if(!empty($mobile_title)): echo ($mobile_title); ?>_<?php endif; echo ($CONFIG["site"]["sitename"]); ?></title>
        <meta name="keywords" content="<?php echo ($mobile_keywords); ?>" />
        <meta name="description" content="<?php echo ($mobile_description); ?>" />
		<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
		<link rel="stylesheet" href="/static/default/wap/css/base.css">
		<link rel="stylesheet" href="/static/default/wap/css/<?php echo ($ctl); ?>.css?V=2"/>
		<script src="/static/default/wap/js/jquery.js"></script>
		<script src="/static/default/wap/js/base.js"></script>
		<script src="/static/default/wap/other/layer.js"></script>
		<script src="/static/default/wap/other/roll.js"></script>
		<script src="/static/default/wap/js/public.js"></script>
	    <script src="/static/default/wap/js/mobile_common.js"></script>
        <script src="/static/default/wap/js/iscroll-probe.js"></script>
        
        
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
<script src="/static/default/wap/other/roll.js"></script>
<script src="__TMPL__statics/js/jquery.flexslider-min.js" type="text/javascript" charset="utf-8"></script>
	<header class="top-fixed bg-yellow bg-inverse">
		<div class="top-local">
			<a href="<?php echo U('city/index');?>" class="top-addr"><?php echo bao_msubstr($city_name,0,2,false);?> <i class="icon-angle-down"></i></a>
		</div>
		<div class="top-title">
			<?php echo ($CONFIG["site"]["sitename"]); ?>
		</div>
        <div class="top-search" style="display:none;">
			<form method="post" action="<?php echo U('all/index');?>">
				<input name="keyword" placeholder="输入关键字"  />
				<button type="submit" class="icon-search"></button> 
			</form>
	</div>
		<div class="top-signed">
			<a id="search-btn" href="javascript:void(0);"><i class="icon-search"></i></a> 
		</div>
	</header>   
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
        

	<div id="focus" class="focus">
		<div class="hd">
			<ul></ul>
		</div>
        <!--下面的limit="0,2"是幻灯的个数，2代表2张图，以此类推，site_id=57是你广告位的ID-->
		<div class="bd">
			<ul>
                 <?php  $cache = cache(array('type'=>'File','expire'=> 7200)); $token = md5("Ad, closed=0 AND site_id=57 AND city_id IN ({$city_ids}) and bg_date <= '{$today}' AND end_date >= '{$today}' ,0,3,7200,orderby asc,,"); if(!$items= $cache->get($token)){ $items = D("Ad")->where(" closed=0 AND site_id=57 AND city_id IN ({$city_ids}) and bg_date <= '{$today}' AND end_date >= '{$today}' ")->order("orderby asc")->limit("0,3")->select(); $cache->set($token,$items); } ; $index=0; foreach($items as $item): $index++; ?><li><a href="<?php echo ($item["link_url"]); ?>"><img src="__ROOT__/attachs/<?php echo ($item["photo"]); ?>" /></a></li> <?php endforeach; ?>
			</ul>
		</div>
	</div>

  <script type="text/javascript">
		TouchSlide({ 
			slideCell:"#focus",
			titCell:".hd ul", //开启自动分页 autoPage:true ，此时设置 titCell 为导航元素包裹层
			mainCell:".bd ul", 
			effect:"left", 
			autoPlay:true,//自动播放
			autoPage:true, //自动分页
			switchLoad:"_src", //切换加载，真实图片路径为"_src", 
			//delayTime:"3000",
		});
	</script>  

	

 <!--分类开始-->
<div id="index" class="page-center-box"> 
            <script>
                    $(document).ready(function () {
                        $('.flexslider_cate').flexslider({
                            directionNav: true,
                            pauseOnAction: false,
                            /*slideshow: false,*/
                            /*touch:true,*/
                        });
                        /*首页菜单分类结束*/
                        $('.flexslider_yiyuan').flexslider({
                            controlNav: false,
                            pauseOnAction: false,
                            /*slideshow: false,*/
                            /*touch:true,*/
                        });
                        /*首页菜单分类结束*/
                    });
            </script>
            
<div class="banner mb10">
                <div class="flexslider_cate"> 
                    <ul class="slides">

                        <?php if(is_array($nav)): $i = 0; $__LIST__ = $nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i; if($i%8 == 1): ?><li class="list">
                                    <ul class="cate">
                                       <li><a href="/index.php/mobile/<?php echo ($item["url"]); ?>"><div class="icon <?php echo ($item["ioc"]); ?> <?php echo ($item["colour"]); ?>"></div><p><?php echo ($item["nav_name"]); ?></p></a></li>
                                        <?php elseif($i%8 == 0): ?>        

                                       <li><a href="/index.php/mobile/<?php echo ($item["url"]); ?>"><div class="icon <?php echo ($item["ioc"]); ?> <?php echo ($item["colour"]); ?>"></div><p><?php echo ($item["nav_name"]); ?></p></a></li>
                                    </ul>
                                </li>
                                <?php else: ?>
                               <li><a href="/index.php/mobile/<?php echo ($item["url"]); ?>"><div class="icon <?php echo ($item["ioc"]); ?> <?php echo ($item["colour"]); ?>"></div><p><?php echo ($item["nav_name"]); ?></p></a></li><?php endif; endforeach; endif; else: echo "" ;endif; ?>


                    </ul>  
                </div>
            </div>             
            <!--首页分类结束-->
    
		


	<div class="blank-10  bg"></div>

	<!--首页广告-->

	<div class="index-ads">
		<div class="line border-bottom border-top">
			<div class="x5 ad-1">
                 <?php  $cache = cache(array('type'=>'File','expire'=> 600)); $token = md5("Ad, closed=0 AND site_id=62 AND  city_id IN ({$city_ids}) and bg_date <= '{$today}' AND end_date >= '{$today}' ,0,1,600,orderby asc,,"); if(!$items= $cache->get($token)){ $items = D("Ad")->where(" closed=0 AND site_id=62 AND  city_id IN ({$city_ids}) and bg_date <= '{$today}' AND end_date >= '{$today}' ")->order("orderby asc")->limit("0,1")->select(); $cache->set($token,$items); } ; $index=0; foreach($items as $item): $index++; ?><a href="<?php echo ($item["link_url"]); ?>"><img src="__ROOT__/attachs/<?php echo ($item["photo"]); ?>"></a> <?php endforeach; ?>
			</div>
			<div class="x7 border-left">
				<div class="line">
					<div class="x12 border-bottom ad-2">
						 <?php  $cache = cache(array('type'=>'File','expire'=> 600)); $token = md5("Ad, closed=0 AND site_id=63 AND  city_id IN ({$city_ids}) and bg_date <= '{$today}' AND end_date >= '{$today}' ,0,1,600,orderby asc,,"); if(!$items= $cache->get($token)){ $items = D("Ad")->where(" closed=0 AND site_id=63 AND  city_id IN ({$city_ids}) and bg_date <= '{$today}' AND end_date >= '{$today}' ")->order("orderby asc")->limit("0,1")->select(); $cache->set($token,$items); } ; $index=0; foreach($items as $item): $index++; ?><a href="<?php echo ($item["link_url"]); ?>"><img src="__ROOT__/attachs/<?php echo ($item["photo"]); ?>"></a> <?php endforeach; ?>
					</div>
					<div class="x6 border-right ad-3">
						 <?php  $cache = cache(array('type'=>'File','expire'=> 600)); $token = md5("Ad, closed=0 AND site_id=64 AND  city_id IN ({$city_ids}) and bg_date <= '{$today}' AND end_date >= '{$today}' ,0,1,600,orderby asc,,"); if(!$items= $cache->get($token)){ $items = D("Ad")->where(" closed=0 AND site_id=64 AND  city_id IN ({$city_ids}) and bg_date <= '{$today}' AND end_date >= '{$today}' ")->order("orderby asc")->limit("0,1")->select(); $cache->set($token,$items); } ; $index=0; foreach($items as $item): $index++; ?><a href="<?php echo ($item["link_url"]); ?>"><img src="__ROOT__/attachs/<?php echo ($item["photo"]); ?>"></a> <?php endforeach; ?>
					</div>
					<div class="x6 ad-3">
						 <?php  $cache = cache(array('type'=>'File','expire'=> 600)); $token = md5("Ad, closed=0 AND site_id=65 AND  city_id IN ({$city_ids}) and bg_date <= '{$today}' AND end_date >= '{$today}' ,0,1,600,orderby asc,,"); if(!$items= $cache->get($token)){ $items = D("Ad")->where(" closed=0 AND site_id=65 AND  city_id IN ({$city_ids}) and bg_date <= '{$today}' AND end_date >= '{$today}' ")->order("orderby asc")->limit("0,1")->select(); $cache->set($token,$items); } ; $index=0; foreach($items as $item): $index++; ?><a href="<?php echo ($item["link_url"]); ?>"><img src="__ROOT__/attachs/<?php echo ($item["photo"]); ?>"></a> <?php endforeach; ?>
					</div>
				</div>
			</div>
		</div>
	</div>
    
    <div class="blank-10  bg" style="border-bottom: thin solid #eee;"></div>
    
    <div class="tab index-tab" data-toggle="click">
		<div class="tab-head">
			<ul class="tab-nav line">
				<li class="x4 active"><a href="#tab-shop">附近商家</a></li>
				<li class="x4"><a href="#tab-coupon">附近小区</a></li>
				<li class="x4"><a href="#tab-active">热门资讯</a></li>
			</ul>
		</div>
		<div class="tab-body">
			<div class="tab-panel active" id="tab-shop">
				<ul class="line index-tuan">
				<?php if(is_array($shoplist)): $index = 0; $__LIST__ = $shoplist;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($index % 2 );++$index;?><div class="container1" onclick="location='<?php echo U('shop/detail',array('shop_id'=>$item['shop_id']));?>'">
                        <img class="x2" src="__ROOT__/attachs/<?php echo (($item["photo"])?($item["photo"]):'default.jpg'); ?>">	
                        <div class="des x10">
                        
                        <?php $business = D('Business') -> where('business_id ='.$item['business_id']) -> find(); $business_name = $business['business_name']; ?>
            
            
                            <h5><?php echo bao_msubstr($item['shop_name'],0,10,false);?> <a style="color:#999; margin-left:10px;"><?php echo ($business_name); ?>商圈 &nbsp;<?php echo ($item["d"]); ?></a></h5>
                            <?php if(!empty($item['score'])): ?><p class="intro"><span class="ui-starbar" style="margin-top:0.2rem;"><span style="width:<?php echo round($item['score']*2,2);?>%"></span></span></p>
                            <?php else: ?>
                           <p class="intro"> 暂无评价 </p><?php endif; ?>
                            <p class="intro">地址：<?php echo bao_msubstr($item['addr'],0,12,false);?></p>
                        </div>
                     
                        
                        
                     </div><?php endforeach; endif; else: echo "" ;endif; ?>
           	</ul>
            <div class="more"><a href="<?php echo U('shop/index');?>">查看更多商家</a></div>	
		</div>
			<div class="tab-panel" id="tab-coupon">
				<ul class="index-tuan">
					<?php if(is_array($community)): $index = 0; $__LIST__ = $community;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($index % 2 );++$index;?><div class="container1" onclick="location='<?php echo U('community/detail',array('community_id'=>$item['community_id']));?>'">
                        <img class="x2" src="__ROOT__/attachs/<?php echo (($item["pic"])?($item["pic"]):'default.jpg'); ?>">	
                        <div class="des x8">
                            <h5><?php echo bao_msubstr($item['name'],0,10,false);?></h5>
                            <p class="intro">地址：<?php echo bao_msubstr($item['addr'],0,12,false);?></p>
                            <p class="info"><span>物业公司：<?php echo bao_msubstr($item['property'],0,10,false);?> </span> </p>
                        </div>
                        
                        <div class="des x2">
                            <div class="intro2" style="width: auto; padding:0 3px;"><?php echo ($item["d"]); ?></div>
                        </div>
                        
                        
                     </div><?php endforeach; endif; else: echo "" ;endif; ?>	
				</ul>
                <div class="more"><a href="<?php echo U('community/index');?>">查看更多小区</a></div>	
			</div>
			<div class="tab-panel" id="tab-active">
                <ul  class="index-tuan">
                    <?php if(is_array($news)): $index = 0; $__LIST__ = $news;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($index % 2 );++$index;?><div class="container1" onclick="location='<?php echo U('news/detail',array('article_id'=>$item['article_id']));?>'">
                        <img class="x2" src="__ROOT__/attachs/<?php echo (($item["photo"])?($item["photo"]):'default.jpg'); ?>">	
                        <div class="des x8">
                            <h5><?php echo bao_msubstr($item['title'],0,10,false);?></h5>
                            <p class="intro">简介：<?php echo bao_msubstr($item['profiles'],0,12,false);?></p>
                            <p class="info"><span>作者：<?php echo ($item["source"]); ?></span> </p>
                        </div>
                        <div class="des x2">
                            <div class="intro2"><?php echo ($item["views"]); ?></div>
                             </div>
                     </div><?php endforeach; endif; else: echo "" ;endif; ?>	
                </ul>
                <div class="more"><a href="<?php echo U('news/index');?>">查看更多资讯</a></div>	
			</div>
		</div>
	</div>
    <div class="blank-10"></div>   
 <div class="blank-10 bg"></div>   

	<!--
<div class="title_index">
                <div class="cont">
                    <div class="text">
					<div align="center">附近信息</div>
					</div>
                </div>
                <div class="space"></div>
          </div>
 <div class="sq_list">
              <ul>
                   <li><a href="/mobile/shop/index/business/57.html">南林南方学院 </a> </li><li><a href="/mobile/shop/index/business/56.html">外国语学院 </a> </li><li><a href="/mobile/shop/index/business/55.html">炎黄学院 </a> </li><li><a href="/mobile/shop/index/business/42.html">淮阴师范学院新校区 </a> </li><li><a href="/mobile/shop/index/business/40.html">淮阴工学院老校区 </a> </li><li><a href="/mobile/shop/index/business/39.html">淮阴师范学院老校区 </a> </li><li><a href="/mobile/shop/index/business/38.html">淮阴商业学校 </a> </li>                   <li><a href="/mobile/shop/index.html">更多校园商铺</a></li>
               </ul>
          </div>  /首页广告-->       
    
 

	<div class="index-title">
		<h4>猜您喜欢</h4>
        <em><a href="<?php echo U('tuan/index');?>">更多抢购 <i class="icon-angle-right"></i></a></em>
	</div>
	<div class="line index-tuan">
		<ul id="index-tuan">
			<script>
				$(document).ready(function () {
					loaddata('<?php echo U("tuan/push",array("t"=>$nowtime,"p"=>"0000"));?>', $("#index-tuan"),true);
				});
			</script>
		</ul>
	</div>
    
	
     



<style>
.footer-search{padding:15px;background:#fff;border-bottom:thin solid #eee;padding-bottom:5px}
</style>
	<!--<div class="line footer-search">
		<form method="post"  action="<?php echo U('all/index');?>" id="form1" class="form1">
			<div class="form-group">
				<div class="field">
					<div class="input-group">
						<input type="text" class="input" name="keyword" size="50" value="<?php echo ($keyword); ?>" placeholder="搜您所需"  />
                        <span class="addbtn"><button type="submit" class="button icon-search"></button></span>
					</div>
				</div>
			</div>
		</form>
	</div>-->

    
    
    
<div class="footer">
    <a href="<?php echo U('mcenter/member/index');?>">客户端</a> &nbsp;  &nbsp;
    <?php if(!empty($is_shop)): ?><a href="<?php echo U('store/index/index');?>" title="管理商家">管理商家</a>   &nbsp; &nbsp; 
    <?php else: ?>
    <a href="<?php echo U('mcenter/apply/index');?>" title="商家入驻">商家入驻</a>   &nbsp; &nbsp;<?php endif; ?>
    城市：<a class="button button-small text-yellow" href="<?php echo U('city/index');?>"  title="<?php echo bao_msubstr($city_name,0,2,false);?>"><?php echo bao_msubstr($city_name,0,2,false);?></a>                          
</div>
<div class="blank-20"></div>
<?php if($CONFIG[other][footer] == 1): ?><footer class="foot-fixed">
<a class="foot-item <?php if(($ctl == 'index') AND ($act != 'more')): ?>active<?php endif; ?>" href="<?php echo U('index/index');?>">		
<span class="icon icon-home"></span>
<span class="foot-label">首页</span>
</a>

<a class="foot-item <?php if(($ctl) == "life"): ?>active<?php endif; ?>" href="<?php echo U('life/index');?>">			
<span class="icon icon-paw"></span><span class="foot-label">分类</span></a>

<a class="foot-item <?php if(($ctl) == "community"): ?>active<?php endif; ?>" href="<?php echo U('mobile/community/index');?>">			
<span class="icon icon-map-marker"></span><span class="foot-label">小区</span></a>

<a class="foot-item <?php if(($ctl) == "mcenter"): ?>active<?php endif; ?>" href="<?php echo U('mcenter/index/index');?>">			
<span class="icon icon-user"></span><span class="foot-label">我的</span></a>

<a class="foot-item <?php if(($ctl) == "biz"): ?>active<?php endif; ?>" href="<?php echo U('index/more');?>">			
<span class="icon icon-ellipsis-h"></span><span class="foot-label">更多</span></a>



</footer>
<?php else: endif; ?>

<iframe id="x-frame" name="x-frame" style="display:none;"></iframe>
<script> var BAO_PUBLIC = '__PUBLIC__'; var BAO_ROOT = '__ROOT__'; var BAO_SURL = '<?php echo ($CONFIG['site']['host']); ?>__SELF__'</script>
<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js" type="text/javascript"></script>
<script>
$(function(){
	var newurl = BAO_SURL.replace(/\?\S+/,'');
	var stitle = "<?php echo ($config['title']); ?>"; 
	var surl = newurl+'?fuid=<?php echo getuid();?>';	
	var catchpic = $('img');
	var lcatchpic = "<?php echo ($CONFIG['site']['host']); ?>" + $('img').eq(0).attr("src");
	$('img').each(function(){
		if($(this).width() >= 60){
			lcatchpic = $(this).attr("src");
			if(lcatchpic.indexOf("http://") < 0){
				lcatchpic = "<?php echo ($CONFIG['site']['host']); ?>" + lcatchpic;
			}
			return false;
		};
	});
	
	var spic = "<?php echo ($CONFIG['site']['host']); ?>"+BAO_PUBLIC+'/img/logo.jpg';
	if(catchpic.length > 0){
		spic = lcatchpic;
		
	}
	console.log(lcatchpic);
	//alert(spic);
	wx.config({
	debug: false,
	appId: '<?php echo ($signPackage["appId"]); ?>',
    timestamp: '<?php echo ($signPackage["timestamp"]); ?>',
    nonceStr: '<?php echo ($signPackage["nonceStr"]); ?>',
    signature: '<?php echo ($signPackage["signature"]); ?>',
	jsApiList: [
	'checkJsApi',
	'onMenuShareTimeline',
	'onMenuShareAppMessage',
	'onMenuShareQQ',
	'onMenuShareWeibo',
	'onMenuShareQZone'
	]
	});
	wx.ready(function(){
		wx.onMenuShareTimeline({
			title: stitle, 
			link: surl, 
			imgUrl: spic,
			success: function () { 
				alert("分享成功!");
			},
			cancel: function () { 
				alert("分享失败!");
			}
		});
		wx.onMenuShareAppMessage({		
			title: stitle,
			desc: stitle, // 分享描述
			link: surl, 
			imgUrl: spic,
			type: '', // 分享类型,music、video或link，不填默认为link
			dataUrl: '', // 如果type是music或video，则要提供数据链接，默认为空
			success: function () { 
				alert("分享成功!");
			},
			cancel: function () { 
				alert("分享失败!");
			}
		});
		wx.onMenuShareQQ({
			title: stitle,
			desc: stitle, // 分享描述
			link: surl, 
			imgUrl: spic,
			success: function () { 
			   alert("分享成功!");
			},
			cancel: function () { 
			   alert("分享失败!");
			}
		});
		wx.onMenuShareWeibo({
			title: stitle,
			desc: stitle, // 分享描述
			link: surl, 
			imgUrl: spic,
			success: function () { 
			  alert("分享成功!");
			},
			cancel: function () { 
				alert("分享失败!");
			}
		});	
		wx.onMenuShareQZone({
			title: stitle,
			desc: stitle, // 分享描述
			link: surl, 
			imgUrl: spic,
			success: function () { 
			   alert("分享成功!");
			},
			cancel: function () { 
				alert("分享失败!");
			}
		});	
	});
})	
</script>	 
</body>
</html>
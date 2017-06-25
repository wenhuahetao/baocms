<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="zh-cn">
	<head>
		<meta charset="utf-8">
		<title><?php if(!empty($seo_title)): echo ($seo_title); ?>_<?php endif; echo ($CONFIG["site"]["sitename"]); ?></title>
		<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
		<?php if($CONFIG[site][concat] != 1): ?><link rel="stylesheet" href="/static/default/wap/css/base.css">
		<link rel="stylesheet" href="/static/default/wap/css/<?php echo ($ctl); ?>.css"/>
		<script src="/static/default/wap/js/jquery.js"></script>
		<script src="/static/default/wap/js/base.js"></script>
		<script src="/static/default/wap/other/layer.js"></script>
		<script src="/static/default/wap/other/roll.js"></script>
		<script src="/static/default/wap/js/public.js"></script>
		<?php else: ?>
		<link rel="stylesheet" href="/static/default/wap/css/??base.css,<?php echo ($ctl); ?>.css" />
		<script src="/static/default/wap/js/??jquery.js,base.js,roll.js,layer.js,public.js"></script><?php endif; ?>
        <script src="__TMPL__statics/js/baocms.js?v=20150801"></script>
        
		<script>
            function bd_encrypt(gg_lat, gg_lon)   
            {
			    var x_pi = 3.14159265358979324 * 3000.0 / 180.0;  
                var  x = gg_lon;
                var y = gg_lat;  
                var  z = Math.sqrt(x * x + y * y) + 0.00002 * Math.sin(y * x_pi);  
                var  theta = Math.atan2(y, x) + 0.000003 * Math.cos(x * x_pi);  
                var bd_lon = z * Math.cos(theta) + 0.0065;  
                var  bd_lat = z * Math.sin(theta) + 0.006; 

				var page =  "/mobile/near/dingwei/lat/"+bd_lat+"/lng/"+bd_lon+".html";
				$.get(page, function (data) {
					if(data == '1'){
						$.get("/mobile/near/address.html", function (data) {
							if(data!=''){
								$("#local-addr").html(data);
							}else{
								$("#local-addr").html("暂时没获取到位置信息");
							}
						}, 'html');
					}
				}, 'html');
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
			智慧小区
		</div>
		<div class="top-share">
			<a href="javascript:void(0);" id="cate-btn"><i class="icon-bars"></i></a>
		</div>
	</header>
    
<!--定位开始-
<div class="line">
		<div class="blank-10"></div>
		<div class="padding">
			<i class="icon-map-marker"></i> <span id="local-addr"></span> (<a href="javascript:reset();" class="text-gray" id="local-reset">重新定位</a>)
		</div>
	</div>

<!--定位结束-->	
    <div class="serch-bar-mask" id="cate_menu" style="display:none;top:50px;">
		<div class="serch-bar-mask-list">
			<ul>
            <li><a <?php if($area_id == null): ?>class="on"<?php endif; ?> href="<?php echo LinkTo('community/index',array('change'=>1));?>">全部</a></li>
            <?php if(is_array($areas)): $index = 0; $__LIST__ = $areas;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$var): $mod = ($index % 2 );++$index; if($var['city_id'] == $city_id){ ?>
                <li <?php if($index%3 == 2): ?>class="area_spe"<?php endif; ?> ><a <?php if($var["area_id"] == $area_id): ?>class="on"<?php endif; ?>  href="<?php echo LinkTo('community/index',array('area'=>$var['area_id'],'change'=>1));?>"><?php echo ($var["area_name"]); ?></a></li>
                <?php } endforeach; endif; else: echo "" ;endif; ?>
            
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
		<form method="post"  action="<?php echo U('community/index',array('change'=>1));?>" id="form1" class="form1">
			<div class="form-group">
				<div class="field">
					<div class="input-group">
						<span class="addbtn"><button type="button" class="button icon-search"></button></span>
						<input type="text" class="input" name="keyword" size="50" value="<?php echo ($keyword); ?>" placeholder="输入小区名"  />
						<span class="addbtn"><button type="submit" class="button">搜索</button></span>
					</div>
				</div>
			</div>
		</form>
	</div>
	
	<div class="xiaoqu-list">
		<ul id="xiaoqu-list"></ul>  
	</div>

    <script>
		$(document).ready(function () {
			loaddata('<?php echo ($nextpage); ?>', $("#xiaoqu-list"), true);
		});
    </script>
    
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=qfbt1AS4SZZvfZvSXE0A1Mx2"></script>
	<script>
		$(document).ready(function () {
			TouchSlide({ 
				slideCell:"#focus",
				titCell:".hd ul", //开启自动分页 autoPage:true ，此时设置 titCell 为导航元素包裹层
				mainCell:".bd", 
				effect:"left", 
				autoPlay:false,//自动播放
				autoPage:true, //自动分页
			});
			reset();
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
			
		});	
   
	function reset() {
		var addr = $("#local-addr").html();
		$("#local-addr").html("定位中……");
			// 百度地图API功能
	var map = new BMap.Map("allmap");
	var point = new BMap.Point(116.331398,39.897445);
	map.centerAndZoom(point,12);
	var geolocation = new BMap.Geolocation();
	geolocation.getCurrentPosition(function(r){
		if(this.getStatus() == BMAP_STATUS_SUCCESS){
			var mk = new BMap.Marker(r.point);
			map.addOverlay(mk);
			map.panTo(r.point);
			lat=r.point.lat;
			lng=r.point.lng;
			getlat(lng,lat);
			//alert('您的位置：'+lng+','+lat);
			$("#addr").html(lng+','+lat);
		}
		else {
			//alert('failed'+this.getStatus());
		}        
	},{enableHighAccuracy: true})
		
		}
		function getlat(lng,lat){
	//alert('开始获取');
	var map = new BMap.Map("allmap"); 
	var point = new BMap.Point(lng,lat);
	map.centerAndZoom(point,12);
	var geoc = new BMap.Geocoder();    
	var pt = point;
	geoc.getLocation(pt, function(rs){
			var addComp = rs.addressComponents;
			//alert(addComp.city + ", " + addComp.district + ", " + addComp.street + ", " + addComp.streetNumber);
			$("#local-addr").html(addComp.city + addComp.district + addComp.street + addComp.streetNumber);
		});        
		}
		 
	</script>
    
		

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
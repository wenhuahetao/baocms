<?php if (!defined('THINK_PATH')) exit();?>

<title>商家管理中心</title>

<!DOCTYPE html>
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

<script>

	var BAO_PUBLIC = '__PUBLIC__';

	var BAO_ROOT = '__ROOT__';

</script>



<style>

.fr1{ text-align:center;}

.login-open a {

    color: #333 !important;

}

</style>




<!DOCTYPE html>
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

			<a class="top-addr" href="<?php echo ($backurl); ?>"></a>

		</div>

		<div class="top-title">

			商家管理登录

		</div>

		<div class="top-share">

			

		</div>

	</header>





   <div class="line">

        <div class="login-form">

        <div class="blank-10"></div>

            <div class="form-group">

            <div class="field field-icon">

            <span class="icon icon-user"></span>

            <input class="input account" type="text" value="" name="account" placeholder="请输入商家平台账号">

            </div>

            </div>

      <div class="blank-10"></div>

            <div class="form-group">

				<div class="field field-icon">

					<span class="icon icon-key"></span>

            <input class="input password" type="password" value="" name=" 、password" placeholder="请输入商家平台密码">

            

             </div>

            </div>  

            <div class="blank-10"></div>   

             <div class="form-group">

				<div class="field field-icon">

					<span class="icon icon-lock"></span>

           <input class="input yzm" type="text" value="" name="yzm" placeholder="请输入商家验证码">

            

             </div>

            </div>

                         

                </div>

                <div class="blank-10"></div>

                

                <div class="fr1"><a rel="bao_img_code" class="yzm_code" href="javascript:void(0);"><img id="bao_img_code" src="__ROOT__/index.php?g=app&m=verify&a=index&mt=<?php echo time();?>" width="75" height="36" /></a><em><a rel="bao_img_code" class="yzm_code" href="javascript:void(0);">换一张</a></em></div>

            <div class="blank-10"></div>

            </div>

            <div class="container">

				<div class="form-button">

                

                 <input id="btn" class="btn button button-block button-big bg-dot" type="button" value="商家登录">

                </div>

			</div>         

            

      </div>  

        

    </div>


<div class="blank-10"></div>

<div class="container login-open">

			<h5 style="text-align:center">欢迎登商家管理中心、随时随地装进口袋！</h5>

			<div class="blank-10"></div>

</div>

<div class="blank-30"></div>



<div class="container">

<div class="form-button">

<a  style="text-align: center;" href="<?php echo U('mcenter/apply/index');?>" class="button button-block button-big bg-yellow">申请入驻</a>


</div>

</div> 

<div class="blank-10"></div>   

<div class="container login-open">

<h5 style="text-align:center">申请入驻联系电话：<a href="tel:<?php echo ($CONFIG["site"]["tel"]); ?>"><?php echo ($CONFIG["site"]["tel"]); ?></a></h5>



</div>           

            

            





<script type="text/javascript" language="javascript">

	$(document).ready(function(){

		var time = "<?php echo time(); ?>";

		$('.yzm_code').click(function(){

			var l = "__ROOT__/index.php?g=app&m=verify&a=index&mt=";

			time = time + 1;

			$('#bao_img_code').attr('src',l+time);

		})

		

		

		$('.btn').click(function(){

		

			var account = $('.account').val();

			var password = $('.password').val();

			var yzm = $('.yzm').val();

			

			$.post('<?php echo U("passport/login");?>',{account:account,password:password,yzm:yzm},function(result){

				if(result.status == 'success'){

					layer.msg(result.message);

					setTimeout(function(){

						window.location.href=result.backurl;

					},2000);

				}else{

					layer.msg(result.message);

					if(result.backurl){

						setTimeout(function(){

							location.reload();

						},2000);

					}

				}

				

			},'json');

		

		})

		

		

		

	})

</script>

</body>

</html>
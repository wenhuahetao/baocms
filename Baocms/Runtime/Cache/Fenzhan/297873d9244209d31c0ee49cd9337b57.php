<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title><?php echo ($CONFIG["site"]["title"]); ?>分站管理后台2.0登录</title>
        <meta name="description" content="<?php echo ($CONFIG["site"]["title"]); ?>管理后台" />
        <meta name="keywords" content="<?php echo ($CONFIG["site"]["title"]); ?>管理后台" />
        <link href="__TMPL__statics/css/pub.css" rel="stylesheet" type="text/css" />
        <script> var BAO_PUBLIC = '__PUBLIC__';
            var BAO_ROOT = '__ROOT__';</script>
        <script src="__PUBLIC__/js/jquery.js"></script>
        <script src="__PUBLIC__/js/my97/WdatePicker.js"></script>
        <script src="__PUBLIC__/js/admin.js"></script>
        
		<style>
		.main_logon .copy {font-family: "宋体";font-size: 14px;line-height: 44px;color: #fec0b3;height: 44px;width: 100%;background-color: #bf3601; text-align:left !important;padding-left: 8px;}
		.main_logon .copy1 {font-family: "宋体";font-size: 14px;line-height: 44px;color: #fec0b3;height: 44px;width: 100%;background-color: #bf3601; text-align:center;}
		.login {width: 660px; margin: 60px auto !important;}
		</style>
    </head>
    <body>
        <iframe id="baocms_frm" name="baocms_frm" style="display:none;"></iframe>
        <div class="main_logon">
            <div class="login">
                <p class="copy">开分站最怕什么？资金问题，独家2.0版隆重上线！</p>
                <p class="copy">1：session分开单独管理，禁止管理员恶意跨平台登录！</p>
                <p class="copy">2：必须禁止分站管理员查看、删除、编辑、审核、更新其他分站信息</p>
                <p class="copy">3：非分站管理员严禁登录分站后台操作！分站登录账户：ceshi 密码：ceshi </p>
                <p class="copy">4：非总站管理员严禁登录总管后台操作！总站账户：demo 密码：demodemo</p>
                <div class="title" style="font-size:30px;"><?php echo ($CONFIG["site"]["title"]); ?>分站后台2.0管理系统</div>
                <form method="post" action="<?php echo U('login/loging');?>" target="baocms_frm" >
                    <table cellpssssadding="0" cellspacing="0" width="100%">
                        <tr>
                            <td width=""><input type="text" name="username" class="loginInput1" placeholder="请输入用户名"/></td>
                        </tr>
                        <tr>
                            <td><input type="password" name="password" class="loginPass" placeholder="请输入密码" /></td>
                        </tr>
                        <tr>
                            <td><input type="text" name="yzm" class="yzm" placeholder="请输入验证码" />
                                <span class="yzm_code" style="margin:2px 0 0px; display:block; cursor:pointer;"><img style="width:124px; height:44px;"  src="__ROOT__/index.php?g=app&m=verify&a=index&mt=<?php echo time();?>" /></span></td>
                        </tr>
                        <tr>
                            <td><input type="submit" class="loginBtn" value="确认登录" /></td>
                        </tr>
                    </table>
                </form> 
            </div>

            <p class="copy1">技术支持：生活网络科技有限公司 www.abc.cn ，注意，非分站管理员请不要再此登录</p>

        </div>		  	   	

        
</div>
</body>
</html>
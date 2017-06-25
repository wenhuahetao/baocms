<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title><?php echo ($CONFIG["site"]["title"]); ?>管理后台</title>
        <meta name="description" content="<?php echo ($CONFIG["site"]["title"]); ?>管理后台" />
        <meta name="keywords" content="<?php echo ($CONFIG["site"]["title"]); ?>管理后台" />
        <!-- <link href="__TMPL__statics/css/index.css" rel="stylesheet" type="text/css" /> -->
        <link href="__TMPL__statics/css/style.css" rel="stylesheet" type="text/css" />
        <link href="__TMPL__statics/css/land.css" rel="stylesheet" type="text/css" />
        <link href="__TMPL__statics/css/pub.css" rel="stylesheet" type="text/css" />
        <link href="__TMPL__statics/css/main.css" rel="stylesheet" type="text/css" />
        <link href="__PUBLIC__/js/jquery-ui.css" rel="stylesheet" type="text/css" />
        <script> var BAO_PUBLIC = '__PUBLIC__'; var BAO_ROOT = '__ROOT__'; </script>
        <script src="__PUBLIC__/js/jquery.js"></script>
        <script src="__PUBLIC__/js/jquery-ui.min.js"></script>
        <script src="__PUBLIC__/js/my97/WdatePicker.js"></script>
        <script src="/Public/js/layer/layer.js"></script>
        <script src="__PUBLIC__/js/admin.js?v=20150409"></script>
    </head>
    
    
    </head>


<!--[if lte IE 9]>
<div id="ie9-warning">您正在使用 Internet Explorer 9以下的版本，请用谷歌浏览器访问后台、部分浏览器可以开启极速模式访问！不懂点击这里！ <a href="http://www.abc.com/10478.html" target="_blank">查看为什么？</a>
</div>
<script type="text/javascript">
function position_fixed(el, eltop, elleft){  
       // check if this is IE6  
       if(!window.XMLHttpRequest)  
              window.onscroll = function(){  
                     el.style.top = (document.documentElement.scrollTop + eltop)+"px";  
                     el.style.left = (document.documentElement.scrollLeft + elleft)+"px";  
       }  
       else el.style.position = "fixed";  
}
       position_fixed(document.getElementById("ie9-warning"),0, 0);
</script>
<![endif]-->


    <body>
         <iframe id="baocms_frm" name="baocms_frm" style="display:none;"></iframe>
   <div class="main">
<div class="mainBt">
    <ul>
        <li class="li1">商家</li>
        <li class="li2">会员管理</li>
        <li class="li2 li3">会员管理</li>
    </ul>
</div>
<div class="main-jsgl main-sc">
    <p class="attention"><span>注意：</span>用户帐号只允许是手机号码或者邮件，如果开启了UC整合，那么修改密码请在UC里面操作！另外后台注册的用户不会写入到UC的</p>
    <div class="jsglNr">
        <div class="selectNr" style="margin-top: 0px; border-top:none;">
            <div class="left">
                <?php echo BA('user/create','','添加会员','load','',700,600);?>
            </div>
            <div class="right">
                <form class="search_form" method="post" action="<?php echo U('user/index');?>">
                    <div class="seleHidden" id="seleHidden">
                        <label>
                            <span>账户</span>
                            <input type="text" name="account" value="<?php echo ($account); ?>" class="inptText" />
                        </label>
                        
                          <label>
                            <span>手机号码</span>
                            <input type="text" name="mobile" value="<?php echo ($mobile); ?>" class="inptText" />
                        </label>
                        <label>
                            <span>昵称</span>
                            <input type="text" name="nickname" value="<?php echo ($nickname); ?>" class="inptText" />
                            <input type="submit" value="   搜索"  class="inptButton" />
                        </label>
                    </div> 
                </form>
                <a href="javascript:void(0);" class="searchG">高级搜索</a>
                <div class="clear"></div>
            </div>
            <div class="clear"></div>
        </div>
        <form method="post" action="<?php echo U('user/index');?>">
            <div class="selectNr selectNr2">
                <div class="left">
                    <div class="seleK">
                        <label>
                            <span>账户</span>
                            <input type="text" name="account" value="<?php echo ($account); ?>" class="inptText" />
                        </label>
                        <label>
                            <span>昵称</span>
                            <input type="text" name="nickname" value="<?php echo ($nickname); ?>" class="inptText" />
                        </label>
                        <label>
                            <span>手机号码</span>
                            <input type="text" name="mobile" value="<?php echo ($mobile); ?>" class="inptText" />
                        </label>
                        <label>
                            <span>扩展字段</span>
                            <input type="text" name="ext0" value="<?php echo ($ext0); ?>" class="inptText" />
                        </label>
                        <label>
                            <span>用户等级：</span>
                            <select name="rank_id" class="select w100">
                                <option value="0">请选择</option>
                                <?php if(is_array($ranks)): foreach($ranks as $key=>$item): ?><option <?php if(($item["rank_id"]) == $rank_id): ?>selected="selected"<?php endif; ?>  value="<?php echo ($item["rank_id"]); ?>"><?php echo ($item["rank_name"]); ?></option><?php endforeach; endif; ?>
                            </select>
                        </label>
                    </div>
                </div>
                <div class="right">
                    <input type="submit" value="   搜索"  class="inptButton" />
                </div>
        </form>
        <div class="clear"></div>
    </div>
    <form  target="baocms_frm" method="post">
        <div class="tableBox">
            <table bordercolor="#dbdbdb" cellspacing="0" width="100%" border="1px"  style=" border-collapse: collapse; margin:0px; vertical-align:middle; background-color:#FFF;"  >
                <tr>
                    <td class="w50"><input type="checkbox" class="checkAll" rel="user_id" /></td>
                    <td class="w50">ID</td>
                    <td>账户（昵称）</td>
                    <td>会员等级</td>
                    <td>账户余额</td>
                    <td>注册时间(IP)</td>
                    <td>状态</td>
                    <td class="w150">操作</td>
                </tr>
                <?php if(is_array($list)): foreach($list as $key=>$var): ?><tr>
                        <td><input class="child_user_id" type="checkbox" name="user_id[]" value="<?php echo ($var["user_id"]); ?>" /></td>
                        <td><?php echo ($var["user_id"]); ?></td>
                        <td>
                        <?php if(!empty($var['account'])): ?>账户：<?php echo ($var["account"]); ?><br/><?php endif; ?>
                        昵称：<?php echo ($var["nickname"]); ?>
                        </td>
                        <td>
                        等级：vip<?php echo ($var['rank_id']); ?><br/>
                        </td>
                        <td>
                        余额：<?php echo round($var['money']/100,2);?><br/>
                        积分：<?php echo ($var["integral"]); ?>
                        
                        </td>
                        <td>
                        <?php echo (date('Y-m-d H:i:s',$var["reg_time"])); ?><br/>
                        <?php echo ($var["reg_ip"]); ?>(<?php echo ($var["reg_ip_area"]); ?>)
                        </td>


                        <td>
                    <?php if($var["closed"] == 0): ?><font style="color: green;">正常</font>
                        <?php elseif($var["closed"] == 1): ?>
                        <font style="color: red;">已删除</font>
                        <?php else: ?>
                        <font style="color: gray;">等待激活</font><?php endif; ?>
                    </td>
                    <td class="w150">
                        <?php echo BA('user/integral',array("user_id"=>$var["user_id"]),'积分','load','remberBtn_small',600,350);?>
                        <?php echo BA('user/money',array("user_id"=>$var["user_id"]),'余额','load','remberBtn_small',600,350);?>
                        <?php echo BA('user/edit',array("user_id"=>$var["user_id"]),'编辑','load','remberBtn_small',700,600);?>
                        <?php echo BA('user/delete',array("user_id"=>$var["user_id"]),'删除','act','remberBtn_small');?>
                        <?php if(($var["closed"]) == "-1"): echo BA('user/audit',array("user_id"=>$var["user_id"]),'审核通过','act','remberBtn_small'); endif; ?>        
                        <a target="_blank" href="<?php echo U('user/manage',array('user_id'=>$var['user_id']));?>" class="remberBtn_small">管理用户</a>
                    </td>
                    </tr><?php endforeach; endif; ?>
            </table>
            <?php echo ($page); ?>
        </div>
        <div class="selectNr" style="margin-bottom: 0px; border-bottom: none;">
            <div class="left">
                <?php echo BA('user/audit','','批量审核','list',' remberBtn');?>
                <?php echo BA('user/delete','','批量删除','list',' a2');?>
            </div>
        </div>
    </form>
</div>
</div>

     
        
</div>
</body>
</html>
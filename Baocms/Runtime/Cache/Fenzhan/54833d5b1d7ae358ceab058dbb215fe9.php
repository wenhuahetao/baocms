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
        <script src="__PUBLIC__/js/admin.js?v=20150409"></script>
    </head>
    <body style="background-color: #f1f1f1;">
         <iframe id="baocms_frm" name="baocms_frm" style="display:none;"></iframe>
   <div class="main">

     <?php $city_ids = D('City') -> where('city_id ='.$admin['city_id']) -> find(); $city = $city_ids['name']; ?>
     
     
<div class="main">
    <div class="mainBt">
        <ul>
            <li class="li1">后台首页</li>
        </ul>
    </div>
    <div class="mainNr">
        <div class="left">
            <div class="mainLeftBox">
                <div class="title">您管理的分站：（<?php echo ($city); ?>）&nbsp;&nbsp;&nbsp; 后台数据统计</div>
                <div class="titleNr">
                    <div class="nr">
                        <div class="lef">
                            <ul>
                                <li>商家数，共<span><?php echo ($counts["shops"]); ?></span>商家</li>
                                <li class="bg">会员数，共<span><?php echo ($counts["users"]); ?></span>会员</li>
                                <li>文章数，共<span><?php echo ($counts["article"]); ?></span>篇文章</li>
                                <li class="bg">小区数量，共<span><?php echo ($counts["community"]); ?></span>个小区</li>
                                <li>优惠劵，共<span><?php echo ($counts["coupon"]); ?></span>优惠劵</li>
                                <li class="bg">外卖商家数量，共<span><?php echo ($counts["ele"]); ?></span>个外卖商家</li>
                                <li>商品数量，共<span><?php echo ($counts["goods"]); ?></span>商品 </li>
                                <li class="bg">团购数量，共<span><?php echo ($counts["tuan"]); ?></span>个团购</li>
                                <li>分类信息数量，共<span><?php echo ($counts["life"]); ?></span>条分类信息</li>
                                <li class="bg">村镇数量，共<span><?php echo ($counts["village"]); ?></span>个村镇</li>
                                <li>快递数量，共<span><?php echo ($counts["express"]); ?></span>条快递数量</li>
                                <li class="bg"></li>
                            </ul>
                        </div>
                        <div class="lef">
                            <ul>
                                <li>分站总交易：<?php echo round($counts['money']/100,2);?>元。</li>
                                <li class="bg">今日总交易：<span><?php echo round($counts['money_day']/100,2);?></span>元。</li>
                                <li>今日商城交易：<span><?php echo round($counts['money_day_goods']/100,2);?></span>元。</li>
                                <li class="bg">今日团购交易：<span><?php echo round($counts['money_day_tuan']/100,2);?></span>元。</li>
                                <li>今日外卖交易：<span><?php echo round($counts['money_day_ele']/100,2);?></span>元。</li>
                                <li class="bg">今日订座交易：<span><?php echo round($counts['money_day_ding']/100,2);?></span>元。</li>
                                <li>商城（总）：<?php echo round($counts['money_goods']/100,2);?>元。</li>
                                <li class="bg">团购（总）：<?php echo round($counts['money_tuan']/100,2);?>元。</li>
                                <li>外卖（总）：<?php echo round($counts['money_ele']/100,2);?>元。</li>
                                <li class="bg">商城（总）：<?php echo round($counts['money_goods']/100,2);?>元。</li>
                                <li>订座（总）：<?php echo round($counts['money_ding']/100,2);?>元。</li>
                                <li class="bg"></li>
                            </ul>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="center">
            <div class="mainC1">
                <div class="title">官方动态</div>
                <div class="nr">
                    <div class="cen">
                        <ul>
                        <?php $i=0; ?>
                        <?php if(is_array($list)): foreach($list as $key=>$var): $i++; ?>
                            <li> <?php echo ($i); ?>： <a href="<?php if(!empty($var['link_url'])): echo ($var['link_url']); else: echo U('msg/detail',array('msg_id'=>$var['msg_id'])); endif; ?>"><?php echo ($var['title']); ?></a></li><?php endforeach; endif; ?>  
                        </ul>
                        <?php echo ($page); ?>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
            
        </div>
        <div class="clear"></div>
    </div>
</div>

</div>
</body>
</html>
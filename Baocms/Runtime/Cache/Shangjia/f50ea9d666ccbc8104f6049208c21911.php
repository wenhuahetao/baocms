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

<script src="__PUBLIC__/js/my97/WdatePicker.js"></script>

<div class="sjgl_lead">

    <ul>

        <li><a href="#">结算</a> > <a href="">资金记录</a> > <a>余额日志</a></li>

    </ul>

</div>

<div class="tuan_content">



    <div class="tuanfabu_tab">

        <ul>

            <li class="tuanfabu_tabli "><a href="<?php echo U('money/index');?>">商户资金日志</a></li>

            <li class="tuanfabu_tabli"><a href="<?php echo U('money/shopmoney');?>">商家资金</a></li>

            <li class="tuanfabu_tabli on"><a href="<?php echo U('money/tjmonth');?>">月统计明细</a></li>

            <li class="tuanfabu_tabli"><a href="<?php echo U('money/tjday');?>">日结算趋势</a></li>

        </ul>

    </div> 

    <table class="tuan_table" width="100%" border="0" cellspacing="0" cellpadding="0">

        <tr style="background-color:#eee;">

            <td>月份</td>

            <td>金额</td>

            

        </tr>

        <?php if(is_array($list)): foreach($list as $key=>$var): ?><tr>

                <td><?php echo ($var["m"]); ?></td>

                <td><?php echo round($var['money']/100,2);?></td>

            </tr><?php endforeach; endif; ?>

    </table>

    <div class="paging">

        <?php echo ($page); ?>

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
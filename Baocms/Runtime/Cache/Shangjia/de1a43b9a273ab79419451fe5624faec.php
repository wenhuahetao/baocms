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
        <li><a href="#">商家</a> > <a href="">商家管理</a> > <a>商家认证</a></li>
    </ul>
</div>
<div class="tuan_content">

<?php if(empty($shop_audit)): ?><div class="radius5 tuan_top">
        <div class="tuan_top_t">
            <div class="left tuan_topser_l">添加认证信息<?php echo ($SHOP['shop_name']); ?></div>
        </div>
    </div> 
    <div class="tabnr_change  show">
        <form method="post"  action="<?php echo U('audit/index');?>"  target="baocms_frm">
            <script type="text/javascript" src="__PUBLIC__/js/uploadify/jquery.uploadify.min.js"></script>
            <link rel="stylesheet" href="__PUBLIC__/js/uploadify/uploadify.css">
            <table class="tuanfabu_table" width="100%" border="0" cellspacing="0" cellpadding="0">
            
            
             <tr>
                    <td><p class="tuanfabu_t">营业执照：</p></td>
                    <td><div class="tuanfabu_nr">
                            <div style="width: 300px;height: 100px; float: left;">
                                <input type="hidden" name="data[photo]" value="<?php echo ($detail["photo"]); ?>" id="data_photo" />
                                <input id="photo_file" name="photo_file" type="file" multiple="true" value="" />
                            </div>
                            <div style="width: 300px;height: 100px; float: left;">
                                <img id="photo_img" width="80" height="80"  src="__ROOT__/attachs/<?php echo (($detail["photo"])?($detail["photo"]):'default.jpg'); ?>" />
                                建议尺寸<?php echo ($CONFIG["attachs"]["shop_audit"]["thumb"]); ?>
                            </div>
                            <script>
                                $("#photo_file").uploadify({
                                    'swf': '__PUBLIC__/js/uploadify/uploadify.swf?t=<?php echo ($nowtime); ?>',
                                    'uploader': '<?php echo U("app/upload/uploadify",array("model"=>"shop_audit"));?>',
                                    'cancelImg': '__PUBLIC__/js/uploadify/uploadify-cancel.png',
                                    'buttonText': '上传营业执照',
                                    'fileTypeExts': '*.gif;*.jpg;*.png',
                                    'queueSizeLimit': 1,
                                    'onUploadSuccess': function (file, data, response) {
                                        $("#data_photo").val(data);
                                        $("#photo_img").attr('src', '__ROOT__/attachs/' + data).show();
                                    }
                                });
                            </script>
                        </div>
                    </td>
                </tr>
                
                
                
                <tr>
                    <td width="120"><p class="tuanfabu_t">企业名称：</p></td>
                    <td><div class="tuanfabu_nr">
                            <input type="text" name="data[name]" value="<?php echo (($detail["name"])?($detail["name"]):''); ?>" class="tuanfabu_int tuanfabu_intw2" />
                        </div></td>
                </tr>
                <tr>
                    <td width="120"><p class="tuanfabu_t">注册号：</p></td>
                    <td><div class="tuanfabu_nr">
                            <input type="text" name="data[zhucehao]" value="<?php echo (($detail["zhucehao"])?($detail["zhucehao"]):''); ?>" class="tuanfabu_int tuanfabu_intw2" />
                        </div></td>
                </tr>
               
               
             
                  <tr>
                    <td width="120"><p class="tuanfabu_t">营业地址：</p></td>
                    <td><div class="tuanfabu_nr">
                            <input type="text" name="data[addr]" value="<?php echo (($detail["addr"])?($detail["addr"]):''); ?>" class="tuanfabu_int tuanfabu_intw2" />
                        </div></td>
                </tr>
                
                
                <tr>
                    <td width="120"><p class="tuanfabu_t">营业期限：</p></td>
                    <td><div class="tuanfabu_nr">
                            <input type="text" name="data[end_date]" value="<?php echo (($detail["end_date"])?($detail["end_date"]):''); ?>" onfocus="WdatePicker();" class="tuanfabu_int tuanfabu_intw2" />
                        </div></td>
                </tr>
                
                <tr>
                    <td width="120"><p class="tuanfabu_t">组织机构代码证：</p></td>
                    <td><div class="tuanfabu_nr">
                            <input type="text" name="data[zuzhidaima]" value="<?php echo (($detail["zuzhidaima"])?($detail["zuzhidaima"]):''); ?>" class="tuanfabu_int tuanfabu_intw2" />
                        </div></td>
                        
                </tr>
                
                
              
                <!--下面是员工信息-->
                
                 <tr>
                    <td width="120"><p class="tuanfabu_t">员工姓名：</p></td>
                    <td><div class="tuanfabu_nr">
                            <input type="text" name="data[user_name]" value="<?php echo (($detail["user_name"])?($detail["user_name"]):''); ?>" class="tuanfabu_int tuanfabu_intw2" />
                        </div></td>
                </tr>
                
                <tr>
                    <td><p class="tuanfabu_t">员工身份证：</p></td>
                    <td><div class="tuanfabu_nr">
                            <div style="width: 300px;height: 100px; float: left;">
                                <input type="hidden" name="data[pic]" value="<?php echo ($detail["pic"]); ?>" id="data_pic" />
                                <input id="pic_file" name="pic_file" type="file" multiple="true" value="" />
                            </div>
                            <div style="width: 300px;height: 100px; float: left;">
                                <img id="pic_img" width="80" height="80"  src="__ROOT__/attachs/<?php echo (($detail["pic"])?($detail["pic"]):'default.jpg'); ?>" />
                                建议尺寸<?php echo ($CONFIG["attachs"]["shop_audit"]["thumb"]); ?>
                            </div>
                            <script>
                                $("#pic_file").uploadify({
                                    'swf': '__PUBLIC__/js/uploadify/uploadify.swf?t=<?php echo ($nowtime); ?>',
                                    'uploader': '<?php echo U("app/upload/uploadify",array("model"=>"shop_audit"));?>',
                                    'cancelImg': '__PUBLIC__/js/uploadify/uploadify-cancel.png',
                                    'buttonText': '上传员工身份证',
                                    'fileTypeExts': '*.gif;*.jpg;*.png',
                                    'queueSizeLimit': 1,
                                    'onUploadSuccess': function (file, data, response) {
                                        $("#data_pic").val(data);
                                        $("#pic_img").attr('src', '__ROOT__/attachs/' + data).show();
                                    }
                                });
                            </script>
                        </div>
                    </td>
                </tr>
                
                  <tr>
                    <td width="120"><p class="tuanfabu_t">员工手机号：</p></td>
                    <td><div class="tuanfabu_nr">
                            <input type="text" name="data[mobile]" value="<?php echo (($detail["mobile"])?($detail["mobile"]):''); ?>" class="tuanfabu_int tuanfabu_intw2" />
                        </div></td>
                </tr>
                
                
             
            </table>
            <div class="tuanfabu_an">
                <input type="submit" class="radius3 sjgl_an tuan_topbt" value="确认编辑" />
            </div>
        </form>
    </div> 
</div>

<?php else: ?>
	<?php if($shop_audit['audit'] == 0): ?>未审核
    <a href="<?php echo U('audit/edit',array('audit_id'=>$shop_audit['audit_id']));?>">编辑</a>
    
    <?php else: ?>已审核无法编辑<?php endif; endif; ?>


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
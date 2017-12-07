<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/WEB-INF/view/layui.jsp"%>
	<!--<link rel="stylesheet" href="../resource/css/flyglobal.css">-->

<style>

 .layui-icon {
            margin-top: 6px !important;
 }
</style>
</head>
<body>
<div style="padding: 10px">
	<div class="fly-panel" pad20 style="padding-top: 5px;">
		<!--<div class="fly-none">没有权限</div>-->
		<div class="layui-form layui-form-pane">
						<form action="" method="post">

							<div class="layui-form-item layui-form-text">
								<div class="layui-input-block">
									<textarea id="L_content" name="content"  placeholder="详细描述" class="layui-textarea fly-editor" style="height: 260px;"></textarea>
								</div>
							</div>

							<div class="layui-form-item">
								<button class="layui-btn" lay-filter="go" lay-submit>立即发布</button>
							</div>
						</form>
					</div>
				</div>
			</div>




</body>
<script>
    layui.use(['layedit','form'], function(){
        var layedit = layui.layedit,form=layui.form;
        var index=layedit.build('L_content'); //建立编辑器
        form.on("submit(go)",function(data){
           // layer.msg("999");
			alert(8);
            alert(layedit.getContent(index));

           return false;
		});

    });

</script>
</html>
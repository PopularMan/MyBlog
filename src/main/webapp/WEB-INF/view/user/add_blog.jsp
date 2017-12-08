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
				<div class="layui-row layui-col-space15 layui-form-item">
					<div class="layui-col-md3">
						<label class="layui-form-label">所在专栏</label>
						<div class="layui-input-block">
							<select  name="blog_type" id="type" lay-filter="column">
								<option value="1">JAVA</option>
								<option value="2">.NET</option>
								<option value="3">C++</option>
							</select>
						</div>
					</div>
					<div class="layui-col-md9">
						<label for="L_title" class="layui-form-label">标题</label>
						<div class="layui-input-block">
							<input type="text"  name="blog_title" id="title" value=“住标题"  autocomplete="off" class="layui-input">

						</div>
					</div>
				</div>
				<div class="layui-row layui-col-space15 layui-form-item">
					<div class="layui-col-md3">
						<label class="layui-form-label">博客状态</label>
						<div class="layui-input-block">
							<select lay-verify="required"  name="blog_state" id="status" lay-filter="column">
								<option value="0">置顶</option>
								<option value="1">不置顶</option>
								<option value="2">不可见</option>
							</select>
						</div>
					</div>
					<div class="layui-col-md9">
						<label for="L_title" class="layui-form-label">副标题</label>
						<div class="layui-input-block">
							<input type="text"   name="blog_futitle" id="futitle" value=“副标题" class="layui-input">
							<!-- <input type="hidden" name="id" value="{{d.edit.id}}"> -->
						</div>
					</div>
				</div>
				<div class="layui-row layui-col-space15 layui-form-item">
					<div class="layui-col-md3">
						<button type="button" class="layui-btn " id="uploadfm"><i class="layui-icon">&#xe64a;</i>上传图片</button>
						<div class="layui-input-block">
							<img src="../resource/images/cover/201703181909057125.jpg" class="blogimg" alt="">
						</div>
					</div>
					<div class="layui-col-md9">

						<label class="layui-form-label">发布时间</label>
						<div class="layui-input-inline">
							<input class="layui-input newsTime" name="blog_time" id="blog_time" lay-verify="required"  type="text">
						</div>

					</div>
				</div>

				<div class="layui-form-item layui-form-text">
					<div class="layui-input-block">
						<textarea id="L_content"  name="blog_article"   placeholder="详细描述" class="layui-textarea fly-editor" style="height: 260px;"></textarea>
					</div>
				</div>
				<div class="layui-form-item">
					<label for="L_vercode" class="layui-form-label">人类验证</label>
					<div class="layui-input-inline">
						<input type="text" id="L_vercode"    placeholder="请回答后面的问题" autocomplete="off" class="layui-input">
					</div>
					<div class="layui-form-mid">
						<span style="color: #c00;">1+1=?</span>
					</div>
				</div>
				<div class="layui-form-item">
					<button class="layui-btn" id="pullBlog" lay-filter="go" lay-submit><i class="layui-icon">&#xe609;</i>立即发布</button>
				</div>
			</form>
		</div>
	</div>
</div>




</body>
<script>
    layui.use(['layedit','upload','form','laydate','jquery'], function(){
        var layedit = layui.layedit;
        var upload  = layui.upload;
        var form    = layui.form;
        var laydate = layui.laydate;
        var edit= layedit.build('L_content'); //建立编辑器
        var $=layui.jquery;
        //设定文件大小限制
        upload.render({
            elem: '#uploadfm'
            ,url: '/upload/'
            ,size: 60 //限制文件大小，单位 KB
            ,done: function(res){
                console.log(res)
            }
        });
        //日期选择器
        laydate.render({
            elem: '#blog_time'
            ,type: 'date' //默认，可不填
            ,format:"yyyy-MM-dd HH:mm:ss"
        });
        form.on('submit(go)', function(data){

            if($("#L_vercode").val()==""){
                layer.msg("请完成人类验证，以确保您是人类！！！");
                return false;
            }else if($("#L_vercode").val()!=2){
                layer.alert("小学生都会的问题！！！");
                return false;
            }
            var index1=layer.msg('加载中', {
                icon: 16
                ,shade: 0.5
                ,skin: 'layui-layer-molv' //样式类名
                ,time:0,
            });
            var title=$("#title").val();
            var type=$("#type").val();
            var futitle=$("#futitle").val();
            var time=$("#blog_time").val();
            var status=$("#status").val();
			var  content=layedit.getContent(edit);
            $.ajax({
                url:"../blog/saveBlog",
                type:"POST",
                dataType:"json",
                data:{"blog_title":title,"blog_futitle":futitle,"blog_time":time,"blog_state":status,"blog_type":type,"blog_article":content,"blog_coverimage":"../resource/images/cover/201703181909057125.jpg"},
                success:function (res) {
                    layer.close(index1);
                    if(res){
                        layer.alert("发表成功",{icon: 6});
                    }else{
                        layer.alert("发表失败",{icon: 5});
                    }
                },
                error:function( XMLHttpRequest, textStatus, errorThrown) {
                            layer.close(index1);
							if(XMLHttpRequest.status=413){
                                layer.tips('您未拥有相关权限,如有需要请联系管理员!', '#pullBlog');
							}else{
                                layer.alert("系统异常",{icon: 5});
							}
                }
             });

            return false;


        });

    });

</script>
</html>
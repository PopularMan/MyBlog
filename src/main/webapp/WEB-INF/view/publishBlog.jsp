<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resource/layui/css/layui.css"
	media="all">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resource//css/global.css"
	media="all">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resource/css/font-awesome.css"
	media="all">
<script src="${pageContext.request.contextPath}/resource/layui/layui.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resource/css/animate.min.css"
	media="all">
<title>项目开发进度时间轴</title>
</head>
<body style="background-color:#fff;">
    <div class="layui-row animated zoomIn">
      	<blockquote class="layui-elem-quote ">

					<div style="position: relative">
						<i class="fa fa-home"></i>博客发表<a href="#" class="layui-layout-right">个人资料入口<i
							class="layui-icon" style="font-size: 14px; color: #009688;">&#xe612;</i>
						</a>
					</div>
				</blockquote>
    </div>
    <div class="layui-row animated zoomIn" style="border-radius: 5px;margin-top:10px;">
		
		<form class="layui-form"> <!-- 提示：如果你不想用form，你可以换成div等任何一个普通元素 -->
		  <div class="layui-form-item">
		    <label class="layui-form-label">博客标题</label>
		    <div class="layui-input-block">
		      <input type="text" name="" placeholder="请输入" autocomplete="off" class="layui-input">
		    </div>
		  </div>
		  	<div class="layui-form-item">
		    <label class="layui-form-label">副标题:</label>
		    <div class="layui-input-block">
		      <input type="text" name="" placeholder="请输入" autocomplete="off" class="layui-input">
		    </div>
		  </div>
		  <div class="layui-form-item">
		    <label class="layui-form-label">博客类型</label>
		    <div class="layui-input-block">
		      <select name="interest" lay-filter="aihao">
		        <option value="0">写作</option>
		        <option value="1">阅读</option>
		      </select>
		    </div>
		  </div>
		   <div class="layui-form-item">
		    <label class="layui-form-label">是否置顶:</label>
		    <div class="layui-input-block">
		      <input type="checkbox" checked lay-skin="switch">
		    </div>
		  </div>
		  <div class="layui-form-item">
		    <label class="layui-form-label">封面图片:</label>
		    <div class="layui-input-block">
		     <div class="layui-upload-drag" id="test10">
				  <i class="layui-icon"></i>
				  <p>点击上传，或将文件拖拽到此处</p>
			</div>
			<div><img class="layui-upload-img" id="demo1"></div>
		    </div>
		  </div>

		  <div class="layui-form-item layui-form-text">
		    <label class="layui-form-label">博客内容:</label>
		         <textarea id="demo" style="display: none;"></textarea>   
		  </div>
		  <div class="layui-form-item">
		    <div class="layui-input-block">
		      <button class="layui-btn" lay-submit lay-filter="*">立即提交</button>
		      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
		    </div>
		  </div>
		  <!-- 更多表单结构排版请移步文档左侧【页面元素-表单】一项阅览 -->
</form>
 </div>
<script>
layui.use(['form','layedit','upload'], function(){
  var form = layui.form;
  var layedit = layui.layedit;
  var upload  = layui.upload;
  var $=layui.jquery;
  layedit.build('demo',{
	  height: 300 //设置编辑器高度
  });
  //拖拽上传
  upload.render({
    elem: '#test10'
    ,url: '../upload/image'
    ,before: function(obj){
     //预读本地文件示例，不支持ie8
    	 obj.preview(function(index, file, result){
    	 $('#demo1').attr('src', result); //图片链接（base64）
    	  });
     }
    ,done: function(res){
      console.log(res)
    }
  });
  var parnetIframe=window.parent.document.getElementById("iFrame1");
  //alert($("body").height())
  $(parnetIframe).height($("body").height()+20);
});

</script>
		
</body>
</html>
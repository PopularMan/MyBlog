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
<style>
#showimg{
    position: relative;
    top:-30px;
    background-color: #fff;
    text-align: center;
    cursor: pointer;
    color: #999;
    }
#showimg>img{
    width：200px;
    height:134px;
    }
</style>
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
		      <input type="text" name="blog_title" id="blogtitle" required  lay-verify="required" placeholder="请输入标题"  autocomplete="off" class="layui-input">
		    </div>
		  </div>
		  	<div class="layui-form-item">
		    <label class="layui-form-label">副标题:</label>
		    <div class="layui-input-block">
		      <input type="text" name="blog_futitle" id="blogfutitle" required  lay-verify="required" placeholder="请输入副标题" autocomplete="off" class="layui-input">
		    </div>
		  </div>
		  <div class="layui-form-item">
		    <label class="layui-form-label">博客类型</label>
		    <div class="layui-input-block">
		      <select  lay-filter="aihao" id="blogtype" name="blog_type"  >
		        <option value="1">技术文章</option>
		        <option value="2">聊天灌水</option>
		      </select>
		    </div>
		  </div>
		   <div class="layui-form-item">
		    <label class="layui-form-label">是否置顶:</label>
		    <div class="layui-input-block">
		      <input type="radio" name="blogstate" value="1" title="置顶">
              <input type="radio" name="blogstate" value="0" title="不置顶" checked>
		    </div>
		  </div>
		  <div class="layui-form-item">
		    <label class="layui-form-label">封面图片:</label>
		    <div class="layui-input-block">
		     <div class="layui-upload-drag" id="test10">
				  <i class="layui-icon"></i>
				  <p>点击上传，或将文件拖拽到此处</p>
			</div>
			 <div style="display: inline-block;" id="showimg">
			  <img class="layui-upload-img" id="demo1"></div>
			  <input name="blog_coverimage" id="blog_coverimage" type="hidden">
		    </div> 
		  </div>

		  <div class="layui-form-item layui-form-text">
		    <label class="layui-form-label">博客内容:</label>
		         <textarea name="blog_artcle" id="demo" style="display: none;"></textarea>   
		  </div>
		  <div class="layui-form-item">
		    <div class="layui-input-block">
		      <button class="layui-btn" lay-submit lay-filter="commit">立即提交</button>
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
  layedit.set({
	  uploadImage: {
	     url: '../upload/image' //接口url
	    ,type: 'post' //默认post
	  }
	});
  var layeditIndex=layedit.build('demo',{
	  height: 500 //设置编辑器	  
  });
  //监听表单提交
  form.on('submit(commit)', function(data){
	    layer.msg(JSON.stringify(data.field));
	    
	    var str=JSON.stringify(data.field);
	    var obj=JSON.parse(str);
	    delete obj["file"];
	    obj.blog_article=layedit.getContent(layeditIndex);
	    console.log(JSON.stringify(obj));
	    var index;
	    $.ajax({
	    	url:"../blog/Blog",
	    	data:obj,
	        type:"post",
	        beforeSend:function(){
	        	index=layer.msg('博客正在发表中', {
	        		  icon: 16
	        		  ,shade: 0.5
	            });
	        },
	        success:function(res){
	        	if(res){
	        		layer.close(index);
	        		layer.msg("博客发表成功");
	        		form.render();
	        	}else{
	        		layer.close(index);
	        		layer.msg("博客发表失败");
	        		
	        	}
	        	   
	        },
	        complete:function(res,status){
	        	
	        }
	    })
	    
	    return false;
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
      $("#blog_coverimage").val(res.data.src);
    }
  });
  var parnetIframe=window.parent.document.getElementById("iFrame1");
  //alert($("body").height())
   $(parnetIframe).height($("body").height()+300);
});

</script>
		
</body>
</html>
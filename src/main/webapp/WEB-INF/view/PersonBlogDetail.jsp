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
	href="${pageContext.request.contextPath}/resource/css/global.css"
	media="all">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resource/css/font-awesome.css"
	media="all">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resource/css/animate.min.css"
	media="all">
<style>
.article-title {
    text-align: center;
    margin: 20px 0px;
    color: white;
    font-weight: 700;
    text-shadow: 0 0 8px #000000;
    font-size: 24px;
    padding-top: 10px;
}
.article-info {
    border: 1px dashed #808080;
    font-size: 13px;
    color: #808080;
    padding: 5px 0;
    font-family: SimSun;
    text-align: center;
    margin: 0 0 10px;
 }
 .article-content{margin: 0;padding: 10px;font-family:""KaiTi"";font-size:14px;}
.layui-row{background-color:#fff;border-radius: 5px;box-shadow: 0 1px 8px #a6a6a6;margin-bottom: 10px;}
</style>
</head>

<body style="background-color:#eee" >

    <div class="layui-row">
      	<blockquote class="layui-elem-quote  animated zoomIn ">
					<div style="position: relative">
					     <i class="fa fa-home"></i>${blog.blog_title}
					</div>
				</blockquote>
     </div>
    
    <div class="layui-row  ">
      <div class="animated zoomIn">
	       <div class="article-title">${blog.blog_title}</div>
	       <div class="article-info"> 编辑时间：${blog.blog_time} 作者：${blog.blog_author} </div>   
	       <div class="article-content">
	               ${blog.blog_article}
	       </div> 
       </div>   
    </div>
     <div class="layui-row animated zoomIn">
	     <fieldset class="layui-elem-field layui-field-title">
		  <legend>文章小评</legend>
		 </fieldset>
     </div>
    <div class="layui-row  animated zoomIn">
        <textarea id="demo" style="display: none;"></textarea> 
    </div>
     <div class="layui-row animated zoomIn">
       <button class="layui-btn">提交评论</button>
       <hr class="layui-bg-green">
        <div>第一行</div>
        <div>第一行</div>
        <div>第一行</div>
        <div>第一行</div>
        <div>第一行</div>
        <div>第一行</div>
        <div>第一行</div>
        <div>第一行</div>
        <div>第一行</div>
       
       
       
     </div>
</body>
<script src="${pageContext.request.contextPath}/resource/layui/layui.js"></script>
<script>
layui.use('layedit', function(){
  var layedit = layui.layedit;
  var $=layui.jquery;
  layedit.build('demo',{
	  height: 180 //设置编辑器高度
  }); //建立编辑器
  var parnetIframe=window.parent.document.getElementById("iFrame1");
  $(parnetIframe).height($("body").height());
});
</script>
</html>
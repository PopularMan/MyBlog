<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
canvas{
  position:absolute;
  top:0;
  left:0;
  z-index:-100;
}
</style>	
	
<title>个人博客系统</title>
</head>
<body>
    <!-- canvas -->
   <canvas id="c"></canvas>
	<!-- 页面导航栏开始 -->
	<div class="fixed">
		<div class="layui-col-md9">
			<a href="#" class="title" style="padding-left:10%"> My Blog</a>
			<ul class="layui-nav layui-layout-left">
				<li class="layui-nav-item layui-this"><a href="page/PersonBlog" target="main"><i class="fa fa-user fa-fw"></i>个人博客</a></li>
				<li class="layui-nav-item"><a href="page/timeaxis" target='main'><i class="fa fa-clock-o fa-fw"></i>时间轴</a></li>
				<li class="layui-nav-item"><a href="page/codeSnippets" target='main'><i class="fa fa-flag fa-fw"></i>代码片段</a></li>
				<li class="layui-nav-item"><a href="javascript:;">暂未开放</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="page/publishBlog" target='main'>博客发表</a>
						</dd>
						<dd>
							<a href="">暂未开放</a>
						</dd>
						<dd>
							<a href="">暂未开放</a>
						</dd>
					</dl></li>
		</div>
		<div class="layui-col-md3">
			<iframe allowtransparency="true" style="float: right" frameborder="0"
				width="410" height="64" scrolling="no" 
				src="//tianqi.2345.com/plugin/widget/index.htm?s=2&z=3&t=1&v=2&d=2&bd=0&k=000000&f=ffffff&ltf=009944&htf=cc0000&q=1&e=1&a=1&c=54511&w=410&h=64&align=center"></iframe>
		</div>
	</div>
	<!-- 页面导航栏结束 -->
 
	<!-- 一般是页面主题部分 -->
	<div class="layui-container" style="padding: 10px; margin-top: 70px;position: relative;">
		  <!-- 左边部分 -->
	      <div class="blog-left">
			<iframe src="page/PersonBlog"   id="iFrame1" class="iframe"   name="main"  frameborder="no" border="0" marginwidth="0" marginheight="0" width= "100%" height= "100%"  style="border:0" scrolling="no" allowtransparency="yes"></iframe>
	      </div>
		  <!-- 右边部分 -->
				
			<div class="blog-right" >
			     
			     <div class="mouduletop animated bounceInRight">
			          <div class="layui-row">
			            <blockquote class="layui-elem-quote " style="background-color: #009688"><i class="fa fa-user fa-fw"></i>个人资料</blockquote> 
			          </div>  
			          <div class="layui-row">
			              <img flag=0 style="width:150px;height:150px;margin:10px 25%" id="myimg" class="layui-circle" src="${pageContext.request.contextPath}/resource/img/xls.jpg">              
			          </div>   
			          <hr>
			          <div class="layui-row">
			               <h2 class="title" style="color:#000000;font-size: bold;margin:5px 23%">My Blog </h2>
			          </div>  
			          <hr>  
			          <div class="layui-row">
			             <p>
			                <span class="incospan"><i class="fa fa-location-arrow fa-2x"></i></span>
			                <span class="incospan"><i class="fa fa-qq fa-2x"></i></span>
			                <span class="incospan"><i class="fa fa-envelope fa-2x"></i></span>
			                <span class="incospan"><i class="fa fa-wechat fa-2x"></i></span>
			             </p>
			          </div> 
			     </div>
			     <div class="moudulebottom animated bounceInRight">
			          <div class="layui-row">
			            <blockquote class="layui-elem-quote " style="background-color: #009688"><i class="fa fa-volume-up"></i>&nbsp;最新资讯</blockquote> 
			          </div>  
			          <div class="layui-row">
			             <ul class="aircle-information">
			                 <li><i class="fa fa-hand-o-right"></i>这里是文章资讯连接噢！</li>
			                 <li><i class="fa fa-hand-o-right"></i>这里是文章资讯连接噢！</li>
			                 <li><i class="fa fa-hand-o-right"></i>这里是文章资讯连接噢！</li>
			                 <li><i class="fa fa-hand-o-right"></i>这里是文章资讯连接噢！</li>
			                 <li><i class="fa fa-hand-o-right"></i>这里是文章资讯连接噢！</li>
			             </ul>
			          </div>       
			     </div>
			</div>

			<!-- 清除浮动 -->
			<div class="clear"></div>
	
	</div>
	<!-- 容器结束 -->
    <!-- 底线部分 -->
<!--     <fieldset class="layui-elem-field layui-field-title">
      <legend>做人还是有点底线的好！！！</legend>
    </fieldset> -->
    <!-- fotter部分 -->
	<div class="blog-footer">
	   
	</div>
	<script src="${pageContext.request.contextPath}/resource/layui/jquery-1.8.3.min.js"></script>
	<script src="${pageContext.request.contextPath}/resource/layui/layui.js"></script>
	<script src="${pageContext.request.contextPath}/resource/js/index.js"></script>
   <script src="${pageContext.request.contextPath}/resource/js/canvas.js"></script>
   <script>
       $(function(){
    	     $(".iframe").height($(window.frames["main"].document).find("body").height()); 
       });
  
 
   </script>
</body>
</html>
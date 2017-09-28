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
						<i class="fa fa-home"></i>时间轴 <a href="#" class="layui-layout-right">个人资料入口<i
							class="layui-icon" style="font-size: 14px; color: #009688;">&#xe612;</i>
						</a>
					</div>
				</blockquote>
    </div>
    <div class="layui-row animated zoomIn" style="border-radius: 5px;margin-top:10px;">
		 <ul class="layui-timeline">
		  <li class="layui-timeline-item">
		    <i class="layui-icon layui-timeline-axis">&#xe60e;</i>
		    <div class="layui-timeline-content layui-text">
		      <h3 class="layui-timeline-title">2017-09-26</h3>
		      <p>整体后端框架搭建完毕</p>
		      <ul>
		        <li>使用maven管理，使用SSM框架，码云做版本管理工具，</li>
		        <li>前端准备使用纯Layui开发</li>
		        <li>后续可能会使用一些新的技术，等待开发</li>
		      </ul>
		    </div>
		  </li>
		    <li class="layui-timeline-item">
		    <i class="layui-icon layui-timeline-axis">&#xe60e;</i>
		    <div class="layui-timeline-content layui-text">
		      <h3 class="layui-timeline-title">2017-09-27</h3>
		      <p>准备搭建前端页面</p>
		      <ul>
		        <li>编写主页面Index,jsp</li>
		        <li>博客页面，与博客详情页面搭建完成</li>
		        <li>突然感觉，做这个项目干啥呢，全倒刺前端了，算了明天还是学学QQ互联吧</li>
		      </ul>
		    </div>
		  </li>
		   <li class="layui-timeline-item">
		    <i class="layui-icon layui-timeline-axis">&#xe60e;</i>
		    <div class="layui-timeline-content layui-text">
		      <h3 class="layui-timeline-title">2017-09-28</h3>
		      <p>还是前端页面一点点做，后端准备最后再做</p>
		      <ul>
		        <li>今天先完成主页面的一些整体 布局完善吧！</li>
		        <li>表示有点累</li>
		      </ul>
		    </div>
		  </li>


		</ul>
    
    </div>
</body>
</html>
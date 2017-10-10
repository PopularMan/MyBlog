<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="resource/img/favicon.ico" type="image/x-icon"/> 
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
  top:50px;
  left:0;
  z-index:-100;
  width:100%;
  height:100px;
}
</style>	
<title>个人博客系统</title>
</head>
<body>
    <!-- canvas -->
   <canvas id="c"></canvas>
	<!-- 页面导航栏开始 -->

	<div class="fixed">
		<div class="layui-col-md9 layui-col-sm9 layui-col-xs9">
			<a href="#" class="title" style="padding-left:10%"> My Blog</a>
			<ul class="layui-nav layui-layout-left">
				<li class="layui-nav-item layui-this"><a href="page/PersonBlog" target="main"><i class="fa fa-user fa-fw"></i>个人博客</a></li>
				<li class="layui-nav-item"><a href="page/timeaxis" target='main'><i class="fa fa-clock-o fa-fw"></i>时光轴</a></li>
				<li class="layui-nav-item"><a href="page/codeSnippets" target='main'><i class="fa  fa-info fa-fw"></i>关于本站</a></li>
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
			  <li class="layui-nav-item"><a href="login.do" class="blog-user" onclick="layer.msg('正在通过QQ登入', {icon:16, shade: 0.1, time:2000})" ><i class="fa fa-qq fa-fw"></i> QQ登录</a></li>
				
            </a>
		</div>
		<div class="layui-col-md3 layui-col-sm3 layui-col-xs3">
			<iframe allowtransparency="true" style="float: right" frameborder="0"
				width="410" height="64" scrolling="no" 
				src="//tianqi.2345.com/plugin/widget/index.htm?s=2&z=3&t=1&v=2&d=2&bd=0&k=000000&f=ffffff&ltf=009944&htf=cc0000&q=1&e=1&a=1&c=54511&w=410&h=64&align=center"></iframe>
		</div>
	</div>
	<!-- 页面导航栏结束 -->
 
	<!-- 一般是页面主题部分 -->
	<div class="layui-container" style="padding: 10px; margin-top: 150px;position: relative;">
		  <!-- 左边部分 -->
	      <div class="blog-left" style="height:1000px;">
			<iframe src="page/PersonBlog"   id="iFrame1" class="iframe"   name="main"  frameborder="no" border="0" marginwidth="0" marginheight="0" width= "100%" height= "100%"  style="border:0" scrolling="no" allowtransparency="yes"></iframe>
	      </div>
		  <!-- 右边部分 -->
				
			<div class="blog-right" >
			 <div class="mouduletop animated bounceInRight">
					     <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
						  <ul class="layui-tab-title">
						    <li class="layui-this"><i class="layui-icon">&#xe612;</i> 个人资料</li>
						    <li>用户管理</li>
						    <li>权限分配</li>
						  </ul>
						  <div class="layui-tab-content">
						     <div class="layui-tab-item layui-show"> 
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
						               <!--  <span class="incospan"><i class="fa fa-wechat fa-2x"></i></span> -->
						             </p>
						          </div> 
						      </div>
						      <div class="layui-tab-item layui-show"> </div>
						      <div class="layui-tab-item layui-show"> </div>
						  </div>
						</div>     
			     </div>
			     <div class="moudulebottom animated bounceInRight">
			          <div class="layui-row">
			            <blockquote class="layui-elem-quote " style="background-color: #009688"><i class="fa fa-volume-up"></i>&nbsp;分类导航</blockquote> 
			          </div>  
			          <div class="layui-row">
			             <ul class="aircle-information">
			                 <li><a href="#" class="c-btn c-btn--border-line">技术文章</a></li>
			                 <li><a href="#" class="c-btn c-btn--border-line">技术文章</a></li>
			                 <li><a href="#" class="c-btn c-btn--border-line">技术文章</a></li>
			                 <li><a href="#" class="c-btn c-btn--border-line">技术文章</a></li>
			                 <li><a href="#" class="c-btn c-btn--border-line">技术文章</a></li>
			                 <li><a href="#" class="c-btn c-btn--border-line">技术文章</a></li>
			             </ul>
			          </div>       
			     </div>
			     <div class="moudulebottom animated bounceInRight" style="height:auto">
			          <div class="layui-row">
			            <blockquote class="layui-elem-quote" style="background-color: #009688"><i class="fa fa-volume-up"></i>&nbsp;友情链接</blockquote> 
			          </div>  
			          <div class="layui-row">
			             <ul class="aircle-information">
			                 <li><a href="http://www.Layui.com" target="_blank" class="c-btn c-btn--border-line"><i class="fa fa-paper-plane-o"></i>  LayUI</a></li>
			                 <li><a href="#" class="c-btn c-btn--border-line">WH博客</a></li>
			                 <li><a href="#" class="c-btn c-btn--border-line">极客社区</a></li>

			             </ul>
			          </div>       
			     </div>
			     
			     
			</div>

			<!-- 清除浮动 -->
			<div class="clear"></div>
	
	</div>
	<!-- 容器结束 -->
    <!-- 底线部分 -->
    
	    <!-- 底部 -->
    <footer class="blog-footer">
        <p><span>Copyright</span><span>&copy;</span><span>2017</span><a href="http://www.lyblogs.cn">不落阁</a><span>Design By LY</span></p>
        <p><a href="http://www.miibeian.gov.cn/" target="_blank">蜀ICP备16029915号-1</a></p>
    </footer>
	
	<!-- 音乐播放器等待开发 -->
	<div id="music-player"></div>
	<script src="${pageContext.request.contextPath}/resource/layui/jquery-1.8.3.min.js"></script>
	<script src="${pageContext.request.contextPath}/resource/layui/layui.js"></script>
	<script src="${pageContext.request.contextPath}/resource/js/index.js"></script>
   <script src="${pageContext.request.contextPath}/resource/js/canvas.js"></script>
   <script>
       $(function(){
    	     $(".iframe").height($(window.frames["main"].document).find("body").height()); 
    	     $("#c").attr("height","150");
       });
  
 
   </script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta name="baidu-site-verification" content="bqPeYnoA4P" />
	<meta name="KEYWords" contect="博客;异朽阁;个人博客;JAVA" />
	<meta name="DEscription" contect="java个人技术博客"/>
	<meta name="Author" contect="张超超"/>
	<meta http-equiv="Content-Type" content="text/html; Charset=utf-8">
	<meta http-equiv="Content-Language" content="zh-CN">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<title>异朽阁</title>
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/resource/images/xls.ico" type="image/x-icon">
	<!--Layui-->
	<link href="${pageContext.request.contextPath}/resource/plug/layui/css/layui.css" rel="stylesheet" />
	<!--font-awesome-->
	<link href="${pageContext.request.contextPath}/resource/plug/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
	<!--全局样式表-->
	<link href="${pageContext.request.contextPath}/resource/css/global.css" rel="stylesheet" />
	<!-- 本页样式表 -->
	<link href="${pageContext.request.contextPath}/resource/css/home.css" rel="stylesheet" />
	<!-- 本页样式表 -->
	<link href="${pageContext.request.contextPath}/resource/css/animate.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resource/plug/btncss/set_8.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resource/css/skin.css" rel="stylesheet" />
	<style>
	.set_8_button4.outline {
		color: #333;
		overflow: hidden;
		position: relative;
		width: 80px;
		margin-left: 5px;
		margin-top: 8px;
	}
	.layui-badge {
		height: 18px;
		line-height: 20px;
		margin-left: 10px
	}

</style>
</head>

<body style="background: url('resource/images/skin2.jpg')">


<!--贼罩层和皮肤-->
<div class="overflay"></div>
<div class="skin">
	<div class="pic">
		<div class="one">
			<a href="#">
				<div class="mask"></div>
				<img src="resource/images/skin1-1.jpg" alt="壁纸1" width="194" height="123" ></a>
			<a href="#"><img src="resource/images/skin2-2.jpg" alt="壁纸2" width="97" height="59"></a>
			<a href="#"><img src="resource/images/skin3-3.jpg" alt="壁纸3" width="97" height="59"></a>
		</div>
		<div class="two">

			<a href="#"><img src="resource/images/skin4-4.jpg" alt="壁纸4" width="97" height="60"></a>
			<a href="#"><img src="resource/images/skin5-5.jpg" alt="壁纸5" width="97" height="60"></a>
			<a href="#"><img src="resource/images/skin6-6.jpg" alt="壁纸6" width="97" height="60"></a>


		</div>
		<div class="three">


			<a href="#"><img src="resource/images/skin7-7.jpg" alt="壁纸7" width="97" height="59"></a>
			<a href="#"><img src="resource/images/skin8-8.jpg" alt="壁纸8" width="97" height="59"></a>
			<a href="#"><img src="resource/images/skin9-9.jpg" alt="壁纸9" width="194" height="123"></a>
		</div>
		<div class="four">
			<a href="#"><img src="resource/images/skin10-10.jpg" alt="壁纸10" width="97" height="60"></a>
			<a href="#"><img src="resource/images/skin11-11.jpg" alt="壁纸11" width="97" height="60"></a>
			<a href="#"><img src="resource/images/skin12-12.jpg" alt="壁纸12" width="97" height="60"></a>

		</div>
	</div>
</div>
	<!-- 导航 -->
	<nav class="blog-nav layui-header" style="position: relative;">

		<div class="blog-container">
			<ul>
				<!-- QQ互联登陆 -->
				 <li class="layui-nav-item"><a href="QQLogin" class="blog-user"><i
						class="fa fa-qq"></i></a> <a href="InvalidQQlogin" id="loginout"
					class="blog-user layui-hide"> <img src="${user.avatarUrl}"
						title="${user.nickName}" />&nbsp;${user.nickName}
				 </a></li>
			</ul>
			<!-- MyBlog -->
			<a class="blog-logo" href="javascript:void(0)"><img src="resource/images/logo.png"  /></a>
			<!-- 导航菜单 -->
			<ul class="layui-nav layui-bg-cyan" lay-filter="nav" >
				<li class="layui-nav-item layui-this"><a href="https://www.cczblog.cn"><i
						class="fa fa-home fa-fw"></i>&nbsp;博客首页</a></li>
				<li class="layui-nav-item"><a href="#" id="choose"><i
						class="fa  fa-picture-o fa-fw"></i>&nbsp;壁纸切换</a></li>
				<li class="layui-nav-item"><a href="timeline"><i
						class="fa fa-clock-o fa-fw"></i>&nbsp;开发时光</a></li>
				<li class="layui-nav-item"><a href="info"><i
						class="fa fa-location-arrow fa-fw"></i>&nbsp;留下脚印</a></li>

			</ul>
			<!-- 手机和平板的导航开关 -->
			<a class="blog-navicon" href="javascript:;"> <i
				class="fa fa-navicon"></i>
			</a>
		</div>
	</nav>
	<!-- 主体（一般只改变这里的内容） -->
	<div class="blog-body">
	
		<!-- 这个一般才是真正的主体内容 -->
		<div class="blog-container">
			<div class="blog-main">
				<!-- 轮播 -->
				<div id="flash">

					<!--轮播图!-->
					<div class="scroll">
						<div class="imgList">
							<img src="resource/images/flash1.jpg" alt="">
							<img src="resource/images/flash2.jpg" alt="">
							<img src="resource/images/flash3.jpg" alt="">
							<img src="resource/images/flash4.jpg" alt="">
							<img src="resource/images/flash5.jpg" alt="">
							<img src="resource/images/flash6.jpg" alt="">
						</div>
						<!--左右切换按钮！-->
						<a href="javascript:void(0)" class="prev"></a>
						<a href="javascript:void(0)" class="next"></a>
					</div>

					<!--按钮部门!-->
					<div class="btn">
						<span class="active"></span>
						<span></span>
						<span></span>
						<span></span>
						<span></span>
						<span></span>
					</div>

				</div>
				<!-- 网站公告提示 -->
				<div class="home-tips shadow">
					<i style="float: left; line-height: 17px;" class="fa fa-volume-up"></i>
					<div class="home-tips-container">
						<span style="color: #009688">博客后台正在开发,后续放出</span>
						<span style="color: red">网站新增留言回复啦！使用QQ登陆即可回复，人人都可以回复！</span>
						<span style="color: red">如果你觉得网站做得还不错，来Fly社区点个赞吧！<a href="http://fly.layui.com/case/2017/" target="_blank" style="color: #01AAED">点我前往</a></span>
						<span style="color: #009688">MyBlog&nbsp;——&nbsp;一个.JAVA程序员的个人博客，新版网站采用Layui为前端框架，目前正在建设中！</span>
					</div>
				</div>
				<!--左边文章列表-->
				<div class="blog-main-left" id="blog-main-left">
                          <!-- 文章主体内容流加载 -->

				</div>
				<!--右边小栏目-->
				<div class="blog-main-right">
					<div class="blogerinfo blog-module shadow">

						<div class="blog-module-title">博主简介</div>
				
						<p class="blogerinfo-nickname ">YXG</p>
						<p class="blogerinfo-introduce">一枚90后程序员，JAVA开发工程师</p>
						<p class="blogerinfo-location">
							<i class="fa fa-location-arrow"></i>&nbsp;河南 - 信阳
						</p>
						<hr />
						<div class="blogerinfo-contact">
							<a  title="QQ交流"
								href="javascript:void(0)" onclick="PlayJsAdPopWin()" ><i
								class="fa fa-qq fa-2x"></i></a> <a target="_blank" title="给我写信"
								href="javascript:layer.msg('启动邮我窗口')"><i
								class="fa fa-envelope fa-2x"></i></a> <a target="_blank"
								title="新浪微博" href="javascript:layer.msg('转到你的微博主页')"><i
								class="fa fa-weibo fa-2x"></i></a> <a target="_blank" title="码云"
								href="javascript:layer.msg('转到你的github主页')"><i
								class="fa fa-git fa-2x"></i></a>
						</div>
					</div>
					<div></div>
					<!-- 分类导航 -->
				   <div class="article-category shadow" id="blogtype">
					   <div class="article-category-title">分类导航</div>
					   <div class="clear"></div>
                    </div>
					<!--占位-->
					<div class="blog-module shadow">
						<div class="blog-module-title">热文排行</div>
						<ul class="fa-ul blog-module-ul" id="blogsrank">

						</ul>
					</div>

					<div class="blog-module shadow">
						<div class="blog-module-title">友情链接</div>
						<ul class="blogroll">
							<li><a target="_blank" href="http://www.layui.com/"
								title="Layui">Layui</a></li>
							<li><a target="_blank" href="http://www.pagemark.cn/"
								title="页签">页签</a></li>
						</ul>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>
	<!-- 底部 -->
	<footer class="blog-footer">
		<p>
			<span>Copyright</span><span>&copy;</span><span>2017</span><a
				href="http://www.cczblog.cn">YXG</a><span>Design By Zc</span>
		</p>
		<p>
			<a href="http://www.miibeian.gov.cn/" target="_blank">豫ICP备17043612号-1</a>
		</p>
	</footer>
	<!--侧边导航-->
	<ul
		class="layui-nav layui-nav-tree layui-nav-side blog-nav-left layui-hide"
		lay-filter="nav">
		<li class="layui-nav-item layui-this"><a href="index.jsp"><i
				class="fa fa-home fa-fw"></i>&nbsp;博客首页</a></li>
		<li class="layui-nav-item"><a href="#" id="choosexs"><i
				class="fa  fa-picture-o fa-fw"></i>&nbsp;壁纸切换</a></li>
		<li class="layui-nav-item"><a href="timeline"><i
				class="fa fa-clock-o fa-fw"></i>&nbsp;开发时光</a></li>
		<li class="layui-nav-item"><a href="info"><i
				class="fa fa-location-arrow fa-fw"></i>&nbsp;留下脚印</a></li>
	</ul>



	<!--遮罩-->
	<div class="blog-mask animated layui-hide"></div>
	<script>
		var user = "${user}";
	</script>
	<!-- layui.js -->
	<script
		src="${pageContext.request.contextPath}/resource/plug/layui/layui.js"></script>
	<!-- 全局脚本 -->
	<script src="${pageContext.request.contextPath}/resource/js/global.js"></script>
	<!-- 本页脚本 -->
	<script src="${pageContext.request.contextPath}/resource/js/blog.js"></script>
   
   <script>
      var qq_chat = true;
	   function PlayJsAdPopWin() {
	   if (qq_chat) {
	     popwin = window.location.href = 'tencent://message/?uin=1255780376&Site=www.cczblog.cn&Menu=yes'
	   }
	 };       
   </script>
   
     

</body>
</html>
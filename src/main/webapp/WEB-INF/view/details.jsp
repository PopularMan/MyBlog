<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; Charset=gb2312">
    <meta http-equiv="Content-Language" content="zh-CN">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resource/images/logo.ico"
	type="image/x-icon">
    <title>异朽阁</title>
    <!--Layui-->
    <link href="${pageContext.request.contextPath}/resource/plug/layui/css/layui.css" rel="stylesheet" />
    <!--font-awesome-->
    <link href="${pageContext.request.contextPath}/resource/plug/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <!--全局样式表-->
    <link href="${pageContext.request.contextPath}/resource/css/global.css" rel="stylesheet" />
    <!-- 比较好用的代码着色插件 -->
    <link href="${pageContext.request.contextPath}/resource/css/prettify.css" rel="stylesheet" />
    <!-- 本页样式表 -->
    <link href="${pageContext.request.contextPath}/resource/css/detail.css" rel="stylesheet" />


</head>
<body>
    <!-- 导航 -->
   	<!-- 导航 -->
	<nav class="blog-nav layui-header" style="position: relative;">

		<div class="blog-container">
			<ul>
				<!-- QQ互联登陆 -->
				 <li class="layui-nav-item"><a href="QQLogin" class="blog-user"><i
						class="fa fa-qq"></i></a> <a href="loginOut" id="loginout"
					class="blog-user layui-hide"> <img src="${user.avatarUrl}"
						title="${user.nickName}" />&nbsp;${user.nickName}
				 </a></li>
			</ul>
			<!-- MyBlog -->
			<a class="blog-logo" href="javascript:void(0)"><img src="resource/images/logo.png" /></a>
			<!-- 导航菜单 -->
			<ul class="layui-nav layui-bg-cyan" lay-filter="nav" >
				<li class="layui-nav-item layui-this"><a href="index.jsp"><i
						class="fa fa-home fa-fw"></i>&nbsp;博客首页</a></li>
				<li class="layui-nav-item"><a href="article"><i
						class="fa fa-download fa-fw"></i>&nbsp;资源下载</a></li>
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
        <div class="blog-container">
            <blockquote class="layui-elem-quote sitemap layui-breadcrumb shadow">
                <a href="home.html" title="网站首页">网站首页</a>
                <a href="article.html" title="文章专栏">文章专栏</a>
                <a><cite>基于layui的laypage扩展模块！</cite></a>
            </blockquote>
            <div class="blog-main">
                <div class="blog-main-left">
                    <!-- 文章内容（使用Kingeditor富文本编辑器发表的） -->
                    <div class="article-detail shadow">
                        <div class="article-detail-title">
                            基于laypage的layui扩展模块（pagesize.js）！
                        </div>
                        <div class="article-detail-info">
                            <span>编辑时间：2017/3/18 17:30:22</span>
                            <span>作者：Absolutely</span>
                            <span>浏览量：12</span>
                        </div>
                        <div class="article-detail-content">
                            <pre lay-lang="PHP">adad<br></pre><p><br><br>sda <br></p>
                        </div>
                    </div>
                    <!-- 评论区域 -->
                    <div class="blog-module shadow" style="box-shadow: 0 1px 8px #a6a6a6;">
                        <fieldset class="layui-elem-field layui-field-title" style="margin-bottom:0">
                            <legend>来说两句吧</legend>
                            <div class="layui-field-box">
                                <form class="layui-form blog-editor" action="">
                                    <div class="layui-form-item">
                                        <textarea name="editorContent" lay-verify="content" id="remarkEditor" placeholder="请输入内容" class="layui-textarea layui-hide"></textarea>
                                    </div>
                                    <div class="layui-form-item">
                                        <button class="layui-btn" lay-submit="formRemark" lay-filter="formRemark">提交评论</button>
                                    </div>
                                </form>
                            </div>
                        </fieldset>
                        <div class="blog-module-title">最新评论</div>
                        <ul class="blog-comment">
							<li>
								<div class="comment-parent">
									<img
										src="${pageContext.request.contextPath}/resource/images/xls.jpg"
										alt="absolutely" />
									<div class="info">
										<span class="username">徐老师</span>: <span class="time">2017-03-18
											18:46:06</span>
									    
									</div>
									<div class="content">
										我为大家做了模拟评论功能！还有，这个评论功能也可以改成和留言一样，但是目前没改，有兴趣可以自己改</div>
								</div>

							</li>
							<li>
                                <div class="comment-parent">
                                    <img src="${pageContext.request.contextPath}/resource/images/xls.jpg" alt="absolutely" />
                                    <div class="info">
                                        <span class="username">徐老师</span>:
                                        <span class="time">2017-03-18 18:46:06</span>
                                    </div>
                                    <div class="content">
                                                                                                        我为大家做了模拟评论功能！还有，这个评论功能也可以改成和留言一样，但是目前没改，有兴趣可以自己改
                                    </div>
                                </div>
                            </li>
                             <li>
                                <div class="comment-parent">
                                    <img src="${pageContext.request.contextPath}/resource/images/xls.jpg" alt="absolutely" />
                                    <div class="info">
                                        <span class="username">徐老师</span>:
                                        <span class="time">2017-03-18 18:46:06</span>
                                    </div>
                                    <div class="content">
                                                                                                          我为大家做了模拟评论功能！还有，这个评论功能也可以改成和留言一样，但是目前没改，有兴趣可以自己改
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="blog-main-right">
                    <!--右边悬浮 平板或手机设备显示-->
                    <div class="category-toggle"><i class="fa fa-chevron-left"></i></div><!--这个div位置不能改，否则需要添加一个div来代替它或者修改样式表-->
                    <div class="article-category shadow">
                        <div class="article-category-title">分类导航</div>
                        <!-- 点击分类后的页面和artile.html页面一样，只是数据是某一类别的 -->
                        <a href="javascript:layer.msg(&#39;切换到相应分类&#39;)">ASP.NET MVC</a>
                        <a href="javascript:layer.msg(&#39;切换到相应分类&#39;)">SQL Server</a>
                        <a href="javascript:layer.msg(&#39;切换到相应分类&#39;)">Entity Framework</a>
                        <a href="javascript:layer.msg(&#39;切换到相应分类&#39;)">Web前端</a>
                        <a href="javascript:layer.msg(&#39;切换到相应分类&#39;)">C#基础</a>
                        <a href="javascript:layer.msg(&#39;切换到相应分类&#39;)">杂文随笔</a>
                        <div class="clear"></div>
                    </div>
                    <div class="blog-module shadow">
                        <div class="blog-module-title">相似文章</div>
                        <ul class="fa-ul blog-module-ul">
                            <li><i class="fa-li fa fa-hand-o-right"></i><a href="detail.html">基于laypage的layui扩展模块（pagesize.js）！</a></li>
                            <li><i class="fa-li fa fa-hand-o-right"></i><a href="detail.html">基于laypage的layui扩展模块（pagesize.js）！</a></li>
                            <li><i class="fa-li fa fa-hand-o-right"></i><a href="detail.html">基于laypage的layui扩展模块（pagesize.js）！</a></li>
                        </ul>
                    </div>
                    <div class="blog-module shadow">
                        <div class="blog-module-title">随便看看</div>
                        <ul class="fa-ul blog-module-ul">
                            <li><i class="fa-li fa fa-hand-o-right"></i><a href="detail.html">一步步制作时光轴（一）（HTML篇）</a></li>
                            <li><i class="fa-li fa fa-hand-o-right"></i><a href="detail.html">ASP.NET MVC制作404跳转（非302和200）</a></li>
                            <li><i class="fa-li fa fa-hand-o-right"></i><a href="detail.html">ASP.NET MVC 防范跨站请求伪造（CSRF）</a></li>
                            <li><i class="fa-li fa fa-hand-o-right"></i><a href="detail.html">一步步制作时光轴（三）（JS篇）</a></li>
                            <li><i class="fa-li fa fa-hand-o-right"></i><a href="detail.html">基于laypage的layui扩展模块（pagesize.js）！</a></li>
                            <li><i class="fa-li fa fa-hand-o-right"></i><a href="detail.html">一步步制作时光轴（二）（CSS篇）</a></li>
                            <li><i class="fa-li fa fa-hand-o-right"></i><a href="detail.html">写了个Win10风格快捷菜单！</a></li>
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
    <ul class="layui-nav layui-nav-tree layui-nav-side blog-nav-left layui-hide" lay-filter="nav">
        <li class="layui-nav-item">
            <a href="index"><i class="fa fa-home fa-fw"></i>&nbsp;博客首页</a>
        </li>
        <li class="layui-nav-item layui-this">
            <a href="airtcle"><i class="fa fa-file-text fa-fw"></i>&nbsp;文章总览</a>
        </li>
        <li class="layui-nav-item">
            <a href="timeline"><i class="fa fa-road fa-fw"></i>&nbsp;开发时光</a>
        </li>
        <li class="layui-nav-item">
            <a href="about"><i class="fa fa-info fa-fw"></i>&nbsp;留下脚印</a>
        </li>
    </ul>
    <!--分享窗体-->
    <div class="blog-share layui-hide">
        <div class="blog-share-body">
            <div style="width: 200px;height:100%;">
                <div class="bdsharebuttonbox">
                    <a class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a>
                    <a class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a>
                    <a class="bds_weixin" data-cmd="weixin" title="分享到微信"></a>
                    <a class="bds_sqq" data-cmd="sqq" title="分享到QQ好友"></a>
                </div>
            </div>
        </div>
    </div>
    <!--遮罩-->
    <div class="blog-mask animated layui-hide"></div>
    <!-- layui.js -->
    <script src="${pageContext.request.contextPath}/resource/plug/layui/layui.js"></script>
    <!-- 自定义全局脚本 -->
    <script src="${pageContext.request.contextPath}/resource/js/global.js"></script>
    <!-- 比较好用的代码着色插件 -->
    <script src="${pageContext.request.contextPath}/resource/js/prettify.js"></script>
    <!-- 本页脚本 -->
    <script src="${pageContext.request.contextPath}/resource/js/detail.js"></script>
</body>
</html>
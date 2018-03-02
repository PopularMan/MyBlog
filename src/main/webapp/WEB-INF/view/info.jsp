<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; Charset=gb2312">
    <meta http-equiv="Content-Language" content="zh-CN">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <title>异朽阁- 关于本站</title>
    <link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resource/images/logo.ico"
	type="image/x-icon">
    <!--Layui-->
    <link href="${pageContext.request.contextPath}/resource/plug/layui/css/layui.css" rel="stylesheet" />
    <!--font-awesome-->
    <link href="${pageContext.request.contextPath}/resource/plug/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <!--全局样式表-->
    <link href="${pageContext.request.contextPath}/resource/css/global.css" rel="stylesheet" />
    <!-- 本页样式表 -->
    <link href="${pageContext.request.contextPath}/resource/css/about.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resource/css/skin.css" rel="stylesheet" />
</head>
<body>
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
            <li class="layui-nav-item "><a href="https://www.cczblog.cn"><i
                    class="fa fa-home fa-fw"></i>&nbsp;博客首页</a></li>
            <li class="layui-nav-item"><a href="#" id="choose"><i
                    class="fa  fa-picture-o fa-fw"></i>&nbsp;壁纸切换</a></li>
            <li class="layui-nav-item"><a href="timeline"><i
                    class="fa fa-clock-o fa-fw"></i>&nbsp;开发时光</a></li>
            <li class="layui-nav-item layui-this"><a href="info"><i
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
                <a href="www.cczblog.cn" title="网站首页">网站首页</a>
                <a><cite>关于本站</cite></a>
            </blockquote>
            <div class="blog-main">
                <div class="layui-tab layui-tab-brief shadow" lay-filter="tabAbout">
                    <ul class="layui-tab-title">
                        <li lay-id="1">关于博客</li>
                        <li lay-id="2" id="frinedlink">友情链接</li>

                    </ul>
                    <div class="layui-tab-content">
                        <div class="layui-tab-item">
                            <div class="aboutinfo">
                                <div class="aboutinfo-figure">
                                    <img style='border-radius:140px' src="${pageContext.request.contextPath}/resource/images/xls.jpg" alt="徐老师" />
                                </div>
                                <p class="aboutinfo-nickname">徐老师</p>
                                <p class="aboutinfo-introduce">一位刚工作不久的JAVA程序员个人博客,记录开发的那些事</p>
                                <p class="aboutinfo-location"><i class="fa fa-link"></i>&nbsp;&nbsp;<a target="_blank" href="http://www.cczblog.cn">www.cczblog.cn</a></p>
                                <hr />
                     
                                <div class="aboutinfo-contact">
                                    <a target="_blank" title="QQ交流" href="javascript:layer.msg('启动QQ会话窗口')"><i class="fa fa-qq fa-2x"></i></a>
                                    <a target="_blank" title="给我写信" href="javascript:layer.msg('启动邮我窗口')"><i class="fa fa-envelope fa-2x"></i></a>
                                    <a target="_blank" title="新浪微博" href="javascript:layer.msg('转到你的微博主页')"><i class="fa fa-weibo fa-2x"></i></a>
                                    <a target="_blank" title="码云" href="javascript:layer.msg('转到你的github主页')"><i class="fa fa-git fa-2x"></i></a>
                                </div>
                                <fieldset class="layui-elem-field layui-field-title">
                                    <legend>简介</legend>
                                    <div class="layui-field-box aboutinfo-abstract">
                                        <p style="text-align:center;">异朽阁是我在利用工作之余为自己做的一个项目</p>
                                         <h1>前言</h1>
                                         <p>网站是我在利用工作之余为自己做的一个项目,其目的主要是为了熟悉使用Layui,无任何其他用途，仅供学习交流</p>
                                         <h1>前端</h1>
                                          <p>关于前端界面，本来想自己模仿别人的博客做一套样式，最后死于适应手机端的问题,无奈借用了一位朋友的前端博客界面<a href="http://www.lyblogs.cn" style='color:blue'>不落阁</a>,自己也修改了一点，替我省下了不少功夫！毕竟我的前端几乎小白</p>
                                         <h1>后端</h1>
                                          <p>关于后端技术,spring全家桶</p>
                                          
                                        <h1 style="text-align:center;">The End</h1>
                                    </div>
                                </fieldset>
                            </div>
                        </div><!--关于网站End-->
                       <!--关于作者End-->
                        <div class="layui-tab-item">
                            <div class="aboutinfo">
                                <div class="aboutinfo-figure">
                                    <img src="${pageContext.request.contextPath}/resource/images/handshake.png" alt="友情链接" />
                                </div>
                                <p class="aboutinfo-nickname">友情链接</p>
                                <p class="aboutinfo-introduce">Name：异朽阁&nbsp;&nbsp;&nbsp;&nbsp;Site：www.cczblog.cn</p>
                                <p class="aboutinfo-location">
                                    <i class="fa fa-close"></i>经常宕机&nbsp;
                                    <i class="fa fa-close"></i>不合法规&nbsp;
                                    <i class="fa fa-close"></i>插边球站&nbsp;
                                    <i class="fa fa-close"></i>红标报毒&nbsp;
                                    <i class="fa fa-check"></i>原创优先&nbsp;
                                    <i class="fa fa-check"></i>技术优先
                                </p>
                                <hr />
                                <div class="aboutinfo-contact">
                                    <p style="font-size:2em;">互换友链，携手并进！</p>
                                </div>
                                <fieldset class="layui-elem-field layui-field-title">
                                    <legend>Friend Link</legend>
                                    <div class="layui-field-box">
                                        <ul class="friendlink">
                                            <li>
                                                <a target="_blank" href="http://www.layui.com/" title="Layui" class="friendlink-item">
                                                    <p class="friendlink-item-pic"><img src="http://www.layui.com/favicon.ico" alt="Layui" /></p>
                                                    <p class="friendlink-item-title">Layui</p>
                                                    <p class="friendlink-item-domain">layui.com</p>
                                                </a>
                                            </li>
                                            <li>
                                                <a target="_blank" href="http://www.pagemark.cn/" title="页签" class="friendlink-item">
                                                    <p class="friendlink-item-pic"><img src="http://pm.lyblogs.cn/Images/logo-png.png" alt="页签" /></p>
                                                    <p class="friendlink-item-title">页签</p>
                                                    <p class="friendlink-item-domain">pagemark.cn</p>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </fieldset>
                            </div>
                        </div><!--友情链接End-->

                    </div>
                </div>
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
    <li class="layui-nav-item "><a href="index.jsp"><i
            class="fa fa-home fa-fw"></i>&nbsp;博客首页</a></li>
    <li class="layui-nav-item"><a href="#" id="choosexs"><i
            class="fa  fa-picture-o fa-fw"></i>&nbsp;壁纸切换</a></li>
    <li class="layui-nav-item"><a href="timeline"><i
            class="fa fa-clock-o fa-fw"></i>&nbsp;开发时光</a></li>
    <li class="layui-nav-item layui-this"><a href="info"><i
            class="fa fa-location-arrow fa-fw"></i>&nbsp;留下脚印</a></li>
</ul>

    <!--遮罩-->
    <div class="blog-mask animated layui-hide"></div>
    <script>
        var user = "${user}";
    </script>
    <!-- layui.js -->
    <script src="${pageContext.request.contextPath}/resource/plug/layui/layui.js"></script>
    <!-- 全局脚本 -->
    <script src="${pageContext.request.contextPath}/resource/js/global.js"></script>
    <!-- 本页脚本 -->
    <script src="${pageContext.request.contextPath}/resource/js/about.js"></script>
</body>
</html>
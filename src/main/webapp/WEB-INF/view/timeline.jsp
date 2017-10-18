<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; Charset=gb2312">
    <meta http-equiv="Content-Language" content="zh-CN">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <title>不落阁 - 点点滴滴 - 时光轴</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resource/images/Logo_40.png" type="image/x-icon">
    <!--Layui-->
    <link href="${pageContext.request.contextPath}/resource/plug/layui/css/layui.css" rel="stylesheet" />
    <!--font-awesome-->
    <link href="${pageContext.request.contextPath}/resource/plug/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <!-- animate.css -->
    <link href="${pageContext.request.contextPath}/resource/css/animate.min.css" rel="stylesheet" />
    <!--全局样式表-->
    <link href="${pageContext.request.contextPath}/resource/css/global.css" rel="stylesheet" />
    <!-- 本页样式表 -->
    <link href="${pageContext.request.contextPath}/resource/css/timeline.css" rel="stylesheet" />
</head>
<body>
    <!-- 导航 -->
    <nav class="blog-nav layui-header">
        <div class="blog-container">
             <ul> 
             <!-- QQ互联登陆 -->
             <li class="layui-nav-item"> 
                <a href="javascript:;" id="loginbtn" class="blog-user"><i class="fa fa-qq"></i></a>
                <a href="javascript:;" id="loginout" class="blog-user layui-hide">
                  <img src="${pageContext.request.contextPath}/resource/images/xls.jpg" alt="徐老师" title="徐老师" />&nbsp;A CXY
               </a>
              </li>
            </ul>
            <a href="javascript:;" class="blog-user layui-hide">
                <img src="${pageContext.request.contextPath}/resource/images/Absolutely.jpg" alt="Absolutely" title="Absolutely" />
            </a>
            <!-- 不落阁 -->
            <a class="blog-logo" href="index.jsp">MyBlog</a>
            <!-- 导航菜单 -->
            <ul class="layui-nav" lay-filter="nav">
               <li class="layui-nav-item ">
                    <a href="../index.jsp"><i class="fa fa-home fa-fw"></i>&nbsp;博客首页</a>
                </li>
                <li class="layui-nav-item">
                    <a href="article"><i class="fa fa-file-text fa-fw"></i>&nbsp;文章专栏</a>
                </li>
                <li class="layui-nav-item layui-this">
                    <a href="timeline"><i class="fa fa-hourglass-half fa-fw"></i>&nbsp;开发时光</a>
                </li>
                <li class="layui-nav-item">
                    <a href="info"><i class="fa fa-info fa-fw"></i>&nbsp;关于本站</a>
                </li>
            </ul>
            <!-- 手机和平板的导航开关 -->
            <a class="blog-navicon" href="javascript:;">
                <i class="fa fa-navicon"></i>
            </a>
        </div>
    </nav>
    <!-- 主体（一般只改变这里的内容） -->
    <div class="blog-body">
        <div class="blog-container">
            <blockquote class="layui-elem-quote sitemap layui-breadcrumb shadow">
                <a href="home.html" title="网站首页">网站首页</a>
                <a href="timeline.html" title="点点滴滴">点点滴滴</a>
                <a><cite>时光轴</cite></a>
            </blockquote>
            <div class="blog-main">
                <div class="child-nav shadow">
                    <span class="child-nav-btn child-nav-btn-this">时光轴</span>
                    <span class="child-nav-btn">笔记墙</span>
                </div>
                                    <div class="timeline-box shadow">
                    <div class="timeline-main">
                        <h1><i class="fa fa-clock-o"></i>时光轴<span> —— 记录我与开发的那些事</span></h1>
                        <div class="timeline-line"></div>
                        <div class="timeline-year">
                            <h2><a class="yearToggle" href="javascript:;">2017年</a><i class="fa fa-caret-down fa-fw"></i></h2>
                            <div class="timeline-month">
                                <h3 class=" animated fadeInLeft"><a class="monthToggle" href="javascript:;">10月</a><i class="fa fa-caret-down fa-fw"></i></h3>
                                <ul>
                                  <li class=" ">
                                        <div class="h4  animated fadeInLeft">
                                            <p class="date">2017-10-13 16:19</p>
                                        </div>
                                        <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                        <div class="content animated fadeInRight">今天把所有前端页面销毁,使用了人家的前端模板！最近太忙，没时间搞前端的东西了，总之。慢慢来吧</div>
                                        <div class="clear"></div>
                                    </li>
                                    <li class=" ">
                                        <div class="h4  animated fadeInLeft">
                                            <p class="date">2017-10-10 17:10</p>
                                        </div>
                                        <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                        <div class="content animated fadeInRight">啊，啊，啊， 啊， 突然要我自己做个项目好多知识点不会！好烦，这个博客要暂停一段时间了</div>
                                        <div class="clear"></div>
                                    </li>
                                    <li class=" ">
                                        <div class="h4  animated fadeInLeft">
                                            <p class="date">2017-10-03 19:33</p>
                                        </div>
                                        <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                        <div class="content animated fadeInRight">半夜心血来操-起来撸代码</div>
                                        <div class="clear"></div>
                                    </li>
                                     <li class=" ">
                                        <div class="h4  animated fadeInLeft">
                                            <p class="date">2017-10-04 22:33</p>
                                        </div>
                                        <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                        <div class="content animated fadeInRight">今天比较忙，毕竟中秋</div>
                                        <div class="clear"></div>
                                    </li>
                                       <li class=" ">
                                        <div class="h4  animated fadeInLeft">
                                            <p class="date">2017-10-10 8:00</p>
                                        </div>
                                        <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                        <div class="content animated fadeInRight">中秋过后第一天上班，状态不好！麻烦事一大推</div>
                                        <div class="clear"></div>
                                    </li>

                                </ul>
                            </div>
                            <div class="timeline-month">
                                <h3 class=" animated fadeInLeft"><a class="monthToggle" href="javascript:;">9月</a><i class="fa fa-caret-down fa-fw"></i></h3>
                                <ul>
                                    <li class=" ">
                                        <div class="h4  animated fadeInLeft">
                                            <p class="date">2017-09-26  14:00</p>
                                        </div>
                                        <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                        <div class="content animated fadeInRight">整体后端框架搭建完毕;前端准备使用纯Layui开发;</div>
                                        <div class="clear"></div>
                                    </li>
                                    <li class=" ">
                                        <div class="h4  animated fadeInLeft">
                                            <p class="date">2017-09-27  15:00</p>
                                        </div>
                                        <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                        <div class="content animated fadeInRight">准备搭建前端页面</div>
                                        <div class="clear"></div>
                                    </li>
                                    <li class=" ">
                                        <div class="h4  animated fadeInLeft">
                                            <p class="date">2017-09-28 20:35</p>
                                        </div>
                                        <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                        <div class="content animated fadeInRight">编写主页面Index,jsp</div>
                                        <div class="clear"></div>
                                    </li>
                                     <li class=" ">
                                        <div class="h4  animated fadeInLeft">
                                            <p class="date">2017-09-29 20:00</p>
                                        </div>
                                        <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                        <div class="content animated fadeInRight">租了一台服务器，准备先搭建好FTP服务器</div>
                                        <div class="clear"></div>
                                    </li>
             
                                </ul>
                            </div>
                        </div>
                       
                        <h1 style="padding-top:4px;padding-bottom:2px;margin-top:40px;"><i class="fa fa-hourglass-end"></i>THE END</h1>
                    </div>
                </div>
                
                
            </div>
        </div>
    </div>
    <!-- 底部 -->
    <footer class="blog-footer">
        <p><span>Copyright</span><span>&copy;</span><span>2017</span><a href="http://www.cczblog.cn">MyBlog</a><span>Design By Zcc</span></p>
        <p><a href="http://www.miibeian.gov.cn/" target="_blank">蜀ICP备16029915号-1</a></p>
    </footer>
    <!--侧边导航-->
    <ul class="layui-nav layui-nav-tree layui-nav-side blog-nav-left layui-hide" lay-filter="nav">
        <li class="layui-nav-item">
            <a href="home.html"><i class="fa fa-home fa-fw"></i>&nbsp;网站首页</a>
        </li>
        <li class="layui-nav-item">
            <a href="article.html"><i class="fa fa-file-text fa-fw"></i>&nbsp;文章专栏</a>
        </li>
        <li class="layui-nav-item">
            <a href="resource.html"><i class="fa fa-tags fa-fw"></i>&nbsp;资源分享</a>
        </li>
        <li class="layui-nav-item layui-this">
            <a href="timeline.html"><i class="fa fa-road fa-fw"></i>&nbsp;点点滴滴</a>
        </li>
        <li class="layui-nav-item">
            <a href="about.html"><i class="fa fa-info fa-fw"></i>&nbsp;关于本站</a>
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
    <!-- 全局脚本 -->
    <script src="${pageContext.request.contextPath}/resource/js/global.js"></script>
    <!-- 本页脚本 -->
    <script type="text/javascript">
        layui.use('jquery', function () {
            var $ = layui.jquery;

            $(function () {
                $('.monthToggle').click(function () {
                    $(this).parent('h3').siblings('ul').slideToggle('slow');
                    $(this).siblings('i').toggleClass('fa-caret-down fa-caret-right');
                });
                $('.yearToggle').click(function () {
                    $(this).parent('h2').siblings('.timeline-month').slideToggle('slow');
                    $(this).siblings('i').toggleClass('fa-caret-down fa-caret-right');
                });
            });
        });
    </script>
</body>
</html>
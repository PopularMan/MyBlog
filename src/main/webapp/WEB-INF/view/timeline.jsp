<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; Charset=gb2312">
    <meta http-equiv="Content-Language" content="zh-CN">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <title>异朽阁-时光轴</title>
   <link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resource/images/logo.ico"
	type="image/x-icon">
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
            <li class="layui-nav-item layui-this"><a href="timeline"><i
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
                <a href="www.cczblog.cn" title="网站首页">网站首页</a>
                <a><cite>时光轴</cite></a>
            </blockquote>
            <div class="blog-main">
                <div class="child-nav shadow">
                    <span class="child-nav-btn child-nav-btn-this">时光轴</span>
                    <span class="child-nav-btn">笔记墙</span>
                </div>
                  <div class="timeline-box shadow">
                    <div class="timeline-main" id="timeLine">
                        <h1><i class="fa fa-clock-o"></i>时光轴<span> —— 记录我与开发的那些事</span></h1>
                        <div class="timeline-line" ></div>                      
                        <h1 style="padding-top:4px;padding-bottom:2px;margin-top:40px;"><i class="fa fa-hourglass-end"></i>THE END</h1>
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
    <script src="${pageContext.request.contextPath}/resource/plug/layui/layui.js"></script>
    <!-- 全局脚本 -->
    <script src="${pageContext.request.contextPath}/resource/js/global.js"></script>
    <!-- 本页脚本 -->

    <script type="text/javascript">
        layui.use(['jquery','layer'], function () {
            var $ = layui.jquery;
            var layer=layui.layer;
            $(function () {
            
                $.ajax({
                	url:"getPreTimelineData",
                	type:"GET",
                	dataType:"json",
                	async:false,
                	success:function(data){
                		if(data.success){
                			 $.each(data.data,function(m,n){
                				 console.log(n.line);
                				 var str='<div class="timeline-year">'+
                                         '<h2><a class="yearToggle" href="javascript:;">'+n.year+'年</a><i class="fa fa-caret-down fa-fw"></i></h2>';
                			             //循环月份
                			          var month=0;
                                      $.each(n.line,function(j,k){
                                    	  str+='<div class="timeline-month">';
                                    	  if(month==0){
                                    		  str+='<h3 class=" animated fadeInLeft">'+
                                                   '<a class="monthToggle" href="javascript:;">'+k.line_month+'</a><i class="fa fa-caret-down fa-fw"></i></h3>';
                                                   str+="<ul>"
                                                   $.each(n.line,function(a,b){
                                                	   if(b.line_month==k.line_month){
                                                		   str+='<li class=""><div class="h4  animated fadeInLeft">'+
                                                           '<p class="date">'+new Date(b.line_time).format("yyyy-MM-dd hh:mm:ss")+'</p> </div>'+
              		                                     '<p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>'+
              		                                     '<div class="content animated fadeInRight">'+b.line_content+'</div>'+
              		                                      '<div class="clear"></div></li>';
                                                	   }
                                                   }); 
                                                   str+="</ul>";
                                                   month=k.line_month;
                                    	  }else{
                                    		  if(month!=k.line_month){
			                                    		  str+='<h3 class=" animated fadeInLeft">'+
			                                              '<a class="monthToggle" href="javascript:;">'+k.line_month+'</a><i class="fa fa-caret-down fa-fw"></i></h3>';
			                                              str+="<ul>"
			                                              $.each(n.line,function(a,b){
			                                           	   if(b.line_month==k.line_month){
			                                           		   str+='<li class=""><div class="h4  animated fadeInLeft">'+
			                                                      '<p class="date">'+new Date(b.line_time).format("yyyy-MM-dd hh:mm:ss")+'</p> </div>'+
			         		                                     '<p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>'+
			         		                                     '<div class="content animated fadeInRight">'+b.line_content+'</div>'+
			         		                                      '<div class="clear"></div></li>';
			                                           	   }
			                                              }); 
			                                              str+="</ul>";
			                                              month=k.line_month;
			                                    	  }
                                    	     }
                			          });
                                      str+="</div></div>"  
                                    $("#timeLine").append(str);
                			 });
                		}else{
                			layer.msg("内部异常");
                		}
                	}
                });
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
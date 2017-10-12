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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resource/css/timeline.css"
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
    
        
		<!--  <ul class="layui-timeline">
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
		   <li class="layui-timeline-item">
		    <i class="layui-icon layui-timeline-axis">&#xe60e;</i>
		    <div class="layui-timeline-content layui-text">
		      <h3 class="layui-timeline-title">2017-09-29</h3>
		      <p>今天暂时先不写代码</p>
		      <ul>
		        <li>租了一台服务器，准备先搭建好FTP服务器</li>
		  
		      </ul>
		    </div>
		  </li>
		  <li class="layui-timeline-item">
		    <i class="layui-icon layui-timeline-axis">&#xe60e;</i>
		    <div class="layui-timeline-content layui-text">
		      <h3 class="layui-timeline-title">2017-10-03</h3>
		      <p>半夜心血来操-起来撸代码</p>
		      <ul>
		        <li>熟悉使用layui的form空间，</li>
		  
		      </ul>
		    </div>
		  </li>
		 <li class="layui-timeline-item">
		    <i class="layui-icon layui-timeline-axis">&#xe60e;</i>
		    <div class="layui-timeline-content layui-text">
		      <h3 class="layui-timeline-title">2017-10-04</h3>
		      <p>今天比较忙，毕竟中秋</p>
		      <ul>
		        <li>随便写点，给博客完善一下吧</li>
		  
		      </ul>
		    </div>
		  </li>

 -->
		</ul>
    
    </div>
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
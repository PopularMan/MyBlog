<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; Charset=gb2312">
    <meta http-equiv="Content-Language" content="zh-CN">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resource/images/xls.ico" type="image/x-icon">
    <title>异朽阁</title>
    <!--Layui-->
    <link href="${pageContext.request.contextPath}/resource/plug/layui/css/layui.css" rel="stylesheet" />
    <!--font-awesome-->
    <link href="${pageContext.request.contextPath}/resource/plug/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <!--全局样式表-->
    <link href="${pageContext.request.contextPath}/resource/css/global.css" rel="stylesheet" />

    <!-- 本页样式表 -->
    <link href="${pageContext.request.contextPath}/resource/css/detail.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resource/css/skin.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resource/css/animate.min.css" rel="stylesheet" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/resource/plug/ueidter/third-party/SyntaxHighlighter/shCore.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/plug/ueidter/third-party/SyntaxHighlighter/shCoreDefault.css">
    <script type="text/javascript">
        SyntaxHighlighter.all();
    </script>


</head>
<body>
<div class="overflay"></div>
<div class="skin">
    <div class="pic">
        <div class="one">
            <a href="#">
                <div class="mask"></div>
                <img src="/MyBlog/resource/images/skin1-1.jpg" alt="壁纸1" width="194" height="123" ></a>
            <a href="#"><img src="/MyBlog/resource/images/skin2-2.jpg" alt="壁纸2" width="97" height="59"></a>
            <a href="#"><img src="/MyBlog/resource/images/skin3-3.jpg" alt="壁纸3" width="97" height="59"></a>
        </div>
        <div class="two">

            <a href="#"><img src="/MyBlog/resource/images/skin4-4.jpg" alt="壁纸4" width="97" height="60"></a>
            <a href="#"><img src="/MyBlog/resource/images/skin5-5.jpg" alt="壁纸5" width="97" height="60"></a>
            <a href="#"><img src="/MyBlog/resource/images/skin6-6.jpg" alt="壁纸6" width="97" height="60"></a>


        </div>
        <div class="three">


            <a href="#"><img src="/MyBlog/resource/images/skin7-7.jpg" alt="壁纸7" width="97" height="59"></a>
            <a href="#"><img src="/MyBlog/resource/images/skin8-8.jpg" alt="壁纸8" width="97" height="59"></a>
            <a href="#"><img src="/MyBlog/resource/images/skin9-9.jpg" alt="壁纸9" width="194" height="123"></a>
        </div>
        <div class="four">
            <a href="#"><img src="/MyBlog/resource/images/skin10-10.jpg" alt="壁纸10" width="97" height="60"></a>
            <a href="#"><img src="/MyBlog/resource/images/skin11-11.jpg" alt="壁纸11" width="97" height="60"></a>
            <a href="#"><img src="/MyBlog/resource/images/skin12-12.jpg" alt="壁纸12" width="97" height="60"></a>

        </div>
    </div>
</div>
   	<!-- 导航 -->
	<nav class="blog-nav layui-header" style="position: relative;">

        <div class="blog-container">
            <ul>
                <!-- QQ互联登陆 -->
                <li class="layui-nav-item"><a href="../QQLogin" class="blog-user"><i
                        class="fa fa-qq"></i></a> <a href="../InvalidQQlogin" id="loginout"
                                                     class="blog-user layui-hide"> <img src="${user.avatarUrl}"
                          title="${user.nickName}" />&nbsp;${user.nickName}
                </a></li>
            </ul>
            <!-- MyBlog -->
            <a class="blog-logo" href="javascript:void(0)"><img src="../resource/images/logo.png"  /></a>
            <!-- 导航菜单 -->
            <ul class="layui-nav layui-bg-cyan" lay-filter="nav" >
                <li class="layui-nav-item layui-this"><a href="https://www.cczblog.cn"><i
                        class="fa fa-home fa-fw"></i>&nbsp;博客首页</a></li>
                <li class="layui-nav-item"><a href="#" id="choose"><i
                        class="fa  fa-picture-o fa-fw"></i>&nbsp;壁纸切换</a></li>
                <li class="layui-nav-item"><a href="../timeline.html"><i
                        class="fa fa-clock-o fa-fw"></i>&nbsp;开发时光</a></li>
                <li class="layui-nav-item"><a href="../info.html"><i
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
                <a><cite>${blog.blog_title}</cite></a>
            </blockquote>
            <div class="blog-main">
                <div class="blog-main-left" style="width:100%">
                    <div class="article-detail shadow animated zoomIn">
                        <div class="article-detail-title">
                           ${blog.blog_title}
                        </div>
                        <div class="article-detail-info">
                            <span>编辑时间： ${blog.blog_time}</span>
                            <span>作者：${blog.blog_author}</span>
                            <span>浏览量：${blog.blog_eyes}</span>
                        </div>
                        <div class="article-detail-content">
                            ${blog.blog_article}
                        </div>
                    </div>
                    <!-- 评论区域 -->
                    <div class="blog-module shadow animated zoomIn" style="box-shadow: 0 1px 8px #a6a6a6;">
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
                            <c:choose>
                            <c:when test="${comment!= null && fn:length(comment) > 0}">
                                <c:forEach items="${comment}" var="map" varStatus="status">

                                        <li class="animated zoomIn">
                                            <div class="comment-parent">
                                                <div class="imgcomment" ><img class="layui-circle" src="${map.avatarUrl}"  alt="${map.nickName}" /></div>
                                                <div class="leftcomment" style="">
                                                    <div class="info">
                                                        <span class="username">${map.nickName}</span>: <span class="time">${map.comment_date}</span>

                                                    </div>
                                                    <div class="content">${map.comment_content}</div>
                                                </div>
                                                <div class="rightcomment" style=" width: 30%; height: 80px;float: right;">
                                                    <p style="color:gray;margin: 30px 35%;">${map.userlocation}</p>
                                                </div>
                                            </div>


                                        </li>

                                </c:forEach>
                            </c:when>
                            <c:otherwise>
                                  <!-- <div>暂无评论,快点来成为第一个评论者吧</div>-->

                            </c:otherwise>
                            </c:choose>
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

    <!--遮罩-->
    <div class="blog-mask animated layui-hide"></div>
    <script>
        var user = "${user}";
    </script>
    <!-- layui.js -->
    <script src="${pageContext.request.contextPath}/resource/plug/layui/layui.js"></script>
    <!-- 自定义全局脚本 -->
    <script src="${pageContext.request.contextPath}/resource/js/global.js"></script>
    <script>

        layui.use(['form', 'layedit'], function () {
            var form = layui.form;
            var $ = layui.jquery;
            var layedit = layui.layedit;

            //评论和留言的编辑器
            var editIndex = layedit.build('remarkEditor', {
                height: 150,
                tool: ['face', '|', 'left', 'center', 'right', '|', 'link'],
            });
            //评论和留言的编辑器的验证
            form.verify({
                content: function (value) {
                    value = $.trim(layedit.getText(editIndex));
                    if (value == "") return "自少得有一个字吧";
                    layedit.sync(editIndex);
                }
            });

            //监听评论提交
            form.on('submit(formRemark)', function (data) {
                var userid="${user.userid}";
                if(userid==""){
                    layer.msg("请先登录！", { icon: 2 });
                    return false;
                }

                var index = layer.load(1);
                //模拟评论提交
                setTimeout(function () {
                    layer.close(index);
                    var content = data.field.editorContent;

                    $.ajax({
                        url:"../blog/insertBlogComment",
                        type:"post",
                        data:{"userid":"${user.userid}","content":content,"blogid":"${blog.blog_id}"},
                        success:function(res){
                            if(res){
                                layer.msg("评论成功", { icon: 1 });
                            }else{
                                layer.msg("评论失败", { icon: 2 });
                            }
                        }
                    });
                    var html ="  <li class=\"animated zoomIn\">\n" +
                        "      <div class=\"comment-parent\">\n" +
                        "        <div class=\"imgcomment\" ><img class=\"layui-circle\" src=\"${user.avatarUrl}\"  alt=\"${user.nickName}\" /></div>\n" +
                        "      <div class=\"leftcomment\" style=\"\">\n" +
                        "      <div class=\"info\">\n" +
                        "        <span class=\"username\">${user.nickName}</span>: <span class=\"time\">"+new Date().format("yyyy:MM:dd hh:mm:ss")+"</span>\n" +
                        "\n" +
                        "      </div>\n" +
                        "    <div class=\"content\">"+content+"</div>\n" +
                        "      </div>\n" +
                        "   <div class=\"rightcomment\" style=\" width: 30%; height: 80px;float: right;\">\n" +
                        "   <p style=\"color:gray;margin: 30px 35%;\">${user.userlocation}</p>\n" +
                        "    </div>\n" +
                        "     </div>\n" +
                        "\n" +
                        "\n" +
                        "  </li>";
                    $('.blog-comment').prepend(html);
                    $('#remarkEditor').val('');
                    editIndex = layui.layedit.build('remarkEditor', {
                        height: 150,
                        tool: ['face', '|', 'left', 'center', 'right', '|', 'link'],
                    });

                }, 500);
                return false;
            });
        });

    </script>
</body>
</html>
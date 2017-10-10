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
	href="${pageContext.request.contextPath}/resource/css/global.css"
	media="all">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resource/css/font-awesome.css"
	media="all">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resource/css/animate.min.css"
	media="all">
<style>
.article-title {
    text-align: center;
    margin: 20px 0px;
    color: white;
    font-weight: 700;
    text-shadow: 0 0 8px #000000;
    font-size: 24px;
    padding-top: 10px;
}
.article-info {
    border: 1px dashed #808080;
    font-size: 13px;
    color: #808080;
    padding: 5px 0;
    font-family: SimSun;
    text-align: center;
    margin: 0 0 10px;
 }
 .article-content{margin: 0;padding: 10px;font-family:""KaiTi"";font-size:14px;}
.layui-row{background-color:#fff;margin-bottom: 10px;}
</style>
</head>

<body style="background-color:#eee" >

    <div class="layui-row">
      	<blockquote class="layui-elem-quote  animated zoomIn ">
					<div style="position: relative">
					     <i class="fa fa-home"></i>${blog.blog_title}
					</div>
				</blockquote>
     </div>
    
    <div class="layui-row  ">
      <div class="animated zoomIn">
	       <div class="article-title">${blog.blog_title}</div>
	       <div class="article-info"> 编辑时间：${blog.blog_time} 作者：${blog.blog_author} </div>   
	       <div class="article-content">
	               ${blog.blog_article}
	       </div> 
       </div>   
    </div>
     <div class="layui-row animated zoomIn">
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
                                    <img src="../resource/img/logo.png" alt="absolutely" />
                                    <div class="info">
                                        <span class="username">Absolutely</span>
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
</body>
<script src="${pageContext.request.contextPath}/resource/layui/layui.js"></script>
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
        var index = layer.load(1);
        //模拟评论提交
        setTimeout(function () {
            layer.close(index);
            var content = data.field.editorContent;
            var html = '<li><div class="comment-parent"><img src="../images/Absolutely.jpg"alt="absolutely"/><div class="info"><span class="username">Absolutely</span><span class="time">2017-03-18 18:46:06</span></div><div class="content">' + content + '</div></div></li>';
            $('.blog-comment').append(html);
            $('#remarkEditor').val('');
            editIndex = layui.layedit.build('remarkEditor', {
                height: 150,
                tool: ['face', '|', 'left', 'center', 'right', '|', 'link'],
            });
            layer.msg("评论成功", { icon: 1 });
        }, 500);
        return false;
    });
  var parnetIframe=window.parent.document.getElementById("iFrame1");
  alert($("body").height());
  $(parnetIframe).height($("body").height());
});
</script>
</html>
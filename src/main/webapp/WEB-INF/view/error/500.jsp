<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /></meta>

<title>服务器出错了</title>

<title>异朽阁</title>
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resource/images/xls.ico"
	type="image/x-icon"/></link>
	<style type="text/css">
		body{ margin:0; padding:0; background:#efefef; font-family:Georgia, Times, Verdana, Geneva, Arial, Helvetica, sans-serif; }
		div#mother{ margin:0 auto; width:943px; height:572px; position:relative; }
		div#errorBox{ background: url(${pageContext.request.contextPath}/resource/images/500_bg.png) no-repeat top left; width:943px; height:572px; margin:auto; }
		div#errorText{ color:#39351e; padding:146px 0 0 446px }
		div#errorText p{ width:303px; font-size:14px; line-height:26px; }
		div.link{ /*background:#f90;*/ height:50px; width:145px; float:left; }
		div#home{ margin:20px 0 0 444px;}
		div#contact{ margin:20px 0 0 25px;}
		h1{ font-size:40px; margin-bottom:35px; }
	</style>
</head>
<body>
<div id="mother">
	<div id="errorBox">
		<div id="errorText">
			<h1>Sorry..服务器貌似出现问题了</h1>
			<p>
			   请不要担心，这没事。如果该资源对你很重要，请与管理员联系。
			</p>

			<p>
				没关系,这里是<a href="www.baidu.com" target="_blank">百度传送门</a>
			</p>
		</div>
		<a href="https://www.cczblog.cn" title="返回首页">
			<div class="link" id="home"></div>
		</a>
		<a href="#" onclick="PlayJsAdPopWin()" title="联系管理员">
			<div class="link" id="contact"></div>

		</a>
	</div>
</div>
</body>

<script>
    var qq_chat = true;
    function PlayJsAdPopWin() {
        if (qq_chat) {
            popwin = window.location.href = 'tencent://message/?uin=1255780376&Site=www.cczblog.cn&Menu=yes'
        }
    };
</script>


</html>
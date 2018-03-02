<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0"> 
	<title>登录界面</title>

	<link href="../resource/css/login.css" rel="stylesheet" type="text/css" />
	<link href="../resource/plug/layui/css/layui.css" rel="stylesheet" type="text/css" />
	<link rel="shortcut icon" href="../resource/images/xls.ico" type="image/x-icon">
	<script type="text/javascript" src="../resource/plug/layui/layui.js"></script>
</head>
<body>

<div class="login">
	<div class="message">YXG管理员登录</div>
	<div id="darkbannerwrap"></div>

	<form method="post" id="loginform" action="logon">
		<input name="username" placeholder="用户名" required type="text">
		<hr class="hr15">
		<input name="password" placeholder="密码" required type="password">
		<hr class="hr15">
		<input size="8" style="width: 50%;height: 40px;" name="validateCode" placeholder="验证码" type="text"> <img
			id="randomcode_img" src="../ValidateCodeServlet" alt=""
			width="100" height="40" style="cursor: pointer;" align='absMiddle' />
		<hr class="hr20">
		<input value="登录" onclick="submit()" style="width:100%;" type="button">
		<hr class="hr20">
		<!-- 帮助 <a onClick="alert('请联系管理员')">忘记密码</a> -->
	</form>


</div>



<script>

  layui.use(['layer','jquery'],function(){
       var layer=layui.layer,$=layui.jquery;
       var error="${error}";
       if(error!=null && error!=""){
           layer.msg(error);
       }
       $("#randomcode_img").on("click",function(){
             $(this).attr("src","../ValidateCodeServlet?"+Math.random());
	   });
       function submit(){
           $("#loginform").submit();
	   }
  });

</script>

</body>
</html>
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

    <!--必要样式-->
    <link href="../resource/css/styles.css" rel="stylesheet" type="text/css" />
    <link href="../resource/css/demo.css" rel="stylesheet" type="text/css" />
    <link href="../resource/css/loaders.css" rel="stylesheet" type="text/css" />

</head>
<body>
   
<h1>登录界面</h1>
<div class='login'>
	  <div class='login_title'>
	    <span>异朽阁后台管理系统</span>
	  </div>
	  <div class='login_fields'>
	    <div class='login_fields__user'>
	      <div class='icon'>
	        <img alt="" src='../resource/img/user_icon_copy.png'>
	      </div>
	      <input name="login" placeholder='用户名' maxlength="16" type='text' autocomplete="off" value="admin"/>
	        <div class='validation'>
	          <img alt="" src='../resource/img/tick.png'>
	        </div>
	    </div>
	    <div class='login_fields__password'>
	      <div class='icon'>
	        <img alt="" src='../resource/img/lock_icon_copy.png'>
	      </div>
	      <input name="pwd" placeholder='密码' maxlength="16" type='text' autocomplete="off">
	      <div class='validation'>
	        <img alt="" src='../resource/img/tick.png'>
	      </div>
	    </div>
	    <div class='login_fields__password'>
	      <div class='icon'>
	        <img alt="" src='../resource/img/key.png'>
	      </div>
	      <input name="code" placeholder='验证码' maxlength="4" type='text' name="ValidateNum" autocomplete="off">
	      <div class='validation' style="opacity: 1; right: -60px;top: -3px;">
          <canvas class="J_codeimg" id="myCanvas" onclick="Code();">对不起，您的浏览器不支持canvas，请下载最新版浏览器!</canvas>
	      </div>
	    </div>
	    <div class='login_fields__submit' style="padding-left:10px;">
	      <input type='button' value='登录'>
	    </div>
	  </div>
	  <div class='success'>
	  </div>
	  <div class='disclaimer'>
	  
	    <p>默认账号: admin</p>
	    <p>默认密码:123456</p>
	  
	  </div>
	</div>
	<div class='authent'>
	  <div class="loader" style="height: 44px;width: 44px;margin-left: 28px;">
        <div class="loader-inner ball-clip-rotate-multiple">
            <div></div>
            <div></div>
            <div></div>
        </div>
        </div>
	  <p>认证中...</p>
	</div>
	<div class="OverWindows"></div>
    <link href="../resource/plug/layui/css/layui.css" rel="stylesheet" type="text/css" />
	
	<script type="text/javascript" src="../resource/js/jquery.min.js"></script>
	<script type="text/javascript" src="../resource/js/jquery-ui.min.js"></script>
	<script type="text/javascript" src='../resource/js/stopExecutionOnTimeout.js?t=1'></script>
    <script type="text/javascript" src="../resource/plug/layui/layui.js"></script>
    <script type="text/javascript" src="../resource/js/Particleground.js"></script>
    <script type="text/javascript" src="../resource/js/Treatment.js"></script>
    <script type="text/javascript" src="../resource/js/jquery.mockjax.js"></script>
	<script type="text/javascript">
	
	
	    console.log("如何感到高兴，你就拍拍手，阿哈");
		var canGetCookie = 0;//是否支持存储Cookie 0 不支持 1 支持
		var ajaxmockjax = 1;//是否启用虚拟Ajax的请求响 0 不启用  1 启用
		//默认账号密码
		
		var truelogin = "admin";
		var truepwd = "123456";
		
		var CodeVal = 0;
	    Code();
	    function Code() {
			if(canGetCookie == 1){
				createCode("AdminCode");
				var AdminCode = getCookieValue("AdminCode");
				showCheck(AdminCode);
			}else{
				showCheck(createCode(""));
			}
	    }
	    function showCheck(a) {
			CodeVal = a;
	        var c = document.getElementById("myCanvas");
	        var ctx = c.getContext("2d");
	        ctx.clearRect(0, 0, 1000, 1000);
	        ctx.font = "80px 'Hiragino Sans GB'";
	        ctx.fillStyle = "#E8DFE8";
	        ctx.fillText(a, 0, 100);
	    }
	    $(document).keypress(function (e) {
	        // 回车键事件  
	        if (e.which == 13) {
	            $('input[type="button"]').click();
	        }
	    });
	    //粒子背景特效
	    $('body').particleground({
	        dotColor: '#E8DFE8',
	        lineColor: '#133b88'
	    });
	    $('input[name="pwd"]').focus(function () {
	        $(this).attr('type', 'password');
	    });
	    $('input[type="text"]').focus(function () {
	        $(this).prev().animate({ 'opacity': '1' }, 200);
	    });
	    $('input[type="text"],input[type="password"]').blur(function () {
	        $(this).prev().animate({ 'opacity': '.5' }, 200);
	    });
	    $('input[name="login"],input[name="pwd"]').keyup(function () {
	        var Len = $(this).val().length;
	        if (!$(this).val() == '' && Len >= 5) {
	            $(this).next().animate({
	                'opacity': '1',
	                'right': '30'
	            }, 200);
	        } else {
	            $(this).next().animate({
	                'opacity': '0',
	                'right': '20'
	            }, 200);
	        }
	    });
	    var open = 0;
	    layui.use('layer', function () {
		

	        //非空验证
	        $('input[type="button"]').click(function () {
	            var login = $('input[name="login"]').val();
	            var pwd = $('input[name="pwd"]').val();
	            var code = $('input[name="code"]').val();
	            if (login == '') {
	                ErroAlert('请输入您的账号');
	            } else if (pwd == '') {
	                ErroAlert('请输入密码');
	            } else if (code == '' || code.length != 4) {
	                ErroAlert('输入验证码');
	            } else {
	            	//此处做为ajax内部判断
	            	  //登录
	                var JsonData = { login: login, pwd: pwd, code: code };
					
					
					if(JsonData.code.toUpperCase() == CodeVal.toUpperCase()){
						 $('.login').addClass('test'); //倾斜特效
			                setTimeout(function () {
			                    $('.login').addClass('testtwo'); //平移特效
			                }, 300);
			                setTimeout(function () {
			                    $('.authent').show().animate({ right: -320 }, {
			                        easing: 'easeOutQuint',
			                        duration: 600,
			                        queue: false
			                    });
			                    $('.authent').animate({ opacity: 1 }, {
			                        duration: 200,
			                        queue: false
			                    }).addClass('visible');
			                }, 500);
						    setTimeout(function(){
									$.ajax({
										url:"../admin/shiro-login",
										data:{ username: login, password: pwd},
										async:false,
										success:function(code){
											if(code=="success"){
												layer.msg("认证成功");
												 
											}else{
												layer.msg("认证失败");
												
											}
											setTimeout(function () {
							                    window.location.href="../user/index"
							             }, 300);
										}
									});
						      },2000);
			
					}else{
						
						ErroAlert("验证码错误");
					}
					
	                //认证中..
	                //fullscreen();
	               

	              
	            }
	        });
	     
	       
	    });
	    var fullscreen = function () {
	        elem = document.body;
	        if (elem.webkitRequestFullScreen) {
	            elem.webkitRequestFullScreen();
	        } else if (elem.mozRequestFullScreen) {
	            elem.mozRequestFullScreen();
	        } else if (elem.requestFullScreen) {
	            elem.requestFullscreen();
	        } else {
	            //浏览器不支持全屏API或已被禁用  
	        }
	    }  

    </script>



</body>
</html>
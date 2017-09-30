<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
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
</head>
<body>
<div>
	     <!-- 第一行 -->
			<div clsss="layui-row">
				<blockquote class="layui-elem-quote animated bounceInLeft">

					<div style="position: relative">
						<i class="fa fa-home"></i>My Blog For Cc <a href="#" class="layui-layout-right">个人资料入口<i
							class="layui-icon" style="font-size: 14px; color: #2F4056;">&#xe612;</i>
						</a>
					</div>

				</blockquote>
			</div>
			<!-- 第二行内容 -->
			<div class="layui-row">
				<div class="layui-col-md12 blog-block animated bounceInLeft">				    
				      <div class="blog-list-item">
				           <div class="blog-list-item-left">  
				              <img src="${pageContext.request.contextPath}/resource/img/665f644e43731ff9db3d341da5c827e1.jpg">
				           </div>
				           <div class="blog-list-item-right">  
				                 <h3><span class="layui-badge layui-bg-green">置顶</span><a target="main" href="blogDetail">本站正式成功发布上线！</a></h3>
				                 <p>
				                      1.经过2个月的开发，本站正式发布上线，后续还将会继续开发新的功能，希望大家在浏览本站的同时发现问题还请及时与站长联系哦！      
				                 </p>
				           </div>
				           <!-- 清除浮动 -->
				           <div class="clear"></div>
				           <!-- 分割线 --> 
				           <!-- footer --> 
				           <div class="blog-list-item-footer">
				           
				              <p>
				                <span><i class="fa fa-clock-o"></i>2017-01-01 14:20</span>
				                <span class="spaninfo"><i class="fa fa-eye"></i>20</span>
				                <span class="spaninfo"><i class="fa fa-share"></i>120</span>
				                <span class="spaninfo"><i class="fa fa-commenting"></i>100</span>
				              </p>
				           
				           </div>       
				      </div>
				</div>
		 	</div>
		 <!-- 第三行 -->
		 <div class="layui-row">
				<div class="layui-col-md12 blog-block animated bounceInLeft">				    
				      <div class="blog-list-item">
				           <div class="blog-list-item-left">  
				              <img src="${pageContext.request.contextPath}/resource/img/14a58b48908748169d3db56b901e9cf6.jpg">
				           </div>
				           <div class="blog-list-item-right">  
				                 <h3><span class="layui-badge layui-bg-green">置顶</span><a target="_blank" href="/articles/detail/5a12e89edad6a00a8f8d9b031d5bad3f">本站正式成功发布上线！</a></h3>
				                 <p>
				                      1.经过2个月的开发，本站正式发布上线，后续还将会继续开发新的功能，希望大家在浏览本站的同时发现问题还请及时与站长联系哦！      
				                 </p>
				           </div>
				           <!-- 清除浮动 -->
				           <div class="clear"></div>
				           <!-- 分割线 --> 
				           <!-- footer --> 
				           <div class="blog-list-item-footer">
				           
				              <p>
				                <span><i class="fa fa-clock-o"></i>2017-01-01 14:20</span>
				                <span class="spaninfo"><i class="fa fa-eye"></i>20</span>
				                <span class="spaninfo"><i class="fa fa-share"></i>120</span>
				                <span class="spaninfo"><i class="fa fa-commenting"></i>100</span>
				              </p>
				           
				           </div>       
				      </div>
				</div>
		 	</div>
		 			 <!-- 第三行 -->
		 <div class="layui-row">
				<div class="layui-col-md12 blog-block animated bounceInLeft">				    
				      <div class="blog-list-item">
				           <div class="blog-list-item-left">  
				              <img src="${pageContext.request.contextPath}/resource/img/14a58b48908748169d3db56b901e9cf6.jpg">
				           </div>
				           <div class="blog-list-item-right">  
				                 <h3><span class="layui-badge layui-bg-green">置顶</span><a target="_blank" href="/articles/detail/5a12e89edad6a00a8f8d9b031d5bad3f">本站正式成功发布上线！</a></h3>
				                 <p>
				                      1.经过2个月的开发，本站正式发布上线，后续还将会继续开发新的功能，希望大家在浏览本站的同时发现问题还请及时与站长联系哦！      
				                 </p>
				           </div>
				           <!-- 清除浮动 -->
				           <div class="clear"></div>
				           <!-- 分割线 --> 
				           <!-- footer --> 
				           <div class="blog-list-item-footer">
				           
				              <p>
				                <span><i class="fa fa-clock-o"></i>2017-01-01 14:20</span>
				                <span class="spaninfo"><i class="fa fa-eye"></i>20</span>
				                <span class="spaninfo"><i class="fa fa-share"></i>120</span>
				                <span class="spaninfo"><i class="fa fa-commenting"></i>100</span>
				              </p>
				           
				           </div>       
				      </div>
				</div>
		 	</div>



	
           <div class="layui-row animated bounceInLeft" style="height:50px;">
           
		      	<!-- 分页部分 -->
				<div id="blog-page" style="padding-left:30%"></div>
            </div>
		</div>
		 <!-- 左边部分结束 -->
		

</body>
<script src="${pageContext.request.contextPath}/resource/layui/layui.js"></script>
<script src="${pageContext.request.contextPath}/resource/layui/jquery-1.8.3.min.js"></script>
	<script>
		layui.use([ 'element', 'layer', 'table','laypage' ], function() {
			var element = layui.element;
			var layer   = layui.layer;
			var laypage = layui.laypage;
	        var $=layui.jquery;
	        //调用分页
	        laypage.render({
	          elem: 'blog-page',
	          count:10,
	          limit:3,
	          jump: function(obj){
	        	  console.log("页数"+obj.limit);
	        	  console.log("页数"+obj.curr);      
	          }
	        });
		
		});
	</script>
</html>
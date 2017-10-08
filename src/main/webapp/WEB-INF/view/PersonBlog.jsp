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
<div style="height:1000px">

         
	     <!-- 第一行 -->
			<div clsss="layui-row">
				<blockquote class="layui-elem-quote animated bounceInLeft">

					<div style="position: relative">
						<i class="fa fa-home"></i>   My Blog <a href="#" class="layui-layout-right">个人资料入口<i
							class="layui-icon" style="font-size: 14px; color: #2F4056;">&#xe612;</i>
						</a>
					</div>
				</blockquote>
			</div>
          <div id="content">
            
          
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
	          limit:4,
	          jump: function(obj){
	        	  console.log("页数"+obj.limit);
	        	  console.log("页数"+obj.curr); 
	        	  $.ajax({
	        		  url:"../blog/Blog",
	        		  type:"get",
	        		  dataType:"json",
	        		  async:true,
	        		  data:{pageNumber:obj.curr,limit:obj.limit},
	        		  success:function(res){
	        			  console.log(res);
	        			  $("#content").html("");
	        			  //循环数据
	        			  layui.each(res.data, function(index, item){
							$("#content").append(
									'<div class="layui-row">'+
									 '<div class="layui-col-md12 blog-block animated bounceInLeft">'+			    
								      '<div class="blog-list-item">'+
								           '<div class="blog-list-item-left">'+  
								             ' <img src="${pageContext.request.contextPath}/resource/'+item.blog_coverimage+'">'+
								          ' </div>'+
								           '<div class="blog-list-item-right">'+  
								                '<h3><span class="layui-badge-rim layui-bg-green">顶</span><a target="main" href="blogDetail?id='+item.blog_id+'">'+item.blog_title+'</a></h3>'+
								                ' <p>'+item.blog_futitle+'</p>'+
								          '</div>'+
								          '<div class="clear"></div>'+
								           '<div class="blog-list-item-footer">'+
								           
								              '<p>'+
								                '<span><i class="fa fa-clock-o"></i>'+item.blog_time+'</span>'+
								               ' <span class="spaninfo"><i class="fa fa-eye"></i>'+item.blog_eyes+'</span>'+
								                '<span class="spaninfo"><i class="fa fa-share"></i>0</span>'+
								                '<span class="spaninfo"><i class="fa fa-commenting"></i>100</span>'+
								              '</p>'+
								           
								           '</div> '+      
								      '</div>'+
								'</div>'+
						 	'</div>');
							});   
	        			  laypage.render({
	        		          elem: 'blog-page',
	        		          limit:4,
	        		          count:data.count
	        		      });
	        		  }
	        	  });
	          }
	        });
		
		});
	</script>
</html>
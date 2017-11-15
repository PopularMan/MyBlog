<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>YXG-Manger-Console</title>
<%@ include file="/WEB-INF/view/layui.jsp"%>
</head>


<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">Manger Console</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
      <li class="layui-nav-item"><a href="">控制台</a></li>
      <li class="layui-nav-item"><a href="">商品管理</a></li>
      <li class="layui-nav-item"><a href="">用户</a></li>
      <li class="layui-nav-item">
        <a href="javascript:;">其它系统</a>
        <dl class="layui-nav-child">
          <dd><a href="">邮件管理</a></dd>
          <dd><a href="">消息管理</a></dd>
          <dd><a href="">授权管理</a></dd>
        </dl>
      </li>
    </ul>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="javascript:;">
          <img src="../resource/images/xls.jpg" class="layui-nav-img">
           徐老师
        </a>
        <dl class="layui-nav-child">
          <dd><a href="">基本资料</a></dd>
          <dd><a href="">安全设置</a></dd>
        </dl>
      </li>
      <li class="layui-nav-item"><a href="">退了</a></li>
    </ul>
  </div>
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test" id="ulmenu">
        <li class="layui-nav-item layui-nav-itemed">
          <a class="" href="javascript:;">博客板块</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;">文章一栏</a></dd>
            <dd><a href="javascript:;">留言二栏</a></dd>
            <dd><a href="javascript:;">时光三栏</a></dd>
            <dd><a href="javascript:;">信息四栏</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">权限板块</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;">列表一</a></dd>
            <dd><a href="javascript:;">列表二</a></dd>
            <dd><a href="">超链接</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item"><a href="">技术板块</a></li>
        <li class="layui-nav-item"><a href="">网站板块</a></li>
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 5px;height:100%">
        <div class="layui-tab layui-tab-brief"  lay-filter="contentTab">
		  <ul class="layui-tab-title" id="contentTab">
		 
		  </ul>
		  <div class="layui-tab-content"></div>
		</div>      
    
    </div>
  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    © layui.com - 底部固定区域
  </div>
</div>
<script>
//JavaScript代码区域
layui.use(['element','layer'], function(){
  var element = layui.element;
  var layer=layui.layer;
  var $=layui.jquery;
  var title="";
  $("#ulmenu li dd").each(function(m,n){
	  $(n).click(function(){
		  var load=layer.msg('加载中', {
			  icon: 16
			  ,shade: 0.4
		   });
		  title=$(this).text();
		  var flag=false;
		  $("#contentTab li").each(function(k,v){
			  if($(v).attr("lay-id")==eval(m+1)){
				 
				  flag=true;
			  }
		  });
		  if(flag){
			  element.tabChange("contentTab",m+1);
			  layer.close(load);
		  }else{
			  //判断layID 是否存在
			  setTimeout(function(){
				  $.get({
					 url:"u_blog",
					 dataType:"html",
					 success:function(res){
						 element.tabAdd('contentTab', {
							   title: title
							  ,content:res //支持传入html
							  ,id: m+1
							}); 
					 }
				  });
				   
				  layer.close(load);
			  },500)
		  }

	  });
	 
  });

          
});
</script>
</body>


</html>
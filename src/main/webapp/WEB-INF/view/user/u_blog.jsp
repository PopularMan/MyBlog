<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/WEB-INF/view/layui.jsp"%>
<style>

 .layui-icon {
            margin-top: 6px !important;
 }
</style>
</head>
<body>


<blockquote class="layui-elem-quote news_search">
		<div class="layui-inline">
		    <div class="layui-input-inline">
		    	<input value="" placeholder="请输入关键字" class="layui-input search_input" type="text">
		    </div>
		    <a class="layui-btn search_btn">查询</a>
		</div>
		<div class="layui-inline">
			<a class="layui-btn linksAdd_btn" style="background-color:#5FB878">添加链接</a>
		</div>
		<div class="layui-inline">
			<a class="layui-btn layui-btn-danger batchDel">批量删除</a>
		</div>
		<div class="layui-inline">
			<div class="layui-form-mid layui-word-aux">本页面刷新后除新添加的链接外所有操作无效，关闭页面所有数据重置</div>
		</div>
	</blockquote>
<table id="blogTable"></table>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/resource/plug/layui/layui.all.js"></script>
<script type="text/html" id="checkboxTpl">
   <input type="checkbox" name="yyy" lay-skin="switch" lay-text="置|顶" {{ d.blog_state == 1 ? 'checked' : '' }}>
</script>
<script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
  <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<script>
layui.use(['layer','table'], function(){
  var table = layui.table;
  var layer=layui.layer;
  var $=layui.jquery;
  table.render({
    elem: '#blogTable'
    ,url:'../blog/Blog'
    ,request: {
    		   pageName: 'pageNumber', //页码的参数名称，默认：page
    		   limitName: 'limit' //每页数据量的参数名，默认：limit
    } 
    ,limits:[5,10,15]
    ,cols: [[
       
      {type: 'checkbox'}
      ,{field:'blog_title', title:'标题',  unresize: true, sort: true}
      //,{field:'blog_futitle', title:'副标题', templet: '#usernameTpl'}
      ,{field:'btype_name', title:'类型',align:"center", templet: '#usernameTpl'}    
      ,{field:'blog_author', title: '作者',align:"center", sort: true}
      ,{field:'blog_dz', title:'点赞数',align:"center", templet: '#'}
      ,{field:'blog_eyes', title:'阅读量',align:"center",}
      ,{field:'blog_state', title:'置顶',width:80,align:"center", templet: '#checkboxTpl'}
      ,{field:'blog_time', title:'发表时间', align:"center",templet: '#'}
      ,{title:'操作', align:'center',width:200,toolbar: '#barDemo',fixed: 'right'}
    ]]
    ,page: true
  });
});

</script>

</html>
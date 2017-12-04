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
	        margin-right: 2px!important;
 }
</style>
</head>
<body>


<blockquote class="layui-elem-quote news_search">
	<form class="layui-form">
		<div class="layui-inline">
			<label class="layui-form-label">分类查询</label>
			<div class="layui-input-block">
				<select name="interest" lay-filter="aihao">
					<option value="0">写作</option>
					<option value="1">阅读</option>
				</select>
			</div>
		</div>
		<div class="layui-inline">
		    <div class="layui-input-inline">
		    	<input value="" placeholder="请输入关键字" class="layui-input search_input" type="text">
		    </div>
		    <a class="layui-btn search_btn"><i class="layui-icon">&#xe615;</i>查询</a>
		</div>
		<div class="layui-inline">
			<a class="layui-btn addblog" style="background-color:#5FB878"> <i class="layui-icon">&#xe608;</i>添加文章</a>
		</div>
		<div class="layui-inline">
			<a class="layui-btn layui-btn-danger batchDel"><i class="layui-icon">&#xe640;</i>批量删除</a>
		</div>
		<div class="layui-inline">
			<a class="layui-btn layui-btn-normal"><i class="layui-icon">&#xe638;</i>查看评论</a>
		</div>

	</blockquote>
</form>
<table id="blogTable"></table>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/resource/plug/layui/layui.all.js"></script>
<script type="text/html" id="checkboxTpl">
   <input type="checkbox" name="yyy" lay-skin="switch" lay-text="置|顶" {{ d.blog_state == 1 ? "checked" : "" }}>
</script>
<script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail"><i class="layui-icon">&#xe615;</i></a>
  <a class="layui-btn layui-btn-xs" lay-event="edit"><i class="layui-icon">&#xe642;</i></a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del"><i class="layui-icon">&#xe640;</i></a>
</script>
<script>
layui.use(['layer','table','form'], function(){
  var table = layui.table;
  var layer=layui.layer;
  var form =layui.form;
  var $=layui.jquery;
  //绑定事件
	 $(".addblog").on("click",function(){

             var index = layui.layer.open({
                 title : "添加文章",
                 type : 2,
                 content : "add_blog",
                 success : function(layero, index){
                     setTimeout(function(){
                         layui.layer.tips('这里是关闭窗口', '.layui-layer-setwin .layui-layer-close', {
                             tips: 3
                         });
                     },500)
                 }
             });
             layui.layer.full(index);
	 })	;

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
      //,{field:'blog_dz', title:'点赞数',align:"center", templet: '#'}
      ,{field:'blog_eyes', title:'阅读量',align:"center",}
      ,{field:'blog_state', title:'置顶',width:80,align:"center", templet: '#checkboxTpl'}
      ,{field:'blog_time', title:'发表时间', align:"center",templet: '#'}
      ,{title:'操作', align:'center',width:200,toolbar: '#barDemo',}
    ]]
    ,page: true
  });
});

</script>

</html>
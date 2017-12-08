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
	.layui-table{
		color:black!important;
		font:14px Helvetica Neue,Helvetica,PingFang SC,微软雅黑,Tahoma,Arial,sans-serif;
	}
</style>
</head>
<body>


<blockquote class="layui-elem-quote news_search">
	<form class="layui-form">
		<div class="layui-inline">
			<label class="layui-form-label">学期查询</label>
			<div class="layui-input-block">
				<select name="interest" id="type" lay-filter="aihao">
					<option value="4">不选择</option>
					<option value="0">S1学员信息表</option>
					<option value="1">S2学员信息表</option>
					<option value="2">Y2学员信息表</option>
					<option value="3">已毕业学员信息表</option>
				</select>
			</div>
		</div>
		<div class="layui-inline">
		    <div class="layui-input-inline">
		    	<input value="" placeholder="请输入关键字" id="name" class="layui-input search_input" type="text">
		    </div>
		    <a class="layui-btn search_btn" id="search_btn"><i class="layui-icon">&#xe615;</i>条件查询</a>
		</div>

	</form>
	</blockquote>

   <table id="stuTable" class="layui-table"></table>
</body>

<script>
layui.use(['layer','table','form'], function(){
  var table = layui.table;
  var layer=layui.layer;
  var form =layui.form;
  var $=layui.jquery;


  table.render({
    elem: '#stuTable'
    ,url:'../getStuList'
      ,request: {
    		   page: 'pageNumber', //页码的参数名称，默认：page
    		   limit: 'limit' //每页数据量的参数名，默认：limit
    } 
    ,limits:[5,10,15]
    ,cols: [[
      {field:'stu_id', title:'序号', unresize: true, sort: true}
      ,{field:'stu_no', title:'学号', unresize: true, sort: true}
      ,{field:'stu_name', title:'姓名', unresize: true, sort: true}
          ,{field:'stu_sex', title:'性别', unresize: true, sort: true}
          ,{field:'stu_class', title:'班级', unresize: true, sort: true}
          ,{field:'stu_teacher', title:'老师', unresize: true, sort: true}
          ,{field:'stu_year', title:'出生年份', unresize: true, sort: true}
          ,{field:'stu_eduction', title:'学历', unresize: true, sort: true}
          //,{field:'stu_idnumber', title:'身份证号', unresize: true, sort: true}
          ,{field:'stu_graschool', title:'毕业学校', unresize: true, sort: true}
          //,{field:'stu_major', title:'专业', unresize: true, sort: true}
          ,{field:'stu_telphone', title:'电话号码', unresize: true, sort: true}
          ,{field:'stu_qqnumber', title:'QQ号码', unresize: true, sort: true}
          ,{field:'stu_addresscitydetail', title:'家庭地址', unresize: true, sort: true}



    ]]
    ,page: true
  });
  $("#search_btn").on("click",function(){
      var type=$("#type option:selected").text();
      var name=$("#name").val();
      if(type=="不选择"){
          type="";
	  }
      table.reload('stuTable', {
          url: '../getStuList'
          ,where: {
             type:type,
			 name:name
		  },
          page: {
              curr: 1 //重新从第 1 页开始
          }
      });
  });
});

</script>

</html>
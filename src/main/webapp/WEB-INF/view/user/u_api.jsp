<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2017/12/5
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <%@ include file="/WEB-INF/view/layui.jsp"%>
    <title>API</title>
</head>



<body>
<blockquote class="layui-elem-quote">
    本页面演示数据接口返回数据为JSON格式！

</blockquote>



<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
    <legend>列边框表格</legend>
</fieldset>
<div class="layui-row layui-col-space10">
    <div class="layui-col-md6 layui-col-xs6">
        <table class="layui-table" lay-even="" lay-skin="row">
            <colgroup>
                <col width="150">
                <col width="150">
                <col width="200">
                <col>
            </colgroup>
            <thead>
            <tr>
                <th>接口编号</th>
                <th>接口名称</th>
                <th>接口地址</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>A001</td>
                <td>博客列表</td>
                <td><span style="cursor:pointer;color:blue">/getBlogList</span></td>
                <td><button class="layui-btn layui-btn-sm layui-btn-normal btn-test"><i class="layui-icon">&#x1002;</i>点击测试</button></td>
            </tr>
            <tr>
                <td>A001</td>
                <td>博客列表</td>
                <td>/getBlogList</td>
                <td><button class="layui-btn layui-btn-sm layui-btn-normal btn-test"><i class="layui-icon">&#x1002;</i>点击测试</button></td>
            </tr>
            <tr>
                <td>A001</td>
                <td>博客列表</td>
                <td>/getBlogList</td>
                <td><button class="layui-btn layui-btn-sm layui-btn-normal btn-test"><i class="layui-icon">&#x1002;</i>点击测试</button></td>
            </tr>
            <tr>
                <td>A001</td>
                <td>博客列表</td>
                <td>/getBlogList</td>
                <td><button class="layui-btn layui-btn-sm layui-btn-normal btntest"><i class="layui-icon">&#x1002;</i>点击测试</button></td>
            </tr>

            </tbody>
        </table>
    </div>
    <div class="layui-col-md6 layui-col-xs6">
        <pre class="layui-code" style="height:100%">//在里面存放任意的代码
                Lay.fn.event = function(modName, events, params){
                  var that = this, result = null, filter = events.match(/\(.*\)$/)||[];
                  var set = (events = modName + '.'+ events).replace(filter, '');
                };
        </pre>
    </div>

</div>


</body>
<script>
    layui.user(['code','layer'],function(){
       var code=layui.code;
       var layer=layui.layer;

       var $=layer.jquery;
       $('.layui-table .btntest').on("click",function(){
              $.ajax({
                  url:"http://www.layui.com/demo/table/user/?page=1&limit=30",
                  dataType:"json",
                  type:"GET",
                  success:function(res){
                      layer.alert("接口数据"+res);
                  },
                  error:function(){
                      layer.alert("接口异常",{title:"提示信息",icon:5});
                  }
              })
       });

    });

</script>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <%@ include file="/WEB-INF/view/common/layui.jsp"%>

    <style>

        .layui-table {
            width: 100%;
            background-color: #fff;
            color: black;
            font-size: 12px;
        }

    </style>
</head>
<body>


<blockquote class="layui-elem-quote news_search">
    <form class="layui-form">
        <div class="layui-inline">
            <label class="layui-form-label">分类查询</label>
            <div class="layui-input-block">
                <select name="interest" lay-filter="type" id="type1">
                </select>
            </div>
        </div>
        <div class="layui-inline">
            <div class="layui-input-inline">
                <input value="" placeholder="请输入关键字" id="condition" class="layui-input search_input" type="text">
            </div>
            <a class="layui-btn search_btn"><i class="layui-icon">&#xe615;</i>查询</a>
        </div>

        <div class="layui-inline">
            <a class="layui-btn layui-btn-danger btnDel" id="btnAdd"><i class="layui-icon">&#xe654;</i>新增时光轴</a>
        </div>
        <div class="layui-inline">
            <a class="layui-btn layui-btn-normal"  href="../timeline" target="_blank"><i class="fa fa-eye fa-fw"></i>界面预览</a>
        </div>

    </form>
</blockquote>

<table class="layui-table" id="timeTable" lay-data="{height: 'full-200', cellMinWidth: 80, page: true, limit:10, url:'TimeLine'}">
    <thead>
    <tr>
        <th lay-data="{field:'line_id', width:'20%',align:'center', sort: true}">编号</th>
        <th lay-data="{field:'line_content',width:'30%',sort: true }">内容</th>
        <th lay-data="{field:'line_time' ,width:'20%',align:'center'}">时间</th>
        <th lay-data="{field:'line_year', width:'15%',sort: true, align: 'center'}">年份</th>
        <th lay-data="{field:'line_month',width:'15%', sort: true, align: 'center'}">月份</th>
    </tr>
    </thead>
</table>
</body>
<script>
    layui.use(['table','jquery','layer','layedit'], function(){
        var table = layui.table,$=layui.jquery,layer=layui.layer;
        var layedit = layui.layedit,ue="";

        $("#btnAdd").on("click",function(){
             layer.open({
                 type:1,
                 title:"新增",
                 area:['500px','300px'],
                 btnAlign: 'c',
                 moveType: 1, //拖拽模式，0或者1
                 skin:"layui-layer-molv",
                 btn: ['确定', '取消'],
                 yes:function(index, layero){
                     var content=layedit.getContent(ue);
                     if(content.length==0){
                         layer.msg("至少得有一个字吧");
                         return;
                     }
                     var load=layer.msg("正在添加...", {
                         icon: 16
                         ,shade: 0.4
                     });
                     setTimeout(function(){
                         $.ajax({
                             url:"saveTimeLine",
                             type:"post",
                             data:{"content":content},
                             success:function(res){
                                 layer.close(load);
                                 parent.layer.closeAll();
                                 if(res){
                                     layer.msg("添加成功");
                                     table.reload("timeTable")
                                 }else{
                                    layer.msg("操作失败")
                                 }
                             },
                             error:function( XMLHttpRequest, textStatus, errorThrown) {
                                commonAjax.error(XMLHttpRequest,layer);
                             },
                         })
                     },500);


                 },
                 content:"<textarea id=\"demo\" style=\"display: ;\"></textarea>",
                 success: function(layero) {
                     ue=layedit.build('demo',{
                         height:150,
                         tool: [
                              'strong' //加粗
                             ,'italic' //斜体
                             ,'underline' //下划线
                             ,'del'
                             ,'left'
                             ,'center'
                             ,'right'
                             ,'|'
                             ,'face',
                         ]//删除线]
                     }); //建立编辑器
                 }
             });
        });


    });
</script>


</html>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/1/12 0012
  Time: 下午 8:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <%@ include file="/WEB-INF/view/common/layui.jsp"%>
    <title></title>
</head>
<body>

    <blockquote class="layui-elem-quote">
        下面为角色管理
    </blockquote>
    <div class="layui-btn-group demoTable">
        <button class="layui-btn layui-btn-sm addRole" ><i class="layui-icon">&#xe654;</i>新增角色</button>
    </div>
    <div class="layui-row">
        <div class="layui-col-md12 layui-col-xs12">
            <table id="roleTable"  class="layui-table" lay-filter="roleTable"></table>
        </div>

    </div>

</body>

<script>
    layui.use(['layer','table','form'],function(){
        var table=layui.table ,$=layui.jquery,layer=layui.layer,form=layui.form;

        //第二个实例
        table.render({
            elem: '#roleTable'
            ,height: 400
            ,url: 'getRoles' //数据接口
            ,cols: [[ //表头
                {field: 'role_id', title: '序号',align:'center',width:"10%" }
                ,{field: 'role_code', title:'角色编号',align:'center',}
                ,{field: 'role_name', title: '角色名称',align:'center'}
                ,{field: 'role_description', title: '角色描述',align:'center'}
                ,{field: 'role_createtime', title: '创建时间',align:'center'}
                ,{field: 'aaa', title: '操作', align:'center',templet: '#operaRole',minwidth:"200"}
            ]],
            page:false,
        });
        //监听工具条
        table.on('tool(roleTable)', function(obj){ //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
            var  data= obj.data; //获得当前行数据
            var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
            var tr = obj.tr; //获得当前行 tr 的DOM对象
            if(layEvent === 'searchPers'){ //查询权限
                layer.open({
                    id: 'user-add',
                    type: 2,
                    area: ['650px', '600px'],
                    fix: false,
                    skin:"layui-layer-molv",
                    maxmin: true,
                    shadeClose: true,
                    shade: 0.4,
                    title: "权限预览",
                    content: 'role?id='+data.role_id
                });
          }
        });

        $(".addRole").click(function(){
            layer.open({
                type: 1
                ,title: "添加新角色"
                ,closeBtn: true
                ,area:['400px','320px']
                ,shade: 0.6
                ,skin: 'layui-layer-molv'
                ,id: 'LAY_laypro' //设定一个id，防止重复
                ,moveType: 1 //拖拽模式，0或者1
                ,content: $("#addRoleDiv").html()
                ,success: function(layero){
                }
            });
        });
        form.on('submit(role)',function(data){
/*            layer.alert(JSON.stringify(data.field), {
                title: '最终的提交信息'
            });*/
            var load=layer.msg("正在添加角色。。。", {
                icon: 16
                ,shade: 0.4
            });
            setTimeout(function(){

                $.ajax({
                    url:"insertRole",
                    type:"post",
                    data:data.field,
                    success:function(res){
                        layer.close(load);
                        if(res>0){

                            layer.msg("添加成功");
                            table.reload("roleTable");
                        }else{
                            layer.msg("添加失败")
                        }
                    },
                    error:function( XMLHttpRequest, textStatus, errorThrown) {
                        if(XMLHttpRequest.status=413){
                            layer.msg('您未拥有相关权限,如有需要请联系管理员!');

                        }else{
                            layer.alert("系统异常",{icon: 5});
                        }
                    },
                })
            },500);

            return false;
        });

    });
</script>
<script type="text/html" id="operaRole">
    <button href="" class="layui-btn layui-btn-xs" lay-event="searchPers"><i class="fa fa-search"></i>&nbsp;查询/分配权限</button>

</script>

<script type="text/html" id="addRoleDiv" >
    <form class="layui-form" action="" lay-filter="roleFrom" style="margin: 20px" >
        <div class="layui-form-item">
            <label class="layui-form-label">角色编号:</label>
            <div class="layui-input-inline">
                <input type="text" name="role_code" required lay-verify="required" lay-verType="tips" placeholder="请输入编号" autocomplete="off" class="layui-input">
            </div>

        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">角色名称:</label>
            <div class="layui-input-inline">
                <input type="text" name="role_name" required lay-verify="required" lay-verType="tips" placeholder="请输入名称" autocomplete="off" class="layui-input">
            </div>

        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">角色描述:</label>
            <div class="layui-input-inline">
                <textarea name="role_description"  cols="30" rows="10" style="height:80px;" class="layui-input"></textarea>
            </div>

        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn layui-btn-sm" lay-submit  lay-filter="role">确定</button>
                <button type="reset" class="layui-btn layui-btn-sm layui-btn-primary">重置</button>
            </div>
        </div>

    </form>
</script>
</html>

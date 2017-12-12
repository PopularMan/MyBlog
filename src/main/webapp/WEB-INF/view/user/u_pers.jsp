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
    <style>
        .layui-icon {
            margin-top: 6px !important;
            margin-right: 2px!important;
        }
    </style>
</head>



<body>

    <div class="layui-tab layui-tab-brief" lay-filter="tab">
        <ul class="layui-tab-title">
            <li class="layui-this" lay-id="111"><i class="fa fa-user fa-fw"></i>&nbsp;用户管理</li>
            <li lay-id="222"><i class="fa fa-user fa-fw"></i>&nbsp;角色管理</li>
            <li lay-id="333"><i class="fa fa-user fa-fw"></i>&nbsp;权限/菜单管理</li>
        </ul>
        <div class="layui-tab-content" style="height: 100px;">
            <div class="layui-tab-item layui-show">
                <blockquote class="layui-elem-quote">
                    下面为角色管理
                </blockquote>

                <div class="layui-btn-group demoTable">
                    <button class="layui-btn" data-type="getCheckData">新增用户</button>
                    <button class="layui-btn" data-type="getCheckLength"><i class="fa fa-minus fa-fw"></i>删除用户</button>
                    <button class="layui-btn" data-type="isAll">修改用户</button>
                </div>
                <div class="layui-row">
                    <div class="layui-col-md12 layui-col-xs12">
                        <table id="adminTable" class="layui-table"></table>
                    </div>
                </div>
            </div>
            <div class="layui-tab-item">
                <blockquote class="layui-elem-quote">
                    下面为角色管理
                </blockquote>
                <div class="layui-btn-group demoTable">
                    <button class="layui-btn" data-type="getCheckData">新增角色</button>
                </div>
                <div class="layui-row">
                    <div class="layui-col-md12 layui-col-xs12">
                        <table id="roleTable"  class="layui-table"></table>
                    </div>
                </div>

            </div>
            <div class="layui-tab-item">


                    <blockquote class="layui-elem-quote">
                        下面为权限管理
                    </blockquote>
                    <div class="layui-btn-group demoTable">
                        <button class="layui-btn" data-type="getCheckData">新增用户</button>
                        <button class="layui-btn" data-type="getCheckLength"><i class="fa fa-minus fa-fw"></i>删除用户</button>
                        <button class="layui-btn" data-type="isAll">修改用户</button>
                    </div>
                    <div class="layui-row">
                        <div class="layui-col-md12 layui-col-xs12">
                            <table id="persTable"  class="layui-table"></table>
                        </div>
                    </div>




            </div>

        </div>
    </div>








</body>
<!--管理员的模板按钮-->
<script type="text/html" id="operaAdmin">
    <button href="" class="layui-btn layui-btn-xs"><i class="fa fa-cog"></i>&nbsp;角色分配</button>
</script>
<script type="text/html" id="imageAdmin">
    <a href="#"><img src="../resource/{{d.avatar}}" style="width:30px;height:30px;border-radius:30px"></a>
</script>
<script type="text/html" id="operaRole">
    <button href="" class="layui-btn layui-btn-xs"><i class="fa fa-cog"></i>&nbsp;权限分配</button>
</script>
<script type="text/html" id="locked">
   <input type="checkbox" name="sex" value="{{d.id}}" lay-skin="switch" lay-text="是|否" lay-filter="locked" {{ d.locked == 1 ? 'checked' : '' }}>

</script>
<script type="text/html" id="perType">
   {{# if (d.type=="menu"){ }}
   <div style="margin:auto;padding:7px;"><span class="layui-badge layui-bg-orange">菜单</span></div>
   {{# }else{ }}
   <div style="margin:auto;padding:7px;"> <span class="layui-badge layui-bg-green">按钮</span></div>
   {{# } }}
</script>
<script type="text/html" id="avalTmp">
    <input type="checkbox" name="sex" value="{{d.available}}" lay-skin="switch" lay-text="是|否" lay-filter="*" {{ d.available== 1 ? 'checked' : '' }}>
</script>

<script>
    layui.use(['code','layer','table','form','element'],function(){
       var code=layui.code;
       var layer=layui.layer;
       var $=layer.jquery;
       var table=layui.table;
       var form=layui.form;
       var element=layui.element;

        //第一个实例
        table.render({
            elem: '#adminTable'
            ,height: 300
            ,url: 'getAdmins' //数据接口
            ,cols: [[ //表头
                {field: 'id', title: '序号',  }
                ,{field: 'usercode', title: '用户编号'}
                ,{field: 'name', title: '用户名', }
                ,{field: 'avatar', title: '头像', templet:"#imageAdmin"}
                ,{field: 'registertime', title: '创建时间', }
                ,{field: 'locked', title: '是否锁定', sort: true,templet:"#locked"}
                ,{field: 'aaa', title: '操作', templet: '#operaAdmin',}
            ]],
            page:false,
        });
        //第二个实例
        table.render({
            elem: '#roleTable'
            ,height: 400
            ,url: 'getRoles' //数据接口
            ,cols: [[ //表头
                {field: 'role_id', title: '序号',width:'100' }
                ,{field: 'role_code', title:'角色编号',width:'150'}
                ,{field: 'role_name', title: '角色名称',width:'150'}
                ,{field: 'role_description', title: '角色描述',minWidth: 200}
                ,{field: 'role_createtime', title: '创建时间',width:'150'}
                ,{field: 'aaa', title: '操作', width:'150', templet: '#operaRole',}
            ]],
            page:false,
        });
        //第二个实例
        table.render({
            elem: '#persTable'
            ,height: 400
            ,url: 'getPers' //数据接口
            ,cols: [[ //表头
                {type: 'checkbox',width:"100",}
                ,{field: 'id', title: 'ID',width:'100' }
                ,{field: 'name', title:'权限名称',width:'100'}
                ,{field: 'type', title:'权限类型',width:'100',templet:'#perType'}
                ,{field: 'url', title: '权限URL',width:'150'}
                ,{field: 'percode', title: '权限代码',width:'150'}
                ,{field: 'sortstring', title: '排序',width:'100'}
                ,{field: 'available', title: '可用',width:'100', templet: '#avalTmp',}
            ]],
            page:false,
        });

    });


</script>
</html>

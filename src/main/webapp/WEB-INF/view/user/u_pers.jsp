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
                    下面为用户管理
                </blockquote>

                <div class="layui-btn-group userBtns">
                    <button class="layui-btn layui-btn-sm addUser" ><i class="fa fa-plus-square-o fa-fw"></i>新增用户</button>
                    <button class="layui-btn layui-btn-sm delUser" ><i class="fa fa-close fa-fw"></i>删除用户</button>
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
                            <table id="persTable"  class="layui-table"  lay-filter="perTablefilter"></table>
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
<script type="text/html" id="realTmp">
    <span class="layui-badge-rim">{{d.parentids}}</span>
</script>
<script type="text/html" id="perTool">
    <a class="layui-btn layui-btn-xs" lay-event="edit"><i class="layui-icon">&#xe642;</i></a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del"><i class="layui-icon">&#xe640;</i></a>
</script>
<script type="text/html" id="perIcon">
  <a href="javascript:;" style="margin:auto;padding: 2px;"><i class="{{d.icon}}"></i></a>
</script>

<script>
    layui.use(['code','layer','table','form','element'],function(){
       var code=layui.code;
       var layer=layui.layer;
       var $=layui.jquery;
       var table=layui.table;
       var form=layui.form;
       var element=layui.element;

        //第一个实例
        table.render({
            elem: '#adminTable'
            ,height: 300
            ,url: 'getAdmins' //数据接口
            ,cols: [[ //表头
               // {field: 'id', title: '序号', align:'center' }
                {type: 'checkbox',minWidth:"50",align:'center'}
                ,{field: 'usercode', title: '管理员编号',align:'center'}
                ,{field: 'name', title: '管理员名称',align:'center' }
                ,{field: 'avatar', title: '管理员头像',align:'center', templet:"#imageAdmin"}
                ,{field: 'registertime',align:'center', title: '创建时间', }
                ,{field: 'locked', title: '是否锁定',align:'center', sort: true,templet:"#locked"}
                ,{field: 'aaa', title: '操作',align:'center', templet: '#operaAdmin',}
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
            ,height: 350
            ,url: 'getPers' //数据接口
            ,cols: [[ //表头
                {type: 'checkbox',minWidth:"50",align:'center'}
                ,{field: 'id', title: 'ID',minWidth:'100',align:'center' }
                ,{field: 'name', title:'权限名称',minWidth:'100',align:'center',sort:true,templet:'#perTitle'}
                ,{field: 'type', title:'权限类型',minWidth:'100',align:'center',sort:true,templet:'#perType'}
                ,{field: 'url', title: '资源路径',minWidth:'150',align:'center',sort:true}
                ,{field: 'percode', title: '权限代码',minWidth:'150',align:'center',sort:true}
                ,{field: 'sortstring', title: '排序',minWidth:'50',align:'center',}
                ,{field: 'parentids', title: '关系代码',minWidth:'100',align:'center',templet: '#realTmp',}
                ,{field: 'icon', title: '图标',minWidth:'50',event: 'iconEvent',style:'cursor: pointer;', templet: '#perIcon',align:'center'}
                ,{field: 'available', title: '可用',minWidth:'80', align:'center',templet: '#avalTmp',}
                ,{field: 'aaa', title: '操作',minWidth:'150', templet: '#perTool',align:'center'}
            ]],
            page:false,
        });
        //监听单元格事件
        table.on('tool(perTablefilter)', function(obj) {
            var data = obj.data;
            if (obj.event === 'iconEvent') {
                layer.prompt({
                    formType: 2
                    , title: '修改 ID 为 [' + data.id + '] 的用户签名'
                    , value: '<i class="fa fa-cog"></i>'
                }, function (value, index) {
                    layer.close(index);

                    //这里一般是发送修改的Ajax请求

                    //同步更新表格和缓存对应的值
                    obj.update({
                        icon: value
                    });
                });
            }
        });
        $(function(){
            form.render();
            //按钮绑定事件
            $(".userBtns>.addUser").on("click",function(){
                layer.open({
                    type: 1
                    ,title: "添加管理员"
                    ,closeBtn: false
                    ,area:['500px','400px']
                    ,shade: 0.6
                    ,skin: 'layui-layer-molv'
                    ,id: 'LAY_layuipro' //设定一个id，防止重复弹出
                    ,btn: ['火速围观', '残忍拒绝']
                    ,btnAlign: 'c'
                    ,moveType: 1 //拖拽模式，0或者1
                    ,content: $("#addUserHtml")
                    ,success: function(layero){
                        form.render();
                        var btn = layero.find('.layui-layer-btn');
                        btn.find('.layui-layer-btn0').attr({
                            href: 'http://www.layui.com/'
                            ,target: '_blank'
                        });
                    }
                });
            });
        });
    });


</script>
<div id="addUserHtml" style="padding-left:10%;display:none;padding-top: 10px;">
    <form class="layui-form" action="" lay-filter="from1" >
        <div class="layui-form-item">
            <label class="layui-form-label">用户编号:</label>
            <div class="layui-input-inline">
                <input type="password" name="password" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
            </div>

        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">用户名</label>
            <div class="layui-input-inline">
                <input type="password" name="password" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
            </div>

        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">用户密码</label>
            <div class="layui-input-inline">
                <input type="password" name="password" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
            </div>

        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">重复密码</label>
            <div class="layui-input-inline">
                <input type="password" name="password" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
            </div>

        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">默认头像</label>
            <div class="layui-input-block">
                <button type="button" class="layui-btn layui-btn-primary" id="uploadImg"><i class="layui-icon"></i>上传图片</button>
                <input type="checkbox" name="aaa" title="默认头像" lay-skin="primary" >
            </div>
        </div>

    </form>
</div>

</html>

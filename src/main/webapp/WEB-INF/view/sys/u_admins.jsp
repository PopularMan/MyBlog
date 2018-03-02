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
    <%@ include file="/WEB-INF/view/common/layui.jsp"%>
    <title>API</title>
    <style>
        .layui-icon {
            margin-top: 6px !important;
            margin-right: 2px!important;
        }
    </style>
</head>
<body>



            <div class="layui-tab-item layui-show">
                <blockquote class="layui-elem-quote">
                    下面为用户管理
                </blockquote>

                <div class="layui-btn-group userBtns">
                    <button class="layui-btn layui-btn-sm addUser" ><i class="layui-icon">&#xe654;</i>新增用户</button>
                </div>
                <div class="layui-row">
                    <div class="layui-col-md12 layui-col-xs12">
                        <table id="adminTable" class="layui-table" lay-filter="adminTable"></table>
                    </div>
                </div>
            </div>


</body>
<!--管理员的模板按钮-->
<script type="text/html" id="operaAdmin">
    <button href="" class="layui-btn layui-btn-xs" lay-event="operRoles"><i class="fa fa-cog"></i>&nbsp;角色分配</button>
</script>
<script type="text/html" id="imageAdmin">
    <a href="#"><img src="../resource/{{d.avatar}}" style="width:30px;height:30px;border-radius:30px"></a>
</script>

<script type="text/html" id="locked">
   <input type="checkbox" name="sex" value="{{d.id}}"  lay-skin="switch" lay-text="是|否" lay-filter="locked" {{ d.locked == 1 ? 'checked' : '' }}>

</script>




<script>
    function tipSalt(obj){
        layer.tips('自定义盐会根据你输入的盐值生成加密密码', obj,{
            tips: [2, '#009688']
        });
    }
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

        //监听工具条
        table.on('tool(adminTable)', function(obj){ //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
            var data = obj.data; //获得当前行数据
            var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
            var tr = obj.tr; //获得当前行 tr 的DOM对象

            if(layEvent === 'operRoles'){ //分配角色
                var adminid=data.id;
                var lock=data.locked;
                if(lock==1){
                    layer.msg("该账户被锁,请联系管理员");
                    return;
                }
                layer.open({
                    type:1,
                    anim:0,
                    title:"给<span style='font-family: bold'>"+data.name+"</span>分配角色",
                    content:$("#roleDiv").html(),
                    closebtn:true,
                    area:['600px','400px'],
                    skin:'layui-layer-lan',
                    shade: 0.6,
                    btn: ['确认分配', '关闭窗口'],
                    btnAlign: 'c',
                    yes:function(layeo){
                        var checkStatus = table.checkStatus('roleTable')
                            ,data = checkStatus.data,roleids="";
                            if(data.length>0){
                                $.each(data,function(k,v){
                                    roleids+=v.role_id+",";
                                });
                                roleids=roleids.substring(0,roleids.lastIndexOf(","));
                                var now=layer.msg('加载中', {
                                    icon: 16
                                    ,shade: 0.5
                                });
                                setTimeout(function(){
                                    $.ajax({
                                        url:'operAdminRole',
                                        data:{"adminid":adminid,"roleids":roleids},
                                        dataType:"json",
                                        type:"post",
                                        success:function(res){
                                            layer.close(now);
                                            if(res){
                                                layer.alert("角色分配成功");
                                            }else{
                                                layer.alert("角色分配失败");
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
                                },1000);

                            }else{
                                layer.alert("请选中一条数据",{icon:1});
                            }
                    },
                    success:function(lay){
                        table.render({
                            elem: '#roleTable'
                            ,url: 'getRoles?adminid='+adminid //数据接口
                            ,cols: [[ //表头
                                {type: 'checkbox',width:"10%",}

                                ,{field: 'role_code', title:'角色编号',}
                                ,{field: 'role_name', title: '角色名称',}
                                ,{field: 'role_description', title: '角色描述',}
                            ]],
                            page:false,
                        });
                    }

                })
            }
        });

        form.on('switch(locked)', function(obj){
            var userid=this.value,state=0;
            if(!obj.elem.checked){
                state=0;
            }else{
                state=1;
            }
            var mode= layer.msg('修改中', {
                icon: 16
                ,shade: 0.4
            });
            setTimeout(function(){
                $.ajax({
                    url:"updateAdminState",
                    type:"POST",
                    dataType:"json",
                    data:{"userid":userid,"state":state},
                    success:function(res){
                        if(res){
                            layer.alert("修改成功",{icon:6});
                            table.reload("adminTable")
                        }else{
                            layer.alert("修改失败",{icon:5});
                            table.reload("adminTable");
                        }

                    },
                    error:function( XMLHttpRequest, textStatus, errorThrown) {

                        if(XMLHttpRequest.status==413){
                            layer.msg('您未拥有相关权限,如有需要请联系管理员!');
                            table.reload("adminTable")
                        }else{
                            layer.alert("系统异常",{icon: 5});
                        }
                    },
                    complete:function(){
                        layer.close('loading');
                    }
                })
            },500);

        });


        $(function(){
            form.render();
            //按钮绑定事件
            $(".userBtns>.addUser").on("click",function(){
                layer.open({
                    type: 1
                    ,title: "添加管理员"
                    ,closeBtn: true
                    ,area:['400px','400px']
                    ,shade: 0.6
                    ,skin: 'layui-layer-molv'
                    ,id: 'LAY_layuipro' //设定一个id，防止重复
                    ,moveType: 1 //拖拽模式，0或者1
                    ,content: $("#addUserHtml")
                    ,success: function(layero){
                    }
                });
            });

            //监听提交
            form.on('submit(saveadmin)', function(data){
                layer.alert(JSON.stringify(data.field), {
                    title: '最终的提交信息'
                });
                var load=layer.msg("正在添加用户。。。", {
                    icon: 16
                    ,shade: 0.4
                });
                setTimeout(function(){
                    layer.close(load);
                    $.ajax({
                        url:"insertAdmin",
                        type:"post",
                        data:data.field,
                        success:function(res){
                            if(res.success){

                                layer.msg("添加成功");
                                table.reload("persTable");
                            }else{
                                layer.msg("添加失败")
                            }
                        },
                        error:function(XMLHttpRequest, textStatus, errorThrown){
                            commonAjax.error(XMLHttpRequest,layer);

                        }
                    })
                },500);

                return false;
            });
        });
    });


</script>
<script type="text/html" id="roleDiv">
    <table id="roleTable"></table>
</script>
<div id="addUserHtml" style="padding-left:10%;display:none;padding-top: 10px;">
    <form class="layui-form" action="" lay-filter="from1" >
        <div class="layui-form-item">
            <label class="layui-form-label">用户编号:</label>
            <div class="layui-input-inline">
                <input type="text" name="usercode" required lay-verify="required" lay-verType="tips" placeholder="请输入编号" autocomplete="off" class="layui-input">
            </div>

        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">用户名:</label>
            <div class="layui-input-inline">
                <input type="text" name="name" required lay-verify="required" lay-verType="tips" placeholder="请输入用户名" autocomplete="off" class="layui-input">
            </div>

        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">用户密码:</label>
            <div class="layui-input-inline">
                <input type="password" name="pass" required lay-verify="required" lay-verType="tips" placeholder="请输入密码" autocomplete="off" class="layui-input">
            </div>

        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">重复密码:</label>
            <div class="layui-input-inline">
                <input type="password" id="repeatpass" required lay-verify="required" lay-verType="tips" placeholder="请再次输入密码" autocomplete="off" class="layui-input">
            </div>

        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">自定义盐</label>
            <div class="layui-input-inline">
                <input type="text" name="salt" required lay-verify="required" placeholder="" lay-verType="tips"  onfocus="tipSalt(this)"  class="layui-input">
            </div>

        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn layui-btn-sm" lay-submit  lay-filter="saveadmin">确定</button>
                <button type="reset" class="layui-btn layui-btn-sm layui-btn-primary">重置</button>
            </div>
        </div>

    </form>
</div>

</html>

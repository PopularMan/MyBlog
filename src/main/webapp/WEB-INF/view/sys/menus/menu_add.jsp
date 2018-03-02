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
    <style>
        .layui-form-item .layui-input-inline {
            width: 290px
        }
        .layui-form{
            padding: 10px 15%;
        }
        .layui-input-block{width:300px;}
        .icon{
                width: 100%;
                height: 100px;
               border:1px solid #D2D2D2;
        }
        .icon span{
            display: block;
            width: 14px;
            height: 16px;
            margin-left: 5px;
            float: left;
            border: 1px solid #D2D2D2;
            margin-top: 3px;
            padding: 1px 4px;
            transition: all 1s;
        }
        .icon span:hover{
            border:1px solid #61BFFF;
            cursor: pointer;

        }
        .downpanel .layui-select-title span{
            line-height: 38px;
        }
        .downpanel dl dd:hover{background-color: inherit;}
    </style>

</head>
<body>

<div class="layui-row">
    <div class="layui-col-md12 layui-col-xs12">
        <form class="layui-form">
             <input type="hidden" name="id" value="${menu.id}">
            <div class="layui-form-item">
                <label class="layui-form-label">权限名称:</label>
                <div class="layui-input-block">
                    <input type="text" name="name" required  lay-verify="required" value="${menu.name}" placeholder="请输入名称" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">父级菜单:</label>
                <div class="layui-input-block" style="position: relative">
                   <%-- <div id="elem" class="animated fadeInUp" style="border:1px solid #D2D2D2 !important;background:white;width:300px;z-index: 2000; position: absolute;top:38px;left:0px; display: none"></div>--%>
                    <div class="layui-unselect layui-form-select downpanel">
                        <div class="layui-select-title">
                            <span class="layui-input layui-unselect" id="treeclass">选择栏目</span>
                            <input type="hidden" name="parentid" p="${menu.parentid}" value="${menu.parentid}">
                            <i class="layui-edge"></i>
                        </div>
                        <dl class="layui-anim layui-anim-upbit">
                            <dd>
                                <ul id="classtree"></ul>
                            </dd>
                        </dl>
                    </div>

                </div>

            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">权限类型:</label>
                <div class="layui-input-inline">
                    <input type="radio" name="type" lay-filter="type" value="menu" ${menu.type=="menu"?"checked":""} title="菜单" >
                    <input type="radio" name="type" lay-filter="type" value="button" ${menu.type=="button"?"checked":""} title="按钮" >
                    <input type="radio" name="type" lay-filter="type"  value="pers" ${menu.type=="pers"?"checked":""} title="权限" >
                </div>

            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">权限图标:</label>
                <div class="layui-input-block">
                    <input type="text"  id="icon" name="icon" value="${menu.icon}"  placeholder="图标" autocomplete="off" class="layui-input">
                    <div class="icon">
                        <span><i class="fa fa-home"></i></span>
                        <span><i class="fa fa-bar-chart"></i></span>
                        <span><i class="fa fa-bars"></i></span>
                        <span><i class="fa fa-cog"></i></span>
                        <span><i class="fa fa-cogs"></i></span>
                        <span><i class="fa fa-cloud"></i></span>
                        <span><i class="fa fa-download"></i></span>
                        <span><i class="fa fa-align-justify"></i></span>
                        <span><i class="fa fa-bold"></i></span>
                        <span><i class="fa fa-weixin"></i></span>
                        <span><i class="fa fa-yahoo"></i></span>

                        <span><i class="fa fa-yen"></i></span>
                        <span><i class="fa fa-undo"></i></span>
                        <span><i class="fa fa-calendar"></i></span>
                        <span><i class="fa fa-chain"></i></span>
                        <span><i class="fa fa-bus"></i></span>
                        <span><i class="fa fa-camera-retro"></i></span>
                        <span><i class="fa fa-cc-visa"></i></span>
                        <span><i class="fa fa-strikethrough"></i></span>
                        <span><i class="fa fa-certificate"></i></span>
                        <span><i class="fa fa-address-book"></i></span>
                        <span><i class="fa fa-caret-square-o-left"></i></span>
                        <span><i class="fa fa-heartbeat"></i></span>
                        <span><i class="fa fa-angle-right"></i></span>
                        <span><i class="fa fa-paint-brush"></i></span>
                        <span><i class="fa fa-hourglass-3"></i></span>
                        <span><i class="fa fa-shower"></i></span>
                        <span><i class="fa fa-paint-brush"></i></span>
                        <span><i class="fa fa-glide"></i></span>






                        <span><i class="fa fa-outdent"></i></span>
                        <span><i class="fa fa-gears"></i></span>
                        <span><i class="fa fa-check"></i></span>
                        <span><i class="fa fa-spoon"></i></span>
                        <span><i class="fa fa-outdent"></i></span>
                        <span><i class="fa fa-search"></i></span>
                        <span><i class="fa fa-paper-plane"></i></span>



                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">访问路径:</label>
                <div class="layui-input-block">
                    <input type="text" name="url" value="${menu.url}"  placeholder="访问路径" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">权限代码:</label>
                <div class="layui-input-block">
                    <input type="text" name="percode" value="${menu.percode}"   lay-verify="required" id="percode" placeholder="权限代码" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">菜单排序:</label>
                <div class="layui-input-block">
                    <input type="text" name="sortstring" id="sort"  value="${menu.sortstring}"  placeholder="权限排序" lay-verify="orderNum" autocomplete="off" class="layui-input">
                </div>
                <input type="hidden" name="available">
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn" lay-submit lay-filter="formPer">确定</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>

        </form>
    </div>

</div>

</body>
<script>

   layui.use(['layer','table','form','tree','jquery'],function(){
       var layer = layui.layer;
       var from  = layui.form;
       var  $=layui.jquery;
       console.log(${menus});
       var nodes;
       layui.jquery.ajax({
           url:"getPersTreeGrid",
           type:"get",
           success:function(res){
               nodes=res;
               layui.tree({
                   elem: '#classtree',
                   nodes:nodes,
                   click: function(node){
                      if(node.type=="pers"){
                          layer.msg("您选择的是权限操作,请重新选择");
                          return;
                      }else if(node.type=="button"){
                          layer.msg("您选择的是按钮,不可作为父级");
                          return;
                      }
                       var $select=$($(this)[0].elem).parents(".layui-form-select");
                       $select.removeClass("layui-form-selected").find(".layui-select-title span").html(node.name).end().find("input:hidden[name='parentid']").val(node.id);

                   }
               });
           }
       });
       $(".downpanel").on("click",".layui-select-title",function(e) {
           $(".layui-form-select").not($(this).parents(".layui-form-select")).removeClass("layui-form-selected");
           $(this).parents(".downpanel").toggleClass("layui-form-selected");
           layui.stope(e);
       }).on("click","dl i",function(e) {
           layui.stope(e);
       });
       $(document).on("click",function(e) {
           $(".layui-form-select").removeClass("layui-form-selected");
       });
       $("#sort").focus(function(){
           layer.tips("用户菜单排序",this);
       });
       $(".icon span").each(function(k,v){
           $(v).click(function(){
               $("#icon").val($(this).find("i").attr("class"));
           });
       });
       $("#icon").focus(function(){
           layer.tips("本站采用Font Awesome图标库,您可选择或者自定义喜欢的图标",this);
       });
       from.verify({
           orderNum: [/^[0-9]*[1-9][0-9]*$/, '请填写序号(正整数)']
       });
       from.on('radio(type)', function(data){
           if(data.value=="menu"){
             $("#percode").val("--");
             $("#sort").val("");
             $("#sort").attr("disabled",false);
             $("#percode").attr("disabled",true);
           }else{
               $("#percode").val("");
               $("#sort").val("1");
               $("#percode").attr("disabled",false);
               $("#sort").attr("disabled",true);
           }
       });
       //监听提交
       from.on('submit(formPer)', function(data){
           //layer.msg(JSON.stringify(data.field));

           var load=layer.msg("正在执行操作...", {
               icon: 16
               ,shade: 0.4
           });
           setTimeout(function(){

               $.ajax({
                   url:"insert_updatePermission",
                   type:"post",
                   data:data.field,
                   success:function(res){
                       layer.close(load);
                       parent.layer.closeAll();
                       if(res>0){
                           parent.layer.msg("操作成功");
                           window.parent.location.reload();
                       }else{
                           parent.layer.msg("操作失败")
                       }

                   },
                   error:function( XMLHttpRequest, textStatus, errorThrown) {
                       if(XMLHttpRequest.status=413){
                           parent.layer.msg('您未拥有相关权限,如有需要请联系管理员!');

                       }else{
                           parent.layer.alert("系统异常",{icon: 5});
                       }

                   },
               })
           },500);
           return false;
       });


   });




</script>

</html>

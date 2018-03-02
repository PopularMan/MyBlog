<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/WEB-INF/view/common/layui.jsp"%>

<style>

    .layui-icon {
            margin-top: 10px !important;
	        margin-right: 2px!important;
   }
	.layui-table{
		color:black!important;
		font:14px Helvetica Neue,Helvetica,PingFang SC,微软雅黑,Tahoma,Arial,sans-serif;
	}
	.layui-table-cell {
		height: 35px;
		line-height: 35px;
		padding: 0 20%;
	}
	.layui-badge {
		height: 18px;
		line-height: 18px;
		display: inline-block;
		margin-top: 7px;
	}
	.layui-form-switch{margin-top:6px !important;}
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
			<a class="layui-btn addblog" style="background-color:#5FB878"> <i class="layui-icon">&#xe608;</i>添加文章</a>
		</div>
		<div class="layui-inline">
			<a class="layui-btn layui-btn-danger btnDel" id="btnDel"><i class="layui-icon">&#xe640;</i>批量删除</a>
		</div>
		<div class="layui-inline">
			<a class="layui-btn " style="background: #1E9FFF" id="btnReload"><i class="layui-icon">&#x1002;</i>表格重载</a>
		</div>
	</form>
	</blockquote>

<table id="blogTable" class="layui-table" lay-filter="blogtab"></table>
</body>
<script type="text/html" id="checkboxTpl">
	<input type="checkbox" name="switch" lay-skin="switch" rowid="{{d.blog_id}}" lay-filter="state"  value="{{d.blog_state}}" lay-text="显示|隐藏" lay-filter="visable" {{ d.blog_state == 1 ? 'checked' : '' }}>

</script>

<script type="text/html" id="barDemo">

  <a class="layui-btn layui-btn-xs" lay-event="edit"><i class="layui-icon">&#xe642;</i>编辑</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del"><i class="layui-icon">&#xe640;</i>删除</a>
</script>
<script>
layui.use(['layer','table','form'], function(){
  var table = layui.table;
  var layer=layui.layer;
  var form =layui.form;
  var $=layui.jquery;
  //加载分类
    $.ajax({
        type:"get",
        url:"../blog/getBlogType",
        dataType:"json",
        success:function(res){
            if(res.length>0){
                $.each(res,function(k,v){
                    $("#type1").append('<option value='+v.btypeId+'>'+v.btypeName+'</option>');
                });
            }
            form.render('select');
        }
    });
    form.on('switch(state)',function(data){
        console.log(data.value);
        var checked=data.elem.checked;
        var state=0;
        if(!checked){
            state=0
		}else{
            state=1;
		}
        var blogid=$(data.elem).attr("rowid");
        var load=layer.msg("正在修改状态...", {
            icon: 16
            ,shade: 0.4
        });
        setTimeout(function(){
            $.ajax({
                url:"../blog/updateBlogState",
                type:"POST",
                dataType:"json",
                data:{"state":state,"blogid":blogid},
                success:function(res){
                    if(res){
                        layer.alert("修改成功",{icon:6});
                        table.reload("blogTable")
                    }else{
                        layer.alert("修改失败",{icon:5});
                    }
                },
                error:function( XMLHttpRequest, textStatus, errorThrown) {
                       commonAjax.error(XMLHttpRequest,layer);
                },
                complete:function(){
                    layer.close('loading');
                }
            })
		},500);
	});
    //绑定事件
	 $(".addblog").on("click",function(){

             var index = layui.layer.open({
                 title : "添加文章",
                 type : 2,
				 maxmin:true,
				 area:["100%","100%"],
                 content : "editBlog",
                 success : function(layero, index){
                     setTimeout(function(){
                         layui.layer.tips('这里是关闭窗口', '.layui-layer-setwin .layui-layer-close', {
                             tips: 3
                         });
                     },500)
                 }
             });

	 })	;
	 //批量删除
    $(".btnDel").click(function(){
        var checkStatus = table.checkStatus('blogTable');
        var data = checkStatus.data;
        var blogids="";
        if(data.length==0){
            layer.alert("至少选中一条吧!",{icon:2});
            return ;
		}
        $.each(data,function (k,v) {
            blogids+=v.blog_id+",";
        });
        blogids=blogids.substring(0,blogids.lastIndexOf(","));
        var mode= layer.msg('加载中', {
            icon: 16
            ,shade: 0.4
        });
        setTimeout(function(){
            $.ajax({
                url:"../blog/delBlog",
                type:"POST",
                dataType:"json",
                data:{blogids:blogids},
                success:function(res){
                    if(res.success){
                        layer.alert("删除成功",{icon:6});
                        table.reload("blogTable")
                    }else{
                        layer.alert("删除失败",{icon:5});
                    }

                },
                error:function( XMLHttpRequest, textStatus, errorThrown) {
                    if(XMLHttpRequest.status=413){
                        layer.tips('您未拥有相关权限,如有需要请联系管理员!', '#btnDel',{
                            tips: [2, '#009688']
                        });
                    }else{
                        layer.alert("系统异常",{icon: 5});
                    }
                },
                complete:function(){
                    layer.close('loading');
                }
            })
		},1000);


	});
    //查询按钮
	$(".search_btn").click(function(){
        table.reload('blogTable', {
            where: { //设定异步数据接口的额外参数，任意设
				typeid:$("#type1").val(),
                condition:$("#condition").val()
            }
            ,page: {
                curr: 1 //重新从第 1 页开始
            }
        });
	});
	//表格重载
	$("#btnReload").click(function(){
        table.reload('blogTable', {
            where: { //设定异步数据接口的额外参数，任意设
                typeid:"",
                condition:""
            },
            page: {
                curr: 1 //重新从第 1 页开始
            }
        });
	});
   table.render({
    elem: '#blogTable'
    ,url:'../blog/Blog'
    ,request: {
    		   pageName: 'pageNumber', //页码的参数名称，默认：page
    		   limitName: 'limit' //每页数据量的参数名，默认：limit
    } 
    ,limits:[5,10,15]
    ,cols: [[
       
      {type: 'checkbox',width:"5%",}
      ,{field:'blog_title', title:'标题',width:"10%",  unresize: true, sort: true}
      ,{field:'blog_coverimage', title:'封面',width:"10%",event: 'imageEvent' , unresize: true, sort: true,templet:'<div style="height:50px;"><img style="cursor:pointer" class="fmimage"  src="../resource/upload/images/{{d.blog_coverimage}}"></div>'}
      //,{field:'blog_futitle', title:'副标题', templet: '#usernameTpl'}
      ,{field:'btype_name', title:'类型',width:"10%",align:"center", templet: '#usernameTpl'}
      ,{field:'blog_author', title: '作者',width:"10%",align:"center", sort: true}
      //,{field:'blog_dz', title:'点赞数',align:"center", templet: '#'}
      ,{field:'blog_eyes', title:'阅读量',width:"10%",align:"center",}
      ,{field:'blog_state', title:'状态',width:"8%",align:"center", templet: '#checkboxTpl'}
      ,{field:'blog_tags', title:'标签',width:"8%",align:"center", templet: '<div>{{d.blog_tag}}</div>'}
      ,{field:'blog_time', title:'发表时间', width:"8%", align:"center",}
      ,{title:'操作', align:'center',width:"21%", toolbar: '#barDemo',}
    ]]
    ,page: true
  });

    //监听工具条
    table.on('tool(blogtab)', function(obj){
        var data = obj.data;
        if(obj.event === 'detail'){
            layer.msg('ID：'+ data.blog_id + ' 的查看操作');
        } else if(obj.event === 'del'){
            layer.confirm('(单行删除不操作数据库)', function(index){
                var index=layer.msg('正在删除博客', {
                    icon : 16,
                    shade :[0.8, '#000000'],
                    time : 0,
                    skin : 'layui-layer-molv'
                });
                setTimeout(function(){
                    obj.del();
                    layer.close(index);
                    layer.alert("删除成功",{icon:6});
                },1000);


            });
        } else if(obj.event === 'edit'){
            var index = layui.layer.open({
                title : "修改博客",
                type : 2,
                maxmin:true,
                content : "editBlog?id="+data.blog_id,
                success : function(layero, index){
                    setTimeout(function(){
                        layui.layer.tips('这里是关闭窗口', '.layui-layer-setwin .layui-layer-close', {
                            tips: 3
                        });
                    },500)
                }
            });
            layui.layer.full(index);
        }else if(obj.event === 'imageEvent'){
            layer.open({
                type: 1,
                title: false,
                closeBtn: 0,
                area: ['400px','300px'],
                skin: 'layui-layer-nobg', //没有背景色
                shadeClose: true,
                content: '<div><img src="..\/resource\/upload\/images\/'+data.blog_coverimage+'"><div>'
            });

		}
    });
    /*//表单元素监听
    form.on('radio(zd)', function(obj){
        var index=layer.msg('正在修改状态', {
            icon : 16,
            shade :[0.8, '#000000'],
            time : 0,
            skin : 'layui-layer-molv'
        });
        setTimeout(function(){
            layer.close(index);
            layer.alert("修改成功",{icon:6});
		},1000);
    });*/
});

</script>

</html>
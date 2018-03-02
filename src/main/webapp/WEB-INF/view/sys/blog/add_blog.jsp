<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<%@ include file="/WEB-INF/view/common/layui.jsp"%>
	<script type="text/javascript" charset="utf-8" src="../resource/plug/ueidter/ueditor.config.js"></script>
	<script type="text/javascript" charset="utf-8" src="../resource/plug/ueidter/ueditor.all.min.js"> </script>
	<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
	<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
	<script type="text/javascript" charset="utf-8" src="../resource/plug/ueidter/lang/zh-cn/zh-cn.js"></script>
	<style>
		#editor{
		    width:90%;
			height: 400px;
		}

		.layui-icon {
			margin-top: 6px !important;
		}
		.layui-form-select dl{z-index:1000}
	</style>
</head>
<body>
<div style="padding: 10px">
	<div class="fly-panel"  style="padding-top: 5px;">
		<!--<div class="fly-none">没有权限</div>-->
		<div class="layui-form layui-form-pane">
			<form action="" method="post" style="padding:30px;">
				<input type="hidden" id="blog_id" value="${blog.blog_id}">
				<input type="hidden" id="blog_eyes" name="blog_eyes" value="${blog.blog_eyes}">
				<div class="layui-row layui-col-space15 layui-form-item">
					<div class="layui-col-md4">
						<label class="layui-form-label">所在专栏</label>
						<div class="layui-input-block">
							<select  name="blog_type" id="type" value="${blog.blog_type}" lay-filter="type">

							</select>
						</div>
					</div>
					<div class="layui-col-md4">
						<label for="L_title" class="layui-form-label">博客标题</label>
						<div class="layui-input-block">
							<input type="text" value="${blog.blog_title}"  name="blog_title" id="title" lay-verify="required"  autocomplete="off" class="layui-input">

						</div>
					</div>
					<div class="layui-col-md4">

					</div>
				</div>
				<div class="layui-row layui-col-space15 layui-form-item">
					<div class="layui-col-md4">
						<label class="layui-form-label">选择标签:</label>
						<div class="layui-input-block">
							<select lay-verify="required"  name="blog_state" id="status" lay-filter="tag" >
								<option value="0">不选择</option>
								<option value="<span class='layui-badge'>精贴</span>"><span class="layui-badge">精贴</span></option>
								<option value="<span class='layui-badge layui-bg-green'>分享</span>"><span class="layui-badge layui-bg-green">分享</span></option>
								<option value="<span class='layui-badge layui-bg-cyan'>置顶</span>"><span class="layui-badge layui-bg-cyan">置顶</span></option>
							</select>
						</div>
					</div>
					<div class="layui-col-md4">
						<label for="L_title" class="layui-form-label">博客简介</label>
						<div class="layui-input-block">
							<input type="text"  lay-verify="required" value="${blog.blog_futitle}"  name="blog_futitle" id="futitle" value=“副标题" class="layui-input">
							<!-- <input type="hidden" name="id" value="{{d.edit.id}}"> -->
						</div>
					</div>
					<div class="layui-col-md4">

					</div>
				</div>
				<div class="layui-row layui-col-space15 layui-form-item">
					<div class="layui-col-md4">
						<label for="" class="layui-form-label" id="uploadimage" style="cursor: pointer" ><i class='layui-icon'></i>&nbsp;封面上传</label>
						<div class="layui-input-block">
							<input type="text" lay-verify="required" value="${blog.blog_coverimage}"   name="blog_coverimage" id="blog_coverimage" readonly="readonly" class="layui-input">
						</div>
					</div>
					<div class="layui-col-md4">
						<label class="layui-form-label">发布时间</label>
						<div class="layui-input-inline">
							<input class="layui-input newsTime"  value="${blog.blog_time}"  name="blog_time" id="blog_time" lay-verify="required"  type="text">
						</div>

					</div>
					<div class="layui-col-md4">

					</div>
				</div>

				<div class="layui-form-item layui-form-text">
					<div class="layui-input-block" style="height: 600px;" >

						<script id="editor" type="text/plain" >${blog.blog_article}</script>
					</div>
				</div>
				<div class="layui-form-item">
					<div class="layui-col-md4">
					<label for="L_vercode" class="layui-form-label">人类验证</label>
					<div class="layui-input-inline">
						<input type="text" id="L_vercode"    placeholder="请回答后面的问题" autocomplete="off" class="layui-input">
					</div>
					<div class="layui-form-mid">
						<span style="color: #c00;">1+1=?</span>
					</div>
					</div>

					<div class="layui-col-md4">

						<div class="layui-form-item">
							<button class="layui-btn" id="pullBlog" lay-filter="go" lay-submit><i class="layui-icon">&#xe609;</i>立即发布</button>
						</div>
					</div>

					<div class="layui-col-md4">

					</div>
				</div>

			</form>
		</div>
	</div>
</div>




</body>
<script>
    layui.use(['layedit','upload','form','laydate','jquery','layer'], function(){
        var upload  = layui.upload;
        var form    = layui.form;
        var layer   = layui.layer;
        var laydate = layui.laydate;
        var $=layui.jquery;
        //实例化编辑器
        //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
        var ue = UE.getEditor('editor');


        $("#uploadimage").click(function(){
               var uploadLayer=layer.open({
				   type:1,
				   area:["320px","170"],
				   title:"封面上传",
                   skin: 'layui-layer-molv',
				   content:"<div class='layui-upload-drag' style='margin-left: 20px' id='test10'> <i class='layui-icon'></i> <p>点击上传，或将文件拖拽到此处</p></div>",
                   success:function(index){
                       //拖拽上传
                       upload.render({
                           elem: '#test10'
                           ,url: '../upload/image'
                           ,before: function(obj){ //obj参数包含的信息，跟 choose回调完全一致，可参见上文。
                               layer.load(); //上传loading
                           }
                           ,error: function(index, upload){
                               layer.closeAll('loading'); //关闭loading

                           }
                           ,done: function(res){
                               console.log(res.data.src);
							   if(res.code==0){
                                   layer.closeAll("loading");
								   layer.close(uploadLayer);
                                   $("#blog_coverimage").val(res.data.src);
							   }else{
                                   layer.close(uploadLayer);
							       layer.closeAll("loading");
								   layer.mag("内部异常");
							   }
                           }
					   });
				   }
			   });
		});
		//加载分类
        var selectType="${blog.blog_type}";
        var selectTag="${blog.blog_tag}";
        $("#status").val(selectTag);
        //form.render('select','tag');
		$.ajax({
			type:"get",
			url:"../blog/getBlogType",
			dataType:"json",
			success:function(res){
                  if(res.length>0){
					   $.each(res,function(k,v){
					       if(selectType==v.btypeId){
                               $("#type").append('<option value='+v.btypeId+' selected>'+v.btypeName+'</option>');
						   }else{
                               $("#type").append('<option value='+v.btypeId+'>'+v.btypeName+'</option>');
						   }

					   });
				  }
				  form.render('select');
			}
		});
        //日期选择器

        laydate.render({
            elem: '#blog_time'
            ,type: 'date' //默认，可不填
            ,format:"yyyy-MM-dd HH:mm:ss"

        });
        form.on('submit(go)', function(data){

            if($("#L_vercode").val()==""){
                layer.msg("请完成人类验证，以确保您是人类！！！");
                return false;
            }else if($("#L_vercode").val()!=2){
                layer.alert("小学生都会的问题！！！");
                return false;
            }
            var index1=layer.msg('正在执行操作', {
                icon: 16
                ,shade: 0.5
                ,skin: 'layui-layer-molv' //样式类名
                ,time:0,
            });
            var title=$("#title").val();
            var type=$("#type").val();
            var futitle=$("#futitle").val();
            var time=$("#blog_time").val();
            var tag=$("#status").val();
            var content=UE.getEditor('editor').getContent();
            var eyes=$("#blog_eyes").val();
            //判断是修改还是新增
			setTimeout(function(){
                $.ajax({
                    url:"../blog/saveOrUpdateBlog",
                    type:"POST",
                    dataType:"json",
                    data:{"blog_id":$("#blog_id").val(),"blog_title":title,"blog_eyes":0,"blog_futitle":futitle,"blog_time":time,"blog_state":1,"blog_tag":tag,"blog_type":type,"blog_article":content,"blog_coverimage":$("#blog_coverimage").val()},
                    success:function (res) {
                        layer.close(index1);
                        if(res){
                            layer.alert("操作成功",{icon: 6});
                            window.parent.location.reload();
                            parent.layer.closeAll();

                        }else{
                            layer.alert("操作失败",{icon: 5});
                        }
                    },
                    error:function( XMLHttpRequest, textStatus, errorThrown) {
                        //parent.layer.closeAll();
                        commonAjax.error(XMLHttpRequest,layer);
                    },

                });
			},500)


            return false;


        });

    });

</script>
</html>
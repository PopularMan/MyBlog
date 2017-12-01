<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/WEB-INF/view/layui.jsp"%>
	<!--<link rel="stylesheet" href="../resource/css/flyglobal.css">-->

<style>

 .layui-icon {
            margin-top: 6px !important;
 }
</style>
</head>
<body>
<div style="padding: 10px">
	<div class="fly-panel" pad20 style="padding-top: 5px;">
		<!--<div class="fly-none">没有权限</div>-->
		<div class="layui-form layui-form-pane">
						<form action="" method="post">
							<div class="layui-row layui-col-space15 layui-form-item">
								<div class="layui-col-md3">
									<label class="layui-form-label">所在专栏</label>
									<div class="layui-input-block">
										<select lay-verify="required" name="class" lay-filter="column">
											<option></option>
											<option value="0">提问</option>
											<option value="99">分享</option>
											<option value="100">讨论</option>
											<option value="101">建议</option>
											<option value="168">公告</option>
											<option value="169">动态</option>
										</select>
									</div>
								</div>
								<div class="layui-col-md9">
									<label for="L_title" class="layui-form-label">标题</label>
									<div class="layui-input-block">
										<input type="text" id="L_title" name="title" required lay-verify="required" autocomplete="off" class="layui-input">
										<!-- <input type="hidden" name="id" value="{{d.edit.id}}"> -->
									</div>
								</div>
							</div>
							<div class="layui-row layui-col-space15 layui-form-item">
								<div class="layui-col-md3">
									<label class="layui-form-label">所在专栏</label>
									<div class="layui-input-block">
										<select lay-verify="required" name="class" lay-filter="column">
											<option></option>
											<option value="0">提问</option>
											<option value="99">分享</option>
											<option value="100">讨论</option>
											<option value="101">建议</option>
											<option value="168">公告</option>
											<option value="169">动态</option>
										</select>
									</div>
								</div>
								<div class="layui-col-md9">
									<label for="L_title" class="layui-form-label">标题</label>
									<div class="layui-input-block">
										<input type="text" id="L_title" name="title" required lay-verify="required" autocomplete="off" class="layui-input">
										<!-- <input type="hidden" name="id" value="{{d.edit.id}}"> -->
									</div>
								</div>
							</div>
							<div class="layui-row layui-col-space15 layui-form-item">
								<div class="layui-col-md3">
									<label class="layui-form-label">所在专栏</label>
									<div class="layui-input-block">
										<select lay-verify="required" name="class" lay-filter="column">
											<option></option>
											<option value="0">提问</option>
											<option value="99">分享</option>
											<option value="100">讨论</option>
											<option value="101">建议</option>
											<option value="168">公告</option>
											<option value="169">动态</option>
										</select>
									</div>
								</div>
								<div class="layui-col-md9">
									<label for="L_title" class="layui-form-label">标题</label>
									<div class="layui-input-block">
										<input type="text" id="L_title" name="title" required lay-verify="required" autocomplete="off" class="layui-input">
										<!-- <input type="hidden" name="id" value="{{d.edit.id}}"> -->
									</div>
								</div>
							</div>
							<div class="layui-row layui-col-space15 layui-form-item layui-hide" id="LAY_quiz">
								<div class="layui-col-md3">
									<label class="layui-form-label">所属产品</label>
									<div class="layui-input-block">
										<select name="project">
											<option></option>
											<option value="layui">layui</option>
											<option value="独立版layer">独立版layer</option>
											<option value="独立版layDate">独立版layDate</option>
											<option value="LayIM">LayIM</option>
											<option value="Fly社区模板">Fly社区模板</option>
										</select>
									</div>
								</div>
								<div class="layui-col-md3">
									<label class="layui-form-label" for="L_version">版本号</label>
									<div class="layui-input-block">
										<input type="text" id="L_version" value="" name="version" autocomplete="off" class="layui-input">
									</div>
								</div>
								<div class="layui-col-md6">
									<label class="layui-form-label" for="L_browser">浏览器</label>
									<div class="layui-input-block">
										<input type="text" id="L_browser"  value="" name="browser" placeholder="浏览器名称及版本，如：IE 11" autocomplete="off" class="layui-input">
									</div>
								</div>
							</div>
							<div class="layui-form-item layui-form-text">
								<div class="layui-input-block">
									<textarea id="L_content" name="content" required lay-verify="required" placeholder="详细描述" class="layui-textarea fly-editor" style="height: 260px;"></textarea>
								</div>
							</div>
							<div class="layui-form-item">
								<label for="L_vercode" class="layui-form-label">人类验证</label>
								<div class="layui-input-inline">
									<input type="text" id="L_vercode" name="vercode" required lay-verify="required" placeholder="请回答后面的问题" autocomplete="off" class="layui-input">
								</div>
								<div class="layui-form-mid">
									<span style="color: #c00;">1+1=?</span>
								</div>
							</div>
							<div class="layui-form-item">
								<button class="layui-btn" lay-filter="*" lay-submit>立即发布</button>
							</div>
						</form>
					</div>
				</div>
			</div>




</body>
<script>
    layui.use('layedit', function(){
        var layedit = layui.layedit;
        layedit.build('L_content'); //建立编辑器
    });

</script>
</html>
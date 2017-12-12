<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/WEB-INF/view/layui.jsp"%>
<style>

 .layui-icon {
            margin-top: 6px !important;
 }
</style>
</head>
<body>

<div class="layui-fluid">

	<blockquote class="layui-elem-quote explain">
		<p>本系统前端基于Layui实现,后端使用普遍的Spring+SpringMvc+MyBatis+Shiro权限框架,使用maven构建,IDEA开发,使用GIT做版本管理工具,码云做远程仓库</p>
		<p></p>
		<p>本系统仅供交流学习，欢迎讨论交流！<i class="fa fa-git"></i>码云地址<a href="https://gitee.com/xiaochaozcc/MavenSSM" style="color:blue" target="_blank">git@gitee.com:xiaochaozcc/MavenSSM.git</a></p>
	</blockquote>


	<div class="layui-row layui-col-space10">
		<div class="layui-col-md6 layui-col-xs6">
			<fieldset class="layui-elem-field">
				<legend>服务器信息</legend>
				<div class="layui-field-box">
					<blockquote class="layui-elem-quote title">系统基本参数</blockquote>
					<table class="layui-table" lay-skin="line">
						<tbody>
						<tr>
							<td>操作系统</td>
							<td>Linux</td>
						</tr>
						<tr>
							<td>JDK版本</td>
							<td>1.8</td>
						</tr>
						<tr>
							<td>开发工具</td>
							<td>IDEA</td>
						</tr>
						<tr>
							<td>服务器域名/IP</td>
							<td><a href="www.cczblog.cn" target="_blank">www.cczblog.cn</a></td>
						</tr>
						<tr>
							<td>运行服务器</td>
							<td>7.0.3 <a href="http://apache.com" target="_blank">Tomcat</a> ]</td>
						</tr>
						<tr>
							<td>MySQL</td>
							<td>5.6</td>
						</tr>
						<tr>
							<td>服务器时间</td>
							<td>2017年11月30日 16:57:05</td>
						</tr>

						</tbody>
					</table>
				</div>
			</fieldset>
		</div>
		<div class="layui-col-md6 layui-col-xs6">
			1/3
		</div>



	</div>

</div>

</body>

</html>
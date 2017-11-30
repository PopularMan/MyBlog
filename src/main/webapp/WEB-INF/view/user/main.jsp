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

<div style="padding: 15px;">
	<fieldset class="layui-elem-field">
		<legend>服务器信息</legend>
		<div class="layui-field-box">
			<table class="layui-table">
				<tbody>
				<tr>
					<td>操作系统</td>
					<td>Linux</td>
				</tr>
				<tr>
					<td>运行环境</td>
					<td>Apache</td>
				</tr>
				<tr>
					<td>PHP运行方式</td>
					<td>apache2handler</td>
				</tr>
				<tr>
					<td>ThinkPHP版本</td>
					<td>5.0.12 [ <a href="http://thinkphp.cn" target="_blank">查看最新版本</a> ]</td>
				</tr>
				<tr>
					<td>上传附件限制</td>
					<td>50M</td>
				</tr>
				<tr>
					<td>执行时间限制</td>
					<td>300秒</td>
				</tr>
				<tr>
					<td>服务器时间</td>
					<td>2017年11月30日 16:57:05</td>
				</tr>
				<tr>
					<td>北京时间</td>
					<td>2017年11月30日 16:57:05</td>
				</tr>
				<tr>
					<td>服务器域名/IP</td>
					<td>platform.hjply.com [ 39.108.170.81 ]</td>
				</tr>
				<tr>
					<td>剩余空间</td>
					<td>32292.25M</td>
				</tr>
				<tr>
					<td>register_globals</td>
					<td>OFF</td>
				</tr>
				<tr>
					<td>magic_quotes_gpc</td>
					<td>NO</td>
				</tr>
				<tr>
					<td>magic_quotes_runtime</td>
					<td>NO</td>
				</tr>
				</tbody>
			</table>
		</div>
	</fieldset>
	<a href="http://platform.hjply.com/release/hjply.zip">下载源码(数据库文件在application/sql目录下)</a>
</div>

</body>

</html>
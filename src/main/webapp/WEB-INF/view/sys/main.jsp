<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    <%@ include file="/WEB-INF/view/common/layui.jsp" %>
    <style>

        .layui-icon {
            margin-top: 6px !important;
        }
    </style>
</head>
<body>

<div class="layui-fluid">

    <blockquote class="layui-elem-quote explain">
        <p>1.本系统前端基于Layui实现,后端使用普遍的SpringMVC,Mybatis,Shiro权限框架</p>

        <p>2.使用maven构建,IDEA开发,</p>
        <p>3.使用git做版本管理工具,码云做远程仓库</p>
        <p>4.本系统仅供交流学习，欢迎讨论交流！<i class="fa fa-git"></i>码云地址<a href="https://gitee.com/gitccz/MavenSSM"
                                                              style="color:blue" target="_blank">点击进入</a></p>
    </blockquote>
    <fieldset class="layui-elem-field">
        <legend>更新日志</legend>
        <div class="layui-field-box">
            <ul class="layui-timeline">
                <li class="layui-timeline-item">
                    <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                    <div class="layui-timeline-content layui-text">
                        <h3 class="layui-timeline-title">3月1日</h3>
                        <p>
                            客服图灵机器人优化:可以正常简单对话
                        </p>
                    </div>
                </li>
                <li class="layui-timeline-item">
                    <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                    <div class="layui-timeline-content layui-text">
                        <h3 class="layui-timeline-title">2月20日</h3>
                        <p>
                            bug修复:解决前端用户无法评论,
                            QQ登录代码优化！
                        </p>
                    </div>
                </li>
                <li class="layui-timeline-item">
                    <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                    <div class="layui-timeline-content layui-text">
                        <h3 class="layui-timeline-title">2月7日</h3>
                        <p>
                            增加4种主题！详情右上角
                        </p>
                    </div>
                </li>
                <li class="layui-timeline-item">
                    <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                    <div class="layui-timeline-content layui-text">
                        <h3 class="layui-timeline-title">2月6日</h3>
                        <p>
                            Layui的社区好久没更新了
                        </p>
                    </div>
                </li>
                <li class="layui-timeline-item">
                    <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                    <div class="layui-timeline-content layui-text">
                        <h3 class="layui-timeline-title">2月5号</h3>
                        博客界面优化！适应手机端！
                        <ul>
                            <li>主界面</li>
                            <li>博客界面</li>
                        </ul>
                    </div>
                </li>
                <li class="layui-timeline-item">
                    <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                    <div class="layui-timeline-content layui-text">
                        <h3 class="layui-timeline-title">2月4号</h3>
                        <p>
                            更改登录页面,
                            <br>使用shiro的自定义表单,表示跳坑一晚上
                        </p>
                    </div>
                </li>
                <li class="layui-timeline-item">
                    <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                    <div class="layui-timeline-content layui-text">
                        <div class="layui-timeline-title">...</div>
                    </div>
                </li>
            </ul>

        </div>
    </fieldset>


</div>

</body>
<script>


</script>

</html>
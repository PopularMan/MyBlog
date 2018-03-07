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
            margin-top: 10px !important;
            margin-right: 2px !important;
        }


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
            <a class="layui-btn layui-btn-danger btnDel" id="btnDel"><i class="layui-icon">&#xe640;</i>清理日志</a>
        </div>

    </form>
</blockquote>

<table class="layui-table" id="logTable"
       lay-data="{height: 'full-200', cellMinWidth: 80, page: true, limit:10, url:'selectLogs'}">
    <thead>
    <tr>
        <th lay-data="{type:'checkbox',width:'10%'}">ID</th>
        <th lay-data="{field:'sys_loginame', width:'15%', sort: true}">名称</th>
        <th lay-data="{field:'sys_logintime',width:'20%',sort: true }">登录时间</th>
        <th lay-data="{field:'sys_logip' ,width:'15%'}">登录IP</th>
        <th lay-data="{field:'sys_logaddress', width:'20%',sort: true, align: 'center'}">登录地址</th>
        <th lay-data="{field:'sys_czrz',width:'20%', sort: true, align: 'center'}">详情</th>
    </tr>
    </thead>
</table>
</body>
<script>
    layui.use(['table', 'jquery', 'layer'], function () {
        var table = layui.table, $ = layui.jquery, layer = layui.layer;
        //批量删除
        $(".btnDel").click(function () {
            var checkStatus = table.checkStatus('logTable');
            var data = checkStatus.data;
            var logids = "";
            if (data.length == 0) {
                layer.alert("至少选中一条吧!", {icon: 2});
                return;
            }
            $.each(data, function (k, v) {
                logids += v.sys_logid + ",";
            });
            logids = logids.substring(0, logids.lastIndexOf(","));
            var mode = layer.msg('清理日志中', {
                icon: 16
                , shade: 0.4
            });
            setTimeout(function () {
                $.ajax({
                    url: "delLogs",
                    type: "POST",
                    dataType: "json",
                    data: {"logids": logids, "_method": "delete"},
                    success: function (res) {
                        if (res) {
                            layer.alert("删除成功", {icon: 6});
                            table.reload("logTable")
                        } else {
                            layer.alert("删除失败", {icon: 5});
                        }

                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        commonAjax.error(XMLHttpRequest, layer);
                    },
                    complete: function () {
                        layer.close('loading');
                    }
                })
            }, 1000);


        });

        $('.search_btn').on('click', function () {
            //执行重载
            table.reload('logTable', {
                page: {
                    curr: 1 //重新从第 1 页开始
                }
                , where: {
                    key: {
                        sys_logid: $("#condition").val(),
                    }
                }
            });
        });

    });
</script>


</html>
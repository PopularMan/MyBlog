<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/1/12 0012
  Time: 下午 8:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    <%@ include file="/WEB-INF/view/common/layui.jsp" %>
    <title></title>
    <style>
        .layui-table td, .layui-table th {
            position: relative;
            padding: 9px 15px;
            min-height: 20px;
            line-height: 20px;
            font-size: 14px;
            text-align: center;
    </style>
</head>
<body>
<blockquote class="layui-elem-quote">
    下面为权限管理
</blockquote>
<div class="layui-btn-group demoTable">
    <button class="layui-btn addPerBtn"><i class="layui-icon">&#xe654;</i>新增权限</button>
</div>
<div class="layui-row">
    <div class="layui-col-md12 layui-col-xs12">
        <div id="menuTree"></div>
    </div>

</div>

</body>
<script>
    var layout = [
        {
            name: '菜单名称',
            treeNodes: true,
            headerClass: 'value_col',
            align: 'center',
            colClass: 'value_col',
            style: 'width: 10%'
        },
        {
            name: 'url', headerClass: 'value_col', colClass: 'value_col', align: 'center', style: 'width: 10%',
            render: function (row) {
                return '<div class="layui-table-cell laytable-cell-1-username">' + (typeof(row.url) == "undefined" ? '' : row.url) + '</div>'; //列渲染
            }
        }, {
            name: '类型', headerClass: 'value_col', align: 'center', colClass: 'value_col', style: 'width: 10%',
            render: function (row) {
                if (row.type == "menu") {
                    return '<div class="layui-table-cell laytable-cell-1-username"  style="color:#393D49">菜单</div>'; //列渲染
                } else if (row.type == "button") {
                    return '<div class="layui-table-cell laytable-cell-1-username"  style="color:#009688">按钮</div>'; //列渲染
                } else if (row.type == "pers") {
                    return '<div class="layui-table-cell laytable-cell-1-username"  style="color:#FF5722">权限</div>'; //列渲染
                }

            }
        }, {
            name: '权限代码', align: 'center', headerClass: 'value_col', colClass: 'value_col', style: 'width: 10%',
            render: function (row) {
                return '<div class="layui-table-cell laytable-cell-1-username"><span class="layui-badge layui-bg-green">' + (row.percode == "" ? '--' : row.percode) + '</span></div>'; //列渲染
            }
        }, {
            name: '权限级别', align: 'center', headerClass: 'value_col', colClass: 'value_col', style: 'width: 10%',
            render: function (row) {
                return '<div class="layui-table-cell laytable-cell-1-username"><span class="layui-badge layui-bg-cyan">' + (typeof(row.level) == "undefined" ? '' : row.level) + '</span></div>'; //列渲染
            }
        },
        {
            name: '图标', align: 'center', headerClass: 'value_col', colClass: 'value_col', style: 'width: 5%',
            render: function (row) {
                return '<div class="layui-table-cell laytable-cell-1-username"><i class="' + row.icon + '"></i></div>'; //列渲染
            }
        }, {
            name: '排序', align: 'center', headerClass: 'value_col', colClass: 'value_col', style: 'width: 5%',
            render: function (row) {
                if (row.sortstring == null) {
                    return "";
                } else {
                    return row.sortstring;
                }

            }
        },

        {
            name: '操作',
            headerClass: 'value_col',
            colClass: 'value_col',
            style: 'width: 20%',
            render: function (row) {
                var chil_len = row.children.length;
                var str = '<a class="layui-btn layui-btn-sm" onclick="update(\'' + row.id + '\')"><i class="fa fa-edit"></i> 编辑</a>'; //列渲染
                if (chil_len == 0) {
                    str += '<a class="layui-btn layui-btn-danger layui-btn-sm" onclick="del(\'' + row.id + '\')"><i class="fa fa-remove""></i> 删除</a>';
                }
                return str;
            }
        },
    ];
    var layer;
    var $;
    layui.use(['layer', 'table', 'form', 'tree', 'jquery'], function () {
        layer = layui.layer;
        $ = layui.jquery;
        console.log(${menus});
        var nodes;
        layui.jquery.ajax({
            url: "getPersTreeGrid",
            type: "get",
            success: function (res) {
                nodes = res;
                layui.treeGird({
                    elem: '#menuTree',
                    nodes: nodes,
                    layout: layout
                });
            }
        });

        $(".addPerBtn").click(function () {
            layer.open({
                id: 'user-add',
                type: 2,
                area: ['650px', '600px'],
                fix: false,
                skin: "layui-layer-molv",
                maxmin: true,
                shadeClose: false,
                shade: 0.4,
                title: "添加权限",
                content: 'menu'
            });
        });
    });

    function update(id) {
        layer.open({
            id: 'user-add',
            type: 2,
            area: ['650px', '600px'],
            fix: false,
            skin: "layui-layer-molv",
            maxmin: true,
            shadeClose: false,
            shade: 0.4,
            title: "编辑权限",
            content: 'menu?id=' + id
        });
    }

    function del(id) {
        layer.confirm("确定要删除吗", {btn: ['是的', '取消'], title: "提示信息", icon: 2}, function () {
            layer.msg('删除中', {
                icon: 16
                , shade: 0.5
            });
            setTimeout(function () {
                $.ajax({
                    url: "delPermission",
                    type: "POST",
                    data: {"id": id, "_method": "DELETE"},
                    success: function (res) {
                        layer.closeAll("loading");
                        if (res) {
                            layer.msg("删除成功")
                        } else {
                            layer.msg("删除失败")
                        }
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        layer.closeAll("loading");
                        commonAjax.error(XMLHttpRequest, layer);
                    },
                })
            }, 500);

        });
    }


</script>
<%--<script type="text/html" id="perTool">
    <a class="layui-btn layui-btn-xs" lay-event="edit"><i class="layui-icon">&#xe642;</i></a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del"><i class="layui-icon">&#xe640;</i></a>
</script>
<script type="text/html" id="perIcon">
    <a href="javascript:;" style="margin:auto;padding: 2px;"><i class="{{d.icon}}"></i></a>
</script>
<script type="text/html" id="perType">
    {{# if (d.type=="menu"){ }}
    <div style="margin:auto;padding:7px;"><span class="layui-badge layui-bg-orange">菜单</span></div>
    {{# }else{ }}
    <div style="margin:auto;padding:7px;"> <span class="layui-badge layui-bg-green">按钮</span></div>
    {{# } }}
</script>
<script type="text/html" id="realTmp">
    <span class="layui-badge-rim">{{d.parentids}}</span>
</script>

<script type="text/html" id="avalTmp">
    <input type="checkbox" name="sex" value="{{d.available}}" lay-skin="switch" lay-text="是|否" lay-filter="*" {{ d.available== 1 ? 'checked' : '' }}>
</script>--%>
</html>

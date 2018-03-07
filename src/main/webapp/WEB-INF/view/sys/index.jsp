<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    <title>异朽阁后台</title>
    <%@ include file="/WEB-INF/view/common/layui.jsp" %>
    <%@ include file="/WEB-INF/view/common/layim.jsp" %>
    <link href="${pageContext.request.contextPath}/resource/plug/skins/black.css" rel="stylesheet" id="skincss"
          type="text/css"/>
    <style>
        .layui-side-scroll {
            width: 100%;
            height: 100%;
            overflow-x: hidden;
        }

        .mini .layui-nav-tree {
            width: 50px;
        }

        .mini {
            width: 50px;
        }

        .mini .layui-side-scroll ul li cite {
            display: none;
        }

        .mini .user-photo {
            display: none;
        }

        .mini .layui-nav-tree .layui-nav-more {
            top: 20px;
            right: 3px;
            margin: 0
        }

        .circleimg {
            display: none;
        }

        .mini .circleimg {
            display: block;
            margin: 0 10px;
        }

        .mini .layui-nav-tree .layui-nav-item a {
            height: 45px;
            line-height: 45px;
            /* text-overflow: ellipsis; */
            overflow: hidden;
            line-height: 45px;
            text-overflow: clip !important;
        }

        .skin-bg-color {
            padding: 25px;
            height: 350px
        }

        .skin-bg-color div {
            height: 80px;
            margin-top: 5px;
            border-radius: 8px;
            padding-top: 20px;
            width: 220px;
            position: relative;
            margin-left: 10px;
        }

        .skin-bg-color div:hover {
            cursor: pointer;
        }

        .skin-bg-color div span {
            font-size: 30px;
            color: white;
            padding-left: 35px;
            display: block;
        }

        .block:before {
            content: '';
            display: block;
            position: absolute;
            right: 0;
            bottom: 0;
            border: 17px solid #1AA094;
            border-top-color: transparent;
            border-left-color: transparent;
            color: #fff;
        }

        .block:after {
            content: '';
            display: block;
            width: 5px;
            height: 12px;
            position: absolute;
            right: 6px;
            bottom: 6px;
            border: 2px solid #fff;
            border-top-color: transparent;
            border-left-color: transparent;
            transform: rotate(45deg);
        }

    </style>
</head>


<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header animated fadeInDown">
        <div class="layui-logo">异朽阁后台管理</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <a href="javascript:;" id="menuBar" class="hideMenu"><i class="fa fa-reorder fa-fw"></i></a>
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a href="https://www.cczblog.cn" target="_blank">前台入口</a></li>

        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item"><a href="javascript:void(0)" class="chooseSkin"><i
                    class="layui-icon">&#xe61b;</i>&nbsp;换肤功能</a></li>
            <li class="layui-nav-item"><a href="javascript:layer.msg('我只是个样式,还没想好干什么')" class="msg"><i class="fa fa-volume-up"></i>&nbsp;我的消息<span
                    class="layui-badge">9</span></a></li>
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="../resource/${admin.avatar}" class="layui-nav-img">
                    ${admin.username}
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:layer.msg('人家还是个女孩子,看人家资料干什么')">基本资料</a></dd>
                    <dd><a href="javascript:layer.msg('你要干什么')">安全设置</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="logout"><i class="fa fa-remove fa-fw"></i>注销</a></li>
        </ul>
    </div>
    <div class="layui-side layui-bg-black animated fadeInLeft" id="leftMenuDiv">

        <div class="layui-side-scroll">
            <div class="user-photo">
                <a class="img" title="我的头像"><img style="width: 80px;height: 80px" class="layui-circle"
                                                 src="../resource/${admin.avatar}"></a>
                <p>你好！<span class="userName">${admin.username}</span></p>
            </div>
            <div class="circleimg"><a title="我的头像"><img style="width: 30px;height: 30px" class="layui-circle"
                                                        src="../resource/${admin.avatar}"></a></div>
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree" lay-filter="test" id="ulmenu">

                <c:forEach items="${admin.menus}" var="pmenu">
                    <li class="layui-nav-item">
                        <a class="" href="javascript:;" data-url='${pmenu.url}'><i class="${pmenu.icon} fa-fw"></i>&nbsp;<cite>${pmenu.name}</cite></a>
                        <c:if test="${(pmenu.children)!= null && fn:length(pmenu.children) > 0}">
                            <dl class="layui-nav-child">
                                <c:forEach items="${pmenu.children}" var="menu">
                                    <c:if test="${menu.type=='menu'}">
                                        <dd><a href="javascript:;" data-url="${menu.url}"><i
                                                class="${menu.icon} fa-fw"></i>&nbsp;<cite>${menu.name}</cite></a></dd>
                                    </c:if>
                                </c:forEach>

                            </dl>

                        </c:if>
                    </li>
                </c:forEach>

            </ul>
        </div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div style="padding: 0px 3px;height:100%">
            <div class="layui-tab layui-tab-brief" lay-allowClose="true" lay-filter="contentTab">
                <ul class="layui-tab-title" id="contentTb">
                </ul>
                <div class="layui-tab-content"></div>
            </div>

        </div>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © www.cczblog.cn
    </div>
</div>

<script type="text/html" id="pifu">
    <div id="skinDiv">
        <div class="skin-bg-color" style="padding: 10px;height: 320px">

            <div class="" style="background: lightpink" data-url="pink" data-text="点我使用"><span>粉色风情</span></div>
            <div class="block" style="background: #393D49" data-url="black" data-text="点我使用"><span>黑色低调</span></div>
            <div class="" style="background: #1E9FFF" data-url="blue" data-text="点我使用"><span>蓝色稳重</span></div>
            <div class="" style="background: mediumpurple" data-url="purple" data-text="点我使用"><span>紫色犹豫</span></div>
        </div>
    </div>
</script>
<script>

    //JavaScript代码区域
    layui.use(['element', 'layer', 'laytpl'], function () {
        var layer = layui.layer;
        var $ = layui.jquery;
        var title = "";
        var element = layui.element;
        element.tabAdd('contentTab', {
            title: "<i class='fa fa-home'></i>&nbsp;首页"
            , content: "<iframe class='iframe' src='main'></iframe>" //支持传入html
            , id: "777"
        });
        $(".chooseSkin").on("click", function () {
            layer.open({
                type: 1
                , title: false //不显示标题栏
                , closeBtn: true
                , area: ['260px', '450px']
                , shade: 0.8
                , id: 'LAY_layuipro' //设定一个id，防止重复弹出
                , btnAlign: 'c'
                , moveType: 1 //拖拽模式，0或者1
                , content: $("#pifu").html()
                , success: function (layero) {
                    var sessionSkin = sessionStorage.getItem("skin");
                    if (sessionSkin != undefined) {
                        $("#LAY_layuipro>#skinDiv>.skin-bg-color div").each(function (m, n) {
                            if ($(n).data("url") == sessionSkin) {
                                $(n).addClass("block").siblings("div").removeClass("block");
                            }

                        });
                    }
                    //皮肤点击事件
                    $("#LAY_layuipro>#skinDiv>.skin-bg-color div").each(function (k, n) {
                        $(n).click(function () {
                            layer.load(2);
                            setTimeout(function () {
                                $("#skincss").attr("href", "../resource/plug/skins/" + $(n).data("url") + ".css");
                                $("#pacecss").attr("href", "../resource/plug/pace/themes/" + $(n).data("url") + "/pace-theme-flash.css");
                                sessionStorage.setItem("skin", $(n).data("url"));
                                layer.closeAll('loading');
                                $(n).addClass("block").siblings("div").removeClass("block");
                            }, 1000);

                        });

                    });
                }
            });
        });

        element.tabChange("contentTab", 777);
        $("#ulmenu li a").each(function (m, n) {
            $(n).click(function () {
                // alert($(this).data("url"));
                if ($(this).data("url") != "") {
                    var html = $(this).data("url");
                    title = $(this).html();
                    var flag = false;
                    $("#contentTb li").each(function (k, v) {
                        if ($(v).attr("lay-id") == eval(m + 1)) {
                            flag = true;
                        }
                    });
                    if (flag) {
                        element.tabChange("contentTab", m + 1);
                    } else {
                        //判断layID 是否存在
                        var load = layer.load(3, {shade: 0.5});
                        setTimeout(function () {
                            element.tabAdd('contentTab', {
                                title: title
                                , content: "<iframe class='iframe' src=" + html + "></iframe>" //支持传入html
                                , id: m + 1
                            });
                            element.tabChange("contentTab", m + 1);
                            layer.close(load);
                        }, 500)
                    }
                }


            });
            $(n).hover(function () {
                // alert($(this).data("url"));
                if ($(this).data("url") != "") {
                    layer.tips($(this).text(), this);
                }
            }, function () {
                layer.closeAll('tips');
            });

        });


    });
</script>
</body>


</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
	<meta charset="utf-8" />
	<!--引入你自己的layui文件-->
	<link href="resource/plug/layui/css/layui.css" rel="stylesheet" />
</head>
<body>
<form class="layui-form" action="">
	<div style="margin:20px 20px;font-size:18px;">layui - xtree 2.0</div>

	<!--xtree容器 begin-->
	<div id="layui-xtree-demo1" style="width:400px;height:400px; border:1px solid black; margin:20px;overflow:auto;float:left;"></div>
	<!--xtree容器 end-->

	<div style="padding:30px;margin-top:20px; border:1px solid black;float:left;">
		<div style="margin:10px 20px;">服务端延迟两秒才发送数据，为了让你看清我是有加载提示的.....</div>
		<div style="margin:10px 20px;">你可以<a href="server/XtreeData.ashx" target="_blank" style="color:#009688;font-weight:bold;"> 点击这里 </a>来查看我的数据格式(很难看)</div>
		<input type="button" class="layui-btn" value="选中的末级check原dom对象" id="btn_getCk" />
		<input type="button" class="layui-btn" value="获取全部的check原dom对象" id="btn_getAllCk" />
		<br /><br /><br />
		<input id="txt_value" type="text" class="layui-input" style="width:150px;float:left;" placeholder="如：jd1.1" />
		<input type="button" class="layui-btn" value="通过值来获取其父级节点" id="btn_getParent" />

		<div id="result" style="width:100%;min-height:140px;padding:10px;line-height:22px; margin-top:20px; background-color:#eee;"></div>

	</div>
</form>
</body>
</html>
<!--引入你自己的layui文件-->
<script src="resource/plug/layui/layui.js"></script>
<!--xtree的js文件-->
<script src="resource/plug/layui/layui-xtree.js"></script>

<script type="text/javascript">

    layui.use('form', function () {
        var form = layui.form;

        //创建tree
        var xtree = new layuiXtree({
            elem: 'layui-xtree-demo1'           //放xtree的容器，id，不要带#号（必填）
            , form: form                       //layui form对象 （必填）
            , data: 'user/persTreeUtil'               //服务端地址（必填）
            , isopen: true                     //初次加载时全部展开，默认true
            , color: "#000"                    //图标颜色
            , icon: {                          //图标样式 （必填，不填会出点问题）
                open: "&#xe7a0;"               //节点打开的图标
                , close: "&#xe622;"            //节点关闭的图标
                , end: "&#xe621;"              //末尾节点的图标
            }
        });

        document.getElementById('btn_getCk').onclick = function () {

            var oCks = xtree.GetChecked(); //获取末级且选中的checkbox原dom对象，返回的类型:Array

            var res = '';
            for (var i = 0; i < oCks.length; i++) {
                res += oCks[i].value + '<br>';
            }
            document.getElementById('result').innerHTML = res;
        }

        document.getElementById('btn_getAllCk').onclick = function () {

            var oCks = xtree.GetAllCheckBox(); //获取全部的checkbox原dom对象，返回的类型:Array

            var res = '';
            for (var i = 0; i < oCks.length; i++) {
                res += oCks[i].value + '<br>';
            }
            document.getElementById('result').innerHTML = res;
        }


        document.getElementById('btn_getParent').onclick = function () {
            var val = document.getElementById('txt_value').value; //子级的value值

            var pck = xtree.GetParent(val); //通过值来获得父级checkbox原dom对象

            if (pck == null) //如果为null说明未查到父级或是已经是顶级节点
            {
                document.getElementById('result').innerHTML = 'null';
            }
            else {
                document.getElementById('result').innerHTML = pck.value;
            }
        }



    });


</script>
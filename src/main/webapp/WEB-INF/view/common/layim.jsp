<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    <title>index</title>

</head>
<body>

</body>

<script type="text/javascript">

    layui.use('layim', function (layim) {
        var websocket = null;
        //判断当前浏览器是否支持WebSocket
        if ('WebSocket' in window) {
            websocket = new WebSocket("wss://www.cczblog.cn/chatweb");
        }
        else {
            alert('Not support websocket');
        }
        //连接发生错误的回调方法
        websocket.onerror = function () {
            setMessageInnerHTML("error");
        };
        //连接成功建立的回调方法
        websocket.onopen = function (event) {
            setMessageInnerHTML("open");
        };
        //连接关闭的回调方法
        websocket.onclose = function () {

        };
        //监听窗口关闭事件，当窗口关闭时，主动去关闭websocket连接，防止连接还没断开就关闭窗口，server端会抛异常。
        window.onbeforeunload = function () {
            websocket.close();
        };

        //关闭连接
        function closeWebSocket() {
            websocket.close();
        }


        layim.config({
            //可同时配置多个
            init: {
                //配置客户信息
                mine: {
                    "username": "访客" //我的昵称
                    , "id": "100000123" //我的ID
                    , "status": "online" //在线状态 online：在线、hide：隐身
                    , "remark": "在深邃的编码世界，做一枚轻盈的纸飞机" //我的签名
                    , "avatar": "../resource/images/xls.jpg" //我的头像
                },

            },
            min: true,
            initSkin: "5.jpg",
            brief: true,
            tool: [{
                alias: 'code' //工具别名
                , title: '代码' //工具名称
                , icon: '&#xe64e;' //工具图标，参考图标文档
            }],

        }).chat({
            name: '客服姐姐'
            , type: 'friend'
            , avatar: '../resource/images/xy.jpg'
            , id: "123"
        });
        layim.on('tool(code)', function (insert, send, obj) { //事件中的tool为固定字符，而code则为过滤器，对应的是工具别名（alias）
            layer.prompt({
                title: '插入代码'
                , formType: 2
                , shade: 0
            }, function (text, index) {
                layer.close(index);
                insert('[pre class=layui-code]' + text + '[/pre]'); //将内容插入到编辑器，主要由insert完成
                //send(); //自动发送
            });
            console.log(this); //获取当前工具的DOM对象
            console.log(obj); //获得当前会话窗口的DOM对象、基础信息
        });
        layim.on('sendMessage', function (res) {
            var To = res.to;
            //console.log(data);
            if (To.type === 'friend') {
                layim.setChatStatus('<span style="color:#FF5722;">对方正在输入。。。</span>');
            }
            setTimeout(function () {
                websocket.send(JSON.stringify({
                    type: 'chatMessage' //随便定义，用于在服务端区分消息类型
                    , data: res
                }));
                //接收到消息的回调方法
                layim.setChatStatus('<span style="color:#FF5722;">在线</span>');
                var obj = {
                    username: To.name
                    , avatar: To.avatar
                    , id: To.id
                    , type: To.type
                    , content: "哈哈"
                }
                websocket.onmessage = function (res) {
                    console.log(res.data);
                    obj.content = JSON.parse(res.data).text;
                    layim.getMessage(obj); //res.data即你发送消息传递的数据（阅读：监听发送的消息）
                };

            }, 1000);
        });


    });

</script>
</html>



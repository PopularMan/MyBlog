<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/layui/css/layui.css" media="all">
<title>Insert title here</title>
</head>
<body>
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">layui 后台布局</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
      <li class="layui-nav-item"><a href="">控制台</a></li>
      <li class="layui-nav-item"><a href="">商品管理</a></li>
      <li class="layui-nav-item"><a href="">用户</a></li>
      <li class="layui-nav-item">
        <a href="javascript:;">其它系统</a>
        <dl class="layui-nav-child">
          <dd><a href="">邮件管理</a></dd>
          <dd><a href="">消息管理</a></dd>
          <dd><a href="">授权管理</a></dd>
        </dl>
      </li>
    </ul>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="javascript:;">
          <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
          贤心
        </a>
        <dl class="layui-nav-child">
          <dd><a href="">基本资料</a></dd>
          <dd><a href="">安全设置</a></dd>
        </dl>
      </li>
      <li class="layui-nav-item"><a href="">退了</a></li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed">
          <a class="" href="javascript:;">所有商品</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;">列表一</a></dd>
            <dd><a href="javascript:;">列表二</a></dd>
            <dd><a href="javascript:;">列表三</a></dd>
            <dd><a href="">超链接</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">解决方案</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;">列表一</a></dd>
            <dd><a href="javascript:;">列表二</a></dd>
            <dd><a href="">超链接</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item"><a href="">云市场</a></li>
        <li class="layui-nav-item"><a href="">发布商品</a></li>
      </ul>
    </div>
  </div>
  
  <div class="layui-body" style="padding:20px 20px">
    <!-- 内容主体区域 -->
    
          <blockquote class="layui-elem-quote">
                              特别声明：ECharts，一个纯 Javascript 的图表库，可以流畅的运行在 PC 和移动设备上，兼容当前绝大部分浏览器（IE8/9/10/11，Chrome，Firefox，Safari等），底层依赖轻量级的 Canvas 类库 ZRender，提供直观，生动，可交互，可高度个性化定制的数据可视化图表。如需使用或者详细更多案例可以访问官网 <a href="http://echarts.baidu.com/" style="color:red">ECharts</a>。 x-admin不承担任何版权问题。
            </blockquote>
           <ul class="layui-timeline">
			  <li class="layui-timeline-item">
			    <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
			    <div class="layui-timeline-content layui-text">
			      <h3 class="layui-timeline-title">8月18日</h3>
			      <p>
			        layui 2.0 的一切准备工作似乎都已到位。发布之弦，一触即发。
			        <br>不枉近百个日日夜夜与之为伴。因小而大，因弱而强。
			        <br>无论它能走多远，抑或如何支撑？至少我曾倾注全心，无怨无悔 <i class="layui-icon"></i>
			      </p>
			    </div>
			  </li>
			  <li class="layui-timeline-item">
			    <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
			    <div class="layui-timeline-content layui-text">
			      <h3 class="layui-timeline-title">8月16日</h3>
			      <p>杜甫的思想核心是儒家的仁政思想，他有“<em>致君尧舜上，再使风俗淳</em>”的宏伟抱负。个人最爱的名篇有：</p>
			      <ul>
			        <li>《登高》</li>
			        <li>《茅屋为秋风所破歌》</li>
			      </ul>
			    </div>
			  </li>
			  <li class="layui-timeline-item">
			    <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
			    <div class="layui-timeline-content layui-text">
			      <h3 class="layui-timeline-title">8月15日</h3>
			      <p>
			        中国人民抗日战争胜利72周年
			        <br>常常在想，尽管对这个国家有这样那样的抱怨，但我们的确生在了最好的时代
			        <br>铭记、感恩
			        <br>所有为中华民族浴血奋战的英雄将士
			        <br>永垂不朽
			      </p>
			    </div>
			  </li>
			  <li class="layui-timeline-item">
			    <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
			    <div class="layui-timeline-content layui-text">
			      <div class="layui-timeline-title">过去</div>
			    </div>
			  </li>
        </ul>
     
      <p>
        <button class="layui-btn layui-btn-primary">原始按钮</button>
        <button class="layui-btn">默认按钮</button>
        <button class="layui-btn layui-btn-normal">百搭按钮</button>
        <button class="layui-btn layui-btn-warm">暖色按钮</button>
        <button class="layui-btn layui-btn-danger">警告按钮</button>
        <button class="layui-btn layui-btn-disabled">禁用按钮</button>
      </p>
          <table id="test" lay-filter="table"></table> 
       
    

  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    © layui.com - 底部固定区域
  </div>
</div>
<script src="${pageContext.request.contextPath}/resource/layui/jquery-1.8.3.min.js"></script>
<script src="${pageContext.request.contextPath}/resource/layui/layui.js"></script>
<script>
layui.use('util', function(){
    var util = layui.util;
    
    //执行
    util.fixbar({
       bar1: true
      ,click: function(type){
        console.log(type);
        if(type === 'bar1'){
          alert('点击了bar1')
        }
      }
    });
  });

layui.use("element", function(){
  var element = layui.element; 
});
layui.use('table', function(){
	  var table = layui.table;
	//执行渲染
	  table.render({
	    elem: '#test', //指定原始表格元素选择器（推荐id选择器）
	    height: 300, //容器高度
	    url:"getUser",
	    cols: [[
	    	  {checkbox: true,width:100,align:"center"},
	
	          {field: "id", title: 'ID',width:200,edit:'text'},
	          {field: "name", title: '用户名',width:200,edit:'text'},
	          {field: "password", title: '密码',width:200,edit:'text'},
	          {field: "age", title: '年龄',width:200,edit:'text'},
	    	  {fixed: 'right', width:250,title:'操作列', align:'center', toolbar: '#barDemo'},
	    ]],
	    limit:4,
	    limits: [2,4,6],
	    page:true,
	    //skin: 'line', //行边框风格
	    even: true, //开启隔行背景
	    //size: 'sm'
	  });
	  table.on('tool(table)', function(obj){ //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
		  var data = obj.data; //获得当前行数据
		  var layEvent = obj.event; //获得 lay-event 对应的值
		  var tr = obj.tr; //获得当前行 tr 的DOM对象
		 
		  if(layEvent === 'detail'){ //查看
			  layer.msg("查看");
		    //do somehing
		  } else if(layEvent === 'del'){ //删除
		    layer.confirm('真的删除行么', function(index){
		      obj.del(); //删除对应行（tr）的DOM结构
		      layer.close(index);
		      //向服务端发送删除指令
		    });
		  } else if(layEvent === 'edit'){ //编辑
		    //do something
		    layer.msg("编辑");
		    //同步更新缓存对应的值
		    obj.update({
		      username: '123'
		      ,title: 'xxx'
		    });
		  }
		});
});
</script>
<script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-mini" lay-event="detail">查看</a>
  <a class="layui-btn layui-btn-mini" lay-event="edit">编辑</a>
  <a class="layui-btn layui-btn-danger layui-btn-mini" lay-event="del">删除</a>
</script>
</body>
</html>
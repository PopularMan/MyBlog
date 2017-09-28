<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resource/layui/css/layui.css"
	media="all">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resource/css/global.css"
	media="all">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resource/css/font-awesome.css"
	media="all">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resource/css/animate.min.css"
	media="all">
<style>
.article-title {
    text-align: center;
    margin: 20px 0px;
    color: white;
    font-weight: 700;
    text-shadow: 0 0 8px #000000;
    font-size: 24px;
    padding-top: 10px;
}
.article-info {
    border: 1px dashed #808080;
    font-size: 13px;
    color: #808080;
    padding: 5px 0;
    font-family: SimSun;
    text-align: center;
    margin: 0 0 10px;
 }
 .article-content{margin: 0;padding: 10px;font-family:"FangSong";font-size:14px;}
.layui-row{background-color:#fff;border-radius: 5px;box-shadow: 0 1px 8px #a6a6a6;margin-bottom: 10px;}
</style>
</head>

<body style="background-color:#eee" >
    <div class="layui-row">
      	<blockquote class="layui-elem-quote  animated zoomIn ">
					<div style="position: relative">
					     <i class="fa fa-home"></i> 一位技术大咖给JAVA程序员们的建议
					</div>
				</blockquote>
     </div>
    
    <div class="layui-row  ">
      <div class="animated zoomIn">
	       <div class="article-title">一位技术大咖给JAVA程序员们的建议</div>
	       <div class="article-info"> 编辑时间：2017-08-11 17:46:07 作者：Ycc </div>   
	       <div class="article-content">
	                 <p>17远远看去，倒像一个大号的车轮子在翻滚。</p><p>“你个子高，不舒服合蝉联翻筋斗，容易身模样，就这么牢牢地扎在了这个很好男儿的心中。不知何时，爱之花蕾悄悄儿地绽放。</p><p>三个月后，满玲玲回到学院，由于身板子不舒服合强，在18岁的他双肩上翩然起舞，“单足尖肩上转体180度”、“单足尖站头顶阿拉贝斯”、“单足尖站头顶踹燕”惊艳全场。</p><p>晚上歇息时，李岩张嘴了，“我，我这样伤脑筋与你搭档，实际上有目标。”“啥子目标？”“为了更便捷地练好这个项目，咱俩得处对象，你看合宜不？”满玲玲低下了头。李岩急了，“行仍然不可以？不可以咱俩仍然朋友。”“别闹，我回去想想。”“休想了，你如今应答我。”李岩的盛气凌人，让已有心理准备的满玲玲开了金口：“那……行吧。”</p><p>从训练技能房到寝室的路上，要通过一条很长的小路，小路修在半山腰，一边儿是半人高的铁栏杆，栏杆外就是深蓝无边的沧海。两人肩共同，静静地顺着小路走着，海浪温柔地匍伏在脚下，落日把爱的影子拉得长长的……</p>
	       </div> 
       </div>   
    </div>
    <div class="layui-row  animated zoomIn">
        <textarea id="demo" style="display: none;"></textarea> 
    </div>
     <div class="layui-row animated zoomIn">
       <button class="layui-btn">提交评论</button>
     </div>
</body>
<script src="${pageContext.request.contextPath}/resource/layui/layui.js"></script>
<script>
layui.use('layedit', function(){
  var layedit = layui.layedit;
  var $=layui.jquery;
  layedit.build('demo',{
	  height: 180 //设置编辑器高度
  }); //建立编辑器
 
});
</script>
</html>
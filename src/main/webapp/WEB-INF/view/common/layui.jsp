<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link href="${pageContext.request.contextPath}/resource/plug/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/resource/plug/layui/css/layui.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resource/images/xls.ico" type="image/x-icon">
<link href="${pageContext.request.contextPath}/resource/css/main.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/resource/css/animate.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/resource/plug/layui/layui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/main.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/common.js"></script>
<link href="${pageContext.request.contextPath}/resource/plug/pace/themes/black/pace-theme-flash.css" id="pacecss" rel="stylesheet" type="text/css" />
<script type="text/javascript" data-pace-option='{"ajax":false}'   src="${pageContext.request.contextPath}/resource/plug/pace/pace.min.js"></script>
<script>
    var skin= sessionStorage.getItem("skin");
     layui.use("jquery",function () {
         var $=layui.jquery;
         if(skin!=null){
             $("#pacecss").attr("href","../resource/plug/pace/themes/"+skin+"/pace-theme-flash.css");
             $("#skincss").attr("href","../resource/plug/skins/"+skin+".css");
         }
     })

</script>

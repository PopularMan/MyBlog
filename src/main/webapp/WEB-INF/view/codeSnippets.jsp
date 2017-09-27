<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
</head>
<body style="background-color: #fff">
     <div class="layui-row">
      	<blockquote class="layui-elem-quote  animated bounceInLeft ">

					<div style="position: relative">
					     <i class="fa fa-home"></i>代码片段
					   
					     <button class="layui-btn layui-btn-small" id="codeAddNew"><i class="layui-icon">&#xe654;</i></button>
					</div>
				</blockquote>
     </div>
       <div class="layui-row">
           <pre class="layui-code">
			    //代码区域
			    var a = 'hello layui';
			    var a = 'hello layui';
			     /** 
			     * 用户把SOAP请求发送给服务器端，并返回服务器点返回的输入流 
			     *  
			     * @param city 
			     *            用户输入的城市名称 
			     * @return 服务器端返回的输入流，供客户端读取 
			     * @throws Exception 
			     */  
			    private static InputStream getSoapInputStream(String city) throws Exception {  
			        try {  
			            String soap = getSoapRequest(city);  
			            System.out.println(soap);
			            if (soap == null) {  
			                return null;  
			            }  
			            URL url = new URL(  
			                    "http://www.webxml.com.cn/WebServices/WeatherWS.asmx");  
			            URLConnection conn = url.openConnection();  
			            conn.setUseCaches(false);  
			            conn.setDoInput(true);  
			            conn.setDoOutput(true);  
			  
			            conn.setRequestProperty("Content-Length", Integer.toString(soap  
			                    .length()));  
			            conn.setRequestProperty("Content-Type", "text/xml; charset=utf-8");  
			            conn.setRequestProperty("SOAPAction",  
			                    "http://WebXml.com.cn/getWeather");  
			  
			            OutputStream os = conn.getOutputStream();  
			            OutputStreamWriter osw = new OutputStreamWriter(os, "utf-8");  
			            osw.write(soap);  
			            osw.flush();  
			            osw.close();  
			  
			            InputStream is = conn.getInputStream();  
			            return is;  
			        } catch (Exception e) {  
			            e.printStackTrace();  
			            return null;  
			        }  
			    }  
			  
           </pre>  
               <pre class="layui-code" id="pre">
			    //代码区域
			    var a = 'hello layui';
			    var a = 'hello layui';
			     /** 
			     * 用户把SOAP请求发送给服务器端，并返回服务器点返回的输入流 
			     *  
			     * @param city 
			     *            用户输入的城市名称 
			     * @return 服务器端返回的输入流，供客户端读取 
			     * @throws Exception 
			     */  
			    private static InputStream getSoapInputStream(String city) throws Exception {  
			        try {  
			            String soap = getSoapRequest(city);  
			            System.out.println(soap);
			            if (soap == null) {  
			                return null;  
			            }  
			            URL url = new URL(  
			                    "http://www.webxml.com.cn/WebServices/WeatherWS.asmx");  
			            URLConnection conn = url.openConnection();  
			            conn.setUseCaches(false);  
			            conn.setDoInput(true);  
			            conn.setDoOutput(true);  
			  
			            conn.setRequestProperty("Content-Length", Integer.toString(soap  
			                    .length()));  
			            conn.setRequestProperty("Content-Type", "text/xml; charset=utf-8");  
			            conn.setRequestProperty("SOAPAction",  
			                    "http://WebXml.com.cn/getWeather");  
			  
			            OutputStream os = conn.getOutputStream();  
			            OutputStreamWriter osw = new OutputStreamWriter(os, "utf-8");  
			            osw.write(soap);  
			            osw.flush();  
			            osw.close();  
			  
			            InputStream is = conn.getInputStream();  
			            return is;  
			        } catch (Exception e) {  
			            e.printStackTrace();  
			            return null;  
			        }  
			    }  
			  
           </pre>     
      </div>
</body>
<script src="${pageContext.request.contextPath}/resource/layui/layui.js"></script>
<script>
layui.use(['code','layer'], function(){ //加载code模块
	 var $=layui.jquery;
	 var layer= parent.layer;
	  layui.code({
		  elem:"pre",
	      title: 'Excel导入导出',
	      height: '200px',
	      encode: true
	  }); //引用code方法
	  $("#codeAddNew").on("click",function(){
		  layer.open({
			  type: 1,
			  skin: 'layui-layer-rim', //加上边框
			  area: ['600px', '500px'], //宽高
			  content: 'html内容'
			});
	  });
	});
</script>

</html>
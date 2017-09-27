<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
<title>个人博客系统</title>
</head>
<body>
	<!-- 页面导航栏开始 -->
	<div class="fixed">
		<div class="layui-col-md9">
			<a href="#" class="title"> Person Blog</a>
			<ul class="layui-nav layui-layout-left">
				<li class="layui-nav-item layui-this"><a href="">个人博客</a></li>
				<li class="layui-nav-item"><a href="page/timeaxis" target='main'>时间轴</a></li>
				<li class="layui-nav-item"><a href="page/codeSnippets" target='main'>代码片段</a></li>
				<li class="layui-nav-item"><a href="javascript:;">暂未开放</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="">暂未开放</a>
						</dd>
						<dd>
							<a href="">暂未开放</a>
						</dd>
						<dd>
							<a href="">暂未开放</a>
						</dd>
					</dl></li>
		</div>
		<div class="layui-col-md3">
			<iframe allowtransparency="true" style="float: right" frameborder="0"
				width="410" height="64" scrolling="no" 
				src="//tianqi.2345.com/plugin/widget/index.htm?s=2&z=3&t=1&v=2&d=2&bd=0&k=000000&f=ffffff&ltf=009944&htf=cc0000&q=1&e=1&a=1&c=54511&w=410&h=64&align=center"></iframe>
		</div>
	</div>
	<!-- 页面导航栏结束 -->
 
	<!-- 一般是页面主题部分 -->
	<div class="layui-container" style="padding: 10px; margin-top: 70px;position: relative;">
	  <!-- 左边部分 -->
      <div class="blog-left">
		<iframe src="page/PersonBlog" id="iFrame1" class="iframe" onload="SetWinHeight(this)"  name="main" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes" width="100%" height="100%" frameborder="0" ></iframe>
      </div>
		<!-- 右边部分 -->
		
		<div class="blog-right" >
		     
		     <div class="mouduletop animated bounceInRight">
		          <div class="layui-row">
		            <blockquote class="layui-elem-quote " style="background-color: #009688">个人博客</blockquote> 
		          </div>         
		     </div>
		     <div class="moudulebottom animated bounceInRight">
		          <div class="layui-row">
		            <blockquote class="layui-elem-quote " style="background-color: #009688">最新资讯</blockquote> 
		          </div>         
		     </div>
	
		
		</div>

		<!-- 底部分页部分 -->
		
	
	</div>


	
	<script src="${pageContext.request.contextPath}/resource/layui/jquery-1.8.3.min.js"></script>
	<script src="${pageContext.request.contextPath}/resource/layui/layui.js"></script>
	<script>
	
		function SetWinHeight(obj) {
			var win = obj;
			if (document.getElementById) {
				if (win && !window.opera) {
					if (win.contentDocument
							&& win.contentDocument.body.offsetHeight)
						win.height = win.contentDocument.body.offsetHeight;
					else if (win.Document && win.Document.body.scrollHeight)
						win.height = win.Document.body.scrollHeight;
				}
			}
		}
		layui.use([ 'element', 'layer', 'table', 'laypage' ], function() {
			var element = layui.element;
			var layer = layui.layer;
			var laypage = layui.laypage;
			laypage.render({
				elem : 'blog-page' //注意，这里的 test1 是 ID，不用加 # 号
				,
				count : 50
			//数据总数，从服务端得到
			});
		});
	</script>
	<%-- <!-- canvas动态背景 -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resource/js/three.min.js"></script>
	<script type="text/javascript">
		var SEPARATION = 100, AMOUNTX = 50, AMOUNTY = 50;

		var container;
		var camera, scene, renderer;

		var particles, particle, count = 0;

		var mouseX = 0, mouseY = 0;

		var windowHalfX = window.innerWidth / 2;
		var windowHalfY = window.innerHeight / 2;

		init();
		animate();

		function init() {

			container = document.createElement('div');
			container.id = "canvanDiv";
			document.body.appendChild(container);

			camera = new THREE.PerspectiveCamera(75, window.innerWidth
					/ window.innerHeight, 1, 10000);
			camera.position.z = 1000;

			scene = new THREE.Scene();

			particles = new Array();

			var PI2 = Math.PI * 2;
			var material = new THREE.ParticleCanvasMaterial({

				color : 0xffffff,
				program : function(context) {

					context.beginPath();
					context.arc(0, 0, 1, 0, PI2, true);
					context.fill();

				}

			});

			var i = 0;

			for (var ix = 0; ix < AMOUNTX; ix++) {

				for (var iy = 0; iy < AMOUNTY; iy++) {

					particle = particles[i++] = new THREE.Particle(material);
					particle.position.x = ix * SEPARATION
							- ((AMOUNTX * SEPARATION) / 2);
					particle.position.z = iy * SEPARATION
							- ((AMOUNTY * SEPARATION) / 2);
					scene.add(particle);

				}

			}

			renderer = new THREE.CanvasRenderer();
			renderer.setSize(window.innerWidth, window.innerHeight);
			container.appendChild(renderer.domElement);

			document.addEventListener('mousemove', onDocumentMouseMove, false);
			document
					.addEventListener('touchstart', onDocumentTouchStart, false);
			document.addEventListener('touchmove', onDocumentTouchMove, false);

			//

			window.addEventListener('resize', onWindowResize, false);

		}

		function onWindowResize() {

			windowHalfX = window.innerWidth / 2;
			windowHalfY = window.innerHeight / 2;

			camera.aspect = window.innerWidth / window.innerHeight;
			camera.updateProjectionMatrix();

			renderer.setSize(window.innerWidth, window.innerHeight);

		}

		//

		function onDocumentMouseMove(event) {

			mouseX = event.clientX - windowHalfX;
			mouseY = event.clientY - windowHalfY;

		}

		function onDocumentTouchStart(event) {

			if (event.touches.length === 1) {

				event.preventDefault();

				mouseX = event.touches[0].pageX - windowHalfX;
				mouseY = event.touches[0].pageY - windowHalfY;

			}

		}

		function onDocumentTouchMove(event) {

			if (event.touches.length === 1) {

				event.preventDefault();

				mouseX = event.touches[0].pageX - windowHalfX;
				mouseY = event.touches[0].pageY - windowHalfY;

			}

		}

		//

		function animate() {

			requestAnimationFrame(animate);

			render();

		}

		function render() {

			camera.position.x += (mouseX - camera.position.x) * .05;
			camera.position.y += (-mouseY - camera.position.y) * .05;
			camera.lookAt(scene.position);

			var i = 0;

			for (var ix = 0; ix < AMOUNTX; ix++) {

				for (var iy = 0; iy < AMOUNTY; iy++) {

					particle = particles[i++];
					particle.position.y = (Math.sin((ix + count) * 0.3) * 50)
							+ (Math.sin((iy + count) * 0.5) * 50);
					particle.scale.x = particle.scale.y = (Math
							.sin((ix + count) * 0.3) + 1)
							* 2 + (Math.sin((iy + count) * 0.5) + 1) * 2;

				}

			}

			renderer.render(scene, camera);

			count += 0.1;

		}
	</script>
 --%>

</body>
</html>
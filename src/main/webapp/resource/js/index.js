
// 加载layui
layui.use([ 'element', 'layer', 'table', 'laypage', 'util' ], function() {
	var element = layui.element;
	var layer = layui.layer;
	var $ = layui.jquery;
	// 工具集
	var util = layui.util;
	// 执行
	util.fixbar({
		bar1 : true,
		bar2 : "&#xe60b;",
		bgcolor:"#009688",
		click : function(type) {
			console.log(type);
			if (type === 'bar1') {
				layer.msg("你点它干啥，又没啥用")
			}
			if (type === 'bar2') {
				layer.tips("此情此景，我想吟诗一首", this);
			}
		}
	});

	$(function() {
		// 图标hover时间
		var index;
		$(".incospan").each(function(m, n) {
			$(n).hover(function() {
				if (m == 0) {
					index = layer.tips('鄙人来自河南信阳', this);
				}
				if (m == 1) {
					index = layer.tips('1255780376', this);
				}
				if (m == 2) {
					index = layer.tips('15238067632@163.com', this);
				}
				if (m == 3) {
					index = layer.tips('微信吗？自己猜', this);
				}
			}, function() {
				layer.close(index);
			})
		});
		// 图片转换事件
		$("#myimg").click(function() {
			if ($(this).attr("flag") == 0) {
				$(this).removeClass("animated rotateIn");
				$(this).addClass("animated rotateIn");
				$(this).attr("src", "/MyBlog/resource/img/zgr.jpg");
				$(this).attr("flag", 1);
			} else {
				$(this).removeClass("animated rotateIn");
				$(this).addClass("animated rotateIn");
				$(this).attr("src", "/MyBlog/resource/img/xls.jpg");
				$(this).attr("flag", 0);
			}
		});
	

	});
});
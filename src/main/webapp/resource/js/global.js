/*

@Name：yxg
@Author：zcc
@Site：http://www.cczblog.cn

*/




layui.use(['element', 'layer', 'form'], function () {
    var $ = layui.jquery;
    var layer=layui.layer;

    if(user!=""){
    	 $("#loginout").toggleClass("layui-hide").siblings('a').toggleClass('layui-hide');
    	 //$("#loginbtn").toggleClass('layui-hide').siblings('a.blog-user').toggleClass('layui-hide');
    }else{
    
     	 $("#loginbtn").addClass('layui-hide');
    }
    var index;
    $("#choose,#choosexs").click(function(){

        $(".skin,.overflay").slideToggle();
    });
    $(".overflay").click(function(){

        $(".skin,.overflay").toggle("slow");
    });
    $(".skin").find("a").click(function(){
        $(".skin .pic a").each(function(k,v){
            $(v).find("div").remove();
        });
        var image=$(this).find("img").attr("src").replace(/-\d*/ig,"");
        $("body").css("background-image","url("+image+")").fadeIn("slow");
        sessionStorage.setItem("src",image);
        var width=$(this).find("img").width();
        var height=$(this).find("img").height();
        $(this).append("<div class='mask' style='width:"+width+"px;height:"+height+"px'></div>");
    });
    var sessionSrc=sessionStorage.getItem("src");

    $("body").css("background-image","url("+sessionSrc+")").fadeIn("slow");
    $("body").css("background-size","cover");
    $("#loginbtn").hover(function(){
    	index=layer.tips('QQ登录', '#loginbtn',{
    		tips:1
    	});
    },function(){
    	layer.close(index);
    });
    $("#loginout").hover(function(){
    	index=layer.tips('退出登录', '#loginout',{
    		tips:1
    	});
    },function(){
    	layer.close(index);
    });
    //模拟QQ登陆
    $('.blog-user').click(function () {
        var user = this;
        var index = layer.msg('正在通过QQ登入', {icon:16, shade: 0.1, time:0});
        setTimeout(function () {
            layer.close(index);
        },500);
    });

    //子栏目导航点击事件
    $('.child-nav span').click(function () {
        layer.msg('切换到相应栏目');
        $(this).addClass('child-nav-btn-this').siblings().removeClass('child-nav-btn-this');
    });


    //侧边导航开关点击事件
    $('.blog-navicon').click(function () {
        var sear = new RegExp('layui-hide');
        if (sear.test($('.blog-nav-left').attr('class'))) {
            leftIn();
        } else {
            leftOut();
        }
    });
    //侧边导航遮罩点击事件
    $('.blog-mask').click(function () {
        leftOut();
    });
    //blog-body和blog-footer点击事件，用来关闭百度分享和类别导航
    $('.blog-body,.blog-footer').click(function () {
        //shareOut();
        categoryOut();
    });
    //类别导航开关点击事件
    $('.category-toggle').click(function (e) {
        e.stopPropagation();    //阻止事件冒泡
        categroyIn();
    });
    //类别导航点击事件，用来关闭类别导航
    $('.article-category').click(function () {
        categoryOut();
    });
    //具体类别点击事件
    $('.article-category > a').click(function (e) {
        e.stopPropagation(); //阻止事件冒泡
    });


    //显示侧边导航
    function leftIn() {
        $('.blog-mask').unbind('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend');
        $('.blog-nav-left').unbind('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend');

        $('.blog-mask').removeClass('maskOut');
        $('.blog-mask').addClass('maskIn');
        $('.blog-mask').removeClass('layui-hide');
        $('.blog-mask').addClass('layui-show');

        $('.blog-nav-left').removeClass('leftOut');
        $('.blog-nav-left').addClass('leftIn');
        $('.blog-nav-left').removeClass('layui-hide');
        $('.blog-nav-left').addClass('layui-show');
    }
    //隐藏侧边导航
    function leftOut() {
        $('.blog-mask').on('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function () {
            $('.blog-mask').addClass('layui-hide');
        });
        $('.blog-nav-left').on('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function () {
            $('.blog-nav-left').addClass('layui-hide');
        });

        $('.blog-mask').removeClass('maskIn');
        $('.blog-mask').addClass('maskOut');
        $('.blog-mask').removeClass('layui-show');

        $('.blog-nav-left').removeClass('leftIn');
        $('.blog-nav-left').addClass('leftOut');
        $('.blog-nav-left').removeClass('layui-show');
    }
    //显示类别导航
    function categroyIn() {
        $('.category-toggle').addClass('layui-hide');
        $('.article-category').unbind('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend');

        $('.article-category').removeClass('categoryOut');
        $('.article-category').addClass('categoryIn');
        $('.article-category').addClass('layui-show');
    }
    //隐藏类别导航
    function categoryOut() {
        $('.article-category').on('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function () {
            $('.article-category').removeClass('layui-show');
            $('.category-toggle').removeClass('layui-hide');
        });

        $('.article-category').removeClass('categoryIn');
        $('.article-category').addClass('categoryOut');
    }

});

Date.prototype.format = function(fmt) { 
    var o = { 
       "M+" : this.getMonth()+1,                 //月份 
       "d+" : this.getDate(),                    //日 
       "h+" : this.getHours(),                   //小时 
       "m+" : this.getMinutes(),                 //分 
       "s+" : this.getSeconds(),                 //秒 
       "q+" : Math.floor((this.getMonth()+3)/3), //季度 
       "S"  : this.getMilliseconds()             //毫秒 
   }; 
   if(/(y+)/.test(fmt)) {
           fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length)); 
   }
    for(var k in o) {
       if(new RegExp("("+ k +")").test(fmt)){
            fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));
        }
    }
   return fmt; 
}
window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"1","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"16"},"slide":{"type":"slide","bdImg":"6","bdPos":"right","bdTop":"250"}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)]
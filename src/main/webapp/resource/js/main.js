
layui.use(['element', 'layer', 'util', 'form','carousel'], function () {
    var $ = layui.jquery;
    var layer=layui.layer;
    var carousel = layui.carousel;
    $(function(){
    	$(".menubar").on("click",function(){
    		 var oClass=$(".layui-side").hasClass("mini");
    		 //alert(oClass)
    		 if(!oClass){
    			 $(".layui-side").animate({
        			 left:"-200px"
        		 })
        		 $(".layui-body").animate({
        			 left:"0"
        		 })
        		  $(".layui-footer").animate({
        			 left:"0"
        		 })
        		 $(".layui-side").addClass("mini");
    		 }else{
    			 $(".layui-side").animate({
        			 left:"0"
        		 })
        		  $(".layui-body").animate({
        			 left:"200px"
        		 }) 
        	     $(".layui-footer").animate({
        			 left:"200px"
        		 })
        		 $(".layui-side").removeClass("mini");
    		 }
    		
    	});
    });
    
    
    
    
});
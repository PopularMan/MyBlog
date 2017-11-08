/*f

@Name：
@Author：Absolutely 
@Site：http://www.lyblogs.cn

*/

layui.use(['flow','jquery'], function () {
    var $ = layui.jquery;
    $(function () {
        //播放公告
        playAnnouncement(3000);
    });
    var flow=layui.flow;
    flow.load({
        elem: '#blog-main-left', //指定列表容器
        isAuto:true,
        end:"<a href='#'>做人留一线，日后好想见<i class='layui-icon' style='font-size:15px;'>&#xe60c;</i></a>",
        done: function(page, next){ //到达临界点（默认滚动触发），触发下一页
        	setTimeout(function(){
	          //以jQuery的Ajax请求为例，请求下一页数据（注意：page是从2开始返回）
	          $.get('blog/Blog?limit=3&pageNumber='+page, function(res){
	            //假设你的列表返回在data集合中
	            var lis=[];
	            var blog="";
	            layui.each(res.data, function(index, item){
	            	blog='<div class="article shadow animated zoomIn">'+
									    '<div class="article-left">'+
										'<img src="'+item.blog_coverimage+'" alt="'+item.blog_title+'"/>'+
									  '</div>'+
									'<div class="article-right animated zoomIn">'+
										'<div class="article-title">'+
											'<a href="article/'+item.blog_id+'">'+item.blog_title+'</a>'+
										'</div>'+
										'<div class="article-abstract">'+item.blog_futitle+'</div></div>'+
											'<div class="clear"></div>'+
											'<div class="article-footer">'+
												'<span><i class="fa fa-clock-o"></i>&nbsp;&nbsp;'+item.blog_time+'</span>'+
												'<span class="article-author"><i class="fa fa-user"></i>&nbsp;&nbsp;'+item.blog_author+'</span>'+
												'<span><i class="fa fa-tag"></i>&nbsp;&nbsp;<a href="#">'+item.btype_name+'</a></span>'+
												'<span class="article-viewinfo"><i class="fa fa-thumbs-o-up"></i>&nbsp;'+item.blog_dz+'</span>'+
												'<span class="article-viewinfo"><i class="fa fa-eye"></i>&nbsp;'+item.blog_eyes+'</span>'+
												'<span class="article-viewinfo"><i class="fa fa-commenting"></i>&nbsp;'+item.blog_dz+'</span></div>'+
												'</div>';
	            	lis.push('<li>'+ blog +'</li>');
	            });  
	            //执行下一页渲染，第二参数为：满足“加载更多”的条件，即后面仍有分页
	            //pages为Ajax返回的总页数，只有当前页小于总页数的情况下，才会继续出现加载更多
	            next(lis.join(''), page < res.count);    
	          });
	          },500);
        	
        	
        	
        }
      });
    
    function playAnnouncement(interval) {
        var index = 0;
        var $announcement = $('.home-tips-container>span');
        //自动轮换
        setInterval(function () {
            index++;    //下标更新
            if (index >= $announcement.length) {
                index = 0;
            }
            $announcement.eq(index).stop(true, true).fadeIn().siblings('span').fadeOut();  //下标对应的图片显示，同辈元素隐藏
        }, interval);
    }

});


//监听窗口大小改变



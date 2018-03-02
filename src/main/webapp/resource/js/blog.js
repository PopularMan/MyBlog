/*

@Name：yxg
@Author：zcc
@Site：http://www.cczblog.cn

*/




layui.use(['element', 'layer', 'util', 'form','carousel','flow'], function () {
    var $ = layui.jquery;
    var layer = layui.layer;
    var $ = layui.jquery;

    var flow = layui.flow;
    var count=0;
    var grid={
        getBlog:function(typeid,limit,pageNumber){
            $("#blog-main-left").empty();
            flow.load({
                elem: '#blog-main-left', //指定列表容器
                isAuto: true,
                end: "<a href='#'>木有了<i class='layui-icon' style='font-size:15px;'>&#xe60c;</i></a>",
                done: function (page, next) { //到达临界点（默认滚动触发），触发下一页
                    setTimeout(function () {
                        //以jQuery的Ajax请求为例，请求下一页数据（注意：page是从2开始返回）
                        var url="blog/Blog?";
                        if(typeid==null){
                             url+="limit="+limit+"&pageNumber="+page;
                        }else{
                             url+="limit="+limit+"&pageNumber="+page+"&typeid="+typeid;
                        }

                        $.get(url, function (res) {
                            //假设你的列表返回在data集合中
                            var lis = [];
                            var blog = "";
                            layui.each(res.data, function (index, item) {
                                if(index==0){
                                    count=res.count;
                                }
                                if (item.blog_state != 0) {
                                    blog = '<div class="article shadow animated zoomIn">' +
                                        '<div class="article-left">' +
                                        '<img src="/MyBlog/resource/upload/images/' + item.blog_coverimage + '" alt="' + item.blog_title + '"/>' +
                                        '</div>' +
                                        '<div class="article-right animated zoomIn">' +
                                        '<div class="article-title">' +
                                        '<a href="article/' + item.blog_id + '.html">' + item.blog_title + '</a>' + item.blog_tag + '' +
                                        '</div>' +
                                        '<div class="article-abstract">' + item.blog_futitle + '</div></div>' +
                                        '<div class="clear"></div>' +
                                        '<div class="article-footer">' +
                                        '<span><i class="fa fa-clock-o"></i>&nbsp;&nbsp;' + item.blog_time + '</span>' +
                                        '<span class="article-author"><i class="fa fa-user"></i>&nbsp;&nbsp;' + item.blog_author + '</span>' +
                                        '<span><i class="fa fa-tag"></i>&nbsp;&nbsp;<a href="#">' + item.btype_name + '</a></span>' +
                                        '<span class="article-viewinfo"><i class="fa fa-thumbs-o-up"></i>&nbsp;' + item.blog_dz + '</span>' +
                                        '<span class="article-viewinfo"><i class="fa fa-eye"></i>&nbsp;' + item.blog_eyes + '</span>' +
                                        '<span class="article-viewinfo"><i class="fa fa-commenting"></i>&nbsp;' + item.blog_dz + '</span></div>' +
                                        '</div>';
                                    lis.push('<li>' + blog + '</li>');
                                }
                            });
                            //执行下一页渲染，第二参数为：满足“加载更多”的条件，即后面仍有分页
                            //pages为Ajax返回的总页数，只有当前页小于总页数的情况下，才会继续出现加载更多
                            next(lis.join(''), page < count);
                        });
                    }, 500);

                }
            });

         }
    }
    $.get('blog/Blog?limit=8&pageNumber=1' , function (res) {
        layui.each(res.data, function (index, item) {
            if (index <= 7) {
                $("#blogsrank").append("<li><i class=\"fa-li fa fa-hand-o-right\"></i><a href=\"article/" + item.blog_id + ".html\" target='_blank'>" + item.blog_title + "</a></li>");
            }
        });
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

    <!--轮播js代码!-->
    var indexlb = 0;
    $(".btn span").click(function () {
        $(this).addClass("active").siblings().removeClass("active");
        indexlb = $(this).index();
        $(".imgList").animate({"left": indexlb * -1170});
    });
    $(".prev").click(function () {
        if (index > 0 && index <= 5) {
            var left = -1170 * (indexlb - 1);
            $(".imgList").animate({"left": left});
            indexlb--;
            $(".btn span").eq(indexlb).addClass("active").siblings().removeClass("active");
        }

    });
    $(".next").click(function () {
        if (indexlb >= 0 && indexlb < 5) {
            var left = -1170 * (indexlb + 1);
            $(".imgList").animate({"left": left});
            indexlb++;
            $(".btn span").eq(indexlb).addClass("active").siblings().removeClass("active");
            console.log(indexlb);
        }

    });
    $(".prev,.next").hover(function () {
        $(this).css({"opacity": 1});
    }, function () {
        $(this).css({"opacity": 0.2});
    });

    //自动轮播
    function autoPlay() {
        if (indexlb >= 0 && indexlb < 5) {
            indexlb++;
            $(".imgList").animate({"left": indexlb * -1170});
            $(".btn span").eq(indexlb).addClass("active").siblings().removeClass("active");
        } else {
            indexlb = 0;
        }
    }


    //加载栏目类型
    $.ajax({
        url: "blog/getBlogType",
        success: function(res){
            if (res.length > 0) {
                $.each(res, function (k, v) {
                    $("#blogtype").append("<div typeid=" + v.btypeId + " class=\"set_8_button4 outline\" href=\"#\"><i class=\"fa fa-hand-o-right\" style=\"color:#009688\"></i>&nbsp;" + v.btypeName + "<span class=\"lines\"></span></div>");

                });
            }
            $("#blogtype .set_8_button4").each(function(k,v){
                 $(v).on("click",function(){
                     var tid=$(this).attr("typeid");
                     grid.getBlog(tid,4,1);
                 });
              });


        },
        dataType: "json",
        error:function(res){
            layer.msg("加载类型异常");
        }
      });
    $(function () {
        //播放公告
        playAnnouncement(3000);
        grid.getBlog(null,4,1);
    });


});
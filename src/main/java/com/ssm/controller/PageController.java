package com.ssm.controller;

import com.ssm.dao.IBlogDao;
import com.ssm.dao.ISysDao;
import com.ssm.dto.Blog;
import com.ssm.service.IBlogService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
public class PageController {
    @Autowired
    private IBlogDao blogDao;
    @Autowired
    private ISysDao sysDao;
   @RequestMapping("{path}")
   public String pathPre(@PathVariable("path") String path) {
	   return "view/"+path;
   }
   @RequestMapping("article/{id}")
   public String articleDetail(@PathVariable("id") String id,HttpServletRequest req) {
       if(id!=null){
           Blog blog=blogDao.selectBlog(id);
           if(null!=blog.getBlog_id()){
                //阅读量加1
                blog.setBlog_eyes(blog.getBlog_eyes()+1);
                blogDao.updateBlog(blog);
                //查询评论内容
                List<Map> coments=blogDao.selectBlogComment(blog.getBlog_id());

                req.setAttribute("comment",coments);
                req.setAttribute("blog",blog);
           }else{
               return "view/error/404.jsp";
           }
       }
       return "view/details";
   }
   @RequestMapping("admin/{page}")
   public String adminPath(@PathVariable("page")String page,HttpServletRequest request) throws Exception {
	   return "view/admin/"+page;
   }
   @RequestMapping("sys/{page}")
   public String adminUser(@PathVariable("page")String page,HttpServletRequest request) throws Exception {
       if(StringUtils.isBlank(page)) {
    	   return "view/sys/index";
       }
	   return "view/sys/"+page;
   }
    @RequestMapping("sys/editBlog")
    public String addOrUpdateBlog(String id,HttpServletRequest request) throws Exception {

        if(!StringUtils.isBlank(id)) {
            request.setAttribute("blog",blogDao.selectBlog(id));
        }
        return "view/sys/blog/add_blog";
    }
    @RequestMapping("sys/menu")
    public String addOrUpdateMenu(String id,HttpServletRequest request) throws Exception {

        if(!StringUtils.isBlank(id)) {
            request.setAttribute("menu",sysDao.selectPerById(Integer.parseInt(id)));
        }
        return "view/sys/menus/menu_add";
    }
    @RequestMapping("sys/role")
    public String addOrUpdateRole(String id,HttpServletRequest request) throws Exception {
        if(!StringUtils.isBlank(id)) {
            request.setAttribute("id",id);
        }
        return "view/sys/roles/role_pers";
    }
   
   
}

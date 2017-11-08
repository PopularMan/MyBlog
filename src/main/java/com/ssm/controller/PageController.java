package com.ssm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ssm.dto.Blog;
import com.ssm.service.IBlogService;
@Controller
public class PageController {
	
   @Autowired private IBlogService blogService;
   @RequestMapping("{path}")
   public String pathPre(@PathVariable("path") String path) {	   
	   return "view/"+path;
   }
   @RequestMapping("article/{id}")
   public String articleDetail(@PathVariable("id") String id) {	   
	   return "view/details";
   }
   @RequestMapping("admin/login")
   public String adminPath() {	
	   System.out.println("999");
	   return "login";
   }
   @RequestMapping("blogDetail")
   public ModelAndView PersonBlogDetail(String id) {
	   ModelAndView model=new ModelAndView();
	   if(id!=null){
		   Blog blog=blogService.selectBlog(id);  
		   model.addObject("blog", blog);
		   model.setViewName("PersonBlogDetail");
	   }else{
		   model.setViewName("PersonBlogDetail");
	   }
	   return model;
   }
   
}

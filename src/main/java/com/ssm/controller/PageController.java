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
   public String pageConvert(@PathVariable("path") String path) {
	   return path;
   }
   @RequestMapping("article/{id}")
   public String articleDetail(@PathVariable("id") String id) {	   
	   return "details";
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

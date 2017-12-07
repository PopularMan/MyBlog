package com.ssm.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import com.ssm.dto.Blog;
@Controller
public class PageController {
	
   @RequestMapping("{path}")
   public String pathPre(@PathVariable("path") String path) {	
	   System.out.println("路径"+path);
	   return "view/"+path;
   }
   @RequestMapping("article/{id}")
   public String articleDetail(@PathVariable("id") String id) {
       System.out.printf("0000");
       return "view/details";
   }
   @RequestMapping("admin/{page}")
   public String adminPath(@PathVariable("page")String page,HttpServletRequest request) throws Exception {

	   return "view/admin/"+page;
   }
   @RequestMapping("user/{page}")
   public String adminUser(@PathVariable("page")String page,HttpServletRequest request) throws Exception {
       if(StringUtils.isBlank(page)) {
    	   return "view/user/index";
       }
	   return "view/user/"+page;
   }
   
   
}

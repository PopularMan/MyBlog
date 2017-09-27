package com.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("page")
@Controller
public class PageController {
   @RequestMapping("PersonBlog")
   public String PersonBlog() {
	   return "PersonBlog";
   }
   @RequestMapping("blogDetail")
   public String PersonBlogDetail() {
	   return "PersonBlogDetail";
   }
   @RequestMapping("timeaxis")
   public String timeaxis() {
	   return "timeaxis";
   }
   @RequestMapping("codeSnippets")
   public String codeSnippets() {
	   return "codeSnippets";
   }
 
}

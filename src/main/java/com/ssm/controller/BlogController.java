package com.ssm.controller;

import com.ssm.dto.Blog;
import com.ssm.service.IBlogService;
import com.ssm.util.JsonUtils;
import com.ssm.util.PageParam;
import com.ssm.util.PageUtil;
import org.apache.log4j.Logger;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

/**
 * 博客控制器
 * @author 张超超
 *
 */
@RequestMapping("blog")
@RestController
public class BlogController {
	private Logger log = Logger.getLogger("BlogController.class");
	@Autowired
	private IBlogService blogService;
	/**
	 * 后台新增博客
	 * @param
	 * @param
	 * @return
	 */
	@RequestMapping(value="/saveBlog",method=RequestMethod.POST,produces="application/json;charset=UTF-8")
	@RequiresPermissions("user:addBlog")
	public Boolean insertBlog(Blog blog,HttpServletRequest req){
		log.debug("权限");
		if(null!=blog){
			log.info("插入"+blog);
			//ConstantValue.tepmpImagePath=ConstantValue.tepmpImagePath.replaceAll("\\\\", "/");
			//blog.setBlog_coverimage(ConstantValue.tepmpImagePath);
			//blog.setBlog_coverimage(blog.getBlog_coverimage().substring(blog.getBlog_coverimage().indexOf("img"), blog.getBlog_coverimage().length()));
			return blogService.insertBlog(blog);
		}
		return false;
	}
	@RequestMapping(value="/test")
	@RequiresPermissions("user:add")
	public Boolean test(){
		log.debug("权限");
/*		if(null!=blog){
			log.info("插入"+blog);
			ConstantValue.tepmpImagePath=ConstantValue.tepmpImagePath.replaceAll("\\\\", "/");
			//blog.setBlog_coverimage(ConstantValue.tepmpImagePath);
			blog.setBlog_coverimage(blog.getBlog_coverimage().substring(blog.getBlog_coverimage().indexOf("img"), blog.getBlog_coverimage().length()));
			blog.setBlog_author(req.getRemoteHost());
			return blogService.insertBlog(blog);
		}*/
		return true;
	}
	/**
	 * 后台分页博客
	 * @param pageNumber
	 * @param limit
	 * @return
	 */
	@RequestMapping(value="/Blog",method=RequestMethod.GET,produces="application/json;charset=UTF-8")
	public PageUtil getBlogs(Integer pageNumber,Integer limit){
		if(pageNumber!=null || limit!=null){
			log.info("查询分页博客"+pageNumber+limit);
			PageParam param=new PageParam(pageNumber,limit);
			return  blogService.getBlogs(param);
		}
		return null;
	}
	/**
	 * 前台流加载博客
	 */
	@RequestMapping("/json")
    public String TestTree(){
		StringBuffer str=new StringBuffer();
		str.append("[{title:'节点1',value:'jd1',checked:false,disabled:false,data:[" +
				"     {title:'节点1.1',value:'jd1.1',checked:false,disabled:false,data:[]}" +
				"    ,{title:'节点1.2',value:'jd1.2',checked:false,disabled:false,data:[]}" +
				"    ,{title:'节点1.3',value:'jd1.3',checked:false,disabled:false,data:[]}" +
				"    ,{title:'节点1.4',value:'jd1.4',checked:false,disabled:false,data:[]}" +
				"]},{title:'节点2',value:'jd2',checked:false,disabled:false,data:[" +
				"     {title:'节点2.1',value:'jd2.1',checked:false,disabled:false,data:[]}" +
				"    ,{title:'节点2.2',value:'jd2.2',checked:false,disabled:false,data:[" +
				"           {title:'节点2.2.1',value:'jd2.2.1',checked:true,disabled:false,data:[]}" +
				"           ,{title:'节点2.2.2',value:'jd2.2.2',checked:false,disabled:false,data:[]}" +
				"           ,{title:'节点2.2.3',value:'jd2.2.3',checked:false,disabled:false,data:[]}" +
				"           ,{title:'节点2.2.4',value:'jd2.2.4',checked:false,disabled:false,data:[]}" +
				"]}" +
				"]");
    	return JsonUtils.string2json( str.toString());
	}




}

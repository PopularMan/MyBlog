package com.ssm.controller;

import com.ssm.dto.ActiveUser;
import com.ssm.dto.Blog;
import com.ssm.dto.BlogType;
import com.ssm.service.IBlogService;
import com.ssm.util.*;
import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	@RequestMapping(value="/saveOrUpdateBlog",method=RequestMethod.POST,produces="application/json;charset=UTF-8")
	@RequiresPermissions("blog:airtcle:add_update")
	public Boolean insertBlog(Blog blog,HttpServletRequest req){
		if(null!=blog){
            HttpSession session=req.getSession();
			ActiveUser admin=(ActiveUser) session.getAttribute("admin");
			blog.setBlog_author(admin.getUsername());
			if(blog.getBlog_id()!="" && blog.getBlog_id()!=null){
				//修改操作
				System.out.println("打印修改内容"+blog.getBlog_article());
				System.out.println("打印修改斜杠内容"+(blog.getBlog_article().replaceAll("\\\\", "/")));
				return blogService.updateBlog(blog);
			}
			return blogService.insertBlog(blog);
		}
		return false;
	}
	@RequestMapping(value="/updateBlogState",method=RequestMethod.POST,produces="application/json;charset=UTF-8")
	@RequiresPermissions("blog:airtcle:add_update")
	public Boolean updateBlogState(Integer state,String blogid){
		try{
			Blog blog=blogService.selectBlog(blogid);
			blog.setBlog_state(state);

			blogService.updateBlog(blog);
			return true;
		}catch (Exception e){
			return false;
		}

	}
	@RequestMapping(value="/delBlog",method=RequestMethod.POST,produces="application/json;charset=UTF-8")
	@RequiresPermissions("blog:airtcle:delete")
	public ResponseResult delBlog(String blogids){
		log.debug("删除博客");
		if(!StringUtils.isBlank(blogids)){
			ResponseResult res=new ResponseResult();
			try{
				res.setSuccess(blogService.deleteBlogs(blogids));
				res.setMessage("success");
			}catch (Exception e){
				res.setMessage("操作失败");
				res.setSuccess(false);
				res.setErrorcode("500");
			}
			res.setData(null);
			return res;
		}
		return null;
	}
	/**
	 * 后台分页博客
	 * @param pageNumber
	 * @param limit
	 * @return
	 */
	@RequestMapping(value="/Blog",method=RequestMethod.GET,produces="application/json;charset=UTF-8")
	public PageUtil getBlogs(Integer pageNumber,Integer limit,String condition,Integer typeid ){
		if(pageNumber!=null || limit!=null) {
			log.info("查询分页博客" + pageNumber + limit);
			PageParam param = new PageParam(pageNumber, limit);
			Map map=new HashMap();
			map.put("typeid",typeid==null? "" : typeid);
			map.put("condition",condition==null? "" : condition);
			param.setParam(map);
			return blogService.getBlogs(param);
		}
		return null;
	}
	@RequestMapping(value="/getBlogType",method=RequestMethod.GET,produces="application/json;charset=UTF-8")
	public List<BlogType> getBlogType(){
       return blogService.selectBlogType();
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
	@RequestMapping("/insertBlogComment")
	public Boolean insertBlogComment(String userid,String blogid,String content ){
    	if(!StringUtils.isBlank(userid) && !StringUtils.isBlank(blogid) && !StringUtils.isBlank(content)){
    		Map map=new HashMap();
    		map.put("comment_id", ConstantValue.uuidToString());
    		map.put("comment_userid",userid);
    		map.put("comment_blogid",blogid);
    		map.put("comment_content",content);
    		map.put("comment_date",ConstantValue.getNowTimeString());
			map.put("comment_state","1");
    		System.out.println("first");
    		return blogService.insertBlogComment(map);
		}
		return false;
	}




}

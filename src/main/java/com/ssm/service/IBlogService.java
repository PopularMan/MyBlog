package com.ssm.service;

import com.ssm.dto.Blog;
import com.ssm.dto.BlogType;
import com.ssm.util.PageParam;
import com.ssm.util.PageUtil;

import java.util.List;
import java.util.Map;

public interface IBlogService {
	Boolean insertBlog(Blog blog);
	@SuppressWarnings("rawtypes")
	PageUtil<Map> getBlogs(PageParam param);
    Blog selectBlog(String id);
    List<BlogType> selectBlogType();
    public Boolean deleteBlogs(String blogIds);
    public Boolean updateBlog(Blog blog);
    public Boolean insertBlogComment(Map map);
}

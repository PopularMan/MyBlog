package com.ssm.service;

import java.util.Map;

import com.ssm.dto.Blog;
import com.ssm.util.PageParam;
import com.ssm.util.PageUtil;

public interface IBlogService {
	Boolean insertBlog(Blog blog);
	@SuppressWarnings("rawtypes")
	PageUtil<Map> getBlogs(PageParam param);
    Blog selectBlog(String id);
}

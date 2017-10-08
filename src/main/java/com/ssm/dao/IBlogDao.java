package com.ssm.dao;


import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.ssm.dto.Blog;
import com.ssm.util.PageParam;

@Repository
public interface IBlogDao {
 public void insertBlog(Blog blog);
 public int getBlogsCount();
 public List<Map<String,Object>> getBlogs(PageParam param);
 public Blog selectBlog(String id);
}

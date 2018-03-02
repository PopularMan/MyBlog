package com.ssm.dao;


import com.ssm.dto.Blog;
import com.ssm.util.PageParam;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface IBlogDao {
 public void insertBlog(Blog blog);
 public int getBlogsCount();
 public List<Map<String,Object>> getBlogs(PageParam param);
 public Blog selectBlog(String id);
 public void deleteBlogs(String[] blogIds);
 public void updateBlog(Blog blog);
 public List<Map> selectBlogComment(String blogid);
 public void insertBlogComment(Map map);
}

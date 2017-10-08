package com.ssm.service.imp;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.dao.IBlogDao;
import com.ssm.dto.Blog;
import com.ssm.service.IBlogService;
import com.ssm.util.PageParam;
import com.ssm.util.PageUtil;
@Service("blogService")
public class BlogServiceImp implements IBlogService {
    @Autowired
	private IBlogDao blogDao;
	@Override
	public Boolean insertBlog(Blog blog) {
		if(null!=blog){
			try {
				blog.setBlog_id(UUID.randomUUID().toString());
				//blog.setBlog_author("爱唱歌的程序员");
				blog.setBlog_time(new Timestamp(new Date().getTime()));
				blogDao.insertBlog(blog);
				return true;
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				return false;
			}
			
		}
		return false;
		
	}
	@Override
	public PageUtil<Map> getBlogs(PageParam param) {
		PageUtil<Map> utils=new PageUtil<>();
		try {
			utils.setCount(blogDao.getBlogsCount());
			utils.setData(blogDao.getBlogs(param));
			utils.setMsg("success");
			utils.setCode(0);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			utils.setMsg("error");
			utils.setCode(1);
		}
		
		return utils;
	}
	@Override
	public Blog selectBlog(String id) {
		if(id!=null){
			return blogDao.selectBlog(id);
		}
		return null;
	}

}

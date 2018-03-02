package com.ssm.service.imp;

import java.sql.Timestamp;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import com.ssm.dao.IBlogTypeDao;
import com.ssm.dto.BlogType;
import org.apache.commons.lang.StringUtils;
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
	@Autowired
	private IBlogTypeDao blogTypeDao;
    @Override
	public Boolean insertBlog(Blog blog) {
		if(null!=blog){
			try {
				blog.setBlog_id(UUID.randomUUID().toString());
			
				blog.setBlog_time(new Timestamp(System.currentTimeMillis()));
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
	@SuppressWarnings("rawtypes")
	@Override
	public PageUtil<Map> getBlogs(PageParam param) {
		PageUtil<Map> utils=new PageUtil<Map>();
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
	@Override
	public List<BlogType> selectBlogType(){
        return blogTypeDao.selectBlogType();
	}

	@Override
	public Boolean deleteBlogs(String blogIds) {
		if(!StringUtils.isBlank(blogIds)) {
            String[] ids=blogIds.split(",");
            if(ids.length>0){
            	  try{
					  blogDao.deleteBlogs(ids);
					  return true;
				  }catch (Exception e){
            	  	  return false;
				  }
			}
		}
		return false;
	}

	@Override
	public Boolean updateBlog(Blog blog) {
		if(blog!=null && blog.getBlog_id()!=""){
			try{
				blogDao.updateBlog(blog);

				return true;
			}catch (Exception e){
				return false;
			}

		}
		return false;
	}

	@Override
	public Boolean insertBlogComment(Map map) {
		try {
			System.out.println("cr q");
			blogDao.insertBlogComment(map);
			System.out.println("cr h");
			return true;
		}catch (Exception e){
			System.out.println("bc");
			return false;
		}

	}

}

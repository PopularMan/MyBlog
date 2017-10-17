package com.ssm.service.imp;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import com.ssm.dao.IBlogDao;
import com.ssm.dao.IUserDao;
import com.ssm.dto.Blog;
import com.ssm.dto.User;
import com.ssm.service.IBlogService;
import com.ssm.service.IUserService;
import com.ssm.util.PageParam;
import com.ssm.util.PageUtil;
@Service("userService")
public class UserServiceImp implements IUserService {
	private Logger log=Logger.getLogger(UserServiceImp.class);
    @Autowired
    private IUserDao userDao;
	@Override
	public int insertOrUpdateUser(User user) {
	    if(null!=user) {
	    	User u=userDao.selectUser(user.getOpenid());
	    	//判断数据库是否有该用户
	    	if(null!=u) {
	    		//更新最后登录时间
	    		log.info("更新用户");
	    		u.setLastloginTime(new Timestamp(new Date().getTime()));
	    		userDao.updateUser(u);
	    		return 1;
	    	}else {
	    		log.info("插入新用户");
	    	    userDao.insertUser(user);
	    	    return 2;
	    	}    	
	    }
	    log.error("用户为空");
		return 0;
	}

}

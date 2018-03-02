package com.ssm.service.imp;

import com.ssm.dao.IUserDao;
import com.ssm.dto.User;
import com.ssm.service.IUserService;
import com.ssm.util.ConstantValue;
import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
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
	    		u.setLastloginTime(new Timestamp(System.currentTimeMillis()));
	    		userDao.updateUser(user);
	    		return 1;
	    	}else {
	    		log.info("插入新用户"); 
	    		user.setUserid(ConstantValue.uuidToString());
	    	    userDao.insertUser(user);
	    	    return 2;
	    	}    	
	    }
	    log.error("用户为空");
		return 0;
	}

	@Override
	public User selectUser(String openid) {
		if(!StringUtils.isBlank(openid)){
			return userDao.selectUser(openid);
		}
		return null;
	}

}

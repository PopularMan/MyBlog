package com.ssm.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import com.ssm.dao.IUserDao;
import com.ssm.dto.User;
import com.ssm.service.IUserService;
import com.ssm.util.PageParam;
import com.ssm.util.PageUtil;
@Service("userservice")
public class UserServiceImp implements IUserService {
    @Autowired
	private IUserDao userdao;
	public PageUtil<User> getAlluser(PageParam param) {
		System.out.println("99"+param.getStartIndex()+"-"+param.getLimit());
		
		List<User> data=userdao.getAllUser(param);
		/*redisCacheUtil.setCacheList("user", data);
		redisCacheUtil.getCacheList("user");*/
		System.out.println("数据"+data);
		int count=userdao.getCount();
		PageUtil<User> page=new PageUtil<User>();
		page.setCode(0);
		page.setData(data);
		page.setMsg("成功");
		page.setCount(count);
		return page;
	}

}

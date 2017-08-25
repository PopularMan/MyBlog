package com.ssm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.dto.User;
import com.ssm.service.IUserService;
import com.ssm.util.PageParam;
import com.ssm.util.PageUtil;

@Controller
public class UserController {
	@Autowired
	private IUserService userservice;
	
	@RequestMapping("/getUser")
	@ResponseBody
	public PageUtil<User> getAllUser(Integer page,Integer limit){
        PageParam param=new PageParam(page, limit);
	 
		return userservice.getAlluser(param);
	}
	

}

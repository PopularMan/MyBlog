package com.ssm.service;

import java.util.List;

import com.ssm.dto.User;
import com.ssm.util.PageParam;
import com.ssm.util.PageUtil;

public interface IUserService {
	PageUtil<User> getAlluser(PageParam param);

}

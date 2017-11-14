package com.ssm.service.imp;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.dao.IAdminDao;
import com.ssm.dto.Admin;
import com.ssm.service.IAdminService;
@Service
public class AdminServiceImp implements IAdminService {
    @Autowired private IAdminDao adminDao;
	@Override
	public Admin selectAdmin(String username) {
		// TODO Auto-generated method stub
		if(!StringUtils.isBlank(username)) {
			return adminDao.selectAdmin(username);
		}
		return null;
	}

}

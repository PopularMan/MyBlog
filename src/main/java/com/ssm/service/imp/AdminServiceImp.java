package com.ssm.service.imp;

import com.ssm.dto.Sys_Pers;
import com.ssm.dto.Sys_Role;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.dao.IAdminDao;
import com.ssm.dto.Admin;
import com.ssm.service.IAdminService;

import java.util.List;

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

	@Override
	public List<Admin> selectAdmins()
	{
		return adminDao.selectAllAdmins();
	}

	@Override
	public List<Sys_Role> selectRoles(Integer adminid)
	{
		if(null==adminid){
			return adminDao.selectAllRoles();
		}else{
			return adminDao.selectRolesByAdminId(adminid);
		}
	}

	@Override
	public List<Sys_Pers> selectPers(Integer roleid)
	{
		if(null==roleid){
			return adminDao.selectAllPers();
		}else{
			return adminDao.selectPersByRoleId(roleid);
		}
	}

}

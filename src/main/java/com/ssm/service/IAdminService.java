package com.ssm.service;

import com.ssm.dto.Admin;
import com.ssm.dto.Sys_Pers;
import com.ssm.dto.Sys_Role;
import com.ssm.dto.TreeBean;

import java.util.List;

public interface IAdminService {
   Admin selectAdmin(String username);
   List<Admin> selectAdmins();
   List<Sys_Role> selectRoles(Integer adminid);
   List<Sys_Pers> selectPers(Integer roleid);
   List<TreeBean> persTreeUtil();
   String saveAdmin(Admin admin);
}

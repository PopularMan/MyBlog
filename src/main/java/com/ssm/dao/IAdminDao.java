package com.ssm.dao;

import com.ssm.dto.Admin;
import com.ssm.dto.Sys_Pers;
import com.ssm.dto.Sys_Role;

import java.util.List;

public interface IAdminDao {
   Admin selectAdmin(String username);
   List<Sys_Role> selectRolesByAdminId(Integer adminid);
   List<Sys_Pers> selectPersByRoleId(Integer roleid);
   List<Sys_Role> selectAllRoles();
   List<Sys_Pers>  selectAllPers();
   List<Admin> selectAllAdmins();
   void saveAdmin(Admin admin);//新增管理员
}

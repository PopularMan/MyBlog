package com.ssm.dao;

import com.ssm.dto.Admin;
import com.ssm.dto.Logs;
import com.ssm.dto.Sys_Pers;
import com.ssm.dto.Sys_Role;
import com.ssm.util.PageParam;

import java.util.List;
import java.util.Map;

public interface ISysDao {
   Admin selectAdmin(String username);
   List<Map> selectRolesByAdminId(String adminid);
   List<Sys_Pers> selectPersByRoleId(Integer roleid);
   List<Map> selectAllRoles();
   List<Sys_Pers>  selectAllPers();
   List<Admin> selectAllAdmins();
   void saveAdmin(Admin admin);//新增管理员
   void deleteRolesByAdminid(String adminid);
   void insertAdminRoles(Map map);
   void deletePersByRoleid(Integer roleid);
   void insertRolePers(Map map);
   void updateAdminState(Map map);
   void saveRole(Sys_Role role);
   List<Sys_Pers> selectPersByAdminid(String adminid);
   List<Sys_Pers> selectMenusByAdminid(String adminid);
   List<Sys_Pers> selectPersSons(Integer parentid);
   void savePermission(Sys_Pers permission);
   Sys_Pers selectPerById(Integer id);
   void delPermission(Integer id);
   void updatePermission(Sys_Pers pers);
   void updateAdmin(Admin admin);
   void insertLogs(Logs log);
   List<Map> selectLogs(PageParam param);
   Integer selectLogsCounts();
   void delLogs(List<Integer> list);
}

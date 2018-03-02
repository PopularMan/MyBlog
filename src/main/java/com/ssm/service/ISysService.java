package com.ssm.service;

import com.ssm.dto.Admin;
import com.ssm.dto.Sys_Pers;
import com.ssm.dto.Sys_Role;
import com.ssm.dto.TreeBean;
import com.ssm.util.PageParam;
import com.ssm.util.PageUtil;
import com.ssm.util.ResponseResult;

import java.util.List;
import java.util.Map;

public interface ISysService {
   Admin selectAdmin(String username);
   List<Admin> selectAdmins();
   List<Map> selectRoles(String adminid);
   List<Sys_Pers> selectPers(Integer roleid);
   List<TreeBean> persTreeUtil(Integer roleid);
   ResponseResult saveAdmin(Admin admin);
   Boolean asignRoles(String roleids,String adminid );
   Boolean asignPers(String menusid,Integer roleid);
   Boolean updateAdminState(Map map);
   int saveRole(Sys_Role role);
   List<Sys_Pers> selectPersByAdminid(String adminid);
   List<Sys_Pers> selectMenusByAdminid(String adminid);
   List<Sys_Pers> getPersTreeGrid(String adminid);
   Integer savePermission(Sys_Pers permission);
   Boolean delPermission(Integer id);
   Boolean updatePermission(Sys_Pers permission);
   PageUtil<Map> selectLogs(PageParam param);
   Boolean delLogs(String logids);//批量删除
}

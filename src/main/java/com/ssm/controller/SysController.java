package com.ssm.controller;
import com.ssm.dto.Admin;
import com.ssm.dto.Sys_Pers;
import com.ssm.dto.Sys_Role;
import com.ssm.dto.TreeBean;
import com.ssm.service.ISysService;
import com.ssm.util.PageParam;
import com.ssm.util.PageUtil;
import com.ssm.util.ResponseResult;
import org.apache.commons.lang.StringUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *@Author By Zcc
 *@Description 权限管理控制器
 *@Date: 10:16 2017/12/13
 *@WebSite:www.cczblog.cn
 */
@RequestMapping("/sys")
@RestController
public class SysController
{
    @Autowired private ISysService sysService;

    @RequestMapping(value="/getAdmins",method = RequestMethod.GET)
    public PageUtil<Admin> getAdmins(){
        PageUtil<Admin> util=new PageUtil<Admin>();
        try{
            List list= sysService.selectAdmins();
            util.setCode(0);
            util.setCount(10);
            util.setData(list);
            util.setMsg("success");
        }catch (Exception e){
            util.setCode(1);
            util.setCount(0);
            util.setData(null);
            util.setMsg("error");
        }
        return util;


    }
    @RequestMapping(value="/getRoles",method = RequestMethod.GET)
    public PageUtil<Map> getRoles(String adminid){

        PageUtil<Map> util=new PageUtil<Map>();
        try{
            List list= sysService.selectRoles(adminid);
            util.setCode(0);
            util.setCount(10);
            util.setData(list);
            util.setMsg("success");
        }catch (Exception e){
            util.setCode(1);
            util.setCount(0);
            util.setData(null);
            util.setMsg("error");
        }
        return util;

    }
    @RequestMapping(value="/getPers",method = RequestMethod.GET)
    public PageUtil<Sys_Pers> getPers(Integer roleid){
        PageUtil<Sys_Pers> util=new PageUtil<Sys_Pers>();
        try{
            List list= sysService.selectPers(roleid);
            util.setCode(0);
            util.setCount(10);
            util.setData(list);
            util.setMsg("success");
        }catch (Exception e){
            util.setCode(1);
            util.setCount(0);
            util.setData(null);
            util.setMsg("error");
        }
        return util;
    }
    /**
     *@Author By Zcc
     *@Description 权限封装
     *@Date: 10:16 2017/12/13
     *@WebSite:www.cczblog.cn
     */
    @RequestMapping(value="/persTreeUtil",method = RequestMethod.GET)
    public List<TreeBean> persTreeUtil(Integer roleid){
          return sysService.persTreeUtil(roleid);
    }
    @RequestMapping(value="/getPersTreeGrid",method = RequestMethod.GET,produces="application/json;charset=UTF-8")
    public List<Sys_Pers> getPersTreeGrid(){

        return  sysService.getPersTreeGrid("");
    }
    @RequiresPermissions("qx:admin:add")
    @RequestMapping(value="/insertAdmin",method = RequestMethod.POST)
    public ResponseResult insertAdmin(Admin admin){
        return sysService.saveAdmin(admin);
    }
    @RequiresPermissions("qx:role:add")
    @RequestMapping(value="/insertRole",method = RequestMethod.POST)
    public Integer insertRole(Sys_Role role){
        return sysService.saveRole(role);
    }
    @RequiresPermissions("qx:admin:edit")
    @RequestMapping(value="/operAdminRole",method = RequestMethod.POST)
    public Boolean operAdminRole(String adminid,String roleids){
        return sysService.asignRoles(roleids,adminid);
    }
    @RequiresPermissions("qx:role:operate")
    @RequestMapping(value="/operRolePer",method = RequestMethod.POST)
    public Boolean operRolePer(Integer roleid,String menuids){
        return sysService.asignPers(menuids,roleid);
    }
    @RequiresPermissions("qx:admin:edit")
    @RequestMapping(value="/updateAdminState",method = RequestMethod.POST)
    public Boolean updateAdminState(String userid , Integer state ){
        if(!StringUtils.isEmpty(userid) && state!=null){
            Map map=new HashMap();
            map.put("userid",userid);
            map.put("state",state);
            return sysService.updateAdminState(map);
        }
        return false;
    }
    @RequiresPermissions("qx:menu:save_update")
    @RequestMapping(value="/insert_updatePermission",method = RequestMethod.POST)
    public Boolean insertPermission(Sys_Pers per){
        Boolean result=false;
        if(per!=null && per.getId()==null){
            Integer id=sysService.savePermission(per);
            if(id>0){
                result=true;
            }else{
                result=false;
            }
        }else{
           result= sysService.updatePermission(per);
        }
        return result ;
    }
    @RequiresPermissions("qx:menu:delPermission")
    @RequestMapping(value="/delPermission",method = RequestMethod.DELETE)
    public Boolean delPermission(@RequestParam Integer id){
        return sysService.delPermission(id) ;
    }
    @RequestMapping("/getMenus")
    public ResponseResult<Sys_Pers> selectMenusByAdminid(@RequestParam String adminid){
        ResponseResult res=new ResponseResult();
        try{
            res.setErrorcode("");
            res.setSuccess(true);
            res.setMessage("成功");
            res.setData(sysService.getPersTreeGrid(adminid));
        }catch (Exception e){
            res.setErrorcode("500");
            res.setData(null);
            res.setSuccess(false);
            res.setMessage("失败");
        }
        return res;

    }
    @RequestMapping(value="/selectLogs",method=RequestMethod.GET,produces="application/json;charset=UTF-8")
    @RequiresPermissions("logs:search")
    public PageUtil selectLogs(Integer page,Integer limit ){
        if(page!=null || limit!=null) {
            PageParam param = new PageParam(page, limit);
            return sysService.selectLogs(param);
        }
        return null;
    }
    @RequestMapping(value="/delLogs",method=RequestMethod.DELETE,produces="application/json;charset=UTF-8")
    @RequiresPermissions("logs:delete")
    public Boolean delLogs(String logids ){
             return  sysService.delLogs(logids);
    }




}

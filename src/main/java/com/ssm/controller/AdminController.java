package com.ssm.controller;

import com.ssm.dto.Admin;
import com.ssm.dto.Sys_Pers;
import com.ssm.dto.Sys_Role;
import com.ssm.service.IAdminService;
import com.ssm.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/user")
public class AdminController
{
    @Autowired private IAdminService adminService;

    @RequestMapping(value="/getAdmins",method = RequestMethod.GET)
    @ResponseBody
    public PageUtil<Admin> getAdmins(){
        PageUtil<Admin> util=new PageUtil<Admin>();
        try{
            List list= adminService.selectAdmins();
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
    @ResponseBody
    public PageUtil<Sys_Role> getRoles(Integer adminid){

        PageUtil<Sys_Role> util=new PageUtil<Sys_Role>();
        try{
            List list= adminService.selectRoles(adminid);
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
    @ResponseBody
    public PageUtil<Sys_Pers> getPers(Integer roleid){
        PageUtil<Sys_Pers> util=new PageUtil<Sys_Pers>();
        try{
            List list= adminService.selectPers(roleid);
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


}

package com.ssm.dto;

import java.io.Serializable;

public class Sys_Role implements Serializable
{
    private Integer role_id;
    private String role_code;
    private String role_name;
    private String role_description;
    private String role_createtime;

    public Integer getRole_id()
    {
        return role_id;
    }

    public void setRole_id(Integer role_id)
    {
        this.role_id = role_id;
    }

    public String getRole_code()
    {
        return role_code;
    }

    public void setRole_code(String role_code)
    {
        this.role_code = role_code;
    }

    public String getRole_name()
    {
        return role_name;
    }

    public void setRole_name(String role_name)
    {
        this.role_name = role_name;
    }

    public String getRole_description()
    {
        return role_description;
    }

    public void setRole_description(String role_description)
    {
        this.role_description = role_description;
    }

    public String getRole_createtime()
    {
        return role_createtime;
    }

    public void setRole_createtime(String role_createtime)
    {
        this.role_createtime = role_createtime;
    }
}

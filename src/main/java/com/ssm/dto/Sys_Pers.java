package com.ssm.dto;

import javax.persistence.Column;
import javax.persistence.Table;
import javax.persistence.Transient;
import java.util.ArrayList;
import java.util.List;

@Table
public class Sys_Pers implements java.io.Serializable
{
    @Column
    private Integer id;
    @Column
    private String name;
    @Column
    private String icon;

    public String getIcon()
    {
        return icon;
    }

    public void setIcon(String icon)
    {
        this.icon = icon;
    }
    @Column
    private String type;
    @Column
    private String url;
    @Column
    private String percode;
    @Column
    private Integer parentid;
    @Column
    private Integer level;
    @Column
    private Integer sortstring;
    @Column
    private Integer available;

    public List<Sys_Pers> getChildren() {
        return children;
    }

    public void setChildren(List<Sys_Pers> children) {
        this.children = children;
    }

    @Transient
    private List<Sys_Pers> children=new ArrayList<Sys_Pers>(0);


    public Integer getId()
    {
        return id;
    }

    public void setId(Integer id)
    {
        this.id = id;
    }

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public String getType()
    {
        return type;
    }

    public void setType(String type)
    {
        this.type = type;
    }

    public String getUrl()
    {
        return url;
    }

    public void setUrl(String url)
    {
        this.url = url;
    }

    public String getPercode()
    {
        return percode;
    }

    public void setPercode(String percode)
    {
        this.percode = percode;
    }

    public Integer getParentid()
    {
        return parentid;
    }

    public void setParentid(Integer parentid)
    {
        this.parentid = parentid;
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    public Integer getSortstring()
    {
        return sortstring;
    }

    public void setSortstring(Integer sortstring)
    {
        this.sortstring = sortstring;
    }

    public Integer getAvailable()
    {
        return available;
    }

    public void setAvailable(Integer available)
    {
        this.available = available;
    }


}

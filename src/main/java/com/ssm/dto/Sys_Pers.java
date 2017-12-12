package com.ssm.dto;

public class Sys_Pers
{
    private Integer id;
    private String name;
    private String icon;

    public String getIcon()
    {
        return icon;
    }

    public void setIcon(String icon)
    {
        this.icon = icon;
    }

    private String type;
    private String url;
    private String percode;
    private Integer parentid;
    private String parentids;
    private Integer sortstring;
    private Integer available;

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

    public String getParentids()
    {
        return parentids;
    }

    public void setParentids(String parentids)
    {
        this.parentids = parentids;
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

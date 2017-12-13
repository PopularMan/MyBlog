package com.ssm.dto;

import java.util.List;

public class TreeBean
{
    private String title;//显示的值
    private String  value;//代表的值
    private Boolean checked;
    private Boolean disabled;//true 为禁用  false为可用
    private List<TreeBean> data;

    public String getTitle()
    {
        return title;
    }

    public void setTitle(String title)
    {
        this.title = title;
    }

    public String getValue()
    {
        return value;
    }

    public void setValue(String value)
    {
        this.value = value;
    }

    public Boolean getChecked()
    {
        return checked;
    }

    public void setChecked(Boolean checked)
    {
        this.checked = checked;
    }

    public Boolean getDisabled()
    {
        return disabled;
    }

    public void setDisabled(Boolean disabled)
    {
        this.disabled = disabled;
    }

    public List<TreeBean> getData()
    {
        return data;
    }

    public void setData(List<TreeBean> data)
    {
        this.data = data;
    }
}

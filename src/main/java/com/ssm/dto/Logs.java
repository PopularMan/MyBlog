package com.ssm.dto;

public class Logs {
    private Integer sys_logid;
    private String sys_loginame;
    private String sys_logintime;
    private String sys_logaddress;
    private String sys_logip;
    private String sys_czrz;

    public Logs(Integer sys_logid, String sys_loginname, String sys_logintime, String sys_logaddress, String sys_logip, String sys_czrz) {
        this.sys_logid = sys_logid;
        this.sys_loginame = sys_loginname;
        this.sys_logintime = sys_logintime;
        this.sys_logaddress = sys_logaddress;
        this.sys_logip = sys_logip;
        this.sys_czrz = sys_czrz;
    }

    public Integer getSys_logid() {
        return sys_logid;
    }

    public void setSys_logid(Integer sys_logid) {
        this.sys_logid = sys_logid;
    }

    public String getSys_loginame() {
        return sys_loginame;
    }

    public void setSys_loginame(String sys_loginame) {
        this.sys_loginame = sys_loginame;
    }

    public String getSys_logintime() {
        return sys_logintime;
    }

    public void setSys_logintime(String sys_logintime) {
        this.sys_logintime = sys_logintime;
    }

    public String getSys_logaddress() {
        return sys_logaddress;
    }

    public void setSys_logaddress(String sys_logaddress) {
        this.sys_logaddress = sys_logaddress;
    }

    public String getSys_logip() {
        return sys_logip;
    }

    public void setSys_logip(String sys_logip) {
        this.sys_logip = sys_logip;
    }

    public String getSys_czrz() {
        return sys_czrz;
    }

    public void setSys_czrz(String sys_czrz) {
        this.sys_czrz = sys_czrz;
    }
}

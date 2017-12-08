package com.ssm.dto;

import java.io.Serializable;

/**
 * @author 
 */
public class Stus implements Serializable {
    private Integer stu_id;

    private String stu_no;

    private String stu_name;

    private String stu_sex;

    private String stu_class;

    private String stu_teacher;

    private String stu_year;

    private String stu_month;

    private String stu_day;

    private String stu_eduction;

    private String stu_idnumber;

    private String stu_graschool;

    private String stu_major;

    private String stu_telphone;

    private String stu_qqnumber;

    private String stu_homenumber;

    private String stu_addresscity;

    private String stu_addresscitydetail;

    private String stu_type;

    private static final long serialVersionUID = 1L;

    public Integer getStu_id() {
        return stu_id;
    }

    public void setStu_id(Integer stu_id) {
        this.stu_id = stu_id;
    }

    public String getStu_no() {
        return stu_no;
    }

    public void setStu_no(String stu_no) {
        this.stu_no = stu_no;
    }

    public String getStu_name() {
        return stu_name;
    }

    public void setStu_name(String stu_name) {
        this.stu_name = stu_name;
    }

    public String getStu_sex() {
        return stu_sex;
    }

    public void setStu_sex(String stu_sex) {
        this.stu_sex = stu_sex;
    }

    public String getStu_class() {
        return stu_class;
    }

    public void setStu_class(String stu_class) {
        this.stu_class = stu_class;
    }

    public String getStu_teacher() {
        return stu_teacher;
    }

    public void setStu_teacher(String stu_teacher) {
        this.stu_teacher = stu_teacher;
    }

    public String getStu_year() {
        return stu_year;
    }

    public void setStu_year(String stu_year) {
        this.stu_year = stu_year;
    }

    public String getStu_month() {
        return stu_month;
    }

    public void setStu_month(String stu_month) {
        this.stu_month = stu_month;
    }

    public String getStu_day() {
        return stu_day;
    }

    public void setStu_day(String stu_day) {
        this.stu_day = stu_day;
    }

    public String getStu_eduction() {
        return stu_eduction;
    }

    public void setStu_eduction(String stu_eduction) {
        this.stu_eduction = stu_eduction;
    }

    public String getStu_idnumber() {
        return stu_idnumber;
    }

    public void setStu_idnumber(String stu_idnumber) {
        this.stu_idnumber = stu_idnumber;
    }

    public String getStu_graschool() {
        return stu_graschool;
    }

    public void setStu_graschool(String stu_graschool) {
        this.stu_graschool = stu_graschool;
    }

    public String getStu_major() {
        return stu_major;
    }

    public void setStu_major(String stu_major) {
        this.stu_major = stu_major;
    }

    public String getStu_telphone() {
        return stu_telphone;
    }

    public void setStu_telphone(String stu_telphone) {
        this.stu_telphone = stu_telphone;
    }

    public String getStu_qqnumber() {
        return stu_qqnumber;
    }

    public void setStu_qqnumber(String stu_qqnumber) {
        this.stu_qqnumber = stu_qqnumber;
    }

    public String getStu_homenumber() {
        return stu_homenumber;
    }

    public void setStu_homenumber(String stu_homenumber) {
        this.stu_homenumber = stu_homenumber;
    }

    public String getStu_addresscity() {
        return stu_addresscity;
    }

    public void setStu_addresscity(String stu_addresscity) {
        this.stu_addresscity = stu_addresscity;
    }

    public String getStu_addresscitydetail() {
        return stu_addresscitydetail;
    }

    public void setStu_addresscitydetail(String stu_addresscitydetail) {
        this.stu_addresscitydetail = stu_addresscitydetail;
    }

    public String getStu_type() {
        return stu_type;
    }

    public void setStu_type(String stu_type) {
        this.stu_type = stu_type;
    }

    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        Stus other = (Stus) that;
        return (this.getStu_id() == null ? other.getStu_id() == null : this.getStu_id().equals(other.getStu_id()))
            && (this.getStu_no() == null ? other.getStu_no() == null : this.getStu_no().equals(other.getStu_no()))
            && (this.getStu_name() == null ? other.getStu_name() == null : this.getStu_name().equals(other.getStu_name()))
            && (this.getStu_sex() == null ? other.getStu_sex() == null : this.getStu_sex().equals(other.getStu_sex()))
            && (this.getStu_class() == null ? other.getStu_class() == null : this.getStu_class().equals(other.getStu_class()))
            && (this.getStu_teacher() == null ? other.getStu_teacher() == null : this.getStu_teacher().equals(other.getStu_teacher()))
            && (this.getStu_year() == null ? other.getStu_year() == null : this.getStu_year().equals(other.getStu_year()))
            && (this.getStu_month() == null ? other.getStu_month() == null : this.getStu_month().equals(other.getStu_month()))
            && (this.getStu_day() == null ? other.getStu_day() == null : this.getStu_day().equals(other.getStu_day()))
            && (this.getStu_eduction() == null ? other.getStu_eduction() == null : this.getStu_eduction().equals(other.getStu_eduction()))
            && (this.getStu_idnumber() == null ? other.getStu_idnumber() == null : this.getStu_idnumber().equals(other.getStu_idnumber()))
            && (this.getStu_graschool() == null ? other.getStu_graschool() == null : this.getStu_graschool().equals(other.getStu_graschool()))
            && (this.getStu_major() == null ? other.getStu_major() == null : this.getStu_major().equals(other.getStu_major()))
            && (this.getStu_telphone() == null ? other.getStu_telphone() == null : this.getStu_telphone().equals(other.getStu_telphone()))
            && (this.getStu_qqnumber() == null ? other.getStu_qqnumber() == null : this.getStu_qqnumber().equals(other.getStu_qqnumber()))
            && (this.getStu_homenumber() == null ? other.getStu_homenumber() == null : this.getStu_homenumber().equals(other.getStu_homenumber()))
            && (this.getStu_addresscity() == null ? other.getStu_addresscity() == null : this.getStu_addresscity().equals(other.getStu_addresscity()))
            && (this.getStu_addresscitydetail() == null ? other.getStu_addresscitydetail() == null : this.getStu_addresscitydetail().equals(other.getStu_addresscitydetail()))
            && (this.getStu_type() == null ? other.getStu_type() == null : this.getStu_type().equals(other.getStu_type()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getStu_id() == null) ? 0 : getStu_id().hashCode());
        result = prime * result + ((getStu_no() == null) ? 0 : getStu_no().hashCode());
        result = prime * result + ((getStu_name() == null) ? 0 : getStu_name().hashCode());
        result = prime * result + ((getStu_sex() == null) ? 0 : getStu_sex().hashCode());
        result = prime * result + ((getStu_class() == null) ? 0 : getStu_class().hashCode());
        result = prime * result + ((getStu_teacher() == null) ? 0 : getStu_teacher().hashCode());
        result = prime * result + ((getStu_year() == null) ? 0 : getStu_year().hashCode());
        result = prime * result + ((getStu_month() == null) ? 0 : getStu_month().hashCode());
        result = prime * result + ((getStu_day() == null) ? 0 : getStu_day().hashCode());
        result = prime * result + ((getStu_eduction() == null) ? 0 : getStu_eduction().hashCode());
        result = prime * result + ((getStu_idnumber() == null) ? 0 : getStu_idnumber().hashCode());
        result = prime * result + ((getStu_graschool() == null) ? 0 : getStu_graschool().hashCode());
        result = prime * result + ((getStu_major() == null) ? 0 : getStu_major().hashCode());
        result = prime * result + ((getStu_telphone() == null) ? 0 : getStu_telphone().hashCode());
        result = prime * result + ((getStu_qqnumber() == null) ? 0 : getStu_qqnumber().hashCode());
        result = prime * result + ((getStu_homenumber() == null) ? 0 : getStu_homenumber().hashCode());
        result = prime * result + ((getStu_addresscity() == null) ? 0 : getStu_addresscity().hashCode());
        result = prime * result + ((getStu_addresscitydetail() == null) ? 0 : getStu_addresscitydetail().hashCode());
        result = prime * result + ((getStu_type() == null) ? 0 : getStu_type().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", stu_id=").append(stu_id);
        sb.append(", stu_no=").append(stu_no);
        sb.append(", stu_name=").append(stu_name);
        sb.append(", stu_sex=").append(stu_sex);
        sb.append(", stu_class=").append(stu_class);
        sb.append(", stu_teacher=").append(stu_teacher);
        sb.append(", stu_year=").append(stu_year);
        sb.append(", stu_month=").append(stu_month);
        sb.append(", stu_day=").append(stu_day);
        sb.append(", stu_eduction=").append(stu_eduction);
        sb.append(", stu_idnumber=").append(stu_idnumber);
        sb.append(", stu_graschool=").append(stu_graschool);
        sb.append(", stu_major=").append(stu_major);
        sb.append(", stu_telphone=").append(stu_telphone);
        sb.append(", stu_qqnumber=").append(stu_qqnumber);
        sb.append(", stu_homenumber=").append(stu_homenumber);
        sb.append(", stu_addresscity=").append(stu_addresscity);
        sb.append(", stu_addresscitydetail=").append(stu_addresscitydetail);
        sb.append(", stu_type=").append(stu_type);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}
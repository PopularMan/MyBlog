package com.ssm.dto;

import java.io.Serializable;

/**
 * @author 
 */
public class BlogType implements Serializable {
    private Integer btypeId;

    private String btypeName;

    private static final long serialVersionUID = 1L;

    public Integer getBtypeId() {
        return btypeId;
    }

    public void setBtypeId(Integer btypeId) {
        this.btypeId = btypeId;
    }

    public String getBtypeName() {
        return btypeName;
    }

    public void setBtypeName(String btypeName) {
        this.btypeName = btypeName;
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
        BlogType other = (BlogType) that;
        return (this.getBtypeId() == null ? other.getBtypeId() == null : this.getBtypeId().equals(other.getBtypeId()))
            && (this.getBtypeName() == null ? other.getBtypeName() == null : this.getBtypeName().equals(other.getBtypeName()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getBtypeId() == null) ? 0 : getBtypeId().hashCode());
        result = prime * result + ((getBtypeName() == null) ? 0 : getBtypeName().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", btypeId=").append(btypeId);
        sb.append(", btypeName=").append(btypeName);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}
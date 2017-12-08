package com.ssm.dao;

import com.ssm.dto.Stus;
import com.ssm.util.PageParam;

import java.util.List;

public interface IStuDao {
    List<Stus> selectStuList(PageParam param);
    Integer selectStuListCount(PageParam param);
}
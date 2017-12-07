package com.ssm.dao;

import com.ssm.dto.Aaa;
import com.ssm.dto.AaaExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AAADao {
    long countByExample(AaaExample example);

    int deleteByExample(AaaExample example);

    int deleteByPrimaryKey(Integer stu_id);

    int insert(Aaa record);

    int insertSelective(Aaa record);

    List<Aaa> selectByExample(AaaExample example);

    Aaa selectByPrimaryKey(Integer stu_id);

    int updateByExampleSelective(@Param("record") Aaa record, @Param("example") AaaExample example);

    int updateByExample(@Param("record") Aaa record, @Param("example") AaaExample example);

    int updateByPrimaryKeySelective(Aaa record);

    int updateByPrimaryKey(Aaa record);
}
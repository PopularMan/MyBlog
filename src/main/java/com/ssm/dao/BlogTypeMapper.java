package com.ssm.dao;

import com.ssm.dto.BlogType;
import com.ssm.dto.BlogTypeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BlogTypeMapper {
    long countByExample(BlogTypeExample example);

    int deleteByExample(BlogTypeExample example);

    int deleteByPrimaryKey(Integer btypeId);

    int insert(BlogType record);

    int insertSelective(BlogType record);

    List<BlogType> selectByExample(BlogTypeExample example);

    BlogType selectByPrimaryKey(Integer btypeId);

    int updateByExampleSelective(@Param("record") BlogType record, @Param("example") BlogTypeExample example);

    int updateByExample(@Param("record") BlogType record, @Param("example") BlogTypeExample example);

    int updateByPrimaryKeySelective(BlogType record);

    int updateByPrimaryKey(BlogType record);
}
package com.ssm.dao;

import com.ssm.dto.BlogType;

import java.util.List;

public interface IBlogTypeDao {
   List<BlogType> selectBlogType();
}
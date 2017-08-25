package com.ssm.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ssm.dto.User;
import com.ssm.util.PageParam;
@Repository
public interface IUserDao {
    List<User> getAllUser(PageParam param);
    int getCount();
}

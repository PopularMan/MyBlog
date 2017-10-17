package com.ssm.dao;

import org.springframework.stereotype.Repository;

import com.ssm.dto.User;

@Repository
public interface IUserDao {
   void insertUser(User user);
   void updateUser(User user);
   User selectUser(String openid);
}

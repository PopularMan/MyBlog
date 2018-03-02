package com.ssm.service;

import com.ssm.dto.User;

public interface IUserService {
    int insertOrUpdateUser(User user);
    User selectUser(String openid);
}

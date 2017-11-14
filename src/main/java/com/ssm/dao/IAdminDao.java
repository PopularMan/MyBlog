package com.ssm.dao;

import com.ssm.dto.Admin;

public interface IAdminDao {
   Admin selectAdmin(String username);
}

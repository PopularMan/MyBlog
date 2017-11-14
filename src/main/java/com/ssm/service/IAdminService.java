package com.ssm.service;

import com.ssm.dto.Admin;

public interface IAdminService {
   Admin selectAdmin(String username);
}

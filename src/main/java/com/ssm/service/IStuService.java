package com.ssm.service;

import com.ssm.dto.Stus;
import com.ssm.util.PageParam;
import com.ssm.util.PageUtil;

public interface IStuService
{
    PageUtil<Stus> SelectStu(PageParam param);
}

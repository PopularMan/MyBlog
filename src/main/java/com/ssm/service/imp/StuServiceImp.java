package com.ssm.service.imp;

import com.ssm.dao.IStuDao;
import com.ssm.dto.Stus;
import com.ssm.service.IStuService;
import com.ssm.util.PageParam;
import com.ssm.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StuServiceImp implements IStuService
{
    @Autowired private IStuDao stuDao;
    @Override
    public PageUtil<Stus> SelectStu(PageParam param)
    {
        PageUtil<Stus> util=new PageUtil<Stus>();
        try
        {
            List<Stus> stulist = stuDao.selectStuList(param);
            Integer  count = stuDao.selectStuListCount(param);
            util.setCode(0);
            util.setMsg("success");
            util.setCount(count);
            util.setData(stulist);
        }catch (Exception e)
        {
            util.setCode(1);
            util.setMsg(e.getMessage());
            util.setCount(0);
            util.setData(null);
        }
        return util;
    }
}


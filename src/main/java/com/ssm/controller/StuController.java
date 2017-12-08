package com.ssm.controller;

import com.ssm.dto.Stus;
import com.ssm.service.IStuService;
import com.ssm.util.PageParam;
import com.ssm.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
public class StuController
{
    @Autowired private IStuService stuService;
    @RequestMapping(value="getStuList",method = RequestMethod.GET)
    public PageUtil<Stus> getStuList(@RequestParam Map<String,Object> map){
        Integer page=Integer.parseInt(map.get("page").toString());
        Integer limit=Integer.parseInt(map.get("limit").toString());
        String  name = map.get("name")==null ? "":map.get("name").toString() ;
        String  type = map.get("type")==null ? "":map.get("name").toString() ;
        Map parmaMap=new HashMap();
        parmaMap.put("name",name);
        parmaMap.put("type",type);
        PageParam param=new PageParam(page,limit);
        param.setParam(parmaMap);
        return stuService.SelectStu(param);
    }
}

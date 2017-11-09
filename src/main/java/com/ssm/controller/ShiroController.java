package com.ssm.controller;


import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/adm")
public class ShiroController {
	//@Autowired
	//private SecurityManager securityManager;
	//登录认证
    @RequestMapping("/shiro-login")
    public String login(@RequestParam("username") String username, 
            @RequestParam("password") String password){
		//SecurityUtils.setSecurityManager(securityManager);
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(username, password);        
        try {
            //执行认证操作. 
            subject.login(token);
        }catch (AuthenticationException ae) {
            System.out.println("登陆失败: " + ae.getMessage());
            return "view/admin/login";
        }
        
        
        return "/admin/success";
    }
}

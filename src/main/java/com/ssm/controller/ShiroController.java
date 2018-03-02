package com.ssm.controller;


import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class ShiroController {
	//登录认证
    @RequestMapping("/admin/logon")
    public String login(HttpServletRequest req) throws Exception {
        //如果登陆失败从request中获取认证异常信息，shiroLoginFailure就是shiro异常类的全限定名
        String exceptionClassName = (String) req.getAttribute("shiroLoginFailure");
        //根据shiro返回的异常类路径判断，抛出指定异常信息
        if(exceptionClassName!=null){
            if (UnknownAccountException.class.getName().equals(exceptionClassName)) {
                //最终会抛给异常处理器
                 System.out.println("账号不存在");
                req.setAttribute("error","账号不存在");
            } else if (IncorrectCredentialsException.class.getName().equals(
                    exceptionClassName)) {
                System.out.println("用户名/密码错误");
                req.setAttribute("error","用户名/密码错误");
            } else if("randomCodeError".equals(exceptionClassName)){
                System.out.println("验证码错误");
                req.setAttribute("error","验证码错误");
            }else {
                throw new Exception("");//最终在异常处理器生成未知错误
            }
        }
        //此方法不处理登陆成功（认证成功），shiro认证成功会自动跳转到上一个请求路径
        //登陆失败还到login页面
        return "view/admin/login";

    }
/*    @RequestMapping(value = "/sys/first.action")
    public String login(HttpServletRequest request, HttpServletResponse response){
        return "view/sys/index";
    }*/
}

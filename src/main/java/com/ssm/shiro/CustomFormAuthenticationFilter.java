package com.ssm.shiro;

import com.ssm.dto.ActiveUser;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;
import org.springframework.stereotype.Service;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
@Service
public class CustomFormAuthenticationFilter extends FormAuthenticationFilter {
    @Override
    protected boolean onLoginSuccess(AuthenticationToken token, Subject subject, ServletRequest request,
                                     ServletResponse response) throws Exception {
        //获取已登录的用户信息
        ActiveUser activeUser = (ActiveUser) subject.getPrincipal();
        //获取session
        HttpServletRequest httpServletRequest = (HttpServletRequest)request;
        HttpSession session = httpServletRequest.getSession();
        System.out.println(")000000000000000000000");
        //把用户信息保存到session
        session.setAttribute("activeUser", activeUser);
        return super.onLoginSuccess(token, subject, request, response);
    }


}

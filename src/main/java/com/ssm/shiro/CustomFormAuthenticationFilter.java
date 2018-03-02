package com.ssm.shiro;

import com.ssm.dao.ISysDao;
import com.ssm.dto.ActiveUser;
import com.ssm.dto.Admin;
import com.ssm.dto.Logs;
import com.ssm.util.ConstantValue;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;
import org.apache.shiro.web.util.WebUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
@Service
public class CustomFormAuthenticationFilter extends FormAuthenticationFilter {
    @Autowired
    private ISysDao sysDao;
    @Override
    protected boolean onLoginSuccess(AuthenticationToken token, Subject subject, ServletRequest request,
                                     ServletResponse response) throws Exception {
        //获取已登录的用户信息
        ActiveUser activeUser = (ActiveUser) subject.getPrincipal();
        //获取session
        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        HttpSession session = httpServletRequest.getSession();


        Admin admin = sysDao.selectAdmin(activeUser.getUsername());
        admin.setLastlogintime(ConstantValue.getNowTimeString());
        String address = "";
        try {
            address= ConstantValue.getCity(httpServletRequest.getRemoteAddr());
            admin.setLoginaddress(address);
            admin.setLoginip(request.getRemoteAddr());
        } catch (Exception e) {
            e.printStackTrace();
            admin.setLoginaddress("--");
        } finally {
            //插入日志
            try {

            } catch (Exception e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
                address = "地址获取异常";
            }
            Logs log = new Logs(0, admin.getName(), ConstantValue.getNowTimeString(), address, httpServletRequest.getRemoteAddr(), "success");
            sysDao.insertLogs(log);
            //把用户信息保存到session
            session.setAttribute("activeUser", activeUser);
            WebUtils.getAndClearSavedRequest(request);
            WebUtils.redirectToSavedRequest(request,response,"../sys/index");
            return false;
        }
    }

    protected boolean isLoginSubmission(ServletRequest request, ServletResponse response) {
        System.out.println(WebUtils.toHttp(request).getMethod());
        return (request instanceof HttpServletRequest) && WebUtils.toHttp(request).getMethod().equalsIgnoreCase(POST_METHOD);
    }

    @Override
    protected boolean onAccessDenied(ServletRequest request, ServletResponse response,Object map) throws Exception {
        //在这里进行验证码的校验
        HttpServletRequest httpServletRequest=(HttpServletRequest) request;
        HttpSession session=httpServletRequest.getSession();
        //取出session中的验证码
        String validateCode = (String) session.getAttribute("validateCode");
        //取出requesst中的验证码
        String randomcode=  (String) request.getParameter("validateCode");
        if (randomcode!=null && validateCode!=null) {
            if (!randomcode.toUpperCase().equals(validateCode.toUpperCase())) {
                // randomCodeError表示验证码错误
                request.setAttribute("shiroLoginFailure", "randomCodeError");
                //拒绝访问，不再校验账号和密码
                return true;
            }
        }
        return super.onAccessDenied(request,response,map);
    }
}

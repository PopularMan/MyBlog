package com.ssm.shiro;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.apache.shiro.web.filter.PathMatchingFilter;
/** 
 * 自定义用户过滤器 
 * @author 张超超 
 * 
 */  
public class SysUserFilter extends PathMatchingFilter{
	
	    protected boolean onPreHandle(ServletRequest request, ServletResponse response, Object mappedValue) throws Exception {  
	        //可以参考http://jinnianshilongnian.iteye.com/blog/2025656  
	        return true;  
	    }  

}

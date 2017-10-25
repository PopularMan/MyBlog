package com.ssm.shiro;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.stereotype.Component;

/**
 * 自定义权限验证类
 * @author 张超超
 *
 */
@Component
public class ShiroSecurityRealm extends AuthorizingRealm {

	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection authcToken) {
	        UsernamePasswordToken token = (UsernamePasswordToken) authcToken;  
	        //SysUser user = userService.getByProerties(new String[]{"loginAccount"}, new String[]{token.getUsername()},null);  
	       /* if (user != null) {  
	            return new SimpleAuthenticationInfo(user.getUserId(), user.getLoginPass(), getName());  
	        } else {  
	            return null;  
	        }  */
		return null;
	}

	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken arg0) throws AuthenticationException {
		// TODO Auto-generated method stub
		return null;
	}

}

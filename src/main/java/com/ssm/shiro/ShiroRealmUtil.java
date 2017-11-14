package com.ssm.shiro;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ssm.dao.IAdminDao;
import com.ssm.dao.IUserDao;
import com.ssm.dto.ActiveUser;
import com.ssm.dto.Admin;
import com.ssm.dto.User;
import com.ssm.service.IAdminService;
public class ShiroRealmUtil extends AuthorizingRealm{
	@Autowired
	private IAdminService adminService;

	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo(); 
		
		Object principal = principalCollection.getPrimaryPrincipal();//获取登录的用户名
		
		System.out.println("用户名"+principal);
		 if("123456".equals(principal)){               //两个if根据判断赋予登录用户权限
	            info.addRole("admin");
	            
	            System.out.println("----");
	     }
	     if("user".equals(principal)){
	            info.addRole("list");
	     }
	     System.out.println("------000-");
	     info.addRole("user");
	        
	     return info;
	}
	

	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken arg) throws AuthenticationException {
		 //1. token 中获取登录的 username! 注意不需要获取password.
        
		UsernamePasswordToken token=(UsernamePasswordToken) arg;
		Object principal = token.getPrincipal();
        
    	System.out.println("用户名"+principal);
    	System.out.println("密码"+token.getCredentials().toString());
        Admin admin=null;
        
    	// 第二步：根据用户输入的userCode从数据库查询
		try {
			admin = adminService.selectAdmin(principal.toString());
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		// 如果查询不到返回null
		if(admin==null){//
			return null;
		}
		//数据库查询到的密码
	    String password="5816ade412f44f509ab8fcc3aec19885";
    	//3.获取盐值 
        String salt = admin.getSalt();
        
        
    	//activeUser就是用户身份信息
		ActiveUser activeUser = new ActiveUser();
		
		activeUser.setUserid(admin.getId().toString());
		activeUser.setUsercode(admin.getUsercode());
		activeUser.setUsername(admin.getName());
        //ByteSource credentialsSalt = new Md5Hash(source);
        //当前 Realm 的name
        String realmName = getName();
        //返回值实例化
        SimpleAuthenticationInfo info = 
                    new SimpleAuthenticationInfo(principal, password, ByteSource.Util.bytes(salt),getName());
    	
    	
            return info;

	}

    public static void main(String[] args) {
    	
        String saltSource = "zcc";    
        String hashAlgorithmName = "MD5";
        String credentials = "123456";
        Object salt = new Md5Hash(saltSource);
        int hashIterations = 1024;            
        Object result = new SimpleHash(hashAlgorithmName, credentials, salt, hashIterations);
        System.out.println(result);
       // System.out.println(new  Md5Hash("123456", "abcdefg",10).toString());
    }

}

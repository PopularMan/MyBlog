package com.ssm.shiro;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
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

import com.ssm.dao.IUserDao;
import com.ssm.dto.User;
public class ShiroRealmUtil extends AuthorizingRealm{
	@Autowired
	private IUserDao userdao;
	private String pass;

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
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		 //1. token 中获取登录的 username! 注意不需要获取password.
        Object principal = token.getPrincipal();
        
        
      //2. 利用 username 查询数据库得到用户的信息. 
        User user=userdao.selectUser(principal.toString());
        if(user!=null){
            pass=user.getOpenid();
        }
        String credentials = pass;
        
        //3.设置盐值 ，（加密的调料，让加密出来的东西更具安全性，一般是通过数据库查询出来的。 简单的说，就是把密码根据特定的东西而进行动态加密，如果别人不知道你的盐值，就解不出你的密码）
        String source = "abcdefg";
        ByteSource credentialsSalt = new Md5Hash(source);
        //当前 Realm 的name
        String realmName = getName();
        
        
        //返回值实例化
        SimpleAuthenticationInfo info = 
                new SimpleAuthenticationInfo(principal, credentials, 
                        credentialsSalt, realmName);
        
        
		return info;
	}
	//init-method 配置. 
    public void setCredentialMatcher(){
       /* HashedCredentialsMatcher  credentialsMatcher = new HashedCredentialsMatcher();    
        credentialsMatcher.setHashAlgorithmName("MD5");//MD5算法加密
        credentialsMatcher.setHashIterations(1024);//1024次循环加密      
        setCredentialsMatcher(credentialsMatcher);*/
    }
    public static void main(String[] args) {
        String saltSource = "abcdef";    
        String hashAlgorithmName = "MD5";
        String credentials = "passwor";
        Object salt = new Md5Hash(saltSource);
        int hashIterations = 1024;            
        Object result = new SimpleHash(hashAlgorithmName, credentials, salt, hashIterations);
        System.out.println(result);
    }

}

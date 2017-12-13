package com.ssm.shiro;

import com.ssm.dto.Admin;
import com.ssm.service.IAdminService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;
public class ShiroRealmUtil extends AuthorizingRealm{
	@Autowired
	private IAdminService adminService;

	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
		System.out.println("授权方法");
		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();

		Admin admin = (Admin)principalCollection.getPrimaryPrincipal();//获取登录的用户名
		System.out.println(admin.getName()+"22222");
		info.addStringPermission("user:addBlo");
		return info;
	}


	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken arg) throws AuthenticationException {
		//1. token 中获取登录的 username! 注意不需要获取password.

		UsernamePasswordToken token=(UsernamePasswordToken) arg;
		Object principal = token.getPrincipal();
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
		String password=admin.getPass();
		//3.获取盐值
		String salt = admin.getSalt();


		String realmName = getName();
		//返回值实例化
		SimpleAuthenticationInfo info =
				new SimpleAuthenticationInfo(admin, password, ByteSource.Util.bytes(salt),realmName);
		return info;

	}

	//清除缓存
	public void clearCached() {
		PrincipalCollection principals = SecurityUtils.getSubject().getPrincipals();
		super.clearCache(principals);
	}
	public static void main(String[] args) {

		//模拟用户输入的密码
		String source="123456";

		//加入我们的盐salt
		String salt="zcc";

		//密码11111经过散列1次得到的密码:f3694f162729b7d0254c6e40260bf15c
		int hashIterations=520;


		//构造方法中：
		//第一个参数：明文，原始密码
		//第二个参数：盐，通过使用随机数
		//第三个参数：散列的次数，比如散列两次，相当 于md5(md5(''))
		Md5Hash md5Hash=new Md5Hash(source,salt,hashIterations);

		String password_md5=md5Hash.toString();

		System.out.println(password_md5);

		// System.out.println(new  Md5Hash("123456", "abcdefg",10).toString());
	}

}

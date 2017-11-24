package com.ssm.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.Random;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.math.RandomUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qq.connect.QQConnectException;
import com.qq.connect.api.OpenID;
import com.qq.connect.api.qzone.UserInfo;
import com.qq.connect.javabeans.AccessToken;
import com.qq.connect.javabeans.qzone.UserInfoBean;
import com.qq.connect.oauth.Oauth;
import com.ssm.dto.User;
import com.ssm.service.IUserService;
import com.ssm.util.AddressUtils;
import com.ssm.util.MailUtil;
/**
 * QQ登录处理
 * @author lenovo
 *
 */
@Controller
public class QQLoginController {
	@Autowired private IUserService userService;
	@RequestMapping("QQLogin")
	public void QQlogin(HttpServletRequest req, HttpServletResponse res, HttpSession session)
			throws QQConnectException {
		String url = new Oauth().getAuthorizeURL(req);
		try {
			res.sendRedirect(url);
			session.setAttribute("beofreLoginUrl", req.getHeader("Referer"));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			new QQConnectException("登录异常");
		}
	}

	@RequestMapping("callback")
	public String callback(HttpServletRequest req, HttpServletResponse res, HttpSession session)
			throws Exception {
		AccessToken accessTokenObj = (new Oauth()).getAccessTokenByRequest(req);
		String accessToken = null, openID = null;
		long tokenExpireIn = 0L;
		if (accessTokenObj.getAccessToken().equals("")) {
			// 我们的网站被CSRF攻击了或者用户取消了授权
			System.out.print("没有获取到响应参数");
		} else {
			accessToken = accessTokenObj.getAccessToken();
			tokenExpireIn = accessTokenObj.getExpireIn();
			req.getSession().setAttribute("accessToken", accessToken);
			req.getSession().setAttribute("tokenExpireIn", String.valueOf(tokenExpireIn));
			// 利用获取到的accessToken 去获取当前用的openid -------- start
			OpenID openIDObj = new OpenID(accessToken);
			openID = openIDObj.getUserOpenID();
			req.getSession().setAttribute("openid", openID);
			UserInfo userInfo = new UserInfo(accessToken, openID);
			UserInfoBean userbean = userInfo.getUserInfo();
			if (userbean != null && !StringUtils.isBlank(userbean.getNickname())) {
				User user = new User();
				user.setAvatarUrl(userbean.getAvatar().getAvatarURL50());
				user.setUserip(req.getRemoteHost());
				user.setLastloginTime(new Timestamp(System.currentTimeMillis()));
				user.setNickName(userbean.getNickname());
				user.setOpenid(openID);
				user.setGender(userbean.getGender());
				String address = "";
				try {
					address = new AddressUtils().getAddresses("ip=" + req.getRemoteAddr(), "utf-8");
				} catch (UnsupportedEncodingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					address = "地址获取异常";
				}
				System.out.println("地址" + req.getRemoteAddr() + address);
				user.setUserlocation(address);
				user.setRegisterTime(new Timestamp(System.currentTimeMillis()));
				String uuid = UUID.randomUUID().toString();
				user.setUserid(uuid);
				int result = userService.insertOrUpdateUser(user);
				if (result > 0) {
					session.setAttribute("user", user);
					//邮件发送
					MailUtil.sendMail("新用户登录", user);
				}
			} else {
				System.out.println("请求非法");
			}
		}
		return "redirect:" + session.getAttribute("beofreLoginUrl") + "";

	}

	@RequestMapping("loginOut")
	public String loginOut(HttpServletRequest req, HttpServletResponse res, HttpSession session) {
		session.invalidate();
		return "redirect:" + req.getHeader("Referer");
	}
}

package com.baizhi.controller;

import com.baizhi.entity.User;
import com.baizhi.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	UserService userService;

	@RequestMapping("/login")
	public String Login(User user, HttpSession session, String passwords){
		//System.out.println("收到的密码"+user);
		User u = userService.Login(user);
		//System.out.println("开始登录"+u);
		//System.out.println("收到的验证码:"+passwords);

		// && ((String)session.getAttribute("kaptcha")).equalsIgnoreCase(passwords)
		if(u != null){
			session.setAttribute("u",u);
			return "forward:/menu/showAllByMenu";
		}else {
			return "login";
		}
	}


	@RequestMapping("/logout")
	@ResponseBody
	public void Logout(HttpSession session){
		User u = (User)session.getAttribute("u");
		session.removeAttribute("u");
	}
}

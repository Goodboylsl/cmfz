package com.baizhi.controller;

import com.baizhi.entity.User;
import com.baizhi.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
		//&& ((String)session.getAttribute("kaptcha")).equalsIgnoreCase(passwords)
		if(u != null){
			session.setAttribute("u",u);
			return "forward:/main/main.jsp";
		}else {
			return "login";
		}


	}
}

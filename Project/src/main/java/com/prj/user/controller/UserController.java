package com.prj.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("User")
public class UserController {
	
	@RequestMapping("/LoginForm")
	public String loginForm() {
		return "user/loginForm";
	}
}

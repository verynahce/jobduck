package com.prj.companies.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Company")
public class CompanyController {
	
	@RequestMapping("/LoginForm")
	public String loginForm() {
		return "company/loginForm";
	}
	
	@RequestMapping("/RegisterForm")
	public String registerForm() {
		return "company/registerForm";
	}
	
	
}

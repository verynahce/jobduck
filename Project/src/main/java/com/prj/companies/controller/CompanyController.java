package com.prj.companies.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.prj.companies.mapper.CompanyMapper;
import com.prj.companies.vo.CompanyVo;

@Controller
@RequestMapping("Company")
public class CompanyController {
	
	@Autowired
	private CompanyMapper companyMapper;
	
	@RequestMapping("/LoginForm")
	public String loginForm() {
		return "company/loginForm";
	}
	
	@RequestMapping("/RegisterForm")
	public String registerForm() {
		return "company/registerForm";
	}

	
	@RequestMapping("/Register")
	public ModelAndView regiser(CompanyVo companyVo) {
		System.out.println(companyVo);
		companyMapper.insertCompany(companyVo);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/Company/LoginForm");
		return mv;
	}
	
	
}

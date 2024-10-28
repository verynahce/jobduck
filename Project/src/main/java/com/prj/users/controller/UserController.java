package com.prj.users.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.prj.users.mapper.UserMapper;
import com.prj.users.vo.UserVo;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/User")
public class UserController {
	
	@Autowired
	private UserMapper userMapper;
	
	@RequestMapping("/LoginForm")
	public String loginForm() {
		return "user/loginForm";
	}
	
	@PostMapping("/Login")
	public String login(HttpServletRequest request,
					    HttpServletRequest response ) {

		String 		 userid = request.getParameter("user_id");
		String 		 passwd = request.getParameter("user_pw");
		String 		 uri = request.getHeader("Refere");
		if (uri != null && !uri.contains("/login")) {
	        request.getSession().setAttribute("prevPage", uri);
	    }
		
		
		// db 조회
		System.out.println(uri);
		UserVo 		 vo     = userMapper.login(userid,passwd);
		
		HttpSession session = request.getSession();
		session.setAttribute("login", vo);
		return "redirect:/";
	}	
	
	// /Users/Logout 
	@RequestMapping(
		value =	"/Logout",
		method = RequestMethod.GET)
	public String Logout(
			HttpServletRequest requset,
			HttpServletRequest response,
			HttpSession        session) {
		Object url = session.getAttribute("URL");
		session.invalidate();
		//return "redirect:" + (String)url;
		return "redirect:/";
	}
	

	
	@RequestMapping("/RegisterForm")
	public String regiserForm() {
		return "user/registerForm";
	}
	
	@RequestMapping("/Register")
	public ModelAndView regiser(UserVo userVo) {
		userMapper.insertUser(userVo);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/User/LoginForm");
		return mv;
	}

	
	
	
	
}

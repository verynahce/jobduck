package com.prj.users.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.prj.main.mapper.MainMapper;
import com.prj.main.vo.ResumeListVo;
import com.prj.users.mapper.UserMapper;
import com.prj.users.vo.UserVo;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("User")
public class UserController {
	
	@Autowired
	private UserMapper userMapper;
	
	@Autowired
	private MainMapper mainMapper;
	
	@RequestMapping("/LoginForm")
	public String loginForm() {
		return "user/loginForm";
	}
	
	@PostMapping("/Login")
	public String login(HttpServletRequest requset,
					    HttpServletRequest response ) {

		System.out.println(requset);
		System.out.println(response);
		String 		 userid = requset.getParameter("user_id");
		String 		 passwd = requset.getParameter("user_pw");
		String 		 uri    = requset.getParameter("uri");
		// db 조회
		System.out.println(uri);
		System.out.println(passwd);
		UserVo 		       vo     = userMapper.login(userid,passwd);

		HttpSession session = requset.getSession();
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
	
	/*
	// ajax 방식 호출
	// 아이디 중복확인 - 페이지를 변경하지 않고 data 조회
	// 비동기 호출로 구현 AJAX
	// /Users/IdDupCheck?userid=aaa
	@RequestMapping(
			value   = "/IdDupCheck",
			method  = RequestMethod.GET,
			headers = "Accept=application/json")  // 결과를 json으로 처리
	@ResponseBody                                 // 리턴값으로 json을 받겠다
	 public UserVo idDupCheck(String userid) {
		UserVo userVo = userMapper.idDupCheck(userid);
		return userVo;
	}
	
	@GetMapping("/LoginForm")
	public String LoginForm(String uri,String menu_id, int nowpage, Model model) {
		model.addAttribute("uri",uri);
		model.addAttribute("menu_id",menu_id);
		model.addAttribute("nowpage",nowpage);
		return "users/login";
	}	
	*/
	
	
	
}

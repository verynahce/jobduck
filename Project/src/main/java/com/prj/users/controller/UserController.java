package com.prj.users.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.annotation.SessionScope;
import org.springframework.web.servlet.ModelAndView;

import com.prj.users.mapper.UserMapper;
import com.prj.users.vo.UserVo;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("User")
public class UserController {
	
	@Autowired
	private UserMapper userMapper;
	
	@RequestMapping("/LoginForm")
	public String loginForm() {
		return "user/loginForm";
	}
	/*
	@PostMapping("/Login")
	public String login(HttpServletRequest requset,
					    HttpServletRequest response ) {

		System.out.println(requset);
		System.out.println(response);
		String 		 userid = requset.getParameter("user_id");
		String 		 passwd = requset.getParameter("user_pw");
		String 		 uri = requset.getParameter("uri");
		// db 조회
		UserVo 		 vo     = userMapper.login(userid,passwd);
		
		HttpSession session = requset.getSession();
		session.setAttribute("login", vo);
		return "redirect:/" + uri;
	}	
	*/
	
	
	
	
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
	
	// ajax 방식 호출
	// 아이디 중복확인 - 페이지를 변경하지 않고 data 조회
	// 비동기 호출로 구현 AJAX
	// /Users/IdDupCheck?userid=aaa
	/*@RequestMapping(
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
	
	@PostMapping("/Login")
	public String Login(HttpServletRequest requset,
					    HttpServletRequest response ) {

		String 		 userid = requset.getParameter("userid");
		String 		 passwd = requset.getParameter("passwd");
		String 		 uri = requset.getParameter("uri");
		String 		 menu_id = requset.getParameter("menu_id");
		String 		 nowpage = requset.getParameter("nowpage");
		System.out.println(menu_id);
		// db 조회
		UserVo 		 vo     = userMapper.login(userid,passwd);
		//System.out.println(vo);
		
		HttpSession session = requset.getSession();
		session.setAttribute("login", vo);
		return "redirect:/" + uri + "/List?menu_id=" +menu_id+ "&nowpage=" + nowpage;
	}	
	
	// /Users/Logout
	@RequestMapping(
		value =	"/Logout",
		method = RequestMethod.GET)
	public String Logout(
			HttpServletRequest requset,
			HttpServletRequest response,
			HttpSession        session) {
		//Object url = session.getAttribute("URL");
		session.invalidate();
		//return "redirect:" + (String)url;
		return "redirect:/" ;
	}*/
	
	
}

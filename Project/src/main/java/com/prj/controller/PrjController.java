package com.prj.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.prj.main.mapper.MainMapper;
import com.prj.main.vo.PostVo;

@Controller
public class PrjController {
	
	@Autowired
	private MainMapper mainMapper;
	
	@RequestMapping("/")
	public ModelAndView home() {
		
		List<PostVo> postList = mainMapper.getPostList();
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("postList",postList);
		mv.setViewName("home");
		return mv;
	}
	
}

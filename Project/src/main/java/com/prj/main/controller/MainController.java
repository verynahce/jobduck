package com.prj.main.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.prj.main.mapper.MainMapper;
import com.prj.main.vo.PostVo;

@Controller
@RequestMapping("Main")
public class MainController {
	
	@Autowired
	private MainMapper mainMapper;
	
	
	@RequestMapping("/Jobs")
	@ResponseBody
	public ModelAndView jobs() {
		List<String> skillList = mainMapper.getSkill();
		List<PostVo> postList  = mainMapper.getPostList(); 
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("skillList",skillList);
		mv.addObject("postList",postList);
		mv.setViewName("main/jobs");
		return mv;
	}
	
	
	
	
}

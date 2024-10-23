package com.prj.main.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.prj.main.mapper.MainMapper;
import com.prj.main.vo.PostVo;

@RestController
@RequestMapping("Main")
public class MainController {
	
	@Autowired
	private MainMapper mainMapper;
	
	
	@RequestMapping("/Jobs")
	@ResponseBody
	public ModelAndView jobs() {
		List<String> skillList = mainMapper.getSkill();
		List<PostVo> postList  = mainMapper.getPostList(); 
		
		System.out.println(postList);
		ModelAndView mv = new ModelAndView();
		mv.addObject("skillList",skillList);
		mv.addObject("postList",postList);
		mv.setViewName("main/jobs");
		return mv;
	}
	
	@RequestMapping("/PostFilter")
	public Map<String, Object> filterJobs(
	        @RequestParam(required = false, value="city_id") String city_id,
	        @RequestParam(required = false, value="duty_id") String duty_id,
	        @RequestParam(required = false, value="career_id") String career_id,
	        @RequestParam(required = false, value="emp_id") String emp_id,
	        @RequestParam(required = false, value="skills") String skills) {
	    
	    List<PostVo> filteredPosts = mainMapper.getFilteredPosts(city_id, duty_id, career_id, emp_id, skills);
	    
	    System.out.println(filteredPosts);
	    
	    Map<String, Object> response = new HashMap<>();
	    response.put("postList", filteredPosts);
	    response.put("message", "데이터를 성공적으로 가져왔습니다.");
	    return response;
	}
	
	@RequestMapping("/Hrs")
	@ResponseBody
	public ModelAndView hrs() {
		List<String> skillList = mainMapper.getSkill();
		List<PostVo> postList  = mainMapper.getPostList(); 
		
		System.out.println(postList);
		ModelAndView mv = new ModelAndView();
		mv.addObject("skillList",skillList);
		mv.addObject("postList",postList);
		mv.setViewName("main/hrs");
		return mv;
	}
	
}

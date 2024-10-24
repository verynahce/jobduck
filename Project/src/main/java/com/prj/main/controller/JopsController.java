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
public class JopsController {
	
	@Autowired
	private MainMapper mainMapper;
	
	/* Jobs 관련 */
	/*================================================================================*/
	@RequestMapping("/Jobs/List")
	@ResponseBody
	public ModelAndView jobs() {
		/*List<String> cityList = mainMapper.getCityList();
		List<String> dutyList = mainMapper.getDutyList();
		List<String> careerList = mainMapper.getCareerList();
		List<String> empList = mainMapper.getEmpList();*/
		
		
		List<PostVo> postList = mainMapper.getPostList();
		ModelAndView mv = new ModelAndView();
		mv.addObject("postList",postList);
		mv.setViewName("main/jobs/list");
		return mv;
	}
	
	@RequestMapping("/JobsFilter")
	public Map<String, Object> filterJobs(
	        @RequestParam(required = false, value="city_id") String city_id,
	        @RequestParam(required = false, value="duty_id") String duty_id,
	        @RequestParam(required = false, value="career_id") String career_id,
	        @RequestParam(required = false, value="emp_id") String emp_id,
	        @RequestParam(required = false, value="skills") String skills) {
	    
	    List<PostVo> jopsFilter = mainMapper.getFilteredPosts(city_id, duty_id, career_id, emp_id, skills);
	    
	    System.out.println(jopsFilter);
	    
	    Map<String, Object> response = new HashMap<>();
	    response.put("postList", jopsFilter);
	    response.put("message", "데이터를 성공적으로 가져왔습니다.");
	    return response;
	}
	
}

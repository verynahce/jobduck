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

import com.prj.companys.vo.CompanyVo;
import com.prj.main.mapper.MainMapper;
import com.prj.main.vo.CareerVo;
import com.prj.main.vo.CityVo;
import com.prj.main.vo.DutyVo;
import com.prj.main.vo.EmpVo;
import com.prj.main.vo.PostVo;
import com.prj.main.vo.SkillVo;

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
		List<CityVo> 	cityList 	= mainMapper.getCityList();
		List<DutyVo> 	dutyList 	= mainMapper.getDutyList();
		List<CareerVo> 	careerList 	= mainMapper.getCareerList();
		List<EmpVo> 	empList 	= mainMapper.getEmpList();
		List<SkillVo> 	skillList 	= mainMapper.getSkillList();
	
		
		List<PostVo> resumeList = mainMapper.getPostList();
		ModelAndView mv = new ModelAndView();
		mv.addObject("postList",resumeList);
		mv.addObject("cityList",cityList);
		mv.addObject("dutyList",dutyList);
		mv.addObject("careerList",careerList);
		mv.addObject("empList",empList);
		mv.addObject("skillList",skillList);
		mv.setViewName("main/jobs/list");
		return mv;
	}
	
	@RequestMapping("/JobsFilter")
	public Map<String, Object> filterJobs(
	        @RequestParam(required = false, value="city_id") String city_id,
	        @RequestParam(required = false, value="duty_id") String duty_id,
	        @RequestParam(required = false, value="career_id") String career_id,
	        @RequestParam(required = false, value="emp_id") String emp_id,
	        @RequestParam(required = false, value="skill_id") String skill_id) {
	    
	    List<PostVo> jopsFilter = mainMapper.getFilteredPosts(city_id, duty_id, career_id, emp_id, skill_id);
	    
	    System.out.println(jopsFilter);
	    
	    Map<String, Object> response = new HashMap<>();
	    response.put("postList", jopsFilter);
	    response.put("message", "데이터를 성공적으로 가져왔습니다.");
	    return response;
	}
	
	@RequestMapping("/Jobs/View")
	public ModelAndView view(@RequestParam(required = true, value="post_idx")  String post_idx) {
		
		CompanyVo cVo = mainMapper.getCompany(post_idx);
		PostVo pvo = mainMapper.getPost(post_idx);
		

		ModelAndView mv = new ModelAndView();
		mv.addObject("cVo",cVo);
		mv.setViewName("main/jobs/view");
		return mv;
	}
	
}

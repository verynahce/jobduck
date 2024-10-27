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
import com.prj.main.vo.CareerVo;
import com.prj.main.vo.CityVo;
import com.prj.main.vo.DutyVo;
import com.prj.main.vo.EmpVo;
import com.prj.main.vo.ResumeListVo;
import com.prj.main.vo.SkillVo;

@RestController
@RequestMapping("Main")
public class HrsController {
	
	@Autowired
	private MainMapper mainMapper;
	
	/* hrs 관련 */
	/*================================================================================*/
	@RequestMapping("/Hrs/List")
	@ResponseBody
	public ModelAndView list() {
		List<CityVo> 	cityList 	= mainMapper.getCityList();
		List<DutyVo> 	dutyList 	= mainMapper.getDutyList();
		List<CareerVo> 	careerList 	= mainMapper.getCareerList();
		List<EmpVo> 	empList 	= mainMapper.getEmpList();
		List<SkillVo> 	skillList 	= mainMapper.getSkillList();
		
		List<ResumeListVo> resumeList   = mainMapper.getResumeList(); 
		System.out.println(resumeList);
		ModelAndView mv = new ModelAndView();
		mv.addObject("cityList",cityList);
		mv.addObject("dutyList",dutyList);
		mv.addObject("careerList",careerList);
		mv.addObject("empList",empList);
		mv.addObject("skillList",skillList);
		mv.addObject("resumeList",resumeList);
		mv.setViewName("main/hrs/list");
		return mv;

	}
	
	@RequestMapping("/HrsFilter")
	public Map<String, Object> filterJobs(
	        @RequestParam(required = false, value="city_id") 	String city_id,
	        @RequestParam(required = false, value="duty_id") 	String duty_id,
	        @RequestParam(required = false, value="career_id") 	String career_id,
	        @RequestParam(required = false, value="emp_id") 	String emp_id,
	        @RequestParam(required = false, value="skill_id") 	String skill_id) {
		
	    List<ResumeListVo> hrsFilter = mainMapper.getFilteredResumes(city_id, duty_id, career_id, emp_id, skill_id);
	    System.out.println(hrsFilter);
	    
	    Map<String, Object> response = new HashMap<>();
	    response.put("resumeList", hrsFilter);
	    response.put("message", "데이터를 성공적으로 가져왔습니다.");
	    return response;
	}
	
	
	
	
	
	@RequestMapping("/Hrs/View")
	public ModelAndView view(@RequestParam(required = true, value="resume_idx")  String resume_idx) {

		ResumeListVo vo   = mainMapper.getResume(resume_idx); 
		ModelAndView mv = new ModelAndView();
		mv.addObject("vo",vo);
		mv.setViewName("main/hrs/view");
		return mv;
	}
	
	
}

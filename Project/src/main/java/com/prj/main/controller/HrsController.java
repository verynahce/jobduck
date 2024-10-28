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
import com.prj.main.vo.PostListVo;
import com.prj.main.vo.ResumeListVo;
import com.prj.main.vo.SkillVo;
import com.prj.users.vo.ApplicationVo;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

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
	    
	    Map<String, Object> response = new HashMap<>();
	    response.put("resumeList", hrsFilter);
	    response.put("message", "데이터를 성공적으로 가져왔습니다.");
	    return response;
	}
	
	
	
	
	
	@RequestMapping("/Hrs/View")
	public ModelAndView view(HttpServletRequest request
			,@RequestParam(required = true, value="resume_idx")  String resume_idx) {

		mainMapper.updateResumeHit(resume_idx);
		
		HttpSession session = request.getSession();
		ResumeListVo vo   = mainMapper.getResume(resume_idx); 
		System.out.println("vo" + vo);
		ModelAndView mv = new ModelAndView();

		
		Object userObject = session.getAttribute("login");
		System.out.println(userObject);
		if (userObject instanceof CompanyVo) {
			CompanyVo userVo = (CompanyVo) session.getAttribute("login");
			if(userVo != null ) {			
				List<PostListVo> postVo = mainMapper.getCompanyPost(userVo.getCompany_idx());
				mv.addObject("postVo",postVo);
				System.out.println(postVo);
			}	
		}
		mv.addObject("vo",vo);
		mv.addObject("userObject",userObject);
		mv.setViewName("main/hrs/view");
		return mv;
	}
	
	@RequestMapping("/Hrs/Apply")
	public ModelAndView apply(ApplicationVo vo) {
		mainMapper.insertApply(vo);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/Main/Hrs/View?resume_idx="+vo.getResume_idx());
		return mv;
		
	}
	
	
}

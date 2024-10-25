package com.prj.main.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
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
	public ModelAndView hrs() {
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
	
}

package com.prj.main.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.prj.main.mapper.MainMapper;
import com.prj.main.vo.ResumeVo;

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
		List<ResumeVo> resumeList  = mainMapper.getResumeList(); 
		System.out.println(resumeList);
		ModelAndView mv = new ModelAndView();
		mv.addObject("postList",resumeList);
		mv.setViewName("main/hrs/list");
		return mv;
	}
	
}

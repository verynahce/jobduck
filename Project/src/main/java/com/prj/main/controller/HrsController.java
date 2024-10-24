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
public class HrsController {
	
	@Autowired
	private MainMapper mainMapper;
	
	/* hrs 관련 */
	/*================================================================================*/
	@RequestMapping("/Hrs/List")
	@ResponseBody
	public ModelAndView hrs() {
		List<PostVo> postList  = mainMapper.getPostList(); 
		System.out.println(postList);
		ModelAndView mv = new ModelAndView();
		mv.addObject("postList",postList);
		mv.setViewName("main/hrs/list");
		return mv;
	}
	
}

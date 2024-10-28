package com.prj.main.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.prj.main.mapper.MainMapper;
import com.prj.main.vo.ReviewCompanyInfoVo;
import com.prj.main.vo.ReviewCompanyListVo;
import com.prj.main.vo.UserReviewVo;
import com.prj.users.vo.UserVo;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("Main/Review")
public class ReviewController {
	
	@Autowired
	private MainMapper mainMapper;
	
	/* review 관련 */
	/*================================================================================*/
	@RequestMapping("/List")
	public ModelAndView list() {
		int count = mainMapper.getCount();
		List<ReviewCompanyListVo> companyList = mainMapper.getCompanyList(); 
		ModelAndView mv = new ModelAndView();
		mv.addObject("companyList",companyList);
		mv.addObject("count",count);
		mv.setViewName("main/review/list");
		return mv;
	}
	
	@RequestMapping("/View")
	public ModelAndView view(@RequestParam ("company_idx") String company_idx) {
		ReviewCompanyInfoVo vo = mainMapper.getCompanyInfo(company_idx);
		Integer count = mainMapper.getReviewCount(company_idx);
		List<UserReviewVo> userReview = mainMapper.getUserReview(company_idx);
		ModelAndView mv = new ModelAndView();
		mv.addObject("vo",vo);
		mv.addObject("count",count);
		mv.addObject("userReview",userReview);
		mv.setViewName("main/review/view");
		return mv;
	}
	
	@RequestMapping("/WriteForm")
	public ModelAndView writeForm() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main/review/writeForm");
		return mv;
	}
	
	@RequestMapping("/Write")
	public ModelAndView write(UserReviewVo vo) {
		System.out.println(vo);
		mainMapper.insertReview(vo);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/Main/Review/List");
		return mv;
	}
	
	
	
	@RequestMapping("/UpdateForm")
	public ModelAndView updateForm(UserReviewVo urVo) {
		UserReviewVo vo = mainMapper.getReviewData(urVo.getReview_idx());
		ModelAndView mv = new ModelAndView();
		System.out.println(vo);
		mv.addObject("vo", vo);
		mv.setViewName("main/review/updateForm");
		return mv;
	}
	
	@RequestMapping("/Update")
	public ModelAndView upadte(UserReviewVo vo) {
		mainMapper.updateReview(vo);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/Main/Review/MyReview");
		return mv;
	}
	
	@RequestMapping("/Delete")
	public ModelAndView delete(UserReviewVo vo) {
		mainMapper.deleteReview(vo);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/Main/Review/MyReview");
		return mv;
	}
	
	
	@RequestMapping("/MyReview")
	public ModelAndView myReview(HttpServletRequest request) {
		HttpSession session = request.getSession();
		UserVo user = (UserVo) session.getAttribute("login");
		List<UserReviewVo> myReview = mainMapper.getMyReview(user.getUser_idx());
		ModelAndView mv = new ModelAndView();
		mv.addObject("myReview",myReview);
		mv.setViewName("main/review/myReview");
		return mv;
	}
}

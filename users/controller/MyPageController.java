package com.prj.users.controller;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.prj.companys.vo.CompanyVo;
import com.prj.main.vo.CityVo;
import com.prj.main.vo.DutyVo;
import com.prj.main.vo.EmpVo;
import com.prj.main.vo.PostListVo;
import com.prj.main.vo.ResumeListVo;
import com.prj.main.vo.SkillVo;
import com.prj.users.mapper.UserMapper;
import com.prj.users.vo.ApplicationVo;
import com.prj.users.vo.EduVo;
import com.prj.users.vo.ResumeCareerVo;
import com.prj.users.vo.ResumeVo;
import com.prj.users.vo.UserApplicationListVo;
import com.prj.users.vo.UserBookmarkVo;
import com.prj.users.vo.UserScoutVo;
import com.prj.users.vo.UserVo;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/User/MyPage")
public class MyPageController {
	
	@Autowired
	private UserMapper userMapper;
	
	@RequestMapping("/Home/View")
	public ModelAndView homeview(HttpServletRequest request, HttpServletResponse responese) {		
		
		//변수 받기
		HttpSession session = request.getSession();
		UserVo login = (UserVo) session.getAttribute("login");	 
				
		//나이 계산		
		String UYearStr =login.getUser_birthdate().substring(0, 4);
		int UYear = Integer.parseInt(UYearStr);
		int CYear = LocalDate.now().getYear();
		int age = CYear - UYear;
		
		
		//수 세기
		int  User_idx =login.getUser_idx();	    
		int  CountR= userMapper.countR(User_idx);
		int  CountB= userMapper.countB(User_idx);
		int  CountA= userMapper.countA(User_idx);
		int  CountS= userMapper.countS(User_idx);
	    		
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("userVo",login);		
		mv.addObject("CountR",CountR);	
		mv.addObject("CountB",CountB);	
		mv.addObject("CountA",CountA);	
		mv.addObject("CountS",CountS);	
		mv.addObject("UYear",UYear);	
		mv.addObject("age",age);	
		mv.setViewName("user/mypage/home/view");
		return mv;
	}
	
	@RequestMapping("/Home/updateForm")
	 public ModelAndView homeupdateForm(UserVo uservo) {	
		
		UserVo vo = userMapper.getUser(uservo);
		
		
		//나이 계산		
		String UYearStr =vo.getUser_birthdate().substring(0, 4);
		int UYear = Integer.parseInt(UYearStr);
		int CYear = LocalDate.now().getYear();
		int age = CYear - UYear;
		
		
        ModelAndView mv = new ModelAndView();		
		mv.setViewName("user/mypage/home/update");
		mv.addObject("userVo",vo);
		mv.addObject("UYear",UYear);	
		mv.addObject("age",age);
		return mv;
		
	}
	@RequestMapping("/Home/update")
	public ModelAndView homeupdate(UserVo uservo) {
	
		userMapper.updateUser(uservo);

		
    ModelAndView mv = new ModelAndView();		
	 mv.setViewName("redirect:/User/MyPage/Home/View");
    return mv;
	}
	
	@RequestMapping("/ApplyList/List")
	public ModelAndView appplylist(UserVo uservo) {
	
     List <UserApplicationListVo> applyList =userMapper.getApplycation(uservo.getUser_idx());

     
     
	ModelAndView mv = new ModelAndView();	
	mv.addObject("applyList",applyList);	
	mv.addObject("user_idx",uservo.getUser_idx());	
	mv.setViewName("user/mypage/applyList/list");
	return mv;
	
	}
	@RequestMapping("/ApplyList/Delete")
	public ModelAndView appplydelete(ApplicationVo vo) {
	    
		//user_idx 구하기
		ApplicationVo avo = userMapper.getApply(vo.getAppli_idx());
		ResumeVo rvo = userMapper.getResume(avo.getResume_idx());
		
		//제거 
		userMapper.deleteApply(vo.getAppli_idx());   		
		ModelAndView mv = new ModelAndView();
	
		mv.setViewName("redirect:/User/MyPage/ApplyList/List?user_idx="+rvo.getUser_idx());
		
		return mv;
	
	}
	@RequestMapping("/BookMark/List")
	public ModelAndView bookmarklist(UserVo uservo) {
		
		//관심기업
		List<UserBookmarkVo> BookmarkList = userMapper.getBookList(uservo); 
		
		//받은 제안
		List<UserScoutVo> ScoutList = userMapper.getScoutList(uservo.getUser_idx());
				
		ModelAndView mv = new ModelAndView();
		mv.addObject("BookmarkList",BookmarkList);	
		mv.addObject("ScoutList",ScoutList);	
		mv.setViewName("user/mypage/bookmark/list");
		return mv;
	}
	
	@RequestMapping("/BookMark/View")
	public ModelAndView bookmarkview(UserBookmarkVo bVo) {
		
		//view 내릴 정보
		PostListVo vo = userMapper.getPost(bVo.getPost_idx());
		CompanyVo cvo= userMapper.getCompany(bVo.getPost_idx());
		
		//이력서 도출
		List<ResumeVo> SRList = userMapper.getSRList(bVo.getUser_idx());
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/mypage/bookmark/view");
		mv.addObject("postVo",vo);	
		mv.addObject("companyVo",cvo);	
		mv.addObject("resumeList",SRList);	
		mv.addObject("user_idx",bVo.getUser_idx());	
		return mv;
	}
	
	@RequestMapping("/Apply")
	public ModelAndView apply(ApplicationVo aVO) {
		
		//insert
		userMapper.insertApply(aVO);
		
		//경로 변수
		int pidx =aVO.getPost_idx();
		int ridx =aVO.getResume_idx();
		ResumeVo rvo = userMapper.getResume(ridx);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/User/MyPage/BookMark/View?post_idx=" +pidx+"&user_idx="+rvo.getUser_idx());
				
		return mv;
	}	
	
	@RequestMapping(value="/BookMark/On")
	@ResponseBody
	public String on(@RequestParam("post_idx") int post_idx,@RequestParam("user_idx") int user_idx) {
		
		userMapper.insertBookmark(post_idx,user_idx);
		
		return "";	
	}
	
	@RequestMapping(value="/BookMark/Off")
	@ResponseBody
	public String off(@RequestParam("ub_idx") int ub_idx) {
		
		userMapper.deleteBookmark(ub_idx);
        
		return "";		
	}
	
	@RequestMapping("/Resume/List")
	public ModelAndView resumeList(ResumeVo resumeVo) {
	
	List <ResumeVo> resumeList =userMapper.getResumeList(resumeVo);
	
	ModelAndView mv = new ModelAndView();	
	mv.addObject("resumeList",resumeList);
	mv.setViewName("user/mypage/resume/list");
	return mv;
	}
	
	@RequestMapping("/Resume/View")
	public ModelAndView resumeView (ResumeListVo resumeListVo) {
	
	//이력서 정보
	ResumeListVo vo  =userMapper.getResumeLong(resumeListVo);
	
	ModelAndView mv = new ModelAndView();	
	mv.addObject("resumeVo",vo);
	mv.setViewName("user/mypage/resume/view");
	return mv;
	}
	
	@RequestMapping("/Resume/UpdateForm")
	public ModelAndView resumeUpdateForm (ResumeListVo resumeListVo) {
	
	//이력서 정보
	ResumeListVo vo  =userMapper.getResumeLong(resumeListVo);
	

	//필터 정보
	List<EduVo> edVo =userMapper.getEduList();
	List<CityVo> cVo =userMapper.getCityList();
	List<DutyVo> dVo =userMapper.getDutyList();
	List<EmpVo> epVo =userMapper.getEmpList();
	List<SkillVo> sVo =userMapper.getSkillList();
    
	ModelAndView mv = new ModelAndView();	
	
	//년도 날짜 계산 
	if(vo.getCareer_sdate() != null) {
	String sYear = vo.getCareer_sdate().substring(0, 4);
	String eYear = vo.getCareer_edate().substring(0, 4);
	String sMonth = vo.getCareer_sdate().substring(6, 7);
	String eMonth = vo.getCareer_edate().substring(6, 7);
	mv.addObject("sYear",sYear);
	mv.addObject("eYear",eYear);
	mv.addObject("sMonth",sMonth);
	mv.addObject("eMonth",eMonth);
	
	}
	

	mv.addObject("resumeVo",vo);
	mv.addObject("Edu",edVo);
	mv.addObject("City",cVo);
	mv.addObject("Duty",dVo);
	mv.addObject("Emp",epVo);
	mv.addObject("Skill",sVo);

	
	mv.setViewName("user/mypage/resume/update");
	return mv;
	}
	
	@RequestMapping("/Resume/Update")
	public ModelAndView resumeupdate(ResumeVo resumeVo, 
			                         @RequestParam(value="skill_name", 
			                        		       required = false) String skill_name,
			                         @RequestParam(value="career_cname",required = false) String career_cname,
			                         @RequestParam(value="career_description",required = false) String career_description,
			                         @RequestParam(value="career_sdate",required = false) String career_sdate,
			                         @RequestParam(value="career_edate",required = false) String career_edate) {
		
	//이력서 정보 업데이트	
	userMapper.updateResume(resumeVo);	
	//기술 정보 업데이트
	if(skill_name != null ) {
	userMapper.updateSkill(resumeVo.getResume_idx(),skill_name); }	
	//경력 정보 업데이트
	if(career_cname != null) {
	userMapper.updateCareer(career_cname,career_description,career_sdate,career_edate,resumeVo.getResume_idx());
	}
	
	
		ModelAndView mv = new ModelAndView();	
		mv.setViewName("redirect:/User/MyPage/Resume/UpdateForm?resume_idx="+resumeVo.getResume_idx());
		return mv;
		
	
	}
	
	
	
	
}

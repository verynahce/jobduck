package com.prj.main.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.prj.main.vo.CareerVo;
import com.prj.main.vo.CityVo;
import com.prj.main.vo.DutyVo;
import com.prj.main.vo.EmpVo;
import com.prj.main.vo.PostListVo;
import com.prj.main.vo.ResumeListVo;
import com.prj.main.vo.ReviewCompanyInfoVo;
import com.prj.main.vo.ReviewCompanyListVo;
import com.prj.main.vo.SkillVo;
import com.prj.main.vo.UserReviewVo;
import com.prj.users.vo.ApplicationVo;

@Mapper
public interface MainMapper {
	List<CityVo> 	getCityList();
	List<DutyVo> 	getDutyList();
	List<CareerVo> 	getCareerList();
	List<EmpVo>		getEmpList();
	List<SkillVo> 	getSkillList();
	
	 /* 채용정보 부분 */
	PostListVo 			getPost(String post_idx);
	List<PostListVo>	getCompanyPost(int company_idx);
    List<PostListVo> 	getPostList();
    List<PostListVo> 	getFilteredPosts(@Param("city_id")    String cityId,
	                                 	 @Param("duty_id") 	  String dutyId,
	                                 	 @Param("career_id")  String careerId,
	                                 	 @Param("emp_id") 	  String empId,
	                                 	 @Param("skill_id")   String skillId);
    void updatePostHit(String post_idx);
	
    
    /* 인재정보 부분 */
    ResumeListVo getResume(String resume_idx);
    List<ResumeListVo>  getUserResume(int user_idx);
	List<ResumeListVo> 	getResumeList();
	List<ResumeListVo> getFilteredResumes(@Param("city_id")   String cityId,
							        	  @Param("duty_id")   String dutyId,
							        	  @Param("career_id") String careerId,
							        	  @Param("emp_id") 	  String empId,
							        	  @Param("skill_id")  String skillId);
	void updateResumeHit(String resume_idx);
	List<ReviewCompanyListVo> getCompanyList();
	void insertApply(ApplicationVo vo);
	void insertReview(UserReviewVo vo);
	ReviewCompanyInfoVo getCompanyInfo(String company_idx);
	Integer getReviewCount(String company_idx);
	List<UserReviewVo> getUserReview(String company_idx);
	List<UserReviewVo> getMyReview(int user_idx);
	UserReviewVo vo(int review_idx);
	UserReviewVo getReviewData(int review_idx);
	void updateReview(UserReviewVo vo);
	void deleteReview(UserReviewVo vo);
	int getCount();
	Double getTotPoint(String post_idx);

	
}
package com.prj.users.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.prj.companys.vo.CompanyVo;
import com.prj.main.vo.CityVo;
import com.prj.main.vo.DutyVo;
import com.prj.main.vo.EmpVo;
import com.prj.main.vo.PostListVo;
import com.prj.main.vo.ResumeListVo;
import com.prj.main.vo.SkillVo;
import com.prj.users.vo.ApplicationVo;
import com.prj.users.vo.EduVo;
import com.prj.users.vo.ResumeVo;
import com.prj.users.vo.UserApplicationListVo;
import com.prj.users.vo.UserBookmarkVo;
import com.prj.users.vo.UserScoutVo;
import com.prj.users.vo.UserVo;

@Mapper
public interface UserMapper {

	void insertUser(UserVo userVo);

	UserVo login(String userid, String passwd);

    int countR(int user_idx);

	int countB(int user_idx);

	int countA(int user_idx);

	int countS(int user_idx);

	UserVo getUser(UserVo uservo);

	void updateUser(UserVo uservo);

	ApplicationVo getApply(int appli_idx);

	List<UserApplicationListVo> getApplycation(int user_idx);

	void deleteApply(int appli_idx);

	ResumeVo getResume(int resume_idx);

	CompanyVo getCompany(int post_idx);

	PostListVo getPost(int post_idx);

	List<UserBookmarkVo> getBookList(UserVo uservo);

	List<ResumeVo> getSRList(int user_idx);

	void insertApply(ApplicationVo aVO);

	List<UserScoutVo> getScoutList(int user_idx);

	void deleteBookmark(int ub_idx);

	void insertBookmark(int post_idx, int user_idx);

	List<ResumeVo> getResumeList(ResumeVo resumeVo);

	ResumeListVo getResumeLong(ResumeListVo resumeListVo);

	List<EduVo> getEduList();

	List<CityVo> getCityList();

	List<DutyVo> getDutyList();

	List<EmpVo> getEmpList();

	List<SkillVo> getSkillList();

	void updateResume(ResumeVo resumeVo);

	void updateSkill(int resume_idx, String skill_name);

	void updateCareer(String career_cname, String career_description, String career_sdate, String career_edate);

	void updateCareer(String career_cname, String career_description, String career_sdate, String career_edate,
			int resume_idx);

	

	







;











}

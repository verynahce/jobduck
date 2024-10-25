package com.prj.companys.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.prj.companys.vo.CompanyVo;
import com.prj.users.vo.UserVo;

@Mapper
public interface CompanyMapper {

	void insertCompany(CompanyVo companyVo);

	CompanyVo login(String userid, String passwd);

}

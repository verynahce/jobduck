package com.prj.companies.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.prj.companies.vo.CompanyVo;

@Mapper
public interface CompanyMapper {

	void insertCompany(CompanyVo companyVo);

}

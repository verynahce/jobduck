package com.prj.main.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.prj.companies.vo.CompanyVo;
import com.prj.main.vo.PostVo;

@Mapper
public interface MainMapper {

	List<String> getSkill();

	List<PostVo> getPostList();

}

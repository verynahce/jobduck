package com.prj.main.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.prj.main.vo.PostVo;

@Mapper
public interface MainMapper {
    List<String> getSkill();
    List<PostVo> getPostList();
    
    List<PostVo> getFilteredPosts(@Param("city_id") String cityId,
                                   @Param("duty_id") String dutyId,
                                   @Param("career_id") String careerId,
                                   @Param("emp_id") String empId,
                                   @Param("skills") String skills);
}
package com.prj.users.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.prj.users.vo.UserVo;

@Mapper
public interface UserMapper {

	void insertUser(UserVo userVo);

	UserVo login(String userid, String passwd);


}

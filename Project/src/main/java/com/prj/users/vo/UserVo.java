package com.prj.users.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserVo {
	private int 	user_idx;
	private String 	user_id;
	private String 	user_name;
	private String 	user_pw;
	private String 	user_birthdate;
	private String 	user_gender;
	private String 	user_email;
	private String 	user_tel;
}

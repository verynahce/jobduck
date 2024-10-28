package com.prj.users.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserBookmarkVo {

	private int ub_idx;
	private int user_idx;
	private int post_idx;
	private String post_title;
	private String post_ddate;
	private String company_name;
}

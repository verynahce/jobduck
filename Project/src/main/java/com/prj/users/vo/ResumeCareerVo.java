package com.prj.users.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ResumeCareerVo {


	private int	 career_idx;
	private int	 resume_idx;
	private String career_cname;
	private String career_description;
	private int career_sdate;
	private int career_edate;
	
}

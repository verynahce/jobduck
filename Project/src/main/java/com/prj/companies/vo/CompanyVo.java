package com.prj.companies.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CompanyVo {
	private int		company_idx;
	private String 	company_id;
	private String 	company_pw;
	private String 	company_name;
	private String 	company_brnum;
	private String	company_tel;
	private String	company_area;
	private String	rep_name;
	private String	company_email;
	private String	company_point;
}

package com.prj.main.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReviewWriterVo {
	private int 	 review_idx;
	private int 	 user_idx;
	private int 	 company_idx;
	private double 	 tot_point;
	private String 	 review_title;
	private String 	 review_pros;
	private String 	 review_con;
	private String 	 review_date;
}

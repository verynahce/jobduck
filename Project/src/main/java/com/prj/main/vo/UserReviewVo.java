package com.prj.main.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserReviewVo {
	private int 	 review_idx;
	private int 	 user_idx;
	private String 	 review_cname;
	private int 	 wc_point;
	private int 	 wlb_point;
	private int 	 cc_point;
	private int 	 po_point;
	private int 	 em_point;
	private String 	 review_title;
	private String 	 review_pros;
	private String 	 review_con;
	private String 	 review_date;
}

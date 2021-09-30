package com.example.teamproject.Vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class FreeBoardSellerVo {
	private int fbs_num;
	private String fbs_title;
	private String fbs_content;
	private String fbs_category;
	private String fbs_date;
	//private String FM_NAME;
	private int fbs_hit;
	private String fm_id;
}

package com.example.teamproject.Vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class FreeBoardSellerCommentVo {
	private int c_no;
	private String c_content;
	private String fm_id;
	private String c_date;
	private int fbs_num;
}

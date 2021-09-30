package com.example.teamproject.Vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReviewVo {
	private int r_no;
	private int m_no;
	private int finfo_no;
	private String r_date;
	private String m_nickname;
	private String m_name;
	private String r_content;
	private int r_rate;
}

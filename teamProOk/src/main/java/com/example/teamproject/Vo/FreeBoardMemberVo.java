package com.example.teamproject.Vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class FreeBoardMemberVo {
	private int fbm_num;
	private String fbm_title;
	private String fbm_content;
	private String fbm_category;
	private String fbm_date;
	private String m_nickname;
	private int fbm_hit;
	private String m_id;
}

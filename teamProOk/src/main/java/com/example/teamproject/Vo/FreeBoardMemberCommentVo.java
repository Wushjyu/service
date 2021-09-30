package com.example.teamproject.Vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class FreeBoardMemberCommentVo {
	private int c_no;
	private String c_content;
	private String m_nickname;
	private String m_id;
	private String c_date;
	private int fbm_num;
}

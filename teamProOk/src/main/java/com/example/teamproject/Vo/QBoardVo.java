package com.example.teamproject.Vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class QBoardVo {

	private int q_num;
	private String q_title;
	private String q_content;
	private int q_group;
	private String q_date;
	private String q_category;
	private String q_member;
	private String q_status;
	private String member_id;
	private String m_nickname;
	private String fm_name;
}

package com.example.teamproject.Vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class NoticeBoardVo {
	private int n_num;
	private String n_title;
	private String n_content;
	private String n_date;
	private String m_nickname;
	private int n_hit;
	private String a_id;
}

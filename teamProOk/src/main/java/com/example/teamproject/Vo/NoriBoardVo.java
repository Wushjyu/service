package com.example.teamproject.Vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class NoriBoardVo {
	private int nb_num;
	private String nb_title;
	private String nb_content;
	private String nb_category;
	private String nb_date;
	private String m_nickname;
	private int nb_hit;
	private String m_id;
}

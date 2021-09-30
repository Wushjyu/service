package com.example.teamproject.Vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class EventBoardVo {
	private int eb_num;
	private String eb_title;
	private String eb_content;
	private String eb_date;
	private String eb_start_date;
	private String eb_end_date;
	private int eb_status;
	private String m_nickname;
	private int eb_hit;
	private String fm_name;
	private String fm_id;
	private String finfo_name;
	private String img_name;
}

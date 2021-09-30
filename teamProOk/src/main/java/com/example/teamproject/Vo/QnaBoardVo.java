package com.example.teamproject.Vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class QnaBoardVo {
	private int qb_num;
	private String qb_title;
	private String qb_content;
	private String qb_category;
}

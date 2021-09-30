package com.example.teamproject.Vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MemberVo {

	private int m_no;
	private String m_id;
	private String m_pw;
	private String m_name;
	private String m_nickname;
	private String m_birth;
	private String m_gender;
	private String m_email;
	private String m_post;
	private String m_add1;
	private String m_add2;
	private String m_phone;
	private String m_grade;
	private String m_point;
	private String m_hit;
	private String email_check;
}

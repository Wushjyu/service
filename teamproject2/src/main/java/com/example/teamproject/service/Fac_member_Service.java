package com.example.teamproject.service;

import com.example.teamproject.vo.Fac_member_Vo;

public interface Fac_member_Service {

	//insertMemberList
	int insertMemberList(Fac_member_Vo fac_member_Vo);
	//memberLogin
	Fac_member_Vo memberLogin(String m_id, String m_pw);

}

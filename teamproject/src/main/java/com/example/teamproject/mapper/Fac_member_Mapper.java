package com.example.teamproject.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.example.teamproject.vo.Fac_member_Vo;

@Mapper
public interface Fac_member_Mapper {
	
	//insertMemberList
	int insertMemberList(Fac_member_Vo fac_member_Vo);
	//memberLogin
	Fac_member_Vo memberLogin(String m_id, String m_pw);

}

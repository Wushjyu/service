package com.example.teamproject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.teamproject.mapper.Fac_member_Mapper;
import com.example.teamproject.vo.Fac_member_Vo;

@Service
public class Fac_member_ServiceImpl implements Fac_member_Service {
	
	@Autowired
	Fac_member_Mapper fac_member_Mapper;
	
	@Override//회원가입
	public int insertMemberList(Fac_member_Vo fac_member_Vo) {
		int insert = fac_member_Mapper.insertMemberList(fac_member_Vo);
		return insert;
	}

	@Override//회원로그인
	public Fac_member_Vo memberLogin(String m_id, String m_pw) {
		Fac_member_Vo fac_member_Vo = fac_member_Mapper.memberLogin(m_id, m_pw);
		return fac_member_Vo;
	}

}

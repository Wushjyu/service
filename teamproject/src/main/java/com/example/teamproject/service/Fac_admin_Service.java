package com.example.teamproject.service;

import java.util.List;
import java.util.Map;

import com.example.teamproject.vo.Fac_admin_Vo;
import com.example.teamproject.vo.Fac_important_Vo;

public interface Fac_admin_Service {

	//insertList
	int insertFile(Fac_admin_Vo fac_admin_Vo);

	//allList
	Map<String, Object> selectAllList(int page);

	//selectOneList
	Fac_admin_Vo selectOneList(int finfo_no);

	//modify
	int updateListModify(Fac_admin_Vo fac_admin_Vo);

	//delete
	void deleteOneList(int finfo_no);

	//selectOneView
	Fac_admin_Vo selectOneView(int finfo_no);

	//insertReserve
	Map<String, Object> insertResultList(Fac_important_Vo fac_important_Vo);
	
	//예약취소하면서 삭제
	int fac_reserveDelete(int finfo_no);
	
	//예약리스트를 출력
	List<Fac_important_Vo> selectAllReserveList();

}

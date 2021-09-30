package com.example.teamproject.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.teamproject.vo.Fac_admin_Vo;
import com.example.teamproject.vo.Fac_important_Vo;

@Mapper
public interface Fac_admin_Mapper {

	//insertList
	int insertFile(Fac_admin_Vo fac_admin_Vo);

	//AllList
	List<Fac_admin_Vo> selectAllList();

	//selectOneList
	Fac_admin_Vo selectOneList(int finfo_no);

	//modify
	int updateOneList(Fac_admin_Vo fac_admin_Vo);

	//delete
	void deleteOneList(int finfo_no);

	//selectOneView
	Fac_admin_Vo selectOneView(int finfo_no);

	//selectAllReserveList
	List<Fac_important_Vo> selectAllReserveList();
	
	//insertOneReserveList
	int insertReserve(Fac_important_Vo fac_important_Vo);

	//예약취소하면서 삭제
	int reserveDelete(int finfo_no);

	

}

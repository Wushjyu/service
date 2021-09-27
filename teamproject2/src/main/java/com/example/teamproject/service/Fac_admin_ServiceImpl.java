package com.example.teamproject.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.teamproject.mapper.Fac_admin_Mapper;
import com.example.teamproject.vo.Fac_admin_Vo;
import com.example.teamproject.vo.Fac_important_Vo;

import ch.qos.logback.core.net.SyslogOutputStream;
import ch.qos.logback.core.recovery.ResilientSyslogOutputStream;

@Service
public class Fac_admin_ServiceImpl implements Fac_admin_Service {

	@Autowired
	Fac_admin_Mapper fac_admin_Mapper;
	
	@Override//insertList
	public int insertFile(Fac_admin_Vo fac_admin_Vo) {
		int result = fac_admin_Mapper.insertFile(fac_admin_Vo);
		return result;
	}

	@Override//allList
	public Map<String, Object> selectAllList(int page) {
		Map<String, Object> map = new HashMap<String, Object>();
		List<Fac_admin_Vo> list	= fac_admin_Mapper.selectAllList();
		map.put("list", list);
		map.put("page", page);
		return map;
	}

	@Override//selectOneList
	public Fac_admin_Vo selectOneList(int finfo_no) {
		Fac_admin_Vo fac_admin_Vo = fac_admin_Mapper.selectOneList(finfo_no);
		return fac_admin_Vo;
	}

	@Override//modify
	public int updateListModify(Fac_admin_Vo fac_admin_Vo) {
		int result = fac_admin_Mapper.updateOneList(fac_admin_Vo);
		return result;
	}

	@Override//delete
	public void deleteOneList(int finfo_no) {
		fac_admin_Mapper.deleteOneList(finfo_no);
		
	}

	@Override//selectoneview
	public Fac_admin_Vo selectOneView(int finfo_no) {
		Fac_admin_Vo dac_adminVo = fac_admin_Mapper.selectOneView(finfo_no);
		return dac_adminVo;
	}

	@Override//insertReserve
	public Map<String, Object> insertResultList(Fac_important_Vo fac_important_Vo) {
		Map<String, Object> map = new HashMap<String, Object>();
		int result = 0;
		String result2 = "";
		List<Fac_important_Vo> list = fac_admin_Mapper.selectAllReserveList(); 
		
			for(int i=0; i<list.size(); i++) {
		
				if(fac_important_Vo.getR_date().equals(list.get(i).getR_date()) && fac_important_Vo.getR_times().equals(list.get(i).getR_times())){
					result2 = "fail";
					System.out.println("result1: "+result2);
					System.out.println(fac_important_Vo.getR_date());
					System.out.println(list.get(i).getR_date());
					break;
				}else {
					result2="success";
					//continue;
				}
			}
				if(result2.equals("success")) {
					result = fac_admin_Mapper.insertReserve(fac_important_Vo);
					System.out.println("result3 : "+result2);
					System.out.println(fac_important_Vo.getR_date());
				}
		
		map.put("result", result);
		map.put("result2",result2);
		map.put("fac_important_Vo", fac_important_Vo);

		return map;
	}

	@Override
	public int fac_reserveDelete(int finfo_no) {
		int result = fac_admin_Mapper.reserveDelete(finfo_no);
		return result;
	}

	@Override
	public List<Fac_important_Vo> selectAllReserveList() {
		List<Fac_important_Vo> list = fac_admin_Mapper.selectAllReserveList();
		return list;
	}

}

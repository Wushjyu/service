package com.example.teamproject.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class admin_Controller {

	//관리자 메인 페이지
	@GetMapping("admin_main")
	public String addmin_main() {
		return"/admin/admin_main";
	}

	//관리자 블랙 리스트 페이지
	@GetMapping("admin_blacklist")
	public String admin_blacklist() {
		return"/admin/admin_blacklist";
	}
	
	//관리자 시설관리자 목록 리스트
	@GetMapping("admin_fac_list")
	public String admin_fac_list() {
		return"/admin/admin_fac_list";
	}
	
	//관리자 회원 목록 리스트
	@GetMapping("admin_member_list")
	public String admin_member_list() {
		return"/admin/admin_member_list";
	}
	
	//관리자 문의 사항 리스트
	@GetMapping("askboard_list")
	public String askboard_list() {
		return"/admin/askboard_list";
	}
	
	//관리자 이벤트 게시판 리스트
	@GetMapping("eventboard_list")
	public String eventboard_list() {
		return"/admin/eventboard_list";
	}
	
	//관리자 자유 게시판 리스트
	@GetMapping("freeboard_list")
	public String freeboard_list() {
		return"/admin/freeboard_list";
	}
	
	//관리자 노리 게시판 리스트
	@GetMapping("noriboard_list")
	public String noriboard_list() {
		return"/admin/noriboard_list";
	}
	
	//관리자 공지사항 게시판 리스트
	@GetMapping("noticeboard_list")
	public String noticeboard_list() {
		return"/admin/noticeboard_list";
	}
	
	//관리자 qna 게시판 리스트
	@GetMapping("qnaboard_list")
	public String qnaboard_list() {
		return"/admin/qnaboard_list";
	}
}

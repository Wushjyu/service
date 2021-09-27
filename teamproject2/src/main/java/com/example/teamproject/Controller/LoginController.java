package com.example.teamproject.Controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.http.server.reactive.ServerHttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.teamproject.service.Fac_admin_Service;
import com.example.teamproject.service.Fac_member_Service;
import com.example.teamproject.vo.Fac_member_Vo;

@Controller
public class LoginController {

	@Autowired
	Fac_member_Service fac_member_ServiceImpl;
	
	@GetMapping("index")
	public String index() {
		return "/index";
	}
	
	//로그인페이지 이동
	@GetMapping("login")
	public String login() {
		return "/login/login_resist_form";
	}

	//회원가입 이동
	@GetMapping("Sign_up_form")
	public String Sign_up_form() {
		return "/login/Sign_up_form";
	}
	
	//회원가입 이동
	@PostMapping("Sign_up_form1")
	@ResponseBody
	public int Sign_up_form(Fac_member_Vo fac_member_Vo) {
		int result = fac_member_ServiceImpl.insertMemberList(fac_member_Vo);
		System.out.println("result:"+result);
		return result;
	}
	
	@PostMapping("main")
	public String main(@RequestParam String m_id,
					   @RequestParam String m_pw,
					   HttpServletRequest request,
					   Model model) {
		Fac_member_Vo fac_member_Vo = fac_member_ServiceImpl.memberLogin(m_id, m_pw);
		HttpSession session = request.getSession();
		if(fac_member_Vo == null) {
			session.setAttribute("session_flag", "fail");
		}else if(fac_member_Vo != null) {
			session.setAttribute("session_flag", "session");
			session.setAttribute("session_id", fac_member_Vo.getM_id());
			session.setAttribute("session_name", fac_member_Vo.getM_nickname());
		}
		model.addAttribute("fac_member_Vo", fac_member_Vo);
		return "fac_admin/fac_register";
	}
	
	//찾기 이동
	@GetMapping("Find")
	public String Find() {
		return "/login/find";
	}
}

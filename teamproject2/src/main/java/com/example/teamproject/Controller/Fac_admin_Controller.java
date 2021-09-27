package com.example.teamproject.Controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.example.teamproject.service.Fac_admin_Service;
import com.example.teamproject.vo.Fac_admin_Vo;
import com.example.teamproject.vo.Fac_important_Vo;

@Controller
public class Fac_admin_Controller {

	@Autowired
	Fac_admin_Service fac_admin_Service;

	// 시설 관리자 예약 취소 목록
	@GetMapping("fac_cancel")
	public String fac_cancel() {
		return "/fac_admin/fac_cancel";
	}

	// 시설 관리자 후기 댓글 모음
	@GetMapping("fac_comment")
	public String fac_comment() {
		return "/fac_admin/fac_comment";
	}
	
	// 시설 관리자 후기 댓글 모음
	@GetMapping("fac_commentList")
	public String fac_commentList() {
		return "/fac_admin/fac_commentList";
	}

	// 시설 관리자 시설 목록 현황
	@GetMapping("fac_list")
	public String fac_list1(@RequestParam(value="page", defaultValue = "1") int page,
							Model model) {
		Map<String, Object> map = fac_admin_Service.selectAllList(page);
		model.addAttribute("map", map);
		return "/fac_admin/fac_list";
	}

	// 시설 관리자 시설 목록 현황
	@GetMapping("fac_modify")
	public String fac_modify(@RequestParam int finfo_no, Model model) {
		Fac_admin_Vo fac_admin_Vo = fac_admin_Service.selectOneList(finfo_no);
		model.addAttribute("fac_admin_Vo", fac_admin_Vo);

		return "/fac_admin/fac_modify";
	}

	@PostMapping("fac_modify")
	public String fac_modify(@RequestParam int finfo_no,
							 Fac_admin_Vo fac_admin_Vo, 
							 @RequestParam("files") List<MultipartFile> files,
							 HttpServletRequest request,
						     Model model) throws Exception {
	
		//5장 같이 수정할 필요 없지만 1번째 배열에 파일이 들어가 있어야됨.
		String[] uploadFileName = null;
		if(files.get(0).getSize() != 0) {
			String fileUrl = "C:\\sts_workspace\\teamproject2\\src\\main\\resources\\static\\upload\\";
			uploadFileName = new String[files.size()];
			for(int i=0; i<files.size(); i++) {
				String originFileName= files.get(i).getOriginalFilename();
				long time = System.currentTimeMillis();
				uploadFileName[i] = String.format("%d_%s",time,originFileName);//숫자 /문자
				fac_admin_Vo.setFinfo_pic1(uploadFileName[0]);
				fac_admin_Vo.setFinfo_pic2(uploadFileName[1]);
				fac_admin_Vo.setFinfo_pic3(uploadFileName[2]);
				fac_admin_Vo.setFinfo_pic4(uploadFileName[3]);
				fac_admin_Vo.setFinfo_pic5(uploadFileName[4]);
				File f = new File(fileUrl + uploadFileName[i]);
				files.get(i).transferTo(f);
			}
		}else{
			String old_fails1 = request.getParameter("old_fails1");
			String old_fails2 = request.getParameter("old_fails2");
			String old_fails3 = request.getParameter("old_fails3");
			String old_fails4 = request.getParameter("old_fails4");
			String old_fails5 = request.getParameter("old_fails5");
			System.out.println("old_fails2:"+old_fails2);
			
			fac_admin_Vo.setFinfo_pic1(old_fails1);
			fac_admin_Vo.setFinfo_pic2(old_fails2);
			fac_admin_Vo.setFinfo_pic3(old_fails3);
			fac_admin_Vo.setFinfo_pic4(old_fails4);
			fac_admin_Vo.setFinfo_pic5(old_fails5);
			System.out.println("fac_admin_Vo.getFinfo_pic2()"+fac_admin_Vo.getFinfo_pic2());
			}	
		int result = fac_admin_Service.updateListModify(fac_admin_Vo);
		return "redirect:/fac_view?finfo_no="+finfo_no;
}
//---------------------------------------------------------------------------------------
		//어느 위치에 있는 파일을 변경해도됨
//		String[] uploadFileName = null;
//		for(int i=0;i<files.size();i++) {
//			if(files.get(i)!=null) {
//				String fileUrl = "C:\\workspace\\teamproject2\\src\\main\\resources\\static\\upload\\";
//				uploadFileName = new String[files.size()];
//				String originFileName = files.get(i).getOriginalFilename();
//				long time = System.currentTimeMillis();
//				uploadFileName[i] = String.format("%d_%s", time, originFileName);
//				switch (i) {
//				case 0:
//					fac_admin_Vo.setFinfo_pic1(uploadFileName[0]);
//					break;
//				case 1:
//					fac_admin_Vo.setFinfo_pic2(uploadFileName[1]);
//					break;
//				case 2:
//					fac_admin_Vo.setFinfo_pic3(uploadFileName[2]);
//					break;
//				case 3:
//					fac_admin_Vo.setFinfo_pic4(uploadFileName[3]);
//					break;
//				case 4:
//					fac_admin_Vo.setFinfo_pic5(uploadFileName[4]);
//					break;
//				}
//				File f = new File(fileUrl + uploadFileName[i]);
//				files.get(i).transferTo(f);
//				System.out.println("finfoVo.getFinfo_PIC1:" + fac_admin_Vo.getFinfo_pic1());
//			}
//		}
//		int result = fac_admin_Service.updateListModify(fac_admin_Vo);
//		return "redirect:/fac_view?finfo_no="+finfo_no;
//	}
	

//-----------------------------------------------------------------------------------------------



	// 시설 관리자 문의 현황
	@GetMapping("fac_qna")
	public String fac_qna() {
		return "/fac_admin/fac_qna";
	}

	// 시설 관리자 시설 등록 페이지
	@GetMapping("fac_register")
	public String fac_register() {
		return "/fac_admin/fac_register";
	}

	@PostMapping("fac_register")
	//@ResponseBody
	public String fac_registerOk(Fac_admin_Vo fac_admin_Vo, 
								@RequestParam("files") List<MultipartFile> files,
								Model model) throws Exception {
		System.out.println("files:"+files);
		String[] uploadFileName = null;
		if (files.get(0).getSize() != 0) {
			String fileUrl = "C:\\sts_workspace\\teamproject2\\src\\main\\resources\\static\\upload\\";
			uploadFileName = new String[files.size()];

			for (int i = 0; i < files.size(); i++) {
				String originFileName = files.get(i).getOriginalFilename();
				long time = System.currentTimeMillis();
				uploadFileName[i] = String.format("%d_%s", time, originFileName);
				fac_admin_Vo.setFinfo_pic1(uploadFileName[0]);
				fac_admin_Vo.setFinfo_pic2(uploadFileName[1]);
				fac_admin_Vo.setFinfo_pic3(uploadFileName[2]);
				fac_admin_Vo.setFinfo_pic4(uploadFileName[3]);
				fac_admin_Vo.setFinfo_pic5(uploadFileName[4]);

				File f = new File(fileUrl + uploadFileName[i]);
				files.get(i).transferTo(f);
				System.out.println("finfoVo.getFinfo_PIC1:" + fac_admin_Vo.getFinfo_pic1());
			}
		}
		int result = fac_admin_Service.insertFile(fac_admin_Vo);
		model.addAttribute("result",result);
		//String resultOk ="";
		//if( result == 0) resultOk = "fail";
		//else resultOk = "success";
		
		return "/fac_admin/fac_register_Ok";
	}

	// 시설 관리자 예약 목록 현황
	@GetMapping("fac_reserve")
	public String fac_reserve() {
		return "/fac_admin/fac_reserve";
	}

	// 시설 관리자 시설 뷰 페이지
	@GetMapping("fac_view")
	public String fac_view(@RequestParam int finfo_no, 
							//@RequestParam(value="page", defaultValue="1") int page,
							Model model) {
		Fac_admin_Vo fac_admin_Vo = fac_admin_Service.selectOneList(finfo_no);
		model.addAttribute("fac_admin_Vo", fac_admin_Vo);
		return "/fac_admin/fac_view";
	}
	
	// 시설 관리자 시설 삭제
	@GetMapping("fac_delete")
	public String fac_delete(@RequestParam int finfo_no) {
		fac_admin_Service.deleteOneList(finfo_no);
		return "redirect:/fac_list";
	}

	// 시설 관리자 뷰페이지를 통해 예약하기
	@GetMapping("fac_selectView")
	public String fac_selectView(@RequestParam int finfo_no,
								Model model) {
		System.out.println("finfo_no:"+finfo_no);
		Fac_admin_Vo fac_admin_Vo = fac_admin_Service.selectOneView(finfo_no);
		model.addAttribute("fac_admin_Vo",fac_admin_Vo);
		return "/fac_admin/fac_important";
	}
	
	

	@PostMapping("fac_important")
	@ResponseBody
	public Map<String, Object> fac_important(Fac_important_Vo fac_important_Vo) {
		Map<String, Object> map = fac_admin_Service.insertResultList(fac_important_Vo);
		System.out.println("1:"+fac_important_Vo.getFinfo_name());
		
		return map;
	}
	
	@RequestMapping("fac_importantList")
	public String fac_importantList(Model model) {
		List<Fac_important_Vo> list = fac_admin_Service.selectAllReserveList();
		model.addAttribute("list",list);
		return "fac_admin/fac_importantList";
	}
	
	@GetMapping("fac_reserveDelete")//예약취소하면서 삭제
	public String fac_reserveDelete(@RequestParam int finfo_no) {
		int result = fac_admin_Service.fac_reserveDelete(finfo_no);
		String result2 = "";
		if(result != 0) {
			result2 = "삭제성공!";
		}
		return "redirect:/fac_view?finfo_no="+finfo_no;
	}
	
	
	
	// 시설 관리자 정보 관리 페이지
	@GetMapping("fm_mypage")
	public String fm_mypage() {
		return "/fac_admin/fm_mypage";
	}
}

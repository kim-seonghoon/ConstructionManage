package com.green.view.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.green.biz.complaints.ComplaintsService;
import com.green.biz.dto.CompanyVO;
import com.green.biz.dto.ComplaintsVO;
import com.green.biz.dto.UserVO;

@Controller
public class ComplaintController {

	@Autowired
	ComplaintsService complaintService;
	
	@RequestMapping(value="comp_list_form")
	public String compListForm(Model model) {
		List<ComplaintsVO> compList = complaintService.getComplaintsList();
		model.addAttribute("compList", compList);
		
		return "complaint/compList";
	}
	
	@RequestMapping(value="write_comp_form")
	public String writeCompForm(HttpSession session) {
		int user_type = 0;
		if(session.getAttribute("user_type")!=null) {
			user_type = (int) session.getAttribute("user_type");
		}
		if(user_type==1) {
			ComplaintsVO loginUser = (ComplaintsVO) session.getAttribute("loginUser");
			if(loginUser==null) {
				
				return "member/login";
			} else {

				return "complaint/compWrite";
			}
		} else {
			return "member/login";
		}
	}
	
//	@RequestMapping(value = "comp_write")
//	public String writeCompAction(ComplaintsVO vo, HttpSession session,
//								  @RequestParam(value="addr1") String addr1,
//								  @RequestParam(value="addr2") String addr2) {
//		
//		String address = addr1 + " " + addr2;
//		vo.setAddress(address);
//		
//		ComplaintsVO loginUser = (ComplaintsVO) session.getAttribute("loginUser");
//		vo.setCon_num(loginUser.getCon_num());
//		
//		complaintService.insertComplaints(vo);
//		System.out.println("complaints=" + vo);
//		return "redirect:/com_list_form";
//		
//	}
}

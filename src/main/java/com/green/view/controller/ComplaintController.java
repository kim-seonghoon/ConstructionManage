package com.green.view.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.green.biz.complaints.ComplaintsService;
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
		UserVO loginUser = (UserVO) session.getAttribute("loginUser");
		
		if(loginUser==null) {
			return "member/login";
		} else {
			return "complaint/compWrtie";
		}
	}
}

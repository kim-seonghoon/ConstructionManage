package com.green.view.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.green.biz.complaints.ComplaintsService;
import com.green.biz.construction.ConstructionService;
import com.green.biz.dto.ComplaintsVO;
import com.green.biz.dto.ConstructionVO;
 
/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	ConstructionService constructionService;
	@Autowired
	ComplaintsService complaintsService;
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String home(Model model) {
		List<ConstructionVO> constructionList = constructionService.mainConstructionList();
		List<ComplaintsVO> complaintList = complaintsService.mainComplaintList();
		
		model.addAttribute("newConstructionList", constructionList);
		model.addAttribute("newComplaintList", complaintList);
		
		for(ComplaintsVO vo : complaintList) {
			System.out.println(vo);
		}
		
		return "index";		// index.jsp 파일 출력
	}	
}

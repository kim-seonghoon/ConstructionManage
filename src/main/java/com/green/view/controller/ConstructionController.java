package com.green.view.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.green.biz.construction.ConstructionService;
import com.green.biz.dto.ConstructionVO;

@Controller
public class ConstructionController {
 
	@Autowired
	ConstructionService constructionService;
	
	@RequestMapping(value="con_list_form")
	public String constListForm(Model model) {
		List<ConstructionVO> constructionList = constructionService.getConstructionList();
		model.addAttribute("constructionList", constructionList);
		
		return "construction/conList";
	}
}

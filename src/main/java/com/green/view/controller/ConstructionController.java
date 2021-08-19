package com.green.view.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.green.biz.construction.ConstructionService;
import com.green.biz.dto.ConstructionVO;
import com.green.biz.dto.UserVO;

@Controller
public class ConstructionController {
 
	@Autowired
	ConstructionService constructionService;
	
	@RequestMapping(value="/con_list_form")
	public String constListForm(Model model) {
		List<ConstructionVO> conList = constructionService.getConstructionList();
		model.addAttribute("conList", conList);
		
		return "construction/conList";
	}
	
	@RequestMapping(value="/write_con_form")
	public String writeConForm(HttpSession session) {
		UserVO loginUser = (UserVO) session.getAttribute("loginUser");
		
		if(loginUser==null) {
			return "member/login";
		} else {
			return "construction/conWrite";
		}
	}
	
	@RequestMapping(value="/category")
	public String constListByCategory(@RequestParam(value="con_num", defaultValue="0") String con_num,
									  Model model) {
		List<ConstructionVO> conList = constructionService.getConstructionListByConNum(con_num);
		model.addAttribute("conList", conList);
		
		return "construction/conList";
	}
}

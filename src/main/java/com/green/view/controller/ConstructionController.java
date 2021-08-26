package com.green.view.controller;

import java.sql.Timestamp;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.green.biz.construction.ConstructionService;
import com.green.biz.dto.CompanyVO;
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
		int user_type = 0;
		if(session.getAttribute("user_type")!=null) {
			user_type = (int) session.getAttribute("user_type");
		}
		if(user_type==2) {
			CompanyVO loginUser = (CompanyVO) session.getAttribute("loginUser");
			if(loginUser==null) {
				
				return "member/login";
			} else {

				return "construction/conWrite";
			}
		} else {
			return "member/login";
		}
	}
	
	@RequestMapping(value="/category")
	public String constListByCategory(@RequestParam(value="con_num", defaultValue="0") String con_num,
									  Model model) {
		if(con_num.equals("0")) {
			List<ConstructionVO> conList = constructionService.getConstructionList();
			model.addAttribute("conList", conList);
		} else {
			List<ConstructionVO> conList = constructionService.getConstructionListByConNum(con_num);
			model.addAttribute("conList", conList);
		}
		
		return "construction/conList";
	}
	
	@RequestMapping(value="/search")
	public String searchConByKeyword(Model model,
									 @RequestParam(value="key") String key,
									 @RequestParam(value="search_condition", defaultValue="1") int search_condition) {
		String keyArea = "";
		String keyTitle = "";
		List<ConstructionVO> conList = constructionService.getConstructionList();
		
		if(search_condition==1) {
			keyArea = key;
			keyTitle = key;
			
			conList = constructionService.getConstructionListByKey(keyArea, keyTitle);
			
		} else if(search_condition==2) {
			keyArea = key;
			
			conList = constructionService.getConstructionListByKey(keyArea, keyTitle);
		} else if(search_condition==3) {
			keyTitle = key;
			
			conList = constructionService.getConstructionListByKey(keyArea, keyTitle);
		}
			model.addAttribute("conList", conList);
		
			return "construction/conList";
	}
	
	@RequestMapping(value="search_by_address")
	public String searchConByUserAddress(HttpSession session, Model model) {
		UserVO loginUser = (UserVO) session.getAttribute("loginUser");
		
		if(loginUser==null) {
			return "member/login";
		} else {
			String sido = loginUser.getSido();
			String gugun = loginUser.getGugun();
			String dong = loginUser.getDong().substring(0, 1);
			
			List<ConstructionVO> conList = constructionService.getConstructionListByArea(sido, gugun, dong);
			model.addAttribute("conList", conList);
			
			return "construction/conList"; 
		}
	}
	
	@RequestMapping(value="/con_write")
	public String ConWriteAction(ConstructionVO vo, HttpSession session,
								 @RequestParam(value="addr1") String addr1,
								 @RequestParam(value="addr2") String addr2,
								 @RequestParam(value="s_date") String s_date,
								 @RequestParam(value="e_date") String e_date) {

		  Timestamp start_date = Timestamp.valueOf(s_date+" 00:00:00");
		  Timestamp end_date = Timestamp.valueOf(e_date+" 00:00:00");
		  
		  vo.setStart_date(start_date);
		  vo.setEnd_date(end_date);
		  System.out.println(start_date);
		  System.out.println(end_date);
		
		String address = addr1 + " " + addr2;
		vo.setAddress(address);
		
		CompanyVO loginUser = (CompanyVO) session.getAttribute("loginUser");
		vo.setCp_num(loginUser.getCp_num());
		
		constructionService.insertConstruction(vo);
		return "redirect:/con_list_form";
	}
	
	@RequestMapping(value="con_detail")
	public String conDetailForm(ConstructionVO vo, Model model) {
		ConstructionVO con = constructionService.getConstruction(vo);
		
		model.addAttribute("ConstructionVO", con);
		return "construction/conDetail";
	}
	
	@RequestMapping(value="con_delete")
	public String conDelete(ConstructionVO vo, HttpSession session, Model model) {
		int user_type = 0;
		
		if(session.getAttribute("user_type")!=null) {
			user_type = (int) session.getAttribute("user_type");
		}
		
		if(user_type == 2) {
			CompanyVO loginUser = (CompanyVO) session.getAttribute("loginUser");
			
			if(loginUser.getCp_num().equals(vo.getCp_num())) {
				constructionService.deleteConstruction(vo);
				return "redirect:/con_list_form";
			} else {

				return "redirect:/con_detail";
			}
		} else {

	        return "redirect:/con_detail";
		}
	}
	
	@RequestMapping(value="con_update_form")
	public String conUpdateForm(ConstructionVO vo, HttpSession session, Model model) {
		int user_type = 0;
		
		if(session.getAttribute("user_type")!=null) {
			user_type = (int) session.getAttribute("user_type");
		}
		
		if(user_type == 2) {
			CompanyVO loginUser = (CompanyVO) session.getAttribute("loginUser");
			
			ConstructionVO con = constructionService.getConstruction(vo);
			model.addAttribute("ConstructionVO", con);

			if(loginUser.getCp_num().equals(vo.getCp_num())) {

				return "construction/conUpdate";
			} else {

				return "construction/conDetail";
			}
		} else {

	        return "construction/conDetail";
		}
	}
	
	@RequestMapping(value="/con_update")
	public String conUpdate(ConstructionVO vo) {
		constructionService.updateConstruction(vo);
		
		return "redirect:/con_List_form";
	}
}

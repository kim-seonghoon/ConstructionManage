package com.green.view.controller;

import java.sql.Timestamp;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.green.biz.construction.ConstructionService;
import com.green.biz.dto.CompanyVO;
import com.green.biz.dto.ConstructionVO;
import com.green.biz.dto.UserVO;
import com.green.biz.utils.Criteria;
import com.green.biz.utils.PageMaker;
 
@Controller
public class ConstructionController {
 
	@Autowired
	ConstructionService constructionService;
	
	@RequestMapping(value="/con_list_form")
	public String constListForm(HttpSession session, Model model, Criteria criteria, 
								@RequestParam(value="con_num", defaultValue="") String con_num,
								@RequestParam(value="key", defaultValue="") String key) {
		
		List<ConstructionVO> conList = constructionService.constListWithPaging(key, criteria, con_num);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(criteria);	// 현재 페이지와 페이지당 항목 수 설정
		pageMaker.setTotalCount(constructionService.searchCount(key, criteria, con_num));
		System.out.println("페이징 정보="+pageMaker);
		
		model.addAttribute("conListSize", conList.size());
		model.addAttribute("conList", conList);
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("key", key);
		
		for(int i=1; i<5; i++) {
			con_num = Integer.toString(i);
			conList = constructionService.constListWithPaging(key, criteria, con_num);
			model.addAttribute("conList"+i, conList);
			model.addAttribute("conListSize"+i, conList.size());
			model.addAttribute("pageMaker"+i, pageMaker);
		}
		
		model.addAttribute("c_num", con_num);
		System.out.println("con_num="+con_num);
		
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
	
	@RequestMapping(value="/search")
	public String searchConByKeyword(Model model, Criteria criteria,
									 @RequestParam(value="con_num", defaultValue="") String con_num,
									 @RequestParam(value="key") String key,
									 @RequestParam(value="search_condition", defaultValue="1") int search_condition) {
		String keyArea = "";
		String keyTitle = "";
		List<ConstructionVO> conList = constructionService.constListWithPaging(keyArea, criteria, con_num);
		
		if(search_condition==1) {
			keyArea = key;
			keyTitle = key;
			
			conList = constructionService.constListWithPaging(keyArea, criteria, con_num);
			
		} else if(search_condition==2) {
			keyArea = key;
			
			conList = constructionService.constListWithPaging(keyArea, criteria, con_num);
		} else if(search_condition==3) {
			keyTitle = key;
			
			conList = constructionService.constListWithPaging(keyArea, criteria, con_num);
		}
			PageMaker pageMaker = new PageMaker();
			pageMaker.setCri(criteria);	// 현재 페이지와 페이지당 항목 수 설정
			pageMaker.setTotalCount(constructionService.searchCount(key, criteria, con_num));
			System.out.println("페이징 정보="+pageMaker);
			
			model.addAttribute("conListSize", conList.size());
			model.addAttribute("conList", conList);
			model.addAttribute("pageMaker", pageMaker);
			model.addAttribute("key", key);
			model.addAttribute("con_num", con_num);
			System.out.println("con_num="+con_num);
		
			return "construction/conList";
	}
	
	@RequestMapping(value="search_by_address")
	public String searchConByUserAddress(HttpSession session, Model model) {
		UserVO loginUser = (UserVO) session.getAttribute("loginUser");
		int user_type = (int) session.getAttribute("user_type");
		
		if(loginUser==null || user_type!=1) {
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
		con.setView_count(con.getView_count()+1);
		String[] addr = con.getAddress().split(" ");
		String addr1 = "";
		String addr2 = "";
		
		for(int i=0; i<3; i++) {
			addr1 += addr[i] + " ";
		}
		for(int i=3; i<addr.length; i++) {
			addr2 += addr[i] + " ";
		}
		
		model.addAttribute("addr1", addr1);
		model.addAttribute("addr2", addr2);
		
		constructionService.updateConstView(con);
		
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

				return "member/login";
			}
		} else {

	        return "member/login";
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
			
			if(loginUser!=null && loginUser.getCp_num().equals(vo.getCp_num())) {

				ConstructionVO con = constructionService.getConstruction(vo);
				System.out.println(con);
				
				String[] addr = con.getAddress().split(" ");
				String addr2 = "";
				
				for(int i=3; i<addr.length; i++) {
					addr2 += addr[i] + " ";
				}
				
				String s_date = "";
				String e_date = "";
				
				try {
					  java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd");
					  s_date = formatter.format(con.getStart_date());
					  e_date = formatter.format(con.getEnd_date());
				} catch (Exception ex) {
					  s_date = "";
					  e_date = "";
				}
				System.out.println(s_date + " " + e_date);
				
			    String[] constructionKind = {"", "도로 공사", "상/하수도 공사",  "공공건축물 공사", "기타"};

			    model.addAttribute("constKind", constructionKind);			
				model.addAttribute("s_date", s_date);
				model.addAttribute("e_date", e_date);
				model.addAttribute("ConstructionVO", con);
				model.addAttribute("addr2", addr2);
				
				System.out.println(con);
				
				return "construction/conUpdate";
			} else {

				return "member/login";
			}
		} else {

	        return "member/login";
		}
	}
	
	@RequestMapping(value="/con_update")
	public String conUpdate(ConstructionVO vo,
			 				@RequestParam(value="addr1") String addr1,
			 				@RequestParam(value="addr2") String addr2,
			 				@RequestParam(value="s_date") String s_date,
			 				@RequestParam(value="e_date") String e_date) {
		
		Timestamp start_date = Timestamp.valueOf(s_date+" 00:00:00");
		Timestamp end_date = Timestamp.valueOf(e_date+" 00:00:00");
		  
		vo.setStart_date(start_date);
		vo.setEnd_date(end_date);
		  
		String address = addr1 + " " + addr2;
		vo.setAddress(address);
		  
		System.out.println(vo);
		constructionService.updateConstruction(vo);
		
		return "redirect:/con_list_form";
	}
}
